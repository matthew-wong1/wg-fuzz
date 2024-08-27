struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: Struct_3,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
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

var<private> global0: f32;

var<private> global1: i32 = 12103i;

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(-1184f, false, vec2<i32>(i32(-2147483648), 0i)), Struct_3(-1356f, false, vec2<i32>(-1i, 2147483647i)), Struct_3(-948f, false, vec2<i32>(-4528i, 5175i)), Struct_3(409f, true, vec2<i32>(-11364i, 0i)), Struct_3(-400f, false, vec2<i32>(-6132i, 0i)), Struct_3(-1833f, false, vec2<i32>(-28474i, -56537i)), Struct_3(345f, false, vec2<i32>(-1i, -8676i)), Struct_3(249f, false, vec2<i32>(-4944i, 2147483647i)), Struct_3(627f, true, vec2<i32>(1i, 1i)), Struct_3(-1305f, true, vec2<i32>(-11913i, -1i)), Struct_3(2448f, false, vec2<i32>(1i, 2291i)), Struct_3(-279f, false, vec2<i32>(-43804i, 2147483647i)), Struct_3(1208f, true, vec2<i32>(-1i, 1i)), Struct_3(-1000f, false, vec2<i32>(2147483647i, -35045i)), Struct_3(-1457f, true, vec2<i32>(0i, -74564i)), Struct_3(-200f, true, vec2<i32>(1i, 0i)), Struct_3(-555f, false, vec2<i32>(-11482i, -18897i)), Struct_3(1000f, false, vec2<i32>(-1i, 2147483647i)), Struct_3(2124f, true, vec2<i32>(-12526i, 1i)));

var<private> global3: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false));

