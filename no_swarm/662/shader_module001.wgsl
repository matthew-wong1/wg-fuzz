struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<i32>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<bool>(true, true, false), true, 335f, 0u, vec3<u32>(2229u, 0u, 1u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1375f * arg_1.a.c)))), _wgslsmith_f_op_f32(-global2.a.c)), -899f);
    global0 = u_input.b;
    global0 = ~(countOneBits(global2.a.e.x) >> (~0u % 32u)) ^ 55359u;
    global0 = ~10212u;
    let var_1 = 1795i;
    return global2.a;
}

fn func_3() -> vec4<u32> {
    var var_0 = func_1(-(~vec3<i32>(global1.x, 0i, _wgslsmith_sub_i32(-2147483647i, -19908i))), Struct_3(Struct_1(!select(vec3<bool>(false, global2.a.b, false), vec3<bool>(global2.a.a.x, global2.a.b, global2.a.a.x), global2.a.b), true, _wgslsmith_f_op_f32(-1491f + _wgslsmith_f_op_f32(-global2.a.c)), global2.a.e.x, reverseBits(_wgslsmith_clamp_vec3_u32(u_input.c, global2.a.e, vec3<u32>(9620u, 38156u, global2.a.d))))), Struct_2(func_1((vec3<i32>(u_input.a, 0i, 1i) & global1.zyy) | global1.wyz, Struct_3(Struct_1(global2.a.a, global2.a.b, global2.a.c, 37206u, vec3<u32>(7147u, global2.a.d, 0u))), Struct_2(global2.a, Struct_1(vec3<bool>(false, global2.a.b, global2.a.b), global2.a.a.x, global2.a.c, global2.a.e.x, vec3<u32>(u_input.c.x, global2.a.e.x, 1u)), func_1(vec3<i32>(-29571i, 1i, -69269i), Struct_3(Struct_1(global2.a.a, global2.a.b, -142f, 16520u, vec3<u32>(global2.a.e.x, 4294967295u, 17060u))), Struct_2(global2.a, global2.a, Struct_1(vec3<bool>(true, global2.a.b, true), false, global2.a.c, 0u, vec3<u32>(4294967295u, 0u, u_input.c.x)), u_input.c.zy)), ~u_input.c.yy)), Struct_1(global2.a.a, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-173f * 1000f) - 526f), 42778u, global2.a.e), global2.a, u_input.c.xx)).c;
    global2 = Struct_3(global2.a);
    let var_1 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(firstLeadingBit(global1.yyy), vec3<i32>(2147483647i, u_input.e.x, u_input.d) << (u_input.c % vec3<u32>(32u))), global1.wwy);
    global1 = vec4<i32>(-(~(-(~0i))), var_1, _wgslsmith_mult_i32(~max(global1.x, -1i), min(global1.x, var_1)), 1i);
    var_0 = func_1(firstLeadingBit(~global1.yyz), Struct_3(global2.a), Struct_2(Struct_1(vec3<bool>(global2.a.a.x, true, false), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1.x), global1.yx) > (global1.x & var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a.c, 580f))), abs(firstTrailingBit(15597u)), ~(vec3<u32>(u_input.b, 1u, global2.a.e.x) << (global2.a.e % vec3<u32>(32u)))), global2.a, Struct_1(global2.a.a, global2.a.a.x, 262f, u_input.b, select(vec3<u32>(global2.a.d, global2.a.e.x, u_input.c.x), u_input.c, false)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, u_input.b), global2.a.e.x), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), ~vec2<u32>(global2.a.d, 43929u)), func_1(vec3<i32>(1i, 2147483647i, 44713i), Struct_3(Struct_1(vec3<bool>(global2.a.b, global2.a.b, false), global2.a.b, global2.a.c, 4294967295u, global2.a.e)), Struct_2(global2.a, global2.a, Struct_1(vec3<bool>(true, false, false), global2.a.b, 386f, 0u, global2.a.e), vec2<u32>(global2.a.d, 0u))).e.zx))).c;
    return min(firstLeadingBit(~vec4<u32>(u_input.b << (34220u % 32u), 4294967295u, u_input.b, 0u)), vec4<u32>(_wgslsmith_mult_u32(21422u, _wgslsmith_mult_u32(16557u, u_input.c.x)) | 29736u, ~(~1u & min(u_input.b, 1u)), firstLeadingBit(3918u), global2.a.e.x));
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = vec3<u32>(global2.a.d, global2.a.d, ~(~(~(arg_0.a.d ^ global2.a.e.x))));
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(~abs(0u), ~20260u, _wgslsmith_add_u32(~_wgslsmith_sub_u32(global2.a.d, 1u), 4294967295u), ~(~select(var_0.x, 89513u, true))), ~abs(select(func_3(), firstLeadingBit(vec4<u32>(28281u, var_0.x, arg_0.a.e.x, var_0.x)), any(vec3<bool>(global2.a.b, global2.a.b, global2.a.b)))));
    let var_2 = 0u;
    var var_3 = 0u;
    let var_4 = Struct_1(select(vec3<bool>(true, 1u <= ~var_0.x, arg_0.a.a.x), select(!select(global2.a.a, arg_0.a.a, vec3<bool>(global2.a.a.x, true, true)), global2.a.a, select(global2.a.a, !arg_0.a.a, 1u <= global2.a.d)), firstTrailingBit(-2147483647i ^ u_input.a) != _wgslsmith_mult_i32(global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, u_input.d, u_input.d), global1.zyx))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.a.c)), -1316f), global2.a.c) != _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.a.c, _wgslsmith_div_f32(1255f, -2249f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.c * _wgslsmith_f_op_f32(abs(218f))) * global2.a.c) * _wgslsmith_div_f32(1952f, 1063f)), var_0.x, vec3<u32>(firstLeadingBit(~_wgslsmith_dot_vec3_u32(global2.a.e, vec3<u32>(21772u, var_2, var_1.x))), u_input.c.x, _wgslsmith_sub_u32(var_0.x, _wgslsmith_div_u32(~58410u, u_input.c.x))));
    return arg_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(u_input.d ^ u_input.e.x, -59248i, _wgslsmith_add_i32(-_wgslsmith_add_i32(5611i, _wgslsmith_dot_vec3_i32(global1.ywx, vec3<i32>(u_input.a, -1i, -2214i))), 0i), 3785i);
    var var_0 = vec2<u32>(~u_input.c.x, u_input.c.x >> (_wgslsmith_add_u32(39727u, _wgslsmith_div_u32(~u_input.b, 51808u)) % 32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global2.a.c), _wgslsmith_f_op_f32(func_2(Struct_3(func_1(global1.wyy | global1.ywy, Struct_3(global2.a), Struct_2(global2.a, global2.a, Struct_1(vec3<bool>(global2.a.a.x, global2.a.a.x, global2.a.b), global2.a.b, global2.a.c, 1u, u_input.c), global2.a.e.xy))))), global2.a.c);
    let var_2 = select(!vec2<bool>(_wgslsmith_add_u32(25078u, 24454u) == countOneBits(var_0.x), true), vec2<bool>(false, true), global2.a.a.x);
    var var_3 = false;
    global2 = Struct_3(global2.a);
    global2 = Struct_3(func_1(abs(vec3<i32>(abs(u_input.d), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, -10731i, u_input.a), vec3<i32>(global1.x, global1.x, u_input.d)))), Struct_3(Struct_1(select(global2.a.a, vec3<bool>(true, var_2.x, false), vec3<bool>(true, global2.a.b, true)), var_2.x, _wgslsmith_f_op_f32(func_2(Struct_3(global2.a))), u_input.b, global2.a.e)), Struct_2(global2.a, Struct_1(!vec3<bool>(true, global2.a.a.x, false), 972f == var_1.x, global2.a.c, 1u >> (var_0.x % 32u), ~global2.a.e), func_1(~vec3<i32>(-10501i, -2147483647i, -1i), Struct_3(Struct_1(vec3<bool>(true, true, true), false, 949f, var_0.x, global2.a.e)), Struct_2(Struct_1(vec3<bool>(false, true, global2.a.a.x), true, var_1.x, u_input.c.x, u_input.c), Struct_1(vec3<bool>(var_2.x, false, true), true, -1653f, var_0.x, global2.a.e), Struct_1(vec3<bool>(var_2.x, true, false), false, global2.a.c, global2.a.e.x, vec3<u32>(global2.a.d, 1u, u_input.b)), vec2<u32>(0u, 1u))), vec2<u32>(global2.a.e.x ^ 4294967295u, _wgslsmith_mod_u32(u_input.b, 81406u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(_wgslsmith_add_i32(u_input.e.x, 1i)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, global2.a.e.x), ~u_input.c.xz), vec2<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_div_u32(global2.a.e.x, u_input.b))) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1126f, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-566f - 634f), _wgslsmith_f_op_f32(-global2.a.c), _wgslsmith_f_op_f32(-var_1.x)))), firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global1.x, global1.x >> (4294967295u % 32u)), -47936i, global1.x)), -1000f);
}

