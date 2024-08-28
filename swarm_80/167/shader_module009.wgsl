struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(22057i, 13984u, true, -702f), Struct_1(20759i, 9212u, true, -1023f), Struct_1(1i, 31340u, false, 1123f), Struct_1(-1i, 57398u, false, 833f));

var<private> global1: Struct_1 = Struct_1(1i, 4294967295u, false, 1546f);

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1i, 23656u, false, 2981f), Struct_1(-19541i, 4294967295u, true, -1454f), Struct_1(-1i, 5504u, true, -1000f), Struct_1(1i, 4294967295u, true, -206f), Struct_1(1i, 0u, true, 2605f), Struct_1(-8811i, 18235u, true, 508f), Struct_1(-12336i, 0u, false, -229f), Struct_1(0i, 0u, true, 1000f), Struct_1(-42387i, 8166u, true, -1000f), Struct_1(679i, 46573u, false, -598f), Struct_1(-1i, 28003u, false, 608f), Struct_1(1i, 36867u, false, -376f), Struct_1(2814i, 16193u, false, -1143f), Struct_1(19685i, 0u, false, -834f), Struct_1(0i, 4294967295u, false, 469f), Struct_1(-29791i, 1u, true, -1027f), Struct_1(0i, 776u, false, -189f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>) -> vec3<u32> {
    global2 = array<Struct_1, 17>();
    var var_0 = global1.b;
    let var_1 = !all(select(!vec4<bool>(false, true, global1.c, false), vec4<bool>(select(false, true, true), true, select(false, global1.c, global1.c), false), vec4<bool>(global1.c & global1.c, all(vec4<bool>(true, true, false, global1.c)), global1.c, all(vec2<bool>(global1.c, global1.c)))));
    return vec3<u32>(10587u, 1u, u_input.c.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(arg_3.b)), 4u)];
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~147807u, min(min(u_input.c.x, 6941u), u_input.c.x >> (arg_0.b % 32u)) | max(~arg_1.b, u_input.c.x), _wgslsmith_dot_vec3_u32(~func_3(u_input.c.wx, u_input.c.wzy), ~select(vec3<u32>(global1.b, arg_0.b, arg_3.b), vec3<u32>(global1.b, 53027u, 0u), arg_0.c))), vec3<u32>(~1u, arg_1.b, 57873u));
    var var_2 = 1u;
    let var_3 = arg_1.d;
    let var_4 = func_3(vec2<u32>(u_input.c.x, abs(arg_1.b)) | vec2<u32>(~var_0.b | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.c.x, arg_0.b), vec4<u32>(41995u, var_0.b, var_0.b, var_0.b)), 1u), ~(u_input.c.www >> (~(vec3<u32>(var_1, arg_0.b, arg_0.b) << (u_input.c.wyz % vec3<u32>(32u))) % vec3<u32>(32u))));
    return var_0.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -795f)));
    let var_1 = ~0u;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(global0[_wgslsmith_index_u32(global1.b, 4u)], Struct_1(_wgslsmith_add_i32(~arg_0.a, ~u_input.b), 1u, arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.d, 258f)), global1.d)), vec2<i32>(arg_1.x, global1.a), arg_0), ~(~_wgslsmith_mult_u32(select(0u, 18215u, false), ~44884u))), 17u)];
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.d, -1377f, false))) - _wgslsmith_f_op_f32(sign(-1240f)));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1073f, var_2.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-188f, 2106f)))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-131f, var_2.d)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(global1.d - -270f)), vec2<bool>(!arg_0.c, arg_0.c))))));
    return vec4<bool>(any(vec2<bool>(false, global1.c)), !(_wgslsmith_add_i32(global1.a, 1i) > -2147483647i), all(!select(select(arg_2, vec2<bool>(global1.c, global1.c), arg_2.x), arg_2, select(vec2<bool>(true, true), vec2<bool>(arg_0.c, true), false))), all(vec3<bool>(any(!vec2<bool>(global1.c, true)), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    var var_0 = Struct_1(1i, ~1u, any(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.d, _wgslsmith_div_f32(-779f, -1609f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.d)))), _wgslsmith_f_op_f32(-826f + _wgslsmith_f_op_f32(step(var_0.d, var_0.d)))));
    var var_2 = select(select(vec4<bool>(true, all(vec2<bool>(true, true)), !global1.c || var_0.c, true), vec4<bool>(!global1.c, !var_0.c, true, any(select(vec4<bool>(false, global1.c, true, false), vec4<bool>(var_0.c, var_0.c, global1.c, global1.c), vec4<bool>(global1.c, var_0.c, var_0.c, true)))), var_0.c), !func_1(Struct_1(15840i, ~global1.b, !global1.c, var_1.x), ~(~vec4<i32>(u_input.a.x, u_input.b, -27644i, 2293i)), select(vec2<bool>(var_0.c, true), !vec2<bool>(var_0.c, true), vec2<bool>(global1.c, false))), func_1(global2[_wgslsmith_index_u32(global1.b, 17u)], min(abs(u_input.a), u_input.a) & vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, var_0.a), ~var_0.a, var_0.a | var_0.a, countOneBits(global1.a)), vec2<bool>(any(!vec2<bool>(global1.c, global1.c)), var_0.c)));
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.b, 72173u, global1.b) << (u_input.c.zxw % vec3<u32>(32u)), vec3<u32>(~var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(6751u, var_0.b, 2709u), u_input.c.wyw), 4294967295u)), 1u, ~(~var_0.b >> (~1u % 32u))), 4294967295u);
    let var_4 = _wgslsmith_f_op_vec2_f32(var_1 - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.d * -1363f))), var_0.d))));
    var var_5 = -(u_input.a ^ vec4<i32>(-_wgslsmith_div_i32(-2090i, -1i), -2147483647i, ~(~var_0.a), -_wgslsmith_dot_vec2_i32(u_input.a.zw, u_input.a.xw)));
    var_0 = global2[_wgslsmith_index_u32(0u, 17u)];
    var var_6 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1960f * 1465f), var_0.d, -1316f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.d, global1.d) * vec3<f32>(193f, var_1.x, 247f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 404f, global1.d))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(652f, -1623f, var_4.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, global1.d, 839f)), vec3<bool>(global1.c, var_2.x, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, u_input.a.wxy, 66061u, select(var_0.b, min(1u, 51686u), any(!(!vec4<bool>(var_2.x, var_0.c, false, false)))), var_5.zxz);
}

