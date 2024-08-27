struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: Struct_4 = Struct_4(Struct_1(vec4<f32>(1000f, -560f, 1249f, 1321f), 573f, 686f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_mod_u32(~1u, max(1u, 4294967295u));
    let var_1 = -674f;
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a), ~u_input.a)), 121059u), 36820u, 56582u, min(_wgslsmith_mod_u32(u_input.a.x, countOneBits(~89435u)), 71484u));
    let var_3 = _wgslsmith_add_vec3_i32(abs(vec3<i32>(~select(2147483647i, -2147483647i, global0[_wgslsmith_index_u32(32774u, 19u)]), 1i, abs(abs(2147483647i)))), _wgslsmith_mod_vec3_i32(~reverseBits(vec3<i32>(1i, 1i, 1i)), vec3<i32>(24551i, firstTrailingBit(26052i) ^ min(-1i, 0i), _wgslsmith_clamp_i32(1i << (var_0 % 32u), -23157i, 28267i))));
    let var_4 = -vec2<i32>(0i, var_3.x);
    return ~(-min(vec4<i32>(abs(var_4.x), var_4.x << (u_input.a.x % 32u), _wgslsmith_add_i32(26253i, -1i), abs(-1i)), vec4<i32>(var_3.x, var_3.x, var_4.x ^ -9362i, _wgslsmith_dot_vec2_i32(var_3.xx, var_3.zz))));
}

fn func_2() -> Struct_2 {
    let var_0 = 16336u;
    let var_1 = _wgslsmith_div_vec4_i32(~firstTrailingBit(firstTrailingBit(vec4<i32>(-40462i, -64973i, 0i, 19150i)) & func_3(Struct_4(Struct_1(vec4<f32>(global1.a.b, global1.a.a.x, global1.a.b, global1.a.c), 669f, global1.a.b)), global1.a)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, i32(-1i) * -6545i), vec2<i32>(-1i) * -vec2<i32>(0i, 1i)), 2147483647i, -func_3(Struct_4(Struct_1(global1.a.a, 371f, global1.a.a.x)), global1.a).x, -_wgslsmith_sub_i32(_wgslsmith_add_i32(-23918i, 65615i), abs(-16674i))));
    global0 = array<bool, 19>();
    let var_2 = Struct_4(global1.a);
    global1 = var_2;
    return Struct_2(all(vec3<bool>(true, true, true)) || (any(!vec2<bool>(global0[_wgslsmith_index_u32(var_0, 19u)], false)) | global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x | 12019u), 19u)]), !all(select(vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(var_0, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(61575u, 19u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0, 19u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], false, global0[_wgslsmith_index_u32(0u, 19u)])))), reverseBits(_wgslsmith_add_i32(-_wgslsmith_sub_i32(var_1.x, -1i), _wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, 4879i), var_1.x))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: i32) -> i32 {
    var var_0 = func_2();
    global1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.c, global1.a.a.x, -357f, -402f) + vec4<f32>(global1.a.a.x, global1.a.c, -2039f, global1.a.c))) - vec4<f32>(_wgslsmith_f_op_f32(floor(global1.a.b)), global1.a.b, _wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(round(2254f)))), -603f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.a.x, -1218f))), global1.a.b)));
    var var_1 = _wgslsmith_sub_vec3_i32(~max(_wgslsmith_mult_vec3_i32(vec3<i32>(10306i, -15581i, 27771i), vec3<i32>(var_0.c, 1i, -2488i)) << ((vec3<u32>(u_input.a.x, u_input.a.x, 16364u) ^ vec3<u32>(9193u, 146u, arg_0)) % vec3<u32>(32u)), -(~vec3<i32>(-83179i, var_0.c, 1i))), vec3<i32>(max(~var_0.c, _wgslsmith_mult_i32(-1i, arg_2)) << (u_input.a.x % 32u), 83083i, -1i));
    var var_2 = max(_wgslsmith_dot_vec4_i32(vec4<i32>(func_3(Struct_4(Struct_1(vec4<f32>(-718f, 1000f, -1058f, -1177f), -2214f, -395f)), Struct_1(global1.a.a, -1767f, global1.a.c)).x, ~_wgslsmith_sub_i32(-71337i, 1i), firstTrailingBit(-var_0.c), select(min(1i, var_0.c), 0i, arg_1)), vec4<i32>(~_wgslsmith_dot_vec2_i32(var_1.xy, var_1.zy), ~func_3(Struct_4(global1.a), global1.a).x, -firstLeadingBit(-9414i), -var_0.c)), arg_2);
    var_1 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(firstTrailingBit(~vec3<i32>(var_0.c, var_0.c, -29412i)), func_3(Struct_4(global1.a), global1.a).zwy);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(-1i, 1i), 1i);
    var var_1 = ~vec2<i32>(func_1(u_input.a.x, true, var_0.x), var_0.x >> (reverseBits(select(u_input.a.x, 54088u, false)) % 32u));
    var var_2 = _wgslsmith_f_op_f32(-global1.a.a.x);
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.b * global1.a.c) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(-1216f)))), 1020f);
    var var_3 = func_2();
    var var_4 = vec3<u32>(58897u, 0u, 1u);
    var var_5 = abs(vec2<i32>(_wgslsmith_mult_i32(-35468i, ~var_0.x), 32908i)) << (vec2<u32>(0u, var_4.x) % vec2<u32>(32u));
    let var_6 = ~_wgslsmith_add_u32(var_4.x, 1u);
    global1 = Struct_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(global1.a.b, global1.a.b)), _wgslsmith_f_op_f32(step(-1000f, 308f)), global1.a.c, -1584f), -2432f, _wgslsmith_div_f32(-661f, 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.a.b)))), _wgslsmith_f_op_f32(step(1000f, 1522f)))), 1u, _wgslsmith_sub_vec2_i32(~firstTrailingBit(vec2<i32>(2147483647i, var_3.c)), -vec2<i32>(var_0.x, 1i)));
}

