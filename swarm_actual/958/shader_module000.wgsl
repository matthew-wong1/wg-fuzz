struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<bool>, 26>;

var<private> global2: array<vec3<u32>, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -865f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(524f, 380f, 217f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-400f, arg_2.c.b, arg_2.b)), true)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1223f, _wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(select(arg_3.b.b, 969f, true)))))), !vec3<bool>(true, true | all(global1[_wgslsmith_index_u32(global0.x, 26u)]), false)));
    var var_1 = select(vec2<bool>(!select(any(vec2<bool>(false, false)), false, all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(arg_3.b.b * _wgslsmith_f_op_f32(arg_2.b * arg_1)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 1000f), _wgslsmith_f_op_f32(arg_1 + -402f))), vec2<bool>(arg_0.x != ~_wgslsmith_dot_vec3_i32(vec3<i32>(-45639i, arg_0.x, u_input.b.x), vec3<i32>(arg_0.x, 0i, 0i)), (0i <= _wgslsmith_add_i32(24640i, arg_3.a)) | (arg_3.a <= ~arg_3.a)), false);
    global0 = vec2<u32>(22377u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b.a.x, global0.x, select(~global0.x, reverseBits(52353u), true), arg_3.b.a.x), vec4<u32>(85926u, firstLeadingBit(1u), 40388u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(arg_3.b.a.x, global0.x)))));
    global2 = array<vec3<u32>, 5>();
    let var_2 = arg_2.b;
    return vec2<bool>(!(!any(vec2<bool>(true, var_1.x)) & all(vec3<bool>(var_1.x, var_1.x, var_1.x))), var_1.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_4 {
    global2 = array<vec3<u32>, 5>();
    global1 = array<vec3<bool>, 26>();
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1560f, -1000f, 962f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-660f, 936f, -1337f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(843f, 648f, -413f), vec3<f32>(853f, 802f, -881f), true)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1823f, 1394f, -2016f))))))));
    let var_1 = Struct_4(max(vec2<i32>(min(-10993i & arg_1.x, ~1i), ~(-27444i & u_input.b.x)), _wgslsmith_mod_vec2_i32(~u_input.b, select(arg_1.ww, u_input.b, func_3(vec2<i32>(-2153i, u_input.b.x), -851f, Struct_2(var_0.x, var_0.x, Struct_1(arg_0.yz, var_0.x)), Struct_3(-12840i, Struct_1(arg_0.yx, var_0.x)))))), -1i >> ((~global0.x ^ ~abs(5387u)) % 32u), ~(vec2<u32>(8851u, max(1u, 38693u)) >> (vec2<u32>(firstLeadingBit(0u), _wgslsmith_mod_u32(arg_0.x, 1u)) % vec2<u32>(32u))), true, reverseBits(u_input.a));
    let var_2 = Struct_1(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(global0.x, abs(global0.x))), vec2<u32>(~arg_0.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(41021u, 1u), global0.x ^ arg_0.x))), 1093f);
    return var_1;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global1 = array<vec3<bool>, 26>();
    global2 = array<vec3<u32>, 5>();
    let var_0 = func_2(global2[_wgslsmith_index_u32(0u << (~arg_0.c.a.x % 32u), 5u)], vec4<i32>(-1i) * -(~(~vec4<i32>(u_input.a, 0i, u_input.b.x, -40061i))));
    var var_1 = !select(vec2<bool>(_wgslsmith_f_op_f32(max(arg_0.b, -924f)) != _wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)), var_0.d), !(!select(vec2<bool>(false, var_0.d), vec2<bool>(var_0.d, var_0.d), vec2<bool>(true, false))), !select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, true)), select(vec2<bool>(var_0.d, true), vec2<bool>(true, var_0.d), var_0.d)));
    let var_2 = ~(vec3<i32>(~_wgslsmith_mod_i32(var_0.e, var_0.a.x), _wgslsmith_mult_i32(func_2(vec3<u32>(var_0.c.x, 1u, 62597u), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -42705i)).a.x, -60677i), abs(reverseBits(var_0.b))) ^ ~select(abs(vec3<i32>(u_input.a, var_0.e, var_0.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.a), vec3<i32>(var_0.a.x, u_input.a, 1i)), !global1[_wgslsmith_index_u32(80120u, 26u)]));
    return arg_0.c;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = false;
    global0 = ~abs(arg_2.c.a | arg_2.c.a);
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(abs(global0.x), ~(4294967295u & _wgslsmith_sub_u32(1u, global0.x)))), 26u)];
    var var_2 = 9267u;
    var_2 = _wgslsmith_dot_vec4_u32(abs(~(~abs(vec4<u32>(60368u, arg_2.c.a.x, arg_2.c.a.x, arg_0)))), vec4<u32>(33788u, abs(_wgslsmith_add_u32(1u, arg_0)), _wgslsmith_mult_u32(~(~66353u), ~arg_2.c.a.x), global0.x));
    return select(-vec2<i32>(~0i << (arg_0 % 32u), _wgslsmith_dot_vec2_i32(u_input.b, _wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 2147483647i)))), u_input.b, select(select(select(!var_1.zy, vec2<bool>(true, var_0), var_0 || var_1.x), vec2<bool>(any(vec4<bool>(true, var_0, var_0, true)), !var_0), any(!vec4<bool>(var_0, var_1.x, true, var_1.x))), var_1.yx, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_4(1u, _wgslsmith_sub_i32(~1i, u_input.a), Struct_2(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(1000f - -442f), func_1(Struct_2(185f, -831f, Struct_1(vec2<u32>(31480u, global0.x), 1553f))))) & (~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -36944i), vec2<i32>(u_input.b.x, 1i)) & ~u_input.b), countOneBits(min(-(i32(-1i) * -1i), ~(u_input.b.x & -1i))), vec2<u32>(global0.x, 79826u), select(false, true, !all(vec2<bool>(true, true))), reverseBits(u_input.b.x));
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec3_i32(~_wgslsmith_sub_vec3_i32(~vec3<i32>(1i, var_0.e, 59702i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.a, -2147483647i), vec3<i32>(u_input.b.x, -2147483647i, var_0.e))), vec3<i32>(u_input.b.x, 18882i, -select(u_input.a, 1i, false))));
    var var_2 = all(!(!(!select(vec4<bool>(var_0.d, var_0.d, true, var_0.d), vec4<bool>(var_0.d, var_0.d, true, var_0.d), vec4<bool>(true, var_0.d, true, true)))));
    let var_3 = firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, global0.x), 19930u & ~var_0.c.x), global0.x));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(max(1124f, 1203f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1830f + 1817f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

