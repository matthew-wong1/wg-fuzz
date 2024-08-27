struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(148f, -1217f))))), _wgslsmith_f_op_f32(1020f + _wgslsmith_f_op_f32(f32(-1f) * -493f))), -(~(~(-vec3<i32>(u_input.a, u_input.c, u_input.a)))), u_input.b >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~0u, u_input.b.x, 0u), select(u_input.b, max(u_input.b, u_input.b), true)) % vec3<u32>(32u)));
    let var_1 = -select(var_0.b, -vec3<i32>(var_0.b.x, -u_input.a, -24798i >> (u_input.b.x % 32u)), !vec3<bool>(true, global0.x, true));
    var var_2 = u_input.a << (var_0.c.x % 32u);
    var var_3 = i32(-1i) * -42080i;
    var_3 = max(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x >> (0u % 32u), var_1.x | -1i, abs(-6183i), -11410i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.x, -774i, 0i, 1i), min(vec4<i32>(u_input.a, -2147483647i, -45216i, -1i), vec4<i32>(-2147483647i, var_0.b.x, var_1.x, 36111i))))) >> ((4294967295u ^ (~_wgslsmith_mult_u32(0u, u_input.b.x) | ~(var_0.c.x | 4294967295u))) % 32u);
    return var_1;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: i32) -> bool {
    let var_0 = 0u;
    return all(vec4<bool>(global0.x, any(select(!vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(false, global0.x, true, global0.x))), select(true, all(!vec4<bool>(true, global0.x, true, false)), all(vec3<bool>(false, global0.x, false))), true));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>) -> f32 {
    global0 = select(select(vec4<bool>(all(!vec4<bool>(global0.x, true, global0.x, global0.x)), !any(global0.wyw), true, any(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(true, false, global0.x, true), global0.x))), vec4<bool>(true, global0.x, global0.x, all(vec4<bool>(false, true, global0.x, global0.x))), select(vec4<bool>(any(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, false, false, global0.x)), global0.x, all(vec2<bool>(true, global0.x))), vec4<bool>(u_input.c <= u_input.a, true, true, func_3(u_input.c, arg_1.x, u_input.b.x, -16629i)), select(!vec4<bool>(true, global0.x, global0.x, false), !vec4<bool>(global0.x, global0.x, global0.x, false), global0.x))), !(!select(vec4<bool>(global0.x, true, global0.x, false), select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, false, false, global0.x), global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(true, false, false, global0.x)))), !global0.x);
    var var_0 = ~_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c, u_input.c), -10300i)), u_input.a);
    var var_1 = -select(vec4<i32>(abs(arg_0.b.x), 2587i, _wgslsmith_dot_vec2_i32(arg_0.b.zx << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), arg_0.b.yz), _wgslsmith_mult_i32(firstLeadingBit(u_input.c), abs(17100i))), -vec4<i32>(-18680i, max(arg_0.b.x, u_input.c), i32(-1i) * -1i, u_input.c & arg_0.b.x), false && all(global0.wy));
    var var_2 = vec4<bool>((u_input.a >> (arg_0.c.x % 32u)) >= firstLeadingBit(arg_0.b.x), !(func_3(_wgslsmith_sub_i32(var_1.x, 505i), -566f, ~arg_0.c.x, arg_0.b.x) | true), false, global0.x);
    let var_3 = Struct_5(all(vec3<bool>(true, !global0.x, true)));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(global0.x, _wgslsmith_mult_i32(u_input.c ^ ~13592i, -abs(u_input.c)) <= -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-54414i, u_input.c, ~u_input.a), _wgslsmith_mod_vec3_i32(func_1(), vec3<i32>(u_input.c, u_input.c, -1i) << (vec3<u32>(u_input.b.x, 0u, u_input.b.x) % vec3<u32>(32u)))) == u_input.a, !global0.x);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -184f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(638f, -421f)), -546f)))))));
    global0 = vec4<bool>(global0.x, true, !(true && select(true, any(vec3<bool>(global0.x, false, false)), any(global0.yz))), !global0.x);
    let var_1 = _wgslsmith_add_i32(u_input.c, ~(u_input.a >> (~_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u)));
    var var_2 = select(select(select(!global0.www, global0.yyz, vec3<bool>(true, true & global0.x, select(global0.x, true, true))), global0.ywx, !vec3<bool>(true, global0.x, global0.x)), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(vec2<f32>(-627f, 990f), vec3<i32>(-40518i, u_input.c, var_1), u_input.b), vec4<f32>(-552f, 1133f, -1785f, 721f)))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-688f - -860f), _wgslsmith_f_op_f32(f32(-1f) * -347f))), global0.x, true), !global0.xxx);
    global0 = !vec4<bool>(global0.x, ~_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.b.x) == ~reverseBits(43521u), !(true & global0.x), all(var_2.xx));
    var var_3 = Struct_5(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(select(abs(firstLeadingBit(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x))), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> ((vec4<u32>(u_input.b.x, u_input.b.x, 43740u, 0u) | vec4<u32>(4294967295u, 0u, 0u, 1u)) % vec4<u32>(32u)), !var_2.x), firstTrailingBit(vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.b.x) | ~vec4<u32>(u_input.b.x, 6338u, 44943u, 13009u))), ~select(-vec4<i32>(u_input.a, 0i, var_1, 1447i), vec4<i32>(~var_1, ~var_1, var_1, -2147483647i), _wgslsmith_f_op_f32(462f * -462f) >= _wgslsmith_f_op_f32(round(653f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 390f, 1420f, -896f), vec4<f32>(-1270f, -1471f, 1723f, -2522f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2552f, 345f, 1871f, 1381f), vec4<f32>(-1255f, 844f, -204f, -942f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1220f, -378f, 1417f, 1168f) * vec4<f32>(1089f, 1555f, 865f, -1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1332f, -352f, -1845f, -1794f)), vec4<f32>(1f, 1f, 1f, 1f)), vec4<bool>(func_3(-2147483647i, 192f, u_input.b.x, u_input.a), var_3.a || false, true, global0.x & true)))));
}

