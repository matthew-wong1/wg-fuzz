struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 48369u, 1u);

var<private> global1: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-695f, -495f), vec2<f32>(1055f, -920f), vec2<f32>(-1462f, -1546f), vec2<f32>(-839f, 159f), vec2<f32>(1688f, -1036f), vec2<f32>(976f, -571f), vec2<f32>(561f, 1627f), vec2<f32>(-339f, -1589f), vec2<f32>(-1515f, -1942f), vec2<f32>(-1000f, 919f), vec2<f32>(-850f, -555f), vec2<f32>(-1185f, -2053f), vec2<f32>(-937f, 351f), vec2<f32>(-738f, 1028f), vec2<f32>(-882f, -529f), vec2<f32>(-1000f, -1000f), vec2<f32>(-353f, 606f), vec2<f32>(-1000f, 239f), vec2<f32>(-416f, -1846f));

var<private> global2: Struct_1 = Struct_1(vec4<f32>(1000f, 205f, -696f, -736f), -1229i, 0u, 49453u, 0u);

var<private> global3: array<Struct_1, 19>;

var<private> global4: array<vec4<u32>, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    global1 = array<vec2<f32>, 19>();
    global3 = array<Struct_1, 19>();
    global4 = array<vec4<u32>, 20>();
    global0 = ~select(min(~vec3<u32>(0u, global0.x, 49522u) & abs(vec3<u32>(global0.x, u_input.a.x, 4294967295u)), vec3<u32>(58604u, ~4294967295u, select(316u, u_input.b, false))), abs(~(vec3<u32>(21128u, u_input.b, 27151u) ^ vec3<u32>(96319u, global0.x, 49263u))), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, global2.e >= u_input.b), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(floor(-940f)) == -1267f));
    var var_0 = !any(select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, true), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true)));
    return _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 4294967295u, ~19961u), _wgslsmith_mod_vec3_u32(vec3<u32>(35257u, 27968u, global2.e), ~_wgslsmith_mult_vec3_u32(vec3<u32>(54491u, 0u, global0.x), vec3<u32>(global2.e, 4294967295u, 1u)))) >> (vec3<u32>(global2.d, 33532u, u_input.a.x) % vec3<u32>(32u));
}

fn func_2(arg_0: f32) -> Struct_3 {
    return Struct_3(u_input.a.x << (~0u % 32u), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, 815f, global2.a.x, 1788f)))), ~24452i, ~43110u, _wgslsmith_div_u32(4294967295u, 1u), max(4294967295u, 60436u)), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), ~func_3(), u_input.a & global0.xz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1169f, 339f, arg_0)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a.ywy)))), ~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.x, global0.x), u_input.b), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.c, 1u), vec3<u32>(1u, global2.d, global2.e)) | 5675u), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a)), ~global2.b, _wgslsmith_div_u32(u_input.a.x, u_input.b), func_3().x, select(1u, _wgslsmith_mod_u32(global0.x, global0.x), true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), reverseBits(vec3<u32>(29033u, _wgslsmith_mult_u32(4294967295u, u_input.a.x), global0.x ^ global2.e)), vec2<u32>(~(~12007u), 67u << ((global2.d >> (u_input.a.x % 32u)) % 32u)), _wgslsmith_f_op_vec3_f32(floor(global2.a.zxw))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec3<f32>) -> u32 {
    var var_0 = Struct_3(firstTrailingBit(countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0.zz, vec2<u32>(global0.x, u_input.a.x)), 0u))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.a.x - -391f))).b, ~firstLeadingBit(firstTrailingBit(~arg_0.c.b.c)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1572f)))).b);
    global0 = _wgslsmith_sub_vec3_u32(vec3<u32>(42526u, select(global0.x, ~firstTrailingBit(arg_0.c.d.c.x), true), max(var_0.b.c.x, u_input.b)), func_3());
    global2 = func_2(765f).b.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + global2.a.x)) + _wgslsmith_f_op_f32(-254f - _wgslsmith_f_op_f32(-910f + var_0.d.a.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(var_0.b.a.a.x))).d.a.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    var var_2 = func_2(_wgslsmith_f_op_f32(abs(arg_0.c.d.e.x))).b.a;
    return firstLeadingBit(_wgslsmith_sub_u32(global2.e, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(arg_0.d.x, global0.x, 0u)), arg_0.c.d.c | arg_0.d), firstTrailingBit(_wgslsmith_sub_vec3_u32(var_0.c, var_0.c)))));
}

fn func_1() -> Struct_1 {
    global4 = array<vec4<u32>, 20>();
    let var_0 = Struct_3(func_4(Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(479f, -752f, 1165f, 170f), global2.a)), abs(-2147483647i), 4294967295u, 111180u & global0.x, 47937u), _wgslsmith_div_u32(global2.c, 4294967295u), func_2(global2.a.x), vec3<u32>(_wgslsmith_mult_u32(0u, global2.d), global2.d, ~global0.x), func_2(_wgslsmith_f_op_f32(-global2.a.x)).b.a), vec2<bool>(!(global2.a.x >= 797f), !all(vec2<bool>(false, false))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.a.x, global2.a.x, -809f))))), vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(-global2.a.x), -363f)))), func_2(global2.a.x).d, vec3<u32>(global0.x, firstTrailingBit(6259u), ~0u) & ~(reverseBits(vec3<u32>(16674u, 29388u, global0.x)) << (~vec3<u32>(global0.x, 11951u, u_input.a.x) % vec3<u32>(32u))), func_2(_wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(666f + 1143f)))).d);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-330f)) - var_0.b.e.x), any(select(vec2<bool>(false, var_0.b.b.x), var_0.b.b.xx, var_0.d.b.x))))), global2.a.x, _wgslsmith_f_op_f32(round(494f)));
    var var_2 = var_0.d.a;
    return var_0.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 19>();
    global4 = array<vec4<u32>, 20>();
    global2 = func_1();
    global1 = array<vec2<f32>, 19>();
    let var_0 = func_2(_wgslsmith_f_op_f32(-global2.a.x)).b.a;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1455f, -132f, -1181f, 1086f) * vec4<f32>(var_0.a.x, -1466f, -1822f, -657f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 2144f, -773f, -1000f) + vec4<f32>(global2.a.x, global2.a.x, global2.a.x, var_0.a.x))), global2.a)), -1i, u_input.a.x, ~global0.x, global2.c), vec3<bool>(_wgslsmith_div_u32(49542u, abs(global0.x)) != firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, var_0.e), vec3<u32>(77053u, 34241u, 1u))), !(max(u_input.c, 31529i) < abs(-2147483647i)), true), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_0.d, 24570u, global0.x)), ~(~func_2(var_0.a.x).c)), vec2<u32>(~(3103u ^ ~global2.c), 49570u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-global2.a.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(221f, 1450f, var_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(718f, 830f, 2003f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a.x), -185f, -447f, _wgslsmith_f_op_vec4_f32(round(var_1.a.a)), ~(~(vec3<u32>(5581u, var_1.a.e, global0.x) ^ var_1.c)) | var_1.c);
}

