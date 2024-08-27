struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_3,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = vec3<bool>(_wgslsmith_div_u32(arg_0.b, 4294967295u) <= ~13914u, arg_0.c.b, true);
    let var_1 = select(vec3<bool>(true, select(any(vec3<bool>(true, true, var_0.x)), arg_0.c.b, false), !any(!var_0.xz)), vec3<bool>(false, all(!select(vec4<bool>(var_0.x, var_0.x, arg_0.c.b, true), vec4<bool>(arg_0.c.b, false, true, arg_0.c.b), true)), !any(select(vec3<bool>(true, arg_0.c.b, true), vec3<bool>(false, false, false), vec3<bool>(var_0.x, true, false)))), select(!vec3<bool>(select(arg_0.c.b, arg_0.c.b, true), true, false || arg_0.c.b), select(select(select(vec3<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b), vec3<bool>(var_0.x, arg_0.c.b, true), vec3<bool>(true, var_0.x, true)), select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, arg_0.c.b, arg_0.c.b), var_0.x), !arg_0.c.b), !select(vec3<bool>(var_0.x, arg_0.c.b, false), vec3<bool>(var_0.x, true, true), var_0.x), arg_0.c.b), !all(vec3<bool>(var_0.x, true, true))));
    var var_2 = !any(!select(select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(false, true, true, false), var_0.x), select(vec4<bool>(false, false, true, true), vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, true, arg_0.c.b, var_0.x)), !vec4<bool>(var_0.x, true, false, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c.a)))))));
}

