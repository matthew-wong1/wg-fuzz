struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(true, vec3<f32>(-243f, -315f, 1339f), 4294967295u, -1909f, 999f), vec3<f32>(108f, 1000f, 857f)));

var<private> global2: vec3<f32>;

var<private> global3: bool = true;

var<private> global4: array<i32, 15> = array<i32, 15>(0i, 27433i, 0i, 44621i, -17995i, 24423i, 0i, -1i, -24268i, 1i, -34219i, -1i, -12048i, -1i, 4845i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = true;
    var var_1 = var_0;
    var var_2 = global1.a.a.a;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.b - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -2058f, 712f) + _wgslsmith_f_op_vec3_f32(-global1.a.b)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1944f, global2.x, global1.a.a.d) * global1.a.b)))))));
    let var_3 = _wgslsmith_clamp_u32(u_input.c.x, ~(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.a.c, 1u), vec2<u32>(1u, global1.a.a.c)))), u_input.c.x);
    return Struct_3(global1.a);
}

fn func_3(arg_0: f32) -> vec3<f32> {
    global4 = array<i32, 15>();
    var var_0 = u_input.c.xxx;
    global1 = Struct_3(func_1(u_input.b.xy).a);
    let var_1 = Struct_3(Struct_2(global1.a.a, _wgslsmith_f_op_vec3_f32(select(func_1(u_input.b.xz).a.b, vec3<f32>(-1309f, _wgslsmith_f_op_f32(max(112f, 382f)), _wgslsmith_div_f32(global1.a.b.x, 1322f)), !(global1.a.a.a && true)))));
    var var_2 = _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-1689f + 315f));
    return vec3<f32>(func_1(_wgslsmith_div_vec2_i32(min(u_input.b.zy, _wgslsmith_clamp_vec2_i32(u_input.b.xz, vec2<i32>(global4[_wgslsmith_index_u32(var_0.x, 15u)], 1i), u_input.b.zy)), ~min(vec2<i32>(-184i, u_input.d), u_input.b.yx))).a.b.x, -1655f, 1026f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    let var_0 = ~u_input.d ^ -u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -971f)))))));
    global4 = array<i32, 15>();
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(global1.a.b));
    let var_3 = func_1(u_input.b.zy).a.a;
    return arg_1.a.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b.xz);
    let var_1 = u_input.b.yz;
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u >> (var_0.a.a.c % 32u), ~u_input.c.x), ~(~global1.a.a.c)), ~(~var_0.a.a.c)), ~u_input.c.yz);
    let var_3 = global4[_wgslsmith_index_u32(~select(u_input.c.x, 4294967295u, true), 15u)];
    let var_4 = vec4<i32>(abs(~global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(15891u, var_2.x, var_0.a.a.c), vec3<u32>(var_0.a.a.c, u_input.c.x, var_2.x)), 15u)]), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(-global4[_wgslsmith_index_u32(1u, 15u)], firstLeadingBit(var_1.x)), var_1.x), -(~u_input.a)), -1i, abs(u_input.a) << (_wgslsmith_mult_u32(0u, 400u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f))))), vec4<u32>(~(_wgslsmith_add_u32(1u, global1.a.a.c) >> (abs(var_2.x) % 32u)), var_0.a.a.c, func_2(func_1(reverseBits(var_4.zz)).a.a, func_1(var_4.yy), global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-192f, -467f, global2.x))))), _wgslsmith_add_u32(global1.a.a.c, global1.a.a.c)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(global1.a.a.c, 15u)], ~u_input.c | select(global0[_wgslsmith_index_u32(global1.a.a.c, 15u)], vec4<u32>(0u, 30708u, 23104u, 3830u), true)), vec4<u32>(var_0.a.a.c, var_2.x, _wgslsmith_div_u32(72716u >> (u_input.c.x % 32u), 35288u), 24602u)));
}

