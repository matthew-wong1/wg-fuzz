struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1114f;

var<private> global1: Struct_1 = Struct_1(0u);

var<private> global2: Struct_2 = Struct_2(Struct_1(16289u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-(i32(-1i) * -52289i), _wgslsmith_mod_i32(-21526i, firstTrailingBit(0i))), min(abs(-2147483647i), 0i)), ~65698i);
    var var_1 = Struct_2(Struct_1(~(~_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.b.yx))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1.x)), arg_1.x, true | (any(vec2<bool>(true, true)) || true)));
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x)));
    var var_3 = arg_2;
    return min(i32(-1i) * -27490i, u_input.c.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> i32 {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x)));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1049f, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1779f, -249f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1338f, -622f))))) + arg_2);
    global2 = Struct_2(global2.a);
    let var_1 = Struct_2(global2.a);
    var var_2 = !vec2<bool>(!(!(arg_1.x <= -50267i)), select(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), false))));
    return arg_0.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = -func_4(vec4<i32>(u_input.c.x, i32(-1i) * -54001i, u_input.c.x, 1i << (min(global1.a, 0u) % 32u)), vec4<i32>(min(52918i, _wgslsmith_add_i32(1i, u_input.c.x)), func_3(Struct_2(Struct_1(1u)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0))), Struct_2(global2.a)), 2147483647i, (1i | u_input.c.x) >> (_wgslsmith_dot_vec4_u32(u_input.b, u_input.e) % 32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-229f, 1082f, arg_0, -2338f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, -2975f, -143f), vec4<f32>(-491f, 252f, -1625f, 2822f)))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1158f, 291f, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-747f, arg_0, arg_0, 599f) - vec4<f32>(arg_0, arg_0, 1130f, 1000f))))));
    let var_1 = ~(u_input.e ^ vec4<u32>(max(global2.a.a, global1.a), ~1u, global2.a.a, 4294967295u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1587f)))), -150f, -362f);
    var var_3 = select(!vec2<bool>(true, select(all(vec3<bool>(true, true, false)), true, true)), vec2<bool>(true, !any(vec4<bool>(true, true, true, true))), !(!vec2<bool>(true, any(vec3<bool>(true, true, true)))));
    let var_4 = true;
    return global2.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    var var_0 = func_2(2139f);
    var var_1 = select(u_input.c.wy, vec2<i32>(~_wgslsmith_dot_vec3_i32(~u_input.c.xyw, firstTrailingBit(u_input.c.zzy)), ~(~u_input.c.x)), select(vec2<bool>(all(vec2<bool>(true, true)), 57984u <= _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(var_0.a, 33321u, 0u, u_input.e.x))), vec2<bool>(true, true), false));
    var_0 = Struct_1(var_0.a);
    var var_2 = vec4<bool>(select(any(vec2<bool>(true, true)), select(false, (u_input.d << (0u % 32u)) != firstLeadingBit(4294967295u), !all(vec3<bool>(false, true, true))), !(~(-15775i) <= select(11548i, -2147483647i, true))), true, all(vec4<bool>(false, all(vec4<bool>(true, false, false, false)), all(vec4<bool>(true, true, false, false)), true)) & true, true);
    var var_3 = var_2.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) * _wgslsmith_f_op_f32(f32(-1f) * -315f)))) * arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.zwz;
    let var_1 = true;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))))));
    var var_2 = global2.a;
    let var_3 = Struct_2(Struct_1(88760u));
    let var_4 = select(select(!vec3<bool>(var_1, var_1, true), !select(select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, var_1, true)), select(vec3<bool>(false, var_1, false), vec3<bool>(false, var_1, true), vec3<bool>(var_1, true, true)), true), var_1), !select(!vec3<bool>(var_1, var_1, false), !select(vec3<bool>(false, var_1, true), vec3<bool>(true, false, false), var_1), var_1), vec3<bool>(true, 1u == (~4294967295u >> (~var_0.x % 32u)), var_1 == !all(vec3<bool>(var_1, var_1, var_1))));
    var var_5 = var_3;
    var var_6 = Struct_2(func_2(_wgslsmith_f_op_f32(max(1087f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-218f - 2039f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-831f + 879f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(var_0.x, var_3.a.a, 27665u), 128f))), _wgslsmith_f_op_f32(max(-141f, _wgslsmith_f_op_f32(ceil(-1659f)))))), min(max(_wgslsmith_add_u32(56205u, 0u), ~global1.a) ^ countOneBits(max(global1.a, 1u)), ~_wgslsmith_mod_u32(~0u, 8008u)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1133f, _wgslsmith_f_op_f32(f32(-1f) * -1212f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(450f, 1129f))) + vec2<f32>(-1564f, 1217f))))));
}

