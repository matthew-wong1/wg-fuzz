struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<i32> = vec3<i32>(-84948i, 5844i, -5545i);

var<private> global2: array<i32, 9>;

var<private> global3: array<vec3<f32>, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    let var_0 = vec2<i32>(-(~(_wgslsmith_dot_vec2_i32(global1.zx, global1.xy) ^ global1.x)), -24818i);
    let var_1 = select(u_input.c.xwy, ~max(max(u_input.c.xyw, firstLeadingBit(u_input.c.zxz)), ~max(u_input.c.wwz, vec3<u32>(45259u, 59908u, u_input.a))), true);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(max(-436f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1113f), -487f))), Struct_1(true, 197f, select(vec3<bool>(select(false, true, true), true, select(true, false, true)), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), select(true, false, true)), vec3<bool>(true, true, true)), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), ~(~(firstLeadingBit(u_input.c.x) ^ 28514u)), Struct_1(any(vec2<bool>(select(false, false, true), true)), 263f, select(vec3<bool>(true, any(vec4<bool>(true, true, false, false)), true), vec3<bool>(true, true, true), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(1000f, -1250f, true)), _wgslsmith_f_op_f32(max(-1846f, 1757f)), -190f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_3 = ~_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(~u_input.c.wy, vec2<u32>(13804u, 1u)), vec2<u32>(arg_0 & 1u, ~var_1.x));
    var var_4 = vec2<bool>(any(!select(vec3<bool>(var_2.b.c.x, var_2.b.d.x, true), select(var_2.b.c, var_2.d.c, true), var_2.d.a)), 255f == _wgslsmith_f_op_f32(abs(var_2.b.b)));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.b.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(566f)) - _wgslsmith_f_op_f32(var_2.a + -449f)))) - vec2<f32>(var_2.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.b))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_4) -> f32 {
    global3 = array<vec3<f32>, 21>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1867f, _wgslsmith_f_op_f32(-319f - 199f))) * _wgslsmith_f_op_f32(1064f - -595f))), _wgslsmith_f_op_f32(exp2(arg_2.x)));
    var var_1 = 1u;
    var_1 = max(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, arg_3.e.c, 4294967295u) | vec4<u32>(abs(arg_3.e.c), ~arg_3.e.c, 1u, ~global0.x), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_3.e.c, global0.x), ~arg_3.e.c), u_input.c.x, global0.x, global0.x)), _wgslsmith_mult_u32(max(~(~global0.x), _wgslsmith_mult_u32(global0.x, 30558u)), global0.x));
    global2 = array<i32, 9>();
    return 705f;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = global3[_wgslsmith_index_u32(~(select(1u, 36226u, true) ^ arg_1.c) ^ ~(~32968u), 21u)];
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -1069f)));
    global0 = ~(~u_input.c.wz);
    var_2 = _wgslsmith_f_op_f32(select(457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.b))))), true));
    return select(countOneBits(~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d, 42055u, arg_2), u_input.c))), reverseBits(u_input.c) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, ~u_input.c), ~vec4<u32>(arg_1.c, arg_1.c, u_input.a, arg_2)) % vec4<u32>(32u)), !any(!select(vec4<bool>(false, var_1.b.a, arg_3.a, var_1.b.a), vec4<bool>(arg_1.b.d.x, true, false, var_1.b.a), vec4<bool>(arg_1.b.c.x, var_1.d.d.x, var_1.d.a, true))));
}

