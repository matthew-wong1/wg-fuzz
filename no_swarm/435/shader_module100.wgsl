struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 11258u);

var<private> global2: array<Struct_5, 32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = -284f;
    let var_1 = Struct_4(global0.a.b.c, global0.a.c.x, Struct_1(abs(u_input.a.x), global0.a.c, false, global0.a.b.b.x), _wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(abs(vec2<i32>(global0.a.c.x, 17035i)), select(global0.a.c.xw, vec2<i32>(12221i, -20179i), true)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global0.a.c.x), global0.a.c.zz)));
    var var_2 = 29883u;
    var var_3 = _wgslsmith_div_i32(global0.a.b.b.x, select(1i, 2147483647i, true));
    let var_4 = Struct_5(global0.a.b.c, var_1.c.b, _wgslsmith_f_op_f32(f32(-1f) * -783f), all(!vec4<bool>(global1.x <= u_input.a.x, var_1.a, true, true)));
    return -min(13086i, 1i);
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    global0 = Struct_3(global0.a);
    global2 = array<Struct_5, 32>();
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global0.a.b.b.yx, vec2<i32>(1i, func_3())), abs(~(func_3() ^ _wgslsmith_sub_i32(-32484i, global0.a.c.x))), arg_0.x);
    var var_1 = vec2<i32>(_wgslsmith_add_i32(-(arg_0.x ^ reverseBits(arg_0.x)), _wgslsmith_sub_i32(26276i, _wgslsmith_mult_i32(-global0.a.c.x, 52362i))), _wgslsmith_add_i32(-(~countOneBits(arg_0.x)), arg_0.x));
    return Struct_3(global0.a);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> bool {
    var var_0 = u_input.a.x;
    let var_1 = func_2(vec2<i32>(0i, 16920i));
    global0 = func_2(arg_1.zw);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, var_1.a.e, var_1.a.e))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.e, 1364f, -1799f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-400f, 821f, 402f) - vec3<f32>(473f, var_1.a.e, arg_0)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(575f, global0.a.e, 615f) * vec3<f32>(global0.a.e, global0.a.e, global0.a.e)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 1145f, 553f))))))))));
    var var_3 = 2147483647i >> (reverseBits(~global1.x) % 32u);
    return var_1.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec2<u32>(47051u, ~4294967295u);
    let var_0 = global0.a.a.x && any(vec4<bool>(!(false | global0.a.a.x), global0.a.b.c, func_1(global0.a.e, global0.a.b.b), !(global1.x == u_input.a.x)));
    let var_1 = Struct_4(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global0.a.b.b.yz, vec2<i32>(global0.a.b.b.x, -6043i)), global0.a.c.x) < _wgslsmith_sub_i32(0i, _wgslsmith_div_i32(-global0.a.b.b.x, -2147483647i | global0.a.c.x)), 1i, Struct_1(select(min(~1u, ~48127u), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, 0u))), !(global0.a.e > 719f)), vec4<i32>(35911i, global0.a.c.x, global0.a.c.x, global0.a.c.x) | global0.a.b.b, var_0, _wgslsmith_clamp_i32(-2147483647i, 1i >> (~global0.a.b.a % 32u), ~43563i)), global0.a.c.xy);
    var var_2 = Struct_5(var_0, _wgslsmith_mod_vec4_i32(abs(global0.a.c), vec4<i32>(-1i) * -vec4<i32>(var_1.b, -1i, 0i, var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.e, global0.a.e)))))), !(!(!var_0)));
    var var_3 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.c.d, global0.a.c.x, abs(var_2.b.x), func_2(vec2<i32>(i32(-1i) * -1i, ~(-21509i))).a.b.b.x), vec4<i32>(_wgslsmith_dot_vec3_i32(min(firstLeadingBit(vec3<i32>(var_1.b, var_3.c.x, 0i)), var_1.c.b.zyz & vec3<i32>(var_3.b.d, var_2.b.x, 0i)), max(-var_2.b.zyx, -vec3<i32>(12948i, 1i, 0i))), -27040i, -_wgslsmith_sub_i32(8445i, var_3.b.b.x), ~select(var_2.b.x, _wgslsmith_sub_i32(-1i, 2147483647i), 0i <= global0.a.c.x)), ~_wgslsmith_mod_vec3_u32(u_input.a, u_input.a));
}

