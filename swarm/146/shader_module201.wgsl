struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1 = Struct_1(true, vec3<f32>(1856f, 374f, 181f), vec2<f32>(1791f, 296f));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = vec3<i32>(u_input.a, -1i, 7908i);
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, ~u_input.a), var_0.zz & min(_wgslsmith_div_vec2_i32(~var_0.zz, ~vec2<i32>(arg_1, var_0.x)), _wgslsmith_mod_vec2_i32(var_0.xx, var_0.xx) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-45693i, -2147483647i), var_0.zy)));
    return ~select(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, arg_0), vec4<u32>(33874u, 17978u, 101449u, 23336u)) & abs(vec4<u32>(59120u, 30932u, arg_0, arg_0)), vec4<u32>(arg_0, abs(70418u), arg_0, _wgslsmith_mod_u32(0u, arg_0)), select(vec4<bool>(arg_2.a, false, global1.a, arg_2.a), !vec4<bool>(true, false, global1.a, arg_2.a), vec4<bool>(true, true, true, true))), vec4<u32>(reverseBits(arg_0) ^ arg_0, arg_0, arg_0, arg_0), arg_2.a);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = global1.b.x;
    var var_1 = arg_1.x;
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, ~1u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(func_3(8734u, -27920i, arg_2), vec4<u32>(42292u, 37304u, 0u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_sub_u32(~15875u, 9374u)), select(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 0u, 3722u))), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, arg_2.a, !(-982f == arg_3.a.x))), ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(30600u, 0u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~func_3(57528u, u_input.b, arg_2).yzw));
}

fn func_1() -> vec4<f32> {
    var var_0 = ~(~_wgslsmith_sub_vec3_u32(~func_2(global1.b.zz, vec2<bool>(true, false), Struct_1(false, global1.b, vec2<f32>(global0.x, 351f)), Struct_2(vec3<f32>(global1.b.x, global1.c.x, global1.b.x), global1.b.xy)), _wgslsmith_mult_vec3_u32(func_3(80972u, u_input.a, Struct_1(false, vec3<f32>(1493f, global0.x, global0.x), global1.b.zy)).xww, _wgslsmith_mod_vec3_u32(vec3<u32>(75919u, 4294967295u, 60896u), vec3<u32>(22931u, 77299u, 4541u)))));
    let var_1 = ~select((_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.x, var_0.x, var_0.x), vec4<u32>(0u, var_0.x, var_0.x, var_0.x)) | ~vec4<u32>(var_0.x, var_0.x, var_0.x, 3546u)) ^ countOneBits(~vec4<u32>(4294967295u, var_0.x, 4800u, 0u)), firstTrailingBit(abs(~vec4<u32>(9141u, var_0.x, 4731u, 1u))), select(vec4<bool>(global1.a, true, !global1.a, !global1.a), vec4<bool>(true, !global1.a, true, global1.a), global1.a));
    global0 = global1.b;
    var var_2 = Struct_1(true, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1292f, 1454f, _wgslsmith_f_op_f32(-global1.b.x)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-622f * -1392f), 1060f)))));
    global1 = Struct_1(any(!vec3<bool>(global1.a, var_2.a, true)) || false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2951f, 877f, var_2.b.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.b.x, -836f, -1782f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(554f, 976f, 714f), var_2.b))))), global0.zy);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-361f, 1190f, -1062f, 252f) * vec4<f32>(global0.x, global0.x, 443f, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-686f, global0.x, 602f, -949f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.x, var_2.b.x, 789f, global1.b.x), vec4<f32>(-827f, var_2.c.x, 1168f, var_2.b.x), vec4<bool>(false, var_2.a, global1.a, var_2.a)))), select(vec4<bool>(false, false, true, true), !vec4<bool>(var_2.a, false, false, false), var_2.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -387f, _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(sign(-1000f))))))));
}

