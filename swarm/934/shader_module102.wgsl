struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = Struct_1(vec3<u32>(4294967295u, ~(~countOneBits(u_input.c)), 1u), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, false, false, true), true), any(vec2<bool>(true, true))), -(vec3<i32>(-1i) * -vec3<i32>(-14795i, 2147483647i, 4355i)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 47315u), vec3<u32>(4294967295u, u_input.a.x, 2609u)), 46240u, ~23361u), ~(~vec3<u32>(u_input.b, u_input.c, 103008u))) % vec3<u32>(32u)));
    var_0 = Struct_1(var_0.a, select(select(var_0.b, !var_0.b, true), var_0.b, true), firstLeadingBit(select((var_0.c | var_0.c) | abs(vec3<i32>(-47718i, var_0.c.x, -1i)), _wgslsmith_clamp_vec3_i32(firstTrailingBit(var_0.c), ~vec3<i32>(0i, var_0.c.x, 40751i), vec3<i32>(var_0.c.x, 22389i, var_0.c.x)), var_0.b.x)));
    var var_1 = Struct_1(firstLeadingBit(var_0.a), select(select(select(var_0.b, !vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), var_0.b.x && true), var_0.b, !var_0.b.x), var_0.b, !(!var_0.b)), vec3<i32>(-1i) * -(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.x, 2147483647i, var_0.c.x), vec3<i32>(16006i, 0i, var_0.c.x)) ^ countOneBits(var_0.c)));
    let var_2 = vec4<u32>(_wgslsmith_add_u32(abs(39255u), 30133u), ~(abs(~u_input.d.x) >> (max(var_1.a.x, var_0.a.x) % 32u)), ~36834u, var_1.a.x);
    var var_3 = var_0.b.yx;
    return select(var_1.b, !vec4<bool>(var_1.b.x, var_0.c.x > ~var_1.c.x, min(var_1.c.x, var_0.c.x) <= (i32(-1i) * -2147483647i), any(!var_0.b.yx)), vec4<bool>(true, var_0.b.x, var_1.b.x, var_0.b.x));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    var var_0 = ~min(_wgslsmith_mod_vec2_u32(u_input.d ^ _wgslsmith_clamp_vec2_u32(arg_2.a.yz, vec2<u32>(4294967295u, 53542u), arg_2.a.zz), (vec2<u32>(3281u, 17432u) & vec2<u32>(u_input.b, 5600u)) & reverseBits(u_input.a)), vec2<u32>(arg_0, reverseBits(abs(arg_2.a.x))));
    var var_1 = arg_2;
    var var_2 = u_input.a << (vec2<u32>(arg_0, u_input.b) % vec2<u32>(32u));
    var_0 = vec2<u32>(26113u, var_1.a.x);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -337f);
    return select(all(arg_3.xyz), true, arg_2.b.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    var var_0 = select(!vec4<bool>(true, arg_0, (arg_0 || arg_2.x) && (arg_1.a.x <= 7809u), true), vec4<bool>(!arg_1.b.x, arg_0, func_4(_wgslsmith_div_u32(0u, 8741u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1141f, 1314f, 1135f, -187f)))), Struct_1(~arg_1.a, func_3(-461f), vec3<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x)), vec4<bool>(true, true, false, true)), arg_0), false);
    return arg_1.b.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(true, false, true, !(!(arg_0.a.x == _wgslsmith_div_u32(arg_0.a.x, 25752u))));
    var_0 = !(!(!arg_0.b));
    var_0 = vec4<bool>(!(all(select(vec3<bool>(arg_0.b.x, var_0.x, arg_0.b.x), vec3<bool>(false, true, true), vec3<bool>(var_0.x, var_0.x, false))) | select(true, !arg_0.b.x, arg_0.b.x)), all(vec2<bool>(any(select(arg_0.b, vec4<bool>(var_0.x, var_0.x, arg_0.b.x, arg_0.b.x), var_0.x)), true)), !all(var_0.zx) | arg_0.b.x, false && !all(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)));
    let var_1 = arg_0.a.x;
    var var_2 = ~26641u;
    return Struct_1(arg_0.a, select(vec4<bool>(func_2(!var_0.x, Struct_1(arg_0.a, vec4<bool>(false, false, var_0.x, false), vec3<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), arg_0.b.xy), any(func_3(-163f).wxw), (arg_0.b.x | var_0.x) || true, !var_0.x), arg_0.b, select(func_3(_wgslsmith_f_op_f32(sign(502f))), !vec4<bool>(false, var_0.x, false, var_0.x), func_3(812f).x)), ~arg_0.c);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = 763f;
    var var_1 = arg_2.a.x;
    var var_2 = Struct_1(arg_2.a, !arg_2.b, max(vec3<i32>(countOneBits(_wgslsmith_mod_i32(2147483647i, 64701i)), ~77921i, arg_2.c.x), vec3<i32>(-1i) * -vec3<i32>(-1i, -11755i, arg_1.c.x)));
    var var_3 = Struct_1(var_2.a, func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f), arg_0)), arg_2.c);
    let var_4 = arg_2;
    return firstTrailingBit((func_1(Struct_1(vec3<u32>(59085u, var_2.a.x, 5545u), arg_1.b, vec3<i32>(var_3.c.x, var_3.c.x, var_2.c.x))).a >> (~arg_2.a % vec3<u32>(32u))) << (vec3<u32>(21532u, _wgslsmith_mod_u32(var_2.a.x, var_4.a.x), _wgslsmith_div_u32(1u >> (0u % 32u), u_input.a.x >> (43126u % 32u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = Struct_1(select(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 1u, u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c, u_input.a.x), vec3<u32>(2808u, 1u, 25029u), vec3<u32>(u_input.c, 4294967295u, 4294967295u)), vec3<u32>(u_input.c, u_input.c, 4294967295u)), ~vec3<u32>(39732u, ~u_input.b, firstTrailingBit(4294967295u)), any(vec4<bool>(false, true, u_input.b >= u_input.d.x, false))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec3<i32>(_wgslsmith_div_i32(~var_0 << (_wgslsmith_dot_vec3_u32(vec3<u32>(40072u, u_input.d.x, 4294967295u), vec3<u32>(u_input.b, 10743u, 4294967295u)) % 32u), i32(-1i) * -20039i), ~1i, -21284i));
    var var_2 = Struct_1(_wgslsmith_mult_vec3_u32(var_1.a, func_5(_wgslsmith_f_op_f32(-415f * _wgslsmith_f_op_f32(sign(567f))), func_1(Struct_1(var_1.a, var_1.b, vec3<i32>(30193i, var_1.c.x, 36329i))), func_1(func_1(var_1)))), vec4<bool>(false, true, any(vec4<bool>(!var_1.b.x, var_1.b.x, var_1.b.x, all(var_1.b))), !func_2(!var_1.b.x, Struct_1(vec3<u32>(1u, var_1.a.x, var_1.a.x), vec4<bool>(var_1.b.x, true, var_1.b.x, false), vec3<i32>(var_1.c.x, -2147483647i, var_1.c.x)), !var_1.b.xz)), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(~var_0, -var_1.c.x, 20542i), var_1.c.x), var_1.c.x, var_0));
    var var_3 = func_1(func_1(var_1));
    var_2 = var_1;
    var_3 = Struct_1(var_1.a, !(!func_1(Struct_1(vec3<u32>(var_2.a.x, var_2.a.x, var_1.a.x), vec4<bool>(true, false, var_3.b.x, true), var_1.c)).b), abs(reverseBits(vec3<i32>(var_3.c.x, -36246i, ~(-2147483647i)))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2004f - 1616f), _wgslsmith_f_op_f32(364f - 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-592f + -1069f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1168f, -1143f) + 487f))));
    var_3 = Struct_1(vec3<u32>(4294967295u, ~var_2.a.x, ~(~func_1(var_1).a.x)), func_3(998f), ~vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(53453i, var_1.c.x, var_1.c.x)), abs(var_1.c.x), -58770i) << (~_wgslsmith_sub_vec3_u32(select(vec3<u32>(20794u, 4294967295u, 39103u), vec3<u32>(39333u, u_input.b, 0u), false), var_3.a) % vec3<u32>(32u)));
    var var_5 = _wgslsmith_add_u32(~(~0u), var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_2.a.x), u_input.a), ~var_2.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4, 434f, -1307f, 891f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2524f, -1114f, var_4, 1000f), vec4<f32>(var_4, 322f, 125f, var_4), vec4<bool>(var_1.b.x, false, false, var_3.b.x))), func_3(1465f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-715f, _wgslsmith_f_op_f32(-477f + -1425f), _wgslsmith_f_op_f32(ceil(var_4)), _wgslsmith_f_op_f32(round(var_4)))))));
}

