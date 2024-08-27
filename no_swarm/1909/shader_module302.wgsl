struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-62603i, i32(-2147483648), 0i, 28i);

var<private> global1: Struct_1;

var<private> global2: array<bool, 11>;

var<private> global3: Struct_3 = Struct_3(vec3<f32>(101f, -610f, -1053f), true, vec3<i32>(-26589i, 1i, 1i), Struct_1(false, -1i));

var<private> global4: array<Struct_2, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = ~abs(vec4<i32>(i32(-1i) * -1335i, arg_0 ^ global3.c.x, _wgslsmith_mod_i32(global3.c.x, global3.d.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-20981i, 11970i), u_input.d))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), ~0u, 3424u), ~firstTrailingBit(vec4<u32>(51337u, 1u, u_input.a.x, u_input.a.x)) ^ ((vec4<u32>(u_input.a.x, 14038u, u_input.a.x, 49040u) << (vec4<u32>(4294967295u, 33375u, u_input.a.x, 1u) % vec4<u32>(32u))) ^ (vec4<u32>(u_input.a.x, 50882u, u_input.a.x, 5221u) ^ vec4<u32>(u_input.a.x, 14930u, u_input.a.x, u_input.a.x)))) % vec4<u32>(32u));
    global2 = array<bool, 11>();
    var var_0 = true;
    global2 = array<bool, 11>();
    var var_1 = vec2<bool>(all(vec2<bool>(true, true)), all(!select(select(vec3<bool>(global3.b, true, global1.a), vec3<bool>(global1.a, true, global1.a), vec3<bool>(global3.b, false, false)), select(vec3<bool>(false, global1.a, global3.b), vec3<bool>(true, global3.b, true), vec3<bool>(global3.b, true, true)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x), 11u)])));
    return 19748u;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = ~vec4<i32>(2147483647i, 14877i, global1.b, global3.c.x);
    global4 = array<Struct_2, 17>();
    let var_1 = firstTrailingBit(global0.xyx) << (max(vec3<u32>(_wgslsmith_mult_u32(13930u, 37875u >> (u_input.a.x % 32u)), 32783u, arg_2.x), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, arg_2.x), func_3(u_input.e)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_2.x, 0u), vec4<u32>(arg_2.x, 0u, 43340u, u_input.a.x)), _wgslsmith_add_u32(1u, min(u_input.a.x, u_input.a.x)))) % vec3<u32>(32u));
    var var_2 = !any(arg_0);
    let var_3 = global3.a.x;
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(909f * _wgslsmith_f_op_f32(max(global3.a.x, -594f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) + arg_1), -636f), !(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(u_input.a.x, 0u, u_input.a.x))) >= ~1u), var_0.xwx, Struct_1(true, countOneBits(-10285i)));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_1 {
    global4 = array<Struct_2, 17>();
    global0 = reverseBits(_wgslsmith_add_vec4_i32(firstLeadingBit(abs(vec4<i32>(-2147483647i, global1.b, 35202i, 2147483647i))) | abs(u_input.b), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(abs(u_input.b), u_input.b), u_input.b)));
    global3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.a.x, arg_2.a.x, global3.a.x), arg_2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1912f, -828f, global3.a.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-324f, global3.a.x, global3.a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a.x, -177f, -712f), arg_2.a, vec3<bool>(false, true, arg_2.b))), select(vec3<bool>(true, global1.a, global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec3<bool>(true, global1.a, true), true))) * _wgslsmith_f_op_vec3_f32(-global3.a))), any(vec2<bool>(all(vec4<bool>(global3.b, global2[_wgslsmith_index_u32(0u, 11u)], arg_0, true)), any(!vec2<bool>(global3.d.a, global2[_wgslsmith_index_u32(16057u, 11u)])))), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(6421i, 15061i, arg_2.d.b), firstLeadingBit(vec3<i32>(u_input.b.x, -20343i, 1i)), u_input.b.zxy << (arg_3.wxz % vec3<u32>(32u))), vec3<i32>(arg_1.x, 0i, global3.c.x) | global0.zyy), func_2(select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_3.x, 11u)], false), vec3<bool>(true, global2[_wgslsmith_index_u32(arg_3.x, 11u)], false), false), select(vec3<bool>(false, arg_2.d.a, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec3<bool>(true, false, false), vec3<bool>(global1.a, true, false)), !vec3<bool>(arg_0, global1.a, global3.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), vec3<u32>(422u, abs(arg_3.x), u_input.a.x)).d.b, firstTrailingBit(2147483647i)), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global3.c.x ^ _wgslsmith_dot_vec3_i32(-global3.c, ~vec3<i32>(arg_2.c.x, global0.x, -2466i))));
    global2 = array<bool, 11>();
    var var_0 = ~(~(-44907i & abs(min(global3.c.x, u_input.e))));
    return global3.d;
}

