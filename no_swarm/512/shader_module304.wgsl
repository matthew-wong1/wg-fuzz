struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20>;

var<private> global1: bool = true;

var<private> global2: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(34737u, 4294967295u, 6524u, 1u), vec4<u32>(4294967295u, 144642u, 4294967295u, 0u), vec4<u32>(4294967295u, 49429u, 749u, 68712u), vec4<u32>(820u, 43803u, 60991u, 0u), vec4<u32>(5659u, 25731u, 42409u, 0u), vec4<u32>(20310u, 28123u, 25042u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(74261u, 1u, 29842u, 43938u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(62146u, 33685u, 0u, 33534u), vec4<u32>(84u, 0u, 1u, 44496u), vec4<u32>(9097u, 25152u, 27688u, 70238u), vec4<u32>(0u, 9592u, 30602u, 11269u), vec4<u32>(23584u, 26340u, 4294967295u, 37398u), vec4<u32>(1u, 25201u, 1u, 0u), vec4<u32>(5427u, 10729u, 10419u, 1u), vec4<u32>(0u, 1u, 4351u, 4294967295u), vec4<u32>(52348u, 41029u, 52695u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(105944u, 16991u, 14463u, 16015u), vec4<u32>(4294967295u, 22617u, 8567u, 24535u), vec4<u32>(0u, 0u, 61519u, 26137u), vec4<u32>(18799u, 1u, 34456u, 36786u), vec4<u32>(15076u, 0u, 0u, 4294967295u));

var<private> global3: bool;

var<private> global4: array<i32, 26>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = vec4<i32>(-2147483647i, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 26u)], global4[_wgslsmith_index_u32(arg_0.a.x, 26u)], -1i)), vec3<i32>(-1409i, global4[_wgslsmith_index_u32(9722u, 26u)], global4[_wgslsmith_index_u32(60919u, 26u)]) & vec3<i32>(1i, global4[_wgslsmith_index_u32(56914u, 26u)], global4[_wgslsmith_index_u32(1u, 26u)])), abs(countOneBits(vec3<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 26u)], 17098i, global4[_wgslsmith_index_u32(34982u, 26u)]))))), _wgslsmith_mod_i32(_wgslsmith_div_i32(global4[_wgslsmith_index_u32(arg_0.a.x, 26u)], ~_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(arg_0.a.x, 26u)], global4[_wgslsmith_index_u32(4294967295u, 26u)])), -(~(~global4[_wgslsmith_index_u32(u_input.b.x, 26u)]))), 1i);
    var var_1 = -1i;
    global2 = array<vec4<u32>, 24>();
    global1 = !(!(!any(vec4<bool>(false, false, true, false))));
    let var_2 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, true)))), all(vec2<bool>(true, true))), vec2<bool>((countOneBits(global4[_wgslsmith_index_u32(1u, 26u)]) & var_0.x) > _wgslsmith_add_i32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a.x, u_input.a.x), 26u)], -global4[_wgslsmith_index_u32(28688u, 26u)]), false), !(_wgslsmith_f_op_f32(round(-123f)) < -198f));
    return u_input.b.x;
}

