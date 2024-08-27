struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false));

var<private> global1: Struct_5 = Struct_5(Struct_1(vec3<i32>(-11598i, -41346i, 0i), vec3<f32>(864f, -1305f, -805f), 1i), 44761u);

var<private> global2: Struct_5 = Struct_5(Struct_1(vec3<i32>(-32014i, 26324i, -1i), vec3<f32>(1993f, -382f, 2521f), 28145i), 35614u);

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> i32 {
    let var_0 = any(!select(global3.yy, global3.xx, !vec2<bool>(true, global3.x)));
    var var_1 = 0u;
    var var_2 = global0[_wgslsmith_index_u32(4371u, 21u)];
    var var_3 = global2.a.b.x;
    let var_4 = var_2.xxy;
    return _wgslsmith_div_i32(-51866i, global2.a.a.x);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: f32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.b.yx) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.b.x, -992f) + vec2<f32>(global1.a.b.x, -352f))) - global1.a.b.xy)), vec2<i32>(20959i, 41683i) << (countOneBits(abs(~vec2<u32>(0u, global2.b))) % vec2<u32>(32u)));
    global0 = array<vec4<bool>, 21>();
    let var_1 = Struct_5(global2.a, _wgslsmith_sub_u32(1u, 1u));
    let var_2 = !global3.x;
    let var_3 = any(global0[_wgslsmith_index_u32(var_1.b << (~3390u % 32u), 21u)]);
    return _wgslsmith_add_i32(-2147483647i, ~var_0.b.x);
}

fn func_1() -> vec3<f32> {
    var var_0 = -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, func_2(), _wgslsmith_mult_i32(_wgslsmith_div_i32(global1.a.a.x, 1i), func_3(Struct_4(Struct_2(global1.a.b.zz, global2.a.a.zz), global1.a, global2.a, global2.a.b), Struct_5(global1.a, 0u), -1048f)), _wgslsmith_sub_i32(-u_input.a.x, 1i)), _wgslsmith_add_vec4_i32(~u_input.a, select(u_input.a, u_input.a, global0[_wgslsmith_index_u32(global1.b, 21u)]) ^ vec4<i32>(global1.a.a.x, global2.a.c, -2147483647i, u_input.a.x)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(global1.a.b.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1301f, global1.a.b.x), _wgslsmith_f_op_f32(abs(global2.a.b.x))))))), global2.a.b.x, global2.a.b.x, global1.a.b.x);
    global2 = Struct_5(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -18755i) ^ vec3<i32>(2147483647i, 12780i, 0i), vec3<i32>(-1i, global2.a.a.x, -36570i)) | firstTrailingBit(firstLeadingBit(vec3<i32>(2147483647i, 0i, 20365i))), _wgslsmith_f_op_vec3_f32(floor(global2.a.b)), firstTrailingBit(func_3(Struct_4(Struct_2(vec2<f32>(global2.a.b.x, 1000f), vec2<i32>(global2.a.a.x, -37971i)), Struct_1(vec3<i32>(global2.a.c, -2147483647i, u_input.a.x), global2.a.b, 0i), Struct_1(global2.a.a, global2.a.b, 0i), vec3<f32>(var_1.x, 1967f, global1.a.b.x)), Struct_5(Struct_1(vec3<i32>(u_input.a.x, global1.a.a.x, global2.a.a.x), vec3<f32>(749f, 624f, var_1.x), u_input.a.x), global1.b), -135f) >> (global2.b % 32u))), 49388u);
    global1 = Struct_5(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(9986i, 0i, -61025i), global1.a.a << (~vec3<u32>(0u, 1u, 0u) % vec3<u32>(32u))), var_1.zyy, select(u_input.a.x, -u_input.a.x | u_input.a.x, true)), select(~(~reverseBits(global1.b)), firstTrailingBit(81326u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(11123u, 32327u, 6228u), vec3<u32>(31854u, global2.b, global1.b))), all(global0[_wgslsmith_index_u32(countOneBits(max(0u, 4294967295u)), 21u)])));
    return vec3<f32>(_wgslsmith_f_op_f32(sign(-505f)), global1.a.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b.x + _wgslsmith_f_op_f32(var_1.x + 577f))), _wgslsmith_f_op_f32(-var_1.x), global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-139f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global2.a.b.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1994f)), _wgslsmith_f_op_f32(exp2(global2.a.b.x)));
    var var_1 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(firstTrailingBit(2147483647i), global2.a.c, 2147483647i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, u_input.a.x)), firstLeadingBit(vec2<i32>(2147483647i, -29822i))))), ~firstLeadingBit(vec4<i32>(global1.a.c, 0i, 0i, u_input.a.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(global2.b, global2.b, global2.b, 0u), vec4<u32>(59616u, 7524u, global1.b, 5115u)) % vec4<u32>(32u))));
    var var_2 = true;
    var_1 = u_input.a;
    var var_3 = Struct_3(vec2<f32>(1704f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(min(global1.a.b.x, _wgslsmith_f_op_f32(-global1.a.b.x))))), global2.a);
    var_1 = vec4<i32>(-_wgslsmith_mod_i32(reverseBits(global1.a.c >> (global1.b % 32u)), global2.a.a.x), ~_wgslsmith_mod_i32(var_1.x & global1.a.c, global2.a.c), 1i, var_1.x >> (global1.b % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(2147483647i, -2147483647i, countOneBits(global1.a.c)) << (_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.b, global1.b, global1.b), vec3<u32>(46127u, 20622u, global1.b)) << (vec3<u32>(0u, global2.b, global1.b) % vec3<u32>(32u)), ~(~vec3<u32>(global2.b, 1u, global2.b))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(func_1()), ~((vec4<u32>(global2.b, global1.b, 37754u, 22197u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b, 0u, global2.b, 19787u), vec4<u32>(global2.b, global2.b, 5652u, 1u), vec4<u32>(78523u, 0u, 41394u, global2.b)) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(1u, global2.b, 38187u, global2.b)), max(vec4<u32>(global2.b, global2.b, 0u, global1.b), vec4<u32>(global1.b, global1.b, global1.b, global2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_3.b.b.x * _wgslsmith_f_op_vec3_f32(func_1()).x))));
}

