struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_2, 29>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> vec3<bool> {
    global0 = array<Struct_2, 29>();
    let var_0 = Struct_4(arg_1.a, Struct_2(Struct_1(_wgslsmith_add_u32(1u, arg_0), true), min(0i, arg_1.b.b)));
    global0 = array<Struct_2, 29>();
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(var_0.a.e.a, 7684u, 5746u) & arg_1.a.c), ~var_0.a.c, ~vec3<u32>(arg_0, 2086u, arg_1.a.d.a)), vec3<u32>(_wgslsmith_mult_u32(~8252u, abs(1u)), 22662u | u_input.a, arg_0)), vec3<u32>(var_0.a.c.x, u_input.a, 1u));
    var var_2 = vec3<i32>(arg_1.b.b, ~1i, arg_1.b.b);
    return var_0.a.b;
}

fn func_2() -> i32 {
    var var_0 = vec2<i32>(-27692i, -20146i);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(-1449f, 289f)), select(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_3(u_input.a, Struct_4(Struct_3(953f, vec3<bool>(true, true, false), vec3<u32>(u_input.a, 57738u, 21158u), Struct_1(u_input.a, true), Struct_1(15326u, true)), Struct_2(Struct_1(u_input.a, false), var_0.x))), all(vec4<bool>(true, true, func_3(u_input.a, Struct_4(Struct_3(-834f, vec3<bool>(true, true, false), vec3<u32>(0u, u_input.a, u_input.a), Struct_1(u_input.a, true), Struct_1(4294967295u, false)), global0[_wgslsmith_index_u32(1u, 29u)])).x, true))), vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(11846u, ~u_input.a, _wgslsmith_mod_u32(46339u, u_input.a)), vec3<u32>(_wgslsmith_mult_u32(2178u, 15665u), u_input.a, _wgslsmith_mult_u32(u_input.a, 51576u))), abs(~(~50270u))), Struct_1(u_input.a << (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 80651u, u_input.a, u_input.a)) % 32u), true), Struct_1(u_input.a, !all(vec4<bool>(true, true, true, true))));
    let var_2 = var_0.x ^ ((_wgslsmith_mult_i32(reverseBits(0i), -43111i) & (1i << ((4294967295u >> (var_1.c.x % 32u)) % 32u))) ^ -(firstLeadingBit(var_0.x) | var_0.x));
    var var_3 = ~firstLeadingBit(u_input.a);
    var var_4 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(571f, var_1.a, var_1.a, 123f) * vec4<f32>(var_1.a, var_1.a, -146f, var_1.a)))))), Struct_3(_wgslsmith_f_op_f32(-var_1.a), !var_1.b, _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(0u, 16440u, var_1.c.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(71569u, var_1.c.x, var_1.c.x) << (vec3<u32>(0u, 0u, 43270u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 35466u, 26861u), vec3<u32>(29524u, u_input.a, var_1.e.a)))), var_1.e, Struct_1(~countOneBits(0u), !any(var_1.b))));
    return ~(-(~2147483647i));
}

