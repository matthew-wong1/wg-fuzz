struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 24> = array<bool, 24>(false, false, false, true, false, true, true, true, true, true, false, false, true, false, false, true, true, false, false, false, true, false, true, false);

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(false, false), vec3<i32>(-59544i, 38354i, 29535i));

var<private> global4: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec4<i32>(2147483647i, 1i, -1i, -17210i)), Struct_3(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -1i)), Struct_3(vec4<i32>(-228i, 0i, 1069i, 1i)), Struct_3(vec4<i32>(2147483647i, i32(-2147483648), -21620i, 0i)), Struct_3(vec4<i32>(2147483647i, 0i, 1i, 1375i)), Struct_3(vec4<i32>(-1i, 2147483647i, -1i, 2147483647i)), Struct_3(vec4<i32>(0i, -35454i, -1i, 40123i)), Struct_3(vec4<i32>(2147483647i, 1i, 2147483647i, -23732i)), Struct_3(vec4<i32>(40530i, -24650i, -25057i, 17726i)), Struct_3(vec4<i32>(-29991i, 0i, i32(-2147483648), 1i)), Struct_3(vec4<i32>(-27515i, 47932i, 0i, -1i)), Struct_3(vec4<i32>(-1i, 2147483647i, 44474i, i32(-2147483648))), Struct_3(vec4<i32>(-31877i, 11509i, 0i, i32(-2147483648))), Struct_3(vec4<i32>(-15538i, -23069i, i32(-2147483648), -1i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1260f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1243f * 543f)))), _wgslsmith_f_op_f32(-1713f * _wgslsmith_f_op_f32(507f - _wgslsmith_f_op_f32(2267f - -1154f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1533f, -1466f) - _wgslsmith_div_f32(-1408f, -1013f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1246f - -1323f))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -464f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -448f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 121f) - -201f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))))), var_1.x, var_1.x);
    let var_2 = global4[_wgslsmith_index_u32(~u_input.b, 14u)];
    let var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c), u_input.c.x);
    return -(~(~vec3<i32>(global3.b.x, u_input.a, -9140i)) ^ _wgslsmith_mod_vec3_i32(~(-var_2.a.zyy), global3.b));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_1(global3.a, ~func_3());
    let var_1 = vec4<bool>(!(!any(select(vec4<bool>(false, false, global3.a.x, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], true, false, global3.a.x), vec4<bool>(global3.a.x, true, var_0.a.x, var_0.a.x)))), global1[_wgslsmith_index_u32(4294967295u, 24u)], !select(var_0.a.x, false, var_0.a.x), global3.a.x);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1225f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-251f))) + -455f)) * 1000f);
    var var_2 = vec3<u32>(u_input.b, u_input.c.x, 483u);
    var var_3 = var_1.x;
    return firstLeadingBit(var_0.b.zx);
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = !((false & !(global3.b.x >= global3.b.x)) & true);
    var var_1 = all(select(vec2<bool>(!global3.a.x, !(!global1[_wgslsmith_index_u32(u_input.c.x, 24u)])), vec2<bool>(global1[_wgslsmith_index_u32(max(u_input.b, u_input.c.x << (12249u % 32u)), 24u)], var_0), any(!(!vec2<bool>(global1[_wgslsmith_index_u32(101954u, 24u)], global1[_wgslsmith_index_u32(8611u, 24u)])))));
    var var_2 = Struct_3(vec4<i32>(2147483647i, 1i, u_input.a, -2147483647i));
    var var_3 = ~(~9300u);
    var_1 = true & (var_0 && !global1[_wgslsmith_index_u32(74981u, 24u)]);
    return Struct_1(select(select(!global3.a, vec2<bool>(true, all(vec4<bool>(global3.a.x, true, true, false))), true), global3.a, global3.a), ~vec3<i32>(_wgslsmith_clamp_i32(func_2().x, i32(-1i) * -27346i, -42567i), max(~(-12422i), global3.b.x), func_2().x));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    let var_0 = -889f;
    var var_1 = u_input.c.zx;
    var var_2 = -(_wgslsmith_add_i32(22531i, global3.b.x) >> (~0u % 32u));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -634f);
    global3 = func_4(countOneBits(select(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.b.b.x, global3.b.x), global3.b.xz & global3.b.zz), func_2(), true)));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(-u_input.a, global3.b.x);
    let var_1 = var_0.x;
    var var_2 = vec4<i32>(-_wgslsmith_mod_i32(select(min(36882i, global3.b.x), func_1(0i, Struct_3(vec4<i32>(-6903i, u_input.a, var_0.x, global3.b.x)), Struct_2(Struct_1(global3.a, global3.b), Struct_1(vec2<bool>(true, global1[_wgslsmith_index_u32(35470u, 24u)]), global3.b), 1250f)), !global1[_wgslsmith_index_u32(4294967295u, 24u)]), select(_wgslsmith_dot_vec2_i32(global3.b.xy, global3.b.zx), _wgslsmith_add_i32(14268i, global3.b.x), true)), ~(-(~1i ^ _wgslsmith_dot_vec2_i32(global3.b.xx, vec2<i32>(2147483647i, var_0.x)))), u_input.a, _wgslsmith_add_i32(0i, countOneBits(global3.b.x)));
    let var_3 = func_3();
    var var_4 = func_4(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(11977i, 2694i), var_2.xz) ^ vec2<i32>(var_0.x, var_2.x), var_2.xw), select(var_2.wz, -vec2<i32>(35469i, -2147483647i), true)));
    var var_5 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~(~_wgslsmith_mult_u32(1u, 1u)), u_input.c.x), ~(u_input.c.x & 4294967295u)), 14u)];
    global1 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(global3.b.x, -u_input.a, -var_3.x), abs(-27043i));
}

