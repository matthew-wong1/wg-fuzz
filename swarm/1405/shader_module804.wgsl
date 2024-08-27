struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22>;

var<private> global1: f32;

var<private> global2: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = arg_1.b;
    let var_1 = ~min((~vec4<i32>(u_input.a, 2147483647i, u_input.a, 2147483647i) & abs(vec4<i32>(u_input.a, 0i, -2147483647i, u_input.a))) ^ firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(3594i, u_input.a, u_input.a, u_input.a), vec4<i32>(9048i, u_input.a, -2147483647i, u_input.a))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, u_input.a, 6087i, -1i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(-20657i, 1i, u_input.a, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -18969i, u_input.a), abs(vec4<i32>(-37172i, u_input.a, u_input.a, -55845i)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1.c)))));
    let var_3 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1395f))));
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(var_4, 612f), _wgslsmith_f_op_f32(143f * _wgslsmith_f_op_f32(f32(-1f) * -1132f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b.xx - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b.x, arg_0.b.x))))) - _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, 528f)), vec2<f32>(arg_0.b.x, -399f), vec2<bool>(true, false))), Struct_2(arg_1.zx, min(arg_0.c.x, 44779u), _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x))))));
    var var_1 = _wgslsmith_mod_vec2_u32(max(arg_0.c.zw, select((vec2<u32>(48254u, 1u) | vec2<u32>(40515u, arg_0.c.x)) & _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_0.c.x), arg_0.c.xy), arg_1.yx, _wgslsmith_f_op_f32(exp2(var_0.x)) > _wgslsmith_f_op_f32(f32(-1f) * -942f))), vec2<u32>(~(~reverseBits(arg_0.c.x)), arg_0.c.x));
    global1 = _wgslsmith_f_op_f32(trunc(var_0.x));
    let var_2 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -174f, -673f, -628f) - _wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(735f, -225f, 574f, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -921f), _wgslsmith_f_op_f32(arg_0.b.x * var_0.x), -215f, _wgslsmith_f_op_f32(round(arg_0.b.x)))), vec4<bool>(all(vec2<bool>(false, false)) || true, !all(vec2<bool>(false, true)), -486f <= _wgslsmith_f_op_f32(ceil(var_0.x)), 1u <= arg_1.x))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c.x, 4294967295u, 73662u, _wgslsmith_div_u32(arg_0.c.x, 86118u)), arg_0.c), firstTrailingBit(arg_0.c)));
    let var_3 = -7244i;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = vec4<i32>(~_wgslsmith_clamp_i32(i32(-1i) * -2127i, reverseBits(-u_input.a), ~countOneBits(2147483647i)), 29721i, 0i, arg_0.a);
    let var_1 = arg_1;
    var var_2 = Struct_2(arg_0.c.zx, 23167u, arg_0.b.x);
    global0 = array<vec4<f32>, 22>();
    var_2 = Struct_2(vec2<u32>(countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, var_2.a.x, arg_0.c.x), arg_0.c.wwy), ~var_2.a.x)), _wgslsmith_mult_u32(~var_2.a.x | _wgslsmith_dot_vec4_u32(vec4<u32>(77705u, var_2.a.x, 39806u, 0u), vec4<u32>(4294967295u, arg_0.c.x, 20575u, arg_0.c.x)), var_2.a.x)), countOneBits(~firstLeadingBit(~23798u)), _wgslsmith_f_op_f32(-771f - var_1));
    return arg_0;
}

fn func_1() -> Struct_2 {
    global0 = array<vec4<f32>, 22>();
    var var_0 = func_4(func_2(Struct_1(u_input.a, global0[_wgslsmith_index_u32(max(~4294967295u, 4294967295u), 22u)], _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 25268u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))), ~min(vec3<u32>(1u, 1u, 83822u), vec3<u32>(59888u, 35104u, 4294967295u)) << (~firstTrailingBit(vec3<u32>(0u, 37734u, 31186u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(min(-866f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 900f))));
    var var_1 = global2[_wgslsmith_index_u32(~16374u, 19u)];
    var var_2 = ~(~vec3<i32>(6565i, 13108i, abs(-2147483647i)));
    let var_3 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(~var_0.c.x, _wgslsmith_clamp_u32(var_0.c.x, ~var_0.c.x, var_0.c.x)), vec2<u32>(~var_0.c.x, var_0.c.x) << (vec2<u32>(_wgslsmith_add_u32(var_0.c.x, 4294967295u), ~var_0.c.x) % vec2<u32>(32u))), var_0.c.x, 2110f);
    return Struct_2(abs(~(vec2<u32>(var_0.c.x, 85198u) >> (var_0.c.wz % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(var_3.a & vec2<u32>(var_0.c.x, 4294967295u), vec2<u32>(0u, var_3.a.x)) % vec2<u32>(32u))), _wgslsmith_dot_vec3_u32(~reverseBits(~var_0.c.zxx), firstLeadingBit(_wgslsmith_div_vec3_u32(var_0.c.wzz, vec3<u32>(var_3.a.x, 1u, var_3.a.x)))), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(0i ^ _wgslsmith_clamp_i32(u_input.a, select(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a)), u_input.a, all(vec2<bool>(false, true))), u_input.a));
    global0 = array<vec4<f32>, 22>();
    var var_1 = func_1();
    let var_2 = func_2(func_2(func_2(Struct_1(_wgslsmith_add_i32(-15781i, u_input.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(583f, 974f, var_1.c, -1000f))), vec4<u32>(4294967295u, 1u, var_1.a.x, 1u)), min(vec3<u32>(4294967295u, var_1.a.x, 1u), firstTrailingBit(vec3<u32>(var_1.a.x, 59543u, var_1.b)))), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(var_1.a.x, 0u, 0u)), vec3<u32>(529u, 1u, var_1.a.x)) >> (~vec3<u32>(var_1.b, 27900u, 22262u) % vec3<u32>(32u))), ~(~(~vec3<u32>(1u, 84132u, var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, 2039f) - var_2.b.xw)))), _wgslsmith_div_vec4_f32(var_2.b, global0[_wgslsmith_index_u32(var_2.c.x, 22u)]));
}

