struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16>;

var<private> global1: array<vec2<u32>, 2>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xz, global1[_wgslsmith_index_u32(86799u, 2u)]) << (_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a.x) >> (global1[_wgslsmith_index_u32(0u, 2u)] % vec2<u32>(32u)), abs(global1[_wgslsmith_index_u32(43552u, 2u)])) % vec2<u32>(32u)), ~vec2<u32>(~0u, 56368u)), arg_3.b, arg_3.b, reverseBits(vec3<i32>(_wgslsmith_div_i32(min(arg_3.d.x, arg_3.d.x), ~arg_3.d.x), countOneBits(select(52063i, -20869i, arg_2.x)), _wgslsmith_div_i32(1i, ~arg_3.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x)))))));
    var var_1 = select(true, any(!(!select(arg_2.yz, vec2<bool>(false, false), arg_2.xx))), true);
    let var_2 = var_0.b.a;
    global1 = array<vec2<u32>, 2>();
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.e) - 1481f), -117f, arg_3.e), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1563f), var_0.e)));
    return -_wgslsmith_clamp_i32(45659i, -2147483647i, 505i);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec4<i32>(-func_3(_wgslsmith_f_op_f32(517f + 575f), _wgslsmith_f_op_vec3_f32(vec3<f32>(263f, -1000f, -944f) - vec3<f32>(1273f, 1297f, -459f)), vec4<bool>(true, true, true, true), Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(vec4<i32>(-2147483647i, 0i, 9439i, -5849i), u_input.a.zy), Struct_1(vec4<i32>(10914i, 2147483647i, -7186i, 9362i), global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec3<i32>(-47773i, 0i, 23587i), 876f)), -_wgslsmith_add_i32(1i, 1i), 1i, ~64523i), vec2<u32>(~4294967295u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), select(vec4<u32>(1u, 28356u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 46331u), true)))));
    global0 = array<vec4<bool>, 16>();
    let var_1 = var_0;
    global0 = array<vec4<bool>, 16>();
    var var_2 = !any(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true));
    return ~firstLeadingBit(~14113u);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<u32>, arg_3: i32) -> Struct_2 {
    global1 = array<vec2<u32>, 2>();
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)), -112f, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(min(818f, 114f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, -1032f, -164f, -750f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, 672f, 1980f, -1000f)), true)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-580f, 216f, -1000f, 1531f), vec4<f32>(-715f, -1000f, -819f, -640f), global0[_wgslsmith_index_u32(7837u, 16u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 997f, -594f, -403f) + vec4<f32>(-331f, 941f, -214f, 594f)))))), vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1027f + _wgslsmith_f_op_f32(-1220f + -1328f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(961f, 197f))), -324f)));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(~0u), arg_2.x ^ 4294967295u), u_input.a.zy), ~0u, u_input.a.x, reverseBits(1u));
    let var_2 = !((all(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, false, true), arg_1)) | true) || (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 0u, 1u), vec3<u32>(arg_2.x, arg_2.x, u_input.a.x)), 1u >> (0u % 32u)) > 4294967295u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * var_0.x))) * -793f));
    return Struct_2(~select(~var_1.ww, vec2<u32>(1u, ~u_input.a.x), true), Struct_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3, arg_3, -20907i, 0i), vec4<i32>(arg_3, arg_3, arg_3, 0i)), vec2<u32>(54974u, abs(0u))), Struct_1(vec4<i32>(_wgslsmith_mod_i32(func_3(var_3, var_0.ywz, global0[_wgslsmith_index_u32(8303u, 16u)], Struct_2(u_input.a.xz, Struct_1(vec4<i32>(arg_0, arg_0, 1i, -12076i), vec2<u32>(0u, arg_2.x)), Struct_1(vec4<i32>(-41522i, arg_3, arg_0, 9427i), global1[_wgslsmith_index_u32(4623u, 2u)]), vec3<i32>(18677i, -1i, 2147483647i), 209f)), -2147483647i), abs(-12628i), 11471i, -(~(-2147483647i))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, 0u, arg_2.x) | vec4<u32>(8419u, arg_2.x, 0u, var_1.x), vec4<u32>(u_input.a.x, 5327u, 145u, 0u)), ~var_1.x)), countOneBits(max(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(arg_0, 2147483647i, -1i)), vec3<i32>(-1238i, -10i, arg_3) >> (arg_2 % vec3<u32>(32u))), max(vec3<i32>(2147483647i, arg_0, arg_3) >> (var_1.wzy % vec3<u32>(32u)), ~vec3<i32>(arg_0, arg_3, arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-499f - var_0.x), _wgslsmith_f_op_f32(-384f - var_0.x))), 172f));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global1 = array<vec2<u32>, 2>();
    let var_0 = vec3<i32>(max(-2147483647i, _wgslsmith_mod_i32(1i, 14922i)), 2147483647i, ~(-(~(-1i))) << (arg_0 % 32u));
    global0 = array<vec4<bool>, 16>();
    global1 = array<vec2<u32>, 2>();
    var var_1 = func_4(((-var_0.x ^ _wgslsmith_sub_i32(-1i, -60243i)) ^ (-12446i & var_0.x)) | -abs(var_0.x << (arg_0 % 32u)), ~(~(~69816u)) != func_2(), ~(vec3<u32>(4822u, u_input.a.x, 0u) & ~u_input.a) << (vec3<u32>(4294967295u, arg_0, 5733u) % vec3<u32>(32u)), ~var_0.x);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-263f, _wgslsmith_div_f32(298f, _wgslsmith_f_op_f32(sign(1000f)))));
    let var_1 = func_1(~u_input.a.x);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(var_0.x))), var_1.a.x, func_1(~u_input.a.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1542f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1113f + _wgslsmith_f_op_f32(max(-743f, 1000f)))))));
    var var_4 = ~(~_wgslsmith_clamp_vec2_u32(var_2.c.b, vec2<u32>(var_2.c.b.x, ~u_input.a.x), vec2<u32>(21048u, var_2.c.b.x)));
    let var_5 = func_4(_wgslsmith_div_i32(func_1(_wgslsmith_mult_u32(~var_4.x, ~u_input.a.x)).a.x, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1521f), vec3<f32>(-787f, -809f, _wgslsmith_f_op_f32(-var_2.a)), vec4<bool>(any(vec3<bool>(true, false, true)), true, true, 198f < var_0.x), func_4(-var_1.a.x, any(vec2<bool>(true, false)), u_input.a, max(0i, 1i)))), false, firstTrailingBit(firstTrailingBit(~max(u_input.a, vec3<u32>(var_1.b.x, 4294967295u, 45206u)))), _wgslsmith_clamp_i32(-1i, -2147483647i, select(var_1.a.x, var_1.a.x ^ var_2.b, true))).e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(var_1.a, ~((vec4<i32>(var_1.a.x, 1i, var_2.b, var_2.b) | var_2.c.a) >> (~vec4<u32>(var_2.c.b.x, 26326u, var_2.c.b.x, 0u) % vec4<u32>(32u)))), 60548u);
}