fn func_2() -> vec4<i32> {
    var var_0 = firstLeadingBit(func_5(u_input.a, Struct_3(_wgslsmith_f_op_f32(func_4(true, _wgslsmith_div_vec4_f32(vec4<f32>(-599f, -133f, -969f, 656f), vec4<f32>(358f, 1185f, -901f, 129f)), _wgslsmith_f_op_vec2_f32(func_3(0u)), Struct_4(vec4<i32>(-9616i, global2[_wgslsmith_index_u32(0u, 9u)], 14363i, 2147483647i), vec2<i32>(16922i, global1.x), global3[_wgslsmith_index_u32(1u, 21u)], vec2<bool>(false, true), Struct_3(1091f, Struct_1(false, -495f, vec3<bool>(false, true, true), vec2<bool>(false, false)), u_input.c.x, Struct_1(false, -892f, vec3<bool>(false, true, true), vec2<bool>(false, true)), vec4<f32>(-738f, 697f, -3220f, 863f))))), Struct_1(global1.x >= global1.x, 139f, vec3<bool>(true, true, true), vec2<bool>(false, true)), global0.x, Struct_1(true, 240f, select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1388f, 1398f, 828f, -956f))))), global0.x, Struct_1(true, -716f, vec3<bool>(true, true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    let var_1 = 28159i;
    global2 = array<i32, 9>();
    global3 = array<vec3<f32>, 21>();
    let var_2 = countOneBits(-(0i & ~(~global2[_wgslsmith_index_u32(14399u, 9u)])));
    return _wgslsmith_div_vec4_i32(vec4<i32>(var_1, var_2, firstLeadingBit(global2[_wgslsmith_index_u32(~(33136u & global0.x), 9u)]), ~global2[_wgslsmith_index_u32(reverseBits(var_0.x), 9u)]), vec4<i32>(~(~abs(10260i)), -2147483647i, ~min(var_2, reverseBits(global2[_wgslsmith_index_u32(0u, 9u)])), (-2147483647i >> (var_0.x % 32u)) << (u_input.d % 32u)));
}

fn func_1() -> bool {
    let var_0 = u_input.c;
    var var_1 = Struct_4(-func_2(), max(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(global1.xy, vec2<i32>(0i, global2[_wgslsmith_index_u32(global0.x, 9u)])), _wgslsmith_sub_vec2_i32(vec2<i32>(-21827i, -8446i), vec2<i32>(20088i, global2[_wgslsmith_index_u32(global0.x, 9u)]))), global1.xx) >> (vec2<u32>(var_0.x, firstTrailingBit(~var_0.x)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global3[_wgslsmith_index_u32(50427u, 21u)])) - global3[_wgslsmith_index_u32(var_0.x, 21u)]), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), vec2<bool>(all(vec4<bool>(false, true, true, true)), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_3(1174f, Struct_1(true, -803f, vec3<bool>(true, true, true), vec2<bool>(true, true)), ~0u, Struct_1(any(vec2<bool>(false, true)) == false, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-607f, 1760f), -255f)), vec3<bool>(true, true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-599f, -892f, -211f, -1000f), vec4<f32>(-150f, 2229f, -1601f, 1238f))))))));
    let var_2 = var_1.a.wxz;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(128f - _wgslsmith_f_op_f32(var_1.c.x - -127f)), var_1.e.e.x, -716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.a) + -1689f)));
    global1 = -var_1.a.xwy;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 9>();
    var var_0 = Struct_2(vec3<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true))), func_1()), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -26238i), vec2<i32>(-16897i, global2[_wgslsmith_index_u32(1u, 9u)])), ~_wgslsmith_clamp_i32(-2147483647i, 2147483647i, global2[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_sub_i32(abs(global1.x), -1i)) == _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(global2[_wgslsmith_index_u32(26144u, 9u)], global2[_wgslsmith_index_u32(88021u, 9u)], 0i, 28817i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, -2147483647i, global2[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]), -vec4<i32>(-10271i, global2[_wgslsmith_index_u32(53829u, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)], global1.x), ~vec4<i32>(global1.x, global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(global0.x, 9u)], 2147483647i))));
    global3 = array<vec3<f32>, 21>();
    global1 = ~vec3<i32>(1i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~4294967295u, u_input.a), u_input.c.zww), 9u)], global2[_wgslsmith_index_u32(14036u, 9u)] << (~reverseBits(4294967295u) % 32u));
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(func_5(global0.x, Struct_3(-500f, Struct_1(false, -1791f, var_0.a, vec2<bool>(var_0.a.x, true)), u_input.a, Struct_1(var_0.a.x, -2119f, vec3<bool>(true, var_0.a.x, false), vec2<bool>(true, var_0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(316f, 1182f, -1177f, 1000f) * vec4<f32>(1168f, -556f, -558f, 850f))), _wgslsmith_dot_vec2_u32(vec2<u32>(75400u, u_input.b) & vec2<u32>(0u, 0u), vec2<u32>(4294967295u, global0.x)), Struct_1(any(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.a.x)), 1f, var_0.a, vec2<bool>(var_0.b, true))).xxw, _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4294967295u, 4294967295u, 1u)), ~vec3<u32>(u_input.b, global0.x, 1u)) & vec3<u32>(global0.x, ~u_input.a, 0u)), ~u_input.c.yzw);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1418f), Struct_1(var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-152f)), 723f, !var_0.a.x)))), select(var_0.a, !var_0.a, !var_0.a.x | true), !select(!vec2<bool>(var_0.a.x, var_0.a.x), !vec2<bool>(var_0.b, var_0.a.x), var_0.a.xz)), 11642u, Struct_1(countOneBits(_wgslsmith_mod_u32(global0.x, u_input.c.x)) <= _wgslsmith_mult_u32(~global0.x, u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(189f - 208f), -443f, !var_0.b)) * _wgslsmith_f_op_f32(1f - -580f)), select(var_0.a, !vec3<bool>(true, var_0.a.x, true), vec3<bool>(0i <= global1.x, var_0.b, true)), var_0.a.yx), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-328f, 502f, -1118f, 1226f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(978f, -1342f, -2137f, 999f))))), vec4<f32>(-1129f, _wgslsmith_f_op_f32(abs(-1577f)), _wgslsmith_div_f32(-120f, 120f), _wgslsmith_f_op_f32(max(-516f, 459f))))));
    global2 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(_wgslsmith_sub_i32(select(global1.x, -1i, true), global1.x & global1.x), global1.x, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(func_5(47609u, Struct_3(-177f, var_3.b, 0u, Struct_1(var_3.d.c.x, 1033f, var_0.a, var_0.a.yx), var_3.e), 0u, var_3.d).x, 9u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(11142u, 4294967295u, var_3.c), 9u)]), select(-2147483647i, select(global1.x, global2[_wgslsmith_index_u32(2548u, 9u)], true), true)), reverseBits(vec4<i32>(1i, 0i | global2[_wgslsmith_index_u32(1u, 9u)], global1.x, global1.x)), var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.b + var_3.e.x)), _wgslsmith_add_i32(abs(firstLeadingBit(_wgslsmith_div_i32(global1.x, 20758i))), global1.x), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.b, 123387u, 5492u) >> ((u_input.c << (vec4<u32>(18539u, var_3.c, u_input.d, 32267u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(global0.x, 50296u, u_input.d, global0.x)), vec4<u32>(global0.x, 5280u, 1u, 29571u), select(var_3.d.c.x, var_3.b.d.x, true))), ~(reverseBits(-5570i) << (min(global0.x, global0.x) % 32u)) << (u_input.c.x % 32u));
}

