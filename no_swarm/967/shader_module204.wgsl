struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: vec2<f32> = vec2<f32>(-545f, 1000f);

var<private> global2: array<vec3<bool>, 21>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global2 = array<vec3<bool>, 21>();
    var var_0 = select(!vec4<bool>(!(5276u < u_input.b.x), true, true, global0.x || all(vec3<bool>(true, false, false))), vec4<bool>(false, !(!(global0.x & global0.x)), !global0.x, !all(select(vec2<bool>(global0.x, false), global0.zz, vec2<bool>(false, false)))), vec4<bool>(!((u_input.b.x <= u_input.b.x) || false), all(select(select(vec4<bool>(true, true, global0.x, false), vec4<bool>(false, false, false, global0.x), false), !vec4<bool>(false, global0.x, global0.x, true), all(vec4<bool>(false, false, global0.x, global0.x)))), global0.x, ~1i >= _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-3364i, -12687i, 38953i)), vec3<i32>(1i, 1i, 1i))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1954f), global1.x)), vec2<f32>(-466f, _wgslsmith_f_op_f32(global1.x * global1.x)));
    global0 = select(!select(vec3<bool>(false, any(global0.zz), global0.x), vec3<bool>(!global0.x, global0.x, !var_0.x), !all(var_0.zzw)), select(vec3<bool>(!var_0.x, ~84824u == select(u_input.c, u_input.b.x, true), !(u_input.c <= u_input.b.x)), global2[_wgslsmith_index_u32(~(~1u), 21u)], var_0.yxx), global2[_wgslsmith_index_u32(42673u, 21u)]);
    var var_2 = _wgslsmith_mult_i32(abs(~(~reverseBits(26210i))), i32(-1i) * -1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(758f - global1.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global2 = array<vec3<bool>, 21>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f * 447f) - 897f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * 322f), global1.x);
    let var_1 = arg_1;
    var var_2 = vec2<bool>((true || !(!global0.x)) && !any(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, true, false))), global0.x);
    var var_3 = arg_0.a.x;
    return Struct_1(arg_1.a);
}

fn func_1() -> vec3<u32> {
    global1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -152f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-412f, -721f))))))), vec2<f32>(1246f, global1.x)));
    let var_0 = func_2(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -12598i), vec3<i32>(2147483647i, 70287i, 6383i)), 1i), -_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 13660i, -2147483647i), vec3<i32>(52635i, -39307i, -53183i)))), Struct_1(vec3<i32>(51002i >> (u_input.c % 32u), 38494i, ~(-42976i)) | -(~vec3<i32>(2147483647i, 45984i, 13737i))));
    global2 = array<vec3<bool>, 21>();
    let var_1 = global2[_wgslsmith_index_u32(12060u, 21u)];
    var var_2 = Struct_1(var_0.a);
    return vec3<u32>(u_input.a.x, u_input.c, ~(~(~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_2(func_2(func_2(func_2(Struct_1(vec3<i32>(0i, 1i, -2147483647i)), Struct_1(vec3<i32>(-2147483647i, 28063i, 1i))), func_2(func_2(Struct_1(vec3<i32>(0i, -22337i, 1i)), Struct_1(vec3<i32>(0i, 20245i, -1i))), func_2(Struct_1(vec3<i32>(1i, -39338i, -1i)), Struct_1(vec3<i32>(2147483647i, -2147483647i, -2147483647i))))), func_2(func_2(func_2(Struct_1(vec3<i32>(-33338i, 1i, -60744i)), Struct_1(vec3<i32>(-2147483647i, 30605i, 45653i))), func_2(Struct_1(vec3<i32>(-1165i, -1i, -2147483647i)), Struct_1(vec3<i32>(22869i, -13388i, 2147483647i)))), func_2(Struct_1(vec3<i32>(-1i, 17925i, -1i)), Struct_1(vec3<i32>(-41580i, 2147483647i, -7739i))))), func_2(func_2(func_2(Struct_1(vec3<i32>(-40653i, -48032i, -2147483647i)), Struct_1(vec3<i32>(1i, 1i, 4392i))), func_2(func_2(Struct_1(vec3<i32>(-52132i, 37373i, 1i)), Struct_1(vec3<i32>(2147483647i, 25739i, -1i))), Struct_1(vec3<i32>(-2147483647i, 2147483647i, -1i)))), func_2(Struct_1(vec3<i32>(-19895i, -21600i, -40416i)), func_2(func_2(Struct_1(vec3<i32>(2147483647i, -23708i, 35505i)), Struct_1(vec3<i32>(-4139i, -1i, -1i))), Struct_1(vec3<i32>(1i, 1i, 14086i))))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, global1.x))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(418f, global1.x) * vec2<f32>(global1.x, global1.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(global1.x, global1.x)))))) + vec2<f32>(_wgslsmith_f_op_f32(-192f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -2735f) * global1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(step(global1.x, global1.x))) * _wgslsmith_f_op_f32(global1.x + global1.x))));
    global2 = array<vec3<bool>, 21>();
    var_0 = vec3<u32>(_wgslsmith_add_u32(38231u, ~(~u_input.c)), _wgslsmith_mult_u32(~u_input.c, 0u), 0u ^ ~var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

