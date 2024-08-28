struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, true), vec2<f32>(1459f, -1496f), vec2<u32>(4294967295u, 2039u), vec2<u32>(2749u, 27384u));

var<private> global2: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(-999f, 356f, 1000f), vec3<f32>(1251f, 559f, 204f), vec3<f32>(1557f, -985f, 1601f), vec3<f32>(-1725f, -975f, 433f), vec3<f32>(-506f, -697f, 1000f), vec3<f32>(-223f, -1229f, 424f), vec3<f32>(824f, 352f, 1274f), vec3<f32>(-412f, -328f, 844f), vec3<f32>(1572f, 1746f, -336f), vec3<f32>(898f, 330f, 1000f), vec3<f32>(-1451f, 368f, -496f), vec3<f32>(-1000f, 374f, -444f), vec3<f32>(-209f, -861f, 576f), vec3<f32>(-1151f, -1110f, -532f));

var<private> global3: array<u32, 7>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: vec3<i32>) -> vec3<i32> {
    let var_0 = Struct_1(!global1.a, vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-211f * _wgslsmith_f_op_f32(-global1.b.x)) + _wgslsmith_f_op_f32(step(939f, _wgslsmith_f_op_f32(abs(1182f)))))), firstTrailingBit(~vec2<u32>(global1.d.x, 1u)), vec2<u32>(global3[_wgslsmith_index_u32(abs(~u_input.b), 7u)], _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 4294967295u, global1.d.x, 69328u)), vec4<u32>(11735u, global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(9186u, 7u)], u_input.b))) << (vec2<u32>(57515u, ~global3[_wgslsmith_index_u32(u_input.b, 7u)]) % vec2<u32>(32u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * var_0.b.x)) * var_0.b.x))), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_div_f32(-1714f, -766f))) * var_0.b.x) - global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(-var_0.b.x))));
    global2 = array<vec3<f32>, 14>();
    let var_2 = _wgslsmith_f_op_f32(1924f + -1031f);
    let var_3 = abs(~var_0.c.x << (var_0.d.x % 32u));
    return firstTrailingBit(~(abs(arg_3) >> (vec3<u32>(1u, 47689u, u_input.b) % vec3<u32>(32u)))) & -arg_3;
}

