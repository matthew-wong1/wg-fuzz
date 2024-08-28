struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<u32>(0u, 4294967295u, 25553u), vec2<bool>(true, true), vec2<u32>(7681u, 38874u)), Struct_1(vec3<u32>(0u, 4294967295u, 5947u), vec2<bool>(false, false), vec2<u32>(61292u, 4294967295u)), Struct_1(vec3<u32>(0u, 0u, 39782u), vec2<bool>(false, true), vec2<u32>(38863u, 88568u)), Struct_1(vec3<u32>(42224u, 4294967295u, 14013u), vec2<bool>(true, false), vec2<u32>(14512u, 38393u)), Struct_1(vec3<u32>(1u, 3745u, 84665u), vec2<bool>(false, false), vec2<u32>(99606u, 12667u)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec2<bool>(false, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<u32>(28802u, 51289u, 0u), vec2<bool>(true, true), vec2<u32>(4294967295u, 3317u)), Struct_1(vec3<u32>(52986u, 33569u, 4294967295u), vec2<bool>(false, true), vec2<u32>(1502u, 103889u)), Struct_1(vec3<u32>(4294967295u, 77001u, 4294967295u), vec2<bool>(false, true), vec2<u32>(34786u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 4049u, 4294967295u), vec2<bool>(true, true), vec2<u32>(0u, 9043u)), Struct_1(vec3<u32>(27315u, 1u, 1u), vec2<bool>(false, true), vec2<u32>(32906u, 109786u)), Struct_1(vec3<u32>(0u, 0u, 4711u), vec2<bool>(true, true), vec2<u32>(18840u, 1062u)), Struct_1(vec3<u32>(102463u, 37631u, 4463u), vec2<bool>(false, false), vec2<u32>(22355u, 80u)), Struct_1(vec3<u32>(1u, 0u, 17910u), vec2<bool>(false, true), vec2<u32>(0u, 1u)), Struct_1(vec3<u32>(9590u, 4294967295u, 0u), vec2<bool>(false, true), vec2<u32>(4294967295u, 61446u)), Struct_1(vec3<u32>(56034u, 61150u, 73448u), vec2<bool>(false, true), vec2<u32>(0u, 3788u)), Struct_1(vec3<u32>(4294967295u, 1u, 83541u), vec2<bool>(false, true), vec2<u32>(49908u, 1u)), Struct_1(vec3<u32>(1u, 1u, 0u), vec2<bool>(false, true), vec2<u32>(98276u, 4376u)), Struct_1(vec3<u32>(27299u, 8893u, 1u), vec2<bool>(true, true), vec2<u32>(1u, 5341u)), Struct_1(vec3<u32>(4411u, 1u, 3804u), vec2<bool>(true, false), vec2<u32>(1u, 4294967295u)), Struct_1(vec3<u32>(104105u, 63197u, 67964u), vec2<bool>(true, true), vec2<u32>(72437u, 31869u)), Struct_1(vec3<u32>(15189u, 101513u, 50706u), vec2<bool>(true, false), vec2<u32>(4294967295u, 1u)), Struct_1(vec3<u32>(11186u, 99172u, 57821u), vec2<bool>(false, false), vec2<u32>(4294967295u, 5336u)), Struct_1(vec3<u32>(16767u, 49773u, 1u), vec2<bool>(false, false), vec2<u32>(54262u, 4294967295u)), Struct_1(vec3<u32>(57302u, 1u, 1u), vec2<bool>(false, false), vec2<u32>(4294967295u, 53396u)), Struct_1(vec3<u32>(1603u, 38198u, 9442u), vec2<bool>(false, false), vec2<u32>(12625u, 0u)), Struct_1(vec3<u32>(0u, 20181u, 43386u), vec2<bool>(true, true), vec2<u32>(65788u, 563u)), Struct_1(vec3<u32>(4294967295u, 1u, 49025u), vec2<bool>(false, false), vec2<u32>(54385u, 4294967295u)), Struct_1(vec3<u32>(29056u, 65005u, 0u), vec2<bool>(false, false), vec2<u32>(0u, 1u)), Struct_1(vec3<u32>(1u, 0u, 128271u), vec2<bool>(false, false), vec2<u32>(0u, 50756u)), Struct_1(vec3<u32>(0u, 39290u, 0u), vec2<bool>(false, true), vec2<u32>(4294967295u, 1u)), Struct_1(vec3<u32>(0u, 43012u, 38136u), vec2<bool>(true, false), vec2<u32>(0u, 24978u)));

