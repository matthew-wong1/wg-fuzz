struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(1000f, -542f, -124f, 229f, 198f, 740f, -892f, 335f, 181f, 569f, 513f, 894f, -1078f, 651f, -402f, -2183f, -239f, -1134f, 1388f, 571f, -519f, -940f, 1192f, 953f, -1853f, -186f, 1000f, -893f, 480f, -250f, -334f, -232f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<bool>, arg_3: i32) -> bool {
    var var_0 = ~vec3<u32>(~u_input.d, ~_wgslsmith_mod_u32(271u, 1u) << (u_input.a % 32u), ~_wgslsmith_mod_u32(~416u, u_input.d));
    var_0 = vec3<u32>(_wgslsmith_mod_u32(55694u, 74400u), 1u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.d, var_0.x)) << (_wgslsmith_add_vec2_u32(var_0.yy, vec2<u32>(u_input.b, 36747u)) % vec2<u32>(32u)), ~var_0.zy)) >> (vec3<u32>(57109u, 4834u, select(28288u, 1u, select(arg_2.x, all(vec4<bool>(arg_2.x, true, false, false)), any(arg_2)))) % vec3<u32>(32u));
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(24427u, 32u)], -738f, -1003f), vec4<f32>(476f, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(59917u, 32u)]), arg_2)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], 214f, global0[_wgslsmith_index_u32(u_input.b, 32u)], 963f)))), vec4<f32>(245f, _wgslsmith_f_op_f32(-605f * global0[_wgslsmith_index_u32(u_input.b, 32u)]), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(var_0.x, 32u)])), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.d, 32u)]))), select(vec4<bool>(true, true, arg_2.x, false), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), arg_2, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), -2147483647i == arg_3))), vec4<bool>(arg_2.x, !arg_2.x, false, any(arg_2.xy)), 46410u ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, u_input.a, 4294967295u), ~vec4<u32>(var_0.x, var_0.x, 15557u, var_0.x)), select(arg_2, vec4<bool>(any(arg_2.zx), global0[_wgslsmith_index_u32(var_0.x, 32u)] > 2322f, false, select(true, false, true)), arg_2), _wgslsmith_add_vec2_u32(var_0.xx, vec2<u32>(1u, 4294967295u)) >> (vec2<u32>(~var_0.x, var_0.x) % vec2<u32>(32u))), max(var_0.x, var_0.x & abs(var_0.x)), firstTrailingBit(u_input.c.x & ~u_input.c.x), _wgslsmith_add_vec3_u32(select(vec3<u32>(var_0.x >> (var_0.x % 32u), ~var_0.x, firstLeadingBit(u_input.a)), vec3<u32>(_wgslsmith_mult_u32(83168u, var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 25139u), var_0.zy), var_0.x), !arg_2.xyy), ~(~(vec3<u32>(var_0.x, 0u, var_0.x) ^ vec3<u32>(var_0.x, u_input.a, u_input.d)))));
    return any(vec3<bool>(arg_2.x, select(!any(vec4<bool>(false, true, true, true)), true, true), true));
}

