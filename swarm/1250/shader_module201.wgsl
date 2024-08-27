struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32>;

var<private> global2: array<u32, 24>;

var<private> global3: vec3<f32> = vec3<f32>(-1962f, 650f, 895f);

var<private> global4: vec3<i32> = vec3<i32>(i32(-2147483648), 34590i, 2147483647i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    global4 = ~vec3<i32>(2147483647i, _wgslsmith_clamp_i32(select(~global4.x, -2147483647i, false), arg_0, -1i), _wgslsmith_add_i32(global4.x, 1i));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.b, -112f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-759f + -127f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(global0.b * 323f), -745f, global3.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(195f, global0.b, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, -1424f, arg_1), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b, global0.b, global3.x))))), any(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(163f, _wgslsmith_f_op_f32(global3.x - -1204f), _wgslsmith_f_op_f32(sign(465f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.x, 1042f, global3.x)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-642f, 440f, arg_1) - vec3<f32>(-859f, -895f, 1834f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, global0.b, global3.x))))))));
    var var_1 = global0.c;
    global0 = Struct_1(45260u, -627f, global1.x, global1.x | ~global0.c);
    return 0i;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    global2 = array<u32, 24>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -336f, _wgslsmith_f_op_f32(f32(-1f) * -513f), 814f)));
    var var_1 = func_3(arg_1.x, var_0.x, _wgslsmith_mult_vec3_u32(u_input.b.zxw, u_input.b.zyz), -48736i);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1297f, 3315f, arg_0.b)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1171f, 1000f, -228f, -1173f)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1035f, -453f, arg_0.b, 569f))) * _wgslsmith_div_vec4_f32(var_2.a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b, global0.b, 319f, 187f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-508f, global3.x, 1689f, 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-168f, global3.x, -863f, 415f)))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(global0.b)), _wgslsmith_f_op_f32(round(-673f)), -152f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b)))))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(var_2.a)));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    return func_2(arg_0, ~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.x;
    let var_1 = func_1(Struct_1(global1.x, -1058f, global1.x, 73606u));
    var_0 = ~_wgslsmith_div_i32(-30902i, _wgslsmith_mod_i32(-(u_input.d.x << (19579u % 32u)), func_3(-351i, _wgslsmith_f_op_f32(-global0.b), u_input.a.zyy, 2147483647i)));
    let var_2 = var_1;
    var var_3 = vec4<u32>(global0.a, ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global1.x, 24u)], _wgslsmith_add_u32(u_input.b.x | u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(65611u, global1.x, u_input.a.x, global0.a)))), ~u_input.b.x, 33291u);
    let var_4 = var_1;
    let var_5 = !(all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)) & !(_wgslsmith_f_op_f32(-1576f - var_4.a.x) < 182f));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(63106u >> (global1.x % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-var_4.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(829f, -611f), var_4.a.wy, var_5)) - var_1.a.wz)), var_1.a);
}

