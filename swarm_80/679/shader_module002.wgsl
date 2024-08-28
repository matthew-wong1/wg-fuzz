struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(0i, -1249i), vec2<i32>(1i, 18483i), vec2<i32>(39003i, -55983i), vec2<i32>(10405i, -13638i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, -2384i), vec2<i32>(1i, -1i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = 55343u;
    let var_1 = -2706f;
    let var_2 = -_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(~17513u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 8u)], vec2<i32>(14784i, 54818i)) << (~u_input.a % vec2<u32>(32u)), vec2<i32>(~(0i >> (u_input.a.x % 32u)), 1i));
    var var_3 = vec2<bool>(true, true);
    let var_4 = ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, var_2.x, 1i, var_2.x) & vec4<i32>(0i, var_2.x, 12155i, 23318i), vec4<i32>(-32545i, var_2.x, var_2.x, var_2.x)) ^ -countOneBits(countOneBits(vec4<i32>(var_2.x, 1i, -2147483647i, var_2.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-371f)), -298f)) * var_1)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1283f * _wgslsmith_f_op_f32(select(-1619f, -721f, arg_1.x)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(871f)))));
    var var_1 = ~vec2<u32>(~u_input.a.x, firstTrailingBit(~(arg_0.b << (41182u % 32u))));
    var_0 = 360f;
    var var_2 = Struct_1(vec4<i32>(-25345i, 1i, 1i, -(~(i32(-1i) * -1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(155f)), 1059f, _wgslsmith_f_op_f32(f32(-1f) * -538f), 171f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-443f, -1501f, 1000f, -722f))))));
    return Struct_1(var_2.a, var_2.b);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = func_2(arg_0, !(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, false, true))));
    global0 = array<vec2<i32>, 8>();
    let var_1 = Struct_2(!arg_0.a, abs(~4294967295u));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -865f) * _wgslsmith_f_op_f32(ceil(-180f))))))));
    let var_3 = _wgslsmith_clamp_vec2_i32(~global0[_wgslsmith_index_u32(var_1.b, 8u)], -(firstTrailingBit(abs(var_0.a.wy)) & -_wgslsmith_sub_vec2_i32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], vec2<i32>(18013i, var_0.a.x))), ~_wgslsmith_clamp_vec2_i32(-(vec2<i32>(0i, var_0.a.x) | vec2<i32>(2147483647i, 32675i)), var_0.a.wx, _wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], var_0.a.zz) ^ -vec2<i32>(785i, -28525i)));
    return 66654u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = select(vec3<bool>(true, true, u_input.a.x != ~func_1(Struct_2(vec4<bool>(true, false, true, true), u_input.a.x), false, 1464f)), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true))), true);
    global0 = array<vec2<i32>, 8>();
    var_1 = vec3<bool>(false, true && any(vec2<bool>(1u == u_input.a.x, var_1.x != var_1.x)), select(!(true | var_1.x), var_1.x, all(var_1.zy)));
    let var_2 = Struct_2(vec4<bool>(all(vec3<bool>(true, var_1.x, var_1.x)) & var_1.x, all(var_1.yz), ~(u_input.a.x << (1u % 32u)) > _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(28114u, 0u)), any(vec3<bool>(any(vec3<bool>(false, false, var_1.x)), select(var_1.x, var_1.x, true), true))), firstTrailingBit(abs(~20342u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, u_input.a.x, -func_2(Struct_2(!var_2.a, u_input.a.x), select(select(var_2.a, var_2.a, true), select(vec4<bool>(var_2.a.x, var_2.a.x, true, true), var_2.a, false), var_2.a.x)).a.wyy);
}