fn func_2(arg_0: Struct_5, arg_1: vec3<bool>) -> Struct_1 {
    global0 = ~(-func_3(Struct_3(global0.zz), select(global1.a.x, false, true), arg_1.x, -vec3<i32>(-41247i, u_input.a, -2147483647i))) << (~_wgslsmith_clamp_vec3_u32(select(max(vec3<u32>(u_input.b, global1.d.x, global1.c.x), vec3<u32>(u_input.b, 1249u, global3[_wgslsmith_index_u32(global1.d.x, 7u)])), firstTrailingBit(vec3<u32>(67476u, 4294967295u, global3[_wgslsmith_index_u32(u_input.b, 7u)])), true), ~(~vec3<u32>(global1.c.x, global3[_wgslsmith_index_u32(u_input.b, 7u)], 1u)), firstTrailingBit(min(vec3<u32>(global3[_wgslsmith_index_u32(61761u, 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25993u, 7u)], 7u)], 4294967295u), vec3<u32>(86778u, 19542u, 25293u)))) % vec3<u32>(32u));
    global0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-23602i, func_3(Struct_3(vec2<i32>(3144i, global0.x)), false, arg_1.x, vec3<i32>(0i, 3779i, -37068i)).x), (39617i | global0.x) << (~46767u % 32u)), ~u_input.a, -38205i) | ((vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, global0.x), -13605i & global0.x) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(49059u, u_input.b, 1u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.c.x, 7u)], 7u)], 79774u, 1u)) % vec3<u32>(32u))) ^ ~((vec3<i32>(u_input.a, 39960i, u_input.a) >> (vec3<u32>(u_input.b, 0u, 0u) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-2665i, 2147483647i, -21966i), vec3<i32>(global0.x, 0i, -1i), vec3<i32>(global0.x, u_input.a, 1i))));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(global1.b.x)), -u_input.a, Struct_1(!vec2<bool>(global1.a.x && false, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global1.b * vec2<f32>(arg_0.a.x, arg_0.b.x)))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(~1u, 7u)]), firstLeadingBit(select(vec2<u32>(23976u, global1.d.x), global1.c, global1.a))), global1.c), vec3<bool>(!(!arg_1.x) == !(global1.a.x & global1.a.x), global1.a.x, !all(!vec3<bool>(true, global1.a.x, true))));
    let var_1 = vec3<i32>(var_0.b, _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, func_3(Struct_3(vec2<i32>(-2147483647i, u_input.a)), true & global1.a.x, arg_1.x, vec3<i32>(u_input.a, -1i, global0.x)).x), _wgslsmith_dot_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(0i, -2147483647i, var_0.b))), _wgslsmith_mult_vec3_i32(~vec3<i32>(0i, 1i, global0.x), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b, 1i, -8381i), vec3<i32>(global0.x, global0.x, -1i))))), i32(-1i) * -38633i);
    global1 = Struct_1(!global1.a, arg_0.a.yz, vec2<u32>(_wgslsmith_sub_u32(reverseBits(_wgslsmith_sub_u32(var_0.c.c.x, global1.c.x)), u_input.b >> (global1.d.x % 32u)), ~max(~var_0.c.d.x, 27146u)), _wgslsmith_clamp_vec2_u32(~global1.d, var_0.c.c, var_0.c.d) << ((global1.c & vec2<u32>(_wgslsmith_mult_u32(global1.c.x, 0u), ~global1.c.x)) % vec2<u32>(32u)));
    return Struct_1(arg_1.zz, vec2<f32>(-1134f, 451f), min(reverseBits(_wgslsmith_div_vec2_u32(global1.d, _wgslsmith_mult_vec2_u32(var_0.c.d, global1.c))), vec2<u32>(55038u, ~31238u) | select(global1.d, vec2<u32>(global1.c.x, 0u) << (vec2<u32>(var_0.c.d.x, u_input.b) % vec2<u32>(32u)), true)), ~(~var_0.c.c));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<i32>) -> f32 {
    global1 = arg_1;
    var var_0 = Struct_3(~_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-31793i, arg_3.x)), -vec2<i32>(arg_3.x, 12905i)));
    global1 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), -626f, global1.a.x)));
    var var_2 = ~_wgslsmith_mod_vec4_u32(abs((vec4<u32>(0u, arg_0.x, global3[_wgslsmith_index_u32(u_input.b, 7u)], u_input.b) << (vec4<u32>(0u, 31172u, 1u, 444u) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, arg_1.d.x, 22170u), vec4<u32>(arg_0.x, 54555u, global1.c.x, global3[_wgslsmith_index_u32(4294967295u, 7u)]))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, global1.c.x, 0u, arg_1.d.x), vec4<u32>(21348u, 0u, arg_1.c.x, global3[_wgslsmith_index_u32(u_input.b, 7u)])), global1.c.x << (18670u % 32u), 49979u ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 7u)], 7u)], abs(arg_0.x)) & ~(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 7u)], global1.c.x, 1u, global3[_wgslsmith_index_u32(1u, 7u)])));
    return _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-166f - arg_1.b.x))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_2 {
    global0 = max(_wgslsmith_mod_vec3_i32(vec3<i32>(41336i >> (1u % 32u), -u_input.a, reverseBits(arg_1.a.x)), vec3<i32>(select(arg_1.a.x, u_input.a, false), ~arg_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-18829i, global0.x, -3453i), vec3<i32>(u_input.a, global0.x, arg_1.a.x)))) << (~vec3<u32>(_wgslsmith_div_u32(27397u, global1.c.x), 4294967295u, global1.c.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(select(abs(~vec3<i32>(2147483647i, 19152i, u_input.a)), _wgslsmith_div_vec3_i32(-vec3<i32>(43610i, -2147483647i, -24215i), _wgslsmith_sub_vec3_i32(vec3<i32>(21632i, arg_1.a.x, u_input.a), vec3<i32>(arg_1.a.x, -1i, global0.x))), select(vec3<bool>(global1.a.x, global1.a.x, false), vec3<bool>(global1.a.x, true, global1.a.x), global1.a.x)), min(~vec3<i32>(28900i, u_input.a, 19425i), vec3<i32>(0i, u_input.a, ~1i))));
    global1 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.wz)), global1.c, vec2<u32>(~u_input.b, 19526u));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(abs(vec2<u32>(50113u, 4294967295u)), func_2(Struct_5(vec3<f32>(-670f, global1.b.x, 1361f), vec2<f32>(arg_0.x, global1.b.x)), vec3<bool>(true, global1.a.x, global1.a.x)), global1.a, select(global0.zy, vec2<i32>(u_input.a, -1i), vec2<bool>(global1.a.x, false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -1000f) + _wgslsmith_f_op_f32(-2089f - 242f)))), 917f, _wgslsmith_div_f32(-189f, -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-162f))))) - _wgslsmith_f_op_f32(func_4(abs(global1.d), Struct_1(select(global1.a, global1.a, true), arg_0.xw, firstTrailingBit(global1.d), global1.d), !(!vec2<bool>(true, global1.a.x)), vec2<i32>(1i, arg_1.a.x)))));
    global2 = array<vec3<f32>, 14>();
    let var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -865f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(step(1000f, 608f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-163f, arg_0.x) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1630f) * arg_0.x), _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(1664f * var_0.x)))));
    return Struct_2(-200f, _wgslsmith_mult_i32(arg_1.a.x, 27345i) << (_wgslsmith_clamp_u32(~firstTrailingBit(0u), global3[_wgslsmith_index_u32(132097u, 7u)], global1.d.x) % 32u), func_2(var_1, select(vec3<bool>(!global1.a.x, false, global1.a.x), !select(vec3<bool>(false, global1.a.x, global1.a.x), vec3<bool>(true, true, global1.a.x), false), all(vec3<bool>(false, false, global1.a.x)))), vec3<bool>(global1.a.x, select(global1.a.x, true, global1.a.x), global1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1503f, -235f, -1000f, 257f) * vec4<f32>(293f, 1288f, global1.b.x, global1.b.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(295f, -2198f, -175f, global1.b.x), vec4<f32>(global1.b.x, global1.b.x, 472f, global1.b.x)))))), Struct_3(select(vec2<i32>(global0.x, global0.x) << (vec2<u32>(9712u, 0u) % vec2<u32>(32u)), ~min(vec2<i32>(global0.x, 24531i), global0.yx), global1.a)));
    global1 = func_1(vec4<f32>(389f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -978f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(vec2<u32>(var_0.c.d.x, 1949u), var_0.c, vec2<bool>(global1.a.x, var_0.d.x), global0.zy)), global1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), -1000f), Struct_3(_wgslsmith_mult_vec2_i32(global0.yy, _wgslsmith_div_vec2_i32(global0.zx, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.b, global0.x), global0.zz))))).c;
    global0 = ((vec3<i32>(32527i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, var_0.b, 2147483647i), vec3<i32>(31079i, 1i, -1i)), u_input.a << (4294967295u % 32u)) & ((vec3<i32>(var_0.b, global0.x, u_input.a) & vec3<i32>(-7236i, 17448i, var_0.b)) ^ vec3<i32>(global0.x, -2147483647i, -10149i))) << (~(~vec3<u32>(1u, 1u, 47844u) | (vec3<u32>(70877u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.d.x, 7u)], 7u)], 0u) >> (vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u)))) % vec3<u32>(32u))) | ~_wgslsmith_mod_vec3_i32(max(countOneBits(vec3<i32>(u_input.a, u_input.a, -1i)), vec3<i32>(u_input.a, u_input.a, var_0.b)), vec3<i32>(2147483647i, var_0.b, var_0.b) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global0.x, -2147483647i), vec3<i32>(u_input.a, global0.x, var_0.b), vec3<i32>(var_0.b, 0i, 1i)));
    global2 = array<vec3<f32>, 14>();
    global0 = ~abs(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-30408i, global0.x, -1i), vec3<i32>(var_0.b, var_0.b, 2147483647i)) | vec3<i32>(-12121i, global0.x, 1418i)));
    let var_1 = vec2<f32>(var_0.a, _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-349f + var_0.c.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1663f + var_0.a)))));
    global2 = array<vec3<f32>, 14>();
    let var_2 = Struct_4(!vec4<bool>(var_0.c.a.x, _wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_f_op_f32(ceil(var_0.c.b.x)), !(!var_0.d.x), false), any(select(!var_0.d, func_1(vec4<f32>(var_1.x, -344f, var_0.c.b.x, var_0.a), Struct_3(vec2<i32>(u_input.a, -35616i))).d, !var_0.d)) & func_1(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(798f, var_1.x), _wgslsmith_div_f32(425f, var_1.x), 490f), Struct_3(global0.yz)).d.x, global3[_wgslsmith_index_u32(18971u, 7u)], _wgslsmith_f_op_f32(-global1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(func_3(Struct_3(global0.yz), true, select(false, var_2.b, global1.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.a, -1i), vec3<i32>(0i, -2147483647i, var_0.b))).x | global0.x), _wgslsmith_div_u32(~0u, countOneBits(_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(u_input.b, u_input.b)))), max(vec3<u32>(~func_2(Struct_5(global2[_wgslsmith_index_u32(u_input.b, 14u)], vec2<f32>(var_0.c.b.x, 478f)), vec3<bool>(true, global1.a.x, false)).d.x, ~0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(6654u, 0u, var_2.c, global1.c.x), vec4<u32>(global1.d.x, var_0.c.c.x, var_0.c.d.x, 4294967295u))), vec3<u32>(u_input.b, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.b.x, var_2.d, -1066f)), Struct_3(vec2<i32>(-2147483647i, 2147483647i))).c.d.x, countOneBits(func_1(vec4<f32>(global1.b.x, var_1.x, global1.b.x, var_2.d), Struct_3(vec2<i32>(var_0.b, 0i))).c.d.x))));
}

