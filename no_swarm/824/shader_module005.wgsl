struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -17160i;

var<private> global1: vec2<u32> = vec2<u32>(0u, 47248u);

var<private> global2: vec4<u32>;

var<private> global3: Struct_4 = Struct_4(vec4<i32>(-1i, -22789i, 1i, -1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(true, true, false))), true), _wgslsmith_add_i32(-38491i, select(18002i, ~(-1i), true))), select(true, any(vec3<bool>(true, true, true)), arg_0 > (i32(-1i) * -1i)) == !(abs(u_input.d) == global2.x), !(all(vec4<bool>(true, true, true, true)) && true), Struct_1(!vec3<bool>(true, 31202i > global3.a.x, true), 19563i), Struct_1(vec3<bool>(select(true, any(vec2<bool>(false, false)), true), true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), firstTrailingBit(1i)));
    var var_1 = vec4<u32>(~_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_clamp_u32(21250u, global2.x, 13167u)), global2.x), _wgslsmith_add_u32(~(~(~global1.x)), 20807u), ~_wgslsmith_div_u32(global1.x, 11268u), 58819u);
    let var_2 = _wgslsmith_sub_vec4_u32(~(vec4<u32>(var_1.x, 48485u, 4294967295u, global1.x) | ~vec4<u32>(0u, global1.x, 1u, global2.x)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1027u, 47902u, u_input.a, 1u), vec4<u32>(var_1.x, 1u, 42821u, u_input.a)), vec4<u32>(u_input.a, 6453u, global2.x, 11079u))) << (~(~vec4<u32>(u_input.d, ~u_input.d, 4294967295u, ~84502u)) % vec4<u32>(32u));
    var var_3 = !var_0.d.a.x;
    let var_4 = var_2.x;
    return ~(~(-u_input.b.x));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> vec3<i32> {
    let var_0 = vec3<i32>(global3.a.x, func_3(arg_0, _wgslsmith_div_f32(-859f, -1247f)) >> (_wgslsmith_div_u32(~(~arg_2), global2.x ^ select(0u, arg_2, true)) % 32u), -countOneBits(_wgslsmith_clamp_i32(1i, u_input.b.x, 26871i)) ^ firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -2147483647i), vec2<i32>(-57442i, global3.a.x)) | abs(28507i)));
    var var_1 = Struct_4(vec4<i32>(-1i) * -vec4<i32>(select(u_input.b.x, -2147483647i, false), arg_0, 1i, ~(-1i)));
    return vec3<i32>(select(var_0.x, min(abs(1i), 1i), true), abs(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-14940i, 35805i, 1i, var_0.x) >> (arg_1 % vec4<u32>(32u))), vec4<i32>(min(arg_0, u_input.b.x), _wgslsmith_mod_i32(var_1.a.x, 19040i), ~2147483647i, var_0.x))), arg_0);
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = 14928i & -reverseBits(u_input.b.x);
    let var_1 = func_2((global3.a.x >> (global1.x % 32u)) | 1i, vec4<u32>(_wgslsmith_div_u32(max(14038u, 34627u), 0u & global2.x), global2.x << (global2.x % 32u), 4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(66900u, u_input.e), global2.yz) ^ ~vec2<u32>(u_input.c, 4294967295u), _wgslsmith_mod_vec2_u32(global2.xw, global2.wz) & _wgslsmith_sub_vec2_u32(global2.xw, vec2<u32>(global1.x, 40884u)))), global1.x);
    let var_2 = ~72200u;
    global0 = -1i;
    let var_3 = ~1649u;
    return Struct_1(vec3<bool>(true, any(vec3<bool>(all(vec3<bool>(true, true, false)), any(vec3<bool>(true, true, false)), select(true, false, true))), true), 47469i);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = vec2<bool>(arg_0.c, arg_0.e.a.x);
    return -24734i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~global3.a.yyw) ^ u_input.b.xzy;
    let var_1 = vec3<i32>(var_0.x, var_0.x & ~(-2147483647i), func_4(Struct_2(Struct_1(vec3<bool>(false, false, true), -10851i), true, all(vec4<bool>(true, false, true, false)), func_1(vec4<f32>(377f, -363f, -954f, 160f)), func_1(vec4<f32>(-294f, -578f, 707f, -1186f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -101f))), _wgslsmith_f_op_f32(-110f + -356f), 2147483647i) | -2147483647i);
    global3 = Struct_4(~(~u_input.b));
    global3 = Struct_4(min(global3.a, select(global3.a, abs(abs(vec4<i32>(-3678i, u_input.b.x, -4550i, 1i))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))))));
    global3 = Struct_4(-vec4<i32>(abs(-2147483647i), -9699i, _wgslsmith_div_i32(u_input.b.x, 1i), select(u_input.b.x, global3.a.x, false)) ^ abs(u_input.b));
    global1 = vec2<u32>(_wgslsmith_add_u32(abs(global1.x), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(9534u, abs(global2.x), 197128u), u_input.e)), global2.x);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -583f, 2264f, -754f), vec4<f32>(837f, -707f, 1961f, 1254f))))), abs(vec4<u32>(~_wgslsmith_add_u32(global2.x, global2.x), 43632u, (global1.x << (global1.x % 32u)) & 1u, firstLeadingBit(~global1.x))), _wgslsmith_clamp_u32(~0u, ~_wgslsmith_mod_u32(~global1.x, 0u), u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.wxx, vec3<i32>(i32(-1i) * -u_input.b.x, global3.a.x, select(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), firstTrailingBit(global3.a.x), true)) | -vec3<i32>(-16635i, global3.a.x & var_0.x, u_input.b.x), min(_wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.b.wzz, var_0), vec3<i32>(1i, ~u_input.b.x, func_3(-47780i, var_2.a.x))), _wgslsmith_mult_vec3_i32(u_input.b.xwx, vec3<i32>(countOneBits(21659i), var_1.x, ~74329i))), var_2.a.yyw);
}

