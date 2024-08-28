struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(floor(arg_0));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = arg_3;
    var var_1 = arg_3.e.x >> (~reverseBits(~49138u) % 32u);
    let var_2 = Struct_2(Struct_1(arg_3.a, var_0.b, ~_wgslsmith_mult_u32(arg_2.x, _wgslsmith_sub_u32(arg_2.x, 8552u)), select(vec2<bool>(arg_3.a.x >= var_0.b.x, true), var_0.d, arg_3.d.x), var_0.e), !(!select(!vec4<bool>(var_0.d.x, arg_3.d.x, true, var_0.d.x), vec4<bool>(arg_3.d.x, false, var_0.d.x, false), select(vec4<bool>(var_0.d.x, arg_3.d.x, arg_3.d.x, false), vec4<bool>(arg_3.d.x, arg_3.d.x, true, arg_3.d.x), var_0.d.x))), arg_3, Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1798f, 284f, _wgslsmith_div_f32(var_0.a.x, arg_3.b.x), _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.b.x, var_0.a.x, -682f, arg_3.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(502f, -669f, var_0.b.x, 635f) - var_0.a), !vec4<bool>(var_0.d.x, arg_3.d.x, arg_3.d.x, var_0.d.x))), var_0.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 671f, 243f))) + vec3<f32>(_wgslsmith_f_op_f32(step(1038f, arg_1)), _wgslsmith_div_f32(-492f, arg_1), _wgslsmith_div_f32(var_0.a.x, 1864f))), arg_3.c, select(!select(var_0.d, var_0.d, true), arg_3.d, var_0.d), vec3<i32>(-56016i, arg_3.e.x, _wgslsmith_dot_vec3_i32(~arg_3.e, select(vec3<i32>(33062i, 9440i, var_0.e.x), vec3<i32>(arg_3.e.x, arg_3.e.x, 15393i), arg_3.d.x)))));
    let var_3 = Struct_3(var_2, var_2.d.a);
    var_1 = 3905i;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1309f, arg_1, -935f)) + vec3<f32>(var_2.c.b.x, 626f, 857f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))))))) + var_0.b);
}

fn func_1() -> Struct_3 {
    var var_0 = ~u_input.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-2766f, _wgslsmith_div_f32(_wgslsmith_div_f32(-2260f, _wgslsmith_f_op_f32(select(475f, -837f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(727f, u_input.b.zww, Struct_3(Struct_2(Struct_1(vec4<f32>(-2526f, 1426f, 1390f, 1000f), vec3<f32>(206f, -410f, -813f), 1u, vec2<bool>(true, true), u_input.a), vec4<bool>(false, true, true, false), Struct_1(vec4<f32>(1000f, 379f, 113f, 166f), vec3<f32>(1510f, 1000f, -710f), u_input.b.x, vec2<bool>(true, false), vec3<i32>(-2147483647i, u_input.a.x, var_0.x)), Struct_1(vec4<f32>(-1000f, 601f, 737f, -549f), vec3<f32>(-680f, -1074f, -383f), u_input.b.x, vec2<bool>(true, true), u_input.a)), vec4<f32>(-1345f, 190f, -774f, 2032f)))))), -740f) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-753f, 205f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1413f) - -1000f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -591f)))), 1732f));
    let var_2 = 4744i;
    var var_3 = u_input.b;
    let var_4 = !all(select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, false, true, true), any(vec4<bool>(false, true, false, false))), all(vec2<bool>(false, true))));
    return Struct_3(Struct_2(Struct_1(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-836f + var_1.x), var_1.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, var_1.x, var_1.x)))), ~(u_input.b.x >> (1u % 32u)), !vec2<bool>(var_4, var_4), abs(firstTrailingBit(vec3<i32>(var_2, var_0.x, u_input.a.x)))), select(select(!vec4<bool>(var_4, var_4, true, var_4), select(vec4<bool>(true, var_4, false, false), vec4<bool>(true, var_4, true, true), vec4<bool>(false, true, false, true)), !vec4<bool>(var_4, var_4, true, var_4)), !(!vec4<bool>(true, var_4, false, var_4)), !select(vec4<bool>(var_4, false, var_4, false), vec4<bool>(var_4, var_4, false, true), var_4)), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -282f, 1000f, 1022f), _wgslsmith_f_op_vec4_f32(vec4<f32>(491f, 677f, var_1.x, 467f) * vec4<f32>(1588f, var_1.x, var_1.x, 1498f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-140f, 326f, var_1.x)) + _wgslsmith_f_op_vec3_f32(func_3(u_input.b.yw, 430f, vec4<u32>(u_input.b.x, 0u, 1u, 83321u), Struct_1(vec4<f32>(var_1.x, 1930f, -836f, -925f), vec3<f32>(var_1.x, var_1.x, var_1.x), 4294967295u, vec2<bool>(false, var_4), vec3<i32>(1i, var_2, var_0.x))))), _wgslsmith_add_u32(var_3.x, var_3.x), vec2<bool>(true, true), vec3<i32>(u_input.a.x, var_2, 2147483647i) & _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(u_input.a.x, var_2, -3941i))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-677f, var_1.x, -666f, -519f) - vec4<f32>(var_1.x, 510f, 351f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(971f, 914f, var_1.x, var_1.x) - vec4<f32>(var_1.x, var_1.x, -440f, 771f))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x)), firstTrailingBit(u_input.b.x), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(var_4, true), var_4), any(vec4<bool>(false, true, false, var_4))), ~vec3<i32>(-18300i, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, 678f, var_1.x, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-158f, 170f, var_1.x, var_1.x) + vec4<f32>(var_1.x, var_1.x, 341f, var_1.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(var_0.a.c.a, vec4<f32>(var_0.b.x, 703f, -1664f, 1369f))))), vec3<f32>(_wgslsmith_f_op_f32(-793f - var_0.a.a.b.x), -1098f, _wgslsmith_f_op_f32(floor(var_0.a.c.a.x))), 7846u, var_0.a.c.d, vec3<i32>(_wgslsmith_add_i32(71683i, u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, 0i), _wgslsmith_add_i32(0i, u_input.a.x))), select(select(var_0.a.b, var_0.a.b, false), vec4<bool>(var_0.a.b.x, var_0.a.c.d.x, var_0.a.a.d.x, true), any(var_0.a.b.zww)), func_1().a.c, func_1().a.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.b)), var_0.b));
    var_0 = var_1;
    var_0 = var_1;
    var var_2 = u_input.b.www;
    var_0 = func_1();
    var var_3 = var_1.a.c.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(var_1.a.a.c, 55765u), ~countOneBits(~0u), 0u, ~1u), ~var_1.a.c.c);
}

