struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = !select(select(!vec4<bool>(arg_3.a, arg_1.a, arg_3.a, true), select(select(vec4<bool>(arg_1.a, false, true, arg_2.x), vec4<bool>(true, false, true, arg_3.a), true), vec4<bool>(true, false, false, arg_2.x), arg_1.a), any(select(vec4<bool>(arg_3.a, arg_3.a, true, false), vec4<bool>(false, false, false, false), vec4<bool>(arg_1.a, true, true, arg_3.a)))), vec4<bool>(all(arg_2), true, arg_1.a, true), false && arg_1.a);
    let var_1 = select(!arg_2, vec3<bool>(false, _wgslsmith_f_op_f32(-473f + _wgslsmith_f_op_f32(min(-170f, -114f))) <= _wgslsmith_f_op_f32(trunc(-1054f)), all(vec4<bool>(true, any(vec3<bool>(arg_1.a, arg_3.a, false)), true, arg_2.x))), all(vec4<bool>(!(true & arg_2.x), arg_1.a, true, select(true, false, false))));
    var_0 = vec4<bool>(true && (all(vec3<bool>(var_1.x, arg_3.a, false)) && !arg_3.a), arg_1.a, true, true);
    var_0 = vec4<bool>((!all(vec3<bool>(false, true, true)) & true) & any(vec4<bool>(all(vec4<bool>(var_1.x, arg_3.a, var_1.x, arg_3.a)), true, true, var_0.x)), true || arg_1.a, false, all(vec3<bool>(all(select(vec4<bool>(var_0.x, arg_1.a, true, false), vec4<bool>(false, arg_2.x, arg_2.x, arg_1.a), vec4<bool>(true, var_1.x, false, var_1.x))), _wgslsmith_div_u32(arg_0.b.x, 4294967295u) > 1u, max(9520i, arg_1.b.x) == 10393i)));
    return vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(firstTrailingBit(arg_1.b), select(_wgslsmith_sub_vec3_i32(arg_1.b, vec3<i32>(u_input.d, u_input.e.x, 1i)), arg_1.b ^ vec3<i32>(-33547i, u_input.d, 30204i), any(vec3<bool>(false, false, arg_2.x))));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec2<bool>, arg_3: vec2<i32>) -> u32 {
    var var_0 = Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-726f, 277f, -1736f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-519f, 839f, 478f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-199f, -218f, 423f) + vec3<f32>(1000f, -301f, -998f))), select(select(vec3<bool>(arg_1, false, false), vec3<bool>(true, false, arg_2.x), false), vec3<bool>(false, false, arg_2.x), arg_1 && false))), !(!select(vec3<bool>(true, arg_1, arg_0.a), vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, arg_1, true)))), arg_0);
    var var_1 = Struct_3(arg_1, -func_3(var_0.b.c, Struct_3(arg_2.x, var_0.b.b | arg_0.b, var_0.b.c), !(!vec3<bool>(arg_0.a, var_0.b.a, arg_1)), Struct_3(any(vec2<bool>(false, true)), arg_0.b, arg_0.c)), Struct_1(vec3<u32>(u_input.c, 4294967295u, 1u), ~_wgslsmith_sub_vec4_u32(arg_0.c.b, arg_0.c.b)));
    var_0 = Struct_5(var_0.a, arg_0);
    var var_2 = var_0.a;
    var_2 = var_0.a;
    return 4294967295u;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_1 {
    return Struct_1(vec3<u32>(_wgslsmith_div_u32(func_2(Struct_3(true, vec3<i32>(u_input.e.x, 41577i, u_input.e.x), Struct_1(arg_1, vec4<u32>(1u, 21915u, u_input.a.x, u_input.a.x))), true, vec2<bool>(true, false), vec2<i32>(2147483647i, u_input.e.x)) >> (~4294967295u % 32u), arg_1.x), ~abs(1u), _wgslsmith_sub_u32(1925u, ~(~0u))), select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), vec2<u32>(0u, arg_1.x)), abs(1u), 1u, _wgslsmith_clamp_u32(4294967295u, arg_1.x, u_input.a.x)) >> ((vec4<u32>(0u, 68833u, 4294967295u, arg_1.x) ^ firstLeadingBit(vec4<u32>(arg_1.x, u_input.c, 18418u, 39198u))) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(42103u, 0u, arg_1.x, u_input.a.x), ~vec4<u32>(1u, 50458u, 0u, u_input.a.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1123f, -475f, -845f, -444f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-534f, -1101f, 202f, 537f))))), u_input.a), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(-1548f)), _wgslsmith_f_op_f32(416f + 1090f), _wgslsmith_f_op_f32(829f + 1288f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1143f, -744f, -372f, -875f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(949f, 1032f, -1196f, 1105f), vec4<f32>(423f, 546f, 103f, -586f))))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-986f, 1989f, -1396f, -202f))), ~(u_input.a ^ u_input.a)).b.xyw), any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true))), func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(-404f)), _wgslsmith_f_op_f32(sign(-742f)), _wgslsmith_div_f32(-683f, 1520f), -460f), vec4<f32>(-994f, -596f, -1068f, _wgslsmith_f_op_f32(max(-703f, 134f))), vec4<bool>(true, true, true, true))), ~(~(~vec3<u32>(u_input.a.x, u_input.c, 14189u)))));
    var var_1 = Struct_3(!all(!vec4<bool>(var_0.c, true, true, false)), ~(vec3<i32>(func_3(Struct_1(var_0.a.a, vec4<u32>(5641u, u_input.c, 16543u, var_0.b.b.x)), Struct_3(var_0.c, vec3<i32>(-66444i, u_input.d, u_input.d), var_0.a), vec3<bool>(var_0.c, false, var_0.c), Struct_3(var_0.c, vec3<i32>(u_input.e.x, -57331i, 37569i), var_0.b)).x, u_input.d, firstTrailingBit(u_input.e.x)) >> (max(select(var_0.d.a, u_input.a, false), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 1u), var_0.d.a)) % vec3<u32>(32u))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(264f + -981f), _wgslsmith_f_op_f32(-1669f + -167f), -1982f, _wgslsmith_f_op_f32(-836f * 1494f))), vec3<u32>(31774u, ~(~u_input.c), ~_wgslsmith_add_u32(var_0.d.a.x, var_0.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(29322i, u_input.e.x), _wgslsmith_mod_i32(0i, reverseBits(abs(-20889i))), func_3(var_1.c, Struct_3(true, var_1.b, Struct_1(vec3<u32>(u_input.c, u_input.b, 4294967295u), var_0.d.b)), !select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(true, var_0.c, false), vec3<bool>(var_1.a, var_1.a, true)), Struct_3(true, select(var_1.b, var_1.b, false), Struct_1(u_input.a, var_1.c.b))).x, _wgslsmith_dot_vec2_i32(var_1.b.xy, u_input.e)), (_wgslsmith_mod_vec4_i32(vec4<i32>(-2829i, var_1.b.x, var_1.b.x, u_input.e.x), max(vec4<i32>(u_input.e.x, u_input.d, var_1.b.x, -2147483647i), vec4<i32>(u_input.e.x, u_input.d, 50008i, u_input.e.x))) & -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, var_1.b.x, -56463i, u_input.e.x), vec4<i32>(u_input.d, 23780i, u_input.d, -4973i))) & ~min(reverseBits(vec4<i32>(-2147483647i, 1i, 4701i, 30944i)), -vec4<i32>(var_1.b.x, -2147483647i, 0i, u_input.e.x)));
}

