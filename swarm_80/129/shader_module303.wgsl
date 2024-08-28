struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<vec3<u32>, 1>;

var<private> global3: vec2<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    var var_0 = select(select(vec4<bool>(!all(arg_0.yz), 733f >= _wgslsmith_f_op_f32(arg_1.c.x - -1215f), true, any(select(vec4<bool>(arg_1.a, arg_0.x, arg_1.a, true), vec4<bool>(true, false, true, true), arg_1.a))), select(!(!vec4<bool>(arg_3.c.a, arg_3.a.a, arg_3.e.a, true)), vec4<bool>(all(vec3<bool>(true, true, arg_0.x)), all(vec3<bool>(false, arg_0.x, arg_3.e.a)), false, !arg_3.e.a), arg_1.a), vec4<bool>(any(!vec4<bool>(arg_1.a, arg_0.x, arg_3.c.a, false)), arg_1.a, true, global0[_wgslsmith_index_u32(reverseBits(11409u), 21u)] <= _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a.x, 21u)])))), select(vec4<bool>(true, arg_1.a, any(select(arg_0.yz, vec2<bool>(false, true), arg_0.x)), true && arg_0.x), vec4<bool>((arg_1.a | true) || !arg_0.x, all(!vec4<bool>(true, false, arg_3.b.a, false)), global3.x != _wgslsmith_div_i32(global3.x, u_input.b), u_input.b <= -4446i), !arg_0.x), false);
    global2 = array<vec3<u32>, 1>();
    let var_1 = arg_3;
    var var_2 = arg_2;
    var var_3 = global3.x;
    return 1u;
}

fn func_4(arg_0: Struct_2) -> u32 {
    global1 = array<Struct_1, 15>();
    let var_0 = ~min(~(vec2<u32>(u_input.a.x, 38205u) & firstTrailingBit(vec2<u32>(24659u, 33060u))), firstTrailingBit(u_input.a.yy));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a.c.x);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0.b.c))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_div_f32(171f, 1355f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(79793u, 21u)])), -998f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.e.c)))));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.e.c.x)));
    return 28671u;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32) -> i32 {
    global2 = array<vec3<u32>, 1>();
    var var_0 = Struct_4(vec3<bool>(arg_0, !all(!vec4<bool>(false, arg_0, true, arg_0)), !(!(arg_1 <= 1u))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f) - global0[_wgslsmith_index_u32(4294967295u, 21u)]), _wgslsmith_f_op_f32(780f + arg_2))));
    var var_2 = Struct_1(true, func_4(Struct_2(global1[_wgslsmith_index_u32(~(u_input.a.x | arg_1), 15u)], global1[_wgslsmith_index_u32(func_3(!var_0.a, Struct_1(true, arg_1, vec4<f32>(448f, -589f, var_1.a.x, var_1.a.x), u_input.a.zx, u_input.a.zy), var_1, Struct_2(Struct_1(arg_0, 4294967295u, vec4<f32>(441f, -703f, arg_2, arg_2), vec2<u32>(u_input.a.x, 0u), u_input.a.zx), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a.x, global1[_wgslsmith_index_u32(13283u, 15u)])), 15u)], Struct_1(u_input.b > global3.x, ~u_input.a.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1432f, global0[_wgslsmith_index_u32(47754u, 21u)], -487f, -1000f), vec4<f32>(arg_2, -1325f, -174f, -1239f), var_0.a.x)), vec2<u32>(34199u, 4294967295u), u_input.a.yy), ~u_input.a.x, Struct_1(arg_0 | arg_0, _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(18846u, u_input.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-623f, 1647f, global0[_wgslsmith_index_u32(arg_1, 21u)], global0[_wgslsmith_index_u32(arg_1, 21u)]), vec4<f32>(var_1.a.x, 128f, arg_2, arg_2)), u_input.a.xx, vec2<u32>(28934u, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1149f + var_1.a.x), 521f, !var_0.a.x)), global0[_wgslsmith_index_u32(12655u, 21u)], -153f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x + global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), -429f)))), u_input.a.zy, ~u_input.a.zx);
    var var_3 = _wgslsmith_add_i32(u_input.b, -19915i);
    return -(i32(-1i) * -25076i);
}

