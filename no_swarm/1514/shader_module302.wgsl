struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_3(vec3<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -786f))), true, Struct_2(true || arg_1.x, vec4<f32>(_wgslsmith_f_op_f32(-1000f * -867f), arg_2, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1685f))), arg_3.c, arg_3), _wgslsmith_mod_i32(~_wgslsmith_mod_i32(countOneBits(-1i), arg_0), min(arg_0, -2147483647i)));
    let var_1 = Struct_5(arg_3, 0u);
    let var_2 = var_1;
    global0 = array<Struct_3, 17>();
    var var_3 = abs(2147483647i);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c.b - var_0.c.b))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    return Struct_2(arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.a.x ^ u_input.b, !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), 1f, Struct_1(false, u_input.c, vec3<u32>(4294967295u, u_input.c, u_input.c), u_input.c, false)))) + vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 8753u), vec3<u32>(4294967295u, u_input.c, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(7327u, 4213u, u_input.c), vec3<u32>(58958u, u_input.c, u_input.c)) | vec3<u32>(58038u, u_input.c, 39612u)), ~(~vec3<u32>(42877u, u_input.c, u_input.c))), Struct_1(!any(vec3<bool>(arg_0.x, true, arg_0.x)), _wgslsmith_mult_u32(u_input.c, abs(u_input.c)), abs(firstLeadingBit(vec3<u32>(68178u, 25695u, u_input.c)) | (vec3<u32>(96789u, 3409u, 99862u) | vec3<u32>(98369u, u_input.c, u_input.c))), ~7424u, arg_0.x));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    global0 = array<Struct_3, 17>();
    var var_0 = _wgslsmith_div_i32(7143i & (1i | reverseBits(max(arg_1, u_input.b))), reverseBits(-arg_1));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(-20873i, select(select(vec4<bool>(arg_2.a, arg_2.d.e, true, false), vec4<bool>(false, arg_2.a, true, true), arg_2.a), select(select(vec4<bool>(arg_2.a, arg_2.d.a, arg_2.a, false), vec4<bool>(arg_2.d.a, false, arg_2.d.a, arg_2.d.e), arg_2.d.a), vec4<bool>(true, arg_2.a, arg_2.d.a, false), true), select(select(vec4<bool>(arg_2.d.e, false, true, arg_2.a), vec4<bool>(arg_2.d.a, true, true, arg_2.a), vec4<bool>(true, arg_2.a, arg_2.d.e, true)), select(vec4<bool>(false, arg_2.a, arg_2.a, true), vec4<bool>(true, false, true, false), arg_2.a), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.b.x)) + _wgslsmith_f_op_f32(arg_2.b.x + arg_2.b.x))), func_2(select(select(vec3<bool>(arg_2.d.a, arg_2.a, false), vec3<bool>(arg_2.a, true, arg_2.a), vec3<bool>(arg_2.d.e, true, true)), !vec3<bool>(arg_2.a, arg_2.a, true), !vec3<bool>(false, arg_2.d.e, arg_2.a))).d)).x);
    global0 = array<Struct_3, 17>();
    let var_2 = abs(-u_input.b);
    return arg_2;
}

fn func_1(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = u_input.c;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -349f, -1308f)) - arg_0.a)))), arg_0.c.d.e & true, func_4(1u, ~2147483647i, func_2(!select(vec3<bool>(arg_0.c.d.e, true, arg_0.b), vec3<bool>(false, arg_0.b, true), vec3<bool>(arg_0.c.d.e, arg_0.c.a, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -601f)) * _wgslsmith_f_op_f32(f32(-1f) * -723f)) + -1000f)), arg_0.d);
    let var_2 = vec3<bool>(true, ~u_input.c <= _wgslsmith_div_u32(var_1.c.c.x, ~_wgslsmith_mod_u32(24509u, arg_0.c.c.x)), true);
    global0 = array<Struct_3, 17>();
    let var_3 = var_2.x;
    return ~(~vec4<u32>(u_input.c, arg_0.c.d.b << (1u % 32u), arg_0.c.c.x, arg_0.c.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 17>();
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.c, u_input.c) | max(u_input.c, 22968u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(11960u, u_input.c), 0u, _wgslsmith_mod_u32(u_input.c, u_input.c)), abs(~vec3<u32>(u_input.c, 0u, 4027u))), u_input.c, abs(1u)), func_1(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~u_input.c, u_input.c), 17u)]));
    let var_1 = Struct_1((~u_input.a.x >> (func_4(1u >> (var_0.x % 32u), _wgslsmith_sub_i32(18202i, 1i), Struct_2(false, vec4<f32>(688f, 284f, 1562f, 1093f), var_0.wyw, Struct_1(true, 72377u, vec3<u32>(5015u, u_input.c, var_0.x), 1u, true)), _wgslsmith_f_op_f32(1311f * -1652f)).c.x % 32u)) != -(~_wgslsmith_div_i32(0i, u_input.a.x)), 1u, var_0.wzw ^ vec3<u32>(u_input.c, ~(~var_0.x), var_0.x), u_input.c ^ var_0.x, all(vec4<bool>(false, select(func_4(u_input.c, -1i, Struct_2(true, vec4<f32>(-1093f, 768f, 2385f, 288f), var_0.yzw, Struct_1(false, 70185u, vec3<u32>(42023u, 0u, 0u), 2477u, false)), -293f).d.a, true, false), func_2(vec3<bool>(false, false, true)).a, false)));
    global0 = array<Struct_3, 17>();
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1300f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(131f + 979f))), 1f), func_2(select(!vec3<bool>(var_1.e, true, var_1.e), select(vec3<bool>(false, var_1.a, false), vec3<bool>(var_1.a, var_1.a, var_1.e), vec3<bool>(var_1.e, var_1.e, true)), func_4(var_1.c.x, u_input.b, Struct_2(false, vec4<f32>(-577f, 597f, -1000f, 1389f), var_0.wxx, var_1), -898f).a)).b.xwx, select(select(!vec3<bool>(var_1.a, var_1.e, var_1.a), select(vec3<bool>(false, var_1.a, true), vec3<bool>(var_1.e, true, var_1.e), vec3<bool>(true, false, var_1.e)), select(var_1.a, false, true)), select(!vec3<bool>(true, var_1.e, true), select(vec3<bool>(var_1.e, true, var_1.e), vec3<bool>(false, true, var_1.a), vec3<bool>(var_1.e, false, var_1.e)), any(vec4<bool>(true, true, true, false))), true)))));
    let var_3 = Struct_2(all(!select(select(vec2<bool>(true, var_1.e), vec2<bool>(true, var_1.a), vec2<bool>(var_1.e, var_1.e)), vec2<bool>(var_1.a, false), select(vec2<bool>(true, var_1.a), vec2<bool>(false, var_1.e), vec2<bool>(true, var_1.e)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1147f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(var_2.x + 1764f)), -2884f)), vec3<u32>(var_1.c.x, 66492u, u_input.c), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(17782i);
}

