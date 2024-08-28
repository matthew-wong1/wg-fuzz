struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_2(-firstTrailingBit(-vec4<i32>(arg_0, 1i, arg_0, u_input.a.x)) >> (firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), arg_0, vec2<bool>(true, true), Struct_1(true), ~4294967295u);
    var var_1 = -3728i;
    var var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, var_0.e)), vec2<u32>(4294967295u, 4294967295u) << (select(vec2<u32>(var_0.e, 4294967295u), vec2<u32>(0u, 0u), var_0.c.x) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_sub_u32(var_0.e, firstLeadingBit(var_0.e)), var_0.e)), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(~var_0.e, 0u), var_0.e), var_0.e));
    var var_3 = ~vec2<u32>(39587u, var_2.x);
    var var_4 = var_0.d;
    return var_0.a.x;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    var var_0 = ~vec4<i32>(-12593i, -firstTrailingBit(global1.x), _wgslsmith_sub_i32(70284i, u_input.a.x >> (541u % 32u)), (i32(-1i) * -u_input.a.x) & _wgslsmith_div_i32(-global1.x, select(global1.x, -79545i, true)));
    let var_1 = _wgslsmith_div_f32(arg_3.x, _wgslsmith_div_f32(arg_3.x, 1000f));
    var_0 = -abs(~(vec4<i32>(-1i) * -vec4<i32>(1i, 2147483647i, var_0.x, global1.x)));
    var var_2 = !any(!arg_1);
    var var_3 = Struct_1(arg_1.x);
    return _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-arg_3.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> vec2<bool> {
    global0 = ~func_2(-30374i);
    let var_0 = Struct_1(true);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-917f, 122f, -377f, 684f), vec4<f32>(-549f, 1355f, -1299f, -1920f), arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1751f, -2019f, -291f, 463f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1911f, -1632f, -672f, -373f), vec4<f32>(-1480f, -274f, 861f, 842f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-876f, -1269f, -1260f, 586f), vec4<f32>(792f, -1486f, 983f, -1226f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2169f, -936f, 1000f, -290f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1011f, _wgslsmith_div_f32(-1743f, -409f), _wgslsmith_f_op_f32(func_3(arg_1.zw, arg_1.zyx, 21000u, vec3<f32>(119f, 977f, 1146f))), -1000f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-671f, -1000f, -197f, 1234f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(205f, -167f, -1627f, 1480f) + vec4<f32>(1098f, 585f, -1000f, -744f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2180f, -674f, 1859f, 1677f)))));
    var var_2 = Struct_1(arg_0.c.x & true);
    let var_3 = var_0;
    return arg_1.zz;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = arg_1.d;
    let var_1 = arg_2;
    let var_2 = ~(-_wgslsmith_sub_i32(~var_1.b, arg_1.b));
    let var_3 = 0u;
    global1 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(25668i, -1i, 0i, u_input.a.x)), -34582i, _wgslsmith_mult_i32(~arg_0, global1.x), firstTrailingBit(1i)), var_1.a | reverseBits(vec4<i32>(u_input.a.x, -14931i, var_1.a.x, 33400i))), vec4<i32>(_wgslsmith_add_i32(~(i32(-1i) * -1i), -2147483647i << (~arg_1.e % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, 66479i), vec2<i32>(2147483647i, var_1.a.x) << (vec2<u32>(var_3, 42874u) % vec2<u32>(32u))) & 0i, firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_2.b, arg_0, 37570i), -arg_1.a.x)), 2147483647i), arg_1.d.a);
    return abs(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(1u, 39047u), 33760u), ~(~1u), 68396u);
    let var_1 = 1u;
    global1 = ~func_4(-14134i, Struct_2(vec4<i32>(-35451i, -515i, global1.x, global1.x), firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), func_1(Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -2147483647i), u_input.a.x, vec2<bool>(false, true), Struct_1(true), var_1), vec4<bool>(true, false, true, false))), Struct_1(false), _wgslsmith_clamp_u32(var_1, 1u, 2055u ^ var_0.x)), Struct_2(vec4<i32>(firstTrailingBit(-2147483647i), u_input.a.x, 1i, global1.x), abs(2147483647i), !func_1(Struct_2(vec4<i32>(u_input.a.x, -1i, u_input.a.x, global1.x), u_input.a.x, vec2<bool>(false, false), Struct_1(false), var_0.x), vec4<bool>(true, false, true, true)), Struct_1(true), _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, var_1), 0u)));
    var var_2 = -17584i;
    var var_3 = !select(select(vec3<bool>(true, all(vec3<bool>(false, true, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(1u, var_0.x, 4294967295u)))), var_0.x, ~vec4<u32>(var_1 | 37668u, min(var_0.x | var_1, 1u), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_1, var_1), _wgslsmith_div_u32(60309u, var_1)), _wgslsmith_div_u32(10946u, var_1)), ~(~vec2<i32>(min(global1.x, u_input.a.x), ~u_input.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1007f, -392f)))))));
}

