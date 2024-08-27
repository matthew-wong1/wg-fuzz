struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 7628i;

var<private> global1: Struct_3;

var<private> global2: array<f32, 19> = array<f32, 19>(-794f, 755f, -1684f, 128f, -288f, 225f, -550f, 588f, 299f, 2251f, 1378f, 271f, -557f, -333f, -672f, 866f, -1564f, -783f, 739f);

var<private> global3: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(4294967295u, 7517u), vec2<u32>(4294967295u, 96782u), vec2<u32>(4294967295u, 0u), vec2<u32>(3148u, 6478u), vec2<u32>(4294967295u, 25106u), vec2<u32>(1u, 47987u), vec2<u32>(8189u, 48080u), vec2<u32>(4294967295u, 38731u), vec2<u32>(32760u, 4294967295u), vec2<u32>(0u, 15144u), vec2<u32>(4294967295u, 59781u), vec2<u32>(45786u, 4561u), vec2<u32>(67304u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u));

var<private> global4: vec2<f32> = vec2<f32>(143f, 487f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    return global1.d;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: Struct_4) -> f32 {
    let var_0 = arg_3.a.x;
    global1 = Struct_3(select(!arg_0.b.b.xx, !(!select(arg_0.b.b.zx, arg_0.b.b.zz, vec2<bool>(arg_1, true))), false), _wgslsmith_clamp_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec3_i32(u_input.a.wwy, u_input.a.xyw), -u_input.a.x >> (88935u % 32u), _wgslsmith_sub_i32(u_input.a.x, 10728i), (arg_0.a << (13393u % 32u)) << (0u % 32u)), vec4<i32>(arg_0.a, -1i, 32047i, func_2(global1.d.a.x | global1.d.a.x, select(arg_0.b.b.x, arg_1, true)).a.x), _wgslsmith_mod_vec4_i32(~vec4<i32>(global1.b.x, u_input.a.x, 41925i, arg_0.a), vec4<i32>(16809i, ~u_input.a.x, -2147483647i, _wgslsmith_sub_i32(u_input.a.x, -18295i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1169f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f - arg_3.a.x)) + global1.c)), func_2(i32(-1i) * -11760i, 35442u <= u_input.b.x));
    global1 = Struct_3(arg_0.b.b.yz, firstTrailingBit(vec4<i32>(arg_0.b.a.x & abs(1i), 1i, abs(u_input.a.x), ~1i)), -1498f, arg_0.b);
    return _wgslsmith_f_op_f32(max(-2912f, -793f));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -280f), -1991f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_2(-u_input.a.x, func_2(-1i, global1.d.b.x)), true, global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(arg_1.x, u_input.b.x)), 19u)], Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], -1079f)), ~u_input.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f + 1554f)));
    global0 = global1.d.a.x;
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-var_0.yz), global3[_wgslsmith_index_u32(u_input.b.x, 15u)]);
    global4 = var_1.a;
    let var_2 = Struct_2(-func_2(5619i | max(u_input.a.x, global1.d.a.x), arg_0).a.x, global1.d);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1.d.b.x, ~u_input.c);
    var_0 = Struct_2((~var_0.b.a.x & _wgslsmith_div_i32(global1.d.a.x, firstLeadingBit(global1.b.x))) ^ u_input.a.x, func_2(2147483647i, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1452f + 1000f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(48253u, 19u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(global1.c + global4.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -879f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global1.c) * vec2<f32>(-572f, global4.x))))));
    global1 = Struct_3(select(select(var_0.b.b.yy, vec2<bool>(func_2(2147483647i, false).b.x, var_0.b.b.x), true), !vec2<bool>(true, select(global1.d.b.x, var_0.b.b.x, var_0.b.b.x)), all(var_0.b.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -2147483647i, var_0.b.a.x, 1i), abs(select(vec4<i32>(2147483647i, 41696i, global1.d.a.x, u_input.a.x), vec4<i32>(1i, var_0.a, var_0.a, 6551i), global1.d.b.x) & _wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, -30270i, -23117i), u_input.a)), firstLeadingBit(vec4<i32>(2147483647i, countOneBits(30358i), 1i, global1.b.x))), global4.x, global1.d);
    var var_2 = select(_wgslsmith_mult_vec3_u32(u_input.c, _wgslsmith_clamp_vec3_u32(min(u_input.c, ~u_input.c), vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 15551u), 0u, select(3975u, u_input.c.x, var_0.b.b.x)), vec3<u32>(_wgslsmith_sub_u32(0u, u_input.c.x), 4294967295u, 4431u))), max(u_input.c | vec3<u32>(max(u_input.c.x, 41099u), 43936u, reverseBits(4294967295u)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, 15452u), 1u), u_input.c.x, 0u)), !all(vec4<bool>(u_input.b.x != 19385u, false, global1.a.x, var_0.b.b.x)));
    var var_3 = select(global1.d.b.x, select(!global1.d.b.x, true, var_0.b.b.x), !all(!select(global1.a, vec2<bool>(global1.d.b.x, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(select(-global1.b, u_input.a, var_0.b.b.x), ~(~firstLeadingBit(global1.b.x)) & (u_input.a.x >> ((countOneBits(2289u) << (~u_input.b.x % 32u)) % 32u)), global1.c, vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 71189u << (var_2.x % 32u)), 1u, countOneBits(var_2.x), ~14644u) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, var_2.x, 0u, 0u) & vec4<u32>(var_2.x, 36670u, var_2.x, 32389u), abs(vec4<u32>(1u, 46382u, var_2.x, 0u))) % vec4<u32>(32u)));
}

