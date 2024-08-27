struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec3<f32>(-493f, -422f, 455f), 32384u, vec4<u32>(72043u, 4294967295u, 0u, 15489u))), Struct_2(Struct_1(vec3<f32>(506f, 595f, -343f), 0u, vec4<u32>(35659u, 50950u, 0u, 72520u))), Struct_2(Struct_1(vec3<f32>(-135f, -1720f, -419f), 0u, vec4<u32>(4294967295u, 84777u, 0u, 79639u))), Struct_2(Struct_1(vec3<f32>(-836f, -1000f, 596f), 4294967295u, vec4<u32>(58240u, 52960u, 0u, 1u))), Struct_2(Struct_1(vec3<f32>(1000f, 1178f, 804f), 40448u, vec4<u32>(6083u, 0u, 4294967295u, 9635u))), Struct_2(Struct_1(vec3<f32>(-1157f, 205f, -281f), 4294967295u, vec4<u32>(4294967295u, 24503u, 38103u, 27603u))), Struct_2(Struct_1(vec3<f32>(1033f, -1349f, 917f), 24139u, vec4<u32>(0u, 80054u, 50317u, 0u))), Struct_2(Struct_1(vec3<f32>(1586f, -150f, 415f), 65707u, vec4<u32>(0u, 37186u, 4294967295u, 14534u))), Struct_2(Struct_1(vec3<f32>(200f, 407f, -501f), 4294967295u, vec4<u32>(4294967295u, 1u, 63126u, 14798u))), Struct_2(Struct_1(vec3<f32>(-1613f, -1406f, -1808f), 0u, vec4<u32>(4294967295u, 4294967295u, 42650u, 4294967295u))), Struct_2(Struct_1(vec3<f32>(-345f, -2252f, 1676f), 4294967295u, vec4<u32>(46401u, 20897u, 57906u, 52229u))), Struct_2(Struct_1(vec3<f32>(-1419f, 441f, -213f), 95828u, vec4<u32>(81242u, 1u, 19312u, 56446u))), Struct_2(Struct_1(vec3<f32>(536f, 301f, 1164f), 0u, vec4<u32>(4294967295u, 10542u, 4294967295u, 83286u))), Struct_2(Struct_1(vec3<f32>(1738f, 238f, 312f), 1u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u))));

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<f32>(1753f, -156f, -366f), 17297u, vec4<u32>(1u, 0u, 0u, 32881u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    global1 = arg_1.a.x;
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a.a.x + _wgslsmith_f_op_f32(-arg_1.a.x)), -630f, true)));
    global0 = array<Struct_2, 14>();
    let var_1 = 874f;
    var var_2 = Struct_3(85595u, _wgslsmith_mod_vec3_u32(global2.a.c.zwz, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.c, global2.a.c.x), ~arg_0, 42687u), _wgslsmith_sub_vec3_u32(arg_1.c.wwx, arg_1.c.yxx) >> (~arg_1.c.zww % vec3<u32>(32u)))), arg_1, arg_1.c);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(32359u, ~arg_0, 0u), vec3<u32>(countOneBits(0u), ~reverseBits(~1u), ~min(_wgslsmith_add_u32(4294967295u, u_input.c), firstTrailingBit(arg_1.b))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_sub_i32(abs(~_wgslsmith_div_i32(-1554i, firstTrailingBit(-3436i))), arg_3);
    let var_1 = global0[_wgslsmith_index_u32(~abs(u_input.c), 14u)];
    var var_2 = arg_0;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(global2.a.c.x, 4294967295u)), 14u)];
    let var_3 = ~(-(i32(-1i) * -3657i) >> (~var_1.a.c.x % 32u)) << (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c, abs(u_input.c))), global2.a.c.yw) % 32u);
    return func_3(arg_1.b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(max(arg_0.x, 487f))), 1f, var_1.a.a.x), 1u, firstTrailingBit(countOneBits(arg_1.c))));
}

