struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(arg_3.b.x + _wgslsmith_f_op_f32(-arg_3.b.x));
    let var_1 = 3028u ^ ~_wgslsmith_dot_vec4_u32(arg_3.a.a, max(arg_3.a.a, vec4<u32>(1u, 1u, 0u, u_input.b)));
    global0 = 19868u;
    var var_2 = Struct_1(arg_3.a.a);
    var_0 = 425f;
    return _wgslsmith_f_op_f32(-arg_3.b.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = vec2<i32>(~(-(~(-23139i))), firstLeadingBit(abs(0i >> (~u_input.a.x % 32u))));
    let var_1 = -307f;
    global0 = _wgslsmith_mod_u32(~0u, _wgslsmith_div_u32(4294967295u, arg_1.a.x));
    var var_2 = Struct_2(arg_1, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(0u, var_0, arg_1.a.zyx, Struct_2(Struct_1(vec4<u32>(337u, u_input.c, arg_1.a.x, arg_1.a.x)), vec2<f32>(var_1, var_1)))) - _wgslsmith_f_op_f32(var_1 - 530f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + var_1) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_3 = select(select(vec3<bool>(false, true, false), vec3<bool>(false | all(vec2<bool>(false, false)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))), true), !(!all(vec2<bool>(true, false)))), select(select(vec3<bool>(true, any(vec2<bool>(true, false)), false), vec3<bool>(true, true, true), true), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), any(vec4<bool>(false, true, true, true))), false), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return var_3.yx;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> vec2<f32> {
    global0 = 0u;
    var var_0 = select(func_2(1f, Struct_1(_wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_1, 33144u, u_input.c, arg_1), vec4<u32>(21630u, arg_1, u_input.a.x, arg_1), arg_0), countOneBits(vec4<u32>(u_input.a.x, arg_2.x, arg_2.x, arg_2.x))))), vec2<bool>(!all(!vec2<bool>(arg_0, false)), !arg_0), func_2(_wgslsmith_f_op_f32(func_3(4294967295u, ~vec2<i32>(2147483647i, arg_3) & vec2<i32>(1i, 1i), countOneBits(vec3<u32>(37748u, arg_1, 0u)), Struct_2(Struct_1(vec4<u32>(arg_2.x, 1382u, 4294967295u, 4294967295u)), vec2<f32>(1f, 1f)))), Struct_1(abs(vec4<u32>(37545u, 17266u, 139208u, arg_2.x)) >> (firstTrailingBit(vec4<u32>(u_input.b, arg_2.x, u_input.b, arg_1)) % vec4<u32>(32u)))));
    var_0 = vec2<bool>(any(vec2<bool>(true, false)), true);
    var var_1 = vec2<bool>(arg_0, select(min(select(arg_3, 34997i, arg_0), 0i), -26983i, false) == _wgslsmith_clamp_i32(-15540i, _wgslsmith_mod_i32(-2147483647i, arg_3) ^ abs(arg_3), arg_3));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -626f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(191f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-458f, 804f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2171f, -1691f) + vec2<f32>(1241f, 2337f)))) * _wgslsmith_f_op_vec2_f32(func_1(any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(23831u, 45340u, 33170u), vec3<u32>(u_input.b, 1u, u_input.b)) % 32u), firstTrailingBit(~vec2<u32>(u_input.a.x, 4294967295u)), 51850i))));
    global0 = ~(~(~(~(u_input.c >> (1451u % 32u)))));
    global0 = _wgslsmith_clamp_u32((~abs(u_input.a.x) >> (_wgslsmith_dot_vec2_u32(u_input.a, firstTrailingBit(vec2<u32>(19393u, 4294967295u))) % 32u)) << (_wgslsmith_sub_u32(u_input.c, 1u) % 32u), 4294967295u | ~_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(66339u, u_input.c), u_input.a), 1188u), ~92809u);
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    var var_3 = Struct_2(Struct_1(vec4<u32>(max(u_input.a.x, u_input.a.x), ~u_input.a.x, u_input.c, ~(~u_input.a.x))), _wgslsmith_f_op_vec2_f32(func_1(true & (-1216f <= var_0.x), 0u, ~vec2<u32>(~u_input.c, ~4294967295u), -(~(~20014i)))));
    global0 = var_3.a.a.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, -2803f, var_2) - vec3<f32>(var_3.b.x, -415f, -555f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -658f, var_3.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1340f, var_0.x, var_0.x)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), func_2(_wgslsmith_f_op_f32(min(var_2, var_2)), Struct_1(var_3.a.a)).x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_mult_i32(max(firstLeadingBit(-7843i), 1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -19649i), vec2<i32>(46070i, 0i))), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(44679i, -1i, 1i, 0i) >> (vec4<u32>(49032u, u_input.b, var_3.a.a.x, 4294967295u) % vec4<u32>(32u)), min(vec4<i32>(1i, -6027i, 0i, -1i), vec4<i32>(0i, -1i, -1i, 0i))))));
}

