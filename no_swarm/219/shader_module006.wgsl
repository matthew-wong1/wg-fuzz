struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec4<i32>, 25>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<bool>) -> i32 {
    global1 = array<vec4<i32>, 25>();
    global0 = u_input.c.x;
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(~u_input.a.x, -(~u_input.b) | ~(-u_input.c.x)), _wgslsmith_mod_i32(~(-1i), ~0i), _wgslsmith_sub_i32(-min(u_input.b, u_input.c.x), u_input.a.x ^ u_input.a.x) | 31115i);
    var var_1 = ~0u;
    var var_2 = 16530u;
    return var_0.x << (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_0.wz, ~vec2<u32>(arg_1.c.a.x, 24763u)), ~arg_1.d.b.x) % 32u);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1280f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1944f, -148f)), 1f), _wgslsmith_f_op_f32(step(-1110f, _wgslsmith_f_op_f32(-438f * -448f))), 1f)))));
    var var_1 = var_0.x;
    global0 = 0i >> (firstLeadingBit(~_wgslsmith_mod_u32(~3183u, _wgslsmith_mod_u32(4811u, 4294967295u))) % 32u);
    global0 = _wgslsmith_div_i32(u_input.c.x, 1i);
    global0 = -(~(-53414i));
    return 1i;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global0 = select(~_wgslsmith_mult_i32(~func_2(vec4<u32>(73585u, 0u, 55244u, 0u), Struct_3(vec3<f32>(-641f, -1269f, 715f), false, Struct_2(vec3<u32>(46184u, 65556u, 47964u)), Struct_1(true, vec4<u32>(4294967295u, 67667u, 95976u, 0u))), vec3<bool>(false, false, true)), countOneBits(func_3())), -14281i, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(18115u, 66111u, 17741u, 41978u), vec4<u32>(1u, 11368u, 0u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(37410u, 6512u, 1u, 0u), vec4<u32>(18415u, 2237u, 42705u, 55476u))), ~_wgslsmith_add_u32(26419u, 48346u)) <= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(1u, 21345u, 1u))));
    global0 = ~(-61650i);
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-458f, 853f)), -1000f)), -964f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f)), -1278f), _wgslsmith_f_op_f32(-1f)));
    let var_1 = 2004f;
    global0 = func_2(vec4<u32>(22935u, _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 58307u, 4294967295u, 4294967295u), vec4<u32>(24980u, 4294967295u, 4294967295u, 15824u)), ~0u), ~_wgslsmith_mult_u32(0u, 12157u), ~0u) & ~abs(max(vec4<u32>(4294967295u, 25527u, 1514u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 32274u, 17517u))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1306f, 1000f)))), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), Struct_2(abs(vec3<u32>(1u, 1u, 1u))), Struct_1(!all(vec3<bool>(true, true, true)), abs(vec4<u32>(1u, 1u, 1u, 1u)))), !vec3<bool>(true || all(vec4<bool>(false, true, false, true)), true, !any(vec2<bool>(false, true))));
    return Struct_2(vec3<u32>(0u, 0u, 1u));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = func_1(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-u_input.a.x, ~(-2147483647i))), _wgslsmith_mult_vec2_i32(-firstTrailingBit(vec2<i32>(arg_1.x, 49507i)), select(select(u_input.a.yy, u_input.c.xx, true), ~arg_1.wx, arg_2.x != -110f)), max(~countOneBits(vec2<i32>(arg_1.x, 2147483647i)), ~u_input.c.yy)));
    var var_1 = true;
    let var_2 = _wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(var_0.a, ~vec3<u32>(arg_0.a.x, 4294967295u, 0u))) << (arg_0.a % vec3<u32>(32u)), vec3<u32>(56994u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(arg_0.a.yy, vec2<u32>(63708u, 4294967295u), false), vec2<u32>(var_0.a.x, var_0.a.x) | vec2<u32>(var_0.a.x, arg_0.a.x)), 0u), _wgslsmith_mult_u32(1u, 4128u)), _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(arg_0.a.x, 0u), arg_0.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.a.x, arg_0.a.x), 7245u)), var_0.a));
    var_1 = true;
    var_1 = any(!vec3<bool>(true, select(690f < arg_2.x, any(vec3<bool>(false, true, true)), true), _wgslsmith_f_op_f32(arg_2.x + 597f) == arg_2.x));
    return reverseBits(~33659u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2147483647i;
    global1 = array<vec4<i32>, 25>();
    let var_0 = vec2<bool>(false, any(vec3<bool>(!all(vec4<bool>(false, false, true, true)), true, false)));
    let var_1 = u_input.a.x;
    var var_2 = vec2<u32>(~(~func_4(func_1(vec2<i32>(var_1, var_1)), _wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 25u)], vec4<i32>(var_1, var_1, -20900i, u_input.b)), vec3<f32>(268f, -451f, -1433f))), abs(1u));
    let var_3 = select(!vec4<bool>(true, all(!vec4<bool>(false, var_0.x, false, var_0.x)), var_0.x | (var_2.x >= 4294967295u), false), select(vec4<bool>(true && !var_0.x, !var_0.x, any(vec3<bool>(true, true, true)), var_0.x), vec4<bool>(var_0.x, 0i <= _wgslsmith_sub_i32(var_1, var_1), var_0.x, select(any(vec2<bool>(true, true)), true, !var_0.x)), vec4<bool>(!any(vec3<bool>(false, var_0.x, var_0.x)), all(vec2<bool>(var_0.x, var_0.x)) == var_0.x, var_0.x, any(!vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), any(!(!vec3<bool>(var_0.x, var_0.x, true))) && !all(vec4<bool>(var_0.x, true, true, false)));
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

