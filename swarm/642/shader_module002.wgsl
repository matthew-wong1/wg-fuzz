struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<bool>(true, false, false), vec3<f32>(2187f, 335f, 2978f), -2660i, false, 2483i), Struct_1(vec3<bool>(true, true, false), vec3<f32>(399f, 1000f, -1483f), 2147483647i, false, -1i), Struct_1(vec3<bool>(false, false, true), vec3<f32>(1260f, -811f, 166f), 2631i, false, 1i), Struct_1(vec3<bool>(false, false, true), vec3<f32>(547f, -1000f, -1198f), 2147483647i, false, 15044i), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-723f, -611f, 2701f), 15184i, false, 1i), Struct_1(vec3<bool>(false, true, true), vec3<f32>(820f, -1339f, -340f), 2147483647i, false, 0i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(539f, -510f, -123f), 58847i, true, 2147483647i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1396f, -2329f, -608f), i32(-2147483648), false, -1i), Struct_1(vec3<bool>(false, true, false), vec3<f32>(698f, -1000f, -1000f), 1i, false, 3803i), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-620f, -1039f, 715f), -21129i, false, 2147483647i), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-275f, 1782f, -598f), -1i, true, -10324i));

var<private> global2: array<u32, 18> = array<u32, 18>(21999u, 4294967295u, 1u, 22111u, 21545u, 0u, 1u, 0u, 4294967295u, 31356u, 1u, 4294967295u, 1u, 7699u, 0u, 2753u, 36507u, 4294967295u);

var<private> global3: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    global3 = arg_2.c;
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.b.x)), 495f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.x - var_0.b.x)))))) * 1270f);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + -118f), var_0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(ceil(464f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_0.b.x, -657f, _wgslsmith_div_f32(-295f, arg_2.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1979f, _wgslsmith_f_op_f32(step(arg_2.b.x, arg_2.b.x))))), -446f, global0.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.x)))));
    global0 = arg_2;
    return select(!arg_2.a, global0.a, true);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 11u)];
    var_0 = global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, global2[_wgslsmith_index_u32(32027u, 18u)]), 18u)] ^ ~1u, 11u)];
    let var_1 = select(var_0.a, vec3<bool>(var_0.a.x, !any(vec3<bool>(false, true, false)) | all(select(global0.a.xy, vec2<bool>(arg_1, global0.d), vec2<bool>(arg_0.x, true))), var_0.d), select(select(var_0.a, select(func_3(-1i, 1u, Struct_1(global0.a, var_0.b, global0.c, var_0.d, u_input.e.x)), !global0.a, func_3(var_0.e, 10160u, Struct_1(var_0.a, var_0.b, u_input.b, arg_1, global0.e)).x), global0.a), vec3<bool>(func_3(~1i, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45830u, 18u)], 18u)], 18u)], 59074u, global2[_wgslsmith_index_u32(u_input.d, 18u)]), vec3<u32>(0u, global2[_wgslsmith_index_u32(u_input.c, 18u)], global2[_wgslsmith_index_u32(55772u, 18u)])), 11u)]).x, true, true), true | (_wgslsmith_f_op_f32(exp2(global0.b.x)) >= -1000f)));
    global1 = array<Struct_1, 11>();
    let var_2 = u_input.e.zxx;
    return 484f;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = global0.a.x == global0.d;
    let var_1 = !(!any(vec2<bool>(true, global0.a.x)) | false);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-398f, arg_0), global0.b.zz) * _wgslsmith_f_op_vec2_f32(-global0.b.zx)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec2<bool>(global0.d, true), true)))), arg_0), all(vec2<bool>(!var_0, true)))));
    global0 = Struct_1(!global0.a, _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.b, vec3<f32>(var_2.x, arg_0, global0.b.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(970f, 210f, 784f))), vec3<f32>(1414f, _wgslsmith_f_op_f32(abs(global0.b.x)), _wgslsmith_div_f32(var_2.x, var_2.x)), global0.a))), -30636i, var_2.x == _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_mult_i32(-43002i, -2983i));
    let var_3 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.b)))))), -6944i, true, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.e.yx >> ((vec2<u32>(55614u, u_input.d) | vec2<u32>(58861u, u_input.c)) % vec2<u32>(32u)), max(u_input.e.zy, u_input.e.yx ^ u_input.e.xx)), -52664i));
    return Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.b) + _wgslsmith_f_op_vec3_f32(-var_3.b))))), 0i, var_3.d, ~((global0.c << (912u % 32u)) | reverseBits(-28208i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = func_1(1440f);
    let var_1 = func_1(-1545f);
    var_0 = global1[_wgslsmith_index_u32(select(u_input.d, 54833u, -arg_0.x <= _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2.c, _wgslsmith_clamp_i32(-1i, var_0.c, arg_0.x)), u_input.e.x)), 11u)];
    var var_2 = _wgslsmith_sub_i32(var_0.c, u_input.e.x);
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-var_1.b), arg_0.x, _wgslsmith_f_op_f32(-292f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))) <= arg_2.b.x, 33243i);
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.d, 11u)];
    var var_1 = Struct_1(vec3<bool>(!global0.d, false, true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_4(vec2<i32>(var_0.c, -1i), 209f, func_1(global0.b.x))), _wgslsmith_f_op_f32(func_4(min(vec2<i32>(-33454i, -1i), u_input.e.xy), global0.b.x, Struct_1(vec3<bool>(true, true, var_0.a.x), vec3<f32>(-2065f, -606f, var_0.b.x), -6027i, false, -8347i))), var_0.b.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global0.b * var_0.b))), var_0.a.x)), i32(-1i) * -(i32(-1i) * -var_0.c), any(!(!var_0.a)), select(-(~(-7293i)), abs(firstLeadingBit(15200i)), true) >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 18u)], 18u)] % 32u));
    global3 = -1i;
    let var_2 = reverseBits(global2[_wgslsmith_index_u32(firstTrailingBit(1u), 18u)]);
    var var_3 = global1[_wgslsmith_index_u32(var_2 & ~(~global2[_wgslsmith_index_u32(~1u, 18u)] & (64617u ^ _wgslsmith_clamp_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33038u, 18u)], 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 18u)], 18u)]))), 11u)];
    global3 = abs(1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.b.x, -470f)))), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 1000f, global0.b.x, 1013f))))));
}

