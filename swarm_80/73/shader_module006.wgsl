struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 55791i, vec2<bool>(false, false), -1050f, vec2<u32>(10485u, 96175u));

var<private> global1: array<vec3<f32>, 31>;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<i32, 24> = array<i32, 24>(23666i, 1i, -44125i, 38930i, 1i, -5794i, 0i, -2729i, i32(-2147483648), 58388i, i32(-2147483648), 303i, i32(-2147483648), 2147483647i, 2147483647i, 38701i, i32(-2147483648), -37143i, -1i, 2147483647i, 2147483647i, -71819i, 0i, 26819i);

var<private> global4: array<vec4<i32>, 14>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    global0 = Struct_1(_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_mod_u32(reverseBits(global0.e.x), 1065u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(5732u, global0.a), u_input.d)) >> (global0.e.x % 32u), global0.b, global0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(836f)))), u_input.c);
    var var_0 = ~u_input.a;
    var var_1 = min(~_wgslsmith_div_vec2_u32(global0.e, vec2<u32>(_wgslsmith_mod_u32(4294967295u, 62368u), 26490u & u_input.c.x)), vec2<u32>(~global0.e.x, min(19917u, ~(~13253u))));
    let var_2 = Struct_2(~_wgslsmith_sub_vec4_i32(vec4<i32>(abs(global0.b), 2147483647i >> (u_input.d.x % 32u), global3[_wgslsmith_index_u32(~1u, 24u)], global0.b ^ global0.b), global4[_wgslsmith_index_u32(4294967295u, 14u)]), arg_0, ~vec4<u32>(101594u, ~firstTrailingBit(81368u), firstLeadingBit(global0.a), reverseBits(_wgslsmith_mult_u32(1u, 43515u))), u_input.c.x);
    var var_3 = global0.d;
    return vec4<u32>(abs(~firstLeadingBit(~31298u)), min(44139u, 1u), ~var_2.d, _wgslsmith_sub_u32(0u, ~(~var_1.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(~0u, max(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, -42353i), ~vec2<i32>(-21384i, 1i)), -2147483647i), select(select(select(select(vec2<bool>(arg_1.x, true), arg_1.yx, arg_1.x), !global0.c, !arg_1.x), global0.c, !(!vec2<bool>(global0.c.x, arg_1.x))), global0.c, !(!vec2<bool>(arg_1.x, arg_1.x))), 1357f, ~vec2<u32>(_wgslsmith_div_u32(global0.a, 5580u), 4294967295u));
    global4 = array<vec4<i32>, 14>();
    var var_1 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_div_u32(_wgslsmith_mult_u32(select(u_input.d.x, u_input.c.x, arg_1.x), _wgslsmith_clamp_u32(106300u, 4294967295u, 1u)), 98349u)), 14u)], _wgslsmith_f_op_f32(117f * var_0.d), func_3(595f), global0.a);
    var var_2 = Struct_2(abs(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_0.b, global0.b, var_0.b), _wgslsmith_div_vec4_i32(global4[_wgslsmith_index_u32(var_1.d, 14u)], global4[_wgslsmith_index_u32(0u, 14u)])))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d - arg_0.x), -973f)), var_1.c, var_1.c.x);
    var var_3 = var_1.a;
    return Struct_2(firstLeadingBit(~vec4<i32>(-2147483647i, 1i, reverseBits(var_2.a.x), var_0.b ^ -8534i)), var_1.b, ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_2.c.x, u_input.c.x, u_input.b), vec4<u32>(var_0.e.x, global0.e.x, 10827u, var_1.d), ~vec4<u32>(var_2.c.x, 3141u, global0.e.x, 1u)), _wgslsmith_div_vec4_u32(var_2.c, ~var_2.c), vec4<u32>(global0.a, 0u, 1u, 19147u)), 1u);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = reverseBits(1u);
    global1 = array<vec3<f32>, 31>();
    var var_1 = select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, _wgslsmith_add_u32(arg_0.c.x, arg_0.c.x), u_input.a | arg_0.d) ^ abs(vec3<u32>(0u, global0.a, 0u)), ~min(~vec3<u32>(107085u, 23650u, 0u), arg_0.c.xxz)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(func_2(vec2<f32>(arg_0.b, arg_0.b), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)).c.xxy, vec3<u32>(1u, 3561u, arg_0.c.x)), _wgslsmith_mod_vec3_u32(firstLeadingBit(arg_0.c.xww), vec3<u32>(~23614u, arg_0.c.x, func_3(649f).x))), all(select(select(!vec4<bool>(false, global0.c.x, false, global0.c.x), vec4<bool>(true, true, true, true), arg_0.c.x <= u_input.a), select(!vec4<bool>(global0.c.x, global0.c.x, false, arg_1), select(vec4<bool>(false, false, false, true), vec4<bool>(arg_1, true, true, false), vec4<bool>(arg_1, global0.c.x, true, false)), vec4<bool>(true, arg_1, global0.c.x, arg_1)), vec4<bool>(true, !arg_1, false, true))));
    global1 = array<vec3<f32>, 31>();
    let var_2 = arg_0.a.wzy;
    return Struct_1(~(~max(~0u, var_1.x)), 37316i, select(select(vec2<bool>(global0.c.x, arg_1), vec2<bool>(arg_1, true), select(select(vec2<bool>(true, false), vec2<bool>(arg_1, false), false), select(vec2<bool>(arg_1, arg_1), global0.c, vec2<bool>(false, false)), all(global0.c))), select(!select(vec2<bool>(arg_1, true), vec2<bool>(global0.c.x, global0.c.x), global0.c.x), global0.c, global0.c.x), !select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), true)), _wgslsmith_f_op_f32(f32(-1f) * -209f), select(vec2<u32>(20715u, countOneBits(global0.a) << (_wgslsmith_div_u32(10354u, 51429u) % 32u)), vec2<u32>(min(u_input.b, ~arg_0.d), firstTrailingBit(abs(u_input.a))), global0.c.x));
}

