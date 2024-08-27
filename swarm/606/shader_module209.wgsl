struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(0i, 2147483647i, 7713i, 9074i, i32(-2147483648), 1i, 7124i, 0i, 0i, 0i, 2147483647i, 2147483647i, -16158i, -42540i, 6880i, -19958i, 34487i, 18617i, 0i, 2147483647i, -1i);

var<private> global1: u32;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(2819i), Struct_1(51374i), Struct_1(i32(-2147483648)), Struct_1(472i));

var<private> global3: f32 = 817f;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> u32 {
    var var_0 = u_input.a.x;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, reverseBits(_wgslsmith_sub_u32(1u, ~4294967295u))), 4u)];
    var var_2 = all(vec4<bool>(true, true, true, true));
    global1 = abs(_wgslsmith_clamp_u32(75799u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, 29056u, 4294967295u, 1u)), ~vec4<u32>(46660u, 9706u, 85545u, 10791u)), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(28068u, 1602u, 0u, 0u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(105606u, 1043u, 35371u, 4294967295u))), 4294967295u));
    var var_3 = Struct_1(var_1.a ^ -43638i);
    return ~4294967295u;
}

fn func_2(arg_0: u32) -> u32 {
    global0 = array<i32, 21>();
    let var_0 = Struct_1(_wgslsmith_sub_i32(~_wgslsmith_add_i32(2147483647i, select(1i, u_input.a.x, false)), global0[_wgslsmith_index_u32(arg_0, 21u)]));
    var var_1 = Struct_1(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 31171i, global0[_wgslsmith_index_u32(arg_0, 21u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, global0[_wgslsmith_index_u32(arg_0, 21u)], 2147483647i) >> (vec3<u32>(54659u, arg_0, arg_0) % vec3<u32>(32u)), ~vec3<i32>(42903i, var_0.a, 0i))), max(_wgslsmith_add_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(0u, 21u)], var_0.a), abs(var_0.a)), 2147483647i)));
    global3 = -251f;
    let var_2 = max(vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(10789i, 2147483647i), vec2<i32>(-30129i, u_input.a.x)), abs(-72886i)), u_input.a.zw ^ vec2<i32>(u_input.a.x, var_0.a)) & u_input.a.zz;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(12871u, 28445u, 1u, 1u), vec4<u32>(0u, 1u, 2795u, 3929u), false)) | _wgslsmith_div_vec4_u32(vec4<u32>(func_1(), 38098u, 31459u, ~4294967295u), ~(~vec4<u32>(59133u, 39187u, 4294967295u, 4294967295u))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 15208u), vec2<u32>(0u, 4294967295u)) & 0u, _wgslsmith_mod_u32(1u, select(1u, func_1(), true)), func_2(~reverseBits(0u)), 0u));
    global0 = array<i32, 21>();
    let var_0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a.xz), -56926i << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(19327u, var_0, 0u, var_0), vec4<u32>(0u, var_0, 4294967295u, var_0) >> (vec4<u32>(39638u, 33520u, 32994u, var_0) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, 32117u, var_0, 0u) & vec4<u32>(var_0, var_0, 69047u, var_0), vec4<u32>(48428u, 55521u, var_0, 1u), abs(vec4<u32>(var_0, 14219u, var_0, 92198u)))) % 32u), vec2<u32>(var_0, _wgslsmith_div_u32(~(~var_0), 1u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(539f - -957f) * _wgslsmith_f_op_f32(select(156f, 1681f, true))), -1098f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-317f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1653f, -258f, -340f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1185f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1218f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(850f * -523f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(step(1299f, 928f)), -219f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1302f, -822f, 1139f), vec3<f32>(1282f, 770f, 203f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1620f, 797f, -434f))))));
}

