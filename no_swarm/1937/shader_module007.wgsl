struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = ~arg_1.d.zx;
    global1 = arg_1.e;
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    return vec4<bool>(arg_1.e.a.x, !any(vec2<bool>(true & arg_1.e.a.x, arg_1.e.b.x)), any(!(!(!vec4<bool>(true, global1.a.x, true, true)))), select(true, global1.a.x, false));
}

fn func_2() -> vec4<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 28u)] * _wgslsmith_f_op_f32(max(1188f, 509f))) + 1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2119f - global0[_wgslsmith_index_u32(u_input.c, 28u)]), global1.c.x, true == global1.a.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.c.x);
    global1 = Struct_1(!global1.a, vec2<bool>(global1.a.x, false == any(func_3(var_0.x, Struct_2(u_input.c, u_input.b, false, vec3<i32>(-9981i, -2147483647i, 1i), Struct_1(global1.a, vec2<bool>(true, true), var_0.zx)), vec3<f32>(global1.c.x, global0[_wgslsmith_index_u32(u_input.c, 28u)], 1279f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.x, global0[_wgslsmith_index_u32(0u, 28u)])))), global1.c.x)));
    global0 = array<f32, 28>();
    global1 = Struct_1(func_3(global0[_wgslsmith_index_u32(u_input.c, 28u)], Struct_2(u_input.c, abs(u_input.d), u_input.c <= 45339u, min(vec3<i32>(-2147483647i, -1i, 29774i), vec3<i32>(-2147483647i, 0i, 42599i)), Struct_1(select(global1.a, global1.a, false), !vec2<bool>(false, global1.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1833f), vec2<f32>(var_0.x, global1.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global1.c.x, 437f), vec3<f32>(-429f, 2399f, -534f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global1.c.x, 668f))) + vec3<f32>(global1.c.x, global1.c.x, -873f)))), vec2<bool>(all(global1.a.zxz), global1.b.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(488f, var_0.x) + vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 28u)], var_0.x)))), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 28u)], 546f))));
    var var_1 = Struct_1(global1.a, vec2<bool>(true, !global1.b.x), var_0.xy);
    return var_1.a;
}

fn func_1(arg_0: vec4<i32>) -> vec3<u32> {
    var var_0 = select(!(!global1.a), select(func_2(), vec4<bool>(global1.a.x, !(global1.a.x || global1.b.x), false || all(global1.b), !global1.b.x), !(!(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, false)))), global1.a.x);
    let var_1 = 1429f;
    return _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(abs(~(~vec3<u32>(81091u, u_input.c, u_input.c))), select(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, u_input.c, 21770u), ~vec3<u32>(44384u, u_input.c, 1u)), min(vec3<u32>(0u, 4294967295u, u_input.c), vec3<u32>(u_input.c, 4294967295u, 95145u)) ^ reverseBits(vec3<u32>(1144u, 0u, 1u)), !vec3<bool>(true, global1.b.x, var_0.x))), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.c, u_input.c) & vec3<u32>(_wgslsmith_add_u32(u_input.c, u_input.c), ~u_input.c, ~36599u), vec3<u32>(u_input.c, u_input.c, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mult_u32(u_input.c & 47817u, 1u) >> (27294u % 32u));
    let var_1 = ~abs(vec3<i32>(-51030i, _wgslsmith_add_i32(u_input.a, 24080i), -1i)) >> (~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(8979u, 4836u, u_input.c)), vec3<u32>(39407u, 1u, 100436u)), ~vec3<u32>(u_input.c, 60148u, u_input.c) << (func_1(vec4<i32>(u_input.b, -2305i, u_input.b, u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1377f, global1.c.x, 2233f));
    let var_3 = vec3<u32>(39660u | (u_input.c | _wgslsmith_div_u32(u_input.c, u_input.c)), abs(func_1(vec4<i32>(u_input.b, -2147483647i, -var_1.x, -1i)).x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 10857u), vec3<u32>(19241u, u_input.c, u_input.c)), reverseBits(vec3<u32>(0u, u_input.c, u_input.c))), select(select(vec3<u32>(0u, 30745u, 18498u), vec3<u32>(39439u, u_input.c, u_input.c), global1.a.x), vec3<u32>(u_input.c, u_input.c, u_input.c) | vec3<u32>(16478u, 4294967295u, 1u), any(global1.a.zxw))) | u_input.c);
    var var_4 = -(~_wgslsmith_mod_i32(-24405i, i32(-1i) * -var_1.x));
    let var_5 = vec2<bool>(true || ((true && (global1.a.x && global1.b.x)) || all(!global1.a.yzy)), all(func_3(_wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(37424u, 28u)])), global1.b.x)), Struct_2(~72547u, ~(-21899i), true, -var_1, Struct_1(vec4<bool>(false, global1.b.x, false, global1.b.x), global1.a.xz, vec2<f32>(809f, global1.c.x))), vec3<f32>(_wgslsmith_f_op_f32(min(var_2.x, 1749f)), _wgslsmith_f_op_f32(sign(1455f)), _wgslsmith_f_op_f32(var_2.x - global0[_wgslsmith_index_u32(var_3.x, 28u)]))).xx));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, ~var_3, vec3<u32>(firstLeadingBit(~_wgslsmith_add_u32(3969u, 11372u)), ~_wgslsmith_add_u32(var_3.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, var_3.x))), _wgslsmith_mod_u32(55729u, ~8198u)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(35910u, u_input.c) & var_3.yx), ~firstTrailingBit(var_3.yy)));
}

