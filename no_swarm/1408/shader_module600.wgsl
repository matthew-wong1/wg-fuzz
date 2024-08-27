struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32) -> vec3<f32> {
    global1 = arg_0;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1135f)))))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2, arg_3: vec4<f32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -1000f), Struct_1(-2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(step(-1567f, -1122f)), arg_3.x), _wgslsmith_f_op_vec2_f32(-arg_3.yw))) * arg_2.c));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(829f, 489f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3.x, -1000f), vec2<f32>(-148f, var_0.c.x))))) * var_0.c) + arg_3.xw));
    let var_2 = vec4<f32>(2099f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, -577f)))), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(floor(1927f))), arg_2.c.x);
    let var_3 = 47725u >= max(~u_input.c, _wgslsmith_add_u32(_wgslsmith_add_u32(reverseBits(17921u), ~u_input.c), u_input.c));
    return 0i;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<bool>) -> StorageBuffer {
    let var_0 = Struct_3(Struct_2(arg_0.x, arg_1.b, _wgslsmith_f_op_vec2_f32(arg_1.c + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) * arg_0.xx))))), ~vec4<u32>(40838u, 4294967295u, global0[_wgslsmith_index_u32((u_input.c & 16844u) & _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)]), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(1u, 3u)])), 3u)], ~22725u | (u_input.b.x << (4294967295u % 32u))), all(!(!select(vec3<bool>(false, true, false), vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(true, false, arg_2.x)))), arg_1.b, !(!(_wgslsmith_f_op_f32(arg_1.a * arg_0.x) >= _wgslsmith_f_op_f32(arg_1.a + arg_1.c.x))));
    global1 = _wgslsmith_f_op_f32(1675f * var_0.a.c.x);
    var var_1 = Struct_2(2014f, Struct_1(_wgslsmith_mod_i32(-1i, countOneBits(arg_1.b.a)) << (_wgslsmith_dot_vec3_u32(u_input.b.yzx, var_0.b.yyy) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.c.x)) * _wgslsmith_f_op_f32(sign(726f)))), var_0.a.a));
    let var_2 = abs(~vec2<i32>(u_input.d, -(-1i | arg_1.b.a)));
    global0 = array<u32, 3>();
    return StorageBuffer(global0[_wgslsmith_index_u32(~max(~74562u, 4294967295u), 3u)]);
}

fn func_1() -> StorageBuffer {
    let var_0 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), false));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -209f);
    let var_1 = u_input.b.x;
    let var_2 = u_input.a;
    let var_3 = -vec2<i32>(var_2, 2147483647i);
    return func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(478f, 1100f, -711f)), _wgslsmith_f_op_vec3_f32(func_2(645f)), !var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-477f - -460f), 318f, _wgslsmith_div_f32(308f, -1096f))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-157f)) * 1516f), Struct_1(~func_3(vec4<i32>(-1i, 0i, 2147483647i, var_2), var_3.x, Struct_2(-613f, Struct_1(var_2), vec2<f32>(-528f, 683f)), vec4<f32>(-149f, -1141f, 517f, 1554f))), vec2<f32>(_wgslsmith_f_op_f32(-367f - 1971f), _wgslsmith_f_op_f32(f32(-1f) * -1522f))), vec4<bool>(any(select(select(vec3<bool>(false, var_0.x, true), var_0.wzy, vec3<bool>(true, var_0.x, false)), select(var_0.zyx, var_0.zyz, vec3<bool>(var_0.x, false, true)), any(var_0.xz))), all(select(var_0.zx, var_0.xy, vec2<bool>(var_0.x, var_0.x))), var_0.x, !var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

