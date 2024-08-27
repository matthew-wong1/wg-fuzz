struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), i32(-2147483648));

var<private> global1: array<vec4<bool>, 4>;

var<private> global2: Struct_1 = Struct_1(-2094f);

var<private> global3: f32 = -972f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2) -> f32 {
    let var_0 = 2147483647i;
    global2 = Struct_1(_wgslsmith_f_op_f32(-176f * global2.a));
    var var_1 = ~(i32(-1i) * -2147483647i);
    var_1 = u_input.a.x;
    let var_2 = vec4<i32>(var_0, _wgslsmith_sub_i32(global0.x, countOneBits(var_0)), select(global0.x, -arg_0.x, true), -(~(47537i >> (~u_input.b.x % 32u))));
    return arg_1;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.a));
    let var_1 = var_0;
    global3 = _wgslsmith_f_op_f32(func_3(vec2<i32>(-max(global0.x, reverseBits(global0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 1i, -1i) << (max(u_input.b, vec3<u32>(10973u, u_input.b.x, arg_2.x)) % vec3<u32>(32u)), abs(u_input.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2126f * _wgslsmith_f_op_f32(round(var_1.a))) * -1569f))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.a, 648f), _wgslsmith_f_op_f32(floor(979f)), true)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, -639f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) - _wgslsmith_f_op_f32(floor(var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(677f + global2.a)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1055f, _wgslsmith_f_op_f32(func_3(-(~vec2<i32>(-1i, arg_0)), _wgslsmith_f_op_f32(abs(-386f)), Struct_2(var_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1190f, -1252f) - -1000f)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(f32(-1f) * -1299f)) * _wgslsmith_f_op_f32(floor(2719f)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.a << (vec3<u32>(_wgslsmith_dot_vec4_u32(select(countOneBits(vec4<u32>(1009u, u_input.b.x, 93680u, 0u)), countOneBits(vec4<u32>(28739u, 0u, 4294967295u, u_input.b.x)), select(true, false, true)), ~max(vec4<u32>(4294967295u, 61928u, u_input.b.x, 56004u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), select(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.zx, _wgslsmith_add_vec2_u32(vec2<u32>(22048u, u_input.b.x), u_input.b.zy)), false), 1u) % vec3<u32>(32u));
    var var_1 = select(~(~firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, u_input.b.x))), reverseBits(_wgslsmith_clamp_u32(u_input.b.x, max(~u_input.b.x, _wgslsmith_clamp_u32(0u, 85435u, u_input.b.x)), u_input.b.x)), true);
    let var_2 = ~(~countOneBits(u_input.a.yy)) ^ ~min(~u_input.a.zz, (u_input.a.yy >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(u_input.a.xy, arg_3));
    var var_3 = arg_1;
    let var_4 = arg_0;
    return func_2(-56684i, !all(vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_u32(vec3<u32>(72410u, u_input.b.x, ~21013u), ~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), vec3<u32>(12082u, 42298u, 4291u), u_input.b ^ vec3<u32>(1u, u_input.b.x, 1u)))).a;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = min(firstTrailingBit(~u_input.b.x >> (_wgslsmith_mult_u32(70337u, 56486u) % 32u)), u_input.b.x) << (countOneBits(u_input.b.x) % 32u);
    var var_1 = u_input.a & -firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global0.x, arg_3) ^ vec3<i32>(u_input.a.x, -16860i, 19839i), -vec3<i32>(52469i, arg_1, u_input.a.x)));
    var var_2 = _wgslsmith_f_op_f32(-func_2(45295i, true, ~(~(~vec3<u32>(18674u, var_0, var_0)))).a.a);
    var var_3 = reverseBits(var_0);
    let var_4 = ~29407u;
    return func_2(select(var_1.x ^ arg_3, abs(2147483647i), true), true, u_input.b);
}

fn func_1() -> Struct_2 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1703f - _wgslsmith_f_op_f32(f32(-1f) * -1146f)), -2156f, true)) - global2.a);
    global1 = array<vec4<bool>, 4>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(520f - 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a, global2.a)) * _wgslsmith_f_op_f32(f32(-1f) * -573f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(150f + global2.a))), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global2.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(1665f)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<f32>(-1267f, -362f), vec2<bool>(true, (u_input.a.x ^ u_input.a.x) <= -1i))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, 292f) - vec2<f32>(var_0.x, -622f)))));
    let var_2 = func_5(var_0.x, -(~(0i & u_input.a.x)), Struct_2(func_4(func_2(_wgslsmith_mult_i32(u_input.a.x, -47178i), all(vec3<bool>(true, false, false)), vec3<u32>(u_input.b.x, u_input.b.x, 1u)), Struct_1(global2.a), u_input.a.x, vec2<i32>(_wgslsmith_mult_i32(global0.x, -26435i), -45187i))), ~u_input.a.x);
    return func_5(var_1.x, -2147483647i, Struct_2(Struct_1(var_2.a.a)), global0.x);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2) -> i32 {
    return 1i ^ _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(-global0.x, u_input.a.x), -7749i), -12290i, ~(-u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_i32(_wgslsmith_add_i32(func_6(vec2<bool>(true, true), func_1()), u_input.a.x), -2147483647i);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), global2.a));
    global0 = vec2<i32>(-1i, -u_input.a.x);
    let var_2 = vec4<bool>(true, false, all(vec4<bool>(all(vec2<bool>(true, true)), select(u_input.b.x > 4294967295u, true, all(vec3<bool>(true, false, true))), true, true)), true);
    var_0 = u_input.a.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a * 496f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(516f + _wgslsmith_f_op_f32(-630f + -810f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(~vec2<i32>(firstTrailingBit(0i), -14811i), u_input.a.yy));
}

