struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 23>;

var<private> global2: i32 = 8026i;

var<private> global3: vec4<f32>;

var<private> global4: vec3<u32> = vec3<u32>(45017u, 32075u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    global3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global4.x, 23u)])) + _wgslsmith_f_op_f32(abs(862f)))), global3.x, global3.x, global3.x)));
    let var_0 = u_input.a.xx;
    var var_1 = Struct_2(any(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return 367f;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(380f))))), global3.x, 458f, _wgslsmith_f_op_f32(-374f * _wgslsmith_f_op_f32(-287f + arg_3.b.x)));
    global2 = -1i;
    let var_1 = ~u_input.b.x;
    global4 = ~u_input.d.wzz << (u_input.b.zxy % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(863f, _wgslsmith_f_op_f32(-var_0.x)))))));
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> u32 {
    global1 = array<f32, 23>();
    let var_0 = arg_2;
    var var_1 = !all(var_0.d.zzx);
    global1 = array<f32, 23>();
    var var_2 = Struct_1(~vec4<u32>(39894u, global4.x ^ arg_1, arg_2.a.x, _wgslsmith_mod_u32(var_0.a.x, var_0.a.x)) >> (_wgslsmith_mod_vec4_u32(max(u_input.b, max(vec4<u32>(6316u, arg_1, arg_1, 0u), arg_2.a)), vec4<u32>(~1u, 4294967295u, global4.x, u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(arg_2.b)), -1388f, select(!vec4<bool>(false, func_2(var_0.a.wyz, global3.x, false, arg_2).d.x, arg_2.d.x && false, arg_0.a != false), vec4<bool>(true, all(select(vec3<bool>(arg_2.d.x, true, arg_2.d.x), arg_2.d.xwx, var_0.d.x)), arg_2.b.x == 1703f, false), !var_0.d));
    return 1u;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    global0 = arg_0.x;
    var var_0 = vec3<bool>(true, true, any(arg_0.xz));
    var var_1 = vec4<bool>(false, false, all(!vec4<bool>(1i > u_input.a.x, !arg_1.a, false, all(vec3<bool>(false, arg_0.x, var_0.x)))), true);
    let var_2 = global3.xw;
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), var_2.x, var_2.x, global1[_wgslsmith_index_u32(47574u << (~func_4(arg_1, ~global4.x, func_2(vec3<u32>(global4.x, u_input.b.x, 3182u), 610f, false, Struct_1(u_input.d, global3.ww, global1[_wgslsmith_index_u32(0u, 23u)], arg_0))) % 32u), 23u)]);
    return func_2(~u_input.b.wyw, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1355f + _wgslsmith_f_op_f32(ceil(global3.x)))), arg_0.x, Struct_1(u_input.b, func_2(firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.d.xzz, u_input.b.xwx)), 197f, (u_input.a.x < u_input.a.x) && true, Struct_1(vec4<u32>(u_input.d.x, 1u, u_input.d.x, global4.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.x, 369f))), var_2.x, select(arg_0, vec4<bool>(arg_1.a, arg_1.a, true, false), vec4<bool>(false, false, var_0.x, var_0.x)))).b, global1[_wgslsmith_index_u32(1u, 23u)], arg_0));
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = ~max(func_2(~max(arg_0.a.wyy, vec3<u32>(4294967295u, 72409u, 1u)), -814f, true, Struct_1(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(global4.x, 1u, 19695u, global4.x)), vec2<f32>(338f, -583f), arg_0.b.x, arg_0.d)).a.x, ~(~u_input.d.x));
    var var_1 = 4294967295u;
    global1 = array<f32, 23>();
    global0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~global4.x), 23u)] - 652f) != _wgslsmith_f_op_f32(round(arg_0.b.x));
    let var_2 = u_input.b.yy;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!func_5(func_1(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true), Struct_2(false))));
    let var_1 = !(2147483647i >= abs(-11883i & _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 0i)));
    let var_2 = firstTrailingBit(~u_input.a.x);
    global0 = var_1;
    var var_3 = var_2;
    var_3 = max(_wgslsmith_div_i32(0i, _wgslsmith_mod_i32(38408i, var_2)), u_input.a.x);
    let var_4 = -max(u_input.a.x << (~(~20179u) % 32u), -firstTrailingBit(-u_input.a.x));
    var var_5 = vec2<u32>(10662u << (((abs(u_input.d.x) & u_input.c.x) << (global4.x % 32u)) % 32u), global4.x ^ (~(~global4.x) ^ 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1447f + global3.x) * _wgslsmith_f_op_f32(global3.x + -686f))), 639f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1989f * 388f) - -219f)), _wgslsmith_f_op_f32(global3.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(157f + 1334f), global1[_wgslsmith_index_u32(0u, 23u)]))), abs(max(vec4<u32>(~global4.x, var_5.x, global4.x ^ 1u, ~u_input.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, var_5.x, 4294967295u) & u_input.d, vec4<u32>(4294967295u, u_input.c.x, 48301u, var_5.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * global3.x) - -1055f)));
}

