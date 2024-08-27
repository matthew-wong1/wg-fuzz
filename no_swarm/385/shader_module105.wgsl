struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -635f;

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), 1121f, vec2<f32>(-924f, -136f), vec4<f32>(256f, -826f, -225f, -2715f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, 4294967295u, 64865u, 4294967295u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, arg_3.x, u_input.d.x) & ~vec4<u32>(arg_3.x, arg_3.x, 4294967295u, 9587u), vec4<u32>(arg_3.x, ~arg_3.x, 4294967295u, ~20041u)) % vec4<u32>(32u)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, 23148u, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), ~select(vec4<u32>(u_input.d.x, 27185u, arg_3.x, arg_3.x), vec4<u32>(1u, u_input.d.x, u_input.b.x, 37007u), true))));
    global1 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))))), global1.d.xz, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(global1.d.x * -1073f))), -1191f, 411f, arg_2));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2)));
    global0 = 240f;
    let var_2 = arg_0;
    return -(~_wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c.x, 2147483647i, -1i), vec4<i32>(global1.a, -9177i, arg_1.x, u_input.e.x)), reverseBits(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) & vec4<i32>(global1.a, 1i, global1.a, -24482i))));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec3<bool> {
    var var_0 = global1.a;
    var_0 = -2147483647i;
    var_0 = -_wgslsmith_clamp_i32(-_wgslsmith_div_i32(u_input.e.x, u_input.c.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 14590i), ~u_input.c.yz), -7865i);
    let var_1 = Struct_1(1i, 1000f, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1521f, 863f))), global1.d);
    let var_2 = ~vec3<i32>(-12089i, global1.a ^ 2147483647i, _wgslsmith_mult_i32(1i, global1.a));
    return select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), any(vec3<bool>(false, false, true))), vec3<bool>(any(vec3<bool>(true, false, true)), false, false), true), vec3<bool>(true, true, true), true), select(!vec3<bool>(true, select(false, true, true), true), vec3<bool>(true, true, true), false));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> StorageBuffer {
    let var_0 = vec3<bool>(true, all(vec2<bool>(true, false)) == (_wgslsmith_dot_vec4_i32(func_2(1783f, u_input.e.yx, 1082f, arg_0), vec4<i32>(49800i, 1i, -41176i, 1i)) >= (-2147483647i | min(global1.a, -17932i))), true);
    var var_1 = true;
    var var_2 = select(select(!(!vec3<bool>(var_0.x, var_0.x, true)), func_3(1u, ~_wgslsmith_mult_u32(4294967295u, 0u)), var_0), vec3<bool>(func_3(~(~arg_0.x), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.d.x, arg_0.x), arg_0.x, 47568u)).x, false, true), select(select(var_0, var_0, func_3(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(arg_0.x, 51946u)), firstTrailingBit(40711u))), var_0, func_3(abs(u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, 0u)))));
    let var_3 = Struct_1(u_input.c.x, 1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.d.wz)) - vec2<f32>(-1250f, -968f)))) * global1.c), vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(floor(-1444f)), global1.c.x, _wgslsmith_div_f32(-1400f, arg_1)));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return StorageBuffer(max(vec2<u32>(firstTrailingBit(4294967295u), min(firstTrailingBit(u_input.d.x), ~0u)), firstTrailingBit(countOneBits(arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(-u_input.c.x, 489f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(global1.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c) * vec2<f32>(2718f, global1.d.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, global1.d.x)))), firstLeadingBit(~1u) >= u_input.a.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1016f + -626f) - _wgslsmith_div_f32(1973f, -1792f)), _wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_f_op_f32(704f + -1356f), true)), -127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, 1479f, global1.b, global1.d.x) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2349f, global1.d.x, -926f, global1.b), vec4<f32>(global1.b, -696f, -190f, 1000f))))))));
    let var_0 = u_input.d;
    let var_1 = !(22147u >= _wgslsmith_mult_u32(reverseBits(4294967295u), ~1u | u_input.a.x));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.e, -(~u_input.c)), _wgslsmith_div_f32(-376f, _wgslsmith_f_op_f32(f32(-1f) * -515f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, _wgslsmith_f_op_f32(min(global1.c.x, -1192f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.d.x, 868f)))))), global1.d);
    let var_3 = !(!vec4<bool>(any(vec4<bool>(var_1, var_1, var_1, var_1)), true, var_2.a >= ~1630i, false));
    global1 = Struct_1(_wgslsmith_mult_i32(global1.a, ~6409i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_vec2_f32(-var_2.d.yw), var_2.d);
    let x = u_input.a;
    s_output = func_1(~(~_wgslsmith_add_vec2_u32(var_0.xx << (var_0.zz % vec2<u32>(32u)), var_0.xz)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * global1.b))));
}

