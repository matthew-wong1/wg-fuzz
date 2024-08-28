struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<f32>, 32>;

var<private> global2: array<f32, 18> = array<f32, 18>(235f, -660f, 2164f, 611f, -358f, 1000f, 1569f, -1604f, 2138f, 2110f, -1121f, -611f, 2836f, -1325f, 267f, -1000f, -904f, 213f);

var<private> global3: array<vec2<u32>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global3 = array<vec2<u32>, 30>();
    let var_0 = arg_1.a;
    return 4294967295u;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    global2 = array<f32, 18>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_1.a, 18u)], -750f)) * 145f))), -775f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1694f, global2[_wgslsmith_index_u32(~0u << (u_input.a % 32u), 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(101438u, 18u)]) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 18u)]))), !(!global0.x))));
    var var_1 = -755f;
    global2 = array<f32, 18>();
    var var_2 = Struct_1(1u);
    return abs(select(var_2.a, ~(~(~46502u)), any(select(vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, false), global0.x), true))));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(func_4(~u_input.d.yx, Struct_1(_wgslsmith_add_u32(func_3(Struct_1(23978u), Struct_1(u_input.a), Struct_1(u_input.a)), u_input.a)), abs(_wgslsmith_clamp_i32(countOneBits(-43570i), _wgslsmith_div_i32(u_input.d.x, -56131i), u_input.c.x))));
    global1 = array<vec4<f32>, 32>();
    var var_1 = Struct_1(~(~(~0u)));
    global1 = array<vec4<f32>, 32>();
    let var_2 = _wgslsmith_f_op_f32(round(212f));
    return vec3<bool>(false, firstLeadingBit(~_wgslsmith_mult_u32(u_input.a, 4294967295u)) <= _wgslsmith_div_u32(~(~65222u), ~u_input.a), global0.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = select(!arg_0.zxx, !select(arg_0.zww, func_2(), func_2()), !arg_0.x);
    let var_1 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 4294967295u, ~(~u_input.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_1.a, 1u), ~vec3<u32>(1u, arg_1.a, u_input.b.x), vec3<u32>(1u, 1u, arg_1.a) >> (vec3<u32>(arg_1.a, 5388u, u_input.a) % vec3<u32>(32u))) | _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, arg_1.a), vec3<u32>(3150u, var_1.a, 16700u)), abs(vec3<u32>(4294967295u, 0u, u_input.a)))), 32u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(select(~_wgslsmith_mult_u32(34394u, u_input.b.x) >> (u_input.b.x % 32u), ~(~(~1u)), global0.x), 32u)] - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(select(vec4<bool>(false, global0.x, true, true), vec4<bool>(false, false, global0.x, false), false), Struct_1(48017u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 18u)], 476f, 159f, -1000f)), !select(vec4<bool>(false, global0.x, true, false), vec4<bool>(global0.x, true, global0.x, global0.x), false))))));
    global0 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-279f, 917f)) - _wgslsmith_f_op_f32(sign(-210f))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, global0.x, global0.x, false), Struct_1(u_input.b.x))).x)), global0.x != false, any(vec2<bool>(false, false)));
    var var_1 = vec3<u32>(~u_input.a, u_input.b.x, u_input.a);
    global0 = vec3<bool>(false, false, false);
    var var_2 = vec3<bool>(false, true, !select(global0.x, true, (u_input.c.x ^ u_input.c.x) > u_input.c.x));
    global1 = array<vec4<f32>, 32>();
    var_1 = vec3<u32>(u_input.b.x, u_input.b.x, func_3(Struct_1(~41155u), Struct_1(select(u_input.b.x, u_input.a, true)), Struct_1(0u))) | vec3<u32>(max(reverseBits(70211u), ~var_1.x) ^ 1u, ~4294967295u, ~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, 0i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1519f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1226f - 249f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 18u)] * -816f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yy * var_0.ww))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yx * var_0.zx), vec2<f32>(var_0.x, 1000f)), true))), -_wgslsmith_sub_vec3_i32(u_input.d, select(u_input.d, countOneBits(vec3<i32>(-2147483647i, 1i, 0i)), vec3<bool>(global0.x, false, global0.x))), -1792f);
}

