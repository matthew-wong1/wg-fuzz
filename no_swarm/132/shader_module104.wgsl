struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: array<f32, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(69044u, 3u)], global1[_wgslsmith_index_u32(51150u, 3u)], -679f, -744f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(44601u, 3u)], -1362f, global1[_wgslsmith_index_u32(54405u, 3u)], global1[_wgslsmith_index_u32(33336u, 3u)]))))), 1000f), 1i, Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-967f, 110f, 656f, 1720f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-301f)), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 3u)], -1116f)), _wgslsmith_div_f32(-1120f, global1[_wgslsmith_index_u32(0u, 3u)]), _wgslsmith_f_op_f32(step(-507f, 1335f))))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 3u)])));
    var var_1 = -abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.a.x) ^ u_input.a.yy, min(vec2<i32>(2147483647i, var_0.b), u_input.a.zx), vec2<i32>(63005i, -1i) & vec2<i32>(u_input.a.x, -83319i))) & ~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(17057i, 3121i), u_input.a.xx & vec2<i32>(var_0.b, var_0.b)), ~reverseBits(u_input.a.yx));
    global1 = array<f32, 3>();
    global1 = array<f32, 3>();
    var var_2 = var_0;
    return 1u;
}

fn func_2() -> u32 {
    var var_0 = vec4<bool>(false, select(true, func_3() >= 0u, !all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), 1u <= ~(~_wgslsmith_clamp_u32(4294967295u, 10525u, 0u)), any(!vec4<bool>(true, true, true, any(vec2<bool>(true, false)))));
    global0 = array<Struct_2, 20>();
    var var_1 = ~vec4<i32>(1i, u_input.a.x, reverseBits(u_input.a.x), firstLeadingBit(_wgslsmith_add_i32(948i, min(-32399i, u_input.a.x))));
    var var_2 = u_input.a.x;
    let var_3 = Struct_1(vec4<f32>(-408f, 3291f, _wgslsmith_f_op_f32(sign(-1923f)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(firstLeadingBit(1u), ~1u), _wgslsmith_clamp_u32(~33481u, countOneBits(60848u), _wgslsmith_mod_u32(1u, 17105u))), 3u)]), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(abs(~(~68334u)), 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-785f + global1[_wgslsmith_index_u32(1u, 3u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1886f - -1443f) * -556f)))));
    return _wgslsmith_sub_u32(func_3(), _wgslsmith_add_u32(~4294967295u, 4294967295u));
}

fn func_4(arg_0: f32, arg_1: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -266f)))))));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(firstTrailingBit(1u), 4294967295u), ~(~(_wgslsmith_add_u32(29220u, 40169u) >> (1u % 32u))));
    var var_2 = !(1i >= u_input.a.x);
    let var_3 = reverseBits(vec4<u32>(~16281u, 4294967295u, ~abs(func_3()), ~var_1));
    var var_4 = ~firstLeadingBit(_wgslsmith_add_vec3_u32(var_3.xyw, vec3<u32>(~var_3.x, _wgslsmith_dot_vec3_u32(var_3.zxy, vec3<u32>(0u, var_3.x, var_1)), 80130u)));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-520f, arg_1, arg_0, global1[_wgslsmith_index_u32(var_3.x, 3u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(83953u, 3u)])))), _wgslsmith_mult_i32(select(max(1i, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), true), ~(-21211i)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -327f, 549f, -1000f)))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -816f)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    global1 = array<f32, 3>();
    let var_0 = vec2<u32>(arg_1, arg_1 & (~(~arg_1) & _wgslsmith_clamp_u32(countOneBits(1u), arg_1 ^ arg_1, arg_1 & 20620u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-259f))));
    var_1 = _wgslsmith_f_op_f32(arg_0.x * 189f);
    global1 = array<f32, 3>();
    return func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(601f + global1[_wgslsmith_index_u32(36840u, 3u)]) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 3u)] - global1[_wgslsmith_index_u32(3007u, 3u)])), arg_0.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_2(), 3u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-607f, 2151f, _wgslsmith_f_op_f32(round(1379f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1711f, global1[_wgslsmith_index_u32(3589u, 3u)], -1655f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -250f, global1[_wgslsmith_index_u32(1u, 3u)]) + vec3<f32>(286f, global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1223f, -908f, 2483f))))), 1u);
    global1 = array<f32, 3>();
    var var_1 = var_0.a.c;
    var var_2 = ~25267i;
    global0 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(~(~4294967295u), ~35202u));
}

