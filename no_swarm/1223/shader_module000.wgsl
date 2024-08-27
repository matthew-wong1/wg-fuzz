struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(-88408i, vec3<bool>(false, true, true), 676f, 4294967295u), Struct_2(26000i, vec3<bool>(true, true, false), 1450f, 0u), Struct_2(31975i, vec3<bool>(true, true, false), 854f, 1u), Struct_2(1i, vec3<bool>(true, false, false), -1340f, 4294967295u));

var<private> global1: f32 = 2708f;

var<private> global2: array<f32, 15>;

var<private> global3: array<bool, 12>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = -(~(-(vec4<i32>(u_input.a, u_input.a, arg_0.d.x, arg_0.b.x) << (vec4<u32>(10193u, 4294967295u, 2912u, 26733u) % vec4<u32>(32u)))) ^ vec4<i32>(firstLeadingBit(2147483647i), u_input.a, -2147483647i, -arg_0.b.x ^ ~arg_0.d.x));
    global1 = _wgslsmith_div_f32(802f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(350f + global2[_wgslsmith_index_u32(~1u, 15u)])))));
    var var_1 = !(false && !select(all(vec3<bool>(true, true, false)), true, global3[_wgslsmith_index_u32(firstTrailingBit(51943u), 12u)]));
    var_1 = !((1708f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)) - global2[_wgslsmith_index_u32(1u, 15u)])) == false);
    let var_2 = min(4657u, 84217u);
    return _wgslsmith_mod_u32(~359u, var_2);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    let var_0 = vec3<u32>(~(4294967295u | func_2(arg_1)), ~1u, ~(~9583u)) << (abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, abs(28880u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 52592u), vec2<u32>(35279u, 21050u)), abs(0u), _wgslsmith_div_u32(0u, 84220u)))) % vec3<u32>(32u));
    global0 = array<Struct_2, 4>();
    let var_1 = arg_1.e;
    global2 = array<f32, 15>();
    let var_2 = _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(u_input.a, ~(-16667i) << (_wgslsmith_mod_u32(var_0.x, 4294967295u) % 32u), _wgslsmith_sub_i32(-22146i, arg_1.b.x) ^ abs(-2147483647i), u_input.a)), ~vec4<i32>(arg_1.b.x, 0i, u_input.a, max(-20111i, firstLeadingBit(49434i))));
    return _wgslsmith_sub_u32(1u, var_0.x) != 0u;
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> bool {
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(3044f, _wgslsmith_f_op_f32(-arg_0), true))))));
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(func_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(arg_1.x, 15u)], -174f), vec2<f32>(global2[_wgslsmith_index_u32(29613u, 15u)], arg_0)), vec3<i32>(u_input.a, 20927i, -39749i) & vec3<i32>(2147483647i, u_input.a, -10623i), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(33003u, 15u)], 2112f)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2622i, -39729i, 0i), vec3<i32>(u_input.a, -2147483647i, 0i)), false)), max(69924u, firstLeadingBit(35456u)), 56717u, arg_1.x), _wgslsmith_add_vec4_u32(countOneBits(~(vec4<u32>(arg_1.x, arg_1.x, 43555u, arg_1.x) >> (vec4<u32>(44986u, arg_1.x, 1u, arg_1.x) % vec4<u32>(32u)))), ~vec4<u32>(~arg_1.x, ~arg_1.x, 0u, 0u))), 12u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + arg_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 15u)], -517f, global2[_wgslsmith_index_u32(arg_1.x, 15u)]))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1511f, -134f, var_1)))))));
    var var_3 = ~_wgslsmith_dot_vec4_u32(firstTrailingBit(select(vec4<u32>(4294967295u, 81188u, arg_1.x, arg_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.x, 30654u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 40245u, arg_1.x)), select(vec4<bool>(global3[_wgslsmith_index_u32(13370u, 12u)], false, global3[_wgslsmith_index_u32(18158u, 12u)], true), vec4<bool>(global3[_wgslsmith_index_u32(32044u, 12u)], true, global3[_wgslsmith_index_u32(43700u, 12u)], global3[_wgslsmith_index_u32(arg_1.x, 12u)]), vec4<bool>(global3[_wgslsmith_index_u32(arg_1.x, 12u)], false, global3[_wgslsmith_index_u32(arg_1.x, 12u)], global3[_wgslsmith_index_u32(arg_1.x, 12u)])))), ~vec4<u32>(64762u, 1u, arg_1.x, arg_1.x) | _wgslsmith_clamp_vec4_u32(select(vec4<u32>(59865u, 4753u, arg_1.x, 2565u), vec4<u32>(arg_1.x, arg_1.x, 54825u, arg_1.x), false), ~vec4<u32>(4294967295u, arg_1.x, arg_1.x, 0u), max(vec4<u32>(42548u, arg_1.x, 32598u, 85092u), vec4<u32>(arg_1.x, 6854u, arg_1.x, arg_1.x))));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    global3 = array<bool, 12>();
    global2 = array<f32, 15>();
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-311f * 285f), arg_2)), vec2<f32>(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(23429u, 4294967295u), 15u)], arg_1)), -(arg_3 << (reverseBits(firstLeadingBit(vec3<u32>(0u, 1u, 1239u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-1353f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 15u)], -964f))))), arg_3, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)), 12u)]);
    var var_1 = 6641u;
    let var_2 = Struct_2(0i, !vec3<bool>(true, true, var_0.e), arg_2, ~(~1u));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_div_vec3_i32(var_0.d, vec3<i32>(u_input.a, -min(var_0.d.x, 2617i), ~arg_3.x)), _wgslsmith_f_op_f32(-var_0.c), vec3<i32>(-u_input.a, i32(-1i) * -_wgslsmith_dot_vec3_i32(arg_3, vec3<i32>(u_input.a, 35195i, var_0.d.x)), ~1i), global3[_wgslsmith_index_u32(var_2.d, 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(1i, -31182i) & (vec2<i32>(-1i) * -(countOneBits(vec2<i32>(2147483647i, u_input.a)) ^ firstTrailingBit(vec2<i32>(2147483647i, u_input.a))));
    global2 = array<f32, 15>();
    global3 = array<bool, 12>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), select(!vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 12u)], true), select(vec3<bool>(false, global3[_wgslsmith_index_u32(50536u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(global3[_wgslsmith_index_u32(0u, 12u)], true, global3[_wgslsmith_index_u32(41058u, 12u)]), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(92054u, 12u)])), !vec3<bool>(global3[_wgslsmith_index_u32(142902u, 12u)], global3[_wgslsmith_index_u32(33886u, 12u)], true))), ~(~(~vec3<u32>(2766u, 105898u, 43439u)))), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), min(~vec3<u32>(1u, 4294967295u, 0u), ~vec3<u32>(33481u, 53123u, 26410u)))), 4u)];
    let var_2 = func_4(vec3<bool>(all(vec2<bool>(false, func_1(vec2<f32>(global2[_wgslsmith_index_u32(0u, 15u)], 1052f), Struct_1(vec2<f32>(1000f, var_1.c), vec3<i32>(var_1.a, u_input.a, -16517i), 147f, vec3<i32>(u_input.a, -26541i, var_1.a), var_1.b.x)))), false, false && !func_3(var_1.c, vec3<u32>(1u, 48896u, var_1.d))), 716f, _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(~var_1.d, select(0u, var_1.d, false)), ~countOneBits(11008u)), 15u)])), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a, 0i, var_0.x), vec3<i32>(-1i, 1i, u_input.a), vec3<i32>(var_0.x, var_0.x, ~(-2147483647i)) & ~abs(vec3<i32>(-2147483647i, 1i, var_0.x))));
    let var_3 = global0[_wgslsmith_index_u32(64117u, 4u)];
    let var_4 = select(abs(~max(vec2<u32>(var_1.d, 4294967295u), vec2<u32>(1u, var_3.d))), ~(~vec2<u32>(var_3.d, var_1.d) | _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.d, var_3.d), vec2<u32>(0u, 1u))), !select(vec2<bool>(true, true), vec2<bool>(true, global3[_wgslsmith_index_u32(41184u, 12u)]), true)) | ~firstTrailingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.d, 26887u), vec2<u32>(var_3.d, 1u)), vec2<u32>(var_3.d, var_3.d) ^ vec2<u32>(0u, 13027u), vec2<u32>(60798u, 4294967295u)));
    let var_5 = abs(-(i32(-1i) * -var_1.a)) ^ 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_3.c, -446f, true))))), ~var_2.d);
}

