struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<bool>(true, false, false), vec3<i32>(1i, 1i, 45541i)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> u32 {
    global0 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(global0.x, arg_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), arg_2), u_input.c.x), vec4<u32>(reverseBits(arg_2.x), ~countOneBits(global0.x), max(_wgslsmith_mod_u32(1u, 60811u), u_input.a.x), 40287u));
    return global0.x;
}

fn func_2() -> vec4<f32> {
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    let var_0 = vec4<bool>(true, (_wgslsmith_mult_u32(reverseBits(global0.x), u_input.a.x) | 4294967295u) > u_input.c.x, true, false);
    global0 = ~vec4<u32>(~1u, ~(4294967295u >> (u_input.c.x % 32u)), _wgslsmith_mult_u32(~0u, func_3(global1[_wgslsmith_index_u32(16368u, 1u)], -1i, vec2<u32>(u_input.a.x, u_input.c.x), var_0.yyx)), ~global0.x) >> (select(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(27251u, 49903u, u_input.a.x, 0u), vec4<u32>(u_input.c.x, 0u, u_input.a.x, u_input.a.x))), select(vec4<u32>(u_input.a.x, global0.x, 63726u, 6121u) ^ (vec4<u32>(u_input.c.x, 0u, 21104u, 32424u) | vec4<u32>(u_input.a.x, u_input.c.x, 2945u, 1u)), vec4<u32>(global0.x, global0.x, u_input.c.x, 1u) | (vec4<u32>(u_input.c.x, 352u, 1u, 58406u) | vec4<u32>(57038u, u_input.c.x, u_input.c.x, 1u)), var_0.x), true) % vec4<u32>(32u));
    var var_1 = Struct_1(vec3<bool>(var_0.x || var_0.x, ~(~0u) > _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, u_input.a.x, u_input.c.x), u_input.a), max(u_input.a, vec3<u32>(2796u, u_input.c.x, 16439u))), var_0.x), _wgslsmith_mult_vec3_i32(u_input.b.wxw, -max(vec3<i32>(u_input.b.x, u_input.b.x, 1307i), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1275f)) * -967f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1812f)) * -340f), _wgslsmith_f_op_f32(532f - _wgslsmith_f_op_f32(floor(158f))), 384f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(125f)), _wgslsmith_f_op_f32(ceil(-345f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(629f * 1324f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - 971f), _wgslsmith_f_op_f32(max(935f, 271f))))), 2816f, -1000f));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<f32>) -> Struct_1 {
    return Struct_1(!select(select(select(arg_1.a, vec3<bool>(arg_2.x, false, true), arg_2.yyz), select(vec3<bool>(false, true, arg_2.x), vec3<bool>(arg_2.x, false, false), true), -14685i > u_input.b.x), vec3<bool>(arg_2.x, arg_1.a.x, arg_2.x), select(true, all(arg_2), 29453i >= arg_1.b.x)), u_input.b.wwy);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 1>();
    let var_0 = func_4(arg_1.a.x && any(arg_1.a.zx), Struct_1(arg_2.a, arg_1.b), vec4<bool>(arg_1.a.x, any(!select(arg_2.a.xy, arg_2.a.yy, vec2<bool>(true, arg_1.a.x))), true, any(select(!vec4<bool>(false, arg_1.a.x, true, true), !vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_1.a.x), arg_2.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1284f, 2131f, _wgslsmith_f_op_f32(select(1862f, _wgslsmith_f_op_f32(floor(1748f)), true)), 1250f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-932f, -1034f, -1076f, -1736f) + vec4<f32>(-405f, -1707f, -463f, -1680f))))));
    let var_1 = arg_2.b.x;
    global0 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, 4294967295u | arg_0.x, u_input.a.x, global0.x), vec4<u32>(~_wgslsmith_sub_u32(4294967295u, arg_0.x), ~func_3(arg_1, 5482i, vec2<u32>(global0.x, 4294967295u), var_0.a), u_input.c.x, arg_0.x));
    let var_2 = _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(19279u, 42227u, global0.x), ~vec3<u32>(arg_0.x, 13359u, global0.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(global0.yzx, vec3<u32>(global0.x, global0.x, 21592u)), 44340u, _wgslsmith_mod_u32(global0.x, global0.x)), global0.zzz) >> (vec3<u32>(~global0.x, ~firstTrailingBit(global0.x), 1u) % vec3<u32>(32u)));
    return func_4(select(var_0.a.x, !arg_2.a.x, false && all(vec4<bool>(true, false, arg_1.a.x, arg_2.a.x))), Struct_1(var_0.a, arg_2.b >> (u_input.a % vec3<u32>(32u))), select(vec4<bool>(!(!arg_1.a.x), !any(vec2<bool>(true, true)), true, _wgslsmith_mod_i32(var_1, arg_2.b.x) < _wgslsmith_sub_i32(-1i, -2147483647i)), !vec4<bool>(arg_0.x != 16168u, var_0.a.x, true, true), vec4<bool>(var_0.a.x, !(!var_0.a.x), true, var_2 > 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(929f, 885f, -1083f, 1127f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1041f, -551f, -377f, 432f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-897f, -391f, -1222f, -604f))) - vec4<f32>(-523f, -116f, -399f, 812f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x), 304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1752f) - _wgslsmith_f_op_f32(354f * 353f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1196f - -1408f) * 1f))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(u_input.c.xx, func_4(true, global1[_wgslsmith_index_u32(abs(~_wgslsmith_mod_u32(87253u, 1u)), 1u)], vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(211f, 189f, -1952f, -1236f), vec4<f32>(-1845f, -1000f, 1460f, -1465f))), vec4<bool>(true, true, true, true))))), global1[_wgslsmith_index_u32(38753u, 1u)]);
    var var_1 = min(~(~abs(~vec4<u32>(23569u, u_input.c.x, u_input.a.x, 1u))), ~(vec4<u32>(~u_input.a.x, 0u, _wgslsmith_mult_u32(u_input.a.x, 0u), _wgslsmith_add_u32(30642u, u_input.a.x)) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(1519u, 1u, u_input.a.x, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(12750u, 97437u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 40795u, u_input.c.x)))));
    var var_2 = abs(_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 4294967295u, global0.x, u_input.c.x), vec4<u32>(u_input.c.x, 37493u, global0.x, global0.x)), vec4<u32>(u_input.a.x, global0.x, 33475u, 9349u) >> (vec4<u32>(global0.x, var_1.x, var_1.x, var_1.x) % vec4<u32>(32u)), vec4<u32>(26014u, u_input.c.x, 94833u, global0.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 1u, 1u), vec4<u32>(u_input.a.x, 0u, 16864u, 0u)), ~vec4<u32>(4294967295u, u_input.a.x, 6553u, 4294967295u)), select(~vec4<u32>(u_input.c.x, 0u, 4294967295u, 1u), vec4<u32>(u_input.a.x, 71949u, 0u, 21753u), false), vec4<u32>(u_input.c.x, ~global0.x, var_1.x, reverseBits(global0.x)))));
    global0 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1.x, global0.x, var_2.x, 43688u)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a.x, var_1.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 1u, var_1.x, 0u), select(vec4<bool>(true, false, true, var_0.a.x), vec4<bool>(false, true, var_0.a.x, var_0.a.x), var_0.a.x)), ~firstLeadingBit(vec4<u32>(u_input.c.x, 14244u, global0.x, var_2.x)))), ~(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 35333u, u_input.a.x), vec4<u32>(var_2.x, 4580u, 4294967295u, 4294967295u))) >> (vec4<u32>(u_input.a.x << (4294967295u % 32u), var_1.x, 13079u, countOneBits(4294967295u)) % vec4<u32>(32u))));
    let var_3 = var_0.a.zz;
    return Struct_1(!func_5(vec2<u32>(var_2.x, _wgslsmith_mult_u32(u_input.c.x, var_2.x)), func_4(var_3.x, Struct_1(var_0.a, u_input.b.xzx), !vec4<bool>(var_3.x, false, true, var_3.x), _wgslsmith_f_op_vec4_f32(func_2())), var_0).a, _wgslsmith_mod_vec3_i32(u_input.b.zxz, (firstTrailingBit(var_0.b) << (~vec3<u32>(global0.x, 12454u, var_1.x) % vec3<u32>(32u))) << ((_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, u_input.c.x), vec3<u32>(global0.x, global0.x, 1u)) & vec3<u32>(global0.x, u_input.c.x, 1u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(vec3<bool>(_wgslsmith_sub_i32(u_input.b.x, -2147483647i) < u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1088f)) * 324f) >= 166f, func_5(vec2<u32>(3408u, global0.x), Struct_1(vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<i32>(var_0.b.x, var_0.b.x, 23785i)), func_4(var_0.a.x, Struct_1(vec3<bool>(true, var_0.a.x, false), vec3<i32>(1i, u_input.b.x, u_input.b.x)), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(625f, -1000f, -1775f, 635f))).a.x), (select(u_input.b.xyw, _wgslsmith_div_vec3_i32(var_0.b, vec3<i32>(var_0.b.x, var_0.b.x, u_input.b.x)), !var_0.a) | abs(abs(u_input.b.wxy))) ^ -var_0.b);
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~global0.x);
}

