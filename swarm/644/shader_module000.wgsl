struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = arg_0.a.x;
    let var_1 = arg_0;
    var_0 = u_input.a;
    let var_2 = (_wgslsmith_div_i32(min(arg_2.b.x, ~16034i), -arg_3.x) << (_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(~1u, min(5848u, 61908u))) % 32u)) << (u_input.a % 32u);
    var var_3 = !(~(min(0i, u_input.b) | ~(-2147483647i)) < ((arg_3.x >> (min(var_1.a.x, u_input.a) % 32u)) >> (21342u % 32u)));
    return arg_0.a;
}

fn func_2(arg_0: f32, arg_1: f32) -> vec4<u32> {
    var var_0 = Struct_1(abs(~1i), ~reverseBits(vec2<i32>(-1i) * -vec2<i32>(u_input.b, -19205i)), -_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b, u_input.c, -1i, 13707i) >> (func_3(Struct_2(vec4<u32>(1u, u_input.a, 32444u, 0u)), vec4<f32>(arg_1, arg_0, -398f, -1073f), Struct_1(u_input.c, vec2<i32>(u_input.d.x, -24691i), vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.c)), u_input.d) % vec4<u32>(32u)), vec4<i32>(13920i | u_input.b, ~(-38790i), u_input.d.x, countOneBits(-5260i))));
    var_0 = Struct_1(var_0.a, _wgslsmith_mod_vec2_i32(var_0.b, ~min(-vec2<i32>(1i, u_input.c), u_input.d)), ~(-(~vec4<i32>(u_input.c, u_input.c, 23390i, var_0.a) | vec4<i32>(-1i, u_input.c, var_0.c.x, u_input.d.x))));
    let var_1 = var_0.a;
    let var_2 = ~u_input.d;
    let var_3 = ~vec2<i32>(~1i, countOneBits(-2147483647i));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(~23155u, u_input.a), u_input.a, ~(1u | ~u_input.a), u_input.a), select(vec4<u32>(_wgslsmith_div_u32(u_input.a, abs(0u)), u_input.a, 1u, ~(~51873u)), vec4<u32>(u_input.a, _wgslsmith_mult_u32(~u_input.a, 0u & u_input.a), u_input.a, 0u), true));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>) -> vec3<f32> {
    var var_0 = Struct_1(u_input.b, select(reverseBits(max(vec2<i32>(-1i, arg_1.x), ~arg_1)), ~arg_1 | arg_1, !select(any(vec4<bool>(false, false, false, false)), true, all(vec4<bool>(false, true, false, true)))), select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 61384i) << (arg_0.xz % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(arg_1.x, 1i))), i32(-1i) * -2147483647i, 41037i, ~(-11894i)), ~(~vec4<i32>(1i, -11105i, arg_1.x, u_input.c)) & vec4<i32>(reverseBits(-1i), u_input.d.x, _wgslsmith_add_i32(-4096i, arg_1.x), -1i), false));
    var_0 = Struct_1(1i, -vec2<i32>(reverseBits(-arg_1.x), _wgslsmith_div_i32(1i, 1i ^ var_0.c.x)), firstLeadingBit(vec4<i32>(2147483647i, 14262i, _wgslsmith_div_i32(67001i, reverseBits(u_input.b)), u_input.b)));
    let var_1 = ~(-25852i);
    var var_2 = -525f;
    var var_3 = max(-countOneBits(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(1i, u_input.d.x, 1i)), ~var_0.c.xyw)), _wgslsmith_sub_vec3_i32(var_0.c.yxz, firstTrailingBit(-var_0.c.zww)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1364f, -3268f, -298f) - vec3<f32>(689f, -444f, -385f)), vec3<f32>(-939f, 323f, -800f)) - vec3<f32>(-652f, -1000f, 475f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1930f, -517f, 409f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, 466f, 176f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-885f, -1039f)), _wgslsmith_f_op_f32(round(269f)), -223f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1002f, 717f, -640f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_vec4_u32(func_2(arg_1, -2555f), vec4<u32>(arg_2.a.x, u_input.a, 4294967295u, u_input.a)), arg_0.c.zy))));
    let var_1 = true;
    var var_2 = select(!select(!select(vec4<bool>(var_1, var_1, true, true), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, true, true, false)), !(!vec4<bool>(true, var_1, false, false)), !select(vec4<bool>(true, var_1, var_1, false), vec4<bool>(false, true, false, true), true)), vec4<bool>((!var_1 | (true | var_1)) || (u_input.a < ~u_input.a), var_1, _wgslsmith_sub_i32(13290i, 1i) >= (min(u_input.c, arg_0.b.x) & -2147483647i), 103727u <= reverseBits(u_input.a)), true);
    var_2 = !(!(!select(vec4<bool>(var_2.x, true, false, var_1), vec4<bool>(var_1, false, var_1, false), vec4<bool>(false, var_1, true, var_2.x))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, var_0.x, -1365f), var_0)), var_0, vec3<bool>(true, var_1, true))) * vec3<f32>(_wgslsmith_f_op_f32(round(2094f)), arg_1, _wgslsmith_f_op_f32(ceil(arg_1))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(710f, 774f, var_0.x))) + _wgslsmith_f_op_vec3_f32(-var_0)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(-1998f, var_0.x)), arg_1))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(var_0)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -620f), _wgslsmith_f_op_f32(-940f * var_0.x), _wgslsmith_f_op_f32(arg_1 + -701f)) * vec3<f32>(_wgslsmith_f_op_f32(max(arg_1, var_0.x)), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-var_0.x)))) * var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(-2147483647i, vec2<i32>(-2147483647i, u_input.b), vec4<i32>(u_input.c, u_input.c, u_input.b, 4492i)), 1000f, Struct_2(vec4<u32>(u_input.a, u_input.a, 0u, 1u)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(488f, -860f, -881f) + vec3<f32>(524f, -337f, 897f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 1378f, 699f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1105f, 267f, -1022f), vec3<f32>(2529f, -1130f, 762f))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1334f, -216f, -1342f))))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(-1762f)), _wgslsmith_f_op_f32(1056f - 1304f), 1543f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, -165f, -700f)), vec3<f32>(169f, -360f, -127f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(887f * _wgslsmith_f_op_f32(f32(-1f) * -1639f)), _wgslsmith_f_op_f32(var_0.x + var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<u32>(u_input.a, func_3(Struct_2(vec4<u32>(u_input.a, 103943u, 4294967295u, 30576u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1729f, -438f, var_0.x, 2118f))))), Struct_1(-30109i, ~vec2<i32>(-28873i, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -25212i, 6353i, u_input.b), vec4<i32>(u_input.c, 0i, u_input.b, u_input.d.x))), vec2<i32>(_wgslsmith_mult_i32(u_input.c, u_input.d.x), -11751i)).x));
}