fn func_4(arg_0: vec4<f32>) -> i32 {
    global1 = Struct_1(!any(!select(vec3<bool>(false, true, false), vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(false, global1.a, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 522f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.zy))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), global0.yx), arg_0.wy)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 1000f), vec2<f32>(arg_0.x, arg_0.x), global1.a)))))));
    global1 = Struct_1(!select(select(true, 1i > u_input.b, global1.a), true || (global1.a || true), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.yzy * _wgslsmith_f_op_vec3_f32(arg_0.zyz * vec3<f32>(global1.b.x, 1370f, global1.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.b.zy, _wgslsmith_f_op_vec2_f32(select(global1.b.zy, vec2<f32>(global1.b.x, arg_0.x), vec2<bool>(true, true))))));
    var var_0 = select(!select(vec4<bool>(global1.a, !global1.a, true, u_input.a < u_input.a), vec4<bool>(global1.a, any(vec4<bool>(false, global1.a, global1.a, false)), global1.a, true), vec4<bool>(!global1.a, !global1.a, !global1.a, true)), !vec4<bool>(false, !all(vec4<bool>(global1.a, global1.a, global1.a, false)), !any(vec3<bool>(false, true, false)), all(vec2<bool>(global1.a, false)) | global1.a), true);
    let var_1 = arg_0.wwx;
    let var_2 = Struct_1(global1.c.x < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1308f * -352f) - arg_0.x))), global1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(969f - -992f)), _wgslsmith_f_op_f32(abs(arg_0.x)))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, global1.c.x, 1107f, 1154f), vec4<f32>(-229f, -2303f, -1174f, -370f)), _wgslsmith_div_vec4_f32(vec4<f32>(-806f, 402f, global0.x, global0.x), vec4<f32>(-730f, var_0.x, 722f, -2936f)))))));
    global0 = global1.b;
    var var_2 = global1.a;
    var var_3 = !all(vec2<bool>(false, false));
    var var_4 = func_3(~94461u, _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(1i, -45353i)), Struct_1(_wgslsmith_clamp_i32(1946i, -1i, u_input.b) == select(u_input.b, 9526i, true), _wgslsmith_f_op_vec4_f32(func_1()).wxw, _wgslsmith_f_op_vec2_f32(trunc(global1.b.yx)))).wxx & _wgslsmith_div_vec3_u32(vec3<u32>(~71566u, ~1u, ~min(40577u, 0u)), vec3<u32>(~42885u, 8033u, ~1u) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(28764u, 1u, 18737u, 4294967295u)), _wgslsmith_mod_u32(0u, 1u), 70625u));
    global1 = Struct_1(all(!select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, false), vec2<bool>(true, false))) || true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.b, vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), global1.b.x, _wgslsmith_f_op_f32(-global1.c.x)), select(!vec3<bool>(global1.a, global1.a, global1.a), !vec3<bool>(global1.a, global1.a, false), select(vec3<bool>(false, false, false), vec3<bool>(global1.a, global1.a, global1.a), true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, var_0.x) - vec2<f32>(-104f, global1.b.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(global1.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(368f, global0.x, -316f) * global1.b) * global1.b))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, 797f), var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-750f)), 126f), global1.b.x)));
    var_3 = !(true || select(all(select(vec4<bool>(global1.a, true, global1.a, global1.a), vec4<bool>(global1.a, global1.a, global1.a, true), vec4<bool>(global1.a, false, false, global1.a))), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global0.x, var_0.x, -231f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -145f, 409f, global0.x) * vec4<f32>(-902f, -330f, global1.b.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, 1357f, global1.c.x, global0.x), vec4<f32>(-676f, -1000f, global0.x, -1523f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(758f, var_0.x, 614f, 155f))))))), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(var_4.x), var_4.x, 1u), ~select(vec3<u32>(var_4.x, 72295u, 5359u), vec3<u32>(30373u, 1u, var_4.x), vec3<bool>(true, true, global1.a)))));
}

