struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<u32>(35078u, 4294967295u), false, vec3<u32>(1u, 11785u, 1u), 308f, false), Struct_1(vec2<u32>(9507u, 1u), true, vec3<u32>(0u, 42005u, 1u), 493f, true), Struct_1(vec2<u32>(7819u, 35917u), false, vec3<u32>(2920u, 31763u, 4294967295u), 477f, true), Struct_1(vec2<u32>(1u, 0u), false, vec3<u32>(1u, 49355u, 45205u), 1332f, false), Struct_1(vec2<u32>(59187u, 4294967295u), true, vec3<u32>(1u, 22548u, 15912u), 1402f, true), Struct_1(vec2<u32>(13041u, 21327u), true, vec3<u32>(51097u, 85885u, 17967u), 474f, false), Struct_1(vec2<u32>(0u, 4294967295u), true, vec3<u32>(749u, 1155u, 1u), 242f, false), Struct_1(vec2<u32>(0u, 57619u), false, vec3<u32>(19120u, 0u, 9698u), -544f, true), Struct_1(vec2<u32>(11580u, 0u), false, vec3<u32>(0u, 4294967295u, 0u), -1000f, false), Struct_1(vec2<u32>(1u, 1u), true, vec3<u32>(0u, 0u, 229u), 1000f, true), Struct_1(vec2<u32>(0u, 0u), false, vec3<u32>(4294967295u, 82209u, 0u), 1723f, false), Struct_1(vec2<u32>(9966u, 60960u), false, vec3<u32>(8855u, 31061u, 14639u), 576f, false), Struct_1(vec2<u32>(0u, 0u), false, vec3<u32>(62801u, 1u, 20926u), 2280f, true), Struct_1(vec2<u32>(4294967295u, 0u), false, vec3<u32>(4294967295u, 46600u, 0u), 903f, true), Struct_1(vec2<u32>(70481u, 0u), false, vec3<u32>(9252u, 1u, 1u), 331f, false), Struct_1(vec2<u32>(99180u, 29598u), true, vec3<u32>(1407u, 0u, 128952u), -356f, false), Struct_1(vec2<u32>(4294967295u, 34089u), false, vec3<u32>(21082u, 1u, 55692u), -770f, true), Struct_1(vec2<u32>(23559u, 59523u), true, vec3<u32>(1u, 97799u, 0u), -103f, false), Struct_1(vec2<u32>(1u, 0u), true, vec3<u32>(1u, 35203u, 4294967295u), -2636f, false), Struct_1(vec2<u32>(4294967295u, 439u), true, vec3<u32>(1u, 0u, 41719u), -1148f, false), Struct_1(vec2<u32>(0u, 4294967295u), false, vec3<u32>(4294967295u, 19320u, 1u), -809f, true), Struct_1(vec2<u32>(17000u, 0u), true, vec3<u32>(4294967295u, 0u, 29047u), 123f, false), Struct_1(vec2<u32>(1u, 32036u), true, vec3<u32>(0u, 0u, 55912u), 451f, false), Struct_1(vec2<u32>(16031u, 107064u), false, vec3<u32>(0u, 110u, 1u), -777f, true), Struct_1(vec2<u32>(4294967295u, 17139u), false, vec3<u32>(111005u, 23840u, 6558u), -1168f, false), Struct_1(vec2<u32>(1u, 4294967295u), false, vec3<u32>(33197u, 0u, 77311u), 381f, true), Struct_1(vec2<u32>(0u, 1u), false, vec3<u32>(4294967295u, 57938u, 4452u), 598f, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_vec2_u32((arg_2.a & max(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a, 0u))) >> (arg_2.c.yx % vec2<u32>(32u)), ~arg_2.c.yy), arg_3, vec3<u32>(4536u, 4939u, arg_1 << (arg_2.c.x % 32u)), _wgslsmith_f_op_f32(floor(-1076f)), true);
    var var_1 = select(select(!(!vec3<bool>(false, var_0.e, arg_2.b)), vec3<bool>(arg_3, true, false), !all(vec2<bool>(true, true))), select(!vec3<bool>(var_0.e, !arg_3, !var_0.e), select(select(vec3<bool>(false, var_0.e, arg_2.b), vec3<bool>(arg_3, arg_2.b, false), false), select(select(vec3<bool>(true, arg_2.e, false), vec3<bool>(arg_3, var_0.e, var_0.b), var_0.e), select(vec3<bool>(true, true, arg_2.e), vec3<bool>(false, var_0.e, arg_3), false), arg_2.e), _wgslsmith_div_f32(var_0.d, 501f) >= 247f), arg_2.e), all(!select(!vec2<bool>(arg_2.b, true), select(vec2<bool>(var_0.e, true), vec2<bool>(arg_3, arg_2.b), arg_3), !vec2<bool>(true, arg_2.e))));
    var_0 = Struct_1(~arg_2.a >> ((arg_2.c.zz >> (select(firstTrailingBit(vec2<u32>(arg_2.a.x, var_0.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(2865u, u_input.a), var_0.c.yx), !var_1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_3, vec3<u32>(abs(arg_2.c.x), 0u, 0u >> (arg_2.a.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1267f, _wgslsmith_f_op_f32(round(arg_2.d)))), !(true & var_0.b) & false);
    var_0 = Struct_1(arg_2.c.zz, true, firstTrailingBit(arg_2.c), 182f, var_1.x);
    var var_2 = vec4<bool>(var_0.b, any(!(!select(vec4<bool>(var_1.x, var_1.x, arg_3, var_1.x), vec4<bool>(var_1.x, true, arg_3, false), arg_3))), var_0.b || select(var_1.x, false, var_0.d >= _wgslsmith_f_op_f32(-var_0.d)), true);
    return var_2.x & true;
}

fn func_2() -> vec4<bool> {
    var var_0 = false;
    var var_1 = global0[_wgslsmith_index_u32(~u_input.a, 27u)];
    var var_2 = var_1.e;
    var var_3 = 0u;
    var var_4 = 1000f;
    return !vec4<bool>(true, false, var_1.b, !(true & func_3(u_input.b.x, var_1.c.x, Struct_1(vec2<u32>(1u, var_1.c.x), true, var_1.c, -626f, false), true)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_1, 27>();
    var var_0 = arg_1.x;
    var var_1 = arg_3.d;
    let var_2 = min(~(~(countOneBits(arg_3.c) << (vec3<u32>(9505u, u_input.a, u_input.a) % vec3<u32>(32u)))), ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_3.a.x, 4294967295u, arg_3.c.x), vec4<u32>(u_input.a, 0u, u_input.a, 101169u)), u_input.a), u_input.a ^ u_input.a, ~_wgslsmith_div_u32(1u, 55545u)));
    let var_3 = !all(select(vec4<bool>(any(vec3<bool>(false, arg_0.x, false)), any(vec2<bool>(true, true)), true, -69353i >= u_input.c.x), func_2(), !(!vec4<bool>(arg_3.e, false, arg_3.b, true))));
    return u_input.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> vec3<i32> {
    let var_0 = vec2<bool>(any(!(!vec2<bool>(arg_0.b, arg_0.e))), all(select(vec2<bool>(!arg_0.e, false), !vec2<bool>(false, arg_0.b), select(!vec2<bool>(arg_0.e, true), select(vec2<bool>(true, arg_0.e), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, arg_0.e)), select(vec2<bool>(false, false), vec2<bool>(false, arg_0.e), arg_0.e)))));
    global0 = array<Struct_1, 27>();
    var var_1 = global0[_wgslsmith_index_u32(1u | abs(_wgslsmith_add_u32(1u, min(_wgslsmith_sub_u32(u_input.a, 1u), 24457u >> (u_input.a % 32u)))), 27u)];
    global0 = array<Struct_1, 27>();
    var_1 = global0[_wgslsmith_index_u32(~arg_0.c.x, 27u)];
    return u_input.c;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = 515f;
    var var_1 = max(_wgslsmith_add_vec3_u32(vec3<u32>(~0u, u_input.a, _wgslsmith_add_u32(1u, 40146u)) | firstTrailingBit(vec3<u32>(4294967295u, 27842u, 85411u)), vec3<u32>(~(~12509u), 17480u, ~u_input.a)), select(~countOneBits(firstTrailingBit(vec3<u32>(17720u, u_input.a, 35502u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(42640u, 59216u, u_input.a) | vec3<u32>(u_input.a, 69576u, u_input.a), firstLeadingBit(min(vec3<u32>(u_input.a, u_input.a, 5339u), vec3<u32>(1u, 4294967295u, u_input.a)))), true));
    let var_2 = func_2().zzx;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(95598u, var_1.x), 27u)];
    var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u)) >> (_wgslsmith_div_vec3_u32(var_3.c, vec3<u32>(47235u, 17735u, 4294967295u)) % vec3<u32>(32u))) >> (~(var_3.c | vec3<u32>(u_input.a, 4294967295u, 0u)) % vec3<u32>(32u)), vec3<u32>(1u, 4294967295u, firstTrailingBit(var_3.c.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 51433u, var_3.c.x), vec3<u32>(u_input.a, var_3.c.x, 26091u), var_3.c) | vec3<u32>(1u, select(u_input.a, 0u, var_2.x), _wgslsmith_div_u32(u_input.a, var_1.x))), ~vec3<u32>(u_input.a, var_1.x, var_3.c.x >> (abs(var_1.x) % 32u)), _wgslsmith_mod_vec3_u32(firstLeadingBit(min(~vec3<u32>(u_input.a, var_3.a.x, var_3.a.x), ~var_3.c)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.x, var_3.c.x), vec3<u32>(65495u, 69272u, u_input.a)), _wgslsmith_div_vec3_u32(var_3.c, var_3.c)), ~vec3<u32>(u_input.a, var_1.x, u_input.a))));
    return Struct_1(var_1.zz, !var_2.x, countOneBits(var_3.c), var_3.d, u_input.a > var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    var var_0 = Struct_1(~(~(min(vec2<u32>(6243u, u_input.a), vec2<u32>(u_input.a, u_input.a)) & vec2<u32>(u_input.a, u_input.a))), true, vec3<u32>(17881u, ~u_input.a, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(1u, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 26409u), vec2<u32>(u_input.a, u_input.a)), firstTrailingBit(u_input.a)))), -102f, true);
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_1 = global0[_wgslsmith_index_u32(~1u, 27u)];
    let var_2 = 580f;
    let var_3 = func_5(-u_input.c, _wgslsmith_div_vec2_f32(vec2<f32>(var_2, _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2, -122f), vec2<f32>(824f, var_0.d))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2, -1240f)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-497f, var_2), vec2<f32>(1630f, -748f))))))), select(-u_input.c, func_4(global0[_wgslsmith_index_u32(firstLeadingBit(var_1.c.x), 27u)], _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-231f, -2611f, var_0.d, var_1.d))), 17857i | func_1(vec2<bool>(var_1.b, true), vec2<f32>(var_0.d, var_2), false, Struct_1(vec2<u32>(0u, var_0.a.x), true, var_1.c, var_0.d, var_0.b))), all(!(!vec3<bool>(var_1.b, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 25375u, 0u, var_3.a.x), ~vec4<u32>(var_3.c.x, 15289u, var_3.c.x, 1000u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a.x, u_input.a, 40315u, 0u), abs(vec4<u32>(u_input.a, var_0.a.x, 0u, 34750u)))), ~u_input.a, firstLeadingBit(u_input.b.x));
}

