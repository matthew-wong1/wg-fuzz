struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1582f, 1320f) * vec2<f32>(949f, -365f)))), vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(968f, 388f)), 451f), 693f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-994f))) - _wgslsmith_f_op_f32(-847f - -579f)), -1060f));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32) -> f32 {
    let var_0 = Struct_1(any(vec3<bool>(arg_1.b.a.x && true, true, true)) && (firstLeadingBit(2147483647i) < abs(arg_0.x)), arg_0.x, arg_0.x, arg_0.x);
    let var_1 = Struct_3(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, var_0.a), arg_1.a.x), arg_1.b.a, select(vec2<bool>(true, true), arg_1.b.a, arg_1.a.zz))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(~(~1447u) >> (arg_2 % 32u), Struct_3(arg_1.a.zx), arg_1.b, var_0))));
    let var_3 = Struct_2(reverseBits(4294967295u));
    var var_4 = Struct_2(reverseBits(var_3.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, var_2.x, all(select(vec4<bool>(var_1.a.x, var_1.a.x, false, false), vec4<bool>(var_0.a, var_0.a, var_0.a, true), var_0.a))))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    let var_0 = Struct_2(abs(4294967295u));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(572f)), _wgslsmith_f_op_f32(f32(-1f) * -863f))))) - _wgslsmith_f_op_f32(func_2(vec3<i32>(-54842i, ~0i, abs(countOneBits(-38243i))), var_1, var_0.a)));
    var var_3 = _wgslsmith_sub_vec3_u32(~arg_1.wzz, ~(~(~vec3<u32>(0u, arg_3.x, 0u)) >> (vec3<u32>(var_0.a, 1u, arg_3.x & 13079u) % vec3<u32>(32u))));
    var_3 = countOneBits(reverseBits(max(~vec3<u32>(0u, var_0.a, 0u), vec3<u32>(_wgslsmith_dot_vec3_u32(arg_1.wzw, arg_1.zxz), reverseBits(3060u), 99854u))));
    return var_3.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32) -> StorageBuffer {
    var var_0 = Struct_4(!select(!vec3<bool>(true, true, arg_0.a.x), !vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), select(select(vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(false, true, arg_0.a.x), false), !vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), select(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))), arg_0);
    var var_1 = Struct_4(vec3<bool>(!(arg_0.a.x == true), 1i > -_wgslsmith_clamp_i32(-20202i, -2147483647i, 2147483647i), any(!(!vec4<bool>(true, var_0.a.x, true, true)))), Struct_3(var_0.b.a));
    var_0 = Struct_4(var_0.a, Struct_3(!vec2<bool>(arg_0.a.x, true)));
    let var_2 = select(reverseBits(~(~(~vec4<u32>(21346u, 0u, u_input.c, 1u)))), vec4<u32>(4294967295u, 1833u, arg_1.x, 1u), true);
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-307f, 436f), vec2<f32>(-399f, -1000f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1107f, -132f), vec2<f32>(-1366f, -1202f), arg_0.a.x))), true))))));
    return StorageBuffer(1289u & ~_wgslsmith_mult_u32(u_input.b, 0u), 27296u, i32(-1i) * -15492i, firstTrailingBit(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_3(!vec2<bool>(all(vec4<bool>(true, true, true, false)), false)), reverseBits(~(~vec3<u32>(1u, u_input.c, 4294967295u))) ^ vec3<u32>(max(func_1(Struct_4(vec3<bool>(true, false, true), Struct_3(vec2<bool>(true, false))), vec4<u32>(u_input.c, u_input.a, 17398u, u_input.a), false, vec2<u32>(u_input.a, 31453u)), func_1(Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<bool>(true, false))), vec4<u32>(0u, u_input.a, 5529u, 0u), true, vec2<u32>(99321u, u_input.b))), 0u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(32841u, u_input.c)), firstLeadingBit(vec2<u32>(57826u, 0u)))), ~u_input.a);
}

