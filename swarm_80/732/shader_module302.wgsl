struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 0u, 54384u, 0u, 4294967295u, 0u, 9538u, 43827u, 10138u, 7539u, 4294967295u, 4294967295u, 51281u, 0u, 0u, 14166u, 44549u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: f32) -> i32 {
    let var_0 = Struct_1(any(!vec4<bool>(-698f < arg_1, true, all(vec2<bool>(arg_0, arg_0)), any(vec2<bool>(true, arg_0)))));
    let var_1 = Struct_1(!var_0.a);
    global0 = array<u32, 17>();
    let var_2 = global0[_wgslsmith_index_u32(select(84765u, ~global0[_wgslsmith_index_u32(max(~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 17u)], 17u)], u_input.d, 1u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 17u)], 17u)], global0[_wgslsmith_index_u32(133232u, 17u)], 77567u)), vec3<u32>(u_input.d, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 17u)]))), 17u)], !all(!vec4<bool>(false, false, arg_0, true))), 17u)];
    let var_3 = _wgslsmith_dot_vec3_i32(~reverseBits(u_input.b & ~u_input.c), vec3<i32>(41389i, _wgslsmith_mult_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 4724i), u_input.b.yz), 2147483647i), -2147483647i), abs(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(14730i, u_input.e, u_input.b.x, 1i), vec4<i32>(u_input.c.x, -4321i, 0i, u_input.b.x)), -u_input.a))));
    return i32(-1i) * -(~0i);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) - arg_2.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_2.c.yw - vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1718f - -101f) + arg_2.c.x)))));
    var var_2 = arg_2.b.zx;
    var var_3 = arg_2.b.yyy;
    var_2 = !arg_2.b.wx;
    return select(-vec4<i32>(-23934i, -52903i, func_3(arg_1.a, var_1.x), _wgslsmith_dot_vec2_i32(arg_0.xx, -arg_0.zy)), ~vec4<i32>(~1i, arg_0.x, ~_wgslsmith_add_i32(0i, -1i), countOneBits(2147483647i)), all(select(!select(vec3<bool>(var_3.x, false, arg_1.a), vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(arg_2.b.x, arg_2.b.x, arg_1.a)), vec3<bool>(!arg_2.b.x, true, arg_2.c.x < 1000f), !select(vec3<bool>(true, false, false), arg_2.b.xwz, arg_2.b.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<i32>) -> bool {
    global0 = array<u32, 17>();
    let var_0 = -(~arg_2.zz);
    var var_1 = firstLeadingBit(abs(arg_2));
    var var_2 = vec3<bool>(any(select(vec3<bool>(u_input.d == global0[_wgslsmith_index_u32(13994u, 17u)], arg_0.x, false), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, false, false), arg_0.x || arg_0.x), any(arg_0.zy))), true, u_input.e < _wgslsmith_div_i32(var_1.x, u_input.c.x));
    var_2 = select(vec3<bool>(!(!select(true, true, arg_0.x)), all(!arg_0), true), arg_0, any(select(vec2<bool>(!var_2.x, arg_0.x), select(vec2<bool>(var_2.x, true), vec2<bool>(arg_0.x, arg_0.x), arg_1 >= arg_1), var_2.zz)));
    return true;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = countOneBits(abs(_wgslsmith_clamp_i32(arg_0, arg_2.x, 1i)));
    var var_1 = _wgslsmith_clamp_i32(1i, 1i, i32(-1i) * -1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(round(arg_1.c));
    let var_3 = -926f;
    let var_4 = select(vec2<bool>(!arg_1.b.x, !all(!arg_1.b)), select(vec2<bool>(true, false), arg_1.b.zy, arg_1.b.x), !vec2<bool>(!(!arg_1.b.x), any(!vec2<bool>(true, arg_1.b.x))));
    return select(select(!select(!vec2<bool>(arg_1.b.x, false), !var_4, true), !select(select(vec2<bool>(true, false), vec2<bool>(arg_1.b.x, var_4.x), true), arg_1.b.xy, !var_4.x), select(true, arg_1.b.x, false)), var_4, func_4(select(vec3<bool>(17379u == u_input.d, !var_4.x, all(vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x))), select(vec3<bool>(false, false, true), vec3<bool>(true, false, var_4.x), true), _wgslsmith_f_op_f32(-var_3) > _wgslsmith_f_op_f32(abs(arg_1.c.x))), 8935u, -max(firstTrailingBit(vec4<i32>(-13352i, arg_2.x, arg_0, arg_0)), func_2(vec3<i32>(-15023i, 2147483647i, arg_0), Struct_1(true), arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_u32(firstLeadingBit(u_input.d), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.d, 18033u))), vec2<u32>(global0[_wgslsmith_index_u32(u_input.d, 17u)], u_input.d << (u_input.d % 32u))));
    var var_1 = select(vec2<bool>(true & all(vec2<bool>(true, true)), !any(vec3<bool>(true, true, true))), select(select(func_1(abs(-5622i), Struct_2(vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(95612u, 17u)], 52111u), vec4<bool>(false, false, false, true), vec4<f32>(-322f, 1358f, -2007f, 162f)), firstLeadingBit(u_input.c.yy)), vec2<bool>(u_input.a < u_input.b.x, true), vec2<bool>(true, true)), func_1(_wgslsmith_mult_i32(u_input.c.x, countOneBits(u_input.c.x)), Struct_2(~vec3<u32>(14093u, 5915u, 59833u), vec4<bool>(true, true, false, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-251f, -1313f, 181f, 239f) * vec4<f32>(1371f, -355f, -646f, 660f))), firstTrailingBit(~vec2<i32>(-11510i, u_input.b.x))), func_1(15189i, Struct_2(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8100u, 17u)], 17u)], global0[_wgslsmith_index_u32(290u, 17u)], 10681u), vec4<bool>(true, false, true, false), vec4<f32>(1246f, 204f, 728f, -904f)), u_input.c.xy)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-933f + -1360f)), _wgslsmith_f_op_f32(1203f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true)) == _wgslsmith_f_op_f32(trunc(-1024f)));
    let var_2 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u) << (~vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 3925u), _wgslsmith_sub_vec2_u32(vec2<u32>(9983u, 48119u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(42392u, 17u)])))));
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    var var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1509u, 41263u, 20335u), u_input.d, abs(global0[_wgslsmith_index_u32(var_2.x, 17u)]), _wgslsmith_add_u32(u_input.d | global0[_wgslsmith_index_u32(7993u, 17u)], 1u)), ~(~vec4<u32>(28657u, 0u, 96653u, 84450u)), _wgslsmith_clamp_vec4_u32(~min(vec4<u32>(2484u, 76490u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 17u)], 17u)], 17u)], 0u), vec4<u32>(var_2.x, 62482u, 25589u, 1u)), reverseBits(vec4<u32>(54989u, var_2.x, global0[_wgslsmith_index_u32(var_2.x, 17u)], 1u)) >> (~vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(0u, 4294967295u, u_input.d, 1u)))), abs(reverseBits(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 40843u, 0u, var_2.x), vec4<u32>(u_input.d, var_2.x, 0u, 89548u), vec4<u32>(u_input.d, 1u, 0u, u_input.d))))));
    var var_4 = max(min(~var_2.x, ~(~firstLeadingBit(4294967295u))), ~global0[_wgslsmith_index_u32(select(max(var_2.x, ~var_2.x), var_2.x, true), 17u)]);
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 4294967295u, 0u, global0[_wgslsmith_index_u32(17516u, 17u)]), vec4<u32>(global0[_wgslsmith_index_u32(21203u, 17u)], 107171u, u_input.d, var_2.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 0u, 10006u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(59172u, 17u)], var_2.x, 130585u, var_2.x)))), abs(~var_2.x), _wgslsmith_dot_vec2_u32(select(~(vec2<u32>(13387u, 4294967295u) & var_2), var_2, -2147483647i >= (35826i >> (u_input.d % 32u))), _wgslsmith_mod_vec2_u32(var_2, _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, 37886u), var_2))), u_input.b);
}

