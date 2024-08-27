struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(0u, vec2<u32>(6198u, 24038u)), Struct_3(0u, vec2<u32>(42285u, 52355u)), Struct_3(0u, vec2<u32>(0u, 22908u)), Struct_3(1u, vec2<u32>(28602u, 74420u)), Struct_3(0u, vec2<u32>(1u, 9144u)), Struct_3(29769u, vec2<u32>(25055u, 30502u)), Struct_3(52100u, vec2<u32>(91142u, 1u)), Struct_3(1u, vec2<u32>(4294967295u, 4294967295u)), Struct_3(62369u, vec2<u32>(54310u, 4294967295u)), Struct_3(1044u, vec2<u32>(0u, 0u)), Struct_3(1u, vec2<u32>(0u, 37314u)), Struct_3(4294967295u, vec2<u32>(0u, 49977u)), Struct_3(14635u, vec2<u32>(0u, 0u)), Struct_3(31544u, vec2<u32>(66156u, 29722u)), Struct_3(1u, vec2<u32>(36631u, 1u)), Struct_3(4294967295u, vec2<u32>(0u, 0u)), Struct_3(100110u, vec2<u32>(25381u, 4294967295u)), Struct_3(0u, vec2<u32>(0u, 1u)), Struct_3(71749u, vec2<u32>(0u, 1u)), Struct_3(15561u, vec2<u32>(4294967295u, 4294967295u)), Struct_3(49273u, vec2<u32>(0u, 1u)), Struct_3(17275u, vec2<u32>(92988u, 4294967295u)), Struct_3(0u, vec2<u32>(4294967295u, 0u)), Struct_3(0u, vec2<u32>(4294967295u, 40030u)), Struct_3(6227u, vec2<u32>(72016u, 20845u)), Struct_3(4294967295u, vec2<u32>(47819u, 4294967295u)), Struct_3(0u, vec2<u32>(1u, 1u)), Struct_3(36243u, vec2<u32>(55883u, 4294967295u)), Struct_3(55586u, vec2<u32>(4294967295u, 1u)));

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(649f, vec2<bool>(true, true), 352f, vec3<f32>(-351f, 2176f, -594f), -11338i);

var<private> global3: array<vec4<u32>, 9>;

