struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, true, true, false, false, false, false, false, true, true, false, false, false, true, false, true, false, false);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(4294967295u, true, false), Struct_1(61702u, true, true), Struct_1(1u, false, false), Struct_1(1u, false, false), Struct_1(13082u, true, true), Struct_1(1u, false, false), Struct_1(1u, false, true), Struct_1(42026u, true, false), Struct_1(14016u, false, false), Struct_1(8090u, false, true), Struct_1(0u, false, false), Struct_1(18413u, true, false), Struct_1(65008u, true, true), Struct_1(12165u, false, false), Struct_1(1495u, true, false), Struct_1(10410u, false, false), Struct_1(0u, true, false));

var<private> global2: Struct_2 = Struct_2(vec3<u32>(58650u, 1u, 17596u));

var<private> global3: u32 = 0u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = ~(-_wgslsmith_add_i32(-u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, 23350i), _wgslsmith_dot_vec3_i32(u_input.a.wyx, vec3<i32>(u_input.a.x, -67709i, u_input.a.x)))));
    var var_1 = u_input.a;
    let var_2 = !(!select(vec4<bool>(true & arg_0, global0[_wgslsmith_index_u32(global2.a.x, 18u)] && global0[_wgslsmith_index_u32(1u, 18u)], any(vec2<bool>(true, false)), true), vec4<bool>(arg_0, u_input.a.x <= u_input.a.x, global0[_wgslsmith_index_u32(global2.a.x, 18u)], arg_0), vec4<bool>(true, true, true, true)));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -355f)));
    let var_4 = Struct_1(~global2.a.x, false, arg_0);
    return Struct_2(abs(global2.a));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global3 = firstTrailingBit(1u);
    let var_0 = Struct_1(arg_2.a, arg_2.c, arg_2.b);
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    let var_1 = !select(vec2<bool>(true, global0[_wgslsmith_index_u32(~firstLeadingBit(var_0.a), 18u)]), select(vec2<bool>(true, !var_0.c), vec2<bool>(select(global0[_wgslsmith_index_u32(26771u, 18u)], true, arg_2.b), any(vec2<bool>(true, false))), select(-2147483647i, u_input.a.x, false) != -u_input.a.x), !(!vec2<bool>(true, arg_2.c)));
    return Struct_2(vec3<u32>(firstTrailingBit(max(arg_0, global2.a.x)), arg_1.a.x, ~(~(~52118u))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(arg_2.a ^ _wgslsmith_sub_vec3_u32(~(~vec3<u32>(arg_1.a, arg_2.a.x, 0u)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a, global2.a.x, 4294967295u), vec3<u32>(19997u, arg_2.a.x, global2.a.x)), global2.a)));
    var var_1 = arg_0;
    let var_2 = u_input.a.zw;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-789f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-258f, -339f)))) - -798f), arg_1.c));
    let var_4 = u_input.a;
    return global1[_wgslsmith_index_u32(abs(~(firstLeadingBit(~var_0.a.x) >> (~max(arg_1.a, var_0.a.x) % 32u))), 17u)];
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    return func_4(~(~1i | firstTrailingBit(-11660i)), Struct_1(global2.a.x, select(global0[_wgslsmith_index_u32(global2.a.x, 18u)], all(vec3<bool>(true, true, true)), true), ~(~arg_0.x) < reverseBits(~arg_0.x)), func_3((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, 0u, 24528u), vec4<u32>(arg_0.x, global2.a.x, arg_0.x, arg_0.x)) << (~global2.a.x % 32u)) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global2.a, vec3<u32>(global2.a.x, arg_0.x, 60452u)), arg_0.x | global2.a.x) % 32u), func_2(global0[_wgslsmith_index_u32(0u, 18u)]), Struct_1(0u, _wgslsmith_add_u32(56202u, global2.a.x) >= _wgslsmith_add_u32(1u, global2.a.x), !any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(arg_0.x, 18u)]))), func_2(global0[_wgslsmith_index_u32(global2.a.x, 18u)] == global0[_wgslsmith_index_u32(~global2.a.x, 18u)])));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<bool> {
    global2 = Struct_2((_wgslsmith_add_vec3_u32(~global2.a, ~global2.a) & vec3<u32>(global2.a.x, _wgslsmith_mod_u32(5626u, 19000u), ~66110u)) | _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(global2.a ^ global2.a, _wgslsmith_mod_vec3_u32(global2.a, vec3<u32>(arg_0.a, 46180u, 32215u))), ~(~vec3<u32>(0u, 27246u, 1u))));
    global0 = array<bool, 18>();
    var var_0 = vec4<i32>(countOneBits(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -42224i)) << (4294967295u % 32u)), -3278i, u_input.a.x, _wgslsmith_mult_i32(-1639i, _wgslsmith_clamp_i32(~firstLeadingBit(-43828i), u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, -u_input.a.x))));
    let var_1 = Struct_2(global2.a & select(reverseBits(vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_vec3_u32(~global2.a, global2.a, global2.a), select(select(vec3<bool>(global0[_wgslsmith_index_u32(70792u, 18u)], global0[_wgslsmith_index_u32(global2.a.x, 18u)], arg_0.b), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], false, global0[_wgslsmith_index_u32(8799u, 18u)]), vec3<bool>(arg_0.c, global0[_wgslsmith_index_u32(26152u, 18u)], false)), !vec3<bool>(arg_0.b, false, false), vec3<bool>(false, true, arg_0.b))));
    let var_2 = ~(~vec4<u32>(var_1.a.x, ~arg_0.a, _wgslsmith_mult_u32(var_1.a.x, 1u), 0u));
    return vec2<bool>(!(!arg_0.b), !((_wgslsmith_f_op_f32(747f + arg_1.x) <= arg_1.x) && true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    global1 = array<Struct_1, 17>();
    global0 = array<bool, 18>();
    var var_0 = func_5(func_1(vec4<u32>(~0u ^ ~global2.a.x, global2.a.x, global2.a.x, global2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1193f, 1117f, -144f, -880f))), _wgslsmith_div_vec4_f32(vec4<f32>(859f, 936f, -455f, -585f), vec4<f32>(-580f, 1084f, 893f, -754f)), true)))));
    global1 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2019f - _wgslsmith_f_op_f32(max(159f, 277f))) - _wgslsmith_div_f32(-551f, 1997f))));
}

