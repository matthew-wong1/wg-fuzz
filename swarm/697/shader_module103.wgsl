struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 16>;

var<private> global2: bool = true;

var<private> global3: array<Struct_4, 8>;

var<private> global4: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    return Struct_2(arg_1, !vec2<bool>(false, !any(global4.b)));
}

fn func_3() -> Struct_2 {
    let var_0 = global4.a.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global4.a.b, -1157f, global4.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(114510u, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)])) + -2523f), global1[_wgslsmith_index_u32(42405u, 16u)])));
    var var_2 = 4294967295u;
    var var_3 = Struct_2(global4.a, vec2<bool>(true, all(vec2<bool>(global4.b.x, !global4.b.x))));
    let var_4 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(max(1i, max(0i, -32300i)), global4.a.a.x), -(~(i32(-1i) * -2147483647i))), var_3.a.a);
    return func_2(-23625i, func_2(~abs(var_3.a.a.x) >> (u_input.b % 32u), func_2(0i, func_2(var_4.x, func_2(var_4.x, Struct_1(vec2<i32>(27640i, 36008i), -1000f), 18831u).a, _wgslsmith_clamp_u32(u_input.b, u_input.a.x, u_input.a.x)).a, u_input.a.x).a, 0u).a, ~(1u ^ u_input.a.x));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    global3 = array<Struct_4, 8>();
    var var_0 = Struct_1(~select(vec2<i32>(global4.a.a.x, arg_0.c.a.x), abs(vec2<i32>(arg_0.c.a.x, 1i)), false), arg_0.a.a.b);
    global4 = func_2(arg_0.d.a.a.x, func_2(~arg_0.a.a.a.x, arg_0.c, u_input.b).a, u_input.b);
    var_0 = Struct_1(var_0.a, var_0.b);
    var var_1 = ~var_0.a;
    return func_3();
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = select(global4.b, global4.b, true);
    let var_1 = func_4(Struct_3(func_2(~(-13536i << (arg_3.x % 32u)), Struct_1(arg_0.yx, -839f), 4294967295u), vec3<bool>(var_0.x, true || var_0.x, !global4.b.x), global4.a, func_3(), global4.a.a.x));
    var var_2 = global3[_wgslsmith_index_u32(~reverseBits(u_input.b) & max(1u, arg_3.x), 8u)];
    var var_3 = vec2<u32>(countOneBits(_wgslsmith_dot_vec2_u32(arg_3, vec2<u32>(~arg_3.x, firstTrailingBit(1u)))), reverseBits(19121u));
    let var_4 = Struct_3(Struct_2(Struct_1(abs(-var_2.a.a.a.a), -820f), !select(!var_1.b, func_3().b, -766f != var_2.a.c.b)), var_2.a.b, Struct_1(~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-17587i, var_1.a.a.x), global4.a.a), arg_0.zy), func_3().a.b), func_4(var_2.a), var_1.a.a.x);
    return func_2(-15416i, global4.a, 0u);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_2(func_4(arg_3).a, vec2<bool>(true, false));
    let var_1 = Struct_4(Struct_3(Struct_2(func_1(-vec3<i32>(-3342i, 1i, arg_2.c.a.x), func_1(vec3<i32>(-1i, -2147483647i, arg_0.a.a.x), var_0.a.b, vec4<f32>(-1036f, var_0.a.b, 1000f, arg_0.a.b), u_input.a).a.b, _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.a.b, 304f, global1[_wgslsmith_index_u32(71532u, 16u)], arg_2.a.a.b), vec4<f32>(-175f, arg_0.a.b, arg_3.c.b, global1[_wgslsmith_index_u32(0u, 16u)])), max(u_input.a, u_input.a)).a, vec2<bool>(1u > u_input.a.x, false)), !select(!vec3<bool>(arg_0.b.x, true, false), arg_3.b, true), Struct_1(~(arg_0.a.a | arg_3.c.a), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(976f * arg_3.c.b))), Struct_2(func_3().a, vec2<bool>(global4.b.x, true)), global4.a.a.x), var_0);
    let var_2 = func_3().a;
    let var_3 = i32(-1i) * -1i;
    let var_4 = -_wgslsmith_clamp_vec4_i32(firstLeadingBit(~(-vec4<i32>(0i, var_0.a.a.x, 7786i, -51780i))), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.a.x, 15561i, var_2.a.x, var_0.a.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-20491i, 13455i, var_1.a.c.a.x, var_2.a.x), vec4<i32>(1i, global4.a.a.x, -29156i, 42675i))) | _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_0.a.a.x, var_3, arg_0.a.a.x) | vec4<i32>(global4.a.a.x, -4715i, 2147483647i, 0i), vec4<i32>(7659i, 1i, var_2.a.x, var_0.a.a.x), firstTrailingBit(vec4<i32>(-24519i, var_0.a.a.x, -8553i, var_0.a.a.x))), vec4<i32>(arg_2.c.a.x, -1i, 74838i, -15788i));
    return _wgslsmith_f_op_f32(min(228f, _wgslsmith_f_op_f32(753f - var_0.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(vec3<u32>(~select(1u, 60355u, global4.b.x), 4294967295u, 78400u));
    global0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(81720u, 16u)] * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_1(vec3<i32>(global4.a.a.x, global4.a.a.x, global4.a.a.x), -866f, vec4<f32>(269f, 382f, -1653f, -933f), u_input.a), true, Struct_3(Struct_2(Struct_1(vec2<i32>(global4.a.a.x, global4.a.a.x), 1609f), global4.b), vec3<bool>(global4.b.x, global4.b.x, global4.b.x), global4.a, Struct_2(Struct_1(global4.a.a, 618f), global4.b), 28695i), Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, global4.a.a.x), -1572f), vec2<bool>(global4.b.x, global4.b.x)), vec3<bool>(false, global4.b.x, global4.b.x), global4.a, Struct_2(Struct_1(vec2<i32>(global4.a.a.x, 19770i), global1[_wgslsmith_index_u32(4294967295u, 16u)]), global4.b), global4.a.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global4.a.b)), -1033f)) + 292f));
    let var_1 = -1333f;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 16u)] + global4.a.b))), _wgslsmith_f_op_f32(global4.a.b + -1082f)), vec2<f32>(func_2(max(-2147483647i, 1244i), global4.a, 6513u).a.b, _wgslsmith_f_op_f32(f32(-1f) * -302f)), global4.b)), vec2<f32>(_wgslsmith_div_f32(586f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 16u)], -126f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-111f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 16u)]) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 16u)] + global4.a.b)))));
    var var_3 = global3[_wgslsmith_index_u32(1u, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(151539u, 0u, _wgslsmith_mult_u32(1u, abs(var_0.x))), var_0.x, select(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.b.a.a.x, var_3.a.e, -22501i), vec3<i32>(6713i, -2147483647i, var_3.b.a.a.x))), vec3<i32>(-1i, var_3.b.a.a.x, ~_wgslsmith_sub_i32(var_3.a.e, var_3.a.c.a.x)), global4.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.a.a.b, -455f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(825f, global4.a.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1529f) + vec2<f32>(960f, 908f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1046f, var_2.x))), any(var_3.a.b)))), _wgslsmith_div_vec3_u32(~var_0 | _wgslsmith_mod_vec3_u32(abs(var_0), _wgslsmith_mult_vec3_u32(var_0, vec3<u32>(4294967295u, var_0.x, 0u))), _wgslsmith_mod_vec3_u32(var_0, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 49870u, 1u) | var_0, var_0))));
}

