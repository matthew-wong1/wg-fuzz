struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32>;

var<private> global1: vec4<u32>;

var<private> global2: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    global0 = array<vec2<bool>, 32>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) + _wgslsmith_f_op_f32(f32(-1f) * -1790f)))), -2147483647i, i32(-1i) * -4553i, vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-10745i, 2147483647i)), -_wgslsmith_mod_i32(-1i, 2147483647i)) | vec2<i32>(reverseBits(-1i), firstTrailingBit(1i)), ~_wgslsmith_sub_u32(u_input.a.x, min(25643u, 0u)) ^ ~u_input.a.x);
    global1 = vec4<u32>(u_input.a.x, u_input.a.x, 26388u, 0u);
    var_0 = Struct_1(var_0.a, var_0.d.x, -_wgslsmith_mod_i32(max(_wgslsmith_mult_i32(-1i, 2147483647i), -2147483647i), var_0.b), reverseBits(vec2<i32>(abs(var_0.b >> (0u % 32u)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.d.x, 12454i, 0i), var_0.c))), abs(~28278u));
    var var_1 = abs(abs(0u));
    return -4155i;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -749f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f))))))), (-(i32(-1i) * -12029i) >> (0u % 32u)) >> (arg_1 % 32u), ~0i, vec2<i32>(-52093i, func_3()), 22466u);
    global1 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1.x, global1.x, var_0.e, 0u)), ~vec4<u32>(1u, global1.x, arg_1, u_input.a.x)), ~(42113u << (u_input.a.x % 32u))) ^ min(_wgslsmith_mod_u32(arg_1 >> (arg_1 % 32u), global1.x), 4294967295u), ~12613u, firstTrailingBit(_wgslsmith_mult_u32(~(arg_1 & global1.x), ~4421u)), global1.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(476f, -1543f, var_0.a, var_0.a))))) + vec4<f32>(_wgslsmith_f_op_f32(arg_2 - -1053f), _wgslsmith_f_op_f32(-412f - var_0.a), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(f32(-1f) * -1251f)), var_0.a)) - vec4<f32>(-775f, -447f, _wgslsmith_f_op_f32(-arg_2), 681f));
    global0 = array<vec2<bool>, 32>();
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(734f, var_0.a, var_1.x, var_1.x) - vec4<f32>(var_0.a, arg_2, -119f, 1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(select(var_0.a, -476f, arg_0)), -818f, -463f, 1330f)) + vec4<f32>(-191f, -125f, -982f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1872f, var_1.x, _wgslsmith_f_op_f32(min(-254f, -382f)), 502f))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = select(select(vec3<bool>(arg_0.e > (111412u << (0u % 32u)), true, false), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), all(vec2<bool>(true, false)) && any(vec4<bool>(false, false, true, false))), vec3<bool>(any(vec2<bool>(true, false)), false, true)), vec3<bool>(func_2(u_input.a.x != global1.x, _wgslsmith_mod_u32(43646u, 16724u), arg_1.a).e <= ~arg_0.e, false, all(vec4<bool>(true, true, true, true))), true);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_1.a - -2542f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1447f)), _wgslsmith_f_op_f32(sign(1848f))))), -789f);
    global1 = ~vec4<u32>(_wgslsmith_clamp_u32(0u, countOneBits(_wgslsmith_mult_u32(32529u, arg_1.e)), abs(0u)), u_input.a.x, select(41389u, u_input.a.x >> (1u % 32u), !var_0.x) & ~(~1u), global1.x);
    let var_2 = arg_0.e;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(422f, arg_0.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + 583f))))));
    return var_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec4<bool> {
    global0 = array<vec2<bool>, 32>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * 240f)))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1144f) - 327f) * 721f)));
    let var_2 = _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, _wgslsmith_div_i32(2147483647i, arg_0.d.x), -708i, 1i)), arg_1);
    var var_3 = any(vec4<bool>(func_4(arg_0, func_2(true, u_input.a.x, 2689f), var_2), true, true, all(vec3<bool>(false, true, true)))) == false;
    return !vec4<bool>(true, true, true, any(vec3<bool>(true, true, true)));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_u32(arg_3, _wgslsmith_add_vec3_u32(u_input.a, ~global1.ywz) << (global1.yww % vec3<u32>(32u)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1866f * _wgslsmith_div_f32(func_2(arg_1.x, max(u_input.a.x, arg_2.x), 1f).a, 1000f)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-718f, -1149f)), -1000f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-736f, _wgslsmith_f_op_f32(f32(-1f) * -2563f)))))), 12743i, firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(9010i, -41534i), ~2147483647i), 94555i)), _wgslsmith_mult_vec2_i32(-select(min(vec2<i32>(-34258i, -1i), vec2<i32>(-10337i, 63476i)), ~vec2<i32>(2147483647i, 0i), all(vec2<bool>(false, arg_1.x))), firstTrailingBit(-(~vec2<i32>(-2147483647i, -35077i)))), var_0.x);
    global1 = ~_wgslsmith_clamp_vec4_u32(~(~(vec4<u32>(u_input.a.x, 0u, 19424u, arg_2.x) & vec4<u32>(4294967295u, var_0.x, 23929u, arg_3.x))), vec4<u32>(0u << (u_input.a.x % 32u), func_2(arg_1.x, 0u, var_1.a).e, 77929u, ~1417u) << ((vec4<u32>(var_1.e, 4294967295u, 8070u, global1.x) ^ ~vec4<u32>(0u, arg_2.x, arg_2.x, var_1.e)) % vec4<u32>(32u)), (vec4<u32>(0u, 9729u, 0u, 0u) | min(vec4<u32>(12816u, 47881u, global1.x, global1.x), vec4<u32>(0u, 20103u, arg_3.x, 1u))) ^ ~vec4<u32>(arg_2.x, 1u, var_1.e, 0u));
    var_1 = func_2(arg_1.x, 8578u, var_1.a);
    return func_2(arg_1.x, 1u, _wgslsmith_f_op_f32(step(var_1.a, var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, max(1i, -2147483647i), ~(-38620i), _wgslsmith_mult_i32(1i, -41495i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(55299i, -11943i, -5005i, 62704i), vec4<i32>(28137i, 3788i, 0i, 1i)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-71640i, -1i, -1i, 1i), vec4<i32>(-2147483647i, 17403i, -1i, -33637i), vec4<i32>(-4396i, 2147483647i, 0i, 1i)) | ~vec4<i32>(-2147483647i, 602i, 46025i, -2147483647i))), min(abs(firstLeadingBit(-vec4<i32>(-2147483647i, 18087i, 2147483647i, 1i))), _wgslsmith_mod_vec4_i32(min(select(vec4<i32>(-35175i, -1i, -2992i, 1i), vec4<i32>(-2147483647i, -6218i, 22213i, 49118i), vec4<bool>(true, true, false, false)), -vec4<i32>(-36970i, -44149i, 0i, 43681i)), select(vec4<i32>(0i, -2147483647i, 1i, 1089i), vec4<i32>(2147483647i, 8198i, 19541i, 1i), vec4<bool>(true, true, true, true)))));
    var var_1 = func_5(true, select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), func_1(Struct_1(921f, var_0.x, 28622i, var_0.yy, 4294967295u), max(var_0, var_0), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(562f, 456f), vec2<f32>(-1114f, 890f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 411f)))), !func_1(func_2(false, 33293u, 1788f), vec4<i32>(-1i, -2147483647i, -1i, var_0.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-472f, 160f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1476f, 1586f)))), func_1(Struct_1(_wgslsmith_f_op_f32(107f - 1000f), i32(-1i) * -1i, -1i, var_0.ww, ~1u), min(-var_0, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 44190i, var_0.x, var_0.x), var_0, var_0)), vec2<f32>(_wgslsmith_f_op_f32(-3699f * 751f), _wgslsmith_f_op_f32(-1319f - 779f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1533f, -775f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(687f, 136f) - vec2<f32>(326f, -525f)))).x), _wgslsmith_mult_vec2_u32(~global1.yz, ~global1.ww), _wgslsmith_div_vec3_u32(u_input.a << (~firstLeadingBit(global1.yyz) % vec3<u32>(32u)), u_input.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_1.a))), -540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1754f * -620f)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f) * _wgslsmith_f_op_f32(sign(var_1.a))))), -2147483647i, var_0.x, var_0.wy, ~countOneBits(u_input.a.x));
    var_3 = func_5(-max(abs(var_3.b), ~var_3.d.x) == var_3.d.x, select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), !vec4<bool>(33305i < var_0.x, 1i >= var_1.c, false, true), func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2541f), _wgslsmith_sub_i32(var_1.c, var_3.b), -60474i, min(var_0.zy, var_1.d), var_3.e), func_2(all(vec4<bool>(false, true, false, true)), 1u, _wgslsmith_f_op_f32(432f + var_1.a)), 1i)), vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_1.e, 8415u, global1.x), vec4<u32>(var_3.e, 4294967295u, 4598u, var_3.e)), ~global1.x), ~vec3<u32>(select(4294967295u, 73343u, true), ~(~var_3.e), firstLeadingBit(1u)));
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(all(vec4<bool>(true, false, false, false)), ~0u, _wgslsmith_div_f32(var_2.x, -200f)).a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_1.a)))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1172f, _wgslsmith_f_op_f32(-var_2.x)) + var_3.a));
    let var_4 = func_2(func_1(Struct_1(-1000f, 25936i, -22715i, var_1.d, global1.x), ~var_0, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, var_2.x)))), var_2.xy)), vec2<f32>(782f, var_1.a)).x, var_3.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-270f, _wgslsmith_f_op_f32(-var_3.a)), var_1.a)))));
    let var_5 = !global0[_wgslsmith_index_u32(~4294967295u, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, -vec3<i32>(-1i, ~abs(var_3.c), -43035i), 44406i);
}

