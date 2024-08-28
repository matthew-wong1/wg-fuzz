struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(14054u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 1u, 1u, 33524u), vec4<u32>(3778u, 81499u, 4294967295u, 66837u), vec4<u32>(14829u, 1u, 4155u, 1866u), vec4<u32>(0u, 1u, 1u, 23062u), vec4<u32>(29052u, 4294967295u, 53891u, 35730u), vec4<u32>(15921u, 41390u, 14494u, 60829u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(164318u, 1u, 64099u, 4863u), vec4<u32>(19544u, 20147u, 56904u, 0u), vec4<u32>(32911u, 39377u, 1u, 17659u), vec4<u32>(26467u, 10172u, 4294967295u, 10774u), vec4<u32>(0u, 4294967295u, 6144u, 38611u), vec4<u32>(23691u, 4294967295u, 0u, 1u), vec4<u32>(0u, 49773u, 15226u, 84113u), vec4<u32>(37975u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 78987u, 6500u, 23920u), vec4<u32>(1u, 16530u, 1u, 0u), vec4<u32>(17734u, 2314u, 73474u, 33696u), vec4<u32>(1u, 65933u, 3230u, 5533u), vec4<u32>(79910u, 1u, 4294967295u, 0u), vec4<u32>(26935u, 64505u, 80157u, 61154u), vec4<u32>(0u, 38749u, 51596u, 1u), vec4<u32>(70078u, 4294967295u, 0u, 0u), vec4<u32>(28605u, 2084u, 1u, 62388u), vec4<u32>(4270u, 4294967295u, 53316u, 0u), vec4<u32>(20073u, 4294967295u, 31387u, 0u), vec4<u32>(2474u, 1u, 711u, 43472u), vec4<u32>(38206u, 1u, 1303u, 0u), vec4<u32>(4294967295u, 68335u, 4294967295u, 1u), vec4<u32>(7044u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 13079u, 1727u));

var<private> global1: array<f32, 31>;

