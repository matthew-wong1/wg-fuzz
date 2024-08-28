struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: Struct_2 = Struct_2(Struct_1(231f, 1i), vec2<u32>(38035u, 1u));

var<private> global2: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(33854i, 56700i, 41047i), vec3<i32>(-12225i, -37028i, 1007i), vec3<i32>(1i, -35886i, 1107i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(4894i, -18967i, -2985i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(33880i, 1i, 2147483647i), vec3<i32>(2147483647i, 1i, -32774i), vec3<i32>(33440i, 0i, -26479i), vec3<i32>(i32(-2147483648), -48264i, -58336i), vec3<i32>(1i, 0i, 41696i), vec3<i32>(52030i, -31478i, -1i), vec3<i32>(-25388i, 53005i, -4237i), vec3<i32>(-7025i, 81557i, i32(-2147483648)), vec3<i32>(-27142i, 0i, 31118i), vec3<i32>(-33088i, 35165i, -12045i), vec3<i32>(-10017i, -6922i, 1i), vec3<i32>(i32(-2147483648), -31429i, 0i), vec3<i32>(-41283i, 0i, 35711i), vec3<i32>(-1i, 5216i, -45971i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(41392i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), 15261i, 39960i), vec3<i32>(17205i, 19231i, -1705i), vec3<i32>(1745i, -34015i, -1i), vec3<i32>(0i, i32(-2147483648), 11095i), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<i32>(28723i, 11815i, i32(-2147483648)), vec3<i32>(18115i, i32(-2147483648), 107651i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(362f * arg_1.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.a), global1.a.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.a))))), reverseBits(_wgslsmith_sub_i32(-_wgslsmith_mult_i32(-10031i, global1.a.b), _wgslsmith_dot_vec4_i32(arg_0, ~vec4<i32>(-46920i, arg_0.x, global1.a.b, 0i)))));
    global0 = array<u32, 6>();
    let var_1 = select(!vec4<bool>(true, false, all(vec2<bool>(true, true)), true), vec4<bool>(true, any(vec2<bool>(true, true)), true, false), !(!(_wgslsmith_f_op_f32(1282f * var_0.a) == _wgslsmith_f_op_f32(-828f * -1270f))));
    return var_1;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> bool {
    global0 = array<u32, 6>();
    var var_0 = global1.a;
    global1 = Struct_2(global1.a, global1.b);
    var_0 = global1.a;
    var var_1 = 0u;
    return !func_2(~select(vec4<i32>(1986i, arg_0.a, -2147483647i, u_input.d.x), vec4<i32>(-24203i, u_input.d.x, 1i, 11057i), vec4<bool>(arg_1.x, true, false, false)), Struct_2(Struct_1(-122f, -2147483647i), countOneBits(vec2<u32>(u_input.c.x, global1.b.x)))).x && true;
}

fn func_1(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = Struct_4(u_input.d.x > global1.a.b, _wgslsmith_div_i32(u_input.d.x, _wgslsmith_mult_i32(0i, -_wgslsmith_mult_i32(global1.a.b, global1.a.b))), Struct_3(1i, ~0u), !any(vec2<bool>(arg_1, arg_1)), -58231i);
    let var_1 = Struct_2(Struct_1(global1.a.a, ~10530i), global1.b);
    var var_2 = vec4<bool>(select(var_0.a, false, arg_1), func_3(Struct_3(~(-11488i) ^ var_1.a.b, 10141u), select(vec4<bool>(true, true, true, true), select(func_2(vec4<i32>(1i, var_0.c.a, var_1.a.b, u_input.d.x), Struct_2(Struct_1(var_1.a.a, -2147483647i), global1.b)), !vec4<bool>(arg_1, var_0.d, true, var_0.a), vec4<bool>(var_0.a, false, true, false)), (-1i < global1.a.b) | any(vec3<bool>(true, true, true)))), var_0.d, false);
    let var_3 = -1032f;
    let var_4 = global2[_wgslsmith_index_u32(firstLeadingBit(1u) ^ ~_wgslsmith_dot_vec4_u32(~vec4<u32>(52946u, 77075u, 1u, global1.b.x) | select(vec4<u32>(var_1.b.x, 1u, 12952u, var_0.c.b), vec4<u32>(1u, var_1.b.x, 26874u, var_1.b.x), vec4<bool>(true, arg_1, arg_1, false)), ~firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], u_input.a, var_1.b.x, 0u))), 29u)];
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_clamp_i32(-26086i, u_input.d.x, max(reverseBits(1i), _wgslsmith_dot_vec2_i32(u_input.d.zz >> (global1.b % vec2<u32>(32u)), vec2<i32>(0i, 0i)))), max(u_input.c.x << (4294967295u % 32u), 1u));
    global2 = array<vec3<i32>, 29>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) - global1.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -990f), 154f, !arg_1))))), global1.a.a, global1.a.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(872f, -1123f)))), (-u_input.d.x & (_wgslsmith_add_i32(u_input.d.x, u_input.b.x) ^ -6236i)) | ~(~(global1.a.b | -2147483647i)));
    var var_3 = !(!(!select(arg_0.zww, arg_0.xxw, 83431u < var_0.b)));
    return Struct_2(Struct_1(var_2.a, _wgslsmith_mult_i32(var_2.b, var_0.a ^ _wgslsmith_div_i32(13847i, var_0.a))), (~(~global1.b) << (~u_input.c.xy % vec2<u32>(32u))) << (~global1.b % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(vec4<bool>(true && (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, global1.a.b), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7677u, 6u)], 6u)], 6u)], 29u)]) != -2147483647i), true, func_1(~4294967295u, (1u | global0[_wgslsmith_index_u32(u_input.a, 6u)]) <= abs(global1.b.x)), true), _wgslsmith_dot_vec2_i32(vec2<i32>(max(-1i, u_input.d.x), _wgslsmith_add_i32(-65810i, global1.a.b)), abs(u_input.d.xz)) > u_input.b.x);
    let var_0 = ~(~min(_wgslsmith_mod_vec4_u32(~vec4<u32>(56292u, global0[_wgslsmith_index_u32(u_input.c.x, 6u)], u_input.c.x, global0[_wgslsmith_index_u32(9579u, 6u)]), ~vec4<u32>(8928u, u_input.c.x, 0u, 1u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, global1.b.x, 4294967295u, 12316u), firstLeadingBit(vec4<u32>(global1.b.x, u_input.c.x, u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 6u)])))));
    let var_1 = !func_2(firstLeadingBit(vec4<i32>(u_input.b.x, 0i, _wgslsmith_clamp_i32(u_input.b.x, 0i, -1i), u_input.d.x)), Struct_2(global1.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(22172u, 6u)], 47561u), vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(0u, 6u)])))).zw;
    var var_2 = u_input.b.x << (max(max(13788u, 1u), 0u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.a, _wgslsmith_f_op_f32(968f - 414f))), global1.a.a));
}

