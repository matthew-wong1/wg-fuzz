struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> f32 {
    return -813f;
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 28>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(512f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1958f, -240f)))));
    global1 = Struct_1(select(vec4<bool>(u_input.b.x <= _wgslsmith_add_u32(11383u, 62930u), false, var_0 > _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(false, false, global1.a.x, global1.a.x), -1i, global1.c, global0[_wgslsmith_index_u32(1u, 28u)]), 0u, var_0)), true), select(select(global1.a, select(global1.a, vec4<bool>(true, false, true, false), global1.a.x), global1.a.x), global1.a, !all(global1.a.ww)), global1.a), i32(-1i) * -_wgslsmith_sub_i32(~u_input.c.x, u_input.a), global1.d, -47965i);
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 16116u, u_input.b.x)) ^ _wgslsmith_mod_vec3_u32(u_input.b.yyy, u_input.b.xxy)), u_input.b.yzx), vec3<u32>(u_input.b.x, 17039u, u_input.b.x) << (vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, firstTrailingBit(6746u)), countOneBits(72136u), reverseBits(u_input.b.x)) % vec3<u32>(32u)));
    var var_2 = Struct_1(vec4<bool>(!(!(false || global1.a.x)), !(_wgslsmith_f_op_f32(ceil(-1060f)) > _wgslsmith_f_op_f32(floor(1636f))), true, false), -1i, 0i | global0[_wgslsmith_index_u32(var_1.x, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)]);
    return Struct_1(!global1.a, global1.c, 0i, -min(-27934i, _wgslsmith_clamp_i32(global1.d, abs(global0[_wgslsmith_index_u32(40753u, 28u)]), _wgslsmith_mult_i32(global1.b, global1.c))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<f32>(-384f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-114f, -317f)), 2307f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(809f)) + _wgslsmith_f_op_f32(-1000f - -251f)))), 226f, _wgslsmith_f_op_f32(func_3(func_2(), u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1001f))));
    let var_1 = arg_0;
    global1 = arg_0;
    var var_2 = 0u;
    var var_3 = func_2();
    return Struct_1(arg_0.a, select(var_3.d, 68570i, all(arg_0.a)), _wgslsmith_dot_vec4_i32(reverseBits(~u_input.c), u_input.c) >> (u_input.b.x % 32u), _wgslsmith_clamp_i32(-firstLeadingBit(-8412i), _wgslsmith_clamp_i32(-35682i, abs(global0[_wgslsmith_index_u32(0u, 28u)]), -arg_0.d), -1i));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0;
    global1 = Struct_1(!func_2().a, -11911i, 2147483647i, var_0.b);
    var var_1 = ~(-func_2().b);
    let var_2 = 2147483647i;
    var_0 = arg_0;
    return arg_0;
}

fn func_1(arg_0: bool) -> vec3<i32> {
    var var_0 = func_5(func_4(func_2(), u_input.b.xy), global1.a.xwx);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(1308f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(global1.a.x, false, true, true), u_input.a, global0[_wgslsmith_index_u32(0u, 28u)], 1i), 1u, -143f))), _wgslsmith_f_op_f32(f32(-1f) * -745f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1149f, _wgslsmith_f_op_f32(select(653f, 1027f, true)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1790f, 1758f, 1227f), vec3<f32>(-627f, 1029f, -960f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-727f, 1012f, -459f) + vec3<f32>(-2629f, -390f, -814f)))))));
    var var_2 = vec2<bool>(all(func_5(func_4(Struct_1(vec4<bool>(false, arg_0, true, false), 29287i, 2147483647i, global1.b), _wgslsmith_mod_vec2_u32(u_input.b.wy, u_input.b.yx)), func_5(Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, false, arg_0), global0[_wgslsmith_index_u32(4294967295u, 28u)], 2147483647i, -1i), global1.a.ywz).a.zxy).a), all(vec3<bool>(var_0.a.x, !var_0.a.x, all(global1.a))) || false);
    var_2 = func_2().a.yw;
    var_2 = global1.a.yz;
    return ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, -39026i, _wgslsmith_clamp_i32(-1i, ~2147483647i, 0i)), vec3<i32>(1i, ~var_0.b, global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), u_input.c.zzw);
}

