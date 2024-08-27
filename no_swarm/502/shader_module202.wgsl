struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> vec4<u32> {
    let var_0 = Struct_1(1f);
    var var_1 = var_0;
    global0 = arg_0.x;
    var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(556f - var_1.a)))))));
    var_1 = var_0;
    return vec4<u32>(24260u, arg_0.x, arg_0.x, max(~u_input.d, _wgslsmith_dot_vec3_u32(~max(arg_0, arg_0), ~min(vec3<u32>(arg_0.x, u_input.d, 4196u), vec3<u32>(arg_0.x, 22953u, u_input.c.x)))));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_mod_u32(u_input.b.x, u_input.b.x);
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-(_wgslsmith_mult_i32(arg_2.x, arg_2.x) & _wgslsmith_mult_i32(arg_2.x, 1i)), _wgslsmith_div_i32(arg_2.x, firstLeadingBit(-31432i) >> (_wgslsmith_sub_u32(0u, u_input.a.x) % 32u))), arg_2.yz);
    let var_1 = ~(4294967295u & ~(~u_input.d)) << (~112u % 32u);
    var var_2 = func_3(select(min(u_input.a.wxy, u_input.c.zxy), u_input.a.xxy, true | (var_0.x == _wgslsmith_sub_i32(var_0.x, arg_2.x))), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.x, _wgslsmith_mult_i32(2147483647i, 1i)), _wgslsmith_mult_i32(51801i, -5997i)));
    var_2 = select(max(_wgslsmith_add_vec4_u32(countOneBits(max(u_input.c, u_input.a)), ~(~u_input.c)), vec4<u32>(~64070u, arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_1), var_2.yw), max(~arg_0, var_2.x))), (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.b), u_input.c.x, var_2.x << (20476u % 32u), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(36554u, var_2.x, arg_0, 4294967295u))) >> ((~u_input.c ^ u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(select(~arg_0, ~114146u, true), _wgslsmith_clamp_u32(22872u, arg_0 | var_2.x, max(56752u, 3164u)), countOneBits(_wgslsmith_add_u32(1u, arg_0)), 4294967295u) % vec4<u32>(32u)), true);
    return 772f;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> f32 {
    global0 = 1u;
    let var_0 = Struct_1(arg_0.a);
    let var_1 = all(!select(!vec2<bool>(arg_3.x, false), !select(arg_3.xz, vec2<bool>(arg_3.x, true), arg_3.x), vec2<bool>(true, any(vec3<bool>(false, false, true)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, var_0.a)), vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a)), false)) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-465f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.a)))))));
    global0 = 11608u;
    return _wgslsmith_f_op_f32(func_2(~(arg_2.x >> (1u % 32u)), var_2, ~(-_wgslsmith_add_vec4_i32(max(vec4<i32>(2147483647i, -16586i, -21964i, arg_1), vec4<i32>(20792i, arg_1, arg_1, arg_1)), vec4<i32>(arg_1, -1i, 32446i, 2147483647i))), arg_0));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = arg_1;
    var_0 = arg_1;
    let var_3 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(-var_3.a));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec3_i32(-min(reverseBits(vec3<i32>(1i, 1i, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(-44013i, 2147483647i, 34648i), vec3<i32>(-9092i, 0i, 0i))), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-31528i, 2147483647i, 33673i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(0i, _wgslsmith_mult_i32(-6812i, 1i), _wgslsmith_clamp_i32(441i, 1i, -46974i))) & ~vec3<i32>(0i, firstTrailingBit(2147483647i), ~(-33876i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * arg_0.a));
    var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1949f, var_1.a)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -336f)), -18065i);
    var var_2 = Struct_1(arg_0.a);
    let var_3 = arg_2.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true, true, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 1u, 4294967295u), u_input.a.zzw, false), vec3<u32>(u_input.d, 4294967295u, 55776u)) < 1u);
    let var_1 = func_5(func_4(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(-1000f), 1i, ~u_input.b, !var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1142f)))), Struct_1(_wgslsmith_div_f32(115f, _wgslsmith_f_op_f32(f32(-1f) * -118f))), ~1i), select(vec4<bool>(all(vec3<bool>(var_0.x, true, false)), !(u_input.c.x > u_input.c.x), var_0.x, (u_input.d < 4294967295u) | true), vec4<bool>(true, true, false, any(var_0.zx) && any(vec4<bool>(var_0.x, false, false, var_0.x))), select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x)), !select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, false)), !vec4<bool>(true, var_0.x, false, true))), select(!(!(!vec4<bool>(var_0.x, false, var_0.x, var_0.x))), select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), vec4<bool>(var_0.x, true, all(vec3<bool>(false, false, false)), any(vec3<bool>(true, var_0.x, var_0.x))), select(var_0.x, true, var_0.x)), true), select(var_0.xy, vec2<bool>(true, _wgslsmith_f_op_f32(func_2(u_input.a.x, vec2<f32>(-1000f, -142f), vec4<i32>(18567i, 0i, -2147483647i, 0i), Struct_1(-205f))) <= 1522f), true));
    var var_2 = u_input.a.x >= ~39477u;
    var_2 = !all(!select(select(vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x), vec2<bool>(true, true)), !vec2<bool>(var_0.x, var_0.x), var_0.x));
    var_2 = true;
    var var_3 = Struct_1(var_1.a);
    var var_4 = var_1;
    var_4 = func_4(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-612f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) - 616f))), _wgslsmith_f_op_f32(round(1077f))), func_4(vec2<f32>(_wgslsmith_f_op_f32(max(-1464f, _wgslsmith_f_op_f32(var_1.a * 1427f))), _wgslsmith_f_op_f32(sign(751f))), func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1073f, -963f), vec2<f32>(-1752f, var_1.a), var_0.yx)))), var_1, 1i), _wgslsmith_add_i32(~(-2147483647i), ~1i)), 14831i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(max(u_input.d, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 53307u), vec4<u32>(u_input.a.x, 78908u, u_input.b.x, u_input.d))) ^ _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 64889u), vec2<u32>(13243u, 0u)), 0u, u_input.c.x), _wgslsmith_mult_u32(0u, ~_wgslsmith_clamp_u32(4294967295u, 0u, 1u)), 1u));
}