fn func_2() -> Struct_3 {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(665f, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)]))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 1038f, -1274f, global0[_wgslsmith_index_u32(u_input.d, 32u)])))))), vec4<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false)), func_3(vec2<i32>(28079i, 2147483647i), -2147483647i, vec4<bool>(true, true, false, false), ~(-13189i)), !all(vec2<bool>(true, false)), !all(vec2<bool>(false, true))), u_input.d, vec4<bool>(true, false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), any(vec2<bool>(true, true))), vec2<u32>(~(~u_input.a), ~(~u_input.a))), u_input.d, -(-47475i ^ u_input.c.x), reverseBits(vec3<u32>(~_wgslsmith_clamp_u32(u_input.d, 18334u, u_input.b), _wgslsmith_div_u32(u_input.a, 1u), ~firstTrailingBit(0u))));
    let var_1 = select(!select(!var_0.a.b.zzx, !vec3<bool>(false, var_0.a.d.x, false), vec3<bool>(false, var_0.a.b.x, all(var_0.a.b.yzx))), select(select(var_0.a.b.xzz, select(var_0.a.d.wxz, vec3<bool>(true, false, false), any(var_0.a.d.yw)), !select(var_0.a.b.xyw, vec3<bool>(var_0.a.b.x, true, true), var_0.a.b.wxw)), var_0.a.b.xww, true), select(!select(select(var_0.a.b.ywz, vec3<bool>(true, var_0.a.d.x, var_0.a.d.x), vec3<bool>(true, var_0.a.d.x, var_0.a.b.x)), vec3<bool>(var_0.a.b.x, false, false), vec3<bool>(var_0.a.d.x, false, var_0.a.d.x)), var_0.a.b.yzy, var_0.a.d.ywz));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -821f, _wgslsmith_div_f32(var_0.a.a.x, global0[_wgslsmith_index_u32(1u, 32u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.d.x, 32u)], var_0.a.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.a.a))));
    return Struct_3(var_0, var_0, 1i);
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = 16247u;
    var var_1 = Struct_4(Struct_2(Struct_1(arg_0.a.a.a, arg_0.b.a.d, u_input.d, arg_0.a.a.b, ~(~arg_0.a.a.e)), arg_0.a.a.e.x, 0i ^ _wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(u_input.c.x, arg_0.a.c)), ~(~arg_0.b.d | ~arg_0.a.d)), Struct_3(arg_0.a, func_2().b, -2147483647i), 46795u);
    var var_2 = func_2();
    let var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.b.d, var_1.b.a.d >> (_wgslsmith_add_vec3_u32(var_2.a.d, var_2.a.d) % vec3<u32>(32u))), var_1.b.a.d) >> (arg_0.b.d % vec3<u32>(32u));
    let var_4 = func_2().b;
    return ~_wgslsmith_add_u32(arg_0.a.a.e.x, func_2().b.d.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> bool {
    let var_0 = ~(~vec2<u32>(~arg_1 ^ u_input.d, func_4(func_2())));
    let var_1 = arg_0.x;
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    let var_2 = 404f;
    return _wgslsmith_f_op_f32(ceil(392f)) < global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(var_0.x, _wgslsmith_mult_u32(1u, 1u))), 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(14552u, 32u)], global0[_wgslsmith_index_u32((u_input.a ^ u_input.a) | _wgslsmith_dot_vec3_u32(vec3<u32>(38675u, 1u, u_input.b), vec3<u32>(4294967295u, u_input.a, 1u)), 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 32u)]))), global0[_wgslsmith_index_u32(u_input.d, 32u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(266f, -1824f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 32u)])), -478f)), !any(vec2<bool>(true, true)))), vec4<bool>(true, true, true, false), u_input.a, vec4<bool>(true == !(global0[_wgslsmith_index_u32(35680u, 32u)] == global0[_wgslsmith_index_u32(115309u, 32u)]), true, true, false), max(~vec2<u32>(abs(u_input.a), u_input.a), vec2<u32>(u_input.d, ~(u_input.b | u_input.d))));
    var_0 = Struct_1(var_0.a, select(var_0.d, vec4<bool>(func_1(~vec3<u32>(81089u, var_0.e.x, 59155u), 1u), var_0.b.x, func_1(vec3<u32>(73485u, u_input.a, var_0.c), 0u), var_0.d.x), true), ~4294967295u, !select(var_0.b, var_0.b, select(select(vec4<bool>(false, var_0.b.x, var_0.d.x, false), vec4<bool>(false, var_0.b.x, true, var_0.b.x), vec4<bool>(true, var_0.d.x, var_0.b.x, false)), var_0.d, var_0.b)), func_2().b.d.xx);
    let var_1 = func_2().a.a;
    var var_2 = vec4<bool>((abs(_wgslsmith_sub_i32(18171i, 1i)) <= u_input.c.x) | !func_3(_wgslsmith_mod_vec2_i32(u_input.c, u_input.c), max(-2147483647i, -2147483647i), vec4<bool>(false, false, true, false), 2147483647i), var_1.b.x & (!var_0.d.x & (var_1.b.x && var_1.d.x)), true, true);
    let var_3 = abs(max(firstTrailingBit(var_1.c), ~_wgslsmith_sub_u32(var_1.c, 1u)));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, abs(_wgslsmith_div_u32(~var_1.c, var_1.e.x)), var_1.e.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, ~var_0.c), ~_wgslsmith_mult_u32(53687u, u_input.a))), _wgslsmith_clamp_u32(var_0.c, var_3, _wgslsmith_mod_u32(4294967295u, 14995u)));
}

