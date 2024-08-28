struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = select(vec4<bool>(true, false, all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(false, true))), true), vec4<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec4<bool>(false, false, true, true)))), true), any(vec2<bool>(true, true)));
    var var_1 = Struct_1(vec4<i32>(1i, 0i, -1i, _wgslsmith_mult_i32(-14947i, -1i)), !vec4<bool>(false, false, var_0.x, true), _wgslsmith_mult_i32(-1i, u_input.a), -1232f);
    var var_2 = -var_1.a;
    global0 = var_1.b.x;
    var_2 = var_1.a;
    return _wgslsmith_f_op_f32(-var_1.d);
}

fn func_4(arg_0: vec4<f32>) -> vec3<i32> {
    global0 = true || (((-326f <= _wgslsmith_f_op_f32(select(arg_0.x, 161f, false))) || !any(vec2<bool>(false, false))) & false);
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), ~countOneBits(vec4<i32>(-1i, 27089i, u_input.a, u_input.a))), !vec4<bool>(true, arg_0.x >= arg_0.x, true, true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, _wgslsmith_mod_i32(1i, -21172i), 6171i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-19359i, 37777i), vec2<i32>(u_input.a, u_input.a)), reverseBits(-2147483647i), max(u_input.a, u_input.a), max(u_input.a, u_input.a))), arg_0.x), -20507i, Struct_1(-_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -47244i, u_input.a), vec4<i32>(1i, 1i, u_input.a, 153i)), select(vec4<bool>(true, any(vec3<bool>(false, true, false)), true, true), vec4<bool>(true, true, true, true), true), -u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))) * -1009f)), _wgslsmith_div_vec4_u32(vec4<u32>(~(1u >> (u_input.c % 32u)), u_input.c, max(~47629u, max(u_input.c, u_input.c)), ~(~43749u)), reverseBits(_wgslsmith_mult_vec4_u32(~u_input.b, u_input.b))), _wgslsmith_dot_vec2_u32(u_input.b.wx, _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.b.wy, vec2<u32>(0u, 3940u)), ~(~u_input.b.ww))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-276f * var_0.c.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x));
    var var_1 = 0i;
    global1 = _wgslsmith_f_op_f32(abs(-703f));
    return -vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-2147483647i & u_input.a, abs(u_input.a)), ~2147483647i | reverseBits(var_0.b), var_0.a.c), firstLeadingBit(-21550i), u_input.a);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = select(vec3<i32>(_wgslsmith_sub_i32(~countOneBits(-1i), -27279i | -arg_0.x), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(2147483647i), -28064i, _wgslsmith_clamp_i32(1i, 2147483647i, 19970i), -1i), select(~vec4<i32>(arg_0.x, 0i, 17734i, 24255i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, arg_0.x), vec4<i32>(-4010i, arg_0.x, 79811i, 44478i)), vec4<bool>(true, true, false, true)))), func_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1436f), _wgslsmith_div_f32(2303f, -1590f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(605f * -850f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2498f)))), reverseBits(6185u) > _wgslsmith_mult_u32(abs(max(51682u, 83999u)), _wgslsmith_mult_u32(u_input.c ^ 4294967295u, _wgslsmith_div_u32(u_input.c, 41177u))));
    let var_1 = Struct_2(Struct_1(vec4<i32>(1i, firstLeadingBit(-32427i), var_0.x, ~(-78i)) | firstLeadingBit(vec4<i32>(42927i, u_input.a, -9087i, -1i)), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, all(vec4<bool>(false, false, true, true))), _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.x, 11524i), vec3<i32>(var_0.x, 17780i, -2147483647i)), _wgslsmith_div_i32(~var_0.x, _wgslsmith_div_i32(arg_0.x, -38865i))), _wgslsmith_f_op_f32(f32(-1f) * -1181f)), abs(countOneBits(_wgslsmith_dot_vec2_i32(var_0.zy >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), var_0.xz))), Struct_1(_wgslsmith_mult_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, 2147483647i, arg_0.x, u_input.a), vec4<i32>(u_input.a, var_0.x, var_0.x, 45550i))), vec4<i32>(_wgslsmith_mult_i32(48672i, arg_0.x), -arg_0.x, -13629i, var_0.x)), select(vec4<bool>(false, false, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), firstLeadingBit((26695i ^ u_input.a) | ~1i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(176f + 2929f), _wgslsmith_f_op_f32(-1641f + 262f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(575f, -144f) - 1419f)))), u_input.b, u_input.c);
    let var_2 = 0u >> (reverseBits(firstTrailingBit(var_1.d.x)) % 32u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1135f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -636f))))))));
    let var_3 = !var_1.a.b.x;
    return var_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = func_2(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(min(vec3<i32>(-17741i, arg_2, u_input.a), ~vec3<i32>(u_input.a, -2147483647i, 35760i)), vec3<i32>(u_input.a, u_input.a, 16080i) & firstLeadingBit(vec3<i32>(37082i, -58205i, arg_2))), abs(reverseBits(vec3<i32>(0i, -11662i, -12549i)))));
    let var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~countOneBits(vec2<u32>(10239u, var_0.d.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.zw, vec2<u32>(4294967295u, 68038u), u_input.b.zz), arg_0.zy), var_0.d.wy), _wgslsmith_div_vec2_u32(~(vec2<u32>(1u, 1u) >> (vec2<u32>(var_0.d.x, 0u) % vec2<u32>(32u))), arg_0.zw));
    global0 = arg_1;
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(1890i, func_2(var_0.a.a.yyw).b | firstTrailingBit(~u_input.a)), -17585i, 1i);
    var var_3 = select(arg_0, ~u_input.b, !vec4<bool>(var_0.c.b.x | !var_0.c.b.x, true, true, _wgslsmith_f_op_f32(-var_0.c.d) <= _wgslsmith_f_op_f32(-var_0.c.d)));
    return !var_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.b.yyw);
    global0 = (!(~0u >= abs(var_0.x)) | func_1(u_input.b, false, _wgslsmith_mod_i32(_wgslsmith_mult_i32(16224i, u_input.a), i32(-1i) * -84758i))) && true;
    global1 = -1710f;
    let var_1 = Struct_2(Struct_1(min(-(vec4<i32>(10505i, u_input.a, -16447i, u_input.a) | vec4<i32>(22459i, 31518i, 3946i, 39759i)), ~vec4<i32>(u_input.a, -1i, u_input.a, 2147483647i) << (abs(vec4<u32>(u_input.c, 0u, u_input.b.x, var_0.x)) % vec4<u32>(32u))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), true), u_input.a, -1764f), -2147483647i, Struct_1(vec4<i32>(func_2(vec3<i32>(u_input.a, 2147483647i, 0i)).a.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(u_input.a, 2147483647i, u_input.a)), -1i, u_input.a & -19263i) & vec4<i32>(~u_input.a, -1i, 1i, func_2(vec3<i32>(u_input.a, u_input.a, -1i)).b), func_2(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 31513i), vec3<i32>(u_input.a, u_input.a, 69480i)))).c.b, ~_wgslsmith_sub_i32(reverseBits(-23990i), ~u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -854f)))), vec4<u32>(88771u, var_0.x, 33342u, firstTrailingBit(37633u)), abs(49997u));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_1.c.a.zx, vec2<i32>(u_input.a, u_input.a)) | var_1.c.a.zw, var_1.a.a.zz), reverseBits(-1i), var_1.a.c, _wgslsmith_mod_i32(-2147483647i, ~_wgslsmith_mult_i32(19296i, var_1.a.a.x))) ^ var_1.c.a;
    var var_3 = var_1.c.a.yyx;
    let var_4 = func_2(vec3<i32>(-1i) * -vec3<i32>(~u_input.a, 11127i, ~var_1.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u, (~vec3<u32>(1u, u_input.c, 4294967295u) ^ vec3<u32>(var_0.x, _wgslsmith_add_u32(u_input.b.x, 60100u), countOneBits(20439u))) & vec3<u32>(1u, func_2(var_2.xzx).e, 4294967295u), var_3.xx);
}

