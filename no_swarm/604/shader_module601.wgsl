struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_3;

var<private> global2: array<u32, 28> = array<u32, 28>(23929u, 1u, 37350u, 6276u, 0u, 1u, 70002u, 4294967295u, 63629u, 0u, 1220u, 4294967295u, 4588u, 20211u, 0u, 0u, 4294967295u, 29486u, 24158u, 4294967295u, 28552u, 1u, 1u, 10501u, 0u, 0u, 53061u, 52302u);

var<private> global3: vec2<u32>;

var<private> global4: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(-1558f), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(700f), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(396f), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(1430f), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(-122f), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(-687f), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(253f), vec4<bool>(false, false, true, false)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> i32 {
    let var_0 = firstLeadingBit(firstLeadingBit(u_input.c.x));
    var var_1 = Struct_1(644f);
    global4 = array<Struct_2, 7>();
    return 2147483647i;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<u32> {
    let var_0 = arg_2;
    let var_1 = select(arg_1, select(!vec4<bool>(!arg_1.x, any(vec2<bool>(arg_1.x, arg_1.x)), select(false, global1.a, global1.a), arg_1.x), arg_1, arg_1), select(!arg_1, arg_1, vec4<bool>(arg_1.x | true, true, !arg_1.x || global1.a, true)));
    global0 = arg_1.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.a))))));
    var var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -1i, 50383i, 2147483647i), vec4<i32>(15084i, -60372i, -1i, 43499i)) >> (vec4<u32>(1u, arg_0.x, arg_3.x, u_input.d) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(abs(13858i), _wgslsmith_clamp_i32(7868i, 40105i, 17693i), 0i >> (global3.x % 32u), i32(-1i) * -34589i), vec4<i32>(1i, firstTrailingBit(-9032i), -25370i << (arg_0.x % 32u), 43392i), vec4<i32>(0i, _wgslsmith_mod_i32(2147483647i, 2147483647i), 2147483647i, ~66214i))), ~vec4<i32>(abs(abs(-6709i)), 0i, countOneBits(1i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-49411i, -23254i, 31663i, 0i)), -vec4<i32>(-2147483647i, -2147483647i, -7937i, -2241i))));
    return _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(select(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), u_input.b, true) >> (~(arg_0 ^ u_input.b) % vec4<u32>(32u)), ~arg_0), vec4<u32>(~4294967295u, global2[_wgslsmith_index_u32(global3.x, 28u)], u_input.b.x, reverseBits(_wgslsmith_sub_u32(arg_3.x, arg_3.x))));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> vec2<u32> {
    return arg_2.a.wx;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>) -> f32 {
    global3 = ~reverseBits(func_4(vec2<i32>(_wgslsmith_sub_i32(-54348i, arg_0.x), arg_0.x), arg_0.x, Struct_4(func_3(u_input.b, vec4<bool>(true, arg_1.x, false, false), global1.b, u_input.b.wyw), vec4<i32>(-7023i, arg_0.x, -1842i, 1i) | vec4<i32>(1i, arg_0.x, 33810i, -1009i), Struct_3(global1.a, global1.b)), 1221f));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f - global1.b.a)))) * _wgslsmith_f_op_f32(min(-303f, _wgslsmith_f_op_f32(-306f - _wgslsmith_f_op_f32(-global1.b.a))))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-610f)), _wgslsmith_f_op_f32(-global1.b.a))), -1025f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.a), _wgslsmith_f_op_f32(abs(929f)))))));
    global3 = ~firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(33926u, 28u)], 1u), vec2<u32>(1u, 19939u)) | ~vec2<u32>(38575u, global3.x), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global3.x, 28u)], u_input.d, global2[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<u32>(global3.x, global3.x, 3782u)), global3.x)));
    var var_1 = Struct_5(~_wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(u_input.b.yyy, u_input.b.zyy)), vec3<u32>(52206u | global3.x, global2[_wgslsmith_index_u32(~0u, 28u)], 81044u), ~countOneBits(u_input.c)), min(vec4<i32>(-2696i, arg_0.x | (arg_0.x ^ 2147483647i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, arg_0.x, 2147483647i)), vec3<i32>(arg_0.x, -2147483647i, arg_0.x)), select(arg_0.x, 2147483647i, false)), countOneBits(vec4<i32>(arg_0.x, 0i, -2147483647i, 2147483647i) << (vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 8034u, 1u) % vec4<u32>(32u))) ^ (vec4<i32>(arg_0.x, arg_0.x, -1i, arg_0.x) ^ vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x))), global3.x, Struct_1(893f), var_0);
    global4 = array<Struct_2, 7>();
    return -683f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e ^ abs(u_input.e);
    let var_1 = global3.x;
    let var_2 = reverseBits(_wgslsmith_add_vec3_i32(-firstLeadingBit(vec3<i32>(1i, 1i, 1i)), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, ~1i, ~(-47646i)), -24880i, -func_1(1i, vec2<i32>(40737i, -7017i)))));
    var var_3 = Struct_3(any(vec4<bool>(true, !(global1.a | global1.a), any(select(vec3<bool>(true, global1.a, true), vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(true, global1.a, global1.a))), true)), Struct_1(_wgslsmith_f_op_f32(func_2(vec2<i32>(select(var_2.x, 2147483647i, global1.a), ~var_2.x), !select(vec3<bool>(global1.a, true, false), vec3<bool>(false, true, true), vec3<bool>(global1.a, true, global1.a))))));
    let var_4 = Struct_3(false, Struct_1(2611f));
    let var_5 = var_2.x << (~1112u % 32u);
    let var_6 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.a * -657f), -507f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1497f, var_4.b.a, var_3.b.a, -381f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1548f, -1973f, 1472f, var_6.a) - vec4<f32>(409f, -1997f, var_4.b.a, var_4.b.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_6.a, var_3.b.a, -655f, -144f), _wgslsmith_div_vec4_f32(vec4<f32>(-575f, 1307f, 276f, 1004f), vec4<f32>(var_4.b.a, var_3.b.a, var_6.a, -2890f)))))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_5, -37513i, var_2.x) << (u_input.b % vec4<u32>(32u)), min(vec4<i32>(-27129i, var_2.x, var_2.x, var_5), vec4<i32>(var_5, -2147483647i, 49717i, var_2.x))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -44575i, 0i, var_5), vec4<i32>(-2147483647i, -1440i, -1i, var_2.x)), -vec4<i32>(var_2.x, -2147483647i, -28033i, var_2.x))), _wgslsmith_div_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(var_5, var_2.x, var_2.x, -2147483647i), vec4<i32>(var_2.x, -27442i, var_2.x, var_5)), vec4<i32>(var_5, var_5, 8204i, 1151i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_5, var_2.x, 1i), vec4<i32>(0i, 41982i, var_2.x, var_2.x)), vec4<i32>(18070i, var_5, 0i, var_5)))), reverseBits(-22550i));
}

