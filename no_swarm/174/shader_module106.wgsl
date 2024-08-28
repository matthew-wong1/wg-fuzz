struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = vec2<i32>(arg_0.d, -8138i);
    let var_1 = ~abs(~(~(~arg_0.c.a.b)));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.c.a.c);
    var var_3 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-2147483647i ^ u_input.b, 1i, -14718i)), vec3<i32>(0i, u_input.b, countOneBits(-44751i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(reverseBits(vec3<i32>(var_0.x, 0i, 3283i))), _wgslsmith_mult_vec3_i32(vec3<i32>(12112i, u_input.b, var_0.x), abs(vec3<i32>(0i, var_0.x, 1i))), min(~vec3<i32>(-1i, u_input.b, var_0.x), ~vec3<i32>(74166i, u_input.b, -46301i))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(8673i, var_0.x, 0i), vec3<i32>(u_input.b, u_input.b, -2147483647i)), vec3<i32>(-2147483647i, arg_0.d, arg_0.d)) >> (abs(~vec3<u32>(u_input.c, 19939u, var_1)) % vec3<u32>(32u)), countOneBits(min(vec3<i32>(0i, -1i, -11244i), ~vec3<i32>(u_input.b, arg_0.c.d.e, arg_0.d)))));
    var_2 = arg_0.c.a.c;
    return _wgslsmith_f_op_f32(-arg_0.c.d.d);
}

