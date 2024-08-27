struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

var<private> global2: array<vec2<bool>, 31>;

var<private> global3: vec3<i32> = vec3<i32>(1i, 2147483647i, 2147483647i);

var<private> global4: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(1u, 95225u, 7170u, 1u), vec4<u32>(1u, 18782u, 4294967295u, 1u), vec4<u32>(68930u, 4476u, 4294967295u, 1u), vec4<u32>(1u, 40585u, 2031u, 4294967295u), vec4<u32>(21692u, 55049u, 4294967295u, 41956u), vec4<u32>(20134u, 1u, 1u, 41458u), vec4<u32>(4294967295u, 13807u, 0u, 55986u), vec4<u32>(60776u, 36422u, 4294967295u, 4294967295u), vec4<u32>(22670u, 1u, 0u, 4294967295u), vec4<u32>(0u, 69182u, 59676u, 1u), vec4<u32>(1u, 56113u, 30147u, 4294967295u), vec4<u32>(15025u, 32507u, 0u, 21747u), vec4<u32>(87878u, 20427u, 0u, 1u), vec4<u32>(4294967295u, 43276u, 66284u, 50421u), vec4<u32>(50586u, 0u, 4093u, 0u), vec4<u32>(4294967295u, 24641u, 1u, 16245u), vec4<u32>(42589u, 4294967295u, 11903u, 4294967295u), vec4<u32>(13632u, 24198u, 0u, 0u), vec4<u32>(71273u, 0u, 64507u, 22560u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    let var_0 = global1.b;
    let var_1 = 0i;
    var var_2 = Struct_1(-_wgslsmith_mult_i32(2147483647i, -abs(1i)), _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(4294967295u, 19u)], vec4<u32>(~_wgslsmith_mult_u32(var_0.b, 10975u), global1.b.b, global1.b.b, _wgslsmith_clamp_u32(8054u, select(global1.b.b, var_0.b, global1.a), 4294967295u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, global1.c.x), vec2<f32>(-716f, var_0.c.x)) - _wgslsmith_f_op_vec2_f32(round(var_0.c))) + _wgslsmith_f_op_vec2_f32(exp2(var_0.c))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(var_0.c, global1.c.zy)), var_0.c, false)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.b.b, var_0.b, var_0.b) << (~vec3<u32>(global1.b.b, var_0.b, 0u) % vec3<u32>(32u)), min(~vec3<u32>(1u, global1.b.b, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(14207u, global1.b.b, var_0.b), vec3<u32>(global1.b.b, 0u, var_0.b)))), 31u)])));
    let var_3 = firstLeadingBit(~(var_2.b >> (4294967295u % 32u)));
    var var_4 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_2.b, var_3), 92876u | var_0.b), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(var_2.b, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(6993u, 8205u), vec2<u32>(2864u, 4294967295u)))) >> ((_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(49171u, 67263u)), vec2<u32>(var_3, var_3) << (vec2<u32>(17421u, 10376u) % vec2<u32>(32u))) << (select(~vec2<u32>(20102u, 4294967295u), ~vec2<u32>(var_3, var_3), vec2<bool>(global1.a, global1.a)) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(vec2<u32>((4294967295u | global1.b.b) >> (abs(var_0.b) % 32u), firstTrailingBit(_wgslsmith_add_u32(26150u, global1.b.b)))));
    return 117806u;
}

