struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

var<private> global1: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(7948i, -1i, -1i, 0i), vec4<i32>(24486i, -11862i, i32(-2147483648), 47370i), vec4<i32>(i32(-2147483648), 2858i, -19031i, -1i), vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, 9573i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), 0i, -5289i), vec4<i32>(27325i, 18197i, -18949i, 1i), vec4<i32>(1i, 0i, -130i, 0i), vec4<i32>(-26757i, 47289i, -39760i, 15408i), vec4<i32>(36611i, -1i, -33301i, i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), 60064i, 28322i));

var<private> global2: u32 = 20942u;

var<private> global3: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-15557i, i32(-2147483648)), vec2<i32>(-1i, 1i), vec2<i32>(29526i, 2147483647i), vec2<i32>(-11894i, -17424i), vec2<i32>(-1i, 0i));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = countOneBits(u_input.b);
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 31u)];
    return 71790u;
}

fn func_4(arg_0: u32) -> bool {
    global0 = array<vec3<bool>, 31>();
    var var_0 = select(vec4<bool>(all(global0[_wgslsmith_index_u32(~170807u, 31u)]), true, true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec4<bool>(false, true, true, true)), false, any(vec4<bool>(false, true, true, false)), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, (32213i >> (arg_0 % 32u)) <= 2147483647i, false)), vec4<bool>(((u_input.d | u_input.d) ^ 0i) < -u_input.d, any(select(vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(~4294967295u, 31u)], select(vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(1u, 31u)], vec3<bool>(true, false, false)))), true, !(!all(global0[_wgslsmith_index_u32(arg_0, 31u)]))));
    var var_1 = vec4<i32>(i32(-1i) * -1i, abs(0i) >> (~select(max(u_input.b, u_input.a.x), u_input.c.x, var_0.x) % 32u), u_input.d, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-select(vec3<i32>(-1i, -2147483647i, -2147483647i), vec3<i32>(u_input.d, 40680i, 20038i), true), vec3<i32>(2147483647i, abs(-1i), u_input.d)), firstTrailingBit(-(~vec3<i32>(u_input.d, u_input.d, u_input.d)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(2446f - 177f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1683f))))) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1499f, _wgslsmith_div_f32(1279f, 367f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-188f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-147f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) + _wgslsmith_f_op_f32(f32(-1f) * -477f)))));
    var var_3 = Struct_1(true, var_2.x);
    return true;
}

fn func_2() -> Struct_2 {
    global3 = array<vec2<i32>, 5>();
    let var_0 = Struct_2(func_4(func_3(max(_wgslsmith_clamp_i32(42822i, -38239i, u_input.d), ~16081i), Struct_1(false, _wgslsmith_f_op_f32(f32(-1f) * -851f)))));
    global3 = array<vec2<i32>, 5>();
    global0 = array<vec3<bool>, 31>();
    global3 = array<vec2<i32>, 5>();
    return var_0;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = -reverseBits(vec3<i32>(arg_0 << (~u_input.b % 32u), firstTrailingBit(-1i) | min(-28873i, 1i), u_input.d));
    var var_2 = vec2<f32>(1000f, 2204f);
    global1 = array<vec4<i32>, 11>();
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(var_2.x + -448f));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-1290f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-698f + _wgslsmith_f_op_f32(-1000f + -2629f)))));
    var var_1 = u_input.c.xxz;
    let var_2 = -(2147483647i & min(u_input.d, -_wgslsmith_div_i32(u_input.d, 0i)));
    global0 = array<vec3<bool>, 31>();
    let var_3 = Struct_3(func_1(3823i, ~var_2));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a));
}

