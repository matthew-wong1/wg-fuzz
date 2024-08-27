struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 22> = array<u32, 22>(25870u, 4294967295u, 4294967295u, 10687u, 1u, 4294967295u, 70033u, 69124u, 1432u, 28367u, 0u, 21397u, 80593u, 4294967295u, 27867u, 4294967295u, 58405u, 4294967295u, 8278u, 1u, 25501u, 21932u);

var<private> global2: Struct_1 = Struct_1(false, vec4<u32>(17049u, 26929u, 50219u, 10168u), vec4<f32>(404f, -179f, 585f, 2281f));

var<private> global3: vec3<i32> = vec3<i32>(0i, -1i, -12546i);

var<private> global4: array<Struct_2, 22>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_2) -> bool {
    return _wgslsmith_mod_u32(u_input.a, ~1u) != _wgslsmith_add_u32(_wgslsmith_div_u32(~(~1u), ~max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 22u)], 22u)], 69926u)), max(arg_0.a.b.x, global2.b.x));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.c)))))), arg_0.c);
    global3 = vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 32168i, global3.x, global3.x), vec4<i32>(29902i, -2147483647i, arg_3, -11788i)), ~arg_3, abs(7644i))), abs(vec3<i32>(-26103i, abs(arg_3), arg_3))), -1i, 12832i);
    let var_1 = Struct_3(Struct_2(arg_0, !arg_1, ~(-vec3<i32>(-27973i, arg_3, 2147483647i) ^ -vec3<i32>(global3.x, arg_3, arg_3))), 434f, Struct_1(true, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 91306u, u_input.a) >> (arg_0.b % vec4<u32>(32u)), ~vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(35364u, 22u)], 4294967295u, 65017u)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.c.x, 493f, _wgslsmith_f_op_f32(ceil(-1000f)), arg_0.c.x)))), _wgslsmith_f_op_f32(sign(arg_0.c.x)), Struct_1(true, max(arg_0.b, ~reverseBits(vec4<u32>(global2.b.x, arg_0.b.x, arg_0.b.x, 3045u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 1432f, global2.c.x, arg_0.c.x) - global2.c))))));
    global4 = array<Struct_2, 22>();
    let var_2 = _wgslsmith_mod_u32(~min(firstLeadingBit(u_input.a), countOneBits(~1u)), 1u);
    return -vec3<i32>(0i, -1i << (_wgslsmith_mult_u32(1u, firstTrailingBit(9712u)) % 32u), 2147483647i);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> vec2<u32> {
    var var_0 = vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x - global2.c.x) + _wgslsmith_f_op_f32(floor(arg_1.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(613f, arg_1.a.c.x)))));
    global1 = array<u32, 22>();
    let var_1 = _wgslsmith_div_vec4_u32(~global2.b, ~abs(~arg_1.a.b | _wgslsmith_clamp_vec4_u32(arg_1.a.b, global2.b, arg_1.a.b)));
    let var_2 = !any(!vec3<bool>(arg_1.b.x, true, !arg_1.b.x));
    var var_3 = u_input.a;
    return ~reverseBits(~firstTrailingBit(arg_1.a.b.yy)) << (((vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 0u, u_input.a), arg_1.a.b.x) >> (min(global2.b.xw, ~vec2<u32>(global1[_wgslsmith_index_u32(0u, 22u)], 38136u)) % vec2<u32>(32u))) | ~vec2<u32>(~u_input.a, 33153u)) % vec2<u32>(32u));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    global1 = array<u32, 22>();
    var var_0 = select(abs(global2.b.x), 4294967295u, all(select(!vec4<bool>(global2.a, global2.a, true, false), select(vec4<bool>(true, true, global2.a, true), vec4<bool>(global2.a, global2.a, global2.a, global2.a), vec4<bool>(true, true, global2.a, global2.a)), any(vec4<bool>(false, false, global2.a, true)))) || (_wgslsmith_f_op_f32(-global2.c.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x))));
    var var_1 = !vec4<bool>(global2.a, global2.c.x != _wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(ceil(1594f))), true, false);
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global2.c.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.c.zw)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, 1204f)))))), Struct_2(Struct_1(func_2(Struct_2(Struct_1(true, global2.b, global2.c), var_1.www, vec3<i32>(9912i, -66953i, -1i))), ~vec4<u32>(global1[_wgslsmith_index_u32(0u, 22u)], 4294967295u, 4294967295u, 0u), global2.c), !(!var_1.xwz), select(func_3(Struct_1(var_1.x, vec4<u32>(7453u, 45356u, u_input.a, global2.b.x), vec4<f32>(global2.c.x, 772f, 607f, -322f)), select(var_1.yxz, var_1.xxw, true), all(vec2<bool>(true, true)), 0i), ~(~vec3<i32>(global3.x, -33475i, 1i)), true)), -_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -1i, -46883i), vec3<i32>(global3.x, -global3.x, ~global3.x)), global3.x);
    var var_3 = var_1.wyw;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(global2.b.x, 22u)];
    global0 = !(abs(var_0.c.x) < var_0.c.x);
    global0 = any(select(select(vec4<bool>(global2.a, !var_0.b.x, true, any(var_0.b)), select(select(vec4<bool>(false, false, var_0.a.a, true), vec4<bool>(true, true, false, false), global2.a), vec4<bool>(global2.a, global2.a, var_0.b.x, true), vec4<bool>(var_0.a.a, global2.a, false, true)), vec4<bool>(global3.x == var_0.c.x, any(vec3<bool>(true, true, var_0.a.a)), true, false)), vec4<bool>(true, func_1(vec3<u32>(var_0.a.b.x, 7204u, 4294967295u)), true, true), false));
    global1 = array<u32, 22>();
    let var_1 = Struct_3(Struct_2(Struct_1(var_0.a.a, var_0.a.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1102f, 893f, -1220f, 240f), vec4<f32>(-253f, global2.c.x, global2.c.x, var_0.a.c.x), true))), vec3<bool>(!global2.a && var_0.a.a, !global2.a, global2.a), _wgslsmith_div_vec3_i32(~(var_0.c | vec3<i32>(-1i, 51636i, 2147483647i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, global3.x, global3.x), var_0.c))), _wgslsmith_f_op_f32(-var_0.a.c.x), var_0.a, _wgslsmith_f_op_f32(1f * 694f), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.a.c | vec3<i32>(-1i, var_1.a.c.x, var_0.c.x), vec3<i32>(1i, 1i, 1i)), ~(-var_0.c)), ~var_0.c.x, -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(var_1.a.c.x, 1i, global3.x, -1i), select(vec4<i32>(var_1.a.c.x, var_1.a.c.x, var_1.a.c.x, var_0.c.x), vec4<i32>(-12951i, 6476i, -42290i, 1i), vec4<bool>(global2.a, var_0.b.x, false, var_0.b.x))), countOneBits(~vec4<i32>(var_1.a.c.x, var_0.c.x, var_0.c.x, -2147483647i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2435f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(796f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(global2.c.x))))), vec3<u32>(_wgslsmith_sub_u32(u_input.a, global2.b.x), ~global2.b.x << (var_1.e.b.x % 32u), 52568u), ~(~1u), vec4<i32>(var_1.a.c.x, ~_wgslsmith_div_i32(func_3(var_1.e, var_1.a.b, var_0.a.a, -44706i).x, -var_1.a.c.x), firstLeadingBit(i32(-1i) * -1i), var_1.a.c.x));
}

