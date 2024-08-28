struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(0i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, -60636i), vec2<i32>(-41371i, -2545i), vec2<i32>(-1i, 0i), vec2<i32>(22219i, 49383i), vec2<i32>(-72888i, 1i), vec2<i32>(-3875i, -1i), vec2<i32>(-1i, -10658i), vec2<i32>(-28229i, 0i), vec2<i32>(1i, -12907i), vec2<i32>(-22019i, 4108i), vec2<i32>(4233i, 49335i), vec2<i32>(12693i, i32(-2147483648)), vec2<i32>(33474i, 65747i), vec2<i32>(-49766i, 2147483647i));

var<private> global2: vec2<u32> = vec2<u32>(7570u, 0u);

var<private> global3: array<bool, 20>;

var<private> global4: Struct_1 = Struct_1(0u, -1i, vec2<f32>(-856f, 435f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> i32 {
    global4 = Struct_1(4294967295u, _wgslsmith_add_i32(29362i, global4.b), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, _wgslsmith_f_op_f32(max(arg_1.c.x, _wgslsmith_f_op_f32(259f + arg_3)))))));
    var var_0 = _wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(global0.b, arg_1.b, -2147483647i, 2147483647i)), vec4<i32>(global0.b, -1i, 2147483647i, u_input.b)) << ((~vec4<u32>(34189u, arg_2, u_input.a.x, global2.x) >> (vec4<u32>(abs(global4.a), global0.a, 0u, 20037u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 0i, 1i, -2147483647i), -vec4<i32>(global0.b, arg_1.b, 38162i, -43900i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.c))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1235f))), arg_0.c.x) - vec2<f32>(var_1.x, 874f)));
    var var_3 = ~27253u;
    return u_input.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> vec4<f32> {
    var var_0 = select(select(vec3<bool>(!(!global3[_wgslsmith_index_u32(4294967295u, 20u)]), true, global3[_wgslsmith_index_u32(global0.a, 20u)]), vec3<bool>(true, any(vec4<bool>(false, global3[_wgslsmith_index_u32(global2.x, 20u)], global3[_wgslsmith_index_u32(global2.x, 20u)], global3[_wgslsmith_index_u32(75548u, 20u)])), false), vec3<bool>(any(select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 20u)], true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], false), vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 20u)], global3[_wgslsmith_index_u32(1u, 20u)]))), global3[_wgslsmith_index_u32(~countOneBits(global4.a), 20u)], false)), !select(select(vec3<bool>(true, global3[_wgslsmith_index_u32(14492u, 20u)], true), !vec3<bool>(true, global3[_wgslsmith_index_u32(3427u, 20u)], false), select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(global4.a, 20u)]), vec3<bool>(false, true, true), true)), select(!vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(global4.a, 20u)]), vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 20u)], global3[_wgslsmith_index_u32(arg_1, 20u)], true), select(vec3<bool>(false, global3[_wgslsmith_index_u32(arg_0.a, 20u)], false), vec3<bool>(global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(58424u, 20u)], false), global3[_wgslsmith_index_u32(arg_0.a, 20u)])), select(select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(52874u, 20u)]), vec3<bool>(global3[_wgslsmith_index_u32(66879u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(43201u, 20u)]), false), select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<bool>(global3[_wgslsmith_index_u32(0u, 20u)], true, true), global3[_wgslsmith_index_u32(arg_1, 20u)]), select(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 20u)], true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], true, global3[_wgslsmith_index_u32(17562u, 20u)]), global3[_wgslsmith_index_u32(25536u, 20u)]))), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, global3[_wgslsmith_index_u32(global2.x, 20u)], global3[_wgslsmith_index_u32(53323u, 20u)]), 782f > arg_2)));
    global4 = arg_0;
    var var_1 = Struct_1(~((_wgslsmith_div_u32(arg_0.a, 1u) << (~21674u % 32u)) & global0.a), abs(reverseBits(-11377i)), global0.c);
    let var_2 = _wgslsmith_sub_vec3_i32(arg_3, vec3<i32>(36228i, global0.b, -arg_0.b ^ ~(-1i)));
    global0 = arg_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c.x, -896f, -1446f, -865f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(587f, -2302f, -1700f, global0.c.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1652f, global4.c.x, var_1.c.x, global4.c.x) * vec4<f32>(arg_2, arg_2, var_1.c.x, global0.c.x))))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c.x, 757f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(trunc(global0.c.x))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(502f, -565f, -305f, global0.c.x) - vec4<f32>(1000f, 510f, global0.c.x, 872f))))) + _wgslsmith_f_op_vec4_f32(func_4(Struct_1(0u, func_3(Struct_1(global2.x, global0.b, global0.c), Struct_1(4294967295u, u_input.b, global0.c), 7337u, -176f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, 114f))), _wgslsmith_sub_u32(countOneBits(u_input.a.x), 11886u), _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(-global0.c.x)), firstLeadingBit(-vec3<i32>(global0.b, global4.b, 2147483647i))))));
    let var_1 = _wgslsmith_f_op_f32(-global4.c.x);
    let var_2 = Struct_1(firstLeadingBit(global2.x), -1i, _wgslsmith_f_op_vec2_f32(-global0.c));
    let var_3 = vec3<i32>(_wgslsmith_add_i32(var_2.b, 21788i), (global4.b >> (var_2.a % 32u)) & global4.b, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(global4.b, u_input.b, global0.b, -5383i), max(vec4<i32>(u_input.b, 47328i, global4.b, -1i), vec4<i32>(u_input.b, global0.b, 17687i, 2147483647i)), global3[_wgslsmith_index_u32(74617u, 20u)]), firstLeadingBit(vec4<i32>(~global0.b, ~105i, global4.b, abs(global0.b)))));
    var var_4 = Struct_1(arg_0.x, -19861i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.zx + _wgslsmith_div_vec2_f32(vec2<f32>(-1384f, global4.c.x), var_0.yz)), vec2<f32>(-862f, -1091f), !vec2<bool>(global3[_wgslsmith_index_u32(37147u, 20u)], global3[_wgslsmith_index_u32(global2.x, 20u)]))))));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(~global2.x, global4.a);
    return arg_1;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = -336f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-437f)), -161f) * 710f));
    global4 = func_5(func_2(~reverseBits(select(vec2<u32>(78666u, 13423u), vec2<u32>(27187u, 30254u), global3[_wgslsmith_index_u32(4294967295u, 20u)]))), Struct_1(1u, ~(1i & _wgslsmith_div_i32(u_input.b, -5418i)), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c.x - global4.c.x), _wgslsmith_f_op_f32(-1000f + global0.c.x), global4.c.x >= 1461f)))));
    var_1 = 601f;
    var var_2 = func_5(Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 5053u), vec2<u32>(57881u, 1u)), _wgslsmith_mod_u32(20287u, 70023u)) & _wgslsmith_mod_u32(~1u, global0.a), global4.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(-316f, global0.c.x)), vec2<f32>(_wgslsmith_f_op_f32(985f - 641f), _wgslsmith_f_op_f32(-global4.c.x)))), func_2(u_input.a));
    return Struct_1(_wgslsmith_div_u32(~_wgslsmith_div_u32(~1u, ~1u), global0.a), _wgslsmith_mult_i32(1i, ~global4.b) ^ -2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(1u, -1i, vec2<f32>(1182f, 1587f)), ~64004u, _wgslsmith_f_op_f32(f32(-1f) * -896f), firstLeadingBit(vec3<i32>(1i, global4.b, -6861i)))).ww) * arg_0));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_0.c.x, 248f) + vec3<f32>(arg_2.c.x, -962f, global0.c.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 985f, global0.c.x) * vec3<f32>(global4.c.x, arg_2.c.x, global0.c.x)))))));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(1u), 27734u), 20u)];
    var var_2 = arg_2;
    var var_3 = arg_2;
    global0 = arg_0;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(func_2(u_input.a >> (u_input.a % vec2<u32>(32u))).c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(u_input.a.x, -(i32(-1i) * -13260i) ^ global4.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(func_1(global4.c), 242f, func_1(global4.c))))));
    var var_0 = 1u;
    let var_1 = global2.x;
    let var_2 = func_2(abs(vec2<u32>(func_2(reverseBits(vec2<u32>(global4.a, global4.a))).a, global4.a)));
    let var_3 = global4.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-244f)), _wgslsmith_f_op_f32(-var_2.c.x), var_2.c.x));
    let var_5 = _wgslsmith_div_i32((u_input.b << (global2.x % 32u)) & firstTrailingBit(max(u_input.c.x, -29233i)), select(~(-func_5(Struct_1(0u, -3561i, vec2<f32>(1761f, global0.c.x)), var_2).b), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.zz))).b, global3[_wgslsmith_index_u32(countOneBits(35443u) >> (reverseBits(func_5(Struct_1(19291u, 2147483647i, global0.c), var_2).a) % 32u), 20u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, countOneBits(~vec2<u32>(0u, 38980u))), vec2<u32>(~_wgslsmith_mod_u32(global2.x, 80613u), ~35085u & _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 1u)))));
}

