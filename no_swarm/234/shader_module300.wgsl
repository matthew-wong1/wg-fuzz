struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_1(-arg_2.a);
    var var_1 = _wgslsmith_sub_u32(~1u, 32119u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_3.x)), _wgslsmith_f_op_f32(trunc(arg_3.x))));
    var_1 = 4294967295u;
    let var_3 = select(vec4<bool>(all(vec2<bool>(all(vec4<bool>(false, false, false, true)), all(vec4<bool>(arg_0, true, false, false)))), !all(vec4<bool>(arg_0, false, arg_0, arg_0)), all(vec3<bool>(arg_0, arg_0, true)), !(!(!arg_0))), !select(vec4<bool>(arg_0, !arg_0, arg_0 || arg_0, true), vec4<bool>(true, true, arg_0, any(vec4<bool>(true, true, arg_0, arg_0))), false), !(!any(!vec4<bool>(arg_0, arg_0, true, arg_0))));
    return min(countOneBits((vec3<i32>(0i, var_0.a, -105i) & vec3<i32>(u_input.a.x, u_input.a.x, var_0.a)) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 27079u, 0u), vec3<u32>(4294967295u, 1u, 1u)) % vec3<u32>(32u))), -(abs(vec3<i32>(23175i, 0i, u_input.a.x)) | vec3<i32>(u_input.a.x, -2147483647i, -12637i))) & vec3<i32>(arg_2.a, -(~u_input.a.x), arg_2.a << (~(~21634u) % 32u));
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = ~func_3(!select(arg_0.c.x, arg_0.e, true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(abs(arg_0.b.x))), -1439f, arg_0.b.x), Struct_1(-19857i), arg_0.b);
    var var_1 = vec4<bool>(arg_0.c.x, arg_0.e, arg_0.e, false);
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(-arg_0.a) > 1464f, var_1.x && true, u_input.a.x < ~arg_0.d.a, firstTrailingBit(var_0.x & (i32(-1i) * -2447i)) != _wgslsmith_mod_i32(arg_0.d.a & firstTrailingBit(u_input.a.x), ~1i));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(2326f, arg_0.a), arg_0.a), _wgslsmith_f_op_f32(arg_0.a - -784f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.b, _wgslsmith_f_op_vec2_f32(-arg_0.b)))), var_2.yz, Struct_1(var_0.x), arg_0.c.x);
    var_1 = vec4<bool>(!var_1.x, var_2.x, arg_0.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - 1351f)));
    return -212f;
}

fn func_1() -> vec4<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_f_op_f32(452f * 1f), _wgslsmith_div_vec2_f32(vec2<f32>(-1448f, 2462f), vec2<f32>(627f, -1004f)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), Struct_1(1i), any(vec3<bool>(true, false, false)) | true))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-487f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2206f)))), _wgslsmith_f_op_f32(round(-1065f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1746f * -578f) + 1f), 1025f)))));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(sign(var_0.x));
    let var_3 = select(abs(vec3<i32>(-43667i, -47697i, -var_1 & select(27780i, u_input.a.x, false))), select(select(~vec3<i32>(2147483647i, -1i, u_input.a.x), countOneBits(vec3<i32>(u_input.a.x, -13392i, 0i)), vec3<bool>(true, true, true)) | (~vec3<i32>(2147483647i, 2147483647i, u_input.a.x) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(81530i, -81426i, _wgslsmith_mod_i32(0i, var_1)), vec3<i32>(-5642i, _wgslsmith_sub_i32(u_input.a.x, 2147483647i), 0i)), !all(vec4<bool>(false, false, false, true))), true);
    var var_4 = firstTrailingBit(reverseBits(firstTrailingBit(vec3<u32>(1u, 1u, 1u)))) >> (vec3<u32>(_wgslsmith_sub_u32(~23505u, 1u), 87020u, 25875u) % vec3<u32>(32u));
    return !vec4<bool>(!(var_2 < var_0.x), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), !(var_1 > var_3.x));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = -1000f;
    var_0 = -1467f;
    var var_1 = -_wgslsmith_div_i32(abs(u_input.a.x), abs(~u_input.a.x));
    var var_2 = min(abs(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1), min(vec3<u32>(arg_1, 1u, 86741u), vec3<u32>(12676u, 87357u, 8330u)))) << (((_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, 0u, 76644u), vec3<u32>(4294967295u, arg_1, 41038u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 60940u), vec3<u32>(arg_1, arg_1, arg_1)) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(24194u, arg_1, arg_1), select(vec3<u32>(73643u, 55298u, arg_1), vec3<u32>(63135u, arg_1, 57583u), true)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(arg_1, 0u, reverseBits(_wgslsmith_clamp_u32(0u, arg_1, 1u))));
    let var_3 = ~select(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 4294967295u, var_2.x, arg_1), vec4<u32>(62251u, 1u, arg_1, arg_1)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, var_2.x, 59961u, 43074u), vec4<u32>(59346u, var_2.x, 24570u, 26622u)) | vec4<u32>(arg_1, 0u, arg_1, 4294967295u)), ~min(firstTrailingBit(vec4<u32>(4294967295u, 58023u, arg_1, var_2.x)), min(vec4<u32>(var_2.x, arg_1, 0u, arg_1), vec4<u32>(arg_1, 0u, arg_1, var_2.x))), !(!select(arg_2, arg_2, true)));
    return Struct_2(1058f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-238f, 1001f), vec2<f32>(-454f, 1273f), arg_2.yy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1427f, 1000f)), false)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-393f, -838f))))), arg_2.yw, Struct_1(max(1i, -30764i)), !func_1().x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(171f));
    var var_1 = !(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 0i, -39831i, u_input.a.x), -vec4<i32>(1204i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 2147483647i), countOneBits(u_input.a.x), firstLeadingBit(15571i), u_input.a.x)) <= -2147483647i);
    let var_2 = func_4(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.a.x, 1i, 19921i), vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<bool>(true, false, false)), vec3<i32>(u_input.a.x, -1i, u_input.a.x)), ~max(vec3<i32>(-16030i, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), 20590u, !func_1());
    let var_3 = var_2;
    var_1 = !var_3.e;
    var var_4 = _wgslsmith_f_op_f32(select(var_3.a, func_4(func_4(Struct_1(u_input.a.x), ~1u, vec4<bool>(true, all(var_3.c), 236f >= var_3.b.x, true)).d, _wgslsmith_mult_u32(1u, ~1u), select(vec4<bool>(var_3.e, select(true, var_3.e, true), true, false), vec4<bool>(true, all(vec3<bool>(var_2.c.x, true, var_3.c.x)), var_2.c.x, all(vec4<bool>(var_3.e, var_3.e, false, var_2.e))), !(!vec4<bool>(true, false, true, var_3.e)))).a, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) < -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-667f * 1959f), _wgslsmith_f_op_f32(-453f * _wgslsmith_f_op_f32(sign(var_0))))), var_3.b.x, true)));
}

