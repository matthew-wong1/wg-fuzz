struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 5019u, 4294967295u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = arg_1.b.xy;
    let var_1 = Struct_3(!(!all(vec4<bool>(true, true, true, true))), firstLeadingBit(select(abs(vec2<i32>(0i, -2125i)), vec2<i32>(max(1i, -28641i), i32(-1i) * -2147483647i), true)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 26144u, arg_1.a), global1.xzw) | 51222u, 61540u) << ((u_input.a | ~arg_1.a) % 32u), Struct_2(vec3<i32>(reverseBits(-51907i), -22194i, -1i) << ((global1.xyz | (vec3<u32>(arg_0.x, 4294967295u, arg_0.x) >> (global1.wyz % vec3<u32>(32u)))) % vec3<u32>(32u)), arg_1), arg_1);
    var var_2 = true;
    var var_3 = var_1;
    global0 = array<vec2<i32>, 14>();
    return var_3.d.a;
}

fn func_2() -> i32 {
    global0 = array<vec2<i32>, 14>();
    global0 = array<vec2<i32>, 14>();
    let var_0 = Struct_2(_wgslsmith_mod_vec3_i32(-vec3<i32>(1i, 1i, 1i), func_3(global1.wz, Struct_1(firstLeadingBit(0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(364f, 207f, 192f, 1120f) + vec4<f32>(524f, -701f, -632f, -862f)), _wgslsmith_div_f32(603f, 1406f)))), Struct_1(4294967295u, vec4<f32>(-1144f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(537f * 930f), -1662f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-644f)))), -605f));
    let var_1 = Struct_3(false, ~global0[_wgslsmith_index_u32(32934u, 14u)], u_input.a, var_0, Struct_1(~_wgslsmith_sub_u32(var_0.b.a, 1u), var_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-839f - _wgslsmith_f_op_f32(-var_0.b.b.x)))));
    return firstTrailingBit(func_3(vec2<u32>(4294967295u >> (firstLeadingBit(var_1.c) % 32u), ~(~0u)), var_1.e).x);
}

fn func_1() -> f32 {
    let var_0 = !any(vec2<bool>(true, true));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(max(func_2(), countOneBits(reverseBits(-27944i))), 42252i), _wgslsmith_mod_i32(func_2(), 1i));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(u_input.a, 6664u), ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global1.xz, global1.xw), ~vec2<u32>(35558u, 34906u))), u_input.a, ~(~4337u));
    var var_3 = !vec3<bool>(true, any(!vec3<bool>(false, var_0, true)), all(select(vec2<bool>(true, false), !vec2<bool>(true, var_0), select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), var_0))));
    var var_4 = -reverseBits(_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, 35601i), vec2<i32>(-14384i, 1i))) & min(global0[_wgslsmith_index_u32(global1.x, 14u)], vec2<i32>(-1i, func_3(vec2<u32>(u_input.a, 26853u), Struct_1(0u, vec4<f32>(140f, -718f, -422f, -462f), -1258f)).x));
    return -515f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = Struct_1((1u | u_input.a) | _wgslsmith_add_u32(abs(u_input.a), abs(reverseBits(51396u))), vec4<f32>(741f, _wgslsmith_f_op_f32(1711f - -1910f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -339f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f)))), -912f);
    var_0 = 22999i;
    var var_2 = _wgslsmith_f_op_f32(round(var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, max(abs(func_3(global1.xx, Struct_1(26811u, vec4<f32>(1000f, var_1.b.x, var_1.c, var_1.b.x), var_1.b.x)).x), _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(0i), -1i, ~(-1i)), min(vec3<i32>(2147483647i, 1i, -11131i), max(vec3<i32>(2147483647i, 0i, -16655i), vec3<i32>(26655i, -1i, -53631i))))));
}

