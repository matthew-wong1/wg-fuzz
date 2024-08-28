struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = vec2<u32>(u_input.d.x, _wgslsmith_clamp_u32(0u & global0.a.x, ~abs(~13402u), 4294967295u));
    var var_1 = _wgslsmith_div_i32(-29778i, u_input.a.x);
    return Struct_1(global0.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    var var_0 = -firstTrailingBit(~select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, 0i), vec3<i32>(u_input.a.x, -23178i, u_input.a.x)), countOneBits(vec3<i32>(0i, -5781i, u_input.a.x)), vec3<bool>(true, true, true)));
    var var_1 = vec2<u32>(1u, (min(_wgslsmith_div_u32(arg_1.a.x, arg_0.a.x), _wgslsmith_clamp_u32(4294967295u, u_input.d.x, 5913u)) & 18335u) >> (~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.b), arg_1.a.x) % 32u));
    let var_2 = arg_0;
    let var_3 = vec3<bool>(true, true, true);
    global0 = func_2(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2375f - _wgslsmith_f_op_f32(abs(-933f))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))))));
    return !vec2<bool>(all(!(!vec4<bool>(true, var_3.x, false, var_3.x))), !(!select(var_3.x, var_3.x, true)));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1260f));
    global0 = Struct_1(vec4<u32>(49007u ^ global0.a.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, global0.a.x), 1u | global0.a.x) >> (1u % 32u), u_input.d.x, 1u));
    global0 = func_2(Struct_1(~vec4<u32>(80850u | global0.a.x, 1u, u_input.b, ~1u)), -735f);
    global0 = func_2(func_2(Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 81285u), vec4<u32>(u_input.d.x, 0u, global0.a.x, global0.a.x), vec4<u32>(0u, 50090u, 0u, 17826u))), 381f), var_0.x);
    global0 = Struct_1(vec4<u32>(u_input.d.x, global0.a.x & min(u_input.d.x >> (1u % 32u), 4735u), u_input.d.x, ~global0.a.x));
    return select(!select(func_3(func_2(Struct_1(vec4<u32>(1u, global0.a.x, 24537u, 4294967295u)), 356f), func_2(Struct_1(u_input.d), var_0.x), global0.a.x ^ 4294967295u), vec2<bool>(true, true), false), vec2<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))) == !all(vec2<bool>(false, false)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), true))), func_3(func_2(func_2(Struct_1(vec4<u32>(u_input.b, 4294967295u, u_input.d.x, 5828u)), _wgslsmith_f_op_f32(var_0.x * -465f)), 1298f), func_2(Struct_1(~vec4<u32>(u_input.d.x, global0.a.x, 0u, global0.a.x)), _wgslsmith_f_op_f32(-1047f * var_0.x)), 1u).x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = vec3<bool>(_wgslsmith_add_u32(_wgslsmith_sub_u32(~39173u, 1u), select(1u, _wgslsmith_sub_u32(11007u, 5882u), true)) <= 93993u, u_input.c == u_input.a.x, !(!arg_1.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1676f * -808f), -113f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2141f)) * _wgslsmith_f_op_f32(f32(-1f) * -660f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-234f * -717f), _wgslsmith_f_op_f32(min(-615f, -396f)), true)), 1f))));
    var var_2 = !var_0.x;
    var var_3 = firstTrailingBit(~select(_wgslsmith_mult_vec2_u32(global0.a.zy, vec2<u32>(2129u, 17302u)) & ~vec2<u32>(global0.a.x, global0.a.x), (arg_3.a.yy >> (vec2<u32>(arg_3.a.x, arg_3.a.x) % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(arg_3.a.zz, arg_3.a.xy, u_input.d.yx) % vec2<u32>(32u)), true));
    let var_4 = global0.a.x;
    return 1134f;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(global0.a);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, -15898i, -1i), vec4<i32>(arg_0, -2147483647i, arg_0, arg_0)), !select(vec2<bool>(arg_1, false), vec2<bool>(arg_3, true), vec2<bool>(arg_1, arg_3)), firstLeadingBit(min(vec2<i32>(u_input.a.x, arg_0), vec2<i32>(20027i, u_input.c))), func_2(func_2(Struct_1(vec4<u32>(var_0.a.x, 27456u, global0.a.x, u_input.b)), arg_2.x), 1314f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_2.x, 1000f)), arg_2.x))), _wgslsmith_f_op_f32(-547f - 346f)));
    let var_2 = Struct_1(func_2(func_2(func_2(func_2(Struct_1(global0.a), -1305f), _wgslsmith_f_op_f32(ceil(arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1)))), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))).a);
    let var_3 = vec4<bool>(all(vec3<bool>(!arg_3, all(vec4<bool>(false, true, arg_3, true)), arg_3)), arg_1 & arg_3, !arg_1, false);
    var_0 = Struct_1(~vec4<u32>(~(~var_0.a.x), ~min(20935u, 1u), global0.a.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_2.a.x, 4294967295u), 48868u, func_2(Struct_1(var_0.a), var_1).a.x)));
    return Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(global0.a, var_0.a ^ vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, u_input.d.x)), u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(countOneBits(_wgslsmith_mult_i32(u_input.a.x, ~(-1i))), true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(147f - -333f), _wgslsmith_f_op_f32(-242f + -107f)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, 9070i, -2147483647i), vec4<i32>(u_input.a.x, 1i, u_input.c, u_input.c)) & vec4<i32>(u_input.a.x, u_input.c, u_input.c, u_input.c), !func_1(837f), u_input.a, Struct_1(vec4<u32>(4382u, global0.a.x, 1u, u_input.b)))), _wgslsmith_f_op_f32(-1794f * _wgslsmith_f_op_f32(select(803f, _wgslsmith_div_f32(-954f, -687f), true))), -1000f), false);
    global0 = Struct_1(~(min(~vec4<u32>(27984u, 64789u, 9525u, global0.a.x), global0.a >> (u_input.d % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(global0.a, vec4<u32>(0u, 31008u, 0u, u_input.d.x))));
    let var_0 = func_2(Struct_1(global0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1025f, _wgslsmith_f_op_f32(f32(-1f) * -415f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.c <= -2147483647i)), 678f));
    global0 = var_0;
    var var_1 = select(select(vec3<bool>(select(any(vec4<bool>(true, false, false, false)), false, func_1(174f).x), _wgslsmith_mod_i32(1i, u_input.c) == 50075i, true), vec3<bool>(938f <= _wgslsmith_f_op_f32(floor(842f)), true, 16750i >= _wgslsmith_dot_vec4_i32(vec4<i32>(3781i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(-1i, 1i, 2147483647i, 33624i))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false))), !select(vec3<bool>(u_input.c == u_input.a.x, true, true), vec3<bool>(true, true, true), false), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~vec4<u32>(~var_0.a.x, global0.a.x, u_input.b ^ global0.a.x, 4294967295u), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, 50660u, global0.a.x, 4294967295u), u_input.d))), u_input.c);
}

