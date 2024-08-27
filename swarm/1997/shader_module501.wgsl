struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>) -> vec2<bool> {
    return select(vec2<bool>(true, true), vec2<bool>((~arg_0.x > 0u) && !select(false, true, true), select(true || any(vec4<bool>(true, false, false, true)), !all(vec3<bool>(true, false, true)), true)), vec2<bool>(all(vec4<bool>(true, true, true, true)) | true, true));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: i32) -> vec2<bool> {
    global0 = array<vec3<u32>, 16>();
    var var_0 = Struct_3(Struct_2(Struct_1(-601f, _wgslsmith_mod_i32(arg_0, u_input.b)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2258f - 482f), _wgslsmith_f_op_f32(f32(-1f) * -394f)), -6960i), max(-abs(vec4<i32>(arg_2, arg_0, 2147483647i, u_input.c)), abs(-vec4<i32>(30863i, 26727i, -11747i, 7810i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-330f, 427f, -1000f, 1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1956f, -1472f, 1823f, 871f), vec4<f32>(-317f, 1571f, -628f, -338f)))))), -arg_0, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577f * 974f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-300f, 514f)))), ~(-(~9822i))));
    let var_1 = firstLeadingBit(vec4<u32>(max(0u, select(10753u, 4294967295u >> (arg_1.x % 32u), true)), arg_1.x, firstLeadingBit(30420u), ~_wgslsmith_div_u32(min(1u, arg_1.x), reverseBits(u_input.d.x))));
    return func_3(select(vec4<u32>(var_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, u_input.d.x, 22945u, 64667u), vec4<u32>(35035u, 997u, u_input.d.x, var_1.x)), vec4<u32>(1u, 63068u, var_1.x, u_input.d.x)), u_input.d.x, _wgslsmith_sub_u32(arg_1.x, arg_1.x >> (u_input.d.x % 32u))), var_1, true));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    global0 = array<vec3<u32>, 16>();
    global0 = array<vec3<u32>, 16>();
    let var_0 = select(!(!(!(!vec2<bool>(arg_1, false)))), select(select(!func_2(-1i, global0[_wgslsmith_index_u32(u_input.d.x, 16u)], 1i), vec2<bool>(all(vec4<bool>(true, false, true, false)), arg_1), arg_1 | all(vec2<bool>(arg_1, arg_1))), func_3(firstTrailingBit(vec4<u32>(u_input.d.x, 8117u, u_input.d.x, u_input.d.x))), select(vec2<bool>(arg_1, arg_1), !func_3(vec4<u32>(39247u, 84439u, 77456u, u_input.d.x)), !any(vec2<bool>(arg_1, false)))), func_2(-u_input.c, select(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), global0[_wgslsmith_index_u32(1u, 16u)]), global0[_wgslsmith_index_u32(1u, 16u)]), min(global0[_wgslsmith_index_u32(~u_input.d.x, 16u)], vec3<u32>(1u, u_input.d.x, u_input.d.x)), !select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1))), -2147483647i));
    var var_1 = _wgslsmith_mod_vec4_i32(-(arg_0.c | (vec4<i32>(arg_0.c.x, arg_0.b.b, 2147483647i, -18963i) ^ arg_0.c)) >> (~(~vec4<u32>(u_input.d.x, 1u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(arg_0.c, arg_0.c));
    var var_2 = Struct_2(Struct_1(1274f, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i) | reverseBits(arg_0.c.yw), vec2<i32>(_wgslsmith_sub_i32(u_input.c, var_1.x), _wgslsmith_div_i32(u_input.a, u_input.b)))), arg_0.a, arg_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(868f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1752f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(111f, arg_3))), _wgslsmith_f_op_f32(-173f * arg_3))));
    return _wgslsmith_f_op_f32(265f - -562f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(1662f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-531f, -1000f)))), -175f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(719f, u_input.b), Struct_1(-1000f, u_input.e), vec4<i32>(u_input.a, u_input.b, -36651i, u_input.c), vec4<f32>(-757f, -1216f, 720f, var_0.x)), false, vec3<f32>(var_0.x, -1000f, 464f), var_0.x)))), _wgslsmith_f_op_f32(153f * -1002f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(436f, var_0.x), vec2<f32>(1288f, 516f), vec2<bool>(false, true)))))))));
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(-1311f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_sub_i32(2147483647i, countOneBits(-31112i))), Struct_1(-1352f, reverseBits(u_input.a)), select(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, u_input.e, 23807i, 12412i), vec4<i32>(1i, u_input.b, -1i, -20637i), vec4<i32>(u_input.a, u_input.e, u_input.b, u_input.a))), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, u_input.e, -4625i, -1i), ~vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.b)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1079f, var_0.x, var_0.x, var_0.x)))), i32(-1i) * -1i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(837f)), _wgslsmith_f_op_f32(-var_0.x)) + var_0.x), u_input.c & u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.b ^ 26929i, abs(-select(-4479i, var_1.a.b.b, false) << (min(30247u, 62254u >> (u_input.d.x % 32u)) % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -1524f));
}

