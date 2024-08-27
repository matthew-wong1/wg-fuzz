struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(19448u, 52134u, 8098u), vec3<f32>(-855f, 1896f, -387f), vec2<i32>(0i, -5151i));

var<private> global3: array<u32, 1> = array<u32, 1>(0u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = ~firstTrailingBit(0u);
    let var_1 = !(arg_0.a < _wgslsmith_div_u32(_wgslsmith_mult_u32(~arg_0.a, 4294967295u), 0u << (global3[_wgslsmith_index_u32(arg_0.e.a.x, 1u)] % 32u)));
    var var_2 = _wgslsmith_dot_vec3_i32(abs(select(vec3<i32>(arg_0.e.c.x, max(-2147483647i, u_input.a), ~u_input.a), abs(vec3<i32>(arg_2.b.c.x, -3120i, 1i)), vec3<bool>(var_1, global1.x, true))), vec3<i32>(~_wgslsmith_sub_i32(arg_2.b.c.x, 40863i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, arg_0.d), arg_0.b), 1i), ~_wgslsmith_add_i32(arg_2.a.c.x, -1i)) | _wgslsmith_add_vec3_i32(vec3<i32>(6139i & u_input.a, -1i, 0i), vec3<i32>(20384i, firstLeadingBit(1i), global2.c.x)));
    var_2 = 2147483647i;
    global3 = array<u32, 1>();
    return arg_2.a.a.x;
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_mod_vec2_u32(~(~abs(global2.a.zy | global2.a.xy)), vec2<u32>(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(~4081u, 1u)], 35330u), ~21790u));
    global2 = Struct_1(~global2.a, global2.b, vec2<i32>(_wgslsmith_div_i32(u_input.a, 32950i), -1i));
    global0 = array<bool, 3>();
    global3 = array<u32, 1>();
    var var_1 = vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(global2.a.x, 3u)]);
    return var_1.x && true;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec3<f32> {
    var var_0 = reverseBits(u_input.a << (~min(~global2.a.x, func_2(Struct_4(global2.a.x, vec2<i32>(u_input.a, -1i), vec4<f32>(global2.b.x, -1663f, global2.b.x, -852f), global2.c.x, Struct_1(vec3<u32>(arg_0.x, 1u, global2.a.x), vec3<f32>(-651f, global2.b.x, -940f), global2.c)), global2.b.x, Struct_3(Struct_1(arg_0.yzw, vec3<f32>(global2.b.x, global2.b.x, -1779f), global2.c), Struct_1(vec3<u32>(27771u, global2.a.x, global3[_wgslsmith_index_u32(1u, 1u)]), vec3<f32>(-1000f, -941f, global2.b.x), global2.c), global2.b, vec3<bool>(arg_1, arg_1, false), global1.x))) % 32u));
    global1 = !vec3<bool>(!func_3(), any(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 3u)] || global0[_wgslsmith_index_u32(4294967295u, 3u)], global1.x)), true);
    let var_1 = Struct_4(global3[_wgslsmith_index_u32(~0u, 1u)], ~(global2.c & -vec2<i32>(u_input.a, -1i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1480f, global2.b.x)), -1583f, false || arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -505f), _wgslsmith_f_op_f32(-global2.b.x), global2.b.x), u_input.a >> (80498u % 32u), Struct_1(vec3<u32>(~13333u, global3[_wgslsmith_index_u32(4977u, 1u)], ~4294967295u) << ((abs(arg_0.wyw) | ~global2.a) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(global2.b, _wgslsmith_f_op_vec3_f32(-global2.b)), (-global2.c >> (vec2<u32>(14711u, 1u) % vec2<u32>(32u))) ^ global2.c));
    let var_2 = Struct_3(var_1.e, Struct_1(~(~(~vec3<u32>(arg_0.x, 0u, global2.a.x))), var_1.e.b, var_1.e.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.b.x, -2359f, 1342f))), vec3<f32>(global2.b.x, var_1.c.x, -200f)), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.c.x)), global2.b.x, 618f), !select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true, arg_1), vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 3u)]), true)))), select(vec3<bool>(!global1.x, arg_1, any(vec4<bool>(arg_1, false, arg_1, true))), select(!select(vec3<bool>(arg_1, true, global1.x), vec3<bool>(global0[_wgslsmith_index_u32(global2.a.x, 3u)], global0[_wgslsmith_index_u32(var_1.a, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), global0[_wgslsmith_index_u32(var_1.a, 3u)]), vec3<bool>(true, true, false), vec3<bool>(global0[_wgslsmith_index_u32(~arg_0.x, 3u)], global2.b.x != global2.b.x, all(vec2<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 1u)], 3u)])))), !(!global1.x)), any(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(global1.x, arg_1, arg_1, global1.x), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16505u, 1u)], 3u)]), !select(vec4<bool>(false, arg_1, global1.x, arg_1), vec4<bool>(global1.x, true, global0[_wgslsmith_index_u32(0u, 3u)], global1.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 3u)], arg_1)), !(!vec4<bool>(false, arg_1, global1.x, arg_1)))));
    global2 = var_2.a;
    return global2.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_3 {
    global0 = array<bool, 3>();
    let var_0 = arg_1.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.b.zx)), vec2<f32>(-121f, -237f)));
    let var_2 = global2.a.xz;
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(4838u, 4294967295u, ~_wgslsmith_mult_u32(firstLeadingBit(arg_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(25035u, 8967u, 1u, 10554u), vec4<u32>(4294967295u, var_2.x, arg_1.a.x, arg_1.a.x))), arg_1.a.x), vec4<u32>(51930u, ~(~_wgslsmith_add_u32(4294967295u, 0u)), abs((var_2.x << (57400u % 32u)) | ~52253u), ~max(var_2.x << (61097u % 32u), arg_0.a.x)));
    return Struct_3(Struct_1(~(select(arg_1.a, vec3<u32>(arg_1.a.x, 14437u, 4294967295u), global0[_wgslsmith_index_u32(var_3.x, 3u)]) | ~vec3<u32>(0u, var_3.x, 24158u)), vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(var_1.x * arg_0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-499f, var_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -284f)), -(~vec2<i32>(u_input.a, 0i)) & ~vec2<i32>(2147483647i, var_0.x)), Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-222f, arg_0.b.x, global2.b.x)))), _wgslsmith_div_vec2_i32(global2.c, countOneBits(~vec2<i32>(var_0.x, 35944i)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-2336f)), arg_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(259f)), -558f))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b))))), !vec3<bool>(true, global1.x, any(select(global1.xy, global1.yz, true))), all(!select(select(vec4<bool>(true, global1.x, global0[_wgslsmith_index_u32(0u, 3u)], false), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(0u, 3u)]), global1.x), vec4<bool>(global0[_wgslsmith_index_u32(26306u, 3u)], true, global1.x, global1.x), global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(max(vec4<u32>(1u, global2.a.x, global2.a.x, global2.a.x), vec4<u32>(25386u, 4538u, 4294967295u, 12301u)), true))), vec2<i32>(-7724i, _wgslsmith_div_i32(firstLeadingBit(6577i), firstLeadingBit(u_input.a)))), Struct_1(countOneBits(vec3<u32>(reverseBits(9056u), global2.a.x, ~global2.a.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1309f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.b.x)) + -478f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.b.x + global2.b.x), 1242f))), max(global2.c, -vec2<i32>(19695i, global2.c.x))));
    global2 = Struct_1(select(min(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(4294967295u, global2.a.x, var_0.a.a.x)), var_0.a.a), vec3<u32>(_wgslsmith_sub_u32(global2.a.x, 26949u), abs(var_0.a.a.x), ~var_0.a.a.x)), vec3<u32>(global3[_wgslsmith_index_u32(firstTrailingBit(~0u), 1u)], min(_wgslsmith_div_u32(91721u, 24319u), global2.a.x), var_0.a.a.x), ~(-7129i) >= var_0.b.c.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.a.b.x, 213f)))), var_0.c.x, 1458f))), _wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(-2147483647i), var_0.b.c.x), -_wgslsmith_mod_vec2_i32(var_0.b.c, var_0.b.c)));
    global3 = array<u32, 1>();
    global0 = array<bool, 3>();
    var var_1 = Struct_4(var_0.b.a.x, _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(24562i, 90929i)), vec2<i32>(2147483647i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-10191i, global2.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(51815i, -2147483647i, -29064i, -28838i), vec4<i32>(u_input.a, -1i, var_0.a.c.x, -2147483647i))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_div_f32(429f, 2745f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.b.x, -611f)) * _wgslsmith_f_op_f32(-global2.b.x)), 1349f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1101f)) * global2.b.x)) * vec4<f32>(311f, _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.x, 31476u, 3786u, global3[_wgslsmith_index_u32(11920u, 1u)]), vec4<u32>(0u, global3[_wgslsmith_index_u32(var_0.b.a.x, 1u)], 4294967295u, var_0.b.a.x)), true)).x, 1967f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.b.x))))), abs(func_4(Struct_1(func_4(Struct_1(vec3<u32>(global3[_wgslsmith_index_u32(var_0.b.a.x, 1u)], global3[_wgslsmith_index_u32(1u, 1u)], 4294967295u), global2.b, vec2<i32>(global2.c.x, -1i)), var_0.b).a.a, _wgslsmith_div_vec3_f32(global2.b, vec3<f32>(global2.b.x, -1123f, global2.b.x)), countOneBits(global2.c)), func_4(Struct_1(var_0.a.a, vec3<f32>(831f, -2026f, global2.b.x), vec2<i32>(var_0.b.c.x, 8136i)), Struct_1(var_0.b.a, vec3<f32>(838f, -1000f, 606f), vec2<i32>(u_input.a, -13399i))).a).a.c.x), func_4(Struct_1(var_0.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.c)) - vec3<f32>(global2.b.x, 227f, -872f)), global2.c), var_0.b).a);
    var var_2 = func_4(var_1.e, Struct_1(var_1.e.a, vec3<f32>(_wgslsmith_div_f32(635f, 155f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f)), -1000f), global2.c)).a.b.xy;
    global1 = var_0.d;
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-763f - 1565f))), var_0.a.c, vec3<i32>(52151i, -2147483647i, 0i));
}

