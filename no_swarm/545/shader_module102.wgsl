struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(21339u, 7973u, 1115u), 1u, false);

var<private> global1: vec3<u32>;

var<private> global2: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(4294967295u, 4294967295u, 53662u), vec3<u32>(4294967295u, 4294967295u, 10198u), vec3<u32>(1u, 1879u, 1u), vec3<u32>(0u, 45147u, 4294967295u), vec3<u32>(19391u, 51134u, 44798u), vec3<u32>(0u, 51936u, 68669u), vec3<u32>(0u, 4294967295u, 43496u), vec3<u32>(7665u, 77190u, 1u), vec3<u32>(38666u, 6463u, 1u), vec3<u32>(4294967295u, 59312u, 22449u), vec3<u32>(133511u, 4294967295u, 0u), vec3<u32>(18997u, 9349u, 4294967295u), vec3<u32>(21307u, 94989u, 61369u), vec3<u32>(1u, 16018u, 1u), vec3<u32>(23811u, 14882u, 10843u), vec3<u32>(71214u, 1u, 4294967295u), vec3<u32>(4294967295u, 23411u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(15384u, 16189u, 1u), vec3<u32>(0u, 31323u, 59270u), vec3<u32>(49554u, 112961u, 4294967295u));

var<private> global3: Struct_4;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(~global1.x, 23u)], global3.d.wxy), ~(global0.a | vec3<u32>(0u, 1u, 29349u))) >> (countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(21556u, 72135u, 0u) >> (u_input.b.wwx % vec3<u32>(32u)), vec3<u32>(arg_1, global0.a.x, 3804u) ^ global2[_wgslsmith_index_u32(global0.a.x, 23u)])) % vec3<u32>(32u)), _wgslsmith_mult_u32(~global3.d.x, ~0u), any(vec3<bool>(all(vec3<bool>(global0.c, false, global3.c.x)), arg_0, reverseBits(u_input.a.x) < -44046i)));
    var var_1 = select(global3.c, select(select(!select(global3.c, vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, global3.c.x)), select(global3.c, vec2<bool>(var_0.c, var_0.c), global3.c.x), true), select(select(!vec2<bool>(true, var_0.c), select(vec2<bool>(var_0.c, true), global3.c, var_0.c), vec2<bool>(true, true)), vec2<bool>(true, true), global3.c), vec2<bool>(all(vec2<bool>(global0.c, true)), false)), true);
    global0 = Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, ~u_input.c), vec3<u32>(1u, global3.d.x, global0.b) ^ select(global2[_wgslsmith_index_u32(1u, 23u)], u_input.b.yww, vec3<bool>(false, false, global3.c.x))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~global3.d.x, ~62189u), 23u)] | vec3<u32>(countOneBits(1u), 4294967295u, global1.x)), 22142u, true);
    var var_2 = ~_wgslsmith_div_i32(arg_2, ~2147483647i);
    global2 = array<vec3<u32>, 23>();
    return var_0.c;
}

fn func_2() -> Struct_3 {
    var var_0 = -reverseBits(~2147483647i);
    var var_1 = true;
    var var_2 = true || (all(select(select(vec4<bool>(false, global3.c.x, true, true), vec4<bool>(true, false, true, global3.c.x), true), select(vec4<bool>(false, global3.c.x, false, false), vec4<bool>(global3.c.x, global3.c.x, true, global0.c), global0.c), select(vec4<bool>(true, global0.c, true, global0.c), vec4<bool>(true, true, false, false), global3.c.x))) && func_3(!(67919u > global1.x), u_input.c, 33599i, global3.e));
    var var_3 = 11886u;
    let var_4 = u_input.b.x;
    return Struct_3(global1.yz << (global3.d.xw % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> u32 {
    return countOneBits(61763u);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = ~global0.a.x;
    var var_1 = 34739u;
    global2 = array<vec3<u32>, 23>();
    global3 = Struct_4(_wgslsmith_add_u32(func_4(Struct_2(abs(vec3<u32>(global0.b, 1u, 1u)), 4294967295u >> (arg_1.x % 32u), 36070i < u_input.e), func_2(), select(vec4<bool>(false, global3.c.x, true, global0.c), vec4<bool>(true, global3.c.x, true, global3.c.x), !vec4<bool>(global0.c, global3.c.x, false, true))), global0.a.x), Struct_1(-1i ^ u_input.d.x, _wgslsmith_sub_vec3_i32(~firstTrailingBit(u_input.d), global3.b.b)), !select(global3.c, select(!global3.c, global3.c, vec2<bool>(false, global0.c)), !select(false, global3.c.x, false)), ~vec4<u32>(_wgslsmith_mod_u32(~global3.d.x, ~4294967295u), 106911u, _wgslsmith_dot_vec3_u32(~global0.a, arg_1), 1u), Struct_1(-23067i, firstTrailingBit(_wgslsmith_mod_vec3_i32(global3.e.b, vec3<i32>(u_input.e, u_input.d.x, 13488i)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, u_input.c, global1.x), global2[_wgslsmith_index_u32(1u, 23u)]) % vec3<u32>(32u)))));
    let var_2 = Struct_5(~_wgslsmith_add_i32(-50474i, -12575i), 1u <= countOneBits(global0.a.x));
    return global2[_wgslsmith_index_u32(arg_1.x, 23u)] | vec3<u32>(~firstTrailingBit(1720u), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0, 31729u), countOneBits(4294967295u)), ~(~76049u)), 20045u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c << (~(~4405u << (global3.d.x % 32u)) % 32u);
    var var_1 = 37954u;
    global1 = vec3<u32>(_wgslsmith_dot_vec3_u32(func_1(~u_input.c, ~u_input.b.yzy), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c, 0u) & vec3<u32>(43759u, 1u, 47311u), ~vec3<u32>(1u, 4294967295u, global1.x) & min(global2[_wgslsmith_index_u32(var_0, 23u)], global0.a))), 1u, 8136u);
    var var_2 = -1000f;
    global2 = array<vec3<u32>, 23>();
    var var_3 = _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(global3.b.b, vec3<i32>(global3.b.a, abs(-11814i), firstTrailingBit(~0i))), u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-321f, -1579f, -1214f, -480f), vec4<f32>(463f, 358f, 400f, 758f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1669f, -1139f, -231f) + vec4<f32>(671f, 978f, -183f, 1180f))) * vec4<f32>(-1083f, _wgslsmith_div_f32(-1709f, 699f), -554f, _wgslsmith_f_op_f32(select(-474f, 1517f, global0.c)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -938f, -1408f, 834f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -204f, 1138f, -1357f) + vec4<f32>(549f, -1327f, 889f, 641f)))))));
}

