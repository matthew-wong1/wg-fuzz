struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 2147483647i, 21918i);

var<private> global1: Struct_3 = Struct_3(47577i, 1u, true, true);

var<private> global2: array<vec4<f32>, 1>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<bool> {
    global0 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(12286i, 43645i, global0.x), vec3<i32>(global1.a, global1.a, 2147483647i)), max(arg_1.c.b, _wgslsmith_div_i32(global0.x, -2147483647i)), min(firstTrailingBit(global1.a), i32(-1i) * -1i)), -u_input.e.zww);
    let var_0 = Struct_3(global1.a, min(22679u, ~(~117215u)) | u_input.b, true, all(select(arg_1.c.a, !arg_1.c.a, true)));
    return select(arg_1.c.a.wy, vec2<bool>(var_0.c, global1.c), select(select(!select(vec2<bool>(var_0.d, true), vec2<bool>(false, false), global1.d), vec2<bool>(true, !global1.d), true), select(select(vec2<bool>(true, true), vec2<bool>(global1.d, true), arg_1.c.a.yy), vec2<bool>(var_0.d, global1.c), _wgslsmith_f_op_f32(-arg_1.b.e.x) == arg_0.x), !arg_1.b.a.wx));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = select(select(select(vec4<bool>(true, false, !arg_2.c, !arg_2.d), vec4<bool>(all(vec4<bool>(global1.c, arg_2.c, global1.c, global1.d)), arg_2.c, true, true), all(vec4<bool>(true, true, false, global1.c))), !select(select(vec4<bool>(global1.d, true, false, arg_2.c), vec4<bool>(global1.c, false, arg_2.d, true), true), select(vec4<bool>(arg_0.x, true, global1.d, false), vec4<bool>(false, arg_2.c, global1.d, arg_0.x), true), vec4<bool>(false, true, arg_2.d, false)), vec4<bool>(any(!vec2<bool>(global1.d, arg_0.x)), arg_2.d, arg_2.d, global1.c)), !vec4<bool>(-2147483647i >= ~global1.a, any(select(vec3<bool>(false, arg_2.c, global1.d), vec3<bool>(true, arg_0.x, true), vec3<bool>(true, true, true))), arg_2.d && !arg_0.x, arg_2.c), !(!(!(!vec4<bool>(arg_2.d, false, arg_0.x, false)))));
    global2 = array<vec4<f32>, 1>();
    let var_1 = Struct_2(u_input.e >> (min(max(~vec4<u32>(arg_2.b, 14474u, 10842u, arg_2.b), countOneBits(vec4<u32>(arg_2.b, u_input.b, 4294967295u, u_input.b))), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, arg_2.b, 4294967295u), vec4<u32>(global1.b, 73239u, global1.b, global1.b), vec4<u32>(0u, arg_1.x, u_input.b, 4294967295u)))) % vec4<u32>(32u)), Struct_1(select(select(select(var_0, vec4<bool>(true, true, false, var_0.x), false), var_0, true), select(vec4<bool>(true, true, true, global1.c), !vec4<bool>(global1.c, global1.c, global1.c, arg_0.x), true), !select(false, true, arg_2.d)), -41359i, countOneBits(select(_wgslsmith_sub_u32(arg_1.x, 4294967295u), arg_2.b >> (global1.b % 32u), true)), _wgslsmith_mod_vec3_u32(arg_1, countOneBits(reverseBits(vec3<u32>(arg_2.b, 1u, global1.b)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(686f, 1803f)))))), Struct_1(select(select(!vec4<bool>(arg_2.c, arg_0.x, arg_2.d, arg_0.x), !var_0, true), select(vec4<bool>(false, false, var_0.x, false), var_0, func_3(vec3<f32>(-553f, -1393f, 686f), Struct_2(u_input.e, Struct_1(vec4<bool>(true, global1.c, arg_2.c, true), -1i, u_input.b, arg_1, vec2<f32>(-146f, -746f)), Struct_1(var_0, -1i, global1.b, arg_1, vec2<f32>(1425f, -1000f)))).x), false), _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(global0.x, arg_2.a)), firstTrailingBit(-2147483647i) | (arg_2.a >> (arg_1.x % 32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, 27293u, arg_2.b, arg_1.x), vec4<u32>(u_input.b, u_input.b, u_input.b, arg_2.b) | vec4<u32>(1u, 25981u, arg_1.x, 2838u)) & arg_1.x, vec3<u32>(arg_1.x, global1.b, 34965u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-588f, 242f), vec2<f32>(-1091f, 232f), var_0.xy))))));
    global1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(trunc(var_1.c.e.x));
    return var_1.c.d;
}

