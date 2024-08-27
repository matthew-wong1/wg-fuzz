struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: Struct_1 = Struct_1(vec2<i32>(2147483647i, i32(-2147483648)));

var<private> global2: u32 = 13324u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: f32) -> u32 {
    var var_0 = -(~(-19753i));
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x >> (u_input.c.x % 32u), -2147483647i), vec2<i32>(_wgslsmith_sub_i32(-14299i, global1.a.x), ~35940i)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(global1.a.x, 1i), i32(-1i) * -49635i)));
    global0 = !select(vec2<bool>(all(!vec3<bool>(false, arg_0, arg_0)), all(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, true, true)))), vec2<bool>(1u > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, 7611u), vec3<u32>(u_input.c.x, 0u, 59720u)), true), true);
    var var_2 = Struct_2(u_input.a, _wgslsmith_f_op_f32(498f * 942f), Struct_1(global1.a), var_1, vec4<u32>(_wgslsmith_add_u32(u_input.b << (109511u % 32u), _wgslsmith_mult_u32(u_input.b, u_input.b)), _wgslsmith_div_u32(1u, 43287u), u_input.b, _wgslsmith_clamp_u32(1u, u_input.d << (u_input.b % 32u), 0u)) << (vec4<u32>(_wgslsmith_div_u32(0u, ~87665u), 24219u, abs(u_input.d) | reverseBits(u_input.d), ~51462u) % vec4<u32>(32u)));
    global1 = Struct_1(vec2<i32>(_wgslsmith_add_i32(-25729i, _wgslsmith_mult_i32(8625i, var_2.d.a.x & global1.a.x)), 4074i));
    return _wgslsmith_clamp_u32(var_2.e.x, 5523u, abs(_wgslsmith_add_u32(abs(~u_input.c.x), 8449u)));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<u32>(func_3(global0.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2123f - _wgslsmith_f_op_f32(select(-184f, -221f, global0.x))) - 223f)), ~4294967295u, 0u, func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(9422u, 0u), u_input.c) < 1u, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1341f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))));
    global0 = !(!vec2<bool>(global0.x, global0.x));
    var var_2 = -abs(2147483647i);
    global0 = vec2<bool>(~(i32(-1i) * -17895i) > min(16248i, firstLeadingBit(u_input.e)), !(!(!(!global0.x))));
    return Struct_2(1i, -1255f, Struct_1(~global1.a), Struct_1(max(select(global1.a, vec2<i32>(-14674i, u_input.e), vec2<bool>(global0.x, global0.x)), reverseBits(vec2<i32>(u_input.a, 19750i)))), min(vec4<u32>(~51528u, abs(_wgslsmith_sub_u32(var_0.x, u_input.c.x)), ~var_0.x, 4294967295u), ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, 4294967295u, 20147u), var_0), var_0 | vec4<u32>(4174u, 1u, 73254u, 1743u), !vec4<bool>(true, true, global0.x, global0.x))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec4<u32> {
    global0 = arg_1.yx;
    let var_0 = func_2();
    let var_1 = func_2().c;
    var var_2 = true;
    var var_3 = _wgslsmith_mult_vec4_u32(~func_2().e, var_0.e);
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_add_vec4_u32(firstTrailingBit(min(vec4<u32>(u_input.c.x, 0u, 1u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 0u, u_input.b))), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, 47899u, 1u, u_input.d)), select(vec4<u32>(u_input.d, u_input.c.x, 0u, u_input.d), vec4<u32>(52261u, u_input.b, 26894u, u_input.d), vec4<bool>(global0.x, false, false, true)))) ^ ~(~vec4<u32>(4294967295u, 38488u, 4687u, u_input.d) >> (func_1(u_input.a, vec3<bool>(true, global0.x, true), vec4<bool>(true, global0.x, global0.x, false)) % vec4<u32>(32u))));
    global1 = Struct_1(~(-vec2<i32>(u_input.a, -9065i) & select(global1.a | global1.a, global1.a, true)));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1338f + 1025f))) - -1000f)), -409f));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, var_1))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 2356f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 694f) + vec2<f32>(385f, 104f)))))), vec2<f32>(1000f, var_1), all(!(!(!vec2<bool>(true, global0.x))))));
    let var_3 = abs(_wgslsmith_div_i32(i32(-1i) * -37201i, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1922i, 48172i), vec2<i32>(0i, -2147483647i)))));
    global0 = !(!vec2<bool>(all(vec4<bool>(false, true, global0.x, true)), global0.x));
    var var_4 = Struct_1(-vec2<i32>(var_3, u_input.a));
    global1 = Struct_1(-vec2<i32>(var_4.a.x, i32(-1i) * -var_3));
    global1 = Struct_1(vec2<i32>(~(-2147483647i), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_3 >> (0u % 32u), ((global1.a.x >> (u_input.d % 32u)) & ~36i) >> (1u % 32u)), -firstTrailingBit((vec3<i32>(34618i, -8096i, 0i) >> (vec3<u32>(var_0.x, u_input.b, u_input.c.x) % vec3<u32>(32u))) >> (countOneBits(var_0.wwx) % vec3<u32>(32u))), vec3<u32>(~(~(~30322u)), abs(var_0.x), max(_wgslsmith_div_u32(u_input.d << (1u % 32u), func_1(global1.a.x, vec3<bool>(false, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x)).x), _wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(var_0.x, 0u)))), -((reverseBits(vec2<i32>(-28912i, global1.a.x)) >> (func_1(var_3, vec3<bool>(false, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x)).wz % vec2<u32>(32u))) & var_4.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(775f, var_1)))), vec2<f32>(1321f, _wgslsmith_f_op_f32(step(var_1, 2093f))), vec2<bool>(!global0.x, false)))));
}

