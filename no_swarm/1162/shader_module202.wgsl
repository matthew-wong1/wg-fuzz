struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11>;

var<private> global1: vec4<i32> = vec4<i32>(-10440i, 1i, 14126i, 6180i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(vec3<i32>(~(~global1.x), reverseBits(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-44976i, u_input.c.x), firstTrailingBit(global1.x))), _wgslsmith_add_i32(_wgslsmith_mod_i32(global1.x, global1.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, 0i, -26932i, global1.x), vec4<i32>(global1.x, global1.x, 0i, u_input.c.x)), -vec4<i32>(global1.x, u_input.c.x, global1.x, -3807i)))));
    var var_1 = vec3<bool>(all(vec3<bool>(true, true, true)) && (any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false)) | true), false, all(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))));
    var var_2 = _wgslsmith_mod_vec3_u32(countOneBits(u_input.b.zyx >> (u_input.a.xwx % vec3<u32>(32u))), ~firstLeadingBit(_wgslsmith_mod_vec3_u32(abs(u_input.b.zyw), u_input.a.wzx)));
    var var_3 = Struct_2(select(select(vec3<bool>(any(vec4<bool>(false, true, var_1.x, var_1.x)), var_1.x, -2147483647i == global1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, select(var_1.x, true, var_1.x), var_1.x)), vec3<bool>(any(vec4<bool>(true, true, var_1.x, var_1.x)), false, select(all(vec2<bool>(false, var_1.x)), var_1.x, true)), select(!select(vec3<bool>(var_1.x, false, false), vec3<bool>(true, false, true), var_1.x), select(vec3<bool>(true, var_1.x, true), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), false), any(vec2<bool>(var_1.x, var_1.x))), vec3<bool>(!var_1.x, !var_1.x, false))));
    let var_4 = Struct_3(global1.xwz);
    return -var_0.a.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(func_3(), 2147483647i, u_input.c.x), _wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(arg_2.b.x << (u_input.b.x % 32u), arg_2.b.x ^ u_input.c.x, arg_2.b.x >> (u_input.b.x % 32u)))));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_dot_vec3_i32(global1.wxz, max(_wgslsmith_div_vec3_i32(vec3<i32>(-8203i, var_0.a.x, 31892i), _wgslsmith_mod_vec3_i32(global1.zyw, firstTrailingBit(vec3<i32>(var_0.a.x, var_0.a.x, -2147483647i)))), firstTrailingBit(~(-var_0.a))));
    var_0 = Struct_3(_wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(-u_input.c, vec3<i32>(1i, arg_1, global1.x) ^ global1.yxz), select(_wgslsmith_add_vec3_i32(~vec3<i32>(global1.x, arg_2.b.x, var_1.b.x), vec3<i32>(-2147483647i, arg_2.b.x, -2147483647i)), global1.yyz, any(vec4<bool>(true, true, arg_0.x, false)))));
    global0 = array<vec3<f32>, 11>();
    return select(!vec3<bool>(arg_0.x, all(select(vec3<bool>(false, arg_0.x, true), vec3<bool>(true, arg_0.x, false), arg_0.x)), true), select(select(vec3<bool>(all(vec4<bool>(false, arg_0.x, false, arg_0.x)), any(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), true), !vec3<bool>(arg_0.x, false, arg_0.x), arg_0.x), !vec3<bool>(true, true, arg_0.x), vec3<bool>(all(select(arg_0.zx, vec2<bool>(arg_0.x, false), arg_0.yx)), any(vec2<bool>(arg_0.x, arg_0.x)), arg_0.x)), vec3<bool>(true || arg_0.x, u_input.e != 44403u, arg_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<i32> {
    let var_0 = arg_0;
    global1 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, var_0.b.x), _wgslsmith_div_i32(u_input.c.x, arg_0.b.x), var_0.b.x), firstLeadingBit(~var_0.b.x), 3088i), ~(~vec4<i32>(var_0.b.x, 0i, global1.x, var_0.b.x)) & ~abs(vec4<i32>(7307i, -10850i, u_input.c.x, var_0.b.x))), vec4<i32>(var_0.b.x, ~0i, global1.x, var_0.b.x));
    let var_1 = ~20790i < -(var_0.b.x ^ max(~(-2147483647i), ~u_input.c.x));
    global1 = vec4<i32>(20325i, 0i, 1i, arg_0.b.x);
    var var_2 = Struct_2(select(!vec3<bool>(arg_1.a.x, !var_1, !var_1), !select(vec3<bool>(false, arg_1.a.x, arg_1.a.x), !vec3<bool>(arg_1.a.x, var_1, var_1), false), func_2(arg_1.a, _wgslsmith_clamp_i32(-44485i, 7294i, global1.x << (u_input.b.x % 32u)), arg_0)));
    return max(vec3<i32>(~max(arg_0.b.x, _wgslsmith_add_i32(-1i, arg_0.b.x)), abs(~var_0.b.x), arg_0.b.x), vec3<i32>(u_input.c.x, var_0.b.x, arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(max(_wgslsmith_mult_vec3_i32(firstTrailingBit(u_input.c), global1.zxy), global1.wzx));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, _wgslsmith_clamp_u32(~u_input.b.x, 56052u, 4294967295u), reverseBits(~abs(u_input.a.x))), ~vec3<u32>(u_input.e & 22747u, _wgslsmith_mod_u32(u_input.e, 4456u), 1u) | u_input.a.zyw);
    global0 = array<vec3<f32>, 11>();
    let var_2 = _wgslsmith_f_op_f32(floor(-930f));
    var_1 = 4294967295u;
    var_0 = Struct_3(firstTrailingBit(-(~var_0.a) & func_1(Struct_1(vec2<f32>(380f, 986f), u_input.c.yx), Struct_2(vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(249f, -1487f, var_2, var_2)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), var_2));
    var_1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-var_2), var_2, var_3.x), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2), 1000f, var_3.x, var_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 530f, var_3.x, var_3.x)))) * vec4<f32>(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(round(1374f))), _wgslsmith_f_op_f32(step(var_3.x, 784f)), _wgslsmith_div_f32(1000f, 1000f), var_2)), _wgslsmith_div_vec2_i32(var_0.a.yz, ~(var_0.a.zx | u_input.c.yy)), u_input.b.x);
}

