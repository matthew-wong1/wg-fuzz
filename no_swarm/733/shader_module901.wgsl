struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: vec4<i32> = vec4<i32>(0i, 0i, i32(-2147483648), 14875i);

var<private> global2: u32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    let var_0 = Struct_3(Struct_1(arg_2.a, arg_0.a.c, arg_2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, arg_0.a.a.x)))))), _wgslsmith_f_op_f32(1620f + _wgslsmith_f_op_f32(-1000f * -694f)), firstLeadingBit(~((-2147483647i & arg_0.a.b) | u_input.c)));
    global2 = 38373u;
    global0 = array<vec2<bool>, 5>();
    global1 = -(-_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, -2147483647i, arg_0.a.b, -2147483647i), vec4<i32>(u_input.c, arg_2.b, global1.x, 37948i)), -vec4<i32>(global1.x, arg_2.c, 0i, 1i)) ^ reverseBits(vec4<i32>(-1i) * -vec4<i32>(-22446i, 0i, var_0.a.b, global1.x)));
    var var_1 = var_0;
    return var_1.b;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(u_input.a, Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1039f + -383f), _wgslsmith_f_op_f32(-1000f * -675f), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<f32>(-228f, -966f, 1584f), u_input.c, 6366i, vec2<f32>(-459f, -1588f)), u_input.b), vec3<u32>(u_input.b.x, 12765u, 0u), Struct_1(vec3<f32>(455f, -1374f, 2611f), -2147483647i, global1.x, vec2<f32>(-969f, -474f)), vec4<bool>(true, true, true, false)))), 1i, -1i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1976f, 1576f) * vec2<f32>(1000f, 739f))))), _wgslsmith_add_vec3_u32(countOneBits(select(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(u_input.a, u_input.a, u_input.b.x), vec3<bool>(false, false, true))), vec3<u32>(0u, 49119u, 5390u))), _wgslsmith_f_op_f32(f32(-1f) * -1083f));
    var var_1 = Struct_1(var_0.b.a.a, -(i32(-1i) * -23947i), max(~13535i, abs(_wgslsmith_clamp_i32(~var_0.b.a.c, ~(-15549i), ~(-2147483647i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.a.d.x, 457f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) * vec2<f32>(var_0.c, -1533f)) + vec2<f32>(var_0.c, 1295f)), global0[_wgslsmith_index_u32(var_0.a, 5u)]))));
    var var_2 = var_0.b;
    global1 = vec4<i32>(-1i) * -select(abs(firstTrailingBit(vec4<i32>(-47695i, -38155i, -53209i, 2147483647i))), vec4<i32>(firstTrailingBit(-23517i), -1i, var_1.c << (u_input.a % 32u), -2147483647i), vec4<bool>(true, true, true, true));
    var var_3 = 17376i;
    return Struct_4(33165u, Struct_2(var_2.a, vec3<u32>(~1u, 1u, 4686u << (var_2.b.x % 32u)) | (select(var_2.b, vec3<u32>(var_0.a, var_2.b.x, 30822u), vec3<bool>(true, true, false)) ^ vec3<u32>(1u, 0u, 15787u))), _wgslsmith_div_f32(737f, var_0.c));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: f32) -> vec3<bool> {
    let var_0 = vec2<bool>(select(false, (~52670i << (~arg_1.a % 32u)) >= 21674i, 14766i >= -_wgslsmith_sub_i32(arg_1.b.a.c, u_input.c)), true);
    global1 = reverseBits(abs(vec4<i32>(-1i) * -vec4<i32>(1i, 17903i, u_input.c, u_input.c)));
    let var_1 = Struct_3(Struct_1(arg_1.b.a.a, 8688i, arg_1.b.a.b, func_2().b.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_mult_i32(-u_input.d, global1.x));
    global1 = firstLeadingBit(abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global1.x, arg_1.b.a.b, -13764i, var_1.c), firstTrailingBit(vec4<i32>(u_input.e, -6015i, global1.x, global1.x)), vec4<i32>(~global1.x, global1.x << (1u % 32u), _wgslsmith_dot_vec3_i32(global1.xyy, vec3<i32>(global1.x, global1.x, arg_1.b.a.c)), -14168i))));
    return vec3<bool>(true, false, all(select(select(vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(true, var_0.x, true, true), var_0.x), vec4<bool>(global1.x >= -1i, !var_0.x, true, true), var_0.x)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    var var_0 = select(arg_0.b, firstTrailingBit((vec3<u32>(arg_0.b.x, u_input.a, 1u) ^ _wgslsmith_sub_vec3_u32(arg_0.b, arg_0.b)) >> ((reverseBits(vec3<u32>(0u, u_input.b.x, u_input.b.x)) | ~vec3<u32>(0u, arg_0.b.x, arg_2.b.x)) % vec3<u32>(32u))), select(select(vec3<bool>(true, 1i > arg_2.a.b, -2147483647i >= arg_2.a.b), vec3<bool>(true, all(vec3<bool>(true, true, false)), true), vec3<bool>(false, true, true)), select(func_4(vec4<f32>(arg_2.a.d.x, 297f, 1000f, arg_2.a.a.x), func_2(), _wgslsmith_f_op_f32(arg_3.a.d.x * arg_0.a.d.x)), vec3<bool>(true, true, true), func_4(vec4<f32>(arg_2.a.d.x, arg_3.a.a.x, arg_3.a.d.x, 1000f), Struct_4(53061u, arg_2, arg_3.b), arg_0.a.d.x).x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_4(vec4<f32>(218f, arg_2.a.d.x, 491f, arg_0.a.a.x), Struct_4(arg_2.b.x, Struct_2(arg_3.a, vec3<u32>(5542u, u_input.b.x, u_input.a)), arg_3.b), 759f)), vec3<bool>(true, true, true), true)));
    var_0 = vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a, arg_0.b.x))) << (func_2().a % 32u), ~1u, 12368u);
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<f32>(-2629f, 1737f, -1000f), u_input.d, -2147483647i, vec2<f32>(303f, 194f)), u_input.b), global1.x, Struct_2(Struct_1(vec3<f32>(956f, 1000f, -1147f), 4986i, u_input.c, vec2<f32>(1762f, 265f)), vec3<u32>(u_input.b.x, 38289u, u_input.a)), Struct_3(Struct_1(vec3<f32>(-1000f, -1306f, -150f), -10791i, -2147483647i, vec2<f32>(-1090f, -1819f)), 1012f, -2147483647i)))) + _wgslsmith_f_op_f32(707f - 1f)), _wgslsmith_f_op_f32(-1286f * 330f)));
    let var_1 = ~vec4<i32>(0i, u_input.e, global1.x, ~_wgslsmith_mod_i32(18258i, global1.x) & 6209i);
    let var_2 = Struct_4(u_input.b.x, func_2().b, _wgslsmith_f_op_f32(458f - _wgslsmith_f_op_f32(-1213f * 1096f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_2.b.a.a.yz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1372f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xx))));
    let var_4 = func_2().b.a;
    global2 = func_2().b.b.x;
    let var_5 = vec4<u32>(~_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, 38720u, 13735u), vec3<u32>(35125u, u_input.a, u_input.a)), max(1501u, 4294967295u))), (var_2.b.b.x ^ var_2.b.b.x) ^ 4807u, ~u_input.a, firstTrailingBit(24422u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -224f, -698f) + vec3<f32>(264f, -1089f, var_3.x)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4.a.x, var_0.x, var_4.a.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, var_3.x, var_4.d.x), vec3<f32>(-503f, 2543f, 900f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_2.b.a.a - var_2.b.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.d.x, 1207f, var_2.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1125f * var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1431f * var_3.x)), false))));
}

