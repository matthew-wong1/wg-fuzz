struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(4294967295u, 51u, 1u, 40694u, 4294967295u, 15908u, 0u, 47303u, 11131u, 39496u, 24691u, 58737u, 1280u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    var var_0 = all(arg_0);
    var var_1 = u_input.e;
    let var_2 = Struct_4((arg_1 << (1u % 32u)) < ~(-1i), Struct_3(Struct_1(~(~vec3<u32>(17729u, u_input.a.x, global0[_wgslsmith_index_u32(1u, 13u)]))), ~u_input.a << (u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-535f, 407f, 552f, -460f))))), Struct_1(vec3<u32>(u_input.a.x >> (global0[_wgslsmith_index_u32(1u, 13u)] % 32u), 24278u, countOneBits(4294967295u)))));
    return var_2.b.d;
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 65810i), abs(vec2<i32>(u_input.c, -(~0i))), _wgslsmith_mult_vec2_i32(~select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, u_input.c), true) | max(abs(vec2<i32>(-2147483647i, u_input.b)), max(vec2<i32>(u_input.c, u_input.e), vec2<i32>(0i, u_input.c))), vec2<i32>(u_input.e, -(i32(-1i) * -1i))));
    var var_1 = arg_0.a;
    var_1 = arg_0.a;
    let var_2 = -362f;
    var var_3 = -2147483647i;
    return ~firstTrailingBit(arg_0.a.x);
}

fn func_2() -> vec2<bool> {
    var var_0 = all(vec3<bool>(all(vec2<bool>(true, true)), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))), true));
    let var_1 = Struct_1(vec3<u32>(u_input.a.x, ~global0[_wgslsmith_index_u32(0u, 13u)] << (~func_3(Struct_1(u_input.a)) % 32u), 1u));
    let var_2 = Struct_3(func_1(select(vec3<bool>(true, all(vec3<bool>(true, false, true)), true), vec3<bool>(all(vec4<bool>(false, false, true, true)), true, true), any(vec3<bool>(true, true, false))), u_input.b, select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), true), vec2<bool>(true, true))), ~u_input.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-873f, -606f, -892f, -1000f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2284f, -992f, 1086f, 253f))))))), Struct_1(min(min(var_1.a ^ vec3<u32>(global0[_wgslsmith_index_u32(0u, 13u)], 4294967295u, var_1.a.x), u_input.a), u_input.a)));
    let var_3 = Struct_2(true);
    var_0 = true;
    return vec2<bool>(false, any(!(!(!vec3<bool>(false, true, var_3.a)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = all(vec2<bool>(true, false));
    global0 = array<u32, 13>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1383f);
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-590f)) - _wgslsmith_f_op_f32(-arg_3.b.c.x)), var_1, arg_0.a & any(select(vec4<bool>(arg_3.a, arg_3.a, false, false), vec4<bool>(false, false, arg_0.a, arg_0.a), arg_3.a)))) < _wgslsmith_f_op_f32(exp2(var_1));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.b.c.x)), 466f)) + arg_3.b.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-202f))));
    var var_1 = u_input.a.xx;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(519f))) - 909f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, 1053f)))), 351f, true)))));
    global0 = array<u32, 13>();
    var_0 = -482f;
    let x = u_input.a;
    s_output = func_4(Struct_4(true, Struct_3(func_1(vec3<bool>(true, true, false), u_input.b, vec2<bool>(true, false)), vec3<u32>(~0u, 1u, ~0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-105f, 535f, 1295f, 1895f) - vec4<f32>(1265f, 1000f, -2167f, 1000f))), Struct_1(~u_input.a))), vec2<u32>(min(_wgslsmith_mod_u32(53211u, 43512u), func_1(vec3<bool>(true, false, true), -u_input.e, func_2()).a.x), ~1u ^ ~var_1.x), _wgslsmith_sub_u32(~(~0u), abs(countOneBits(u_input.a.x))) << (4294967295u % 32u), Struct_4(false, Struct_3(func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.e, u_input.b), vec4<i32>(u_input.c, -10560i, 2147483647i, 72834i)), func_2()), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 4294967295u, 18226u), u_input.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1822f, 880f, -1265f, 550f) * vec4<f32>(-1666f, -598f, 1444f, -1073f)))), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(12929u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 13u)], 13u)], 0u) >> (u_input.a % vec3<u32>(32u))))));
}

