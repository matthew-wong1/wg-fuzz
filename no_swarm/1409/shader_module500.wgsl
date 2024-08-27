struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(9409u, 58833u), vec2<u32>(10246u, 4294967295u), vec2<u32>(19509u, 10912u), vec2<u32>(27205u, 4294967295u), vec2<u32>(16616u, 9008u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 35345u), vec2<u32>(1u, 41205u), vec2<u32>(4294967295u, 1u), vec2<u32>(4357u, 4294967295u), vec2<u32>(6265u, 4233u), vec2<u32>(1u, 2400u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(28513u, 8938u), vec2<u32>(33571u, 0u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1470u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 67793u), vec2<u32>(66729u, 1u), vec2<u32>(1u, 1u), vec2<u32>(132810u, 4668u), vec2<u32>(50187u, 1u), vec2<u32>(39725u, 28427u), vec2<u32>(1u, 28375u), vec2<u32>(28690u, 45751u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_2 {
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    let var_0 = true;
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    return Struct_2(~vec3<i32>(-_wgslsmith_sub_i32(36195i, 22i), countOneBits(_wgslsmith_sub_i32(u_input.b, u_input.a)), abs(u_input.a ^ u_input.a)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_3 {
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    let var_0 = u_input.b;
    global0 = array<vec2<u32>, 28>();
    let var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(46948u, ~firstTrailingBit(0u)), 0u), -785f, _wgslsmith_mult_vec3_i32(abs(vec3<i32>(arg_2.a.x, -2147483647i, -arg_1.x)), arg_1.xzx), ~vec3<u32>(select(17154u, ~1u, true), 4294967295u, 4294967295u));
    return Struct_3(Struct_1(var_1.a, _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f + var_1.b))), max(vec3<i32>(-2147483647i, ~(-89783i), u_input.a), vec3<i32>(-1i, u_input.b, ~arg_1.x)), ~max(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, var_1.d.x), var_1.d, vec3<u32>(var_1.a, 22009u, 1u)), _wgslsmith_sub_vec3_u32(var_1.d, vec3<u32>(1u, var_1.d.x, 4294967295u)))), arg_2);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec2<f32> {
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    var var_0 = _wgslsmith_sub_vec4_i32(select(-vec4<i32>(i32(-1i) * -19023i, countOneBits(2147483647i), u_input.a, -u_input.b), vec4<i32>(abs(arg_0.b.a.x) | 918i, 2147483647i, 1i, -44284i), vec4<bool>(true, true, true, _wgslsmith_f_op_f32(floor(arg_0.a.b)) > -1256f)), vec4<i32>(~(-u_input.b), 23605i, u_input.a, _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0.b.a.x, arg_0.b.a.x), _wgslsmith_sub_i32(arg_0.a.c.x, u_input.b))) >> (vec4<u32>(arg_1, 4294967295u, 8749u, arg_1) % vec4<u32>(32u)));
    var var_1 = func_2(_wgslsmith_mod_vec2_i32(var_0.xx, -vec2<i32>(abs(0i), -arg_0.a.c.x)), vec4<i32>(38481i, _wgslsmith_mod_i32(-63084i, -245i) << (arg_0.a.a % 32u), min(arg_0.b.a.x, u_input.a), -min(u_input.b, arg_0.a.c.x) & _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-23372i, u_input.a, -1i, var_0.x), vec4<i32>(1i, arg_0.a.c.x, 4770i, 1i)), firstLeadingBit(vec4<i32>(var_0.x, arg_0.a.c.x, 40387i, u_input.b)))), Struct_2(firstLeadingBit(_wgslsmith_clamp_vec3_i32(func_1().a, firstLeadingBit(vec3<i32>(0i, -1i, var_0.x)), arg_0.a.c | vec3<i32>(43854i, u_input.a, u_input.a))))).a;
    let var_2 = any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false))));
    return vec2<f32>(-244f, arg_0.a.b);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = select(abs(~arg_1 << (~vec3<u32>(arg_3.a.d.x, arg_3.a.a, arg_3.a.a) % vec3<u32>(32u))), vec3<i32>(2147483647i & arg_1.x, -arg_2, -(~u_input.a)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_3.a.b < 1739f)) & true);
    let var_1 = arg_3.a.a;
    var var_2 = Struct_1(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(13548u), ~1u, _wgslsmith_mult_u32(arg_3.a.d.x, 75562u), ~var_1), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_1, 0u, var_1), vec4<u32>(arg_3.a.d.x, var_1, arg_3.a.d.x, 1u)))), arg_3.a.b, arg_3.a.c, arg_3.a.d);
    var var_3 = true;
    var_2 = func_2(vec2<i32>(1i, abs(max(_wgslsmith_dot_vec2_i32(var_2.c.xx, arg_3.a.c.xy), ~(-2100i)))), -(~max(-vec4<i32>(-34065i, 32809i, -51509i, arg_1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-20331i, arg_1.x, 2147483647i, 1866i), vec4<i32>(arg_2, arg_1.x, 2147483647i, u_input.a)))), Struct_2(select(arg_1, select(reverseBits(vec3<i32>(arg_2, arg_2, arg_2)), vec3<i32>(2147483647i, 1i, 14094i), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), true))).a;
    return Struct_2(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 28>();
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(func_2(_wgslsmith_add_vec2_i32(vec2<i32>(-24091i, u_input.b), vec2<i32>(u_input.b, u_input.a)), ~vec4<i32>(24988i, u_input.a, -21731i, u_input.b), func_1()), ~0u)))), countOneBits(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-29735i, 34772i, -5347i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 16461i, -46222i), vec3<i32>(-2147483647i, 2147483647i, 2147483647i), vec3<i32>(26143i, -32769i, u_input.a))))), 26934i, Struct_3(func_2(vec2<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_mod_i32(u_input.b, 0i)), ~(-vec4<i32>(-12813i, 12457i, u_input.a, u_input.a)), func_2(~vec2<i32>(u_input.a, -2727i), -vec4<i32>(u_input.a, 1i, u_input.b, u_input.a), func_2(vec2<i32>(u_input.a, u_input.b), vec4<i32>(-19388i, 16205i, u_input.b, u_input.b), Struct_2(vec3<i32>(45125i, 2147483647i, u_input.b))).b).b).a, Struct_2(-firstLeadingBit(vec3<i32>(u_input.b, -1i, -2147483647i)))));
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    let var_1 = -(~firstTrailingBit(firstTrailingBit(var_0.a.zx) & var_0.a.zx));
    let var_2 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(func_3(func_2(var_0.a.xx, vec4<i32>(var_0.a.x, var_0.a.x, var_1.x, var_1.x), Struct_2(vec3<i32>(-1i, var_1.x, var_1.x))), _wgslsmith_clamp_u32(16778u, 4294967295u, 1u))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, var_1.x, var_0.a.x), vec3<i32>(-115i, var_1.x, var_1.x)), firstTrailingBit(-1i), Struct_3(func_2(var_0.a.xy, vec4<i32>(var_0.a.x, var_1.x, u_input.b, 11332i), Struct_2(vec3<i32>(2147483647i, -39034i, 0i))).a, Struct_2(var_0.a))).a >> (~min(_wgslsmith_mod_vec3_u32(vec3<u32>(25890u, 0u, 21131u), vec3<u32>(13562u, 23588u, 33539u)), vec3<u32>(29864u, 1732u, 99815u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_1(1u, -1263f, var_2.a, vec3<u32>(1u, 1u, 1u)), var_0), 1u)).x * _wgslsmith_f_op_f32(716f + 1497f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1317f)) - _wgslsmith_f_op_f32(790f + 440f)), 1221f)), abs(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(980f, -353f), vec2<f32>(933f, 330f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(569f, 951f))))) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-168f, -679f, -271f, -1518f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(165f, -866f, 740f, -1000f), vec4<f32>(1821f, 330f, -1295f, -862f))), vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1843f, _wgslsmith_f_op_f32(-554f + -597f), _wgslsmith_f_op_f32(-137f - -1097f), _wgslsmith_f_op_f32(round(-497f))))));
}

