struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 51809u, 16928u, 0u);

var<private> global1: array<f32, 28> = array<f32, 28>(923f, 778f, 115f, -1109f, -491f, -1701f, -1000f, -1870f, 149f, 1504f, 1066f, 2478f, -597f, 1000f, -442f, -1160f, 493f, -1000f, 1315f, 1000f, 569f, 1000f, 100f, -924f, -1000f, -1731f, 470f, -869f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    let var_0 = arg_1;
    var var_1 = vec4<bool>(!all(vec3<bool>(false, false, true)) | (_wgslsmith_dot_vec4_u32(vec4<u32>(8429u, u_input.a.x, 1u, 33133u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) > ~117435u), !(1i >= firstTrailingBit(10149i)), select(all(vec2<bool>(true, true)), select(false, -23551i == ~var_0.b.x, all(vec2<bool>(false, true)) & all(vec2<bool>(true, true))), !(!all(vec4<bool>(false, false, true, false)))), true);
    let var_2 = !vec3<bool>(select(!(arg_2.x >= global0.x), ~u_input.a.x == global0.x, true), all(select(select(vec2<bool>(var_1.x, false), var_1.yy, true), var_1.yx, !var_1.xx)), all(select(!var_1.yz, !var_1.zw, select(var_1.zy, var_1.xy, true))));
    var var_3 = Struct_1(arg_1.a, vec3<i32>(firstTrailingBit(-abs(arg_1.b.x)), -5339i, -max(-6348i, 0i)), -_wgslsmith_sub_i32(arg_1.b.x, _wgslsmith_mult_i32(var_0.c, arg_1.c)));
    var var_4 = vec4<f32>(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-549f - arg_1.a)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-481f)) + 464f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_2.x, 28u)], -145f)))));
    return 4294967295u;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    global1 = array<f32, 28>();
    global0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(global0.x, 23710u) | abs(global0.x), 44128u, ~(~abs(4294967295u)), global0.x), vec4<u32>(u_input.a.x, func_3(global1[_wgslsmith_index_u32(1u & firstLeadingBit(global0.x), 28u)], Struct_1(280f, -vec3<i32>(-1i, arg_2.x, arg_2.x), 1i), ~reverseBits(vec4<u32>(u_input.a.x, global0.x, u_input.a.x, 88335u))), ~_wgslsmith_mult_u32(abs(global0.x), ~69786u), (global0.x << (_wgslsmith_div_u32(u_input.a.x, 0u) % 32u)) & _wgslsmith_mult_u32(global0.x >> (9113u % 32u), 38894u << (global0.x % 32u))));
    global0 = firstLeadingBit(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a.x, 1u, global0.x, 4294967295u) ^ vec4<u32>(15995u, 43258u, 0u, u_input.a.x)), max(select(vec4<u32>(u_input.a.x, 44057u, u_input.a.x, 4294967295u), reverseBits(vec4<u32>(98525u, 4294967295u, 4294967295u, u_input.a.x)), !vec4<bool>(arg_1, arg_1, false, false)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(65973u, 4294967295u, u_input.a.x, 60332u), vec4<u32>(global0.x, 30406u, 51095u, u_input.a.x)))));
    global0 = min(~vec4<u32>(func_3(-1625f, Struct_1(1647f, arg_2, arg_2.x), ~vec4<u32>(global0.x, global0.x, 9784u, 30192u)), 50329u, ~global0.x << (1u % 32u), _wgslsmith_clamp_u32(59693u >> (u_input.a.x % 32u), ~46523u, 1u)), ~abs(min(vec4<u32>(29866u, 6101u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 24011u, global0.x, u_input.a.x)) & ~vec4<u32>(55207u, 4294967295u, global0.x, u_input.a.x)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 28u)])))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-225f)) * _wgslsmith_f_op_f32(f32(-1f) * -2544f))), vec3<i32>(arg_2.x << (~1u % 32u), _wgslsmith_div_i32(countOneBits(i32(-1i) * -9420i), firstTrailingBit(-18779i)), -16609i), ~(_wgslsmith_div_i32(arg_2.x, 2147483647i) | -57532i));
    return Struct_1(_wgslsmith_f_op_f32(-1f), ~(-vec3<i32>(i32(-1i) * -12769i, var_0.b.x, var_0.c)), abs(_wgslsmith_sub_i32(35261i, firstLeadingBit(35111i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    global1 = array<f32, 28>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1143f)))));
    var var_1 = _wgslsmith_add_u32(firstLeadingBit(u_input.a.x), ~global0.x) >> (~global0.x % 32u);
    let var_2 = _wgslsmith_f_op_f32(round(arg_0.a));
    global1 = array<f32, 28>();
    return true;
}

fn func_1(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = !vec3<bool>(true, true, func_4(func_2(vec2<f32>(-391f, -365f), 795f > global1[_wgslsmith_index_u32(global0.x, 28u)], vec3<i32>(arg_1, arg_1, -2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1056f, 735f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1071f, -1000f, 503f, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, -169f, arg_0, -720f) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(global0.x, 28u)], 1245f, -188f)), true)), vec4<f32>(-635f, 1086f, -731f, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 28u)]))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1565f, global1[_wgslsmith_index_u32(0u, 28u)], -1309f, -1357f) * vec4<f32>(global1[_wgslsmith_index_u32(29649u, 28u)], arg_0, 1469f, global1[_wgslsmith_index_u32(u_input.a.x, 28u)]))))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 28u)]), vec3<i32>(arg_1, ~(~(~0i)), reverseBits(_wgslsmith_sub_i32(33216i, 45503i << (global0.x % 32u)))), arg_1);
    let var_3 = _wgslsmith_mod_i32(-30373i, firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, 0i << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 45265u, global0.x, u_input.a.x), vec4<u32>(u_input.a.x, global0.x, u_input.a.x, 46774u)) % 32u))));
    let var_4 = var_1.xx;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 28>();
    var var_0 = vec2<f32>(global1[_wgslsmith_index_u32(~u_input.a.x, 28u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(2986u, 28u)] + global1[_wgslsmith_index_u32(4294967295u, 28u)])) * -626f))));
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(67281u ^ func_1(_wgslsmith_f_op_f32(max(var_0.x, -706f)), abs(3130i)), 4294967295u), 28u)]);
    global1 = array<f32, 28>();
    var var_3 = 24231i ^ firstTrailingBit(~(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f))), countOneBits(u_input.a.x), _wgslsmith_sub_i32(~max(min(-1i, -2147483647i), _wgslsmith_add_i32(-51846i, -11440i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-59279i, -16500i), _wgslsmith_mod_vec2_i32(-vec2<i32>(-564i, 14029i), _wgslsmith_sub_vec2_i32(vec2<i32>(14276i, 70769i), vec2<i32>(2147483647i, 2147483647i))))), ~global0.yzx, (~reverseBits(vec2<u32>(119147u, 1u)) << (abs(abs(global0.yy)) % vec2<u32>(32u))) >> (~select(u_input.a, ~global0.zy, vec2<bool>(true, true)) % vec2<u32>(32u)));
}