fn func_1(arg_0: Struct_5) -> Struct_2 {
    global0 = array<Struct_2, 29>();
    var var_0 = arg_0.b.c.x >> (1u % 32u);
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(1i, reverseBits(13803i), func_2()) << (vec3<u32>(~(u_input.a ^ 0u), _wgslsmith_mult_u32(~1u, u_input.a), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_0.b.d.a, arg_0.b.e.a)), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(130724u, u_input.a) % vec2<u32>(32u)))) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-42099i, 1i, -2147483647i), vec3<i32>(i32(-1i) * -1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 61778i, -2147483647i), vec3<i32>(27758i, -1i, -28750i)))));
    global0 = array<Struct_2, 29>();
    var var_2 = 4294967295u;
    return global0[_wgslsmith_index_u32(~4294967295u, 29u)];
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_5, arg_3: f32) -> Struct_4 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(f32(-1f) * -226f))));
    var var_2 = _wgslsmith_sub_u32(4294967295u, arg_2.b.c.x);
    var_0 = arg_0.b.a.a == arg_2.b.e.a;
    var var_3 = all(!select(vec4<bool>(any(vec4<bool>(arg_1, false, arg_2.b.b.x, arg_0.a.b.x)), true, true, true), vec4<bool>(func_1(Struct_5(vec4<f32>(843f, -204f, 1339f, arg_2.a.x), Struct_3(837f, vec3<bool>(arg_1, true, arg_2.b.e.b), vec3<u32>(59631u, arg_2.b.d.a, 5615u), arg_2.b.d, arg_0.b.a))).a.b, arg_2.b.e.b, arg_1, arg_0.b.b > 0i), all(select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_0.b.a.b), arg_1))));
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_5 {
    var var_0 = vec4<bool>(false, !any(!(!vec3<bool>(arg_1.b.a.b, false, false))), select(false, arg_1.a.b.x, arg_1.a.e.b), arg_1.b.a.b);
    let var_1 = ~(~(-1i));
    let var_2 = vec2<i32>(-1i) * -(~(-vec2<i32>(-1i, 2147483647i)));
    var_0 = select(!vec4<bool>(any(vec2<bool>(arg_1.b.a.b, true)), !(arg_1.a.a < 658f), all(!var_0.yww), all(arg_1.a.b.zz) & (false == arg_1.b.a.b)), select(vec4<bool>(!func_3(arg_1.a.d.a, arg_1).x, false, any(vec4<bool>(false, var_0.x, arg_1.a.d.b, false)), false), !select(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, arg_1.b.a.b, arg_1.a.d.b, true), vec4<bool>(false, true, var_0.x, true)), select(vec4<bool>(arg_1.a.e.b, true, arg_1.b.a.b, true), vec4<bool>(var_0.x, var_0.x, false, false), arg_1.b.a.b), true), all(!vec4<bool>(var_0.x, arg_1.b.a.b, var_0.x, var_0.x)) & true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-456f, 291f)) + arg_1.a.a) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_4(arg_1, true, Struct_5(vec4<f32>(arg_1.a.a, 946f, arg_1.a.a, arg_1.a.a), Struct_3(573f, vec3<bool>(false, var_0.x, arg_1.b.a.b), vec3<u32>(arg_0, 34217u, arg_0), Struct_1(4294967295u, true), Struct_1(14838u, arg_1.a.d.b))), -591f).a.a, -666f)) + _wgslsmith_f_op_f32(-864f - _wgslsmith_f_op_f32(ceil(-194f)))));
    let var_3 = arg_1.b.a;
    return Struct_5(vec4<f32>(-425f, arg_1.a.a, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.a.a, -1541f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.a)) * _wgslsmith_f_op_f32(f32(-1f) * -639f))), 714f), func_4(Struct_4(arg_1.a, Struct_2(Struct_1(23944u, true), ~40872i)), var_0.x, Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.a.a, arg_1.a.a, 711f, 865f)))), func_4(arg_1, arg_1.a.d.b && var_3.b, Struct_5(vec4<f32>(arg_1.a.a, -1005f, -825f, -627f), arg_1.a), -1789f).a), arg_1.a.a).a);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(1u, 82293u, max(1u | _wgslsmith_clamp_u32(4294967295u, 5785u, u_input.a), ~_wgslsmith_div_u32(8296u, u_input.a)) >> (select(~arg_0.x, _wgslsmith_add_u32(~0u, reverseBits(arg_0.x)), !(-879f == arg_1.b.a)) % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.a.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1583f))), _wgslsmith_f_op_f32(934f * -137f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.a.zz)))));
    var_0 = arg_1.b.e.a | (39971u ^ abs(~abs(arg_0.x)));
    return func_5(_wgslsmith_clamp_u32(arg_0.x, reverseBits(~65024u), 1u), func_4(func_4(func_4(Struct_4(Struct_3(239f, arg_1.b.b, arg_1.b.c, arg_1.b.e, Struct_1(17013u, arg_1.b.e.b)), Struct_2(arg_1.b.e, 2147483647i)), any(vec2<bool>(false, arg_2)), Struct_5(vec4<f32>(var_1.x, var_1.x, 804f, 1576f), arg_1.b), -907f), 6380u < arg_0.x, arg_1, arg_1.b.a), false, Struct_5(_wgslsmith_f_op_vec4_f32(-arg_1.a), Struct_3(arg_1.b.a, !vec3<bool>(arg_1.b.d.b, true, arg_2), arg_1.b.c, Struct_1(u_input.a, arg_2), func_1(Struct_5(arg_1.a, Struct_3(arg_1.b.a, arg_1.b.b, arg_0.xyz, Struct_1(0u, arg_1.b.e.b), arg_1.b.d))).a)), _wgslsmith_f_op_f32(-arg_1.b.a))).b.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~(vec4<u32>(1u, select(0u, u_input.a, false), 18154u, ~1u) ^ (countOneBits(vec4<u32>(12805u, u_input.a, u_input.a, u_input.a)) | ~vec4<u32>(1u, u_input.a, 61578u, 4294967295u))), func_5(_wgslsmith_div_u32(u_input.a, u_input.a), func_4(Struct_4(Struct_3(131f, vec3<bool>(true, false, false), vec3<u32>(71285u, u_input.a, 0u), Struct_1(37451u, false), Struct_1(u_input.a, false)), func_1(Struct_5(vec4<f32>(-616f, -1291f, 241f, 547f), Struct_3(-726f, vec3<bool>(false, true, false), vec3<u32>(u_input.a, 4294967295u, 4294967295u), Struct_1(0u, false), Struct_1(u_input.a, true))))), true, Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(557f, 780f, -115f, 337f)), Struct_3(-341f, vec3<bool>(true, false, false), vec3<u32>(u_input.a, u_input.a, 4294967295u), Struct_1(u_input.a, true), Struct_1(u_input.a, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 170f)))), _wgslsmith_f_op_f32(ceil(-835f)) >= func_5(51463u, func_4(Struct_4(Struct_3(-198f, vec3<bool>(true, false, false), vec3<u32>(4294967295u, 9131u, u_input.a), Struct_1(4294967295u, false), Struct_1(29573u, true)), Struct_2(Struct_1(u_input.a, true), -1i)), true, func_5(31326u, Struct_4(Struct_3(214f, vec3<bool>(true, true, false), vec3<u32>(83136u, u_input.a, u_input.a), Struct_1(u_input.a, false), Struct_1(u_input.a, false)), Struct_2(Struct_1(11591u, true), -10402i))), -433f)).b.a);
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    let var_1 = -2147483647i;
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(~(~u_input.a))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))));
}

