struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(34170u, 67804u);

var<private> global1: array<Struct_1, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<bool>, arg_3: vec3<bool>) -> i32 {
    let var_0 = !arg_2.zz;
    global0 = (~vec2<u32>(u_input.a.x, abs(global0.x)) << (vec2<u32>(16441u, reverseBits(4294967295u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(36612u, 4294967295u), vec2<u32>(u_input.a.x, 49394u))) % vec2<u32>(32u))) >> (u_input.a.zz % vec2<u32>(32u));
    var var_1 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(_wgslsmith_add_i32(arg_0, reverseBits(5523i)), 1i)), u_input.d.zx);
    var var_2 = global1[_wgslsmith_index_u32(~(~u_input.a.x), 25u)];
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-106f, 478f), var_2.a)))), vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(abs(1621f))), select(!vec2<bool>(true, arg_3.x), arg_3.xz, !arg_2.yy)))));
    return _wgslsmith_sub_i32(-u_input.b, _wgslsmith_mod_i32(~u_input.d.x, -1i));
}

fn func_3(arg_0: i32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return StorageBuffer(-2147483647i, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(min(~vec4<i32>(0i, 49098i, u_input.c, arg_0), -vec4<i32>(u_input.c, 11033i, -1i, -2147483647i)), ~(vec4<i32>(arg_0, arg_0, -1i, 49810i) ^ vec4<i32>(2147483647i, arg_0, u_input.b, arg_0))), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(50831i, -1i, arg_0, 0i), ~vec4<i32>(u_input.b, 11434i, -1i, 0i), ~vec4<i32>(u_input.d.x, u_input.b, 30145i, -1i)))), ~vec2<u32>(_wgslsmith_mult_u32(global0.x, 70394u), 4294967295u));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = true;
    let var_1 = vec2<bool>(any(vec2<bool>(true, true)), false);
    global1 = array<Struct_1, 25>();
    var var_2 = -498f;
    let var_3 = vec3<bool>(true, true, true);
    return func_3(-firstTrailingBit(func_2(~21727i, -575f, var_3, vec3<bool>(false, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(495f - 1f)));
    let var_1 = ~abs(_wgslsmith_add_vec3_u32((vec3<u32>(42391u, 46640u, u_input.e) >> (vec3<u32>(u_input.a.x, 1u, global0.x) % vec3<u32>(32u))) & u_input.a.wxz, ~vec3<u32>(global0.x, u_input.a.x, global0.x)));
    var var_2 = firstTrailingBit(u_input.a.zxx);
    var var_3 = u_input.a.zxy;
    global1 = array<Struct_1, 25>();
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f))), 398f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2408f))), _wgslsmith_f_op_f32(f32(-1f) * -1187f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1335f, 1144f))) - vec2<f32>(var_0, _wgslsmith_f_op_f32(-var_0)))));
    var var_5 = 0i;
    var var_6 = ~max((var_3.x >> (firstLeadingBit(10334u) % 32u)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(69303u, 24372u), u_input.a.zw), var_1.zx) % 32u), u_input.e);
    let x = u_input.a;
    s_output = func_1(all(!vec3<bool>(any(vec4<bool>(false, false, false, false)), false, true)));
}

