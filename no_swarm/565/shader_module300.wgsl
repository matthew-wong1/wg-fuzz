struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: u32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, 1636f, -963f);

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(false, 28956i)), Struct_2(Struct_1(true, 43065i)), Struct_2(Struct_1(false, -9178i)), Struct_2(Struct_1(true, i32(-2147483648))), Struct_2(Struct_1(false, -5061i)), Struct_2(Struct_1(false, 1i)), Struct_2(Struct_1(false, 1i)), Struct_2(Struct_1(false, 28795i)), Struct_2(Struct_1(true, 2147483647i)));

var<private> global2: array<i32, 20> = array<i32, 20>(51072i, -14738i, -54191i, -15284i, i32(-2147483648), 1i, -1i, 74288i, 2147483647i, 32587i, 31916i, 1i, 9545i, i32(-2147483648), 98964i, i32(-2147483648), -23172i, 2147483647i, 3947i, -45900i);

var<private> global3: array<Struct_3, 29>;

var<private> global4: array<f32, 8>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> bool {
    var var_0 = Struct_1(!(~_wgslsmith_mult_u32(4294967295u, 1u) >= arg_1.a), 101159i);
    var var_1 = 1f;
    var var_2 = arg_1.c.a;
    var var_3 = vec2<i32>(-10940i, 1i);
    var_2 = Struct_1(var_2.a, var_3.x);
    return false | !(global0.x != 923f);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = all(vec2<bool>(!arg_1.a.a, func_3(-1003f, Struct_4(~arg_1.c.x, vec2<bool>(false, false), Struct_2(Struct_1(true, -1i))))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.c.x, 114436u, 89938u), vec4<u32>(107470u, arg_1.c.x, 5537u, arg_1.c.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.c.x, 1u, arg_1.c.x, 4294967295u), vec4<u32>(4294967295u, arg_1.c.x, arg_1.c.x, 33373u))), ~1u & (reverseBits(arg_1.c.x) & ~0u)), arg_1.c.x), 29u)];
    let var_2 = (~(_wgslsmith_sub_u32(var_1.c.x, arg_1.c.x) | firstLeadingBit(arg_1.c.x)) ^ min(50408u, ~var_1.c.x ^ max(1u, 1u))) & (4294967295u & min(1u, arg_1.c.x));
    global2 = array<i32, 20>();
    var var_3 = global0.x;
    return Struct_1(var_1.b.a.a, -abs(-_wgslsmith_div_i32(global2[_wgslsmith_index_u32(var_1.c.x, 20u)], -24474i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec2<bool>) -> u32 {
    global3 = array<Struct_3, 29>();
    let var_0 = min(-vec4<i32>(~(-1i), ~select(2147483647i, arg_1.c.a.b, false), _wgslsmith_sub_i32(~arg_0.b, -54945i >> (arg_1.a % 32u)), -func_2(vec3<i32>(arg_0.b, global2[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a), global3[_wgslsmith_index_u32(4294967295u, 29u)]).b), -(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_1.c.a.b, arg_1.c.a.b, arg_0.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(25094i, -20308i, u_input.b, global2[_wgslsmith_index_u32(arg_1.a, 20u)]), vec4<i32>(global2[_wgslsmith_index_u32(arg_1.a, 20u)], 33459i, -1i, u_input.a), vec4<i32>(34790i, 63367i, 0i, -26892i))) & vec4<i32>(arg_0.b, firstLeadingBit(global2[_wgslsmith_index_u32(14257u, 20u)]), global2[_wgslsmith_index_u32(~1u, 20u)], 1i)));
    let var_1 = reverseBits(~select(-func_2(var_0.xyw, Struct_3(arg_0, Struct_2(Struct_1(true, 74029i)), vec3<u32>(arg_2.x, arg_2.x, arg_2.x))).b, var_0.x, true));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(10688u, 8u)])), global0.x, _wgslsmith_f_op_f32(step(-1167f, _wgslsmith_f_op_f32(step(1236f, global0.x))))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(910f, 433f, global0.x))) * vec3<f32>(1090f, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.x, arg_1.a, arg_1.a), 8u)], _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(arg_2.x, 8u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-562f)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 8u)]), global4[_wgslsmith_index_u32(958u, 8u)])))));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1888f, _wgslsmith_f_op_f32(-767f + 1075f), global4[_wgslsmith_index_u32(arg_2.x, 8u)], _wgslsmith_div_f32(global4[_wgslsmith_index_u32(arg_1.a, 8u)], global4[_wgslsmith_index_u32(20928u, 8u)])))))));
    return 1u;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.yy)), _wgslsmith_f_op_vec2_f32(-global0.yz));
    let var_1 = Struct_4(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(~0u, max(1u, 0u)), func_4(func_2(vec3<i32>(u_input.c, global2[_wgslsmith_index_u32(44167u, 20u)], 0i), Struct_3(Struct_1(true, u_input.b), global1[_wgslsmith_index_u32(38978u, 9u)], vec3<u32>(1u, 87598u, 1u))), Struct_4(1u, vec2<bool>(true, true), Struct_2(Struct_1(true, -1i))), vec4<u32>(27608u, 0u, 51319u, 0u), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), vec2<bool>(!any(vec4<bool>(true, false, true, true)) & true, false && any(vec3<bool>(true, false, false))), global1[_wgslsmith_index_u32(abs(reverseBits(63456u)), 9u)]);
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, var_1.a, 0u, 4294967295u)), ~vec4<u32>(1u, 1u, 0u, 0u) >> (vec4<u32>(var_1.a, 40046u, var_1.a, var_1.a) % vec4<u32>(32u))), vec4<u32>(~var_1.a >> ((var_1.a << (1u % 32u)) % 32u), firstLeadingBit(60540u >> (var_1.a % 32u)), 0u, _wgslsmith_div_u32(~var_1.a, var_1.a)), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, var_1.a), vec3<u32>(var_1.a, var_1.a, var_1.a)), _wgslsmith_div_u32(~0u, ~1u), var_1.a, var_1.a)) | ~vec4<u32>(max(_wgslsmith_div_u32(0u, 4294967295u), 1u), ~max(37242u, var_1.a), var_1.a, var_1.a);
    var var_3 = (countOneBits(u_input.b) < abs(~global2[_wgslsmith_index_u32(48153u, 20u)])) && var_1.c.a.a;
    var var_4 = Struct_3(func_2(vec3<i32>(~global2[_wgslsmith_index_u32(var_2.x, 20u)] | u_input.b, _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, global2[_wgslsmith_index_u32(76624u, 20u)]), abs(global2[_wgslsmith_index_u32(var_1.a, 20u)])), _wgslsmith_sub_i32(firstTrailingBit(u_input.a), reverseBits(global2[_wgslsmith_index_u32(var_1.a, 20u)]))), Struct_3(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(-1211i, -2147483647i, var_1.c.a.b), vec3<i32>(u_input.c, 45263i, 1i)), Struct_3(var_1.c.a, global1[_wgslsmith_index_u32(var_1.a, 9u)], vec3<u32>(var_1.a, 58031u, var_2.x))), global1[_wgslsmith_index_u32(min(~var_1.a, var_2.x), 9u)], var_2.zxw)), global1[_wgslsmith_index_u32(41771u, 9u)], var_2.wzw);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1();
    let var_1 = vec4<i32>(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(42222u, 0u), ~vec2<u32>(36353u, 90999u)), ~reverseBits(47654u)), 20u)], u_input.b, -2147483647i, -35117i);
    var var_2 = 48019u;
    let var_3 = 12685u;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

