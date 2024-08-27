struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 8>;

var<private> global2: f32 = 520f;

var<private> global3: vec2<f32>;

var<private> global4: array<u32, 23> = array<u32, 23>(7972u, 4294967295u, 19261u, 4294967295u, 61947u, 1u, 43966u, 1939u, 4294967295u, 17803u, 60436u, 4294967295u, 4294967295u, 109677u, 48022u, 0u, 15148u, 5295u, 7898u, 0u, 4294967295u, 11643u, 4294967295u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_2) -> bool {
    global4 = array<u32, 23>();
    global1 = array<vec4<f32>, 8>();
    var var_0 = arg_2.x;
    var var_1 = 1i >= -abs((i32(-1i) * -2147483647i) << (select(global4[_wgslsmith_index_u32(u_input.a, 23u)], 0u, global0.a.x) % 32u));
    return true;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = Struct_2(Struct_1(!vec4<bool>(false, true || arg_1.a.x, global0.d.x == arg_1.d.x, true), select(arg_1.b, _wgslsmith_dot_vec2_i32(-vec2<i32>(global0.b, global0.b), _wgslsmith_sub_vec2_i32(vec2<i32>(13570i, global0.b), vec2<i32>(-39279i, arg_1.b))), !global0.c), global0.c & all(select(arg_1.a, vec4<bool>(true, true, false, true), vec4<bool>(global0.c, arg_1.c, false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, global0.d.x, 725f)) + vec4<f32>(arg_1.d.x, 209f, 1000f, -1999f))), 0u), any(!global0.a.zy), arg_1);
    global4 = array<u32, 23>();
    global0 = Struct_1(!arg_1.a, _wgslsmith_sub_i32(~arg_1.b, arg_2), false, _wgslsmith_f_op_vec4_f32(round(global0.d)), var_0.a.e & (~abs(global0.e) | (~u_input.a ^ (var_0.c.e & 0u))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1805f, global0.d.x) - _wgslsmith_div_f32(-1149f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-726f, -1244f) * 168f)))));
    let var_1 = Struct_1(vec4<bool>(any(vec4<bool>(!global0.a.x, all(global0.a.zz), true, true)), false, var_0.b, false), global0.b, arg_1.c, _wgslsmith_f_op_vec4_f32(-var_0.c.d), global4[_wgslsmith_index_u32(4294967295u, 23u)]);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -160f))) * _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1.d.x)), _wgslsmith_div_f32(global3.x, var_0.c.d.x))))), arg_1.d.x));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<u32>) -> bool {
    let var_0 = Struct_1(vec4<bool>(true, arg_1.c, !(50335u <= arg_1.e), false), arg_1.b, !(true | arg_0), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(937f, 874f, _wgslsmith_f_op_f32(func_3(~0u, arg_1, 1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.d.x + global0.d.x)))), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), 562f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x - global3.x)))))), ~1u);
    var var_1 = !vec2<bool>(func_1(-4580i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1744f, 984f, global0.d.x, 212f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_1.d))), Struct_2(var_0, false, Struct_1(var_0.a, 1i, true, global1[_wgslsmith_index_u32(arg_1.e, 8u)], 1u))), arg_0);
    var var_2 = Struct_1(select(vec4<bool>(true, ~5676u > global4[_wgslsmith_index_u32(1u, 23u)], false, var_0.c), !select(vec4<bool>(global0.a.x, var_1.x, false, var_1.x), select(vec4<bool>(false, true, var_1.x, var_0.a.x), vec4<bool>(false, false, arg_1.c, arg_1.c), vec4<bool>(false, true, false, false)), true), arg_1.a.x), var_0.b, any(global0.a.ww), _wgslsmith_div_vec4_f32(global0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, 1481f, 466f, global3.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-567f, global3.x, arg_1.d.x, global3.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1335f, var_0.d.x, arg_1.d.x, -302f))))), arg_3.x);
    var_1 = select(select(!select(select(vec2<bool>(false, global0.a.x), arg_1.a.xy, vec2<bool>(true, true)), vec2<bool>(var_0.a.x, var_2.c), select(arg_1.a.zy, vec2<bool>(true, var_2.c), arg_0)), vec2<bool>(all(vec2<bool>(true, true)), global0.c), vec2<bool>(true, var_0.c)), !vec2<bool>(var_0.a.x, func_1(global0.b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1033f, -675f, arg_1.d.x, 161f))), vec4<f32>(var_2.d.x, global0.d.x, -442f, -1261f), Struct_2(Struct_1(var_0.a, var_2.b, var_0.c, vec4<f32>(global3.x, var_2.d.x, 756f, -1384f), 1u), global0.a.x, Struct_1(global0.a, global0.b, true, arg_1.d, arg_3.x)))), vec2<bool>(true, any(var_0.a.xxy)));
    var var_3 = vec2<bool>(all(select(!var_0.a.yz, var_2.a.xz, !(!var_2.a.ww))), !(!(15908u > u_input.a)));
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(!select(select(vec4<bool>(true, arg_0.x, false, true), vec4<bool>(arg_0.x, false, arg_2.x, arg_2.x), !global0.a), vec4<bool>(true, arg_0.x, false, false), false), _wgslsmith_add_i32(arg_1, _wgslsmith_mod_i32(arg_1, 26897i)), !(!any(vec4<bool>(arg_2.x, global0.c, true, false))) & arg_0.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(global1[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.a, 8u)])))))), u_input.a);
    let var_1 = !vec4<bool>(!global0.c, func_1(i32(-1i) * -26364i, _wgslsmith_f_op_vec4_f32(exp2(global0.d)), _wgslsmith_f_op_vec4_f32(select(var_0.d, _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(var_0.e, 8u)] - var_0.d), true)), Struct_2(Struct_1(vec4<bool>(arg_2.x, global0.c, true, false), arg_1, true, global0.d, var_0.e), global0.c, Struct_1(vec4<bool>(false, arg_2.x, global0.a.x, var_0.a.x), arg_1, true, var_0.d, 45147u))), var_0.d.x > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(460f - 313f), -538f)), all(vec4<bool>(false, true, true, false)));
    var var_2 = abs(~vec3<u32>(0u, 43417u, var_0.e)) ^ ~min(vec3<u32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.e, global4[_wgslsmith_index_u32(0u, 23u)], var_0.e, 1u), vec4<u32>(4294967295u, 4294967295u, var_0.e, 3617u)), 23u)], ~global0.e, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e, u_input.a, var_0.e, u_input.a), vec4<u32>(2170u, 72980u, 30211u, u_input.a))), vec3<u32>(reverseBits(1u), _wgslsmith_div_u32(global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(1u, 23u)]), global4[_wgslsmith_index_u32(firstLeadingBit(39260u), 23u)]));
    let var_3 = var_2.yx;
    let var_4 = Struct_1(!global0.a, arg_1, all(select(!arg_0, var_0.a.wy, var_1.x)), vec4<f32>(-144f, 633f, arg_3.x, -777f), _wgslsmith_mod_u32(3110u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_0.e), vec3<u32>(64194u, 27207u, 17706u)))));
    return Struct_1(!select(!var_0.a, var_0.a, false), firstTrailingBit(firstLeadingBit(var_4.b)), arg_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.d) - vec4<f32>(-125f, global3.x, -971f, var_4.d.x)))), ~_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_4.e, var_0.e, 58165u)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global0.e, 18723u), vec3<u32>(1u, var_3.x, 0u)), abs(vec3<u32>(0u, 0u, var_4.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(294f, _wgslsmith_div_f32(919f, global3.x)))), vec2<f32>(global0.d.x, -671f));
    let var_1 = global0.a;
    let var_2 = !select(any(vec3<bool>(global0.e != u_input.a, true, global0.a.x)), all(select(vec4<bool>(false, var_1.x, false, global0.c), global0.a, !var_1.x)), !(any(global0.a) || false));
    var var_3 = func_4(vec2<bool>(true, all(vec3<bool>(func_1(global0.b, global1[_wgslsmith_index_u32(u_input.a, 8u)], vec4<f32>(global0.d.x, global0.d.x, global0.d.x, 513f), Struct_2(Struct_1(vec4<bool>(global0.a.x, global0.c, var_2, var_1.x), -19131i, true, global1[_wgslsmith_index_u32(u_input.a, 8u)], global0.e), var_1.x, Struct_1(vec4<bool>(false, var_2, global0.c, true), 28400i, false, vec4<f32>(-1937f, global0.d.x, var_0.x, -1140f), 68184u))), func_2(true, Struct_1(global0.a, 0i, global0.c, global0.d, 0u), vec4<f32>(var_0.x, -776f, var_0.x, -1000f), vec3<u32>(4294967295u, 0u, 0u)), !var_2))), _wgslsmith_add_i32(-20465i, 2147483647i), !select(select(global0.a.yyx, select(var_1.zwz, vec3<bool>(var_2, false, true), true), vec3<bool>(var_1.x, false, global0.c)), vec3<bool>(any(var_1.zx), var_2, true), var_2), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d.xz * var_0))) + vec2<f32>(-125f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1386f)), -771f)))));
    var var_4 = ~50635i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-32876i, ~1i) | select(_wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, global0.b), -vec2<i32>(var_3.b, 897i)), _wgslsmith_div_vec2_i32(~vec2<i32>(var_3.b, 64556i), vec2<i32>(var_3.b, 2147483647i) << (vec2<u32>(global0.e, 0u) % vec2<u32>(32u))), !func_4(vec2<bool>(var_2, var_3.c), -6501i, vec3<bool>(false, true, true), var_3.d.yx).a.zx), _wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-8001i, 2147483647i), ~vec2<i32>(var_3.b, -2147483647i)), -var_3.b), vec2<i32>(2147483647i, 13009i), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, global0.d.x)) - -437f)));
}

