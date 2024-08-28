struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> bool {
    var var_0 = select(false, false, 434f <= arg_1.a);
    var var_1 = u_input.b.x;
    let var_2 = ~(-_wgslsmith_add_i32(2147483647i, u_input.e.x));
    var var_3 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b.a.x, var_2 | u_input.c, u_input.e.x), arg_0.a.wzz));
    var_1 = 9768u;
    return !(~abs(23708u) > countOneBits(arg_0.c.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<f32>) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1746f * arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.x)) - _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(abs(arg_3.x))))));
    let var_1 = max(~1u >> (~_wgslsmith_mod_u32(u_input.a, u_input.b.x) % 32u), u_input.d.x);
    var var_2 = _wgslsmith_f_op_f32(-arg_3.x);
    let var_3 = Struct_1(countOneBits(vec3<i32>(-u_input.e.x, 1i, min(-2147483647i, -1i))) | _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(52174i, -21512i, -7514i) << (vec3<u32>(22240u, var_1, var_1) % vec3<u32>(32u)), ~vec3<i32>(u_input.e.x, u_input.c, -17333i)), vec3<i32>(u_input.c, reverseBits(u_input.e.x), u_input.e.x)));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -386f);
    return false;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a, ~max(0u, u_input.d.x), arg_1.c.x, ~(~1u))), vec4<u32>(4294967295u, _wgslsmith_add_u32(arg_1.c.x, ~104933u), u_input.d.x, _wgslsmith_div_u32(21705u, u_input.b.x << (_wgslsmith_clamp_u32(u_input.b.x, arg_1.c.x, u_input.a) % 32u))));
    let var_1 = arg_1.b.b.a.x;
    var var_2 = ((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-788f, arg_1.b.a))) < arg_1.b.a) || false) & true;
    let var_3 = ~(~u_input.d.x);
    var_2 = !(!(!all(vec2<bool>(arg_1.d.x, arg_0.x))));
    return vec4<i32>(1i, _wgslsmith_div_i32(~(~(u_input.e.x | 2801i)), _wgslsmith_mod_i32(var_1, ~_wgslsmith_dot_vec4_i32(vec4<i32>(16237i, -7971i, arg_1.a.a.x, u_input.e.x), vec4<i32>(-2147483647i, 10818i, -6061i, var_1)))), u_input.e.x, var_1);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_4) -> Struct_4 {
    var var_0 = arg_2;
    var_0 = Struct_4(vec4<i32>(var_0.a.x, -26677i, abs(var_0.a.x), -2147483647i >> (1u % 32u)), _wgslsmith_mult_vec2_u32(u_input.d, u_input.d) >> (u_input.b.wz % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(57806u, 1u) ^ var_0.c.x, ~16953u));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(599f, -311f) + vec2<f32>(1111f, -1331f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1446f, 225f), vec2<f32>(-1575f, -1000f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1532f, -238f) - vec2<f32>(-608f, -1536f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))));
    let var_2 = -5036i;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1815f)), var_1.x))), Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(var_0.a.yxx), func_3(vec3<bool>(false, false, false), Struct_3(Struct_1(arg_2.a.yyw), Struct_2(var_1.x, Struct_1(vec3<i32>(40824i, 17077i, var_0.a.x))), vec2<u32>(u_input.b.x, u_input.a), vec3<bool>(false, true, false), u_input.c)).yyz), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, 65383i, arg_2.a.x), vec3<i32>(1i, arg_0, -2147483647i)), vec3<i32>(var_0.a.x, arg_2.a.x, var_0.a.x)))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.b.zz & countOneBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(28578u, u_input.d.x), ~vec2<u32>(u_input.d.x, u_input.b.x)))) | countOneBits(u_input.d);
    var var_1 = func_4(u_input.e.x, any(vec2<bool>(func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(232f, -949f))), func_1(Struct_4(vec4<i32>(26612i, 0i, u_input.c, -1i), vec2<u32>(u_input.d.x, 58992u), u_input.d), Struct_2(-315f, Struct_1(vec3<i32>(u_input.e.x, 418i, u_input.c)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(717f, 1823f))), vec4<f32>(1015f, 1493f, -823f, 434f)), 45814u > u_input.b.x)), Struct_4(-_wgslsmith_sub_vec4_i32(vec4<i32>(6351i, -12300i, -22418i, 2426i) ^ vec4<i32>(u_input.e.x, 2870i, u_input.e.x, u_input.e.x), func_3(vec3<bool>(true, true, false), Struct_3(Struct_1(vec3<i32>(2147483647i, u_input.c, 31519i)), Struct_2(-1486f, Struct_1(vec3<i32>(1i, u_input.c, u_input.e.x))), vec2<u32>(4294967295u, u_input.a), vec3<bool>(false, true, true), u_input.c))), u_input.b.ww, ~(~u_input.b.yw)));
    var_0 = var_1.b;
    var_0 = u_input.d;
    var_1 = Struct_4(-var_1.a, vec2<u32>(131391u, countOneBits(reverseBits(4294967295u))), countOneBits(var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(-1363f, _wgslsmith_clamp_vec4_u32(u_input.b, ~(vec4<u32>(35471u, u_input.b.x, var_1.b.x, 0u) & _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 699u, 4294967295u, 4294967295u), vec4<u32>(10752u, 75101u, 1u, var_1.c.x))), vec4<u32>(~(~53804u), _wgslsmith_dot_vec4_u32(vec4<u32>(21203u, 0u, var_1.c.x, u_input.b.x), firstTrailingBit(vec4<u32>(u_input.a, var_0.x, var_1.c.x, 0u))), var_0.x, 1u)), ~_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), var_1.a.yw, vec3<u32>(min(var_1.b.x, _wgslsmith_sub_u32(~13624u, abs(22054u))), abs(func_4(-2147483647i, 19755u >= var_1.c.x, func_4(u_input.e.x, true, Struct_4(vec4<i32>(-44223i, -28629i, -23703i, -25016i), vec2<u32>(4294967295u, 13258u), vec2<u32>(0u, 50956u)))).b.x), ~(~_wgslsmith_sub_u32(4294967295u, 0u))));
}

