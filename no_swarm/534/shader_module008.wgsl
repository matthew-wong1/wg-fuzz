struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(u_input.a << (vec4<u32>(abs(0u), countOneBits(u_input.a.x), min(u_input.a.x, 1u), u_input.a.x ^ 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(u_input.a, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u), vec4<u32>(1009u, u_input.a.x, u_input.a.x, 21493u)))), ~(~(vec3<u32>(u_input.a.x, 79517u, u_input.a.x) & (u_input.a.zwx << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))))), -310f);
    let var_1 = Struct_1(firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a.x, u_input.a.x, 46469u, 12607u), var_0.a, false), var_0.a), ~countOneBits(vec4<u32>(10411u, 33792u, 59420u, u_input.a.x)), var_0.a)), u_input.a.xww, 1137f);
    var var_2 = Struct_1(countOneBits(vec4<u32>(reverseBits(0u), 16706u | var_1.b.x, u_input.a.x >> (0u % 32u), u_input.a.x) ^ (vec4<u32>(4294967295u, 0u, u_input.a.x, 57516u) >> (countOneBits(vec4<u32>(0u, 42210u, var_1.b.x, u_input.a.x)) % vec4<u32>(32u)))), u_input.a.xwy, _wgslsmith_f_op_f32(-398f * _wgslsmith_f_op_f32(trunc(arg_0.x))));
    let var_3 = u_input.b;
    let var_4 = var_2.c;
    return var_2.b.yz;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(u_input.a, _wgslsmith_div_vec3_u32(~u_input.a.wyw & (vec3<u32>(u_input.a.x, 0u, u_input.a.x) << (vec3<u32>(73882u, 4294967295u, u_input.a.x) % vec3<u32>(32u))), u_input.a.zyx) & u_input.a.yyw, -266f);
    let var_1 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-834f, 1000f, var_0.c)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c, 1438f, 854f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -1000f, var_0.c))))));
    var var_2 = Struct_1(~_wgslsmith_div_vec4_u32(~vec4<u32>(84781u, var_0.a.x, 1u, var_1.x), ~_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(0u, 1u, var_0.b.x, 4294967295u))), var_0.b, var_0.c);
    var var_3 = -u_input.b;
    var_3 = -1i;
    return Struct_1(abs(u_input.a), ~_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a.yyx, vec3<u32>(var_2.a.x, 70519u, var_2.a.x)), var_0.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.c)), -1025f)));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = var_0.c;
    var var_2 = vec4<bool>(!(!all(vec4<bool>(true, true, false, false))), !all(vec2<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(false, true, true)))), all(vec4<bool>(true, (410f > arg_2.c) & true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), false)), any(vec4<bool>(false, !all(vec2<bool>(true, true)), true | any(vec2<bool>(true, false)), true)));
    var_0 = Struct_1(~(~select(vec4<u32>(39803u, arg_2.a.x, arg_0.x, arg_2.a.x), u_input.a & vec4<u32>(u_input.a.x, var_0.b.x, 16680u, 3466u), false)), vec3<u32>(func_3(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), -1000f, -132f)).x, ~max(29552u, 47826u) >> (arg_2.b.x % 32u), 1516u), -741f);
    let var_3 = vec4<i32>(abs(u_input.b >> (arg_0.x % 32u)), ~u_input.b, -1i, u_input.b);
    return arg_2;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = (-2147483647i | ~abs(u_input.b)) != -max(1i, u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f));
    let var_2 = all(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_3 = func_4(max(~vec4<u32>(~89687u, 0u, u_input.a.x, 50177u), vec4<u32>(4294967295u, arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.xz) >> (1u % 32u), arg_0)), _wgslsmith_dot_vec4_i32(abs(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), vec4<i32>(-34400i, 1i, u_input.b, u_input.b)), vec4<i32>(1i, u_input.b, u_input.b, 1i), false)), vec4<i32>(u_input.b, u_input.b, -1i, abs(22834i))), func_2());
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1548f, var_3.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(566f, var_3.c))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c + var_3.c), var_3.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_3.c * 1046f), _wgslsmith_div_f32(-474f, _wgslsmith_f_op_f32(-var_3.c)), var_3.c)));
    return arg_0 != 35738u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_div_f32(-1581f, 892f), any(vec4<bool>(false, true, false, true))))) - 521f));
    let var_1 = vec3<u32>(u_input.a.x, 0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(0u, 810u), ~u_input.a.x), ~(~u_input.a.yz)));
    let var_2 = func_1(~firstLeadingBit(629u));
    var var_3 = var_0;
    var_3 = 314f;
    let var_4 = false;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0)));
    var var_5 = select(vec2<bool>(true, var_2), vec2<bool>(true, var_2), vec2<bool>(true, var_2));
    var var_6 = !(!(!var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(-(~abs(vec2<i32>(-4061i, u_input.b))), vec2<i32>(1i, ~(1i >> (u_input.a.x % 32u))), all(select(vec3<bool>(false, var_4, false), vec3<bool>(false, false, var_2), vec3<bool>(var_5.x, true, var_2)))), -1i, -min(2147483647i ^ -u_input.b, select(u_input.b << (u_input.a.x % 32u), ~42062i, true)), reverseBits(countOneBits(firstTrailingBit(vec2<i32>(u_input.b, u_input.b)))));
}

