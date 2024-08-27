struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, true, false, true), 32801u);

var<private> global1: u32;

var<private> global2: u32;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

var<private> global4: vec2<u32> = vec2<u32>(38192u, 263u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    var var_0 = arg_0;
    global3 = vec3<bool>(any(!(!arg_0.a.wwz)), false, !(global0.b <= 13236u));
    global2 = ~firstTrailingBit(global0.b);
    global4 = firstTrailingBit(abs(~_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 12199u), ~vec2<u32>(global0.b, 52510u))));
    let var_1 = vec2<u32>(abs(_wgslsmith_sub_u32(min(global0.b >> (var_0.b % 32u), _wgslsmith_add_u32(arg_0.b, arg_0.b)), ~reverseBits(52662u))), ~(~_wgslsmith_mult_u32(51859u, ~arg_0.b)));
    return vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.b, 0u, global4.x, var_1.x), vec4<u32>(global4.x, var_0.b, 1u, 16683u) << (vec4<u32>(58129u, global4.x, arg_0.b, 56140u) % vec4<u32>(32u))), var_1.x) | global0.b, arg_0.b, ~27119u);
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b << (countOneBits(global4.x) % 32u), 2147483647i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b, 52942i), max(vec3<i32>(28762i, u_input.b, u_input.a), vec3<i32>(u_input.b, u_input.a, u_input.b)))), global0.a.zzw, select(-vec3<i32>(1i, i32(-1i) * -29063i, 2147483647i), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(0i, u_input.a, u_input.b)), -vec3<i32>(11428i, -2147483647i, u_input.b)) << (_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 38359u, 61229u), vec3<u32>(global4.x, 0u, 4294967295u)), firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 37324u))) % vec3<u32>(32u)), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_div_f32(-1289f, -1204f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(-1475f * -254f)))), vec4<i32>(_wgslsmith_mod_i32(0i, u_input.a), ~u_input.a << (global0.b % 32u), u_input.a, _wgslsmith_mult_i32(-u_input.b, firstTrailingBit(-23287i))) >> (select(func_3(Struct_2(global0.a, global0.b), 1f), vec4<u32>(_wgslsmith_clamp_u32(48797u, 0u, global0.b), ~1278u, 1u & global0.b, 0u), global0.a.x) % vec4<u32>(32u)));
}

fn func_1() -> i32 {
    var var_0 = 7507u;
    global1 = global0.b >> (~_wgslsmith_sub_u32(51639u, global4.x) % 32u);
    let var_1 = 25443u;
    let var_2 = func_2();
    var var_3 = global0.a.x;
    return ~var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 1i) | -vec2<i32>(1i, u_input.b), firstLeadingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(-1i, u_input.b)))) ^ (abs(u_input.b) ^ u_input.a);
    global1 = ~abs(1u);
    var var_1 = vec4<i32>(u_input.b, ~u_input.a, u_input.b << (0u % 32u), func_1()) ^ -abs(max(min(vec4<i32>(-14759i, u_input.b, u_input.b, u_input.a), vec4<i32>(-8572i, u_input.b, -1i, u_input.b)), vec4<i32>(u_input.b, -10089i, u_input.a, u_input.b) | vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)));
    var var_2 = Struct_3(func_2(), var_1.x, _wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(36232u, global4.x, 32692u, global4.x), vec4<u32>(global4.x, 54903u, 97525u, global0.b)) >> ((vec4<u32>(3817u, global4.x, 114521u, global4.x) ^ vec4<u32>(global0.b, global0.b, global4.x, 1u)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mult_u32(global0.b, global0.b), ~_wgslsmith_clamp_u32(1u, 40528u, 45198u), ~(global4.x & 0u), min(28553u, 53728u))));
    global1 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(var_2.c.yz, vec2<u32>(global0.b, var_2.c.x))), var_2.c.xy), 26635u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, global4.x, global0.b), ~var_2.c.yww) ^ _wgslsmith_dot_vec3_u32(~var_2.c.zxz, reverseBits(var_2.c.yyz)), select(_wgslsmith_add_u32(global0.b, ~4294967295u), global0.b, all(vec3<bool>(var_2.a.b.x, global3.x, true)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-1282f * var_2.a.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.d.x + 1521f) * _wgslsmith_f_op_f32(round(-1000f))) - 1483f), global0.a.x & true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a.d.x, -1045f, !(var_2.b > u_input.a))) * _wgslsmith_f_op_f32(-var_2.a.d.x)), _wgslsmith_f_op_f32(-var_2.a.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yx);
}

