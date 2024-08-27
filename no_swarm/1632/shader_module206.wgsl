struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<vec3<bool>, 6>;

var<private> global3: array<f32, 17>;

var<private> global4: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(47197u, 7u)];
    global4 = select(var_0.c.x, !(var_0.c.x & !any(global2[_wgslsmith_index_u32(u_input.d, 6u)])), all(!(!(!vec4<bool>(var_0.c.x, var_0.c.x, true, true)))));
    return i32(-1i) * -2147483647i;
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_mod_vec3_i32(min(vec3<i32>(2147483647i, 0i, u_input.b), firstLeadingBit(-vec3<i32>(-44801i, 11284i, global0.x))) ^ ~(~(~vec3<i32>(-1i, 2147483647i, 29734i))), countOneBits(min(vec3<i32>(31878i, -2147483647i, global0.x) ^ vec3<i32>(-71367i, -1i, global0.x), -(vec3<i32>(global0.x, 0i, u_input.b) << (vec3<u32>(30118u, 1u, 1u) % vec3<u32>(32u))))));
    let var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 7u)];
    global0 = _wgslsmith_mult_vec2_i32(-var_0.xz, vec2<i32>(~0i, 1i));
    var_0 = ~(-firstLeadingBit(~(~vec3<i32>(-789i, 1i, global0.x))));
    global2 = array<vec3<bool>, 6>();
    return vec3<i32>(-_wgslsmith_mod_i32(32902i, -1i), ~(-var_0.x), -u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec2<i32> {
    var var_0 = arg_0;
    global3 = array<f32, 17>();
    global2 = array<vec3<bool>, 6>();
    var var_1 = var_0.c;
    global0 = func_3().yy;
    return reverseBits(vec2<i32>(i32(-1i) * -2147483647i, firstTrailingBit(3040i)));
}

fn func_1() -> u32 {
    global4 = !(all(vec4<bool>(false, true, true, true)) & all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))));
    let var_0 = true;
    global2 = array<vec3<bool>, 6>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(0u, u_input.a)), 7u)];
    global0 = func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1022f * global3[_wgslsmith_index_u32(u_input.a, 17u)]), _wgslsmith_f_op_f32(exp2(var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-659f - -1520f))), -410f, !select(var_1.c, var_1.c, true), -func_2(_wgslsmith_f_op_f32(504f * var_1.a))), firstLeadingBit(func_3()), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_1.d, 6406i, u_input.b, u_input.b)) << (~countOneBits(vec4<u32>(u_input.c, u_input.a, 64199u, u_input.a)) % vec4<u32>(32u)), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.d, global0.x, global0.x, -21992i), vec4<i32>(global0.x, -4756i, -42323i, var_1.d)), vec4<i32>(global0.x, var_1.d, -57586i, var_1.d) << (vec4<u32>(5342u, 0u, u_input.a, 113941u) % vec4<u32>(32u))))), vec4<i32>(-27370i, -1i | global0.x, -14188i, -(-2029i >> (0u % 32u)) >> (_wgslsmith_clamp_u32(abs(u_input.c), ~u_input.a, 28961u) % 32u)));
    return firstTrailingBit(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(318f, global3[_wgslsmith_index_u32(u_input.c, 17u)]) + vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(u_input.d, 17u)])))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 17u)] + -951f), -1811f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.d, 17u)], global3[_wgslsmith_index_u32(u_input.d, 17u)]))))) + vec2<f32>(_wgslsmith_f_op_f32(-1706f - 1377f), -239f)));
    global0 = abs(vec2<i32>(global0.x, -41480i));
    var var_1 = all(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_2 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(0u, 21816u)) << (func_1() % 32u), 7u)];
    var_1 = var_2.c.x;
    global0 = vec2<i32>(-21516i, i32(-1i) * -3718i);
    var var_3 = select(all(global2[_wgslsmith_index_u32(25738u, 6u)]), var_2.c.x, var_2.c.x);
    var var_4 = select(vec2<bool>(var_2.c.x & false, var_2.c.x), !var_2.c, var_2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u, u_input.c, var_0.x, vec2<f32>(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.d, 17u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1889f))));
}

