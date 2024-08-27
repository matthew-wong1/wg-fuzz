struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    var var_0 = -517f;
    let var_1 = arg_0.b;
    var var_2 = arg_0.a;
    global0 = array<i32, 13>();
    let var_3 = arg_0.a.a.yz;
    return ~(~(firstLeadingBit(~79313u) << (max(1u, 0u) % 32u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> i32 {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_1.a.d.zxy), vec3<f32>(arg_1.a.d.x, 1518f, 311f))))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.d.x, -250f, arg_1.a.d.x), _wgslsmith_f_op_vec3_f32(arg_1.a.d.xyz + arg_1.a.d.zxy))));
    let var_1 = u_input.d.x;
    var var_2 = arg_1.a;
    return -1i;
}

fn func_1() -> bool {
    global0 = array<i32, 13>();
    var var_0 = vec4<u32>(_wgslsmith_div_u32(36557u, 31127u), ~(~u_input.e.x), 0u, u_input.b.x);
    global0 = array<i32, 13>();
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>((global0[_wgslsmith_index_u32(~u_input.b.x, 13u)] << (func_2(Struct_3(Struct_2(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(30049u, 13u)], u_input.c.x), Struct_1(vec3<bool>(false, true, true), 2391u, var_0.x, vec4<u32>(var_0.x, 54903u, u_input.b.x, 0u)), u_input.e, vec4<f32>(-683f, -1167f, -606f, 910f)), Struct_1(vec3<bool>(true, false, false), u_input.a, u_input.a, vec4<u32>(26311u, 4294967295u, 31379u, 40957u))), Struct_3(Struct_2(vec3<i32>(global0[_wgslsmith_index_u32(1u, 13u)], -63965i, u_input.c.x), Struct_1(vec3<bool>(false, true, true), u_input.a, 105333u, vec4<u32>(u_input.b.x, 44556u, var_0.x, u_input.e.x)), vec2<u32>(u_input.e.x, 1u), vec4<f32>(-2177f, -252f, 570f, 559f)), Struct_1(vec3<bool>(false, false, false), u_input.b.x, 50002u, vec4<u32>(0u, u_input.e.x, var_0.x, var_0.x)))) % 32u)) & min(select(global0[_wgslsmith_index_u32(var_0.x, 13u)], global0[_wgslsmith_index_u32(37488u, 13u)], false), global0[_wgslsmith_index_u32(u_input.a, 13u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, _wgslsmith_sub_u32(u_input.e.x, u_input.a)), ~_wgslsmith_add_vec2_u32(var_0.yy, vec2<u32>(0u, var_0.x))), 13u)]), ~(-_wgslsmith_div_vec2_i32(vec2<i32>(-1i, global0[_wgslsmith_index_u32(45771u, 13u)]), u_input.d)));
    let var_2 = Struct_3(Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.d.x, -1i), var_1, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), vec3<i32>(func_3(u_input.d, Struct_3(Struct_2(vec3<i32>(-1i, -44679i, global0[_wgslsmith_index_u32(10791u, 13u)]), Struct_1(vec3<bool>(true, false, true), var_0.x, u_input.b.x, vec4<u32>(u_input.a, u_input.a, var_0.x, u_input.e.x)), vec2<u32>(2649u, 46962u), vec4<f32>(1671f, 580f, -172f, 181f)), Struct_1(vec3<bool>(false, true, true), 33759u, u_input.a, vec4<u32>(u_input.a, 5052u, u_input.e.x, var_0.x))), false, Struct_1(vec3<bool>(false, false, false), 11447u, 72507u, vec4<u32>(16600u, 39285u, 0u, var_0.x))), _wgslsmith_clamp_i32(-1i, u_input.c.x, -21272i), _wgslsmith_div_i32(-1i, u_input.d.x)), ~(vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 13u)], 31778i, var_1) ^ vec3<i32>(9620i, -1i, 2147483647i))), Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), 1u, u_input.e.x, vec4<u32>(~1u, ~0u, var_0.x >> (u_input.a % 32u), u_input.b.x)), ~_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(var_0.x, 45377u)), vec2<u32>(2035u, 4294967295u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1636f, -746f, 170f, 1515f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(683f, 592f, 261f, 1526f)), vec4<bool>(true, false, false, false)))), Struct_1(select(vec3<bool>(true, all(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), any(vec2<bool>(false, true)) | any(vec2<bool>(true, false))), var_0.x | (countOneBits(4294967295u) & _wgslsmith_mod_u32(var_0.x, 44097u)), u_input.e.x, vec4<u32>(~_wgslsmith_dot_vec2_u32(var_0.yx, vec2<u32>(u_input.a, u_input.e.x)), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_div_u32(9447u, u_input.a), _wgslsmith_mod_u32(10105u, 362u)), u_input.b.x)));
    return var_2.a.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), all(vec4<bool>(false, true, true, true)))), true, func_1(), true), !vec4<bool>(all(vec2<bool>(true, false)), true, true, true && any(vec3<bool>(true, false, true))), vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1354f * 1284f), _wgslsmith_f_op_f32(step(587f, 874f)))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-503f + 1011f), _wgslsmith_div_f32(-1726f, -659f))), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, u_input.a), 13u)] > global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, _wgslsmith_mod_u32(u_input.a, u_input.e.x)), 13u)], select((u_input.d.x & 0i) <= (u_input.d.x ^ -24353i), false, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -26257i), -u_input.d) < -max(-27058i, -26242i)));
    var var_1 = vec3<u32>(1u, ~min(1u, _wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, 0u), u_input.e))), _wgslsmith_mult_u32(62667u, 0u));
    let var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) - -912f), -1000f))));
    let var_4 = Struct_3(Struct_2(~(~vec3<i32>(10567i, global0[_wgslsmith_index_u32(var_2, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])), Struct_1(!vec3<bool>(var_0.x, var_0.x, var_0.x), _wgslsmith_mult_u32(1628u, 23970u) >> (u_input.e.x % 32u), ~_wgslsmith_mod_u32(33277u, var_2), _wgslsmith_mod_vec4_u32(~vec4<u32>(8382u, var_1.x, var_2, 66420u), firstTrailingBit(vec4<u32>(var_1.x, var_2, var_2, 1u)))), ~var_1.zx, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(282f, var_3.x, -810f, 512f))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-450f)), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(sign(402f)), _wgslsmith_f_op_f32(-1471f * -1264f)))), Struct_1(var_0.yyy, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(18186u, 1u, 37152u), vec3<u32>(var_1.x, var_2, u_input.b.x), true), ~(~vec3<u32>(var_2, u_input.b.x, 0u))), 4294967295u << (((u_input.b.x & var_1.x) << (max(var_2, 4294967295u) % 32u)) % 32u), vec4<u32>(min(firstTrailingBit(var_2), u_input.b.x), ~(~4294967295u), ~(u_input.b.x ^ u_input.e.x), var_1.x)));
    var var_5 = var_4.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~vec2<u32>(834u, var_4.b.b))), abs(_wgslsmith_mod_vec3_i32(var_4.a.a, _wgslsmith_mod_vec3_i32(abs(var_4.a.a), var_4.a.a))), vec4<i32>(var_4.a.a.x, -2147483647i, ~(~1i), ~_wgslsmith_mod_i32(var_4.a.a.x, var_4.a.a.x)), (abs(var_1.zx) | ((vec2<u32>(u_input.e.x, u_input.a) << (vec2<u32>(39195u, 0u) % vec2<u32>(32u))) | (vec2<u32>(0u, 19889u) >> (vec2<u32>(var_2, 1u) % vec2<u32>(32u))))) << (var_4.b.d.yy % vec2<u32>(32u)));
}