fn func_2(arg_0: i32, arg_1: u32) -> vec3<bool> {
    let var_0 = vec3<i32>(33381i, arg_0, arg_0);
    let var_1 = true;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(1535f * 669f), _wgslsmith_f_op_f32(func_3(Struct_4(1744f, 4294967295u, Struct_3(_wgslsmith_f_op_f32(860f * -870f), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(274f, -1055f))), u_input.b.zz, u_input.b))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(767f, 1769f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(821f))))), _wgslsmith_f_op_f32(select(1f, -114f, _wgslsmith_f_op_f32(trunc(535f)) >= _wgslsmith_f_op_f32(floor(209f)))))));
    var var_3 = select(select(vec4<bool>(var_1 || !var_1, var_1, select(true, false, all(vec3<bool>(var_1, var_1, false))), false), vec4<bool>(select(any(vec3<bool>(true, var_1, false)), true, all(vec4<bool>(var_1, var_1, var_1, true))), any(vec2<bool>(false, var_1)), all(select(vec4<bool>(var_1, true, var_1, true), vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(true, var_1, false, var_1))), var_1), !vec4<bool>(false && var_1, false, !var_1, var_1 && var_1)), !vec4<bool>(true, all(!vec3<bool>(true, var_1, false)), any(!vec3<bool>(true, var_1, true)), var_1), !(!vec4<bool>(var_1, !var_1, true, true)));
    var var_4 = Struct_1(35446u, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -238f), 1u);
    return select(select(select(vec3<bool>(var_1, any(vec2<bool>(var_3.x, true)), all(vec3<bool>(false, false, var_1))), var_3.wyz, select(vec3<bool>(var_1, var_3.x, var_1), !var_3.yzx, select(vec3<bool>(false, false, true), vec3<bool>(var_1, var_3.x, false), vec3<bool>(true, var_3.x, var_1)))), vec3<bool>(true & select(var_3.x, false, true), true, true), true), !select(!(!var_3.zyx), select(!vec3<bool>(false, false, var_3.x), select(vec3<bool>(var_1, false, var_3.x), var_3.zxz, var_1), select(vec3<bool>(false, var_1, true), var_3.ywy, var_3.xwx)), vec3<bool>(var_3.x, var_3.x == var_3.x, true)), var_1);
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = any(vec2<bool>(arg_0 >= -454f, !any(func_2(17563i, u_input.a))));
    var var_1 = u_input.b.x;
    let var_2 = -_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(1i, 1i)), abs(vec2<i32>(14224i, 2532i))) ^ (_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-44289i, -1i)), _wgslsmith_mod_i32(2147483647i, 2262i)), abs(countOneBits(vec2<i32>(-2147483647i, -2147483647i)))) | select(vec2<i32>(1i, ~(-2147483647i)), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -22293i), false));
    let var_3 = select(vec4<bool>(true, true, var_2.x == _wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.x, var_2.x, var_2.x), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x, var_2.x, var_2.x), vec3<i32>(0i, var_2.x, var_2.x))), !((var_2.x | var_2.x) <= _wgslsmith_dot_vec2_i32(vec2<i32>(22295i, 2147483647i), vec2<i32>(14452i, 2147483647i)))), select(vec4<bool>(all(vec4<bool>(false, true, false, true)) | true, arg_0 > arg_0, false, true), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), all(vec4<bool>(true, false, true, true)))), func_2(countOneBits(min(0i, var_2.x) ^ min(-10754i, 2147483647i)), u_input.b.x).x);
    var var_4 = true;
    return Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - -296f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1385f * -448f))))), func_2(-2147483647i, firstTrailingBit(u_input.a)).x || !(!func_2(-31005i, u_input.a).x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(307f, -816f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1147f, 799f))) + vec2<f32>(_wgslsmith_div_f32(-499f, arg_0), 1217f))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: vec3<u32>) -> vec3<f32> {
    var var_0 = vec4<bool>(false, any(!vec2<bool>(true, arg_0.b)), true, !arg_0.b);
    var_0 = select(vec4<bool>(!all(func_2(0i, arg_2.b.d)), false, true, all(vec2<bool>(!var_0.x, u_input.b.x == 12997u))), select(!(!select(vec4<bool>(false, true, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, false, arg_0.b, var_0.x), vec4<bool>(true, arg_0.b, false, arg_0.b))), select(vec4<bool>(arg_0.b, !var_0.x, arg_0.b | arg_0.b, !arg_0.b), !select(vec4<bool>(var_0.x, false, arg_0.b, true), vec4<bool>(false, false, arg_0.b, var_0.x), vec4<bool>(false, arg_0.b, var_0.x, var_0.x)), var_0.x), var_0.x), !(!(arg_2.b.c == 1000f)) & false);
    var_0 = vec4<bool>(!(all(var_0.zx) || true), !all(!vec4<bool>(arg_0.b, true, false, true)), false, true);
    var var_1 = vec4<bool>(true, !(!((u_input.a == arg_1) != arg_0.b)), !(arg_2.a < select(i32(-1i) * -2147483647i, countOneBits(arg_2.c), all(var_0.wz))), true);
    var var_2 = _wgslsmith_sub_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, select(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), u_input.b), vec4<u32>(select(arg_3.x, 45579u, true), ~arg_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(7533u, arg_2.b.d, 1u), u_input.b.yyy), _wgslsmith_add_u32(u_input.a, arg_3.x)), vec4<bool>(arg_0.b, true, arg_0.b, false))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.c.x, _wgslsmith_f_op_f32(abs(-609f)))), func_1(-558f).a, _wgslsmith_f_op_f32(round(-166f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-1f), true | (~26912u > _wgslsmith_div_u32(~39604u, ~u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-627f, -588f), vec2<f32>(151f, 2043f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1005f, 787f) + vec2<f32>(197f, 384f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-409f, -968f) - vec2<f32>(-1000f, 995f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-1535f - var_0.a))), u_input.a, Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, -2147483647i), vec3<i32>(-5550i, -12771i, -16620i)) ^ -60210i, Struct_1(u_input.a, -1033f, -1000f, _wgslsmith_mod_u32(u_input.a, u_input.a)), 1i << (0u % 32u)), ~(~reverseBits(u_input.b.zyw)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-498f, var_0.c.x, _wgslsmith_f_op_f32(1293f + 143f)))))));
    let var_2 = select(!select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_0.b, false, false, false)), vec4<bool>(!var_0.b, false, false, true)), !vec4<bool>(_wgslsmith_f_op_f32(exp2(var_0.c.x)) < 784f, var_0.b, func_2(_wgslsmith_mult_i32(0i, 2147483647i), u_input.b.x ^ 4294967295u).x, max(u_input.a, 78040u) == u_input.a), var_0.b);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-620f)), -444f)), _wgslsmith_f_op_f32(-var_1.x)));
    let var_4 = select(!var_2, var_2, select(!(!select(var_2, vec4<bool>(var_2.x, var_0.b, false, var_0.b), false)), var_2, any(vec4<bool>(u_input.b.x == 1u, u_input.a < u_input.b.x, var_2.x, var_0.c.x <= var_3))));
    let var_5 = !select(!select(!var_4, select(vec4<bool>(var_0.b, var_0.b, false, false), var_4, false), var_4.x), select(!select(var_4, var_2, var_0.b), select(!var_4, !vec4<bool>(var_0.b, true, true, false), any(var_2.yzx)), !func_1(var_1.x).b), select(!var_4, var_2, func_1(_wgslsmith_f_op_f32(var_0.a * var_3)).b));
    let var_6 = select(vec3<u32>(45012u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 49747u), ~vec2<u32>(u_input.b.x, u_input.a)) & 23753u, ~firstLeadingBit(~u_input.b.x)), _wgslsmith_div_vec3_u32(u_input.b.zyw, u_input.b.zxy >> (vec3<u32>(42793u, ~16656u, _wgslsmith_dot_vec2_u32(u_input.b.zw, vec2<u32>(u_input.b.x, 4294967295u))) % vec3<u32>(32u))), vec3<bool>(true, all(select(!var_5, vec4<bool>(var_0.b, var_2.x, var_5.x, var_0.b), true)), select(true, !all(var_5), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 30665i), vec3<i32>(-1i, 37556i, -41817i))), abs(_wgslsmith_clamp_i32(-2147483647i, 1i, -2147483647i)) | (~2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(-12806i, 0i), vec2<i32>(1i, 22334i))), select(countOneBits(~1i), 1i, !func_2(0i, u_input.a).x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, func_1(_wgslsmith_div_f32(-844f, var_0.c.x)).a) - 536f), var_3, vec4<i32>(-2147483647i, ~1i, -2147483647i, -reverseBits(_wgslsmith_div_i32(2147483647i, 5914i))));
}

