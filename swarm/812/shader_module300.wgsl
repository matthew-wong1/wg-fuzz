struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: vec3<u32>;

var<private> global2: array<i32, 28>;

var<private> global3: Struct_2 = Struct_2(vec4<f32>(2633f, 418f, -435f, 803f));

var<private> global4: Struct_2 = Struct_2(vec4<f32>(-209f, 1000f, 584f, 1000f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-883f + _wgslsmith_f_op_f32(-1239f + _wgslsmith_f_op_f32(-global3.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.a.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1417f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - global4.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) * _wgslsmith_f_op_f32(-372f * global4.a.x))) * _wgslsmith_f_op_f32(round(global4.a.x))), _wgslsmith_f_op_f32(sign(711f)));
    let var_1 = select(vec4<bool>(true, (all(vec4<bool>(false, false, true, true)) | (var_0.x >= global4.a.x)) | true, true, false), !vec4<bool>(true, any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)), true), false);
    let var_2 = select(var_1.x, select(any(vec4<bool>(true, true, true, true)), !var_1.x | (_wgslsmith_f_op_f32(-global3.a.x) < -1090f), any(var_1)), u_input.a.x != -u_input.a.x);
    global3 = global0[_wgslsmith_index_u32(45130u, 6u)];
    global2 = array<i32, 28>();
    return -427f;
}

fn func_2() -> Struct_2 {
    global4 = global0[_wgslsmith_index_u32(~(~1u), 6u)];
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(36229u, 4294967295u, ~(~1u)), 6u)];
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(298f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) + 449f)));
    var var_1 = var_0;
    var var_2 = !vec3<bool>(_wgslsmith_f_op_f32(var_1.a * global4.a.x) >= global3.a.x, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), false & (all(vec2<bool>(false, true)) & true));
    return global0[_wgslsmith_index_u32(1u, 6u)];
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    var var_0 = func_2();
    var var_1 = ~firstTrailingBit(-vec3<i32>(-1i, u_input.b, global2[_wgslsmith_index_u32(0u, 28u)]) ^ u_input.a);
    global1 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, ~_wgslsmith_clamp_u32(u_input.c, u_input.d, 8297u), 34591u), _wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(940u, u_input.c, 0u)), abs(~vec3<u32>(global1.x, 0u, u_input.d)))) >> ((abs(~(vec3<u32>(31262u, global1.x, u_input.d) << (vec3<u32>(u_input.e, global1.x, u_input.d) % vec3<u32>(32u)))) | min(select(max(vec3<u32>(global1.x, 8850u, global1.x), vec3<u32>(u_input.d, 1u, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, u_input.d, u_input.d), vec3<u32>(37760u, u_input.c, u_input.d)), arg_0 & arg_0), firstLeadingBit(~vec3<u32>(39433u, u_input.c, global1.x)))) % vec3<u32>(32u));
    var var_2 = i32(-1i) * -1i;
    let var_3 = var_0.a.xxz;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(func_1(true, global4.a.zxw, Struct_1(_wgslsmith_f_op_f32(select(global4.a.x, -663f, false))), _wgslsmith_div_vec3_f32(global4.a.xyx, _wgslsmith_f_op_vec3_f32(global3.a.wyz - global4.a.wzz))), -34199i, u_input.b, firstLeadingBit(~(-69833i))), vec4<i32>(~_wgslsmith_add_i32(u_input.a.x & u_input.b, _wgslsmith_div_i32(1i, u_input.b)), -2147483647i, 1i, u_input.b), !select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(min(global3.a.x, global3.a.x)) == _wgslsmith_f_op_f32(min(514f, -1000f))));
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(global1.x)) & 33772u, 6u)];
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global3.a, var_1.a)), vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-global3.a.x), 474f, _wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_vec4_f32(sign(global4.a))));
    let var_3 = Struct_1(202f);
    let var_4 = global1.x;
    global4 = global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(global1.x, global1.x) ^ (global1.x | 23269u), ~global1.x), 6u)];
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.x, var_1.a.x, global1.x);
}