var<private> global4: array<f32, 19> = array<f32, 19>(-723f, 697f, 129f, 1830f, 355f, -1595f, 1179f, -1011f, 156f, 1106f, 1000f, -793f, -2230f, 480f, 1000f, -1474f, 2130f, -544f, 1773f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_5(vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true))), false, false), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, -14740i), vec4<i32>(-1i, 2147483647i, -2147483647i, -13348i)), -1i) ^ _wgslsmith_mult_i32(~(-69560i), abs(-1i)), 1i, firstTrailingBit(i32(-1i) * -2147483647i), ~(~0i)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 1785f))), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -966f) >= _wgslsmith_div_f32(arg_0, global4[_wgslsmith_index_u32(4294967295u, 19u)]), false, (u_input.b.x & u_input.c) >= 1u), Struct_1(u_input.a.x, u_input.a.wxx, select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), ~(u_input.c & u_input.b.x)), Struct_1(~(~u_input.d.x), u_input.a.yyz, vec2<bool>(select(false, true, true), any(vec2<bool>(true, false))), ~15431u)), vec4<bool>(select(~u_input.c != _wgslsmith_mult_u32(0u, u_input.d.x), false, (4294967295u >> (0u % 32u)) >= _wgslsmith_add_u32(1u, u_input.b.x)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), all(vec3<bool>(true, true, false)), false));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-551f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~u_input.a.x, 19u)]))), ~4294967295u <= ~(~_wgslsmith_sub_u32(u_input.d.x, 14035u)), var_0.b.yw);
    let var_2 = Struct_2(1745f, var_0.d.xzw, var_0.c.d, var_0.c.c);
    let var_3 = -vec3<i32>(var_0.b.x, _wgslsmith_sub_i32(28380i, var_1.c.x), 0i);
    var var_4 = countOneBits(vec4<i32>(-13168i, _wgslsmith_sub_i32(~min(-25726i, var_0.b.x), var_1.c.x), ~1i, abs(var_0.b.x)));
    return ~var_0.c.d.b.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> vec4<bool> {
    global2 = array<Struct_3, 19>();
    var var_0 = 1i;
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(func_3(global4[_wgslsmith_index_u32(19530u, 19u)]), arg_1 << (arg_1 % 32u))) & vec2<u32>(51529u, min(~13567u, _wgslsmith_mult_u32(arg_0.x, 64778u))), u_input.a.yx), 19u)];
    let var_1 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.x, ~u_input.c), arg_1 << (arg_0.x % 32u))) | arg_1, 19u)];
    global0 = global4[_wgslsmith_index_u32(u_input.d.x, 19u)];
    return vec4<bool>(all(!select(!global3[_wgslsmith_index_u32(arg_1, 28u)], vec4<bool>(false, false, false, var_1.b), all(vec3<bool>(var_1.b, var_1.b, var_1.b)))), !(true || !any(vec3<bool>(var_1.b, var_1.b, var_1.b))), true, !all(vec3<bool>(true, true, true)) || !(!any(vec2<bool>(false, false))));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_5 {
    let var_0 = Struct_1(u_input.d.x, ~u_input.b, vec2<bool>(false, true | all(func_2(u_input.b.zz, 4294967295u))), arg_0);
    global4 = array<f32, 19>();
    let var_1 = abs(49446u);
    global2 = array<Struct_3, 19>();
    var var_2 = false;
    return Struct_5(func_2(firstLeadingBit(var_0.b.zy), arg_0 | _wgslsmith_dot_vec2_u32(~var_0.b.yx, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.d, 1u), vec2<u32>(66211u, 4294967295u)))), (_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, arg_1, arg_1, 20086i), firstTrailingBit(vec4<i32>(-2147483647i, 1i, arg_1, arg_1))) | select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, arg_1, arg_1), vec4<i32>(2147483647i, arg_1, arg_1, 1784i), vec4<i32>(13760i, arg_1, arg_1, 0i)), countOneBits(vec4<i32>(arg_1, arg_1, arg_1, arg_1)), any(vec3<bool>(true, false, false)))) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(46738u, var_1, var_0.a, 1u), u_input.a, _wgslsmith_add_vec4_u32(max(u_input.a, u_input.a), ~u_input.a)) % vec4<u32>(32u)), Struct_2(global4[_wgslsmith_index_u32(4294967295u, 19u)], select(!func_2(vec2<u32>(57059u, 4219u), arg_0).zxy, !select(vec3<bool>(true, true, var_0.c.x), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<bool>(true, false, var_0.c.x)), vec3<bool>(all(var_0.c), true, false)), Struct_1(firstTrailingBit(44818u), select(var_0.b, var_0.b, var_0.c.x) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 49898u, 4294967295u), vec3<u32>(var_0.b.x, 1u, u_input.b.x)), !var_0.c, ~(~57786u)), var_0), select(!(!(!vec4<bool>(var_0.c.x, false, true, var_0.c.x))), vec4<bool>(!(global4[_wgslsmith_index_u32(40926u, 19u)] < global4[_wgslsmith_index_u32(arg_0, 19u)]), false, !all(vec3<bool>(true, var_0.c.x, false)), false), all(vec2<bool>(var_0.c.x, !var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~u_input.a.x, min(-1i, abs(0i)));
    let var_1 = vec4<u32>(18371u, countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a.x) & var_0.c.c.b.xz, vec2<u32>(var_0.c.d.a, var_0.c.c.b.x) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))), ~4294967295u, ~1u >> (reverseBits(0u) % 32u))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 25890u, u_input.a.x), var_0.c.d.b), u_input.a.x);
    var var_2 = -6563i;
    let var_3 = func_1(~u_input.b.x, _wgslsmith_sub_i32(~(~var_0.b.x), 14933i) | -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.b.x, -1i) ^ var_0.b.zwx, ~vec3<i32>(0i, -1144i, var_0.b.x)));
    var var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(~0u, 19u)], var_3.c.a, var_0.c.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-759f, var_0.c.a, var_0.c.a), vec3<f32>(-1000f, global4[_wgslsmith_index_u32(var_0.c.d.a, 19u)], var_3.c.a), vec3<bool>(true, var_0.d.x, true))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.a, -219f, 3004f) + vec3<f32>(global4[_wgslsmith_index_u32(u_input.d.x, 19u)], -997f, 103f))))));
    let x = u_input.a;
    s_output = StorageBuffer(997f, 1i);
}

