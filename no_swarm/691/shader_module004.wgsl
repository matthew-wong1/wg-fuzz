struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 30>;

var<private> global2: array<f32, 30>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_3) -> vec2<i32> {
    let var_0 = vec3<f32>(-1125f, global2[_wgslsmith_index_u32(58430u, 30u)], 239f);
    global0 = 4294967295u;
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(~abs(arg_2.a.a), ~arg_2.a.b.x), ~1u, arg_2.a.b.x, ~61934u);
    var var_2 = arg_2.a;
    let var_3 = var_2.c;
    return vec2<i32>(-1i, arg_2.c.x);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(1u, Struct_3(Struct_2(u_input.a.x, vec4<u32>(u_input.b, 1u, ~u_input.b, 1616u), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)] < -756f, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.b <= _wgslsmith_clamp_u32(u_input.a.x, 75628u, u_input.b)), ~(~vec2<i32>(106353i, 12480i)) & _wgslsmith_div_vec2_i32(func_3(-2147483647i, vec4<i32>(-66300i, 56236i, -14510i, -405i), global1[_wgslsmith_index_u32(0u, 30u)]), vec2<i32>(-1i, -30411i) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))), true && (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 17602u, u_input.b), u_input.a) >= firstTrailingBit(u_input.a.x)), true));
    return var_0;
}

fn func_4(arg_0: Struct_4) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(53168u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, u_input.a.x, 4294967295u, u_input.b), vec4<u32>(arg_0.b.a.b.x, 1u, 1u, arg_0.b.a.b.x)))), 30u)] + global2[_wgslsmith_index_u32(abs(0u), 30u)]), global2[_wgslsmith_index_u32(arg_0.b.a.a, 30u)]);
    global2 = array<f32, 30>();
    global0 = ~0u;
    var var_1 = Struct_1(vec2<f32>(293f, -1086f));
    global1 = array<Struct_3, 30>();
    return !arg_0.b.d;
}

fn func_1() -> i32 {
    let var_0 = !vec4<bool>(false, all(vec3<bool>(true, true, true)), (1i != (-2147483647i << (u_input.a.x % 32u))) && false, !func_4(func_2()));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1537f, global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(u_input.a.x, 30u)], _wgslsmith_f_op_f32(f32(-1f) * -784f)) * vec4<f32>(_wgslsmith_f_op_f32(751f - _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], 502f))), 361f, -1285f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - global2[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_f_op_f32(floor(228f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_f_op_f32(-728f * global2[_wgslsmith_index_u32(41290u, 30u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(9350u, 30u)] - global2[_wgslsmith_index_u32(u_input.a.x, 30u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1191f, -748f, 1000f, -391f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global2[_wgslsmith_index_u32(11639u, 30u)], 765f, -1431f))), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], 1160f, global2[_wgslsmith_index_u32(u_input.b, 30u)], -595f))))), true));
    global2 = array<f32, 30>();
    let var_2 = (vec3<i32>(1i, 52i, 0i) << (vec3<u32>(u_input.a.x, ~_wgslsmith_mod_u32(27949u, u_input.a.x), ~firstTrailingBit(u_input.b)) % vec3<u32>(32u))) & vec3<i32>(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, -1i), ~(-2147483647i)), abs(-_wgslsmith_sub_i32(88776i, -14994i)), reverseBits(select(-9918i, abs(27514i), true)));
    let var_3 = u_input.a.xz;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(global2[_wgslsmith_index_u32(64717u, 30u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(448f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 30u)]))), _wgslsmith_f_op_f32(-261f - -1639f))));
    global1 = array<Struct_3, 30>();
    var var_1 = abs(i32(-1i) * -3888i) >> (_wgslsmith_sub_u32(~(~(~0u)), u_input.b) % 32u);
    let var_2 = ~(~_wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.b, 51865u), u_input.a.x));
    global2 = array<f32, 30>();
    var var_3 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(0i, 2147483647i, -2147483647i, 5394i)), ~(~vec4<i32>(-1i, -2147483647i, 1i, 54194i)), -vec4<i32>(-19567i, -1i, 2147483647i, 0i) << (u_input.a % vec4<u32>(32u))) ^ vec4<i32>(1i, 1i, 1i, 1i));
    var_1 = min(~_wgslsmith_sub_i32(~(var_3.x ^ -1i), func_1()), var_3.x & abs(-40134i));
    global1 = array<Struct_3, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(34895i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1414f))))), countOneBits(4294967295u), ~(-var_3.x));
}

