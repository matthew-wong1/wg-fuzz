struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, 314f);

var<private> global1: f32;

var<private> global2: array<vec2<u32>, 32>;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, true), -450f, vec3<u32>(63365u, 8952u, 1u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_2(vec3<bool>(all(vec4<bool>(true, true, !global3.a.x, true)), !arg_3.a.x, global3.a.x & (_wgslsmith_dot_vec3_u32(global3.c, arg_3.c) == 1u)), vec4<f32>(-548f, _wgslsmith_f_op_f32(max(932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -231f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -646f)), arg_0.x), u_input.b);
    let var_1 = arg_3;
    global3 = var_1;
    global2 = array<vec2<u32>, 32>();
    global3 = var_1;
    return _wgslsmith_f_op_f32(select(-1000f, 597f, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1479f - 318f) + _wgslsmith_f_op_f32(-arg_0.x)) > -881f)));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b * 274f), global0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(global0.x, global3.b), -639f, vec4<f32>(-943f, global3.b, 890f, -923f), Struct_1(vec2<bool>(arg_0, global3.a.x), global3.b, global3.c)))), _wgslsmith_f_op_f32(1122f + _wgslsmith_f_op_f32(-global3.b))))))));
    var var_1 = select(select(!(!select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, global3.a.x, false, false), true)), select(vec4<bool>(!global3.a.x, !arg_0, true, select(arg_0, global3.a.x, arg_0)), !(!vec4<bool>(arg_0, false, true, global3.a.x)), ~global3.c.x == global3.c.x), !(arg_0 || global3.a.x)), select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(global3.a.x, false, global3.a.x, arg_0), true)), select(select(vec4<bool>(false, arg_0, global3.a.x, true), select(vec4<bool>(false, arg_0, arg_0, global3.a.x), vec4<bool>(false, global3.a.x, false, false), vec4<bool>(global3.a.x, arg_0, true, false)), !vec4<bool>(arg_0, global3.a.x, global3.a.x, false)), !select(vec4<bool>(false, global3.a.x, true, false), vec4<bool>(false, true, true, false), arg_0), select(select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0, global3.a.x, global3.a.x, false), arg_0), vec4<bool>(false, arg_0, false, arg_0), all(global3.a))), arg_0), !select(!select(vec4<bool>(true, false, false, true), vec4<bool>(global3.a.x, false, arg_0, true), true), vec4<bool>(u_input.b > 2147483647i, true, true, global3.c.x >= global3.c.x), any(select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(false, global3.a.x, global3.a.x, arg_0), arg_0))));
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(abs(u_input.b), -3532i, firstLeadingBit(firstTrailingBit(28616i)), _wgslsmith_div_i32(1i, u_input.b)), _wgslsmith_div_vec4_i32(vec4<i32>(-u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(-1i, _wgslsmith_mod_i32(u_input.a, u_input.a), u_input.b, ~u_input.a))), firstLeadingBit(vec4<i32>(1072i, abs(u_input.a), ~2147483647i, abs(u_input.b))) >> ((firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global3.c.x, global3.c.x, 4294967295u, 0u), vec4<u32>(global3.c.x, 40419u, global3.c.x, 1u))) ^ ~vec4<u32>(global3.c.x, global3.c.x, 40209u, global3.c.x)) % vec4<u32>(32u)), (_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, 0i, u_input.b), vec4<i32>(2147483647i, -2147483647i, -29359i, u_input.a) & vec4<i32>(u_input.a, 2147483647i, 0i, u_input.a)) & (reverseBits(vec4<i32>(29316i, 1i, u_input.b, -6524i)) >> (vec4<u32>(global3.c.x, global3.c.x, 63819u, global3.c.x) % vec4<u32>(32u)))) ^ ~(~(-vec4<i32>(u_input.b, 0i, u_input.b, u_input.a))));
    var var_3 = Struct_1(var_1.wy, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-346f - 1157f))), ~global3.c);
    var_3 = Struct_1(!(!var_1.ww), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, var_0, arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1923f))), -867f), ~vec3<u32>((var_3.c.x & var_3.c.x) >> (0u % 32u), ~global3.c.x, 4294967295u));
    return !vec2<bool>(true, !var_1.x);
}

