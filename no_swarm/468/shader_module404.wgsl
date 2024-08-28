struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: bool) -> vec4<i32> {
    global0 = array<vec3<f32>, 24>();
    let var_0 = vec2<bool>(false, all(vec4<bool>(arg_3, !any(vec3<bool>(true, arg_3, arg_3)), all(!vec4<bool>(arg_3, true, true, true)), arg_3)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-104f, _wgslsmith_div_f32(-1119f, 261f))), -893f, var_0.x));
    var var_2 = -arg_2.x;
    var_2 = -_wgslsmith_dot_vec2_i32(u_input.d.yz, ~arg_2.yw);
    return -arg_2 & _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, -1i, arg_2.x, u_input.e), vec4<i32>(-1i, -24628i, u_input.b, -2147483647i)), abs(vec4<i32>(2147483647i, arg_2.x, arg_2.x, 2147483647i))), max(vec4<i32>(2147483647i, 18611i, 2147483647i, 42961i), arg_2)), (vec4<i32>(0i, -53971i, -12429i, 42691i) << (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 5032u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 39212u, u_input.c.x)) % vec4<u32>(32u))) << ((vec4<u32>(u_input.c.x, arg_0.x, arg_0.x, arg_0.x) << (vec4<u32>(4294967295u, u_input.c.x, 0u, 54024u) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<f32>, 24>();
    var var_0 = Struct_1(vec3<u32>(u_input.c.x, 113626u, _wgslsmith_dot_vec3_u32(reverseBits(max(vec3<u32>(0u, u_input.c.x, 58337u), vec3<u32>(u_input.c.x, u_input.c.x, 0u))), vec3<u32>(~1128u, u_input.c.x, ~u_input.c.x))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(u_input.e), ~u_input.d.x, u_input.b, u_input.e), vec4<i32>(u_input.e, 1i >> (u_input.c.x % 32u), 5624i, i32(-1i) * -50260i)), !vec4<bool>((u_input.c.x | u_input.c.x) > u_input.c.x, all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), all(vec2<bool>(false, false)), false));
    var var_1 = -1379f;
    var_1 = 748f;
    var var_2 = Struct_1(~(~min(firstLeadingBit(var_0.a), ~var_0.a)), var_0.b, var_0.c);
    return Struct_2(Struct_1(firstLeadingBit(var_2.a), -func_3(vec3<u32>(var_0.a.x, u_input.c.x, 4294967295u), vec3<f32>(-2297f, 1000f, 216f), var_2.b, false), var_2.c), Struct_1(vec3<u32>(_wgslsmith_add_u32(1u, ~var_0.a.x), u_input.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 18906u, 1u), vec3<u32>(4294967295u, var_2.a.x, var_0.a.x))), abs(max(var_0.b, vec4<i32>(-1i, -1i, u_input.a.x, var_2.b.x)) >> (~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), var_0.c));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-143f, 1937f)) - _wgslsmith_f_op_f32(sign(-382f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !(firstLeadingBit(u_input.b) < (max(u_input.d.x, u_input.e) | u_input.b))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-681f, var_0.x, -1183f), vec3<f32>(var_0.x, var_0.x, var_0.x)))) * global0[_wgslsmith_index_u32(~66987u & (u_input.c.x | 37151u), 24u)]), global0[_wgslsmith_index_u32(67356u, 24u)]) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1674f, var_0.x)) + var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1364f, _wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = func_2();
    var var_3 = 0u >> (_wgslsmith_mod_u32(select(40847u, _wgslsmith_clamp_u32(var_2.a.a.x << (0u % 32u), select(22215u, 73291u, true), _wgslsmith_div_u32(u_input.c.x, 4294967295u)), !all(vec2<bool>(var_2.a.c.x, var_2.b.c.x))), firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_2.b.a, var_2.a.a), u_input.c.x, u_input.c.x))) % 32u);
    var var_4 = var_2;
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> StorageBuffer {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(1433f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2681f * arg_1)) + arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(145f)), _wgslsmith_div_f32(-1560f, -865f))))), -679f);
    var var_1 = Struct_2(Struct_1(arg_2.b.a ^ _wgslsmith_mult_vec3_u32(arg_0.a.a, vec3<u32>(36074u, 0u, arg_0.a.a.x)), vec4<i32>(~(~(-1i)), -10420i, u_input.d.x, 4124i | ~arg_2.b.b.x), vec4<bool>(any(!arg_0.b.c.zx), true, _wgslsmith_sub_u32(arg_0.a.a.x, 32001u) >= (arg_0.b.a.x << (u_input.c.x % 32u)), !arg_0.a.c.x)), arg_0.a);
    return StorageBuffer(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-160f, -1303f, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))))), -806f)), Struct_2(func_2().a, func_1().a), ~2147483647i);
}

