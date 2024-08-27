struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-1i, 21236i, i32(-2147483648)));

var<private> global2: array<i32, 24> = array<i32, 24>(0i, 44904i, i32(-2147483648), -1i, -94464i, 53392i, 2147483647i, -33062i, 26957i, -1i, 0i, 43129i, 37566i, 2147483647i, 1i, -1i, 2147483647i, -27469i, -52248i, 1i, 1i, 6788i, i32(-2147483648), 0i);

var<private> global3: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    global0 = ~(-2147483647i);
    global0 = -9023i;
    global0 = -11635i;
    global0 = max(arg_2.a.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(~u_input.a.x, countOneBits(8195u))), 1u), 24u)]);
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_0.a.x));
    return -global2[_wgslsmith_index_u32(u_input.a.x, 24u)];
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = func_3(Struct_2(_wgslsmith_f_op_vec2_f32(arg_0.xz - arg_0.yy)), u_input.b, Struct_1(max(vec3<i32>(global1.a.x, abs(0i), u_input.b.x), -vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]))), ~u_input.a.x);
    var var_1 = (~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u), vec4<u32>(72357u, u_input.a.x, u_input.a.x, 73853u)) | _wgslsmith_div_vec4_u32(vec4<u32>(30445u, 4294967295u, 1u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 117098u, 46079u))) >> (vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a.x), ~(~1u), u_input.a.x, ~min(3438u, 0u)) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, min(0u, u_input.a.x) >> (_wgslsmith_div_u32(64817u, 30651u) % 32u), u_input.a.x, ~(reverseBits(u_input.a.x) << ((u_input.a.x >> (u_input.a.x % 32u)) % 32u))) % vec4<u32>(32u));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + arg_0.x), 2135f);
    var_1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(select(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 6558u, 108110u, 16396u), vec4<u32>(var_1.x, var_1.x, var_1.x, 0u)), vec4<u32>(var_1.x, ~3701u, _wgslsmith_sub_u32(41031u, 23881u), countOneBits(0u)), vec4<bool>(true, false, true, u_input.b.x > 24202i)), vec4<u32>(var_1.x, ~(1u & var_1.x), 12194u, abs(_wgslsmith_dot_vec2_u32(var_1.wz, vec2<u32>(u_input.a.x, u_input.a.x))))));
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-183f - global3.a.x)), var_2, true)))));
    return Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a), vec2<f32>(global3.a.x, 635f)));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.a.x))), arg_1));
    var var_1 = -firstTrailingBit((u_input.b.x ^ -1i) << (4294967295u % 32u));
    var var_2 = vec4<bool>(true, any(!vec2<bool>(true != arg_0, true)), arg_0, all(!vec2<bool>(2147483647i >= global2[_wgslsmith_index_u32(4294967295u, 24u)], any(vec2<bool>(true, true)))));
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1251f, -1405f, var_0.a.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 713f, 281f) * vec3<f32>(var_0.a.x, global3.a.x, -703f))))));
    var var_3 = func_2(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(595f)) - var_0.a.x))), -166f));
    return Struct_1(_wgslsmith_mult_vec3_i32(u_input.b.yxz, vec3<i32>(u_input.b.x, 35482i, reverseBits(u_input.b.x))) & u_input.b.zzz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(trunc(889f)))), _wgslsmith_f_op_f32(trunc(global3.a.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.a.x, _wgslsmith_f_op_f32(686f - -314f))))))));
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, global1.a.x), vec2<i32>(u_input.b.x, global2[_wgslsmith_index_u32(905u, 24u)])), _wgslsmith_mod_i32(firstLeadingBit(u_input.b.x), min(u_input.b.x, -39274i)), -_wgslsmith_div_i32(global1.a.x, global2[_wgslsmith_index_u32(var_0.x, 24u)])), abs(~select(vec3<i32>(0i, -43503i, 76961i), vec3<i32>(global1.a.x, 87240i, 2147483647i), false))));
    var var_3 = -14031i >> (~(~(var_0.x | _wgslsmith_mod_u32(14749u, u_input.a.x))) % 32u);
    let var_4 = func_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(sign(global3.a.x)));
    var_2 = var_4;
    let var_5 = abs(0u);
    var_2 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - global3.a.x), _wgslsmith_f_op_f32(f32(-1f) * -943f), _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-883f * global3.a.x)), vec4<f32>(_wgslsmith_div_f32(218f, var_1.x), global3.a.x, global3.a.x, -329f))));
}