var<private> global2: array<u32, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-605f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 31u)], arg_0.b.x), vec3<f32>(arg_0.b.x, -1231f, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(892f, -536f, 1062f) + vec3<f32>(arg_0.b.x, 472f, 1304f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -974f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1015f, arg_1.x, -243f), vec3<f32>(arg_0.b.x, arg_1.x, 1287f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(179f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 31u)], arg_1.x) - vec3<f32>(arg_0.b.x, arg_1.x, global1[_wgslsmith_index_u32(u_input.b, 31u)])))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1725f), _wgslsmith_f_op_f32(1022f + arg_1.x), arg_1.x))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(683f)), _wgslsmith_div_f32(-362f, _wgslsmith_f_op_f32(arg_1.x * -1235f)))));
    var var_1 = arg_0;
    global1 = array<f32, 31>();
    let var_2 = Struct_4(Struct_3(arg_0.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x * 1730f), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    let var_3 = max(_wgslsmith_dot_vec2_i32(u_input.a.xy, _wgslsmith_sub_vec2_i32(u_input.a.yx, vec2<i32>(9991i & u_input.a.x, 1i))), ~(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-20371i, -2147483647i, u_input.a.x, -22380i), vec4<i32>(u_input.a.x, u_input.a.x, 665i, 1i))));
    return i32(-1i) * -51681i;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(751f, 1141f), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], -502f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(arg_1.x, 31u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 31u)]))), func_3(Struct_3(Struct_1(vec4<bool>(arg_2.x, arg_2.x, true, true)), vec2<f32>(250f, -968f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(0u, 31u)], -108f), vec2<f32>(736f, 315f), arg_2.x))) >= arg_0.x))));
    global2 = array<u32, 19>();
    let var_1 = !(min(19708i, ~(-1i)) != u_input.a.x);
    let var_2 = arg_2;
    global1 = array<f32, 31>();
    return Struct_1(select(vec4<bool>(var_2.x && arg_2.x, !var_2.x, !any(var_2.zww), var_2.x), select(arg_2, vec4<bool>(true, 753f != global1[_wgslsmith_index_u32(arg_1.x, 31u)], true, var_2.x), vec4<bool>(!var_1, all(vec3<bool>(true, true, var_2.x)), true, !var_1)), arg_2));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(select(u_input.a.x, u_input.a.x, false), arg_1 ^ u_input.a.x) >> (vec2<u32>(~4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 19u)] & 17764u, 19u)]) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, i32(-1i) * -2147483647i), select(-vec2<i32>(u_input.a.x, u_input.a.x), select(vec2<i32>(-12386i, arg_1), u_input.a.yz, arg_0.a.zz), select(arg_0.a.zx, vec2<bool>(arg_0.a.x, arg_2), false)), _wgslsmith_div_vec2_i32(~vec2<i32>(-1i, u_input.a.x), u_input.a.xy))), -_wgslsmith_mult_i32(-(14041i ^ arg_1), u_input.a.x));
    let var_1 = arg_1;
    global2 = array<u32, 19>();
    let var_2 = _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32((vec3<u32>(53645u, u_input.b, 12434u) & vec3<u32>(1u, 0u, u_input.c)) | vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, 0u) >> (vec3<u32>(u_input.c, 34092u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56279u, 19u)], 19u)]) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), vec3<u32>(19786u, u_input.b, 59674u)), vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 19u)], u_input.c, global2[_wgslsmith_index_u32(14276u, 19u)])), abs(abs(vec3<u32>(48012u, 4294967295u, global2[_wgslsmith_index_u32(u_input.b, 19u)])))), ~abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 8538u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4002u, 19u)], 19u)]), ~vec3<u32>(80298u, global2[_wgslsmith_index_u32(u_input.c, 19u)], 1u))), vec3<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(global2[_wgslsmith_index_u32(1402u, 19u)]), _wgslsmith_clamp_u32(1u, global2[_wgslsmith_index_u32(59021u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)])), 19u)], ~(~global2[_wgslsmith_index_u32(reverseBits(1u), 19u)]), ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.b, 19u)], 19u)]));
    var_0 = 0i;
    return Struct_3(func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, arg_1), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-2147483647i, var_1, var_1, arg_1)), -var_1), select(firstLeadingBit(vec4<i32>(var_1, arg_1, arg_1, arg_1)), vec4<i32>(arg_1, arg_1, arg_1, 1i), true)), _wgslsmith_add_vec3_u32(~abs(var_2), ~max(vec3<u32>(5103u, u_input.b, 4294967295u), var_2)), !vec4<bool>(true, true, true & arg_3, arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 19u)], 31u)]))))));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    global1 = array<f32, 31>();
    var var_0 = Struct_4(func_4(func_2(select(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 2147483647i), min(vec4<i32>(9090i, -10075i, 2147483647i, u_input.a.x), vec4<i32>(80359i, -2147483647i, u_input.a.x, u_input.a.x)), !vec4<bool>(arg_0.x, false, true, false)), _wgslsmith_mod_vec3_u32(~vec3<u32>(18462u, 25381u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 19u)], 19u)]), _wgslsmith_add_vec3_u32(vec3<u32>(16758u, u_input.c, 7819u), vec3<u32>(u_input.b, 10951u, 4423u))), select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, true, true), arg_0.x)), ~(-countOneBits(u_input.a.x)), global1[_wgslsmith_index_u32(~reverseBits(u_input.c), 31u)] > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -330f), -353f, arg_0.x)), false));
    return global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~13794u, 19u)], 19u)], 19u)], 32u)]) | vec4<u32>(~firstLeadingBit(global2[_wgslsmith_index_u32(u_input.b, 19u)]), func_1(vec3<bool>(true, true, true)), select(1u, _wgslsmith_sub_u32(u_input.b & 32856u, abs(u_input.c)), true), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(0u, 19u)], u_input.c), vec2<u32>(4294967295u, 0u)), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)] >> (u_input.c % 32u), u_input.b)));
    global2 = array<u32, 19>();
    let var_1 = Struct_2(true & all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))), ~(-reverseBits(u_input.a.x)), func_2(abs(vec4<i32>(i32(-1i) * -32864i, 5152i << (u_input.c % 32u), 1i, -6792i)), vec3<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(1u, 19u)] | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 19u)], 19u)], var_0.x & 4294967295u, 1u), ~(~var_0.x), 0u), select(vec4<bool>(select(false, true, false), true, true, true), !func_4(Struct_1(vec4<bool>(true, true, true, true)), u_input.a.x, true, false).a.a, u_input.b > 4294967295u)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~3748u, 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1117f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~1u, 31u)]));
    var var_2 = select(!var_1.c.a.zy, vec2<bool>(func_2((vec4<i32>(var_1.b, u_input.a.x, var_1.b, var_1.b) & vec4<i32>(var_1.b, -37845i, 23757i, -11163i)) << (vec4<u32>(global2[_wgslsmith_index_u32(0u, 19u)], u_input.c, u_input.c, 52628u) % vec4<u32>(32u)), vec3<u32>(4294967295u, func_1(var_1.c.a.yxw), 5911u), !vec4<bool>(var_1.c.a.x, false, false, true)).a.x, true), var_1.c.a.x);
    var var_3 = Struct_4(func_4(var_1.c, i32(-1i) * -min(33035i, u_input.a.x), false, false));
    global2 = array<u32, 19>();
    global1 = array<f32, 31>();
    global2 = array<u32, 19>();
    var var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(0u, u_input.b, var_0.zx, select(-u_input.a.yy, vec2<i32>(u_input.a.x, var_1.b), var_3.a.a.a.xz));
}

