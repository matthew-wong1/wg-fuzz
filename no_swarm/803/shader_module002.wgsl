struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(2147483647i), Struct_1(-1i), Struct_1(1i), Struct_1(34727i), Struct_1(1i), Struct_1(-1i), Struct_1(53217i), Struct_1(-1i), Struct_1(-27982i), Struct_1(9928i), Struct_1(11389i), Struct_1(-15621i), Struct_1(1i), Struct_1(-1i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(10928i), Struct_1(-21773i), Struct_1(-4462i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(-37992i), Struct_1(-4156i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(1i));

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(45085i), Struct_1(-18247i), Struct_1(40130i), Struct_1(-26625i), Struct_1(i32(-2147483648)), Struct_1(-8304i), Struct_1(2842i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(0i), Struct_1(-39538i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(-8384i), Struct_1(i32(-2147483648)), Struct_1(-1282i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(1i), Struct_1(18962i), Struct_1(77069i), Struct_1(i32(-2147483648)), Struct_1(0i));

var<private> global3: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 41816u, 55562u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(41805u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1658u, 15910u, 60576u), vec4<u32>(0u, 6980u, 0u, 4294967295u), vec4<u32>(31770u, 0u, 50699u, 28507u), vec4<u32>(0u, 16720u, 0u, 0u), vec4<u32>(0u, 1u, 1u, 75759u), vec4<u32>(6298u, 8210u, 41694u, 0u));

var<private> global4: vec2<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> u32 {
    global3 = array<vec4<u32>, 10>();
    global2 = array<Struct_1, 23>();
    return u_input.c;
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-283f * -1029f) - _wgslsmith_f_op_f32(max(-1726f, 1026f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(276f - -320f) * -155f))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(698f - 1000f)), _wgslsmith_f_op_f32(578f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 583f), -311f, true))), global4.x != max(-2147483647i, _wgslsmith_add_i32(global4.x, -55249i)))));
    var var_1 = vec3<f32>(-1587f, var_0, var_0);
    var var_2 = firstTrailingBit(~global4.x);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(var_0, 455f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(274f))), var_1.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1000f, -287f) - vec3<f32>(var_1.x, var_1.x, -1400f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(1115f, var_1.x, -124f)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(102f, 583f, 493f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 1193f, -144f), vec3<f32>(var_0, var_1.x, var_1.x))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-208f - -1357f), var_0))));
    global0 = array<Struct_1, 26>();
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(104357u, select(15653u, 4294967295u, true), 8704u, 10956u >> (u_input.c % 32u))), vec4<u32>(u_input.c, ~4901u, ~u_input.c, 0u));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_add_i32(global4.x, -21304i << ((~(u_input.c & u_input.c) << (u_input.c % 32u)) % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_2 = global0[_wgslsmith_index_u32(func_3(global0[_wgslsmith_index_u32(916u >> (0u % 32u), 26u)]), 26u)];
    let var_3 = _wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(select(vec3<i32>(arg_2, 2147483647i, -44090i) << (vec3<u32>(u_input.c, 96315u, 746u) % vec3<u32>(32u)), -vec3<i32>(1i, var_2.a, var_2.a), !vec3<bool>(true, arg_0, true)), vec3<i32>(-global1.x, -13729i, arg_2)), vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_add_i32(arg_1.a, arg_2), var_2.a << (u_input.c % 32u), 0i));
    return Struct_1(u_input.b.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1000f)));
    global3 = array<vec4<u32>, 10>();
    let var_1 = !(!arg_0.x);
    var var_2 = !vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(856f - var_0))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - var_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -483f))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-532f, 1989f)), any(!vec2<bool>(var_1, arg_0.x)), arg_0.x);
    let var_3 = -_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(reverseBits(-12860i), _wgslsmith_mod_i32(0i, -16268i), ~arg_1.a)), min(-vec3<i32>(-11713i, 1i, u_input.b.x) | vec3<i32>(-2147483647i, -8771i, u_input.b.x), vec3<i32>(~arg_3.a, -1i, -global1.x)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(u_input.c ^ _wgslsmith_dot_vec2_u32(vec2<u32>(42049u, 68790u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 59680u))), 10u)], ~global3[_wgslsmith_index_u32(14432u, 10u)]);
    var var_1 = global1.x;
    let var_2 = min(global1.x, u_input.b.x);
    var var_3 = 0i;
    global3 = array<vec4<u32>, 10>();
    var_0 = global3[_wgslsmith_index_u32(21168u, 10u)] ^ firstTrailingBit(global3[_wgslsmith_index_u32(reverseBits(~u_input.c | ~0u), 10u)]);
    let var_4 = i32(-1i) * -(~min(firstLeadingBit(var_2), abs(41627i)));
    let x = u_input.a;
    s_output = StorageBuffer(28491u, reverseBits(vec4<i32>(~(~var_2), func_4(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), global2[_wgslsmith_index_u32(func_1(vec2<bool>(false, true), global0[_wgslsmith_index_u32(u_input.c, 26u)], -1778f, global0[_wgslsmith_index_u32(4294967295u, 26u)]), 23u)], vec3<bool>(true, true, true), func_2(false, global0[_wgslsmith_index_u32(12313u, 26u)], global1.x)), -var_2, global1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f + -1745f) - _wgslsmith_f_op_f32(round(-714f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(432f, 1744f))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -193f) - vec2<f32>(1522f, 915f)), vec2<f32>(271f, -1479f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(758f, -146f), vec2<f32>(-196f, 281f))))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1558f))), -369f)), -233f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1147f, _wgslsmith_f_op_f32(min(1200f, -1212f)))), -938f)), _wgslsmith_f_op_f32(f32(-1f) * -446f)));
}

