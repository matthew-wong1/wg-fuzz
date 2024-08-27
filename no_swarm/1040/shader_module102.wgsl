struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 1822f, -1i);

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(1u), Struct_4(0u), Struct_4(1u), Struct_4(4294967295u), Struct_4(12137u), Struct_4(66344u), Struct_4(9523u), Struct_4(19471u), Struct_4(4294967295u), Struct_4(0u), Struct_4(1u), Struct_4(38281u), Struct_4(23542u), Struct_4(1u), Struct_4(18050u), Struct_4(18442u), Struct_4(85033u), Struct_4(4294967295u), Struct_4(4294967295u), Struct_4(1u), Struct_4(45133u), Struct_4(4294967295u), Struct_4(50013u), Struct_4(30949u), Struct_4(73164u), Struct_4(7799u), Struct_4(45459u), Struct_4(44018u), Struct_4(1u), Struct_4(1u), Struct_4(7777u), Struct_4(1u));

var<private> global3: array<Struct_4, 19>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<f32>) -> bool {
    var var_0 = all(vec4<bool>(true, global0.a, !(!(global0.a && false)), true));
    let var_1 = Struct_1(global1.x, 1000f, -global0.c);
    var var_2 = ~vec2<u32>(~80911u, 0u);
    var var_3 = var_1;
    var var_4 = 9603u;
    return true;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = 552f;
    var var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(u_input.a, u_input.a, 0u, 20366u)), abs(~vec4<u32>(79631u, u_input.a, u_input.a, 1u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(0u, 75186u, 4294967295u, 39060u))), countOneBits(vec4<u32>(~(~u_input.a), ~_wgslsmith_sub_u32(0u, 0u), 0u, ~u_input.a)));
    var var_2 = ~u_input.a;
    var_2 = 5521u;
    var var_3 = Struct_2(-1i, u_input.b.x, select(firstLeadingBit(~firstTrailingBit(vec4<i32>(-2147483647i, 16750i, u_input.b.x, -11526i))), max(vec4<i32>(reverseBits(u_input.b.x), 2147483647i, ~(-59822i), firstLeadingBit(11607i)), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -21415i), vec4<i32>(-28265i, u_input.b.x, 2147483647i, global0.c))), global1.x), -vec3<i32>(0i, global0.c, firstLeadingBit(-22875i) | (global0.c << (u_input.a % 32u))), Struct_1(select(false, -u_input.b.x >= ~6411i, all(!global1.wz)), var_0, u_input.b.x));
    return _wgslsmith_add_i32(-1i, u_input.b.x);
}

fn func_2() -> bool {
    let var_0 = u_input.b.x;
    global3 = array<Struct_4, 19>();
    let var_1 = Struct_3(select(global1.yw, select(vec2<bool>(true, true), global1.xx, global0.a), any(vec3<bool>(global0.b >= 2314f, any(vec4<bool>(global1.x, global1.x, true, true)), global1.x))), ~vec3<i32>(_wgslsmith_mod_i32(~var_0, -2147483647i), func_3(vec3<f32>(354f, global0.b, -657f)) | firstLeadingBit(-8608i), -1i & _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(var_0, global0.c))), Struct_2(~_wgslsmith_sub_i32(global0.c, -2147483647i) >> (~min(4294967295u, u_input.a) % 32u), ~(~abs(var_0)), _wgslsmith_clamp_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(global0.c, -1i, 0i, var_0), vec4<i32>(1i, u_input.b.x, u_input.b.x, global0.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, var_0, 0i, var_0), -vec4<i32>(u_input.b.x, -48130i, 1i, 0i)), vec4<i32>(1i, global0.c, u_input.b.x, u_input.b.x) ^ select(vec4<i32>(-1i, var_0, 0i, u_input.b.x), vec4<i32>(var_0, global0.c, -1i, 1i), vec4<bool>(true, true, true, global1.x))), max(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.b.x), -vec3<i32>(21427i, var_0, u_input.b.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 42645i, 2147483647i, 0i), vec4<i32>(-38153i, u_input.b.x, 1i, var_0)), firstLeadingBit(var_0), 1i & var_0)), Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * global0.b)), global0.c)));
    var var_2 = vec3<f32>(483f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global0.b)), -402f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b)) * _wgslsmith_f_op_f32(global0.b + var_1.c.e.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(156f, 953f), _wgslsmith_f_op_f32(step(-1647f, -184f)))), 1000f))));
    var var_3 = ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.a, u_input.a, u_input.a, 45330u) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, 110599u)), ~abs(vec4<u32>(0u, 4294967295u, 4294967295u, 20318u))), ~reverseBits(vec4<u32>(0u, u_input.a, 18536u, 48398u) | vec4<u32>(25259u, 69639u, 76998u, u_input.a)));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(true, global0.a, all(vec3<bool>(func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1522f, -885f, -597f), vec3<f32>(global0.b, global0.b, 1000f), true))), func_2(), true)), !func_2());
    let var_0 = global0.b;
    global0 = Struct_1(true, -519f, -u_input.b.x);
    var var_1 = Struct_4(_wgslsmith_mod_u32(~11615u, ~15583u >> ((~111688u | u_input.a) % 32u)));
    var var_2 = vec3<f32>(global0.b, global0.b, global0.b);
    var var_3 = Struct_3(select(select(!(!global1.ww), !global1.zx, select(select(vec2<bool>(false, global1.x), global1.wz, true), select(global1.wy, vec2<bool>(global1.x, false), vec2<bool>(global0.a, false)), select(vec2<bool>(true, false), vec2<bool>(global0.a, global0.a), global0.a))), vec2<bool>(true, true), var_1.a != 62674u), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, global0.c)), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b, u_input.b), vec2<i32>(-29038i, u_input.b.x), vec2<i32>(u_input.b.x, 0i))), global0.c, min(2147483647i, _wgslsmith_sub_i32(select(-1i, 1i, global1.x), global0.c))), Struct_2(u_input.b.x, _wgslsmith_clamp_i32(~u_input.b.x, u_input.b.x, abs(0i) >> (u_input.a % 32u)), ~max(vec4<i32>(u_input.b.x, global0.c, -2147483647i, 2147483647i), vec4<i32>(0i, global0.c, 0i, 78469i)) | vec4<i32>(-2147483647i, ~u_input.b.x, ~(-2147483647i), -9023i), vec3<i32>(u_input.b.x, ~(-2147483647i), 19562i), Struct_1(global0.a, _wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_sub_i32(~global0.c, u_input.b.x))));
    var var_4 = true;
    let var_5 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, 1u), ~select(vec3<u32>(u_input.a, u_input.a, var_1.a) & vec3<u32>(u_input.a, 40356u, var_1.a), ~vec3<u32>(86345u, 0u, 1u), select(global1.www, vec3<bool>(global1.x, false, false), global1.xzx))), ~select(~(~vec3<u32>(25973u, u_input.a, var_1.a)), abs(abs(vec3<u32>(72754u, 1u, u_input.a))), var_3.c.e.a));
    let var_6 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_5, vec3<u32>(var_5.x, ~45153u, ~(~u_input.a << (abs(45970u) % 32u))));
}

