struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, true);

var<private> global1: array<i32, 29> = array<i32, 29>(-16911i, -4295i, i32(-2147483648), 1i, -17891i, 0i, 48625i, 2147483647i, -27471i, -1i, i32(-2147483648), -24676i, 69267i, 0i, 2147483647i, 18084i, -26459i, -9057i, 1i, 43542i, 1i, 0i, 69809i, 63581i, 1i, -26586i, 4070i, 5647i, -11020i);

var<private> global2: array<Struct_3, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    let var_0 = u_input.d.x | u_input.a;
    global2 = array<Struct_3, 9>();
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.b.yz, ~vec2<u32>(_wgslsmith_add_u32(73408u, 130677u), _wgslsmith_div_u32(arg_1, arg_3.b.x))), 9u)];
    global2 = array<Struct_3, 9>();
    let var_2 = ~(~(-2147483647i | _wgslsmith_mult_i32(firstLeadingBit(global1[_wgslsmith_index_u32(arg_1, 29u)]), ~4592i)));
    return any(!select(select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true, global0[_wgslsmith_index_u32(0u, 3u)], true), vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.b.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], arg_2.a.x, var_1.d.c.x), arg_2.a.x), vec4<bool>(true, all(arg_2.a), true, global0[_wgslsmith_index_u32(arg_1, 3u)]), vec4<bool>(arg_1 == arg_1, true, !var_1.d.c.x, 275f < arg_3.c.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = all(vec3<bool>(true, arg_2.x, !global0[_wgslsmith_index_u32(arg_0.x & _wgslsmith_add_u32(90619u, 34541u), 3u)]));
    var var_1 = _wgslsmith_add_i32(~u_input.e, -_wgslsmith_dot_vec2_i32(-abs(u_input.d.xx), ~(-vec2<i32>(-43911i, 5225i))));
    var var_2 = Struct_3(Struct_2(1u, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_div_f32(-1850f, -111f)))), arg_2.zzw), Struct_1(-767f, ~u_input.b.zx, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-255f, -179f), vec2<f32>(-610f, 799f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1314f, -105f), vec2<f32>(1262f, -1449f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-226f, 595f) + vec2<f32>(635f, 1679f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -608f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1147f, 261f, 938f)))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1037f, -778f, 369f), vec3<f32>(-1242f, 363f, -311f))), vec3<f32>(-483f, _wgslsmith_f_op_f32(select(301f, 758f, arg_2.x)), _wgslsmith_f_op_f32(abs(1000f)))))), Struct_2(0u, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(794f)), _wgslsmith_f_op_f32(min(761f, 1335f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(520f)), _wgslsmith_div_f32(-656f, -640f))), !select(vec3<bool>(global0[_wgslsmith_index_u32(82022u, 3u)], global0[_wgslsmith_index_u32(13133u, 3u)], arg_2.x), vec3<bool>(false, false, true), select(false, true, arg_2.x))));
    return Struct_4(vec3<bool>(false, !func_3(1i, ~4294967295u, Struct_4(arg_2.xxw), Struct_1(1000f, vec2<u32>(0u, arg_0.x), vec2<f32>(var_2.d.b.x, -1125f))), false));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -574f);
    var var_1 = _wgslsmith_dot_vec4_u32(abs(firstLeadingBit(~abs(vec4<u32>(u_input.b.x, 8980u, 0u, 1u)))), reverseBits(~vec4<u32>(69760u, ~108625u, max(6563u, u_input.b.x), u_input.b.x & 4294967295u)));
    global2 = array<Struct_3, 9>();
    global2 = array<Struct_3, 9>();
    let var_2 = ~_wgslsmith_mod_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(79342u, 0u, 29198u), _wgslsmith_mod_vec3_u32(u_input.b, u_input.b)), ~(~vec3<u32>(u_input.b.x, 19457u, u_input.c))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 68083u | u_input.b.x, 1u), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 109170u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.b.x)))));
    return arg_3.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    let var_0 = any(!vec4<bool>(any(select(arg_1.a, vec3<bool>(false, arg_1.a.x, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 3u)], true, global0[_wgslsmith_index_u32(arg_0.b.x, 3u)]))), false, 1u <= ~arg_0.b.x, !arg_1.a.x));
    var var_1 = _wgslsmith_mod_vec2_u32(arg_0.b, ~u_input.b.zy);
    global1 = array<i32, 29>();
    var var_2 = arg_1;
    let var_3 = arg_1;
    return Struct_2(_wgslsmith_add_u32(u_input.c, ~firstLeadingBit(1u)), arg_0.c, vec3<bool>(true && any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.b.x, 3u)], arg_1.a.x, arg_1.a.x), vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_0.b.x, 3u)], false), false)), !(!(var_2.a.x | true)), true));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_mod_i32(u_input.a >> ((u_input.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 41528u, 0u, 4294967295u), ~vec4<u32>(arg_1, 133429u, u_input.b.x, arg_1)) % 32u)) % 32u), 3042i);
    var var_1 = arg_1;
    var var_2 = !arg_3.yy;
    var_1 = ~firstLeadingBit(arg_1);
    let var_3 = func_5(Struct_1(_wgslsmith_f_op_f32(func_4(true, func_2(vec3<u32>(arg_1, arg_1, 69615u), u_input.b | u_input.b, !vec4<bool>(arg_3.x, var_2.x, global0[_wgslsmith_index_u32(24958u, 3u)], arg_3.x), vec2<u32>(1502u, arg_1)), vec4<bool>(var_2.x, true, true, arg_3.x & arg_3.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-142f, -1791f, -924f), _wgslsmith_f_op_vec3_f32(vec3<f32>(476f, -447f, -1876f) * vec3<f32>(1077f, -251f, -689f)))))), ~(~vec2<u32>(u_input.b.x, u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(493f, -2109f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(771f, 150f))))), func_2(vec3<u32>((u_input.c | u_input.c) << (arg_1 % 32u), 53330u, ~arg_1), vec3<u32>(max(u_input.b.x, u_input.c), ~48749u, abs(u_input.c)) >> ((u_input.b << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], true, true, (var_2.x || false) & (false && var_2.x)), vec2<u32>(u_input.b.x, u_input.b.x) ^ vec2<u32>(33106u, 22785u)), -u_input.e);
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1728f) - _wgslsmith_div_f32(538f, -1119f))))));
    global1 = array<i32, 29>();
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.a, u_input.e, 1636i), 34208u, u_input.a, vec3<bool>(global0[_wgslsmith_index_u32(37935u, 3u)], true, global0[_wgslsmith_index_u32(u_input.c, 3u)]))), -132f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(abs(u_input.d), 4294967295u, 0i, vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)] | false, true, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)]))))) + 1229f));
    var var_2 = Struct_1(-1000f, _wgslsmith_mod_vec2_u32(vec2<u32>(33604u, u_input.c >> (u_input.c % 32u)), ~u_input.b.xz ^ firstLeadingBit(u_input.b.zz)) | (vec2<u32>(u_input.c, u_input.b.x) >> (~(~u_input.b.zy) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1692f, _wgslsmith_f_op_f32(1000f * -762f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, 438f))))));
    var var_3 = !func_2(~_wgslsmith_mult_vec3_u32(u_input.b, ~u_input.b), ~abs(u_input.b), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(49146u, u_input.c), 3u)], func_2(firstTrailingBit(u_input.b), ~vec3<u32>(1u, 0u, 0u), select(vec4<bool>(false, global0[_wgslsmith_index_u32(27027u, 3u)], false, global0[_wgslsmith_index_u32(var_2.b.x, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(var_2.b.x, 3u)], global0[_wgslsmith_index_u32(var_2.b.x, 3u)]), true), ~var_2.b).a.x, global0[_wgslsmith_index_u32(~(~22900u), 3u)], global0[_wgslsmith_index_u32(max(~1u, ~26708u), 3u)]), var_2.b).a;
    var var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.d.x, _wgslsmith_add_i32(u_input.a ^ (i32(-1i) * -2147483647i), 1i)));
}