fn func_4(arg_0: u32, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_2, 14>();
    let var_0 = false;
    var var_1 = Struct_1(global2.a.a, 41793u, ~(~_wgslsmith_div_vec4_u32(vec4<u32>(42338u, 114941u, 6857u, 9344u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, u_input.c, global2.a.b, 1u), vec4<u32>(1u, 4294967295u, 1u, u_input.c)))));
    var var_2 = firstTrailingBit(0u);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, _wgslsmith_f_op_f32(global2.a.a.x * -382f), _wgslsmith_f_op_f32(f32(-1f) * -1374f))), _wgslsmith_sub_u32(0u, arg_0), vec4<u32>(arg_1, ~arg_0, 34841u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0, u_input.c, global2.a.b), vec4<u32>(u_input.c, 70113u, 55087u, arg_1)), var_1.c.x)));
    return var_3.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: u32, arg_3: vec4<u32>) -> vec3<i32> {
    let var_0 = func_4(1u, arg_1 ^ _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(11539u, arg_1, 4294967295u, 4294967295u), global2.a.c), ~vec4<u32>(0u, 47893u, 1262u, 13436u)), vec4<u32>(9315u, ~arg_3.x, 0u | arg_3.x, func_2(vec4<f32>(global2.a.a.x, global2.a.a.x, -745f, 898f), Struct_1(global2.a.a, u_input.c, arg_3), true, -3624i))));
    let var_1 = min(~vec3<u32>(arg_2 | arg_3.x, 0u << (u_input.c % 32u), 12056u), ~(~arg_3.wxy));
    return vec3<i32>(-11646i, min(1i, -34656i), ~(u_input.a.x ^ countOneBits(-109455i << (0u % 32u))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = ~(~(~16216u));
    global2 = global0[_wgslsmith_index_u32(0u, 14u)];
    global2 = global0[_wgslsmith_index_u32(~61241u, 14u)];
    var var_1 = true | (true && !select(all(vec4<bool>(true, false, false, false)), any(vec2<bool>(false, false)), false));
    let var_2 = select(vec2<i32>(_wgslsmith_mult_i32(countOneBits(2147483647i), u_input.a.x), max(0i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, 2147483647i, -30681i), reverseBits(u_input.b)))), ~(_wgslsmith_mod_vec2_i32(select(vec2<i32>(arg_0, -4186i), vec2<i32>(41622i, arg_0), vec2<bool>(true, false)), _wgslsmith_div_vec2_i32(u_input.a, u_input.a)) & vec2<i32>(1i, arg_0 & 1732i)), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(868f, arg_3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 14>();
    let var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -select(-2147483647i, -2147483647i, true), max(27191i, firstLeadingBit(-49940i))), _wgslsmith_mult_vec3_i32(func_1(vec2<bool>(false, true), global2.a.b, global2.a.c.x, global2.a.c), _wgslsmith_mult_vec3_i32(vec3<i32>(-36175i, u_input.b, u_input.b), vec3<i32>(-1i, u_input.b, u_input.b))) ^ vec3<i32>(~12882i, u_input.a.x << (global2.a.b % 32u), -u_input.b)), 1u, Struct_3(~(~reverseBits(1u)), _wgslsmith_div_vec3_u32(global2.a.c.xzx, reverseBits(min(global2.a.c.www, global2.a.c.zwy))), func_4(4294967295u, 1u), ~((global2.a.c & global2.a.c) | ~global2.a.c)), global2.a));
    global2 = global0[_wgslsmith_index_u32(~(~42137u), 14u)];
    let var_1 = _wgslsmith_div_vec3_f32(global2.a.a, global2.a.a);
    let var_2 = func_4(u_input.c, select(_wgslsmith_mod_u32(1u, ~global2.a.c.x), u_input.c, all(vec3<bool>(true, true, true)))).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_0, select(vec2<i32>(u_input.a.x, ~u_input.b), vec2<i32>(u_input.a.x, u_input.b), vec2<bool>(select(true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)))), abs(vec4<u32>(countOneBits(~0u), u_input.c, 1u, ~(~u_input.c))), var_2);
}