fn func_2(arg_0: f32) -> Struct_3 {
    global1 = Struct_3(_wgslsmith_mod_i32(~(-2147483647i), u_input.e.x), 1u, global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -1370f) - -217f) <= arg_0);
    global2 = array<vec4<f32>, 1>();
    global0 = u_input.e.xwz;
    var var_0 = Struct_1(select(!select(!vec4<bool>(false, global1.d, true, global1.d), vec4<bool>(true, true, global1.d, false), global1.c), vec4<bool>(!all(vec3<bool>(true, global1.d, global1.c)), false, !(!global1.d), false), !(!vec4<bool>(true, global1.c, true, global1.c))), -(~_wgslsmith_dot_vec4_i32(u_input.e >> (vec4<u32>(u_input.b, global1.b, global1.b, 1963u) % vec4<u32>(32u)), -vec4<i32>(68232i, global0.x, -25452i, global0.x))), 1u, _wgslsmith_sub_vec3_u32(func_4(func_3(vec3<f32>(-1091f, -1561f, 614f), Struct_2(u_input.e, Struct_1(vec4<bool>(global1.c, false, true, global1.c), global0.x, global1.b, vec3<u32>(22471u, global1.b, u_input.b), vec2<f32>(-826f, 1852f)), Struct_1(vec4<bool>(true, true, global1.c, global1.c), -1i, 4294967295u, vec3<u32>(48408u, 35117u, 27364u), vec2<f32>(-1572f, 1179f)))), vec3<u32>(4294967295u, global1.b, 4294967295u), Struct_3(-1i, global1.b, global1.c, false)) | ~select(vec3<u32>(40102u, u_input.b, global1.b), vec3<u32>(0u, global1.b, global1.b), global1.d), abs(~vec3<u32>(0u, global1.b, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-782f, -1442f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 358f) - vec2<f32>(arg_0, arg_0))))));
    var var_1 = Struct_1(select(var_0.a, vec4<bool>(true, !global1.c, false, true), !select(var_0.a, !var_0.a, !var_0.a)), ~global0.x, 4294967295u, ~var_0.d, _wgslsmith_f_op_vec2_f32(trunc(var_0.e)));
    return Struct_3(global0.x ^ global0.x, ~_wgslsmith_clamp_u32(84928u, _wgslsmith_dot_vec3_u32(~var_1.d, ~vec3<u32>(62732u, 4294967295u, 4294967295u)), _wgslsmith_div_u32(max(var_1.d.x, var_1.d.x), firstTrailingBit(4294967295u))), !(-var_0.b <= _wgslsmith_sub_i32(1i, -global0.x)), var_0.a.x);
}

