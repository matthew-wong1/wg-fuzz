struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-517f, 508f), vec2<u32>(26047u, 41239u), vec3<i32>(29657i, i32(-2147483648), 0i), vec3<i32>(41225i, 53695i, -29920i)));

var<private> global1: array<u32, 13>;

var<private> global2: bool = true;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 33679u, 15063u, 1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = !select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false)), true, all(vec2<bool>(false, false))), abs(u_input.a) == -u_input.c.x);
    global1 = array<u32, 13>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1540f, 804f))), vec2<u32>(~u_input.b.x, global3.x), u_input.c.wzx, _wgslsmith_mult_vec3_i32(u_input.c.xzz, vec3<i32>(u_input.d.x, 378i, 12587i) & (u_input.c.wzw & global0.a.c))));
    let var_2 = global0.a;
    var var_3 = select(vec4<bool>(all(select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), var_0.x))), false, !(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.b.x, var_1.a.b.x, 18210u), u_input.e) > _wgslsmith_dot_vec2_u32(var_1.a.b, vec2<u32>(u_input.b.x, 0u))), true), vec4<bool>(var_0.x, var_0.x, false, any(!(!vec4<bool>(false, true, true, var_0.x)))), vec4<bool>(all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, false), vec4<bool>(false, var_0.x, false, var_0.x)), vec4<bool>(true, true, var_0.x, var_0.x), !vec4<bool>(true, true, var_0.x, var_0.x))), true, all(select(var_0.zx, select(vec2<bool>(false, var_0.x), var_0.zw, var_0.ww), true)), var_0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1003f)) + var_1.a.a.x) - _wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(max(global0.a.a.x, -993f)))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-global0.a.a.x)), global0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1186f * global0.a.a.x) + global0.a.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.a.a.x)), 1168f, _wgslsmith_div_f32(1000f, -1857f), global0.a.a.x))));
    global1 = array<u32, 13>();
    var var_1 = ~(-17339i >> (~global1[_wgslsmith_index_u32(global3.x, 13u)] % 32u));
    global3 = abs(firstTrailingBit(vec4<u32>(~42236u, 92092u, ~global0.a.b.x, global1[_wgslsmith_index_u32(71426u, 13u)])) << (~((vec4<u32>(59414u, 12647u, 1u, u_input.b.x) | vec4<u32>(global0.a.b.x, 4294967295u, global3.x, 4294967295u)) & vec4<u32>(global3.x, global3.x, global3.x, 0u)) % vec4<u32>(32u)));
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(-1061f))), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * global0.a.a.x), _wgslsmith_f_op_f32(select(-342f, 503f, false)))))), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(func_3()), true))));
    return u_input.e.x;
}

fn func_1(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(select(global0.a.a.x, -435f, false));
    global3 = ~vec4<u32>(select(_wgslsmith_div_u32(~global1[_wgslsmith_index_u32(global3.x, 13u)], _wgslsmith_mod_u32(1u, 3652u)), _wgslsmith_add_u32(global3.x, ~global1[_wgslsmith_index_u32(4294967295u, 13u)]), ~1u > countOneBits(global3.x)), func_2(), u_input.e.x, u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.a.x)) - var_0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-392f - 2728f), _wgslsmith_f_op_f32(-var_0), true)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(532f)), _wgslsmith_f_op_f32(arg_0 + var_0))) + arg_0));
    var var_2 = global0.a;
    let var_3 = vec3<bool>(!any(vec3<bool>(false, all(vec4<bool>(true, false, true, true)), true)), all(vec2<bool>(true, true)), ~(~(~var_2.b.x)) >= firstTrailingBit(20944u));
    return true;
}

fn func_4(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = ~firstLeadingBit(reverseBits(vec4<u32>(u_input.e.x, 4294967295u, global3.x >> (global3.x % 32u), u_input.b.x << (u_input.e.x % 32u))));
    var var_1 = _wgslsmith_add_i32(u_input.c.x, -(_wgslsmith_clamp_i32(0i, abs(u_input.c.x), firstLeadingBit(global0.a.d.x)) & global0.a.d.x));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.a.x, -1884f), vec2<f32>(global0.a.a.x, -544f)) + global0.a.a)), ~vec2<u32>(4294967295u, 39138u) & vec2<u32>(u_input.e.x, ~global0.a.b.x), ~_wgslsmith_div_vec3_i32(vec3<i32>(global0.a.c.x, 0i, global0.a.d.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-50584i, global0.a.d.x, u_input.d.x), u_input.c.xyw)), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, 0i, 14800i), global0.a.d)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, 290f))) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.a.x, 198f), vec2<f32>(-664f, arg_0), false)), var_2.a.a, vec2<bool>(true, false))), select(!vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, true)))), select(firstLeadingBit(~var_0.yy), ~(vec2<u32>(global3.x, 20107u) | vec2<u32>(global1[_wgslsmith_index_u32(global3.x, 13u)], 72832u)), true), -min(_wgslsmith_clamp_vec3_i32(var_2.a.d, vec3<i32>(var_2.a.c.x, -19912i, 1i), vec3<i32>(var_2.a.c.x, var_2.a.c.x, global0.a.d.x)), firstTrailingBit(vec3<i32>(-1i, -1i, 2147483647i))), reverseBits(_wgslsmith_sub_vec3_i32(countOneBits(var_2.a.d), -vec3<i32>(-1i, u_input.c.x, -10289i)))));
    var_1 = ~(i32(-1i) * -(~(-2147483647i)));
    return ~100761u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<u32>(min(global0.a.b.x, ~func_4(_wgslsmith_f_op_f32(f32(-1f) * -230f), func_1(global0.a.a.x, global0.a.c.x))), u_input.b.x, global3.x, global1[_wgslsmith_index_u32(max(1u, ~global0.a.b.x), 13u)]);
    var var_0 = 16396i;
    var var_1 = Struct_2(global0.a);
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    var var_2 = Struct_2(var_1.a);
    var var_3 = var_1.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(632f, ~(select(vec3<u32>(1u, global0.a.b.x, 1u), vec3<u32>(u_input.e.x, var_1.a.b.x, 1u) & vec3<u32>(0u, var_2.a.b.x, var_2.a.b.x), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)) << (~u_input.e % vec3<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a.x * -859f) * _wgslsmith_f_op_f32(-270f - _wgslsmith_f_op_f32(var_1.a.a.x + var_2.a.a.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), vec4<i32>(u_input.a, select(_wgslsmith_sub_i32(16826i, select(1i, 1i, true)), ~_wgslsmith_sub_i32(2147483647i, var_1.a.c.x), all(vec2<bool>(true, true))), -global0.a.c.x, global0.a.d.x | -(~u_input.d.x)));
}

