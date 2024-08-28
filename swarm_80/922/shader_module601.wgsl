struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: u32;

var<private> global2: f32 = 166f;

var<private> global3: vec2<f32> = vec2<f32>(125f, 1167f);

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    global4 = arg_2;
    let var_0 = !arg_1;
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 1273f) - vec2<f32>(-539f, 1912f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.x, -243f))))));
    global1 = _wgslsmith_sub_u32(~arg_0.x, 38181u);
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), -1208f, _wgslsmith_f_op_f32(419f + -728f))))));
    return Struct_1(arg_0.x);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = ~vec4<i32>(~_wgslsmith_mult_i32(0i, 1i), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x, countOneBits(u_input.a.x)), u_input.a.x), u_input.a.x, 52235i);
    let var_1 = func_2(~(~(~vec4<u32>(0u, arg_0, 1u, 1u)) & vec4<u32>(4294967295u, 22034u, abs(arg_1.a), firstTrailingBit(arg_0))), all(vec3<bool>(true, false, true)), ~(~(_wgslsmith_sub_i32(u_input.a.x, -1i) << (_wgslsmith_sub_u32(23961u, 1u) % 32u))), select(select(vec3<bool>(false, any(vec2<bool>(false, true)), true), vec3<bool>(all(vec3<bool>(false, false, true)), true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(1i != u_input.a.x, true, all(vec3<bool>(false, true, false)))), vec3<bool>(true, true, true)));
    var var_2 = func_2(countOneBits(select(~vec4<u32>(arg_0, 22798u, 53441u, 4294967295u), abs(vec4<u32>(40011u, 57992u, 1u, 91326u)), vec4<bool>(true, true, true, true))) | (abs(select(vec4<u32>(var_1.a, arg_1.a, 1u, arg_1.a), vec4<u32>(66538u, var_1.a, arg_0, arg_0), vec4<bool>(true, true, false, true))) ^ ~reverseBits(vec4<u32>(arg_1.a, 24999u, arg_1.a, var_1.a))), any(select(vec2<bool>(all(vec3<bool>(true, false, true)), any(vec4<bool>(false, false, false, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(true, false)), true))), _wgslsmith_mod_i32(var_0.x, u_input.a.x), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), false));
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.a, var_1.a, arg_0), vec3<u32>(var_2.a, var_1.a, 9300u), vec3<bool>(true, false, true)), reverseBits(vec3<u32>(1u, arg_1.a, var_1.a))) >> (0u % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a, 0u) << (vec2<u32>(1u, arg_1.a) % vec2<u32>(32u)), ~vec2<u32>(22972u, 4294967295u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(23053u, arg_0), vec2<u32>(4294967295u, arg_0))), 23275u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a, arg_1.a, ~(~var_2.a)), vec3<u32>(0u, countOneBits(~var_2.a), _wgslsmith_sub_u32(73917u, var_1.a))));
    let var_4 = ~vec2<i32>(18128i, ~u_input.a.x);
    return (var_0.x >> (14983u % 32u)) | ((var_4.x & _wgslsmith_mult_i32(var_0.x, -10769i)) << (4294967295u % 32u));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<i32>) -> vec2<f32> {
    var var_0 = -u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-1f);
    global0 = 0u;
    let var_2 = ~u_input.a.x ^ -(~u_input.a.x);
    var var_3 = select((~abs(arg_3.x) ^ u_input.a.x) >> (arg_1.a % 32u), firstTrailingBit(arg_3.x), false & ((arg_1.a & arg_1.a) == arg_1.a));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(step(var_1, 1774f)), arg_0 & arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -612f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.yy)));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = ~(-2147483647i);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zy), arg_0.wy);
    global3 = _wgslsmith_f_op_vec2_f32(func_4(true, func_2(vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(26476u, 0u), vec2<u32>(4294967295u, 31328u)) | ~54881u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(82243u, 1u, 37000u), vec3<u32>(4294967295u, 15237u, 10645u)) >> (_wgslsmith_mult_u32(1u, 0u) % 32u)), any(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), max(i32(-1i) * -1i, u_input.a.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_0.x, 307f))))))), vec4<i32>(_wgslsmith_mult_i32(-56730i, _wgslsmith_add_i32(3437i, var_0)), -(0i >> (1u % 32u)), ~(-u_input.a.x), func_3(_wgslsmith_sub_u32(65161u, 6268u), Struct_1(4294967295u))) & -(~select(vec4<i32>(-9008i, u_input.a.x, var_0, u_input.a.x), vec4<i32>(u_input.a.x, 9348i, -23789i, u_input.a.x), true))));
    global0 = max(_wgslsmith_add_u32(_wgslsmith_sub_u32(func_2(~vec4<u32>(4294967295u, 1u, 38635u, 1u), true, countOneBits(4789i), vec3<bool>(true, true, true)).a, ~abs(4294967295u)), _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 80443u), 1u, 17240u))), ~(~firstTrailingBit(max(0u, 23586u))));
    var var_2 = Struct_1(_wgslsmith_clamp_u32(~36106u, 1u, 29955u));
    return _wgslsmith_f_op_f32(global3.x - 707f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    var var_0 = Struct_1(_wgslsmith_mult_u32(abs(1u << (1u % 32u)), 6702u));
    global3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(abs(global3.x)))), -1913f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(floor(global3.x)))) * vec2<f32>(global3.x, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1524f, -629f, -1589f, global3.x))))))));
    let var_1 = -1i;
    global4 = var_1;
    let var_2 = ~var_0.a;
    let var_3 = vec4<u32>(var_2, firstTrailingBit(1u), (var_0.a ^ ~abs(var_0.a)) & _wgslsmith_add_u32(_wgslsmith_mult_u32(var_2, ~0u), ~var_2), abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(83305u, var_0.a, 4294967295u) >> (~vec3<u32>(14861u, var_2, var_0.a) % vec3<u32>(32u)), ~(~vec3<u32>(var_2, 4294967295u, 43093u)))));
    global0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-global3.x))))), 0u);
}

