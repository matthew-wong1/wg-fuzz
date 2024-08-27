struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = false;
    var var_1 = Struct_3(true, arg_0.b, false);
    let var_2 = ~(-31003i);
    var_1 = arg_0;
    let var_3 = arg_0;
    return var_1.b.x;
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = u_input.a;
    let var_1 = vec2<u32>(u_input.b.x, firstLeadingBit(4294967295u));
    return (u_input.c.x ^ (1i << (firstTrailingBit(countOneBits(var_1.x)) % 32u))) < select(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), -_wgslsmith_add_i32(var_0.x << (var_1.x % 32u), u_input.c.x), func_3(Struct_3(true, select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true), false)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(min(_wgslsmith_div_vec4_i32(u_input.a, select(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -2147483647i), u_input.a, arg_0.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), vec4<i32>(~0i, 4234i, u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, firstLeadingBit(u_input.c.x)))), (vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(9530i, u_input.a.x), u_input.c.x, u_input.c.x >> (226u % 32u)) | vec4<i32>(_wgslsmith_div_i32(-16331i, 2147483647i), u_input.a.x, u_input.a.x, firstTrailingBit(-37230i))) | reverseBits(select(vec4<i32>(-19479i, -2147483647i, -3614i, 11544i), vec4<i32>(0i, u_input.c.x, u_input.a.x, u_input.a.x), all(arg_0.a.zwx))));
    let var_1 = firstLeadingBit(var_0);
    let var_2 = select(!(!vec3<bool>(true, true, arg_0.a.x)), arg_0.a.xzz, arg_0.a.zzy);
    var var_3 = _wgslsmith_add_i32(var_1 | var_1, select(10079i, var_1, true));
    var var_4 = Struct_3(any(arg_0.a.zzy), vec4<bool>(true, func_3(Struct_3(false, vec4<bool>(var_2.x, true, var_2.x, false), true)), true, (arg_2 < arg_2) & (_wgslsmith_mod_i32(u_input.a.x, -30344i) > (i32(-1i) * -10255i))), var_2.x);
    return 0i;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = u_input.c.x;
    var_0 = func_4(Struct_1(vec4<bool>(all(select(vec3<bool>(arg_0.a, arg_1, true), vec3<bool>(arg_1, false, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.a))), arg_0.a, func_2(-366f), true), firstLeadingBit(countOneBits(u_input.b.x)) ^ u_input.b.x), vec2<u32>(21565u, select(0u, u_input.b.x, arg_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1239f))))))));
    var var_1 = arg_0;
    let var_2 = Struct_1(vec4<bool>(any(vec3<bool>(true, false, select(arg_0.a, arg_0.a, var_1.a))), false && all(!vec3<bool>(arg_1, true, arg_0.a)), select(var_1.a, true, arg_1), func_3(Struct_3(true, !vec4<bool>(arg_1, true, arg_1, arg_1), arg_2 > arg_2))), 33975u & ~select(select(1u, 21781u, false), 1u, arg_1 & true));
    let var_3 = ~(~_wgslsmith_mult_vec2_u32(abs(u_input.b.xw), vec2<u32>(countOneBits(4294967295u), var_2.b << (var_2.b % 32u))));
    return true;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = arg_1;
    var var_1 = arg_0.zyx;
    let var_2 = select(_wgslsmith_mult_vec4_u32(~select(arg_0, arg_0, arg_3.a), ~(~vec4<u32>(25198u, 4294967295u, arg_0.x, 63160u))) ^ u_input.b, _wgslsmith_div_vec4_u32(firstTrailingBit(arg_0), ~(~vec4<u32>(arg_0.x, 1u, 0u, 4294967295u))), true);
    var var_3 = arg_3;
    var var_4 = firstLeadingBit(vec2<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.c.x, -1i, u_input.a.x)), max(min(vec3<i32>(u_input.a.x, -2147483647i, 1i), u_input.a.yyz), -u_input.a.wyz))));
    return StorageBuffer(abs(-var_4.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-393f, 228f), vec2<f32>(-937f, 298f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f - 482f), -2104f)), false)), select(u_input.a, vec4<i32>(-u_input.a.x, -_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(4089i, u_input.c.x, var_4.x, 2147483647i)), -20273i, u_input.c.x), 29995u > _wgslsmith_div_u32(var_1.x, reverseBits(var_1.x))), max(_wgslsmith_div_u32(1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_0.x, 1u, 4294967295u, u_input.e)))), _wgslsmith_mod_u32(1u, firstTrailingBit(31149u))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_mult_vec4_u32(firstTrailingBit(u_input.b), vec4<u32>(u_input.b.x, 2601u, u_input.e, countOneBits(max(u_input.e, u_input.e)))), Struct_2(!(!func_1(Struct_2(true), true, u_input.a.x))), Struct_3(any(vec3<bool>(true, u_input.c.x < u_input.a.x, true)), vec4<bool>(!all(vec2<bool>(true, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 56996i, 1i), vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x)) != -13831i, false, true), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), Struct_1(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), u_input.b.x ^ ~15504u));
}