var<private> global1: array<vec4<bool>, 7>;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec2<f32>, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = !(select(1i, _wgslsmith_div_i32(select(arg_0, arg_0, false), i32(-1i) * -1i), all(vec4<bool>(true, true, false, false))) < _wgslsmith_mod_i32(_wgslsmith_mult_i32(~(-1i), u_input.b.x), 16108i));
    global3 = array<vec2<f32>, 2>();
    var var_1 = select(!global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 7u)], select(!vec4<bool>(arg_0 < u_input.b.x, true, select(var_0, false, var_0), !var_0), vec4<bool>(!(!var_0), false, true, var_0), var_0), global1[_wgslsmith_index_u32(~1u, 7u)]);
    global3 = array<vec2<f32>, 2>();
    var var_2 = vec4<u32>((_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.x, arg_1.a.x, 4294967295u, 0u), vec4<u32>(4294967295u, u_input.a, arg_1.a.x, u_input.a)), vec4<u32>(arg_1.a.x, u_input.a, 0u, 33654u)) | _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, arg_1.a.x), max(u_input.a, 4294967295u))) << (arg_1.a.x % 32u), _wgslsmith_div_u32(0u, 4294967295u), 44380u, _wgslsmith_div_u32(~_wgslsmith_sub_u32(27878u << (1u % 32u), _wgslsmith_div_u32(0u, 4294967295u)), _wgslsmith_div_u32(arg_1.a.x, ~_wgslsmith_clamp_u32(4294967295u, u_input.a, arg_1.a.x))));
    return !vec2<bool>(any(var_1.zx), arg_1.a.x >= _wgslsmith_div_u32(~73064u, var_2.x));
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(23797u, ~u_input.a, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, u_input.a)), 4294967295u), select(vec3<u32>(74961u, u_input.a, 42650u), ~vec3<u32>(u_input.a, u_input.a, u_input.a), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)))), func_3(u_input.b.x, Struct_2(~vec2<u32>(u_input.a, 33359u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1047f)), 3409f, -826f, -1421f)), ~_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.a, 29834u), vec2<u32>(u_input.a, u_input.a), true), ~vec2<u32>(u_input.a, u_input.a)));
    let var_1 = Struct_1(max(var_0.a & ~vec3<u32>(var_0.c.x, 0u, u_input.a), vec3<u32>(~u_input.a, 7276u, ~var_0.c.x)) & countOneBits(~_wgslsmith_add_vec3_u32(var_0.a, vec3<u32>(0u, u_input.a, u_input.a))), !select(!select(var_0.b, var_0.b, vec2<bool>(var_0.b.x, false)), vec2<bool>(var_0.b.x && true, var_0.b.x && true), all(vec3<bool>(var_0.b.x, var_0.b.x, false)) | false), var_0.c);
    global3 = array<vec2<f32>, 2>();
    var_0 = Struct_1(var_0.a, !select(vec2<bool>(select(false, var_0.b.x, false), var_0.b.x), var_0.b, true), var_0.a.zx);
    let var_2 = Struct_2(vec2<u32>(~var_1.a.x, var_0.c.x));
    return select(!any(select(select(vec3<bool>(false, true, true), vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), vec3<bool>(var_1.b.x, true, true)), !vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_1.b.x, true, true))), all(!select(var_1.b, var_0.b, vec2<bool>(true, var_1.b.x))), func_3(-u_input.b.x, var_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1750f, 2056f, -1083f, 1154f), vec4<f32>(-1064f, 1679f, -1360f, -1540f), global1[_wgslsmith_index_u32(10279u, 7u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1086f, 145f, -555f, 1734f))))).x);
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 32>();
    var var_0 = u_input.b.x;
    var var_1 = Struct_2(select(vec2<u32>(4294967295u, abs(u_input.a)), max(~vec2<u32>(116549u, u_input.a) | (vec2<u32>(u_input.a, 35571u) | vec2<u32>(0u, 4294967295u)), firstTrailingBit(select(vec2<u32>(1u, u_input.a), vec2<u32>(23335u, u_input.a), true))), min(abs(u_input.a), ~4294967295u) >= _wgslsmith_dot_vec2_u32(abs(vec2<u32>(57483u, 4294967295u)), ~vec2<u32>(1u, u_input.a))));
    let var_2 = 20082i;
    var var_3 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !(var_1.a.x < 4294967295u)), !(!vec3<bool>(true, true, func_2())), select(vec3<bool>(func_2(), true, func_2() && func_2()), vec3<bool>(false, false, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), (u_input.a << (var_1.a.x % 32u)) < _wgslsmith_add_u32(u_input.a, var_1.a.x))));
    return Struct_2(vec2<u32>(12669u, 39766u));
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.a.x, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(min(arg_0.a, arg_0.a), arg_0.a)) ^ ~(~(~u_input.a))), 32u)];
    var var_1 = vec3<u32>(25416u, 36869u, _wgslsmith_clamp_u32(u_input.a, max(arg_0.a.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(5748u, 1u, var_0.c.x, 0u), vec4<u32>(u_input.a, var_0.a.x, var_0.c.x, var_0.a.x), vec4<bool>(true, false, false, false)), firstLeadingBit(vec4<u32>(3826u, 1u, var_0.c.x, 89655u)))), u_input.a));
    let var_2 = -vec3<i32>(_wgslsmith_mod_i32(-1i, u_input.b.x), u_input.b.x, u_input.b.x);
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1482f, -1267f, 404f), vec3<f32>(1533f, -1330f, -1957f)))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(-642f)), 1f, _wgslsmith_f_op_f32(503f - 499f)), vec3<f32>(_wgslsmith_f_op_f32(abs(-520f)), _wgslsmith_f_op_f32(select(625f, -1000f, var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1263f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1995f, _wgslsmith_f_op_f32(f32(-1f) * -1899f))), _wgslsmith_f_op_f32(f32(-1f) * -1167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1256f - _wgslsmith_f_op_f32(abs(1007f))))));
    var var_4 = Struct_1(~(~(vec3<u32>(u_input.a, 4294967295u, 59206u) | select(vec3<u32>(34581u, 0u, 0u), vec3<u32>(var_1.x, arg_0.a.x, 48272u), false))), vec2<bool>(!var_0.b.x, select(!(!var_0.b.x), var_0.b.x, var_0.b.x)), firstLeadingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 33319u), _wgslsmith_mod_vec2_u32(var_1.zx, var_0.c))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-742f)), var_3.x, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-195f, _wgslsmith_f_op_f32(var_3.x - var_3.x))) + _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(step(var_3.x, var_3.x))))) * vec4<f32>(_wgslsmith_f_op_f32(1928f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -715f) - 707f), var_3.x)), _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(var_3.x - 915f)), _wgslsmith_f_op_f32(-var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    var var_1 = vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f))));
    global3 = array<vec2<f32>, 2>();
    var var_3 = Struct_2(~vec2<u32>(_wgslsmith_sub_u32(u_input.a, ~4294967295u), firstTrailingBit(4294967295u) | 18235u));
    var var_4 = Struct_2(var_3.a);
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_5)), 419f)))), _wgslsmith_f_op_vec4_f32(func_4(func_1())));
}

