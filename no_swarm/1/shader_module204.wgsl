struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(104892i, i32(-2147483648));

var<private> global1: i32;

var<private> global2: array<bool, 23> = array<bool, 23>(true, false, false, true, true, false, true, true, false, true, true, true, false, false, true, false, false, true, false, false, true, true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>) -> vec3<i32> {
    global2 = array<bool, 23>();
    global0 = -_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.c.x, arg_0.a.b.x) & vec2<i32>(arg_1, global0.x), ~vec2<i32>(global0.x, -21728i)), ~(-arg_0.a.b.zx)) << (vec2<u32>(0u, arg_0.a.a.x) % vec2<u32>(32u));
    let var_0 = Struct_4(abs(vec2<i32>(1i, 260i)), u_input.b.x ^ ~arg_0.a.a.x, true);
    let var_1 = Struct_1(arg_0.a.a, vec3<i32>(-1i) * -vec3<i32>(u_input.d, firstTrailingBit(u_input.d), var_0.a.x), vec3<i32>(_wgslsmith_add_i32(~(-2147483647i << (arg_0.a.a.x % 32u)), arg_0.e.x), _wgslsmith_mult_i32(arg_1, _wgslsmith_dot_vec3_i32(select(arg_0.a.c, vec3<i32>(9411i, global0.x, arg_1), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], arg_0.d.x, arg_0.b.x)), firstLeadingBit(vec3<i32>(1i, arg_0.e.x, arg_0.c)))), select(firstLeadingBit(var_0.a.x), var_0.a.x, true)), var_0.c, arg_0.a.e);
    global1 = -26343i;
    return var_1.b;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = -(u_input.a & _wgslsmith_clamp_vec3_i32(func_3(arg_1, 0i >> (u_input.b.x % 32u), vec4<f32>(arg_1.a.e.x, -146f, -1000f, -491f)), u_input.a, reverseBits(~vec3<i32>(u_input.c.x, 7226i, arg_1.a.b.x))));
    global0 = -u_input.a.yy;
    let var_1 = arg_1;
    var var_2 = Struct_3(vec3<u32>(var_1.a.a.x, arg_1.a.a.x, 19820u));
    var var_3 = Struct_4(arg_1.a.c.zz, 0u, !any(!(!arg_1.d)));
    return arg_1.a.e.x;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> vec4<f32> {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.a.x, arg_2.a.a.x, 6304u, arg_0), vec4<u32>(1u, 0u, 22697u, 25059u)) ^ firstTrailingBit(vec4<u32>(u_input.b.x, arg_0, 3697u, 1u))), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.a.a, ~vec3<u32>(arg_2.a.a.x, 4294967295u, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(39845u, 63926u, arg_2.a.a.x, arg_2.a.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 21566u, arg_0), vec4<u32>(u_input.b.x, arg_0, arg_2.a.a.x, 11238u))), firstLeadingBit(~u_input.b.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_2.a.a.x, 6978u, 20171u), vec4<u32>(arg_2.a.a.x, u_input.b.x, 42801u, arg_0)))), ~arg_2.a.a.x);
    let var_1 = -349f;
    var_0 = vec2<u32>(var_0.x, u_input.b.x);
    global1 = arg_2.a.c.x;
    var_0 = min(vec2<u32>(6341u, ~(~countOneBits(30220u))), vec2<u32>(reverseBits(_wgslsmith_add_u32(6352u, 55802u)), firstTrailingBit(select(16025u ^ u_input.b.x, u_input.b.x | var_0.x, !arg_2.d.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), 621f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(round(arg_2.a.e.x)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<i32>) -> Struct_2 {
    global1 = u_input.c.x;
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(~(~0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 265f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, arg_0)))), Struct_2(Struct_1((vec3<u32>(u_input.b.x, 85220u, 59950u) >> (vec3<u32>(85545u, 7041u, 42384u) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 0u, 0u), vec3<u32>(1u, 1u, 61740u), vec3<u32>(319u, 1u, u_input.b.x)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(2147483647i, u_input.a.x), 1i, _wgslsmith_mod_i32(0i, arg_2.x)), _wgslsmith_clamp_vec3_i32(arg_2.xww | vec3<i32>(global0.x, arg_2.x, global0.x), firstTrailingBit(vec3<i32>(-10251i, 2147483647i, u_input.a.x)), arg_2.yzy), all(!arg_1), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))), arg_1.yyw, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-17966i, arg_2.x, global0.x, global0.x)), abs(max(vec4<i32>(global0.x, 2147483647i, arg_2.x, arg_2.x), vec4<i32>(arg_2.x, 2147483647i, arg_2.x, 19971i)))), !(!select(arg_1, arg_1, global2[_wgslsmith_index_u32(u_input.b.x, 23u)])), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(2147483647i, -21741i), u_input.c.xz | arg_2.xw), vec2<i32>(1i, _wgslsmith_sub_i32(-44962i, global0.x)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, global0.x), u_input.a.xy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(any(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 23u)], arg_1.x, true, arg_1.x)), Struct_2(Struct_1(vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec3<i32>(global0.x, -10549i, global0.x), arg_2.xyx, global2[_wgslsmith_index_u32(3707u, 23u)], vec3<f32>(arg_0, -993f, arg_0)), arg_1.xyy, min(u_input.d, -2147483647i), !arg_1, vec2<i32>(arg_2.x, 7500i)))) - arg_0)));
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, ~(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), u_input.b.x), vec3<u32>(_wgslsmith_sub_u32(~u_input.b.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(0u, 21415u, u_input.b.x, 1u)), select(abs(u_input.b.x), countOneBits(1u), all(arg_1))), u_input.b.x, 4294967295u));
    global0 = ~((arg_2.zy << (var_1.xz % vec2<u32>(32u))) ^ (arg_2.zy >> (u_input.b % vec2<u32>(32u))));
    global2 = array<bool, 23>();
    return Struct_2(Struct_1(vec3<u32>(0u, ~var_1.x, _wgslsmith_sub_u32(4294967295u, var_1.x)), -arg_2.wzy, _wgslsmith_clamp_vec3_i32(vec3<i32>(51668i, u_input.a.x, global0.x), u_input.a, ~arg_2.xyy) >> (vec3<u32>(var_1.x, _wgslsmith_mod_u32(1u, var_1.x), countOneBits(39846u)) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(var_1.x, 23u)], _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), arg_0)))), vec3<bool>(arg_1.x, true, true), u_input.c.x >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(~var_1.x, 0u), 28605u) % 32u), vec4<bool>(false, any(arg_1.zww), true, false), func_3(Struct_2(Struct_1(vec3<u32>(u_input.b.x, 4294967295u, 60889u), arg_2.zwx, func_3(Struct_2(Struct_1(vec3<u32>(var_1.x, 1u, 0u), vec3<i32>(-39666i, global0.x, 2147483647i), u_input.a, global2[_wgslsmith_index_u32(var_1.x, 23u)], vec3<f32>(1130f, var_0.x, 1000f)), vec3<bool>(arg_1.x, false, arg_1.x), u_input.a.x, arg_1, u_input.a.xz), 0i, vec4<f32>(var_0.x, var_0.x, 232f, -653f)), all(arg_1.xw), _wgslsmith_div_vec3_f32(var_0.yyx, vec3<f32>(arg_0, 299f, -463f))), !arg_1.wyz, -_wgslsmith_div_i32(u_input.a.x, u_input.a.x), arg_1, firstTrailingBit(vec2<i32>(-13312i, u_input.d) >> (var_1.zx % vec2<u32>(32u)))), u_input.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-var_0.x), arg_0, _wgslsmith_div_f32(832f, 1157f)))).yx);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec3<i32> {
    global2 = array<bool, 23>();
    global0 = _wgslsmith_mod_vec2_i32(-vec2<i32>(firstTrailingBit(global0.x), countOneBits(arg_0.e.x)), arg_1.c.zx | ~vec2<i32>(2147483647i, 0i << (1u % 32u)));
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(-arg_0.a.e.x), arg_0.d, vec4<i32>(34468i, arg_0.a.b.x, -1i, -(arg_0.a.c.x << (4294967295u % 32u)))).a, !select(arg_0.d.xxy, vec3<bool>(!arg_3.x, false, arg_3.x && arg_3.x), true), u_input.a.x, select(arg_0.d, !(!(!arg_0.d)), all(vec2<bool>(true, false))), vec2<i32>(~_wgslsmith_clamp_i32(abs(arg_0.e.x), -u_input.d, arg_0.e.x >> (2705u % 32u)), 1i));
    let var_1 = ~(~min(vec2<u32>(29622u, arg_0.a.a.x) | arg_1.a.zz, vec2<u32>(22357u, var_0.a.a.x)) << (~abs(abs(vec2<u32>(85884u, 29935u))) % vec2<u32>(32u)));
    global0 = reverseBits(abs(abs(var_0.e)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(~(~select(vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), false)), _wgslsmith_sub_vec3_i32(u_input.a << (vec3<u32>(u_input.b.x, u_input.b.x, 1u) % vec3<u32>(32u)), vec3<i32>(-31198i, -2147483647i, 1i)) & u_input.c.zyx, func_5(func_1(-1438f, vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], true, global2[_wgslsmith_index_u32(7300u, 23u)], global2[_wgslsmith_index_u32(78185u, 23u)]), ~vec4<i32>(global0.x, -10387i, global0.x, global0.x)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -385f), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)], true), vec4<bool>(false, true, false, false), global2[_wgslsmith_index_u32(4294967295u, 23u)]), u_input.c).a, func_1(_wgslsmith_f_op_f32(f32(-1f) * -884f), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 23u)], true, true, false), u_input.c).d.yy, vec2<bool>(false, true)), global2[_wgslsmith_index_u32(u_input.b.x << (24717u % 32u), 23u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 285f, -1908f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1265f, 1027f, 304f), vec3<f32>(457f, -1000f, 1660f), false)), global2[_wgslsmith_index_u32(2701u >> (u_input.b.x % 32u), 23u)]))))), select(!vec3<bool>(select(true, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)]), global2[_wgslsmith_index_u32(u_input.b.x, 23u)], all(vec2<bool>(global2[_wgslsmith_index_u32(16712u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]))), vec3<bool>(!all(vec4<bool>(true, global2[_wgslsmith_index_u32(31416u, 23u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 23u)])), func_1(_wgslsmith_f_op_f32(1000f - -416f), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], true, false, false), vec4<bool>(global2[_wgslsmith_index_u32(11790u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], false, false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)])), _wgslsmith_div_vec4_i32(u_input.c, u_input.c)).a.d, u_input.c.x <= u_input.d), any(vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(34125u, u_input.b.x), 23u)], true, true, true))), u_input.d, vec4<bool>(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x & 48295u, ~u_input.b.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 24699u, 24799u, 4294967295u), ~vec4<u32>(u_input.b.x, 48808u, u_input.b.x, 4294967295u)), 23u)], true, 1u <= abs(u_input.b.x)), -(max(_wgslsmith_mod_vec2_i32(u_input.c.wx, u_input.c.yz), ~vec2<i32>(2147483647i, 1i)) ^ (func_1(-437f, vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(28714u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)]), u_input.c).a.b.yz ^ firstLeadingBit(u_input.c.wz))));
    global0 = u_input.a.zx;
    global0 = vec2<i32>(1i, u_input.c.x);
    var var_1 = var_0.a.e.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(var_0.a.e - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.e.x, var_0.a.e.x, var_0.a.e.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-640f, 1000f, var_0.a.e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(591f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(276f, var_2.x, 127f, var_2.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-258f, -415f, 290f, 1918f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 608f, 788f, var_2.x), vec4<f32>(var_2.x, var_0.a.e.x, 1838f, var_2.x), false)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.e.x, 685f, var_0.a.e.x, var_0.a.e.x) + vec4<f32>(-244f, var_2.x, var_0.a.e.x, var_2.x))))), u_input.c.xzy, _wgslsmith_f_op_vec2_f32(min(var_2.xx, var_0.a.e.zy)), vec4<u32>(var_0.a.a.x, 44338u, 4294967295u, min(abs(firstLeadingBit(u_input.b.x)), 471u)));
}

