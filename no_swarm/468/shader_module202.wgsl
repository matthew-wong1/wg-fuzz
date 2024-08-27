struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = 124783u;
    var var_1 = abs(u_input.a);
    var_1 = _wgslsmith_div_i32(u_input.a, -2147483647i);
    var var_2 = -20620i;
    let var_3 = Struct_1(-141f, _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, 38491u), ~select(vec2<u32>(var_0, 0u), vec2<u32>(var_0, 0u), true)) >> (vec2<u32>(var_0, _wgslsmith_mod_u32(~var_0, 37923u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -919f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(550f, -402f)), _wgslsmith_f_op_f32(trunc(1254f))), _wgslsmith_f_op_f32(step(-473f, _wgslsmith_f_op_f32(1236f * -919f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f)))), any(select(vec4<bool>(true, all(vec4<bool>(true, true, false, false)), true, any(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, false, all(vec4<bool>(true, true, true, false))), true)));
    return 599f;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(~(-vec4<i32>(-u_input.a, select(u_input.a, 30954i, false), firstTrailingBit(-24257i), u_input.a)));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_div_f32(1000f, 2439f);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-819f, -1623f))))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, abs(1u))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), -983f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-591f, var_2))))), -864f), true);
    var var_4 = abs(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 39725u, 4294967295u), 1u), ~_wgslsmith_mod_u32(var_3.b.x, 45274u), var_3.b.x, 4294967295u)) | ~firstLeadingBit(vec4<u32>(~1u, 2911u, ~1u, 26284u));
    return var_0;
}

fn func_1() -> vec4<i32> {
    let var_0 = true;
    let var_1 = max(abs(reverseBits(vec4<u32>(~1u, 0u, 47876u, _wgslsmith_clamp_u32(14929u, 9697u, 0u)))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u)), 1u, 4294967295u, 10945u));
    let var_2 = func_2();
    let var_3 = Struct_1(-872f, _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, var_1.x), vec2<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.x, 4294967295u), var_1.x)), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_1.x, 21033u), 4294967295u | var_1.x), vec2<u32>(570u, 0u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1399f * 629f), 1175f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-831f, 1266f, var_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1724f - -789f))), _wgslsmith_f_op_f32(872f + -206f)), all(select(vec2<bool>(select(var_0, false, var_0), true), !(!vec2<bool>(var_0, var_0)), vec2<bool>(!var_0, var_0))));
    let var_4 = vec3<f32>(var_3.c.x, _wgslsmith_f_op_f32(floor(var_3.a)), _wgslsmith_f_op_f32(-var_3.a));
    return vec4<i32>(u_input.a, reverseBits(u_input.a), var_2.a.x, _wgslsmith_add_i32(15629i, 23565i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-165f * 943f))))), _wgslsmith_div_f32(1000f, 2079f)));
    var var_2 = Struct_2(func_1() << (select(~(~vec4<u32>(0u, 4294967295u, 105750u, 90227u)), max(vec4<u32>(0u, 28219u, 4294967295u, 78474u), vec4<u32>(1u, 1u, 1u, 1u)), false | !var_0) % vec4<u32>(32u)));
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2041f - var_1.x)), _wgslsmith_f_op_f32(-var_1.x))), var_1.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), -209f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1645f, var_1.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-655f, var_1.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(-490f, var_1.x)))))));
    var_2 = Struct_2(var_2.a);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -555f)) * -1000f)), ~abs(abs(countOneBits(vec2<u32>(4294967295u, 59050u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(541f, var_1.x, 1158f, var_1.x) + vec4<f32>(var_1.x, var_1.x, 1464f, var_1.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -580f, var_1.x) * vec4<f32>(246f, var_1.x, var_1.x, -1283f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-614f, var_1.x, 629f, var_1.x), vec4<f32>(-929f, 1285f, var_1.x, var_1.x))), !vec4<bool>(false, var_0, var_0, var_0))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1880f, var_1.x, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, var_1.x, var_1.x, 624f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, var_1.x, 1880f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1829f, -1134f, -2464f, var_1.x))), !vec4<bool>(var_0, var_0, var_0, false))))), true);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(max(var_3.a, _wgslsmith_f_op_f32(sign(-1809f)))), min(vec2<u32>(_wgslsmith_add_u32(var_3.b.x | 1u, max(0u, var_3.b.x)), 0u), max(firstLeadingBit(vec2<u32>(1u, 535u)), firstTrailingBit(vec2<u32>(58989u, 6340u))) ^ var_3.b), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-223f, 199f, var_3.c.x, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(-278f, var_3.c.x)))))), any(vec3<bool>(any(vec2<bool>(var_0, false)), any(vec4<bool>(true, false, var_3.d, false)), false)));
    let var_5 = !any(select(select(vec2<bool>(true, true), select(vec2<bool>(false, var_0), vec2<bool>(var_0, true), vec2<bool>(var_4.d, true)), vec2<bool>(false, var_0)), !vec2<bool>(var_3.d, true), !vec2<bool>(true, var_3.d)));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~7013u, var_4.b.x), vec2<i32>(_wgslsmith_div_i32(1i, -13157i), _wgslsmith_div_i32(~7978i, func_1().x & u_input.a)), 0u);
}