fn func_5(arg_0: i32, arg_1: vec4<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(~u_input.a.x, u_input.a.x | 47134u, u_input.a.x, select(27488u, 1u, true)), min(~vec4<u32>(26670u, 16540u, u_input.a.x, 1u), ~vec4<u32>(36207u, u_input.a.x, 93012u, 53741u))), ((vec4<u32>(1u, 1u, 59381u, u_input.a.x) << (vec4<u32>(38286u, 4294967295u, 14717u, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a.x, 32122u, u_input.a.x, 34495u) % vec4<u32>(32u))) >> (countOneBits(~vec4<u32>(u_input.a.x, 0u, 4294967295u, 32376u)) % vec4<u32>(32u))), ~vec4<u32>((u_input.a.x << (u_input.a.x % 32u)) << ((0u | u_input.a.x) % 32u), u_input.a.x, ~1u, u_input.a.x));
    return Struct_4(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))));
}

fn func_1() -> vec3<bool> {
    global1 = array<Struct_1, 15>();
    global3 = firstLeadingBit(firstTrailingBit(vec2<i32>(global3.x, global3.x)));
    global0 = array<f32, 21>();
    var var_0 = func_5(func_2(true, ~firstLeadingBit(u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]) * _wgslsmith_f_op_f32(max(175f, 1004f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-552f, global0[_wgslsmith_index_u32(25934u, 21u)], true)) * _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(15633u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false))))), _wgslsmith_add_vec4_i32(abs(firstTrailingBit(vec4<i32>(12350i, u_input.b, -41183i, -1i) | vec4<i32>(0i, global3.x, global3.x, -15972i))), max(-vec4<i32>(-17922i, 33805i, 33928i, -1i), vec4<i32>(-1i) * -vec4<i32>(global3.x, 2147483647i, u_input.b, 2147483647i))));
    let var_1 = u_input.b;
    return select(vec3<bool>(!var_0.a.x, var_0.a.x, var_0.a.x), var_0.a, select(false | func_5(u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, 0i, global3.x, -1953i), vec4<i32>(var_1, -2147483647i, 1i, 2147483647i))).a.x, true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)] + 170f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 21u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1());
    let var_1 = func_5(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(~(-57652i), -u_input.b)), ~countOneBits(vec2<i32>(u_input.b, 2147483647i))), _wgslsmith_add_vec4_i32(~(-(vec4<i32>(1i, global3.x, u_input.b, global3.x) | vec4<i32>(global3.x, u_input.b, -10850i, global3.x))), -vec4<i32>(-1i >> (u_input.a.x % 32u), abs(-22629i), abs(u_input.b), i32(-1i) * -7917i)));
    let var_2 = Struct_2(Struct_1(!var_1.a.x, u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(540f, global0[_wgslsmith_index_u32(27941u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], -1296f), vec4<f32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(33302u, 21u)], -1000f, global0[_wgslsmith_index_u32(13445u, 21u)]), vec4<bool>(var_1.a.x, var_0.a.x, false, var_1.a.x))))), firstTrailingBit(u_input.a.zz), vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 1u)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(886u, firstTrailingBit(4294967295u)), 15u)], Struct_1(!var_0.a.x, u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27737u, 21u)]))), 1000f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~68924u, 21u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2331f) + -989f)), ~(~vec2<u32>(24166u, u_input.a.x) ^ _wgslsmith_clamp_vec2_u32(u_input.a.yy, vec2<u32>(20247u, u_input.a.x), vec2<u32>(54634u, 4294967295u))), max(u_input.a.zx, ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, 0u)))), u_input.a.x, Struct_1(true, 54423u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 25121u), 21u)], 1340f, 1f)), u_input.a.xz, vec2<u32>(~abs(u_input.a.x), ~u_input.a.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(var_2.c.c))));
    var var_4 = var_3.x;
    var var_5 = var_1.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>((-global3.x | u_input.b) & _wgslsmith_sub_i32(u_input.b, ~global3.x), -u_input.b), vec2<u32>(~(~(~1u)), _wgslsmith_dot_vec2_u32(u_input.a.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 88330u), ~vec2<u32>(38772u, 26437u)))), firstTrailingBit(7634u), global0[_wgslsmith_index_u32(var_2.d, 21u)], vec4<i32>(-1i) * -vec4<i32>(global3.x, -44794i | u_input.b, -1i, i32(-1i) * -1i));
}

