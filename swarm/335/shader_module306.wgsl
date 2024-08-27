struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 28>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = u_input.d;
    let var_1 = Struct_1(true);
    return (vec4<i32>(-1i) * -(~vec4<i32>(1i, -2147483647i, u_input.e, u_input.e))) | _wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, u_input.e, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.e, 4362i, 26226i), vec4<i32>(0i, u_input.a, u_input.a, -19064i))), ~abs(vec4<i32>(u_input.e, -1i, 0i, u_input.a)));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = 3275u;
    var var_1 = select(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, u_input.a), vec2<i32>(u_input.e, -40961i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(11342i, u_input.e), vec2<i32>(1i, u_input.e), vec2<i32>(u_input.e, u_input.e))), -u_input.e, _wgslsmith_clamp_i32(u_input.e, ~u_input.a, ~u_input.e), -36560i), max(-func_3(u_input.b), ~vec4<i32>(u_input.a, 28281i, -1i, 2184i)), var_0 >= u_input.c) >> (vec4<u32>(64961u, 1u, var_0, ~4910u) % vec4<u32>(32u));
    let var_2 = Struct_1(true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(264f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-442f + -133f))))));
    global1 = array<vec2<u32>, 28>();
    return any(select(!(!select(vec2<bool>(arg_0.a, var_2.a), vec2<bool>(arg_0.a, var_2.a), arg_0.a)), !vec2<bool>(true, arg_0.a), select(select(vec2<bool>(true, true), !vec2<bool>(arg_0.a, arg_0.a), !vec2<bool>(true, var_2.a)), vec2<bool>(false, all(vec4<bool>(false, var_2.a, arg_0.a, false))), true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec2_u32(countOneBits(~min(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(36304u, u_input.c)) | _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.zz, vec2<u32>(61649u, u_input.d.x)), max(u_input.d.yz, u_input.d.zx))), firstTrailingBit(vec2<u32>(~u_input.b, max(4294967295u, ~0u))));
    var var_1 = ~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.b, u_input.d.x)), vec2<u32>(u_input.b, 1u)), global1[_wgslsmith_index_u32(var_0, 28u)]);
    let var_2 = arg_1.x;
    var_1 = ~_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(var_0 << (var_0 % 32u), 28u)], u_input.d.ww);
    global0 = func_2(Struct_1(!all(arg_2.xyw)));
    return !vec4<bool>(true, false, arg_2.x, 33592u == ~(~u_input.d.x));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 4294967295u;
    var var_1 = u_input.e >> (~_wgslsmith_mult_u32(_wgslsmith_mult_u32(40654u, 100911u), ~u_input.d.x) % 32u);
    var var_2 = Struct_1((u_input.d.x | 50940u) > (u_input.c ^ _wgslsmith_mod_u32(1u, select(61784u, 4294967295u, false))));
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-2426f, -313f))))))));
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true);
    let var_1 = func_4(all(!func_1(vec3<i32>(u_input.e, u_input.a, u_input.e), _wgslsmith_div_vec3_f32(vec3<f32>(-835f, -215f, 211f), vec3<f32>(-174f, 512f, -1221f)), vec4<bool>(true, true, true, true))), Struct_1(var_0.a), Struct_1(var_0.a));
    var var_2 = var_1;
    global0 = !(true | ((false & (var_1.a || false)) && true));
    var var_3 = Struct_1(var_0.a);
    var_3 = func_4(true || !func_1(vec3<i32>(u_input.a, u_input.e, -1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-170f, -559f, -216f)), func_1(vec3<i32>(54053i, 37071i, u_input.e), vec3<f32>(108f, -340f, -375f), vec4<bool>(var_0.a, var_1.a, var_3.a, var_2.a))).x, func_4(true, Struct_1(true), Struct_1(all(vec2<bool>(true, true)))), var_1);
    global0 = false;
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-883f, 202f, _wgslsmith_f_op_f32(-1775f * 1094f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(u_input.e << (u_input.b % 32u), select(u_input.a, u_input.a, true), i32(-1i) * -1i, 0i), u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1804f, 597f) * _wgslsmith_f_op_f32(326f - 512f)), _wgslsmith_f_op_f32(abs(var_4.x)), var_4.x)), 0u, -39216i);
}

