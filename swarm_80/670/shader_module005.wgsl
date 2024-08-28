struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: Struct_2 = Struct_2(517f, 1u, Struct_1(true, vec4<u32>(1u, 4294967295u, 0u, 13524u), vec2<f32>(1000f, -2295f), 43796u));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = -(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -u_input.c.x, -1i), vec3<i32>(u_input.d, 1i, -2147483647i)) ^ vec3<i32>(0i, -abs(2895i), u_input.c.x));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(global1.a, global1.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c.x)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global1.c.c.x)))) * var_1.x), ~(i32(-1i) * -min(var_0.x, -2147483647i)), select(vec4<i32>(-26265i, ~(-1i), firstTrailingBit(u_input.c.x), reverseBits(var_0.x)), min(vec4<i32>(u_input.d, var_0.x, u_input.c.x, var_0.x), vec4<i32>(var_0.x, -26809i, 81151i, u_input.d)) >> ((vec4<u32>(1u, 83787u, global1.c.d, 42996u) & global1.c.b) % vec4<u32>(32u)), false) >> (~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global1.c.b.x, 0u, 0u, 0u)), global1.c.b, ~global1.c.b) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global1.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), var_1.x, global1.a)));
    let var_4 = abs(~(~_wgslsmith_mult_u32(50071u ^ u_input.a.x, 1u)));
    return 0i;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(round(global1.a)), ~47536i, vec4<i32>(func_3(), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c.x, u_input.d, u_input.d, -48062i) ^ vec4<i32>(-2147483647i, u_input.c.x, 20973i, -1i), vec4<i32>(u_input.c.x, -6496i, 2147483647i, u_input.d)), -vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x)), i32(-1i) * -3513i, 2147483647i));
    var var_1 = Struct_2(global1.a, firstLeadingBit(347u), Struct_1(true, global1.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.c.c + arg_2.c.c) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-232f, 1145f), vec2<f32>(-209f, arg_1))))), select(max(arg_0.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), arg_3), true) & arg_0.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.c.x));
    let var_3 = 0i;
    var var_4 = 34944u;
    return arg_2.c;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = vec4<bool>(true, !((u_input.d & abs(u_input.c.x)) != (i32(-1i) * -2147483647i)), true, var_0.c.a);
    var var_2 = var_0.c;
    var_2 = global1.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_2.c.x));
    return var_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = global1.c.c.x;
    let var_1 = -365f;
    let var_2 = _wgslsmith_sub_i32(i32(-1i) * -13563i, _wgslsmith_sub_i32(countOneBits(arg_2.x), u_input.d));
    var var_3 = !all(func_4(-887f, Struct_2(-1000f, _wgslsmith_clamp_u32(16607u, arg_1, arg_1), func_2(global1.c.b.zyw, global1.c.c.x, Struct_2(940f, 0u, arg_3), global1.c.b.wy))));
    let var_4 = !func_4(var_1, Struct_2(arg_3.c.x, ~arg_1 | 46396u, Struct_1(arg_2.x < -2147483647i, _wgslsmith_sub_vec4_u32(u_input.e, global1.c.b), vec2<f32>(arg_3.c.x, -970f), ~global1.b))).x;
    return arg_3.b.yw;
}

fn func_5(arg_0: vec2<i32>) -> vec4<i32> {
    global0 = array<vec2<i32>, 9>();
    var var_0 = 22633u;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(sign(global1.c.c.x)), u_input.d, ~_wgslsmith_div_vec4_i32(abs(~vec4<i32>(arg_0.x, u_input.d, arg_0.x, u_input.d)), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-21889i, -11231i, arg_0.x, -1i), vec4<i32>(arg_0.x, 2147483647i, 1i, u_input.c.x)))));
    var_0 = 5643u;
    global1 = Struct_2(var_1.a, ~_wgslsmith_clamp_u32(global1.c.d, global1.b, 23975u), func_2(abs(abs(vec3<u32>(8533u, 1u, u_input.e.x))), var_1.a, Struct_2(_wgslsmith_f_op_f32(round(-554f)), 0u, func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 35666u), vec3<u32>(global1.c.d, global1.b, 21524u)), _wgslsmith_f_op_f32(f32(-1f) * -2055f), Struct_2(1115f, 72615u, Struct_1(true, global1.c.b, global1.c.c, u_input.e.x)), global1.c.b.xx << (u_input.e.ww % vec2<u32>(32u)))), global1.c.b.ww));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<i32>(u_input.c.x, u_input.c.x >> (33635u % 32u)) << ((vec2<u32>(1u, 0u) << (func_1(vec4<bool>(false, true, true, global1.c.a), 4294967295u, vec3<i32>(2147483647i, u_input.d, -34066i), global1.c) % vec2<u32>(32u))) % vec2<u32>(32u))) | vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, 11763i) ^ vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), reverseBits(vec3<i32>(-11015i, -2147483647i, -1i))), 25279i, u_input.c.x), _wgslsmith_div_i32(~(~(-1i)), min(2147483647i, -1i ^ u_input.d)), ~_wgslsmith_sub_i32(-1i, reverseBits(u_input.d)), abs(~(-8863i) >> (0u % 32u)));
    global1 = Struct_2(-744f, ~abs(~global1.c.b.x), global1.c);
    global0 = array<vec2<i32>, 9>();
    let var_1 = _wgslsmith_f_op_f32(-global1.c.c.x);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(851f, _wgslsmith_div_f32(-299f, -1000f)))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.d, -2147483647i, var_0.x), vec4<i32>(u_input.c.x, -23214i, 5447i, var_0.x)), var_0.x), -(~(-16382i)) ^ ~u_input.d), select(-firstTrailingBit(reverseBits(vec4<i32>(var_0.x, var_0.x, -10540i, u_input.d))), select(func_5(u_input.c) << (~u_input.e % vec4<u32>(32u)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, var_0.x, 1i, -6260i), vec4<i32>(-20074i, u_input.d, var_0.x, u_input.c.x))), true), vec4<bool>(global1.c.a, true, all(select(vec4<bool>(true, false, global1.c.a, true), vec4<bool>(global1.c.a, false, global1.c.a, false), global1.c.a)), any(!vec3<bool>(true, global1.c.a, global1.c.a)))));
    let var_3 = !(!vec4<bool>(global1.c.a, -1241f >= _wgslsmith_f_op_f32(abs(global1.c.c.x)), false, true));
    let var_4 = abs(-4076i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1)), 616f, var_2.a), vec3<u32>(u_input.a.x, 85963u, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.e.x), global1.c.b.x, ~9321u), vec3<u32>(~global1.b, ~global1.b, ~3027u))), global1.c.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), var_2.a))), var_1)));
}

