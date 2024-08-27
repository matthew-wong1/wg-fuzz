struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-277f, -248f, 353f, -472f, 362f, 1311f, 1554f, -2040f, -1146f, 668f, -3117f, -983f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> bool {
    let var_0 = ~firstLeadingBit(min(~min(vec2<u32>(4294967295u, u_input.a.x), arg_1.a.b.a), vec2<u32>(arg_1.b.c.a.x, arg_1.a.c.a.x)));
    var var_1 = !(!(!(!select(false, arg_1.c, arg_1.c))));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-104f, global0[_wgslsmith_index_u32(var_0.x, 12u)], arg_1.a.e.b.x, 1939f) - _wgslsmith_div_vec4_f32(vec4<f32>(987f, -242f, 811f, 217f), vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 12u)], -399f, arg_1.a.c.b.x, global0[_wgslsmith_index_u32(0u, 12u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(651f, global0[_wgslsmith_index_u32(0u, 12u)], -969f, var_2.a.b.b.x) - vec4<f32>(765f, global0[_wgslsmith_index_u32(4294967295u, 12u)], var_2.a.a, var_2.a.c.b.x)), vec4<f32>(1834f, -545f, var_2.b.a, var_2.a.b.b.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(712f, 416f, arg_1.b.a, global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<f32>(-1332f, -457f, 890f, global0[_wgslsmith_index_u32(var_2.b.b.a.x, 12u)]))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.e.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]) + vec4<f32>(1000f, global0[_wgslsmith_index_u32(arg_1.b.b.a.x, 12u)], 644f, global0[_wgslsmith_index_u32(var_2.b.b.a.x, 12u)])))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b.e.b.x, 571f, arg_1.b.c.b.x, -1707f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -1556f, var_2.b.c.b.x)), vec4<f32>(arg_1.a.c.b.x, var_2.b.a, -958f, -240f)))));
    let var_4 = var_2.b;
    return !arg_1.c | !all(select(!vec3<bool>(var_2.c, false, false), vec3<bool>(var_2.c, arg_1.c, false), all(vec3<bool>(arg_1.c, arg_1.c, var_2.c))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = select(select(vec2<bool>(arg_0.x, false), vec2<bool>(false, arg_0.x), select(vec2<bool>(true, !arg_0.x), !(!vec2<bool>(arg_0.x, true)), 1i > _wgslsmith_mult_i32(var_0.c, var_0.c))), !select(!arg_0.yy, select(arg_0.yx, !vec2<bool>(arg_0.x, true), vec2<bool>(true, true)), true), true || select((arg_1 < 20033u) || all(vec3<bool>(true, true, true)), 777f <= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_2.b.x), func_3(vec2<i32>(1i, arg_3), Struct_3(Struct_2(878f, arg_2, Struct_1(u_input.a.ww, vec3<f32>(-612f, 1174f, var_0.b.x), var_0.c), vec4<i32>(29882i, -21746i, arg_3, -13895i), arg_2), Struct_2(var_0.b.x, arg_2, Struct_1(arg_2.a, vec3<f32>(var_0.b.x, global0[_wgslsmith_index_u32(var_0.a.x, 12u)], 287f), 30814i), vec4<i32>(19702i, arg_2.c, -10819i, var_0.c), Struct_1(vec2<u32>(0u, 34240u), vec3<f32>(var_0.b.x, arg_2.b.x, global0[_wgslsmith_index_u32(var_0.a.x, 12u)]), var_0.c)), arg_0.x)) & true));
    global0 = array<f32, 12>();
    var var_2 = min(u_input.a.xww, u_input.a.xwz | ~_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(arg_1, 7896u, var_0.a.x)), u_input.a.wzx & u_input.a.xwx));
    return arg_2;
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    global0 = array<f32, 12>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1834f)))), func_2(vec3<bool>(true, true, true), u_input.a.x, Struct_1(u_input.a.wy & vec2<u32>(22090u, 0u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_0.x), arg_0, true)), _wgslsmith_sub_i32(-5462i, -16151i)), ~32382i), func_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x), func_2(vec3<bool>(true, true, true), firstLeadingBit(u_input.a.x), Struct_1(vec2<u32>(49036u, u_input.a.x), vec3<f32>(arg_0.x, -1980f, global0[_wgslsmith_index_u32(4294967295u, 12u)]), -2147483647i), ~(-2147483647i)), -2147483647i), min(~vec4<i32>(14658i, 1i, -2147483647i, 9473i), vec4<i32>(min(-5409i, -2821i), -28350i, countOneBits(1i), 21762i)), func_2(vec3<bool>(true, true, true), ~(~0u), func_2(vec3<bool>(false, false, true), _wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(u_input.a.x, 0u)), Struct_1(vec2<u32>(u_input.a.x, 47992u), vec3<f32>(1000f, 1128f, 159f), 28829i), -1i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, 0i), 1i, -2147483647i))), Struct_2(global0[_wgslsmith_index_u32(~u_input.a.x, 12u)], func_2(vec3<bool>(true, true, true), 8509u, func_2(vec3<bool>(true, true, true), reverseBits(u_input.a.x), Struct_1(vec2<u32>(u_input.a.x, 4294967295u), arg_0, -1i), -1i), func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), _wgslsmith_mult_u32(u_input.a.x, 28455u), Struct_1(u_input.a.zw, vec3<f32>(arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), 21973i), 1i).c), func_2(vec3<bool>(true, true, true), u_input.a.x, Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1762f, -1323f, -1088f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 527f, arg_0.x), vec3<bool>(false, true, true))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -50669i, -2147483647i), vec3<i32>(-1i, -1i, 2147483647i))), -34006i), vec4<i32>(max(36820i, max(44465i, 0i)), _wgslsmith_div_i32(-49710i, 1i), firstTrailingBit(~1i), -6482i), Struct_1(abs(vec2<u32>(u_input.a.x, 86376u)), _wgslsmith_f_op_vec3_f32(sign(arg_0)), ~firstTrailingBit(-2147483647i))), false);
    var var_1 = select(vec4<bool>(var_0.c, all(select(vec4<bool>(var_0.c, true, var_0.c, true), vec4<bool>(var_0.c, var_0.c, true, false), func_3(vec2<i32>(5481i, -24521i), Struct_3(var_0.b, Struct_2(var_0.a.e.b.x, Struct_1(vec2<u32>(11458u, 1u), var_0.b.b.b, var_0.a.d.x), var_0.b.c, var_0.b.d, var_0.a.b), var_0.c)))), any(!select(vec3<bool>(true, false, var_0.c), vec3<bool>(false, true, var_0.c), false)), !var_0.c), select(vec4<bool>(any(vec3<bool>(var_0.c, var_0.c, var_0.c)), var_0.c, true, var_0.c), vec4<bool>(select(any(vec2<bool>(true, var_0.c)), var_0.c || false, func_3(vec2<i32>(-13404i, var_0.b.b.c), Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], Struct_1(vec2<u32>(24587u, u_input.a.x), var_0.a.e.b, 1i), var_0.b.e, var_0.a.d, Struct_1(vec2<u32>(50119u, 21540u), var_0.b.c.b, var_0.a.c.c)), var_0.a, true))), var_0.c, var_0.c, -103425i > var_0.b.c.c), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)] >= 1766f, -1780f < var_0.a.b.b.x, all(vec4<bool>(true, var_0.c, true, false)), global0[_wgslsmith_index_u32(17308u, 12u)] == 388f)), !(!vec4<bool>(true, all(vec4<bool>(var_0.c, true, var_0.c, false)), 259f == global0[_wgslsmith_index_u32(u_input.a.x, 12u)], var_0.b.c.c < var_0.a.d.x)));
    var_1 = select(select(!vec4<bool>(var_0.c, true, select(false, var_0.c, true), true), vec4<bool>(true, true, true, true), var_0.c), select(!select(select(vec4<bool>(false, var_0.c, false, true), vec4<bool>(false, false, var_0.c, var_1.x), var_1.x), !vec4<bool>(var_1.x, true, var_0.c, false), true), vec4<bool>(var_1.x, var_0.c, false, false), func_3(var_0.b.d.ww, Struct_3(var_0.a, Struct_2(var_0.b.b.b.x, var_0.b.b, var_0.a.e, var_0.b.d, var_0.b.c), true | var_1.x))), vec4<bool>(!(!var_0.c), false, !(var_0.c | all(vec4<bool>(var_0.c, false, true, var_1.x))), any(vec2<bool>(var_1.x || var_0.c, true))));
    let var_2 = min(41700u, var_0.b.e.a.x);
    return -317f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 12u)], global0[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_f_op_f32(1295f * -1222f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], -737f)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-510f, global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<f32>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 534f), vec2<f32>(-318f, -872f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-1461f * var_0.x), func_2(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true)), ~4294967295u, func_2(vec3<bool>(true, true, true), _wgslsmith_add_u32(54672u, reverseBits(88868u)), Struct_1(vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -1000f), vec3<f32>(606f, global0[_wgslsmith_index_u32(0u, 12u)], var_0.x))), firstLeadingBit(-1i)), _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, 34276i), ~1i)), -1i), Struct_1(~_wgslsmith_sub_vec2_u32(abs(u_input.a.ww), select(u_input.a.wz, vec2<u32>(u_input.a.x, u_input.a.x), true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, -403f, -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(1u, 12u)], -430f, var_0.x)))), vec3<bool>(true, all(vec4<bool>(false, true, false, false)), true))), abs(32549i)), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-10345i, 0i, -2147483647i, 72936i), vec4<i32>(0i, -2147483647i, 10965i, 0i), vec4<i32>(-2147483647i, -1i, -34373i, 1i)))), func_2(vec3<bool>(true, true, true), 37221u, func_2(vec3<bool>(true, true, true), 0u, func_2(vec3<bool>(true, true, true), u_input.a.x, Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec3<f32>(global0[_wgslsmith_index_u32(1u, 12u)], var_0.x, -120f), 1i), 1i), 0i), firstTrailingBit(1i) << (func_2(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), u_input.a.x, func_2(vec3<bool>(true, false, false), 0u, Struct_1(u_input.a.yz, vec3<f32>(global0[_wgslsmith_index_u32(0u, 12u)], 1279f, 1234f), -1567i), 0i), 34539i).a.x % 32u)));
    let var_2 = Struct_2(var_1.b.b.x, var_1.b, var_1.c, ~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(var_1.d, vec4<i32>(15715i, -2147483647i, var_1.e.c, var_1.c.c)), _wgslsmith_clamp_vec4_i32(var_1.d, var_1.d, var_1.d)) >> (~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), var_1.c);
    var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.x))))))), var_2.c, func_2(vec3<bool>(true, true, true), ~(~(u_input.a.x | 0u)), Struct_1(var_1.e.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2361f, -1299f, var_1.c.b.x) - var_1.e.b) - vec3<f32>(var_1.a, 948f, -910f)), ~(-2147483647i)), var_1.d.x), select(var_2.d, var_1.d, false), var_1.e);
    var_1 = var_2;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-389f, _wgslsmith_f_op_f32(min(-1018f, _wgslsmith_f_op_f32(f32(-1f) * -1171f)))), var_1.b.b.x)), global0[_wgslsmith_index_u32(var_1.e.a.x, 12u)]);
    var var_3 = Struct_2(var_0.x, var_1.e, Struct_1(u_input.a.yy, _wgslsmith_f_op_vec3_f32(-var_1.b.b), _wgslsmith_dot_vec3_i32(var_1.d.xxz, vec3<i32>(_wgslsmith_mult_i32(var_1.e.c, var_1.d.x), var_1.e.c & -6061i, _wgslsmith_sub_i32(var_2.e.c, -1i)))), max(var_1.d, vec4<i32>(var_2.c.c, countOneBits(-79110i) & var_2.d.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(var_1.d.ww), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_2.b.c), var_2.d.yx)), var_1.e.c)), func_2(vec3<bool>(var_2.c.b.x == _wgslsmith_f_op_f32(f32(-1f) * -705f), false, any(vec4<bool>(true, true, true, true))), u_input.a.x, var_1.e, firstLeadingBit(firstTrailingBit(2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.c.a.x, 4294967295u, 10816u);
}

