struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 25>;

var<private> global2: array<Struct_1, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global0 = !any(select(select(vec4<bool>(arg_0, arg_0, false, true), !vec4<bool>(arg_0, true, true, true), !vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !vec4<bool>(false, arg_0, arg_0, true), _wgslsmith_f_op_f32(floor(arg_1.b.x)) >= 1120f));
    let var_0 = !select(vec2<bool>(true, true), !(!(!vec2<bool>(arg_0, true))), all(vec3<bool>(false, arg_0, -1i <= arg_1.d.x)));
    global2 = array<Struct_1, 13>();
    return u_input.c.x;
}

fn func_2(arg_0: i32) -> vec3<i32> {
    global1 = array<vec2<u32>, 25>();
    var var_0 = firstTrailingBit(-_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, arg_0, 2147483647i) >> (u_input.a.ywz % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, 8528i), firstTrailingBit(vec3<i32>(arg_0, arg_0, arg_0)))));
    var var_1 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), u_input.a.x, u_input.a.x), 1u, ~1u, func_3(false || select(true, true, true), global2[_wgslsmith_index_u32(u_input.c.x, 13u)]));
    let var_2 = 9572i ^ arg_0;
    let var_3 = Struct_1(vec2<i32>(arg_0, var_2), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(2534f, 945f, -379f, 1439f), vec4<f32>(-1352f, 1000f, -1000f, 360f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(405f, -1197f, -877f, -198f))))), vec4<f32>(1325f, _wgslsmith_f_op_f32(-298f + -200f), -319f, _wgslsmith_f_op_f32(969f * -1000f)), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(363f - -379f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1412f))), -1296f, _wgslsmith_f_op_f32(f32(-1f) * -498f))), vec3<i32>(-1i, var_2, 1i & -var_2) & _wgslsmith_add_vec3_i32(-abs(vec3<i32>(1i, -2997i, var_2)), firstLeadingBit(-vec3<i32>(var_0.x, var_0.x, -13862i))), max(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, var_0.x), vec3<i32>(arg_0, arg_0, arg_0)) & _wgslsmith_add_vec3_i32(vec3<i32>(7234i, -2147483647i, 0i), vec3<i32>(arg_0, arg_0, var_0.x)), _wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0, var_2, var_0.x), vec3<i32>(12941i, -6928i, -1i) >> (var_1.yxy % vec3<u32>(32u)))), _wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, -1i, arg_0), vec3<i32>(-57076i, arg_0, arg_0)), max(vec3<i32>(2147483647i, 51428i, 0i), vec3<i32>(7316i, -178i, 1i)) & vec3<i32>(-26032i, -40451i, var_2))));
    return vec3<i32>(arg_0, _wgslsmith_dot_vec3_i32(var_3.d, vec3<i32>(~(~var_2), _wgslsmith_clamp_i32(arg_0, arg_0, var_0.x) << ((u_input.d | var_1.x) % 32u), 0i)), arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec2<u32>, 25>();
    var var_0 = 28554u;
    let var_1 = ~vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(i32(-1i) * -8872i, 46186i), _wgslsmith_div_i32(arg_2.a.x, arg_2.a.x) >> (0u % 32u)), -1i);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(arg_0.b.www, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.b.x, -653f), -1303f))), _wgslsmith_f_op_f32(-arg_0.b.x), -333f)));
    let var_3 = u_input.c.xzw;
    return global2[_wgslsmith_index_u32(u_input.b, 13u)];
}

fn func_1() -> vec2<u32> {
    var var_0 = global2[_wgslsmith_index_u32(1u, 13u)];
    var_0 = func_4(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(u_input.c.x), u_input.b, _wgslsmith_add_u32(15103u, 50814u)), ~u_input.c.xxz)), 13u)], !(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true))), Struct_1(var_0.c.zx, vec4<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)) + -541f), _wgslsmith_f_op_f32(abs(-1032f))), _wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-4823i, -17714i, var_0.d.x), var_0.c), func_2(_wgslsmith_mod_i32(0i, -2147483647i))), select(var_0.c, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.d.x, var_0.a.x, 12863i), vec3<i32>(16907i, 1i, var_0.d.x) | vec3<i32>(14010i, 4699i, -2147483647i)), true)));
    let var_1 = func_4(func_4(global2[_wgslsmith_index_u32(abs(func_3(false, global2[_wgslsmith_index_u32(1u, 13u)])) << (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.d, 1u, u_input.c.x, u_input.c.x) >> (vec4<u32>(u_input.a.x, 1u, u_input.b, 31087u) % vec4<u32>(32u))) % 32u), 13u)], select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, 13472u < u_input.d, var_0.b.x >= var_0.b.x), _wgslsmith_f_op_f32(1257f * var_0.b.x) > _wgslsmith_f_op_f32(abs(1913f))), func_4(global2[_wgslsmith_index_u32(func_3(true, Struct_1(vec2<i32>(-2147483647i, 1i), var_0.b, var_0.d, var_0.c)), 13u)], vec4<bool>(false, any(vec2<bool>(false, false)), any(vec2<bool>(false, true)), -1i <= var_0.a.x), Struct_1(min(var_0.d.xx, var_0.a), _wgslsmith_f_op_vec4_f32(var_0.b + var_0.b), var_0.d, var_0.c))), vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(~4294967295u, 13u)]);
    let var_2 = true;
    let var_3 = global2[_wgslsmith_index_u32(47422u, 13u)];
    return global1[_wgslsmith_index_u32(u_input.d, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(~func_1(), firstTrailingBit(~global1[_wgslsmith_index_u32(u_input.c.x, 25u)])) << (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.wwx, ~vec3<u32>(u_input.d, u_input.b, u_input.c.x)), vec3<u32>(0u >> (u_input.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(27149u, 1u, u_input.c.x, 73612u), vec4<u32>(1u, u_input.b, 1u, 143448u)), 0u)) % 32u)), 13u)];
    let var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    global0 = !(_wgslsmith_f_op_f32(f32(-1f) * -260f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_0.b.x))));
    let var_2 = var_0.d;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * -721f) * _wgslsmith_f_op_f32(var_0.b.x - var_1)))), _wgslsmith_f_op_f32(var_1 * 1000f)) + vec2<f32>(285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) * var_0.b.x))));
    let var_4 = any(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), u_input.a.x != u_input.d, true));
    var var_5 = func_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 13u)], select(select(vec4<bool>(any(vec2<bool>(var_4, true)), true, var_4, var_3.x > -850f), select(!vec4<bool>(var_4, true, var_4, var_4), select(vec4<bool>(var_4, var_4, var_4, var_4), vec4<bool>(false, var_4, var_4, var_4), var_4), select(vec4<bool>(var_4, var_4, var_4, true), vec4<bool>(true, var_4, true, true), var_4)), !vec4<bool>(var_4, false, false, true)), vec4<bool>(!var_4, all(!vec4<bool>(var_4, true, false, var_4)), true, !any(vec4<bool>(false, var_4, true, true))), var_4), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(min(69984u, 965u), 25u)], select(abs(vec2<u32>(0u, u_input.c.x)), abs(vec2<u32>(u_input.d, 1u)), var_4)), 13u)]);
    let var_6 = _wgslsmith_div_vec2_f32(var_0.b.xw, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b.x) + 633f), var_1), var_0.b.zw)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zxw | u_input.c.xww, ~var_5.c.x, u_input.c.zz, ~abs(vec3<i32>(select(var_5.c.x, 0i, var_4), -2147483647i, var_5.d.x << (u_input.b % 32u))));
}

