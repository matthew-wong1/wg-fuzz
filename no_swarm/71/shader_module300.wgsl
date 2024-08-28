struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec4<f32>, 2>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_sub_u32(7435u, 0u)), 16u)];
    var var_1 = select(arg_0, arg_0, arg_0);
    let var_2 = u_input.a;
    var_1 = vec3<bool>(true, !(!(var_0.c > ~2147483647i)), true);
    var var_3 = true;
    return Struct_1(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a)))))), abs(1u) < u_input.a.x, -21494i);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = func_2(!select(select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0, arg_1.b)), select(vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(false, false, false), vec3<bool>(true, arg_0, true)), !vec3<bool>(true, arg_0, false)), select(!vec3<bool>(arg_1.b, arg_0, arg_0), select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_1.b, false, true), true), arg_0), vec3<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(arg_0, true, false, arg_0)), true)));
    let var_1 = select(vec3<bool>(true, arg_0, var_0.b), select(select(select(vec3<bool>(true, arg_1.b, true), !vec3<bool>(true, arg_1.b, true), true), vec3<bool>(!var_0.b, select(false, false, false), !arg_0), true), vec3<bool>(false, false, !any(vec4<bool>(arg_0, arg_0, arg_0, false))), select(select(select(vec3<bool>(true, arg_0, false), vec3<bool>(true, true, true), vec3<bool>(arg_0, arg_0, false)), vec3<bool>(false, arg_1.b, false), vec3<bool>(var_0.b, true, arg_0)), vec3<bool>(var_0.b, false, true), vec3<bool>(arg_0 & true, true, true))), var_0.a <= 1f);
    var var_2 = func_2(select(vec3<bool>(arg_0, arg_1.b, true), var_1, !vec3<bool>(func_2(var_1).b, var_1.x, all(vec4<bool>(true, arg_1.b, arg_1.b, arg_0)))));
    let var_3 = func_2(!select(vec3<bool>(u_input.d.x > 14698u, true, true), !vec3<bool>(arg_1.b, arg_1.b, arg_1.b), var_0.b));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-557f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -723f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(115f)), _wgslsmith_f_op_f32(f32(-1f) * -645f)))), true & var_2.b, ~(u_input.b.x | -1i) ^ ~_wgslsmith_clamp_i32(~(-35876i), firstTrailingBit(-23313i), -12406i & var_3.c));
    return var_0.a;
}

fn func_1() -> Struct_1 {
    global1 = array<vec4<f32>, 2>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1337f, 946f, _wgslsmith_div_f32(1555f, 535f)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(any(vec4<bool>(false, false, false, false)), func_2(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * -536f), 836f, any(vec4<bool>(true, true, true, true)))));
    let var_2 = ~((i32(-1i) * -(i32(-1i) * -27684i)) & u_input.b.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -893f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(259f, 1664f, -113f) - vec3<f32>(var_0.x, var_0.x, -1130f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_0.x, 325f))))));
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, -1112f) * var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-270f)))))), func_2(vec3<bool>(!any(vec4<bool>(true, false, false, false)), true, true)).b, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    var var_1 = func_1();
    global1 = array<vec4<f32>, 2>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_2 = !vec4<bool>(true, ~(~(-1i)) == _wgslsmith_clamp_i32(22587i, u_input.b.x, u_input.b.x), var_0.x, false);
    global1 = array<vec4<f32>, 2>();
    var var_3 = ((-(~vec4<i32>(var_1.c, u_input.b.x, 1i, 2147483647i)) << (_wgslsmith_mult_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u))) & select(-max(vec4<i32>(10753i, u_input.b.x, 1i, 5587i), vec4<i32>(-4090i, u_input.b.x, u_input.b.x, u_input.b.x)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -50990i, 2717i, u_input.b.x), vec4<i32>(1465i, -30603i, u_input.b.x, var_1.c))), false)) << (~_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(countOneBits(u_input.a.x), u_input.a.x, u_input.e, ~63425u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-u_input.b.x, -2147483647i, u_input.b.x, ~(-6668i)), u_input.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(167f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a, 1845f, var_0.x)) + -450f))));
}