fn func_2() -> vec2<bool> {
    let var_0 = ~firstTrailingBit(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c, 1u), vec4<u32>(1u, 49696u, 8250u, 34526u))) >> (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, 79458u, 15354u), vec4<u32>(69857u, 0u, u_input.c, u_input.c)), max(vec4<u32>(u_input.c, 40571u, 100414u, 59758u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.c))) % vec4<u32>(32u)));
    return !select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), -1560f > _wgslsmith_f_op_f32(func_3(Struct_3(vec2<bool>(false, false), var_0.xy, Struct_2(Struct_1(false, 0u, -267f, -1551f, 4321i), u_input.b, true, Struct_1(false, var_0.x, 675f, -390f, 1382i)), 1i)))), vec2<bool>(select(true, true, true), true), vec2<bool>(true, true));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_3(arg_0.yy, select(vec2<u32>(_wgslsmith_add_u32(u_input.a ^ u_input.c, ~13916u), u_input.a), vec2<u32>(u_input.c, ~1u), func_2()), Struct_2(Struct_1(arg_0.x, _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a, u_input.a, u_input.c, 4294967295u), vec4<u32>(4467u, u_input.c, u_input.c, u_input.a)), vec4<u32>(56995u, 1u, 31802u, u_input.c)), _wgslsmith_f_op_f32(-1f), 807f, abs(_wgslsmith_clamp_i32(2147483647i, u_input.b, -1184i))), _wgslsmith_add_i32(-u_input.b, -7757i) >> (98826u % 32u), true, Struct_1(reverseBits(-9767i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 1i), vec3<i32>(-34634i, u_input.b, u_input.b)), (u_input.c & 82007u) | _wgslsmith_sub_u32(50378u, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(vec2<bool>(arg_0.x, arg_0.x), vec2<u32>(1u, u_input.a), Struct_2(Struct_1(true, 4294967295u, 993f, -107f, 1i), u_input.b, false, Struct_1(arg_0.x, u_input.a, -357f, 1256f, 2147483647i)), 7545i)))), 1119f, -countOneBits(0i))), -25611i);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(240f + var_0.c.a.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a.c), 636f), var_0.c.d.a)), var_0.c.a.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c.a.c)) * 1000f)))), vec4<f32>(-922f, _wgslsmith_f_op_f32(floor(-926f)), _wgslsmith_f_op_f32(-var_0.c.a.c), _wgslsmith_f_op_f32(1f * -619f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0)) + -582f) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.c.a.d, var_0.c.d.d))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f)) - var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.d.d * var_1.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2259f * 168f), -225f))))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.d.c, _wgslsmith_f_op_f32(round(var_0.c.d.c))) + var_0.c.a.d), _wgslsmith_div_f32(var_0.c.d.d, _wgslsmith_f_op_f32(f32(-1f) * -640f))));
    let var_4 = ~u_input.a;
    return Struct_2(var_0.c.d, u_input.b, arg_0.x, Struct_1(!arg_0.x, ~(~(~u_input.a)), var_1.x, _wgslsmith_f_op_f32(ceil(var_3)), i32(-1i) * -15122i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(abs(vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.c)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(64903u, u_input.a, 19227u, u_input.a), vec4<u32>(u_input.a, u_input.c, u_input.a, 1u)) % vec4<u32>(32u)))) ^ (vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(9441u), firstLeadingBit(10481u)), u_input.a, 56460u, ~(~u_input.a)) ^ select(~vec4<u32>(4144u, u_input.c, u_input.a, u_input.c) | vec4<u32>(u_input.c, 827u, u_input.a, 1u), vec4<u32>(u_input.c, u_input.c, ~u_input.c, 8385u & u_input.a), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))));
    var_0 = ~vec4<u32>(var_0.x, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x, var_0.x >> (4294967295u % 32u), 50448u, u_input.c), select(vec4<u32>(4294967295u, var_0.x, 1u, u_input.c) ^ vec4<u32>(4294967295u, u_input.a, 26513u, 0u), ~vec4<u32>(9684u, u_input.c, 105750u, 4294967295u), true)), 3877u);
    let var_1 = Struct_3(!(!vec2<bool>(u_input.b >= -2147483647i, false)), vec2<u32>(reverseBits(~abs(1u)), var_0.x), func_1(vec3<bool>(all(vec2<bool>(true, true)), true, !all(vec4<bool>(true, true, true, true)))), u_input.b);
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-618f, -349f, -958f), vec3<f32>(-1166f, -502f, -149f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2178f, var_1.c.d.c, -366f) * vec3<f32>(304f, var_1.c.d.c, var_1.c.a.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.d.d, 968f, -1097f))))), -select(~(~vec3<i32>(0i, -37951i, var_1.d)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 0i, var_1.c.b), vec3<i32>(0i, var_1.c.a.e, var_1.d)) | vec3<i32>(var_1.d, u_input.b, u_input.b), var_1.d == _wgslsmith_dot_vec4_i32(vec4<i32>(-1087i, u_input.b, 1i, 19296i), vec4<i32>(var_1.c.b, u_input.b, var_1.d, 1i))), Struct_2(func_1(vec3<bool>(func_2().x, var_1.a.x, var_1.c.d.c >= -1825f)).d, -2147483647i, var_1.c.c, var_1.c.a));
    var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(u_input.c), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 46083u, var_0.x)), vec3<u32>(abs(51185u), var_0.x, _wgslsmith_clamp_u32(0u, u_input.a, var_0.x))), _wgslsmith_mult_u32(4078u, _wgslsmith_div_u32(firstLeadingBit(68002u), var_2.c.d.b)), var_0.x), vec4<u32>(var_1.c.a.b, abs(var_1.c.d.b), _wgslsmith_dot_vec4_u32(vec4<u32>(~46799u, ~50382u, var_2.c.d.b, var_2.c.a.b), firstLeadingBit(vec4<u32>(5044u, u_input.a, u_input.c, 32635u))), 0u), abs(vec4<u32>(7268u, _wgslsmith_mod_u32(0u, u_input.c), var_1.b.x, firstLeadingBit(var_0.x)) << (vec4<u32>(~var_0.x, reverseBits(var_2.c.d.b), 0u, ~var_1.b.x) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~1i, ~firstTrailingBit(abs(firstTrailingBit(0u))));
}

