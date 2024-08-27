struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(748f, 1000f, -823f, 101f), 0i);

var<private> global1: array<vec3<bool>, 15>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<i32> {
    global1 = array<vec3<bool>, 15>();
    var var_0 = arg_0;
    let var_1 = ~(~var_0.c);
    var var_2 = u_input.e.yw;
    var var_3 = countOneBits(_wgslsmith_add_i32(-1i, -2147483647i));
    return u_input.e.zyw;
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    global0 = Struct_1(vec2<u32>(1u, global0.a.x), global0.b, (max(reverseBits(-1i), u_input.e.x) | -2147483647i) << (15299u % 32u));
    global0 = Struct_1(abs(~vec2<u32>(0u, global0.a.x)) >> (vec2<u32>(u_input.d.x, _wgslsmith_mult_u32(~62809u, abs(global0.a.x))) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-global0.b.x)), 1f, _wgslsmith_f_op_f32(1161f - -1923f), -620f), arg_1.x);
    let var_0 = max(~(~(~12464u)) & global0.a.x, _wgslsmith_dot_vec4_u32(~firstLeadingBit(u_input.d | vec4<u32>(u_input.d.x, u_input.d.x, 25625u, u_input.d.x)), ~vec4<u32>(~global0.a.x, global0.a.x >> (u_input.d.x % 32u), abs(49261u), ~u_input.d.x)));
    let var_1 = Struct_1(~u_input.d.zx, vec4<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(min(global0.b.x, global0.b.x)), global0.b.x), _wgslsmith_div_i32(arg_1.x, -global0.c));
    let var_2 = Struct_1(abs(vec2<u32>(~max(63582u, global0.a.x), var_1.a.x)), vec4<f32>(1055f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + -1000f))), _wgslsmith_f_op_f32(-global0.b.x), 1206f), ~1i);
    return var_1;
}

fn func_1() -> vec2<u32> {
    let var_0 = func_3(u_input.c != abs(~global0.c), ~abs(select(u_input.e.xyw, func_2(Struct_1(vec2<u32>(0u, global0.a.x), global0.b, 1i), vec2<f32>(1587f, global0.b.x), Struct_1(vec2<u32>(u_input.d.x, global0.a.x), vec4<f32>(global0.b.x, global0.b.x, -1118f, global0.b.x), 13512i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, global0.a.x, u_input.d.x, 31149u), u_input.d), 15u)])));
    let var_1 = select(vec4<bool>(true, any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), true)), false, var_0.a.x < _wgslsmith_div_u32(~global0.a.x, ~u_input.d.x)), select(vec4<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true)), true, true, -482f == global0.b.x), vec4<bool>(true, true | (var_0.c < u_input.b), true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, false, false, false)), false, true, all(select(global1[_wgslsmith_index_u32(28111u, 15u)], global1[_wgslsmith_index_u32(global0.a.x, 15u)], false)))));
    let var_2 = (-60154i << (_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d.x, func_3(false, vec3<i32>(global0.c, global0.c, 28766i)).a.x), ~(~global0.a.x)) % 32u)) | 3224i;
    global1 = array<vec3<bool>, 15>();
    let var_3 = select(vec3<bool>(select(select(0u, 34787u, false) <= global0.a.x, true, (1u >= global0.a.x) && true), select(all(vec3<bool>(true, true, true)), select(true, var_1.x, var_1.x) && true, any(var_1.xwz)), false), !var_1.ywz, true);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(global0.b.x, global0.b.x);
    let var_1 = Struct_1(~func_1(), vec4<f32>(-1637f, -2312f, -1000f, -478f), -u_input.e.x);
    let var_2 = -20058i;
    let var_3 = var_1;
    var var_4 = _wgslsmith_mod_vec2_u32(select(~global0.a, var_1.a, any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(global1[_wgslsmith_index_u32(u_input.d.x, 15u)])))), vec2<u32>(func_1().x, global0.a.x));
    var var_5 = !(_wgslsmith_f_op_f32(-func_3(true, -u_input.e.zzx).b.x) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-401f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -787f)))));
    global1 = array<vec3<bool>, 15>();
    var var_6 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.b + var_1.b) * _wgslsmith_f_op_vec4_f32(trunc(var_3.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_i32(u_input.e.wwx, ~vec3<i32>(var_3.c, 38564i, var_2), u_input.e.xzy) ^ u_input.e.wxy, var_1.b, 2147483647i);
}

