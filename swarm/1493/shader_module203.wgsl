struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<i32, 15>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = Struct_1(arg_2.a);
    let var_1 = Struct_1(arg_2.a);
    var var_2 = Struct_1(arg_0.a);
    var var_3 = ~select(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 1u), _wgslsmith_div_u32(10300u, 7077u)), firstLeadingBit(4294967295u), arg_2.a.x) << (25855u % 32u);
    var_2 = var_1;
    return vec3<bool>(true, select(any(!select(vec4<bool>(arg_2.a.x, arg_1, true, true), vec4<bool>(arg_1, false, arg_2.a.x, true), vec4<bool>(false, arg_2.a.x, var_1.a.x, arg_2.a.x))), true, arg_2.a.x), var_0.a.x || true);
}

fn func_2(arg_0: bool) -> vec3<u32> {
    global0 = array<i32, 15>();
    let var_0 = Struct_1(!select(func_3(Struct_1(vec3<bool>(arg_0, arg_0, false)), arg_0, Struct_1(vec3<bool>(arg_0, true, arg_0)), _wgslsmith_sub_vec2_i32(u_input.a.xx, vec2<i32>(29736i, -11826i))), !(!vec3<bool>(arg_0, arg_0, arg_0)), arg_0));
    global0 = array<i32, 15>();
    var var_1 = _wgslsmith_add_u32(firstLeadingBit(abs(~countOneBits(1u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~56238u, 1u, firstTrailingBit(0u))));
    var var_2 = Struct_1(vec3<bool>(true, any(!(!var_0.a)), var_0.a.x));
    return vec3<u32>(~select(1u, countOneBits(_wgslsmith_mod_u32(0u, 4668u)), false), 1u << (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(23328u, 0u, 0u), vec3<u32>(40018u, 18192u, 41120u), vec3<u32>(0u, 4294967295u, 1u)), vec3<u32>(58953u, 1u, 20664u)), ~(~vec3<u32>(4294967295u, 52550u, 4294967295u))) % 32u), max(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(16809u, 23779u, 23985u)), _wgslsmith_div_u32(1u, 1u)) >> (_wgslsmith_clamp_u32(9533u, ~29574u, 82391u >> (select(52425u, 0u, false) % 32u)) % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), func_2(true)), _wgslsmith_div_vec3_u32(~vec3<u32>(76579u, 10008u, 0u), vec3<u32>(1u, 1u, 1u)), true) << (~(~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), !func_3(arg_0, true, arg_0, u_input.a.xy)), func_2(true)));
    global0 = array<i32, 15>();
    var var_1 = ~u_input.a.ywz;
    var var_2 = select(select(select(select(vec4<bool>(arg_0.a.x, false, true, true), select(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), true), true), vec4<bool>(true, true, true, true), true), select(select(!vec4<bool>(true, arg_0.a.x, true, arg_0.a.x), vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x)), !(!vec4<bool>(false, true, arg_0.a.x, arg_0.a.x)), arg_0.a.x), !select(select(vec4<bool>(false, arg_0.a.x, true, true), vec4<bool>(arg_0.a.x, true, false, true), arg_0.a.x), select(vec4<bool>(true, arg_0.a.x, arg_0.a.x, false), vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(true, arg_0.a.x, true, arg_0.a.x)), !vec4<bool>(false, false, arg_0.a.x, true))), vec4<bool>(true, arg_0.a.x, any(arg_0.a.xy), !(arg_0.a.x || !arg_0.a.x)), !vec4<bool>(!arg_0.a.x, false, arg_0.a.x, arg_0.a.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(200f, arg_1, -303f), vec3<f32>(arg_1, 1584f, -1186f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-824f, -1000f, -2757f), vec3<f32>(arg_1, arg_1, -289f))) * vec3<f32>(638f, -779f, arg_1)) - vec3<f32>(_wgslsmith_div_f32(-847f, arg_1), 607f, _wgslsmith_f_op_f32(trunc(-1877f))))) * vec3<f32>(-1559f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2855f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), arg_1)));
    return 29716u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 15>();
    let var_0 = _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(1u, 4294967295u, 40839u, 8833u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(63000u, 16493u, 1u), vec3<u32>(40154u, 59986u, 49441u)), 56668u, firstLeadingBit(23896u), ~0u))), vec4<u32>(22849u, func_1(Struct_1(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-332f - 1689f))), 4294967295u, countOneBits(max(~1u, 1u))));
    var var_1 = countOneBits(20428u);
    global0 = array<i32, 15>();
    var var_2 = select(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a.x << (18548u % 32u), -1i, u_input.a.x), -u_input.a.zyz), abs(u_input.a.wxy), !vec3<bool>(false, true, (var_0.x | var_0.x) > _wgslsmith_add_u32(16525u, var_0.x)));
    var var_3 = var_0.x;
    var_1 = 39516u;
    global0 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, var_2.x, var_2.x, global0[_wgslsmith_index_u32(var_0.x, 15u)]), u_input.a)), abs(_wgslsmith_mult_i32(-u_input.a.x, firstLeadingBit(u_input.a.x)))));
}

