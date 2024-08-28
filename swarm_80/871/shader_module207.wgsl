struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(1i, 2147483647i));

var<private> global1: i32;

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec2<i32>(-21639i, i32(-2147483648))), Struct_3(vec2<i32>(-13483i, 74144i)), Struct_3(vec2<i32>(2141i, -1i)), Struct_3(vec2<i32>(-2880i, 1i)), Struct_3(vec2<i32>(1145i, 0i)), Struct_3(vec2<i32>(46811i, 2147483647i)), Struct_3(vec2<i32>(2147483647i, i32(-2147483648))), Struct_3(vec2<i32>(2147483647i, -42560i)), Struct_3(vec2<i32>(-1i, 2147483647i)), Struct_3(vec2<i32>(-32350i, -63060i)), Struct_3(vec2<i32>(1i, 1i)), Struct_3(vec2<i32>(7693i, i32(-2147483648))), Struct_3(vec2<i32>(0i, -16938i)), Struct_3(vec2<i32>(-1i, -24747i)), Struct_3(vec2<i32>(0i, -17196i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> u32 {
    global0 = global2[_wgslsmith_index_u32(~1u, 15u)];
    global1 = global0.a.x;
    var var_0 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(0u, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(46561u, u_input.c))), ~abs(vec2<u32>(u_input.a, 54273u))), 1u >> (0u % 32u)), u_input.c);
    var var_1 = vec2<f32>(466f, -687f);
    var var_2 = Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -385f)), _wgslsmith_f_op_f32(f32(-1f) * -952f)))), !vec4<bool>(true, false, _wgslsmith_div_f32(208f, 320f) == _wgslsmith_f_op_f32(-var_1.x), true), all(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, false, true), true)), var_1.x);
    return ~1u;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = global0.a.x;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1079f, -1983f, true)), _wgslsmith_f_op_f32(211f * 1000f)))))));
    let var_2 = !all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), all(vec2<bool>(true, false))));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1)), 526f)));
    global0 = Struct_3(~firstLeadingBit(global0.a));
    return _wgslsmith_f_op_f32(f32(-1f) * -1527f);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(u_input.b, min(global0.a.x, max(1i, _wgslsmith_mult_i32(9149i, global0.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-523f, -254f, -1252f) - vec3<f32>(1143f, 1000f, -405f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1709f, -432f, 1063f), vec3<f32>(-1000f, -1120f, 984f)))))), select(vec4<bool>(any(vec3<bool>(false, true, false)), all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false)), true), !vec4<bool>(any(vec3<bool>(false, true, true)), true, true, any(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)) && any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-986f, _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.c, u_input.a, u_input.a))), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global1 = -(_wgslsmith_sub_i32(~0i, -1i) | var_0.a);
    let var_1 = _wgslsmith_clamp_vec4_i32(min(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, -1i, 58502i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(global0.a.x, -7564i, u_input.b, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a.x, 20793i, 1i, -5853i), vec4<i32>(-1i, global0.a.x, 1i, u_input.b)))), ~(~abs(vec4<i32>(u_input.b, -29136i, 2147483647i, var_0.a)))), -((_wgslsmith_div_vec4_i32(vec4<i32>(-35641i, 2147483647i, -21441i, u_input.b), vec4<i32>(u_input.b, var_0.a, -25784i, 3813i)) | vec4<i32>(global0.a.x, var_0.a, var_0.a, var_0.a)) & vec4<i32>(2147483647i, 1i, _wgslsmith_sub_i32(-8724i, -44821i), var_0.a)), vec4<i32>(var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 7569i), ~vec2<i32>(-1i, u_input.b))), firstTrailingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, 1i, 14510i, global0.a.x), vec4<i32>(global0.a.x, u_input.b, -1336i, u_input.b))), _wgslsmith_sub_i32(u_input.b, ~min(global0.a.x, global0.a.x))));
    var var_2 = var_0.c.wz;
    var var_3 = var_0;
    return -var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = reverseBits(0i) >> (0u % 32u);
    let var_2 = vec3<i32>(u_input.b, ~u_input.b, -1i);
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1731f), _wgslsmith_f_op_f32(abs(-1608f))), _wgslsmith_f_op_f32(max(710f, 1000f)))), _wgslsmith_f_op_f32(2509f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -178f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.c, 0u, 2720u)))))), false));
    var var_5 = abs(-((0i | func_3()) << (~countOneBits(u_input.a) % 32u)));
    var var_6 = vec4<bool>(var_3, true, var_3, var_3);
    let var_7 = select(select(vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 21736u), vec2<u32>(u_input.a, u_input.c)) != u_input.a, all(!var_6.xx), true, !var_3), select(!(!vec4<bool>(true, var_3, false, var_3)), vec4<bool>(false, var_6.x, var_3, true), true), _wgslsmith_f_op_f32(var_4 * _wgslsmith_f_op_f32(-var_4)) != 1f), !select(vec4<bool>(true, var_3, var_6.x, !var_3), !vec4<bool>(false, false, var_6.x, true), !(!vec4<bool>(var_6.x, var_3, var_6.x, false))), !(!select(select(vec4<bool>(var_3, var_3, var_3, false), vec4<bool>(var_3, true, var_3, var_6.x), vec4<bool>(var_3, var_6.x, var_6.x, true)), vec4<bool>(var_3, var_6.x, var_3, var_3), select(vec4<bool>(true, true, false, var_6.x), vec4<bool>(var_6.x, false, var_3, true), vec4<bool>(var_6.x, false, false, var_6.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(~1u, reverseBits(~16206u)), countOneBits(vec2<u32>(u_input.a, u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(171f, -626f)), _wgslsmith_f_op_f32(max(var_4, var_4)), _wgslsmith_f_op_f32(-1228f - 1665f), _wgslsmith_f_op_f32(f32(-1f) * -426f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)));
}