fn func_6(arg_0: i32) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = ~_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(u_input.b.x >> (39238u % 32u), _wgslsmith_div_u32(u_input.b.x ^ u_input.b.x, _wgslsmith_sub_u32(1u, 1u))));
    var_0 = func_4(Struct_1(select(vec4<bool>(!global1.a.x, u_input.b.x > var_1, false, func_4(Struct_1(global1.a, global0[_wgslsmith_index_u32(4294967295u, 28u)], arg_0, var_0.c), u_input.b.xw).a.x), vec4<bool>(true, global1.a.x, true, true), true), u_input.c.x, -select(~(-2147483647i), reverseBits(var_0.c), !global1.a.x), 1i), u_input.b.zx);
    var var_2 = Struct_1(var_0.a, 1i, -firstTrailingBit(-(global1.d | -13412i)), 2147483647i);
    var var_3 = -741f;
    return func_4(func_5(func_5(func_2(), select(var_0.a.xyz, select(vec3<bool>(true, false, true), vec3<bool>(var_2.a.x, global1.a.x, true), vec3<bool>(var_0.a.x, global1.a.x, false)), var_0.a.zxx)), select(var_0.a.zxw, func_5(func_4(Struct_1(vec4<bool>(global1.a.x, var_2.a.x, true, false), var_2.c, var_0.d, -48457i), u_input.b.wx), global1.a.xyz).a.xzw, var_0.a.zyy)), vec2<u32>(~_wgslsmith_clamp_u32(0u, ~var_1, 2869u), ~_wgslsmith_dot_vec4_u32(~u_input.b, abs(vec4<u32>(49870u, 1u, u_input.b.x, 7322u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 28>();
    global1 = Struct_1(vec4<bool>(global1.a.x, any(select(vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(global1.a.x, global1.a.x), global1.a.zx)) & false, false, (global1.a.x | global1.a.x) || false), i32(-1i) * -1i, -_wgslsmith_div_i32(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 28u)], _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-1i, -2147483647i)), -u_input.c.zy)), u_input.c.x);
    var var_0 = ~_wgslsmith_mult_vec3_u32(u_input.b.zzx, ~vec3<u32>(u_input.b.x, u_input.b.x, 37018u)) | u_input.b.yxw;
    global0 = array<i32, 28>();
    var var_1 = func_6(~(~(-24398i)) & _wgslsmith_dot_vec3_i32(func_1(all(vec2<bool>(global1.a.x, false))), u_input.c.yxy));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_clamp_u32(4294967295u, ~u_input.b.x, 1u), _wgslsmith_dot_vec2_u32(select(u_input.b.xx, var_0.xy, global1.a.zz) | vec2<u32>(13973u, u_input.b.x), u_input.b.xz)), select(vec3<u32>(_wgslsmith_sub_u32(~9664u, abs(1u)), ~u_input.b.x ^ 4294967295u, 105785u), vec3<u32>(u_input.b.x, u_input.b.x, 8958u), global1.a.zwy), _wgslsmith_dot_vec3_u32(vec3<u32>(25165u, 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, var_0.x, 44836u), vec3<u32>(0u, u_input.b.x, var_0.x)), ~vec3<u32>(var_0.x, u_input.b.x, u_input.b.x))), select(vec3<u32>(0u, 1u, 20213u), ~min(u_input.b.yxz, vec3<u32>(3413u, 1u, u_input.b.x)), vec3<bool>(global1.a.x, true, var_1.a.x))), ~(~vec2<u32>(4294967295u, u_input.b.x)));
}

