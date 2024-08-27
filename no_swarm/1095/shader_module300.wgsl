struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 12> = array<bool, 12>(false, true, true, true, true, true, true, true, true, true, true, true);

var<private> global2: array<u32, 22>;

var<private> global3: array<i32, 2>;

var<private> global4: array<u32, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> f32 {
    return 390f;
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(464f - global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(global0.d))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.c.x), _wgslsmith_f_op_f32(1039f - -188f)) - _wgslsmith_f_op_f32(abs(global0.c)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.e.c))));
    var var_1 = Struct_1(select(select(!vec4<bool>(global1[_wgslsmith_index_u32(80177u, 12u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19338u, 22u)], 12u)], 12u)], global0.e.a.x, global1[_wgslsmith_index_u32(arg_0.x, 12u)]), !global0.e.a, any(!vec2<bool>(true, global0.a))), global0.e.a, var_0.x >= _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(266f - -1000f))), countOneBits(_wgslsmith_sub_vec3_u32(select(vec3<u32>(0u, 4294967295u, arg_0.x), vec3<u32>(1u, arg_0.x, global0.d), any(vec2<bool>(true, global0.a))), global0.e.b)), var_0);
    global1 = array<bool, 12>();
    let var_2 = _wgslsmith_f_op_f32(1652f + _wgslsmith_f_op_f32(-global0.c));
    let var_3 = vec3<u32>(_wgslsmith_div_u32(~(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(0u, 22u)], global0.e.b.x)), ~global2[_wgslsmith_index_u32(29526u, 22u)]), global0.d, min(0u, ~(~reverseBits(var_1.b.x))));
    return Struct_2(global0.a, ~global3[_wgslsmith_index_u32(2381u, 2u)], -616f, _wgslsmith_div_u32(~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_div_u32(4294967295u, 4294967295u)), ~(~global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.b.x, 12u)], 12u)], 1u), 12u)])), Struct_1(!vec4<bool>(global1[_wgslsmith_index_u32(global0.e.b.x, 12u)], !global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 22u)], 12u)], var_1.a.x, global0.d >= 0u), global0.e.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1690f, var_2, _wgslsmith_f_op_f32(round(var_1.c.x))))));
}

fn func_1() -> vec3<f32> {
    var var_0 = vec3<i32>(u_input.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(min(-vec4<i32>(global0.b, -18032i, -29030i, global0.b), vec4<i32>(0i, 0i, u_input.b.x, global0.b) & vec4<i32>(global0.b, 1i, global3[_wgslsmith_index_u32(112250u, 2u)], 1i)), -firstTrailingBit(vec4<i32>(0i, global0.b, global3[_wgslsmith_index_u32(16123u, 2u)], global0.b))), 1i), -1i);
    global0 = func_2(vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global0.e.b.zx, global0.e.b.yy), ~36804u), global2[_wgslsmith_index_u32(1u, 22u)]));
    global1 = array<bool, 12>();
    let var_1 = true;
    let var_2 = Struct_2(!((_wgslsmith_add_i32(u_input.a.x, 1i) >= ~25796i) == (global0.e.c.x >= 255f)), _wgslsmith_div_i32(global0.b, _wgslsmith_add_i32(u_input.b.x, -u_input.b.x) >> (1u % 32u)), -1478f, reverseBits(reverseBits(55031u)), global0.e);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.e.c.x, var_2.e.c.x)) - global0.c) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global0.e.c.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.e.c.x, var_2.e.c.x))))), var_2.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-159f)) * -346f)), global0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 12>();
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.e.c.x), _wgslsmith_f_op_f32(-2219f * -369f), global0.c), global0.e.c)), _wgslsmith_f_op_vec3_f32(global0.e.c + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2804f, 1162f, -1039f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, 914f, 766f)))))));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(1u ^ ~global2[_wgslsmith_index_u32(func_2(vec2<u32>(global4[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 22u)], 22u)])).d, 22u)], 12u)], _wgslsmith_mod_i32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.e.b, global0.e.b) | min(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 12u)], 22u)], 0u), 2u)], ~(i32(-1i) * -u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-973f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -462f)))), _wgslsmith_mod_u32(global0.e.b.x, 12687u), global0.e);
    var_0 = vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(898f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.d))))), -136f, _wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(var_1.c - -1546f))));
    var var_2 = Struct_1(select(global0.e.a, vec4<bool>(all(var_1.e.a.xzy), any(vec3<bool>(global1[_wgslsmith_index_u32(60387u, 12u)], var_1.a, global0.a)), var_1.a, true), !select(select(vec4<bool>(true, var_1.a, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(var_1.e.b.x, 12u)]), vec4<bool>(var_1.a, true, var_1.a, var_1.a), true), !vec4<bool>(false, true, var_1.a, global0.e.a.x), var_1.e.a)), var_1.e.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(global0.e.b.yx).e.c - _wgslsmith_div_vec3_f32(global0.e.c, vec3<f32>(var_0.x, var_0.x, 877f)))))));
    global0 = Struct_2(false, ~countOneBits(-_wgslsmith_div_i32(2147483647i, global0.b)), _wgslsmith_f_op_f32(round(var_1.c)), 1u, Struct_1(global0.e.a, vec3<u32>(global2[_wgslsmith_index_u32(86474u, 22u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)] << (var_2.b.x % 32u), 12u)], ~4294967295u) | global0.e.b, vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.x), func_2(var_2.b.zy).e.c.x, global0.c)));
    let var_3 = _wgslsmith_div_i32(global3[_wgslsmith_index_u32(1u, 2u)], var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b);
}

