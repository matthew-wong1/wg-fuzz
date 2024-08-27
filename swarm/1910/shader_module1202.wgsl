struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18>;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(4294967295u, vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec3<u32>(27494u, 1u, 4294967295u), 6870u)), Struct_2(Struct_1(1u, vec2<i32>(1i, -1i), vec2<i32>(1i, 2147483647i), vec3<u32>(45137u, 0u, 30857u), 4294967295u)), Struct_2(Struct_1(1u, vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 78115i), vec3<u32>(4294967295u, 19405u, 91711u), 73256u)), Struct_2(Struct_1(3268u, vec2<i32>(-8205i, 27084i), vec2<i32>(1i, i32(-2147483648)), vec3<u32>(1u, 0u, 0u), 15294u)), Struct_2(Struct_1(72354u, vec2<i32>(30859i, -1i), vec2<i32>(2147483647i, 21091i), vec3<u32>(1u, 1u, 1u), 4294967295u)));

var<private> global2: array<vec4<f32>, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(0u, 12u)];
    let var_1 = _wgslsmith_add_vec3_u32(arg_1.a.a.d, min(arg_1.a.a.d, arg_1.a.a.d));
    global1 = array<Struct_2, 5>();
    var var_2 = !vec4<bool>(false, true, select(!all(global0[_wgslsmith_index_u32(var_1.x, 18u)]), (arg_1.c.x == -1066f) && any(vec3<bool>(false, false, false)), true), all(vec3<bool>(true, true, true)) | true);
    var var_3 = !all(!select(select(global0[_wgslsmith_index_u32(arg_1.a.a.d.x, 18u)], global0[_wgslsmith_index_u32(1041u, 18u)], var_2.x), !vec2<bool>(true, var_2.x), vec2<bool>(false, var_2.x)));
    return _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 64272u, 0u), arg_1.a.a.d ^ vec3<u32>(9500u, 0u, 17357u)), firstLeadingBit(var_1.x) & max(var_1.x, var_1.x)), _wgslsmith_add_u32(8507u, ~_wgslsmith_dot_vec3_u32(arg_1.a.a.d, arg_1.a.a.d))), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(select(vec4<u32>(var_1.x, 40169u, 31781u, 26301u), vec4<u32>(1u, arg_1.a.a.a, 1u, arg_1.a.a.d.x), var_2.x), vec4<u32>(35989u, arg_1.a.a.a, 71234u, 79767u) | vec4<u32>(arg_1.a.a.a, arg_1.a.a.e, 1u, var_1.x)), max(select(vec4<u32>(4294967295u, arg_1.a.a.d.x, var_1.x, 1u), vec4<u32>(var_1.x, 4294967295u, var_1.x, 1u), var_2.x) | _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.x, 4294967295u, 1u), vec4<u32>(arg_1.a.a.e, var_1.x, 50018u, 16661u)), vec4<u32>(select(4294967295u, 0u, var_2.x), 4911u >> (var_1.x % 32u), ~102335u, 0u))));
}

fn func_2(arg_0: u32) -> i32 {
    global0 = array<vec2<bool>, 18>();
    let var_0 = arg_0;
    global2 = array<vec4<f32>, 12>();
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 17730u, var_0), arg_0), func_3(-_wgslsmith_mod_vec2_i32(vec2<i32>(43740i, 0i), vec2<i32>(44334i, u_input.a.x)), Struct_3(Struct_2(Struct_1(var_0, vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.a.x, -1i), vec3<u32>(1u, arg_0, arg_0), arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(362f, 835f) + vec2<f32>(-514f, -854f)), _wgslsmith_div_vec3_f32(vec3<f32>(-2520f, 1000f, -402f), vec3<f32>(1000f, -412f, -416f)))), ~66699u), 5u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2115f, 1174f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1324f), _wgslsmith_f_op_f32(-1374f * -1000f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(247f, -790f), vec2<f32>(792f, 2272f)))))), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec2_i32(u_input.a.yx, u_input.a.zz)) > -min(u_input.a.x, 2147483647i))), vec3<f32>(-343f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1315f)) - -219f) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(666f)))), _wgslsmith_f_op_f32(-1f)));
    var_1 = Struct_3(Struct_2(var_1.a.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(521f, -100f), vec2<f32>(var_1.c.x, var_1.b.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1725f, var_1.b.x), var_1.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-801f, var_1.b.x), _wgslsmith_f_op_vec2_f32(var_1.c.xy + var_1.b))))), var_1.c);
    return 17112i;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    var var_0 = vec3<i32>(7369i, 1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), arg_2.a.a.c.x)) | min(u_input.a, vec3<i32>(_wgslsmith_mult_i32(func_2(arg_2.a.a.e), 2147483647i), arg_0.a.a.b.x, reverseBits(arg_2.a.a.c.x)));
    global2 = array<vec4<f32>, 12>();
    let var_1 = _wgslsmith_dot_vec2_i32(-var_0.xx, (vec2<i32>(_wgslsmith_sub_i32(59566i, 1776i), arg_2.a.a.b.x | u_input.a.x) & (arg_0.a.a.c << (~vec2<u32>(0u, arg_0.a.a.a) % vec2<u32>(32u)))) | reverseBits(vec2<i32>(1i, arg_0.a.a.b.x) | ~vec2<i32>(arg_2.a.a.b.x, -13811i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~firstLeadingBit(arg_1.a), 12u)] * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(arg_0.a.a.e, 12u)])) + _wgslsmith_f_op_vec4_f32(exp2(global2[_wgslsmith_index_u32(74125u, 12u)]))))));
    let var_3 = all(vec3<bool>(true, true, true));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1847f)) + 634f) - _wgslsmith_f_op_f32(select(-565f, _wgslsmith_f_op_f32(ceil(-151f)), true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-753f + 187f) - _wgslsmith_f_op_f32(floor(686f))) + _wgslsmith_f_op_f32(abs(-359f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(17413u, 5u)];
    let var_1 = abs(_wgslsmith_mult_u32(max(countOneBits(_wgslsmith_clamp_u32(17600u, var_0.a.e, 4294967295u)), var_0.a.a), 4294967295u ^ ~max(var_0.a.d.x, 0u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-448f)), _wgslsmith_f_op_f32(func_4(func_1(Struct_3(global1[_wgslsmith_index_u32(var_0.a.a, 5u)], vec2<f32>(-2116f, 491f), vec3<f32>(1000f, -542f, 530f)), Struct_1(13059u, vec2<i32>(var_0.a.b.x, var_0.a.b.x), var_0.a.b, vec3<u32>(var_0.a.a, var_1, 27007u), var_1), Struct_3(global1[_wgslsmith_index_u32(15589u, 5u)], vec2<f32>(-1207f, -382f), vec3<f32>(392f, 1467f, 186f))), -1i, vec4<bool>(true, true, false, false), vec2<u32>(var_1, var_1) | vec2<u32>(var_1, var_1))))) - -1581f));
    var var_3 = abs(firstLeadingBit(min(u_input.a.x, firstLeadingBit(-13694i))));
    var var_4 = countOneBits(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, var_0.a.c.x), u_input.a.x), -(i32(-1i) * -28861i) >> (var_1 % 32u), firstLeadingBit(-2147483647i), 87315i));
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1, var_0.a.d.x), var_0.a.d.yy, var_0.a.d.yx))), ~_wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, 8467u)), vec2<u32>(var_1, 4294967295u))));
}