fn func_1(arg_0: i32) -> i32 {
    global0 = func_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(247f, global0.d) * vec2<f32>(-330f, global0.d)))), select(!select(vec3<bool>(true, false, global0.c.x), vec3<bool>(false, global0.c.x, true), vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), vec3<bool>(false, global0.c.x, all(vec3<bool>(true, true, true))), vec3<bool>(all(global0.c), true, true))), all(!(!vec2<bool>(true, global0.c.x))));
    let var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.e.x, u_input.b, global0.e.x, 0u), vec4<u32>(6351u, 4294967295u, 13749u, global0.e.x)) >> ((vec4<u32>(61113u, 35352u, 4294967295u, u_input.a) & vec4<u32>(global0.a, 21586u, 1u, 0u)) % vec4<u32>(32u)), vec4<u32>(global0.a, 49345u, 0u, _wgslsmith_clamp_u32(4294967295u, u_input.b, 0u))), reverseBits(~36342i), select(func_4(Struct_2(vec4<i32>(1i, global0.b, -1i, global0.b), _wgslsmith_f_op_f32(f32(-1f) * -672f), vec4<u32>(u_input.b, global0.a, 35544u, u_input.d.x), 78187u), true).c, global0.c, true), _wgslsmith_f_op_f32(max(global0.d, _wgslsmith_f_op_f32(ceil(-1249f)))), _wgslsmith_sub_vec2_u32(firstTrailingBit(~(global0.e >> (vec2<u32>(53561u, u_input.c.x) % vec2<u32>(32u)))), _wgslsmith_mod_vec2_u32(u_input.d, _wgslsmith_div_vec2_u32(~u_input.d, ~vec2<u32>(u_input.d.x, global0.a)))));
    var var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~0u, 1u, 21464u) & 0u, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.x, global0.e.x, 13437u, 4294967295u), vec4<u32>(u_input.c.x, 4111u, var_0.e.x, u_input.c.x)), var_0.e.x)), global0.b, select(!select(select(vec2<bool>(false, false), var_0.c, global0.c), var_0.c, func_4(Struct_2(global4[_wgslsmith_index_u32(32766u, 14u)], global0.d, vec4<u32>(var_0.e.x, u_input.a, 0u, 9302u), 0u), var_0.c.x).c.x), vec2<bool>(any(!vec2<bool>(var_0.c.x, var_0.c.x)), true), any(select(!vec3<bool>(false, global0.c.x, true), vec3<bool>(global0.c.x, false, true), !vec3<bool>(true, false, global0.c.x)))), -965f, var_0.e);
    let var_2 = select(vec4<bool>(false, global0.c.x, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(709f, var_1.d)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1192f)))), vec4<bool>(func_4(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-951f, var_0.d)), !vec3<bool>(false, var_1.c.x, false)), !global0.c.x).c.x, var_1.c.x, func_4(func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.d, 2037f), vec2<f32>(global0.d, -969f))), select(vec3<bool>(false, true, false), vec3<bool>(global0.c.x, var_1.c.x, var_1.c.x), false)), var_0.c.x).c.x, all(select(select(vec3<bool>(true, var_0.c.x, global0.c.x), vec3<bool>(false, global0.c.x, true), var_0.c.x), select(vec3<bool>(global0.c.x, var_0.c.x, true), vec3<bool>(var_1.c.x, false, var_0.c.x), vec3<bool>(true, true, var_0.c.x)), any(global0.c)))), !(!vec4<bool>(!var_0.c.x, true, false, true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1463f), _wgslsmith_f_op_f32(ceil(806f)), 1053f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, -1000f, var_1.d) * vec3<f32>(-490f, 128f, var_0.d)))))))), any(!(!vec2<bool>(var_0.c.x, false)))));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(global0.c, !vec2<bool>(true, 58723u >= global0.e.x), true));
    let var_1 = true;
    global2 = func_1(-_wgslsmith_dot_vec4_i32(~(~vec4<i32>(global0.b, global0.b, global0.b, 0i)), ~abs(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], global0.b, 1i, global3[_wgslsmith_index_u32(0u, 24u)]))));
    var var_2 = !(!(!vec3<bool>(true, var_0, true)));
    let var_3 = vec4<f32>(130f, global0.d, 377f, _wgslsmith_f_op_f32(-global0.d));
    global3 = array<i32, 24>();
    var var_4 = !var_1;
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(~u_input.d.x, 14u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-478f)))), abs(vec2<i32>(-firstLeadingBit(global0.b), ~(global3[_wgslsmith_index_u32(1u, 24u)] >> (u_input.c.x % 32u)))));
}

