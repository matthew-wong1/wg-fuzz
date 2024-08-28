struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: array<Struct_3, 26>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    let var_0 = Struct_2(arg_1, vec3<bool>(false, arg_0.a.a, arg_0.a.a), Struct_1(true, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1.b)))), -vec3<i32>(_wgslsmith_clamp_i32(-23390i, -18725i, u_input.a.x) | 40297i, u_input.a.x, 2147483647i));
    global0 = array<vec3<u32>, 25>();
    let var_1 = global1[_wgslsmith_index_u32(1u, 26u)];
    var var_2 = Struct_2(Struct_1(arg_1.b.x >= _wgslsmith_div_f32(var_1.c, arg_0.c), var_0.c.b), select(!var_0.b, select(!(!vec3<bool>(true, arg_0.a.a, var_1.a.a)), !(!vec3<bool>(true, false, arg_0.a.a)), !var_0.b), var_0.b), Struct_1(all(!(!vec4<bool>(arg_1.a, arg_0.a.a, var_0.b.x, var_0.c.a))), arg_0.a.b), var_0.d);
    return !var_0.b.x;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    global1 = array<Struct_3, 26>();
    let var_0 = vec2<bool>(select(true, false, true), true && any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), false)));
    var var_1 = Struct_3(Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1391f, -1186f), vec2<f32>(367f, 183f)))))), 22035i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-527f * -1124f)))));
    var var_2 = vec4<bool>(true, var_0.x, !(!var_0.x), false);
    var_1 = Struct_3(Struct_1(!(!func_3(Struct_3(Struct_1(var_2.x, var_1.a.b), -41625i, 512f), var_1.a)), _wgslsmith_f_op_vec2_f32(ceil(var_1.a.b))), _wgslsmith_clamp_i32(~25442i, -1i | max(select(50456i, 0i, true), ~arg_1.x), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(21789i, arg_1.x, -2147483647i, var_1.b)), _wgslsmith_mod_vec4_i32(-vec4<i32>(5842i, u_input.a.x, arg_0, -36062i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -2147483647i, 34136i, arg_1.x), vec4<i32>(36307i, arg_0, arg_0, -2147483647i))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-137f))))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~42367u, _wgslsmith_mult_u32(~(~20598u), _wgslsmith_clamp_u32(1u, 46415u, _wgslsmith_add_u32(0u, 4294967295u)))), ~(~vec2<u32>(abs(44418u), ~1u)));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec2_u32(reverseBits(~min(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), vec2<u32>(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(func_2(2147483647i, -vec3<i32>(arg_0.b, -1580i, -2147483647i)), 25u)], _wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(29374u, 25u)], vec3<u32>(91339u, 0u, 4294967295u)) & firstLeadingBit(vec3<u32>(60026u, 1u, 42817u))), 1u));
    let var_1 = true;
    global0 = array<vec3<u32>, 25>();
    global1 = array<Struct_3, 26>();
    var var_2 = select(!(!select(select(vec4<bool>(var_1, arg_0.a.a, var_1, true), vec4<bool>(false, false, false, var_1), arg_0.a.a), vec4<bool>(false, true, arg_0.a.a, false), vec4<bool>(arg_0.a.a, true, true, var_1))), vec4<bool>(-2147483647i != _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, -1i), _wgslsmith_div_i32(arg_0.b, -38214i)), true, all(select(vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a), select(vec3<bool>(false, var_1, arg_0.a.a), vec3<bool>(false, false, true), arg_0.a.a), true)), true), true);
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_3) -> bool {
    global0 = array<vec3<u32>, 25>();
    let var_0 = arg_0.d;
    var var_1 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 31316u, arg_1.x, arg_1.x), vec4<u32>(30066u, arg_1.x, 4294967295u, 22465u)) | arg_1.x, 38859u) | arg_1;
    global1 = array<Struct_3, 26>();
    let var_2 = abs(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, arg_1.x), 25u)]) >> (abs(_wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, ~var_1.x, arg_1.x), vec3<u32>(firstLeadingBit(arg_1.x), 1u, 1u))) % vec3<u32>(32u));
    return _wgslsmith_clamp_u32(max(0u, var_1.x), ~4294967295u, 16709u) > firstTrailingBit(func_2(-43980i, -u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(vec4<bool>(!any(vec4<bool>(false, false, true, true)), false, func_4(Struct_2(Struct_1(false, vec2<f32>(-1579f, 908f)), vec3<bool>(true, false, false), Struct_1(true, vec2<f32>(-629f, -1329f)), vec3<i32>(-34249i, -2147483647i, u_input.a.x)), reverseBits(vec2<u32>(53u, 1u)), func_1(global1[_wgslsmith_index_u32(0u, 26u)])), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(func_1(func_1(global1[_wgslsmith_index_u32(1u, 26u)])).a.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(679f, -1151f))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(568f, -736f), _wgslsmith_f_op_f32(191f * 574f)))));
    var_0 = func_1(func_1(global1[_wgslsmith_index_u32(0u, 26u)])).a;
    global1 = array<Struct_3, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, u_input.a, ~max(-vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x | u_input.a.x, ~u_input.a.x, countOneBits(-6790i))), ~(~global0[_wgslsmith_index_u32(1u, 25u)]));
}