var<private> global4: array<Struct_1, 28>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    global0 = array<Struct_3, 29>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 29u)];
    var var_1 = _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(10729u, 66713u, arg_0.a, arg_0.b.x), vec4<u32>(20158u, var_0.a, var_0.b.x, 1u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(13224u, var_0.b.x, 25502u, 4294967295u), vec4<u32>(0u, 52435u, 46523u, 6285u)))), firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~global3[_wgslsmith_index_u32(16144u, 9u)], reverseBits(global3[_wgslsmith_index_u32(15936u, 9u)])) << (1u % 32u), 9u)]));
    var var_2 = vec2<i32>(-1i, _wgslsmith_mult_i32(global1.c, _wgslsmith_mod_i32(_wgslsmith_mod_i32(2140i, -1i), _wgslsmith_sub_i32(u_input.b, 0i)) | (u_input.a ^ countOneBits(u_input.a))));
    var var_3 = Struct_2(-938f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(678f, global1.b.c)) - global1.a)), !select(select(vec2<bool>(global1.d, global1.e.b.x), vec2<bool>(global2.b.x, false), false), !global2.b, vec2<bool>(true, global2.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)))), global2.d, max(u_input.a, firstLeadingBit(var_2.x))), u_input.a, -max(-var_2.x, global2.e) != (_wgslsmith_clamp_i32(i32(-1i) * -1i, select(-2147483647i, 1i, false), _wgslsmith_mod_i32(global2.e, var_2.x)) | global2.e), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.c)), -170f)), vec2<bool>(true, true), global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.d + global2.d)), global2.e));
    return !vec3<bool>(!(!(var_0.a < 41692u)), var_0.b.x < 4294967295u, !any(vec2<bool>(var_3.e.b.x, var_3.b.b.x)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_3) -> i32 {
    let var_0 = arg_1;
    var var_1 = all(func_3(Struct_3(_wgslsmith_mod_u32(50247u, arg_0.a), _wgslsmith_clamp_vec2_u32(arg_2.b, _wgslsmith_add_vec2_u32(arg_2.b, arg_0.b), reverseBits(vec2<u32>(arg_2.a, arg_2.a))))));
    global4 = array<Struct_1, 28>();
    let var_2 = min(abs(vec3<i32>(1i, select(abs(-1i), reverseBits(-39681i), false), 10732i)), vec3<i32>(~global2.e, -2163i, global1.e.e) >> (vec3<u32>(_wgslsmith_div_u32(50856u, 22690u) & arg_2.b.x, _wgslsmith_mult_u32(~arg_2.b.x, arg_0.a), arg_2.b.x) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global2.c)))), 926f, -863f)));
    return select(2147483647i, min(_wgslsmith_sub_i32(i32(-1i) * -56702i, max(~global2.e, u_input.a)), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, global1.e.e) << (_wgslsmith_sub_vec2_u32(arg_2.b, arg_0.b) % vec2<u32>(32u)), vec2<i32>(2147483647i & global2.e, global2.e))), global1.e.e <= global1.b.e);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: bool) -> Struct_3 {
    global0 = array<Struct_3, 29>();
    global4 = array<Struct_1, 28>();
    var var_0 = vec2<u32>(1u, ~select(_wgslsmith_sub_u32(~0u, 0u), 15576u << (1u % 32u), true));
    var var_1 = global1.b;
    return Struct_3(4294967295u, ~select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.x, 33102u), min(vec2<u32>(var_0.x, 1u), vec2<u32>(126085u, 1457u)), vec2<u32>(var_0.x, var_0.x)), abs(min(vec2<u32>(0u, var_0.x), vec2<u32>(57039u, 4294967295u))), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> vec2<i32> {
    global3 = array<vec4<u32>, 9>();
    global1 = Struct_2(global1.a, arg_1.b, -12355i, false, arg_1.b);
    var var_0 = func_4(arg_1, global1.e.d.x, (vec4<i32>(global1.e.e, max(global1.b.e, arg_1.e.e), func_2(global0[_wgslsmith_index_u32(12448u, 29u)], vec3<bool>(global2.b.x, false, false), global0[_wgslsmith_index_u32(31444u, 29u)]), arg_1.c) | _wgslsmith_div_vec4_i32(~vec4<i32>(21017i, -1i, 1i, -24248i), vec4<i32>(u_input.c, -27131i, u_input.c, -8774i) ^ vec4<i32>(11315i, 1i, 2147483647i, -5750i))) ^ ~firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-51405i, 1i, u_input.c, 43034i), vec4<i32>(arg_1.b.e, u_input.c, 17239i, u_input.c))), global1.b.b.x);
    var var_1 = vec3<i32>(~(~_wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(-2147483647i, 1i))), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(min(global2.e, arg_1.c), i32(-1i) * -1i)), _wgslsmith_div_vec2_i32(reverseBits(~vec2<i32>(-1i, u_input.a)), abs(_wgslsmith_div_vec2_i32(vec2<i32>(global2.e, arg_1.c), vec2<i32>(-26625i, 24022i))))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-12618i, global1.b.e, u_input.b)), ~vec3<i32>(-2147483647i, u_input.c, global1.b.e)), -firstLeadingBit(vec3<i32>(-20734i, 49120i, 2147483647i)) & _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.b, -77061i), vec3<i32>(-54732i, global2.e, arg_1.b.e)), abs(vec3<i32>(arg_1.e.e, -1i, -2147483647i)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(global2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e.d.x, 546f, -382f) - arg_1.b.d) * _wgslsmith_f_op_vec3_f32(-global2.d)))));
    return var_1.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(func_1(~(~vec2<u32>(0u, 39710u)), Struct_2(global1.b.d.x, global1.e, abs(4878i), false, Struct_1(-1413f, vec2<bool>(global2.b.x, false), -396f, global1.e.d, global2.e))) & (vec2<i32>(global1.c, i32(-1i) * -3406i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    var var_1 = ~global3[_wgslsmith_index_u32(min(1u, ~(~0u)), 9u)] << (global3[_wgslsmith_index_u32(1u, 9u)] % vec4<u32>(32u));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global2.c)), global2.c))) + global1.e.d.x), global1.b, ~_wgslsmith_add_i32(2147483647i, _wgslsmith_mod_i32(global2.e, i32(-1i) * -59165i)), global1.d, Struct_1(_wgslsmith_f_op_f32(sign(global2.c)), func_3(func_4(Struct_2(-1712f, Struct_1(558f, global2.b, global2.a, vec3<f32>(948f, -1000f, 1071f), -1i), u_input.b, global1.e.b.x, global4[_wgslsmith_index_u32(var_1.x, 28u)]), _wgslsmith_f_op_f32(770f - global2.c), ~vec4<i32>(1i, global1.b.e, u_input.b, var_0.x), -2147483647i >= var_0.x)).xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a)))), vec3<f32>(_wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(566f * 216f) + -614f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.e.d.x)) * _wgslsmith_f_op_f32(floor(2828f)))), global2.e));
    let var_3 = 3529u;
    let var_4 = any(select(select(!(!vec4<bool>(var_2.b.b.x, var_2.e.b.x, global1.d, global2.b.x)), !select(vec4<bool>(false, var_2.d, true, var_2.e.b.x), vec4<bool>(var_2.d, global1.b.b.x, true, true), true), select(!vec4<bool>(true, true, global1.b.b.x, global2.b.x), select(vec4<bool>(var_2.b.b.x, var_2.b.b.x, true, false), vec4<bool>(global2.b.x, global2.b.x, var_2.b.b.x, global2.b.x), false), var_1.x <= 0u)), vec4<bool>(global2.b.x, true, !global1.b.b.x, !global2.b.x), global2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_1.wyz, var_1.xy, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.d * vec3<f32>(-450f, var_2.a, global2.d.x)))))), firstLeadingBit(~(~4294967295u)));
}

