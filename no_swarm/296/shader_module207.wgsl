struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = -1683f;
    return ~66721u;
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_1(u_input.b.x);
    var var_1 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), false, any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, true)))), !vec4<bool>(true, false, true, any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, false), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, select(true, false, true), true))));
    var_1 = any(select(select(vec2<bool>(select(true, false, true), any(vec4<bool>(false, false, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false)), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_1 = any(vec2<bool>(all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false)), true));
    var_1 = !all(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return min(vec4<u32>(1u, _wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_div_u32(1u, func_2(vec4<i32>(-2147483647i, var_0.a, -23479i, 1i), vec2<f32>(arg_0, arg_0), vec4<i32>(-26136i, var_0.a, u_input.b.x, var_0.a)))), ~1u, 1u), select(vec4<u32>(28695u, func_2(countOneBits(vec4<i32>(1i, u_input.b.x, -11465i, 0i)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, -322f), vec2<f32>(arg_0, arg_0))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, -35963i, u_input.a.x, -61652i), vec4<i32>(1i, u_input.a.x, var_0.a, 1i), vec4<i32>(2789i, 44769i, u_input.b.x, 1i))), countOneBits(_wgslsmith_div_u32(54560u, 1u)), ~30407u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(2845u, 1u, 0u), vec3<u32>(1u, 0u, 1u)), 1u, firstLeadingBit(~7856u), 1u), vec4<bool>(false, true, true, !all(vec3<bool>(false, true, true)))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<f32>) -> bool {
    var var_0 = vec4<u32>(func_2(-(vec4<i32>(-2147483647i, u_input.a.x, arg_1.b.x, 30216i) & vec4<i32>(u_input.b.x, 24121i, 2147483647i, 23630i)) ^ vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, arg_1.b.x), _wgslsmith_mult_i32(arg_1.b.x, arg_1.b.x), u_input.a.x, _wgslsmith_mult_i32(arg_1.b.x, u_input.a.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(230f)), -283f), _wgslsmith_f_op_f32(-1000f * arg_3.x)), -(~vec4<i32>(u_input.a.x, -30410i, arg_1.b.x, 16622i)) & ~vec4<i32>(1i, arg_1.b.x, u_input.a.x, -2147483647i)), arg_2.x, 29758u, arg_2.x);
    var_0 = select(min(vec4<u32>(arg_1.a.x, 1u, 19819u, max(1u, arg_2.x)), select(firstLeadingBit(vec4<u32>(var_0.x, arg_2.x, 1u, 74477u)), vec4<u32>(54830u, arg_1.a.x, arg_2.x, arg_1.a.x), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, true, true, arg_0)))), func_3(-339f), true) << (_wgslsmith_add_vec4_u32(~(~select(vec4<u32>(var_0.x, 4294967295u, var_0.x, 29411u), vec4<u32>(arg_2.x, 31095u, arg_2.x, 1u), vec4<bool>(arg_0, arg_0, false, false))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.a.x, 47433u, arg_2.x, arg_2.x), vec4<u32>(arg_1.a.x, 49388u, 37663u, var_0.x))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-987f, _wgslsmith_f_op_f32(min(984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-738f, arg_3.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2013f, _wgslsmith_f_op_f32(floor(-569f))), -465f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2617f - _wgslsmith_f_op_f32(round(-1608f))) * arg_3.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(min(arg_3.x, -1000f)), 2243f, -176f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(743f, 635f, arg_3.x, arg_3.x))) * vec4<f32>(arg_3.x, arg_3.x, arg_3.x, -253f)) * vec4<f32>(_wgslsmith_div_f32(120f, 147f), -146f, -3270f, _wgslsmith_f_op_f32(476f * arg_3.x)))));
    var var_2 = Struct_3(arg_3.x, Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(~50788u, _wgslsmith_mod_u32(4294967295u, arg_2.x)), ~arg_1.a), arg_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_3.x)), _wgslsmith_f_op_f32(-565f * arg_3.x), var_1.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3 * vec3<f32>(var_1.x, -492f, var_1.x))))), select(vec4<bool>(any(vec2<bool>(arg_0, arg_0)), false, !arg_0, arg_0), !vec4<bool>(!arg_0, false, arg_0, arg_0 || true), !any(vec2<bool>(arg_0, arg_0))), all(select(vec2<bool>(true, !arg_0), !vec2<bool>(arg_0, arg_0), all(!vec4<bool>(arg_0, false, true, false)))));
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(-1753i << (_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, arg_2.x), 1289u) % 32u), -1i), abs(var_2.b.b.x), -2147483647i);
    return arg_1.a.x != var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!func_1(select(true, true, false), Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(21423u, 72997u)), _wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(2147483647i, u_input.b.x))), vec2<u32>(5791u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(410f, 849f, 259f)))), -_wgslsmith_div_i32(countOneBits(u_input.a.x), 19373i) < ~55268i, all(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)));
    let var_1 = Struct_1(_wgslsmith_add_i32(countOneBits(-20098i), 2229i));
    var var_2 = vec2<i32>(_wgslsmith_clamp_i32(-var_1.a, select(1i, var_1.a & -2147483647i, var_0.x), _wgslsmith_mult_i32(var_1.a ^ min(-1i, -21912i), max(_wgslsmith_mod_i32(var_1.a, u_input.a.x), -1i))), -53277i);
    var_0 = select(vec3<bool>(var_0.x, true, any(vec4<bool>(var_0.x, 43017i < var_2.x, true & var_0.x, var_0.x))), select(!select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, var_0.x, false), true), select(select(vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, true), true)), vec3<bool>(true, true, var_0.x), !select(vec3<bool>(false, var_0.x, true), vec3<bool>(false, false, var_0.x), var_0.x)), !select(vec3<bool>(true, true, var_0.x), !vec3<bool>(true, var_0.x, true), true)), var_0.x);
    var_2 = max(-abs(u_input.b), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(firstLeadingBit(u_input.b.x), 1i)), _wgslsmith_clamp_vec2_i32(abs(reverseBits(u_input.b)), vec2<i32>(1i, u_input.b.x), firstTrailingBit(vec2<i32>(-34108i, var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1000f)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-107f, 126f))), max(vec3<u32>(~1u, ~(~9307u), ~(~41795u)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(18115u, 1u, 4294967295u)), countOneBits(vec3<u32>(4002u, 4153u, 32961u)), max(min(vec3<u32>(24665u, 4294967295u, 1u), vec3<u32>(88082u, 4294967295u, 57129u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(88997u, 1u, 1u), vec3<u32>(82972u, 45832u, 26982u), vec3<u32>(20178u, 45474u, 71708u))))), func_3(-1000f).xyz);
}