fn func_2() -> u32 {
    global0 = array<vec2<i32>, 20>();
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-418f, 1000f, false))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f) - 598f)), -1585f, -612f), vec4<f32>(-2501f, _wgslsmith_f_op_f32(round(501f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1727f - 196f)))), _wgslsmith_f_op_f32(sign(-765f))));
    var var_1 = var_0.x;
    var var_2 = vec3<bool>(false, _wgslsmith_div_u32(_wgslsmith_sub_u32(func_3(Struct_4(global2[_wgslsmith_index_u32(u_input.b.x, 24u)])), ~8228u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), global2[_wgslsmith_index_u32(0u, 24u)])) != u_input.b.x, all(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), true)));
    global4 = array<i32, 26>();
    return _wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(u_input.b.x, (18682u | u_input.b.x) | select(4294967295u, u_input.a.x, var_2.x), 66293u)) >> (0u % 32u);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 24u)];
    global4 = array<i32, 26>();
    let var_1 = max(_wgslsmith_dot_vec4_u32(abs(select(countOneBits(global2[_wgslsmith_index_u32(34635u, 24u)]), firstLeadingBit(vec4<u32>(u_input.a.x, var_0.x, 42415u, u_input.b.x)), true)), ~_wgslsmith_add_vec4_u32(vec4<u32>(61414u, 4294967295u, var_0.x, u_input.b.x), global2[_wgslsmith_index_u32(u_input.b.x | 72574u, 24u)])), u_input.b.x);
    var_0 = _wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(_wgslsmith_clamp_u32(7638u, 32456u, 111640u) << (_wgslsmith_mod_u32(u_input.b.x, 36038u) % 32u)), select(0u, ~(~var_1), false)), 24u)], vec4<u32>(min(var_0.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, var_0.x), ~53650u)), func_2(), 52282u, ~4294967295u));
    var var_2 = abs(~(~vec4<i32>(global4[_wgslsmith_index_u32(~u_input.a.x, 26u)], firstLeadingBit(15215i), -26478i, 1i)));
    return Struct_2(Struct_1(global4[_wgslsmith_index_u32(var_0.x, 26u)], vec4<bool>(false, _wgslsmith_sub_u32(9196u, u_input.a.x) < ~23721u, arg_0.x, false)));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = func_1(!vec4<bool>(arg_0.a.b.x, !arg_0.a.b.x, all(vec4<bool>(true, true, arg_1, arg_0.a.b.x)), any(vec3<bool>(arg_1, false, arg_1))), func_1(select(func_1(select(arg_0.a.b, vec4<bool>(arg_0.a.b.x, arg_1, arg_0.a.b.x, arg_1), arg_0.a.b.x), vec2<bool>(true, true)).a.b, vec4<bool>(true, true, arg_0.a.b.x, false), all(select(vec2<bool>(arg_0.a.b.x, false), arg_0.a.b.zw, arg_0.a.b.wy))), !arg_0.a.b.wy).a.b.zw).a;
    var var_1 = !arg_0.a.b.xyx;
    var var_2 = Struct_3(Struct_1(-36612i, vec4<bool>(false, select(true, false, any(var_0.b)), ~u_input.b.x > 1u, all(arg_0.a.b.yy))), global2[_wgslsmith_index_u32(u_input.b.x, 24u)], vec3<u32>(~1u, abs(func_2()), ~u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(786f, 2349f)))), -1564f, 1000f)));
    global3 = false;
    global4 = array<i32, 26>();
    return func_1(select(vec4<bool>(!arg_1 || (72035u < var_2.b.x), true, true, true), !arg_0.a.b, arg_0.a.b), vec2<bool>(all(func_1(!var_0.b, vec2<bool>(false, true)).a.b.yw), false | !(-513f > var_2.d.x))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(vec4<bool>(true, true, true, true), vec2<bool>(true, true)), select(!((4294967295u > u_input.b.x) && true), true, true));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 26u)] & global4[_wgslsmith_index_u32(u_input.b.x, 26u)], 1i), ~_wgslsmith_add_vec2_i32(min(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], vec2<i32>(var_0.a, 2147483647i)), global0[_wgslsmith_index_u32(~98564u, 20u)])), !(!select(vec4<bool>(true, var_0.b.x, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), false), var_0.b)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 797f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1125f))));
    global1 = !all(func_4(func_1(vec4<bool>(true, var_0.b.x, var_0.b.x, var_1.b.x), !var_0.b.xx), false).b.yxw);
    global3 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -abs(vec4<i32>(58881i, var_1.a, var_0.a, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1134i, ~(-2147483647i), 1i, i32(-1i) * -27170i), -vec4<i32>(var_1.a, var_0.a, var_0.a, 2876i))), var_0.a, _wgslsmith_f_op_f32(750f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-387f, var_2)) - _wgslsmith_f_op_f32(var_2 + _wgslsmith_div_f32(var_2, 121f)))));
}

