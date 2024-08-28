struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 39920u, 1u, 1u);

var<private> global1: array<Struct_4, 29>;

var<private> global2: array<f32, 2>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, true), vec2<u32>(40065u, 4294967295u), 1i, vec2<i32>(0i, 15404i)), true);

var<private> global4: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    global1 = array<Struct_4, 29>();
    var var_0 = global1[_wgslsmith_index_u32(max(10799u, 23883u) | (global0.x | _wgslsmith_add_u32(~_wgslsmith_div_u32(global3.a.b.x, global3.a.b.x), global0.x)), 29u)];
    var var_1 = vec3<bool>(!any(vec2<bool>(global3.b, true)), global3.a.a.x, ~(-firstTrailingBit(u_input.b.x)) != _wgslsmith_div_i32(global3.a.d.x, global3.a.d.x));
    var var_2 = false;
    let var_3 = Struct_3(firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global0.x, var_0.b), reverseBits(vec4<u32>(global3.a.b.x, global3.a.b.x, 0u, var_0.b)))), vec4<i32>(1i, u_input.b.x, _wgslsmith_clamp_i32(-select(u_input.c.x, -47901i, var_0.a.x), abs(u_input.c.x), _wgslsmith_add_i32(-13176i, u_input.a)), -8365i), global0.yyx, -(~u_input.b << (~global0.xw % vec2<u32>(32u))), Struct_2(Struct_1(select(select(var_1.xy, arg_0.yz, arg_0.zx), select(var_0.a.xy, vec2<bool>(arg_0.x, true), var_1.x), var_1.yx), vec2<u32>(_wgslsmith_mod_u32(global0.x, 4294967295u), global3.a.b.x), -1i, global3.a.d), select(global3.b, -1415f > global2[_wgslsmith_index_u32(global3.a.b.x, 2u)], var_1.x)));
    return var_0.e.x;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_4) -> u32 {
    global3 = Struct_2(global3.a, func_3(!select(vec3<bool>(false, global3.b, global3.b), !arg_2.a, select(arg_0, global3.a.a.x, global3.a.a.x))));
    let var_0 = global3.a;
    let var_1 = var_0.a.x;
    var var_2 = global3.a.d.x;
    var var_3 = Struct_3(var_0.b.x, -(~(~vec4<i32>(u_input.c.x, 2916i, 14010i, -2147483647i) ^ ~vec4<i32>(var_0.c, global3.a.c, u_input.c.x, u_input.a))), vec3<u32>(886u, 24656u, ~_wgslsmith_mod_u32(abs(30439u), ~14021u)), _wgslsmith_mod_vec2_i32(abs(global3.a.d), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(global3.a.d.x, global3.a.d.x)), u_input.c.xx)), Struct_2(global3.a, ((i32(-1i) * -33016i) < ~var_0.d.x) || false));
    return ~global3.a.b.x;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    global0 = ~firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.yw, vec2<u32>(25459u, global0.x)), ~1u, ~21198u, _wgslsmith_dot_vec2_u32(arg_0.e.a.b, global3.a.b))) << (countOneBits(vec4<u32>(~(~1u), func_2(!arg_0.e.a.a.x, 0u, Struct_4(vec3<bool>(arg_0.e.a.a.x, false, true), global3.a.b.x, 113770u, vec3<bool>(global3.a.a.x, global3.b, arg_0.e.a.a.x), vec2<bool>(arg_0.e.b, true))), ~arg_0.c.x, ~(~arg_0.a))) % vec4<u32>(32u));
    var var_0 = arg_0.e;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(1u, 2u)])) + -481f) + global2[_wgslsmith_index_u32(26240u, 2u)]);
    global0 = firstLeadingBit(_wgslsmith_sub_vec4_u32(~(vec4<u32>(37320u, 0u, var_0.a.b.x, var_0.a.b.x) ^ vec4<u32>(arg_0.e.a.b.x, 1u, global0.x, 36310u)), ~(~abs(vec4<u32>(global3.a.b.x, 0u, global0.x, var_0.a.b.x)))));
    var var_2 = Struct_2(Struct_1(vec2<bool>(arg_0.c.x != countOneBits(global3.a.b.x), global2[_wgslsmith_index_u32(arg_0.a | 27241u, 2u)] != -457f), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global3.a.b.x, arg_0.e.a.b.x), 55127u), vec2<u32>(1u, global3.a.b.x)), countOneBits(firstLeadingBit(u_input.b.x)), u_input.b), func_3(!select(vec3<bool>(global3.b, arg_0.e.a.a.x, true), vec3<bool>(var_0.b, arg_0.e.b, arg_0.e.a.a.x), select(vec3<bool>(global3.b, false, false), vec3<bool>(global3.a.a.x, false, var_0.a.a.x), arg_0.e.b))));
    return Struct_3(1u, vec4<i32>(-1i) * -countOneBits(vec4<i32>(global3.a.c, -9395i, -72716i, 1i)), vec3<u32>(var_2.a.b.x, 1u, 46900u) | abs(select(vec3<u32>(var_0.a.b.x, 1u, var_2.a.b.x), vec3<u32>(0u, var_2.a.b.x, global3.a.b.x), global3.a.a.x)), -_wgslsmith_sub_vec2_i32(var_0.a.d, ~vec2<i32>(-12015i, -6470i) | -arg_0.b.xx), arg_0.e);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4) -> Struct_1 {
    var var_0 = global3.a.b.x;
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1477f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_2.b, 2u)] * global2[_wgslsmith_index_u32(1u, 2u)]))), -1314f), vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0.x, 19111u), 2u)], _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 2u)])))));
    var var_3 = Struct_3(4294967295u, reverseBits(select(firstLeadingBit(firstTrailingBit(arg_0.b)), -vec4<i32>(-27582i, -26766i, u_input.a, 0i), vec4<bool>(7051u > arg_2.b, global2[_wgslsmith_index_u32(arg_1.b.x, 2u)] < var_2.x, false, arg_2.e.x))), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_2.c, 30445u & arg_0.e.a.b.x, ~arg_2.c), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~global0.wwz, arg_0.c & global0.zwx), ~(~vec3<u32>(global3.a.b.x, 0u, 31146u)))), -firstLeadingBit(global3.a.d | u_input.c.zx) >> (firstLeadingBit(reverseBits(~arg_1.b)) % vec2<u32>(32u)), arg_0.e);
    global0 = countOneBits(~firstLeadingBit(~vec4<u32>(32754u, 0u, 108363u, 1u))) >> (countOneBits(firstLeadingBit(min(~vec4<u32>(0u, global0.x, global0.x, 12728u), vec4<u32>(arg_1.b.x, global0.x, 4294967295u, arg_2.c)))) % vec4<u32>(32u));
    return Struct_1(vec2<bool>(true, true), ~vec2<u32>(select(22664u, 1u, arg_0.e.a.a.x) | ~global3.a.b.x, 54633u), i32(-1i) * -u_input.c.x, (vec2<i32>(-2147483647i, 0i) & arg_1.d) >> (~vec2<u32>(~62792u, ~0u) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 2>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(global3.a.b.x), 4294967295u >> (global3.a.b.x % 32u), ~global0.x), vec3<u32>(global0.x, 1u, global0.x)), 2u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1460f)), global2[_wgslsmith_index_u32(0u, 2u)])) - -296f));
    global4 = any(vec3<bool>(false, global3.b | true, true));
    var var_1 = Struct_2(func_4(func_1(Struct_3(global3.a.b.x, ~vec4<i32>(global3.a.c, u_input.c.x, 2147483647i, 2147483647i), vec3<u32>(9822u, global0.x, global0.x), vec2<i32>(1i, 0i), Struct_2(Struct_1(global3.a.a, vec2<u32>(20627u, global3.a.b.x), u_input.a, vec2<i32>(35243i, -2147483647i)), global3.b))), func_1(func_1(func_1(Struct_3(4294967295u, vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.b.x), vec3<u32>(1u, global0.x, 66292u), u_input.b, Struct_2(global3.a, global3.a.a.x))))).e.a, global1[_wgslsmith_index_u32(4294967295u, 29u)]), !(!(true | (global2[_wgslsmith_index_u32(42706u, 2u)] >= -770f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(156f, -950f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, -444f))) + vec2<f32>(-824f, global2[_wgslsmith_index_u32(44699u, 2u)]))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1002f, global2[_wgslsmith_index_u32(24040u, 2u)]) * vec2<f32>(1114f, var_0.x))) * vec2<f32>(984f, -332f))));
    var var_2 = true;
    global2 = array<f32, 2>();
    var var_3 = Struct_3(109654u, _wgslsmith_sub_vec4_i32(firstLeadingBit(-vec4<i32>(var_1.a.d.x, -18875i, 1i, global3.a.c)), abs(~vec4<i32>(u_input.c.x, var_1.a.c, global3.a.c, -10245i))) | vec4<i32>(u_input.a, max(-2147483647i, -2147483647i), select(countOneBits(global3.a.c), u_input.b.x, var_1.b), firstTrailingBit(u_input.a)), ~(~(global0.yxx & global0.zyz)), global3.a.d, func_1(func_1(Struct_3(4294967295u, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 27193i, 25478i, 2147483647i), vec4<i32>(var_1.a.c, -1i, var_1.a.c, global3.a.d.x)), vec3<u32>(var_1.a.b.x, global3.a.b.x, global0.x), vec2<i32>(u_input.c.x, 0i), Struct_2(Struct_1(var_1.a.a, global3.a.b, u_input.c.x, global3.a.d), false)))).e);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3.b), _wgslsmith_f_op_f32(359f - global2[_wgslsmith_index_u32(abs(global0.x), 2u)]), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1340f)), -301f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(43596u, 2u)], var_0.x) * vec2<f32>(var_0.x, -338f))), vec2<f32>(-236f, _wgslsmith_f_op_f32(-243f - 2152f)))));
}

