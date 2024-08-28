struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(308f, -1708f), vec2<f32>(1454f, 697f), vec2<f32>(-928f, -1054f), vec2<f32>(-132f, -332f));

var<private> global2: array<Struct_1, 12>;

var<private> global3: vec3<u32>;

var<private> global4: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec2<i32> {
    var var_0 = ~(-select(_wgslsmith_add_i32(u_input.a, abs(u_input.a)), 1i ^ ~u_input.a, all(arg_0.b.zz)));
    global0 = ~(~arg_0.a.x);
    var var_1 = Struct_2(vec2<i32>(u_input.a, u_input.a), vec4<bool>(true, arg_0.b.x, true, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1204f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - -1462f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-446f - 509f), _wgslsmith_f_op_f32(abs(1316f)))), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(sign(arg_1)))));
    var var_3 = Struct_2(-(-vec2<i32>(var_1.a.x, -1i) | firstLeadingBit(select(var_1.a, vec2<i32>(var_1.a.x, u_input.a), var_1.b.x))), vec4<bool>(var_1.b.x, false, ((global3.x & global3.x) & _wgslsmith_clamp_u32(4294967295u, 47117u, arg_0.a.x)) <= _wgslsmith_add_u32(~44171u, u_input.d), var_1.b.x));
    return max(var_1.a, vec2<i32>(~(u_input.a ^ u_input.a), abs(u_input.a))) << (min(arg_0.a.xz, min(u_input.c, global3.xy)) % vec2<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = !vec2<bool>(arg_0.c <= -361f, -1094f != arg_0.c);
    let var_1 = _wgslsmith_f_op_f32(-arg_0.c);
    let var_2 = global1[_wgslsmith_index_u32(13989u, 4u)];
    var var_3 = ~14494u;
    global0 = ~46270u;
    return firstTrailingBit(_wgslsmith_div_vec2_i32(min(vec2<i32>(-2147483647i, countOneBits(u_input.a)), ~(-vec2<i32>(0i, arg_1.a.x))), -(~vec2<i32>(u_input.a, 43722i))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    global1 = array<vec2<f32>, 4>();
    let var_0 = _wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(u_input.a | -1i, u_input.a), -u_input.a), _wgslsmith_add_vec2_i32(func_4(global2[_wgslsmith_index_u32(1u, 12u)], Struct_2(func_3(Struct_1(arg_2.a, vec4<bool>(arg_3, arg_2.b.x, true, false), arg_2.c), 1052f, arg_2.c), !arg_2.b)), ~(vec2<i32>(-24267i, u_input.a) >> (_wgslsmith_div_vec2_u32(global3.xy, vec2<u32>(arg_2.a.x, u_input.d)) % vec2<u32>(32u)))));
    global0 = ~(max(1u, ~countOneBits(global3.x)) & (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 55309u, 1u) >> (vec3<u32>(49211u, 0u, global3.x) % vec3<u32>(32u)), ~arg_2.a) << (~select(11044u, global3.x, arg_1) % 32u)));
    global2 = array<Struct_1, 12>();
    var var_1 = !(-462f < arg_0.x);
    return min(vec2<i32>(-var_0.x, var_0.x) << (vec2<u32>(arg_2.a.x ^ arg_2.a.x, _wgslsmith_add_u32(~arg_2.a.x, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(var_0, select(var_0, -vec2<i32>(-60814i, u_input.a), vec2<bool>(true, true))), var_0));
}

fn func_1() -> Struct_2 {
    var var_0 = ~_wgslsmith_clamp_u32(0u, global3.x, min(~u_input.c.x, 1u)) < 4474u;
    global0 = 1u;
    global2 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_f_op_f32(floor(-1000f));
    let var_2 = !(!(all(vec3<bool>(true, true, true)) == (2147483647i == u_input.a)));
    return Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), abs(vec2<i32>(944i, -28479i))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, 660f, -1792f, -503f) * vec4<f32>(-501f, 1198f, -169f, -2129f)), all(vec4<bool>(var_2, false, false, false)), Struct_1(vec3<u32>(28943u, 0u, 22391u), vec4<bool>(var_2, var_2, true, false), 106f), false)), vec2<i32>(-countOneBits(u_input.a), _wgslsmith_div_i32(u_input.a, u_input.a))), !(!select(select(vec4<bool>(false, var_2, var_2, var_2), vec4<bool>(false, var_2, true, var_2), vec4<bool>(var_2, var_2, var_2, false)), select(vec4<bool>(var_2, var_2, false, false), vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(var_2, var_2, var_2, false)), vec4<bool>(true, var_2, true, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2163f) * 1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-499f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - -1000f))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, reverseBits(_wgslsmith_dot_vec2_u32(~(~global3.yx), global3.xx | global3.yz))), 12u)];
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(sign(var_2.c))), var_2.c, true));
    let var_4 = any(select(var_0.b.zyx, var_0.b.wxy, true));
    var var_5 = global2[_wgslsmith_index_u32(firstLeadingBit(~var_2.a.x), 12u)];
    global4 = select(70500u, 1u, func_1().b.x);
    var_2 = Struct_1(var_5.a, vec4<bool>(all(vec4<bool>(true, false, false, all(var_2.b))), var_0.b.x, all(vec3<bool>(var_2.b.x, true, u_input.d >= 4294967295u)), false), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1769f * var_5.c)), !(any(var_0.b.xw) & true))));
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1747f, 1315f, var_2.c, -1349f) * _wgslsmith_div_vec4_f32(vec4<f32>(var_3, -1601f, var_2.c, 1174f), vec4<f32>(-1554f, 206f, var_3, 1349f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, -2539f, -655f, var_2.c) * vec4<f32>(var_3, var_5.c, var_5.c, -1046f)))))), 628f);
}

