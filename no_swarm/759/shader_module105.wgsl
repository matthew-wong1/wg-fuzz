struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(1u, 15860u), vec2<u32>(77711u, 4294967295u), vec2<u32>(11079u, 42817u), vec2<u32>(15415u, 27380u), vec2<u32>(90265u, 31165u), vec2<u32>(0u, 0u), vec2<u32>(0u, 34681u), vec2<u32>(1u, 1u), vec2<u32>(91669u, 17593u), vec2<u32>(0u, 14447u), vec2<u32>(54595u, 26898u), vec2<u32>(25880u, 4294967295u), vec2<u32>(32757u, 52731u), vec2<u32>(13292u, 20998u), vec2<u32>(1u, 0u), vec2<u32>(1u, 5810u), vec2<u32>(1u, 1u), vec2<u32>(30195u, 1u), vec2<u32>(14298u, 1u));

var<private> global2: array<u32, 25> = array<u32, 25>(42679u, 4294967295u, 20944u, 14226u, 5679u, 4294967295u, 20872u, 4294967295u, 0u, 4294967295u, 0u, 15365u, 76766u, 48621u, 0u, 4294967295u, 33948u, 0u, 23722u, 39561u, 1u, 80176u, 21527u, 71205u, 25903u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> f32 {
    var var_0 = global0.a;
    let var_1 = select(!(!arg_3.yy), vec2<bool>(true, arg_3.x), !arg_3.x);
    let var_2 = global0.a.b.x;
    var_0 = global0.a;
    global2 = array<u32, 25>();
    return -751f;
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.d))), 599f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(93120u, -586f, global0.a.c.x, vec3<bool>(false, false, false))), -1000f, select(false, false, false)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.d, global0.a.d, 2019f, global0.a.a), vec4<f32>(global0.a.a, -1000f, -1000f, global0.a.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, -700f, global0.a.a, global0.a.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.d, -578f, global0.a.d, global0.a.a) - vec4<f32>(global0.a.a, global0.a.a, global0.a.a, global0.a.d)))))));
    var var_1 = global0.a;
    var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * -274f))), ~vec3<i32>(~2147483647i, abs(i32(-1i) * -2147483647i), (var_1.b.x | -3136i) | reverseBits(global0.a.b.x)), global0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_1.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(670f))))));
    global2 = array<u32, 25>();
    global0 = Struct_4(Struct_2(global0.a.a, min(~global0.a.b, vec3<i32>(40395i, i32(-1i) * -31430i, _wgslsmith_sub_i32(global0.a.b.x, global0.a.b.x))), reverseBits(~global1[_wgslsmith_index_u32(global0.a.c.x, 19u)]), 283f));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, _wgslsmith_f_op_f32(f32(-1f) * -1521f), _wgslsmith_f_op_f32(-158f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.d)))))));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(~_wgslsmith_mult_u32(17708u, 17231u), _wgslsmith_f_op_f32(-arg_1.d.d), arg_1.c.x, select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, true), true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -761f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-318f, global0.a.d)))))) - -320f);
    global1 = array<vec2<u32>, 19>();
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.d) - _wgslsmith_div_f32(arg_1.e, -920f)), -164f), global0.a.d))));
    let var_1 = ~(~vec4<i32>(select(arg_1.d.b.x, _wgslsmith_mult_i32(global0.a.b.x, u_input.a.x), true || arg_0), u_input.a.x, 20190i, _wgslsmith_dot_vec2_i32(global0.a.b.zz, ~vec2<i32>(global0.a.b.x, 1i))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-202f, _wgslsmith_f_op_f32(func_2(9263u, 1108f, countOneBits(69752u), !vec3<bool>(false, false, arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1009f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2131f, global0.a.a, -1170f) * vec3<f32>(global0.a.d, 389f, global0.a.a)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.d.a, 317f, -222f)))))) * _wgslsmith_f_op_vec3_f32(func_3())));
    return !(!(!any(vec3<bool>(arg_0, arg_0, arg_0))) == true);
}

fn func_4(arg_0: vec3<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_mod_vec4_u32(max(_wgslsmith_mult_vec4_u32(~vec4<u32>(1020u, 4294967295u, global2[_wgslsmith_index_u32(59668u, 25u)], 1u), ~firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 25u)], 4294967295u, 4294967295u, global0.a.c.x))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0.a.c, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.c.x, 25u)], 25u)], 52641u)), abs(global2[_wgslsmith_index_u32(1u, 25u)])), 44663u, ~firstTrailingBit(1u), ~global0.a.c.x)), ~firstTrailingBit(vec4<u32>(1u, 31949u, 112u, 0u)));
    let var_1 = !arg_0.x;
    global0 = Struct_4(global0.a);
    let var_2 = ~countOneBits(vec2<u32>(_wgslsmith_add_u32(min(global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(1u, 25u)]), 1u), select(global0.a.c.x, var_0.x, arg_0.x) << (_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 0u) % 32u)));
    global1 = array<vec2<u32>, 19>();
    return vec4<i32>(24193i, ~2147483647i, select(-53543i, ~(u_input.a.x ^ global0.a.b.x), var_1), _wgslsmith_add_i32(~select(u_input.a.x, global0.a.b.x, var_1) >> (firstLeadingBit(abs(65840u)) % 32u), ~min(~(-55441i), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 25>();
    let var_0 = func_4(vec3<bool>(false, all(vec4<bool>(true, false, true, func_1(false, Struct_3(global0.a.c.x, global0.a.b.x, vec3<u32>(0u, 36436u, global0.a.c.x), global0.a, 1063f)))), select(true, any(vec2<bool>(true, false)) && any(vec2<bool>(false, false)), true)));
    let var_1 = false;
    let var_2 = Struct_1(reverseBits(abs(~(vec2<i32>(global0.a.b.x, -18649i) << (global1[_wgslsmith_index_u32(0u, 19u)] % vec2<u32>(32u))))), firstTrailingBit(38886u), countOneBits(_wgslsmith_add_u32(~32722u, (1u >> (global2[_wgslsmith_index_u32(1u, 25u)] % 32u)) ^ global2[_wgslsmith_index_u32(max(global0.a.c.x, global2[_wgslsmith_index_u32(4294967295u, 25u)]), 25u)])), ~reverseBits(~vec3<u32>(global2[_wgslsmith_index_u32(global0.a.c.x, 25u)], 1u, 4294967295u)), countOneBits(var_0));
    var var_3 = vec2<bool>(var_1, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.a.a, -1161f), _wgslsmith_f_op_f32(-363f + global0.a.a))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(198f)))))), min(_wgslsmith_dot_vec3_i32(-u_input.a.xyz, vec3<i32>(-1i) * -vec3<i32>(global0.a.b.x, global0.a.b.x, global0.a.b.x)), -_wgslsmith_mod_i32(1i, var_0.x) >> (0u % 32u)), ~_wgslsmith_dot_vec2_i32(select(vec2<i32>(14524i, var_2.a.x), vec2<i32>(14272i, u_input.a.x), vec2<bool>(false, var_1)) >> (select(global1[_wgslsmith_index_u32(1u, 19u)], var_2.d.xx, vec2<bool>(false, true)) % vec2<u32>(32u)), func_4(vec3<bool>(var_3.x, false, var_3.x)).yy));
}

