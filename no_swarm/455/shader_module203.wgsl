struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(1u, 24488u, 1u, 0u), vec4<bool>(true, false, false, false), vec4<i32>(26476i, 15065i, -1i, 9304i)));

var<private> global1: array<vec3<bool>, 10>;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1526f, -874f) * vec2<f32>(-1861f, 541f))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-279f, -960f), vec2<f32>(-577f, -1021f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1092f)), all(vec3<bool>(false, arg_2, arg_1.c.x))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1242f + _wgslsmith_f_op_f32(var_0.x - var_0.x)), var_0.x) - vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) - -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + 200f)))));
    let var_1 = ~arg_1.d;
    return select(true, any(!vec2<bool>(true, arg_2 & arg_2)), arg_2);
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = abs(u_input.b);
    var var_1 = !vec4<bool>(!func_3(14247u, Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(u_input.a.x, 15056u, 1u, 0u), vec4<bool>(false, true, false, true), vec4<i32>(0i, u_input.c.x, 0i, -2147483647i)), all(vec3<bool>(true, true, true)), false), all(vec4<bool>(true, true, true, true)), select(false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), all(vec4<bool>(true, true, false, false))), select(true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), all(vec4<bool>(false, true, true, true))));
    var var_2 = Struct_1(select(vec4<bool>(true, all(vec4<bool>(var_1.x, var_1.x, true, var_1.x)), true, var_1.x), select(!select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true), var_1.x), !select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1.x), var_1.x), vec4<bool>(!select(var_1.x, true, var_1.x), false, var_1.x, var_1.x && func_3(arg_0, global0[_wgslsmith_index_u32(u_input.b, 1u)], true, var_1.x))), firstLeadingBit(vec4<u32>(~0u, ~_wgslsmith_mult_u32(arg_0, 1u), _wgslsmith_sub_u32(~var_0, _wgslsmith_clamp_u32(u_input.a.x, 3375u, u_input.a.x)), ~(0u & u_input.a.x))), select(select(select(!vec4<bool>(var_1.x, false, var_1.x, false), !vec4<bool>(true, var_1.x, var_1.x, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, var_1.x, true), false)), vec4<bool>(true, var_1.x, true, !var_1.x), true), select(select(select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x)), vec4<bool>(true, true, true, var_1.x), false), vec4<bool>(false, !var_1.x, true, var_1.x || false), !var_1.x), var_1.x), vec4<i32>(_wgslsmith_add_i32(countOneBits(u_input.c.x), -1i), ~(~u_input.c.x), -(~(-3147i)), 0i));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1f))))));
    let var_4 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 1u)];
    return !(!var_4.a);
}

fn func_1() -> bool {
    var var_0 = -2070f;
    global0 = array<Struct_1, 1>();
    let var_1 = select(select(vec4<bool>(true, !any(vec2<bool>(false, false)), any(vec4<bool>(true, true, false, false)) & false, true), vec4<bool>(true, true, true, true), true), func_2(~(~u_input.a.x)), all(!select(func_2(4294967295u), vec4<bool>(false, true, false, true), true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347f + -251f));
    return all(!vec4<bool>(var_1.x, var_1.x, !(var_1.x | true), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 10>();
    var var_0 = any(vec4<bool>(select(true, func_1(), true), true, true, true));
    let var_1 = vec4<u32>(u_input.a.x, 13840u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(27230u), u_input.a.x, firstTrailingBit(4294967295u), u_input.b), _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.a.x), vec4<u32>(29128u, 0u, u_input.a.x, 15607u), false), vec4<u32>(47993u, u_input.b, u_input.b, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 36376u, u_input.b), vec4<u32>(u_input.a.x, u_input.a.x, 55026u, u_input.a.x)) | min(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, 1u, 73149u, 17638u))), ~(~vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 23277u))), u_input.a.x);
    global0 = array<Struct_1, 1>();
    var var_2 = u_input.c.x;
    global0 = array<Struct_1, 1>();
    var var_3 = Struct_1(select(!select(func_2(1u), vec4<bool>(true, true, true, true), false), vec4<bool>(!func_3(u_input.a.x, global0[_wgslsmith_index_u32(0u, 1u)], false, true), true, !any(vec4<bool>(false, false, true, false)), true), ~min(var_1.x, var_1.x) == ~var_1.x), ~(~(~vec4<u32>(45304u, var_1.x, u_input.a.x, var_1.x))), select(vec4<bool>(-43991i < select(2147483647i, -2701i, false), true, all(func_2(var_1.x)), select(true, func_2(u_input.b).x, true)), func_2(61683u), any(vec2<bool>(true, true))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(5577i, u_input.c.x, u_input.c.x, u_input.c.x), ~vec4<i32>(u_input.c.x, -17288i, u_input.c.x, u_input.c.x)), reverseBits(vec4<i32>(-1i, 2147483647i, u_input.c.x, 6176i) >> (vec4<u32>(1u, 54707u, var_1.x, var_1.x) % vec4<u32>(32u)))) & _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(29955i, u_input.c.x, 694i, u_input.c.x)), ~(-vec4<i32>(-2147483647i, -23223i, -2147483647i, -46484i))));
    let var_4 = ~(-_wgslsmith_mult_i32(select(var_3.d.x, u_input.c.x, select(false, true, false)), ~var_3.d.x & _wgslsmith_div_i32(u_input.c.x, 1i)));
    var_3 = Struct_1(!var_3.c, _wgslsmith_div_vec4_u32(abs(var_3.b), select(reverseBits(vec4<u32>(78999u, u_input.a.x, var_1.x, var_1.x)), vec4<u32>(u_input.a.x & 0u, ~var_3.b.x, _wgslsmith_dot_vec4_u32(var_3.b, vec4<u32>(25128u, var_3.b.x, 24537u, var_3.b.x)), _wgslsmith_add_u32(13653u, var_1.x)), all(vec2<bool>(var_3.a.x, true)) || false)), var_3.c, _wgslsmith_mod_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, var_4, var_3.d.x, u_input.c.x), max(var_3.d, vec4<i32>(u_input.c.x, -25763i, var_4, -5215i))), _wgslsmith_sub_vec4_i32(-var_3.d, ~(-var_3.d))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~var_3.d.x & ~_wgslsmith_mult_i32(-69723i, -24746i), _wgslsmith_mod_i32(~(-1i | var_4), ~(-4777i))));
}