fn func_1() -> f32 {
    global1 = func_2(-430f);
    global0 = vec3<i32>(global1.a, i32(-1i) * -global0.x, -_wgslsmith_div_i32(9253i, _wgslsmith_div_i32(global0.x, u_input.c)));
    var var_0 = countOneBits(global0.x);
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, abs(53480u), 6733u), ~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(0u, 0u, global1.b), vec3<u32>(1u, 814u, 40801u)), ~vec3<u32>(u_input.b, 0u, global1.b), min(vec3<u32>(global1.b, global1.b, 4294967295u), vec3<u32>(u_input.b, 32753u, global1.b))) >> (vec3<u32>(0u & _wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b, _wgslsmith_div_u32(u_input.b, ~global1.b)) % vec3<u32>(32u)));
    let var_2 = -32032i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f + 1491f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1689f, 1452f))))) - 1061f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -916f >= _wgslsmith_f_op_f32(func_1());
    var var_1 = -1317f;
    let var_2 = Struct_3(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_add_vec3_i32(~u_input.e.wwy, _wgslsmith_add_vec3_i32(u_input.e.ywy, vec3<i32>(global1.a, 0i, global1.a)))), vec3<i32>(select(u_input.e.x, ~11354i, global1.d), 0i, reverseBits(_wgslsmith_dot_vec2_i32(global0.xz, vec2<i32>(3692i, u_input.a.x))))), _wgslsmith_div_u32(select(~global1.b, ~99935u, global1.d) >> (1u % 32u), 4294967295u), !global1.d, !(!func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1051f, 1693f, 918f)), Struct_2(vec4<i32>(u_input.c, u_input.e.x, u_input.e.x, 1i), Struct_1(vec4<bool>(true, true, false, global1.c), 9415i, 1u, vec3<u32>(0u, global1.b, global1.b), vec2<f32>(-1184f, -1147f)), Struct_1(vec4<bool>(global1.c, global1.d, false, true), u_input.c, 0u, vec3<u32>(1735u, u_input.b, 0u), vec2<f32>(1107f, -1364f)))).x));
    var var_3 = true;
    var var_4 = Struct_1(select(select(!vec4<bool>(var_2.d, true, global1.d, false), vec4<bool>(false, !global1.c, false, global1.c), ~global1.b >= u_input.b), vec4<bool>(true, var_2.d, func_2(_wgslsmith_f_op_f32(-479f + 1737f)).d, 0u < (global1.b ^ global1.b)), vec4<bool>(all(vec2<bool>(true, false)), global1.d, global1.d, var_2.c)), -u_input.c, firstTrailingBit(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(global1.b, global1.b, u_input.b)), ~vec3<u32>(var_2.b, u_input.b, global1.b) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, global1.b, u_input.b), vec3<u32>(var_2.b, u_input.b, 74857u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(22097u, _wgslsmith_mult_u32(global1.b, 1u), u_input.b), vec3<u32>(var_2.b, u_input.b, 46254u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1555f, 368f)))), 144f));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(func_4(select(vec2<bool>(all(var_4.a.xwx), true), !select(vec2<bool>(false, true), vec2<bool>(var_4.a.x, true), var_4.a.ww), true), ~vec3<u32>(~var_4.c, _wgslsmith_div_u32(u_input.b, var_4.c), func_2(var_4.e.x).b), Struct_3(max(~2147483647i, _wgslsmith_dot_vec2_i32(u_input.e.xx, u_input.a)), 71853u, select(false, true, var_2.b > var_4.d.x), !(!global1.c))).x, 1u)], vec4<i32>(12526i, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, 27743i, -1i), u_input.e.yxy), 0i, ~(i32(-1i) * -1i)), var_4.e.x, _wgslsmith_clamp_vec4_u32(select(select(~vec4<u32>(u_input.b, 27894u, 2716u, 1u), vec4<u32>(0u, var_4.d.x, u_input.b, 10424u), select(vec4<bool>(global1.c, global1.c, var_4.a.x, true), vec4<bool>(false, true, true, true), vec4<bool>(global1.d, false, var_4.a.x, global1.d))), countOneBits(vec4<u32>(global1.b, var_2.b, global1.b, 1u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(14681u, global1.b, 60637u, 25927u), vec4<u32>(var_4.d.x, global1.b, var_2.b, var_2.b)), !func_3(vec3<f32>(var_4.e.x, var_4.e.x, -470f), Struct_2(vec4<i32>(global0.x, 2147483647i, 2147483647i, global1.a), Struct_1(vec4<bool>(false, true, false, false), u_input.c, 18546u, var_4.d, vec2<f32>(-1308f, var_4.e.x)), Struct_1(var_4.a, var_2.a, 1u, vec3<u32>(u_input.b, 31336u, 4294967295u), var_4.e))).x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, ~u_input.b, 67423u), vec4<u32>(var_2.b, global1.b, global1.b, var_2.b) >> (vec4<u32>(u_input.b, 3497u, var_2.b, global1.b) % vec4<u32>(32u))), reverseBits(~vec4<u32>(1u, var_4.c, 45482u, 0u))), ~2147483647i);
}