fn func_1(arg_0: f32) -> vec2<f32> {
    var var_0 = Struct_1(select(vec2<bool>(all(select(vec2<bool>(global3.a.x, global3.a.x), global3.a, global3.a.x)), !global3.a.x & any(global3.a)), select(func_2(!global3.a.x), !select(vec2<bool>(global3.a.x, true), global3.a, vec2<bool>(false, true)), true), global3.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), global3.c);
    var var_1 = Struct_1(select(func_2(true), !vec2<bool>(true & var_0.a.x, var_0.a.x), func_2(any(!vec4<bool>(true, var_0.a.x, true, global3.a.x)))), 1000f, ~vec3<u32>(global3.c.x, var_0.c.x, ~var_0.c.x & reverseBits(var_0.c.x)));
    var var_2 = global3.c;
    var var_3 = vec4<i32>(-1i, u_input.b, u_input.a, -2147483647i >> ((_wgslsmith_sub_u32(global3.c.x, var_1.c.x) ^ var_0.c.x) % 32u)) >> (~min(vec4<u32>(abs(4294967295u), global3.c.x, 1u, ~20872u), countOneBits(vec4<u32>(24479u, 7957u, 90184u, var_2.x))) % vec4<u32>(32u));
    var var_4 = false;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, -173f) * vec2<f32>(-441f, 601f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-134f, var_1.b) * vec2<f32>(-232f, 352f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-554f, 136f) - vec2<f32>(arg_0, -890f))), true))), vec2<f32>(arg_0, -1432f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = -abs(vec2<i32>(abs(-2147483647i ^ arg_1.c), arg_2.c));
    let var_1 = Struct_2(!(!vec3<bool>(false && arg_1.a.x, arg_1.a.x & true, true)), arg_2.b, var_0.x);
    let var_2 = Struct_1(arg_2.a.yy, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.x, arg_0.x)), global3.c);
    global3 = var_2;
    global3 = var_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(2232f, -2005f)))), -204f), 1000f, all(vec4<bool>(all(vec4<bool>(global3.a.x, true, global3.a.x, false)), false, global3.a.x & false, true))))));
    global2 = array<vec2<u32>, 32>();
    global3 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1514f, global0.x)), vec2<f32>(var_0, 379f), all(vec3<bool>(true, global3.a.x, true)))), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(select(global3.b, global0.x, global3.a.x)))))), Struct_2(!select(!vec3<bool>(true, global3.a.x, global3.a.x), vec3<bool>(global3.a.x, false, true), !vec3<bool>(global3.a.x, global3.a.x, true)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-676f - var_0), _wgslsmith_f_op_f32(func_3(vec2<f32>(883f, global0.x), -1164f, vec4<f32>(-360f, var_0, -1000f, 1014f), Struct_1(global3.a, 382f, global3.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, global3.b))), var_0, -1140f), 2147483647i | abs(u_input.b)), Struct_2(vec3<bool>(false, true, !func_2(global3.a.x).x), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 + 768f), _wgslsmith_f_op_f32(global3.b - var_0))), -764f, -637f, _wgslsmith_f_op_f32(-global3.b)), u_input.b));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))), -1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, 1020f, 1112f, -1327f), vec4<f32>(var_0, var_0, global3.b, var_0))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, -362f, global0.x), vec4<f32>(110f, -1688f, global3.b, -774f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(533f, var_0, global3.b, global3.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(745f, var_0, 729f, global0.x)))), func_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, 439f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, -547f) + vec2<f32>(-1000f, var_0)))), Struct_2(vec3<bool>(true, true, true), vec4<f32>(-764f, 189f, var_0, -1391f), -2147483647i), Struct_2(select(vec3<bool>(false, global3.a.x, global3.a.x), vec3<bool>(false, true, global3.a.x), false), vec4<f32>(global3.b, 1134f, -1845f, 1299f), ~(-33799i))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(global0.x + -1910f)))), -506f);
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(655f * -1008f)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(floor(2382f))))), Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(false, global3.a.x, false), vec3<bool>(true, global3.a.x, global3.a.x)), vec3<bool>(true, global3.a.x, global3.a.x), !vec3<bool>(true, false, global3.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(543f, global0.x, 192f, -1249f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1566f, var_0, -531f, -668f))), !vec4<bool>(false, global3.a.x, true, true)))), 0i), Struct_2(!(!(!vec3<bool>(global3.a.x, true, global3.a.x))), vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x, -302f, -1316f), firstTrailingBit(select(u_input.a, -u_input.b, true)))).b;
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(trunc(609f))), func_4(_wgslsmith_f_op_vec2_f32(ceil(var_1.zx)), Struct_2(vec3<bool>(true, false, false), vec4<f32>(695f, var_1.x, -1000f, global0.x), u_input.b), Struct_2(vec3<bool>(global3.a.x, false, global3.a.x), vec4<f32>(1249f, 1023f, var_1.x, global3.b), u_input.b)).b, var_0, _wgslsmith_f_op_f32(round(319f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(459f, _wgslsmith_f_op_f32(exp2(func_4(_wgslsmith_f_op_vec2_f32(var_1.xx + vec2<f32>(var_2, global3.b)), Struct_2(vec3<bool>(global3.a.x, false, true), vec4<f32>(var_0, var_3.x, var_0, -304f), u_input.a), Struct_2(vec3<bool>(true, true, true), vec4<f32>(var_1.x, var_3.x, 921f, -224f), u_input.a)).b))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~(~0u)), ~(global3.c.x >> (global3.c.x % 32u)), 16240u << (1u % 32u)), vec4<u32>(~(~(global3.c.x >> (30913u % 32u))), ~78528u, global3.c.x, 214u));
}