fn func_2() -> Struct_3 {
    global4 = array<vec4<u32>, 19>();
    global3 = u_input.c.xxz;
    global0 = -_wgslsmith_mult_i32(-2147483647i, global1.d.x) | u_input.d.x;
    var var_0 = Struct_4(vec3<u32>(~_wgslsmith_clamp_u32(3201u, global1.b.b, 0u), 1u, _wgslsmith_clamp_u32(45459u, 4294967295u, ~global1.b.b)) << ((~_wgslsmith_sub_vec3_u32(vec3<u32>(66471u, global1.b.b, 1u), vec3<u32>(global1.b.b, 20181u, global1.b.b)) << (~vec3<u32>(0u, 101416u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_0 = Struct_4(~vec3<u32>(~(~var_0.a.x), global1.b.b, min(func_3(), ~6964u)));
    return Struct_3(Struct_2(select(true, abs(var_0.a.x) <= 16689u, 1u <= _wgslsmith_add_u32(var_0.a.x, var_0.a.x)), Struct_1(-34813i, 13039u, _wgslsmith_f_op_vec2_f32(round(global1.c.yy))), global1.c, u_input.d, global1.b.c.x), _wgslsmith_div_i32(-(~firstLeadingBit(global3.x)), 8381i), vec3<u32>(var_0.a.x, ~(~var_0.a.x), firstLeadingBit(var_0.a.x >> (6997u % 32u)) << (func_3() % 32u)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1.b.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1521f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c.x)), -262f, 925f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1572f - global1.b.c.x), _wgslsmith_div_f32(global1.e, global1.e), _wgslsmith_f_op_f32(-global1.c.x), 1813f)))), global1.b);
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    global4 = array<vec4<u32>, 19>();
    let var_0 = func_2();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f)), _wgslsmith_div_f32(1734f, _wgslsmith_f_op_f32(trunc(func_2().e.c.x))));
    var var_2 = ~(~abs(var_0.c.x)) >= ~(global1.b.b << (max(~33611u, ~var_0.e.b) % 32u));
    var var_3 = vec3<bool>(any(select(vec3<bool>(var_0.e.a != u_input.e, func_2().a.a, any(vec3<bool>(false, global1.a, arg_0.x))), !(!vec3<bool>(true, true, global1.a)), true)), all(global2[_wgslsmith_index_u32(~4000u, 31u)]), false);
    return Struct_4(~select(abs(vec3<u32>(17535u, global1.b.b, global1.b.b)), firstTrailingBit(_wgslsmith_sub_vec3_u32(var_0.c, vec3<u32>(0u, global1.b.b, 4294967295u))), vec3<bool>(false, 10434i > var_0.b, any(vec3<bool>(arg_0.x, false, var_3.x)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = ~func_1(vec2<bool>(true, true)).a.yx;
    global3 = abs(vec3<i32>(arg_3.d.x, ~global3.x, _wgslsmith_mod_i32(0i, -arg_1.a.b.a))) << (vec3<u32>(~62306u, _wgslsmith_mult_u32(~59624u, global1.b.b >> (122482u % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~arg_0.a.zx), ~(arg_0.a.yz & arg_0.a.yy))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.c * arg_2.c) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.c.x, 1009f))))) * arg_2.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global1.b.c + global1.b.c))), global1.b.c))));
    var var_2 = func_2().a;
    var var_3 = arg_0.a.xx;
    return func_2().a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<u32>, 19>();
    var var_0 = global1.c.zx;
    global1 = Struct_2(global1.a, func_4(func_1(global2[_wgslsmith_index_u32(~global1.b.b, 31u)]), Struct_3(func_2().a, -(u_input.a >> (1u % 32u)), vec3<u32>(global1.b.b, global1.b.b, reverseBits(global1.b.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -616f, 1659f, 978f) * vec4<f32>(var_0.x, var_0.x, 382f, -264f)) + vec4<f32>(364f, var_0.x, var_0.x, 317f)), global1.b), Struct_1(~2147483647i << (min(global1.b.b, global1.b.b) % 32u), _wgslsmith_mult_u32(15203u, 4294967295u >> (global1.b.b % 32u)), global1.b.c), Struct_2(global1.a, func_2().e, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(486f, global1.c.x, var_0.x))), _wgslsmith_sub_vec2_i32(select(vec2<i32>(-1i, global3.x), vec2<i32>(69639i, global3.x), vec2<bool>(true, true)), vec2<i32>(1i, u_input.c.x)), _wgslsmith_f_op_f32(-1380f - _wgslsmith_f_op_f32(-global1.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(floor(global1.b.c.x)), _wgslsmith_f_op_f32(-341f - var_0.x), global1.e), -(-vec2<i32>(1i, global3.x) ^ countOneBits(u_input.c.xz)), var_0.x);
    var var_1 = min(-1i, firstTrailingBit(global1.b.a));
    let var_2 = _wgslsmith_sub_i32(~1i, global1.d.x);
    var var_3 = global1.b.b;
    let var_4 = max(abs(abs(vec3<u32>(1u, 31296u, global1.b.b))), ~vec3<u32>(~global1.b.b, global1.b.b << (global1.b.b % 32u), abs(17508u))) | (vec3<u32>(_wgslsmith_mod_u32(reverseBits(global1.b.b), 4294967295u), global1.b.b, countOneBits(global1.b.b)) & vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, global1.b.b, global1.b.b), global4[_wgslsmith_index_u32(global1.b.b, 19u)]), ~global1.b.b));
    let var_5 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, -1i, func_2().e.a, 2147483647i ^ abs(global3.x)), vec2<f32>(1000f, var_5.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_5.c.x))), vec4<i32>(33248i, max(-5137i, countOneBits(i32(-1i) * -2147483647i)), _wgslsmith_sub_i32(0i, global1.d.x), func_2().a.b.a));
}