fn func_1() -> bool {
    global2 = array<bool, 11>();
    global1 = func_4(false, u_input.b.www, func_2(!select(!vec3<bool>(global3.d.a, global3.b, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global1.a, global1.a), select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], false), vec3<bool>(true, true, global3.b), vec3<bool>(global3.b, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global1.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-372f, global3.a.x) - _wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(-global3.a.x))), ~vec3<u32>(min(u_input.a.x, u_input.a.x), 7009u, u_input.a.x)), reverseBits(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 56296u) | vec4<u32>(6662u, u_input.a.x, u_input.a.x, 20673u)), ~vec4<u32>(u_input.a.x, 4294967295u, 38445u, 59160u), select(select(vec4<bool>(global3.b, false, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global1.a), vec4<bool>(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(0u, 11u)], false, true), global1.a), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], false, true, global3.b), vec4<bool>(global1.a, false, global1.a, false)))));
    global2 = array<bool, 11>();
    let var_0 = global4[_wgslsmith_index_u32(~u_input.a.x, 17u)];
    let var_1 = var_0.a;
    return any(!(!(!select(vec4<bool>(false, false, global1.a, false), vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], false), vec4<bool>(true, true, global1.a, true)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = !(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 93578u, 60900u), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, 1u), vec3<u32>(6489u, 10894u, 11318u)))), 11u)]);
    let var_1 = 0u;
    var var_2 = 1366f;
    var var_3 = !vec4<bool>(any(vec4<bool>(global1.a, true, true, false)), global1.a, func_2(vec3<bool>(select(var_0, true, false), any(vec4<bool>(true, global1.a, false, false)), !arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(828f))), vec3<u32>(countOneBits(u_input.a.x), 1u, ~18785u)).b, false);
    var var_4 = _wgslsmith_div_u32(select(abs(~u_input.a.x), var_1, true || arg_0.a), var_1);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, !global2[_wgslsmith_index_u32(func_5(Struct_1(func_1(), u_input.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.a.x, -1070f, -235f, -1513f), vec4<f32>(-1720f, global3.a.x, global3.a.x, 119f), true))), -countOneBits(vec2<i32>(global3.c.x, -37627i))), 11u)], true, false);
    var var_1 = _wgslsmith_sub_vec2_i32(global3.c.xz, firstTrailingBit(-vec2<i32>(-2147483647i, 29619i))) & ~u_input.c.yy;
    var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global3.c.x, global0.x, -47077i, 23283i), -_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_1.x, 714i, -1604i), u_input.b), vec4<i32>(-1i) * -vec4<i32>(23256i, -12028i, -6698i, -4697i)), max(u_input.b, -vec4<i32>(-2147483647i, 0i, 2092i, u_input.c.x) << (abs(vec4<u32>(u_input.a.x, u_input.a.x, 8538u, u_input.a.x)) % vec4<u32>(32u)))), -1i);
    global2 = array<bool, 11>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-535f, global3.a.x)), _wgslsmith_f_op_f32(-2082f * -156f)), global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global3.a.x)))))));
    let var_3 = var_2;
    var var_4 = _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.a.x, 61993u) >> (~select(u_input.a, vec2<u32>(0u, 3081u), var_0.yx) % vec2<u32>(32u))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_sub_u32(~1u, _wgslsmith_div_u32(34986u, max(52611u, 77761u)))), vec3<f32>(_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_2, var_2, true))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-556f, _wgslsmith_f_op_f32(var_2 - global3.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * 813f) - _wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(-func_2(select(var_0.xxx, vec3<bool>(global1.a, global3.b, false), global2[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_f_op_f32(abs(160f)), max(vec3<u32>(22266u, u_input.a.x, 4522u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))).a.x)), 22514i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.a.x))), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -160f) + _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(var_2)))), _wgslsmith_f_op_vec3_f32(-global3.a));
}

