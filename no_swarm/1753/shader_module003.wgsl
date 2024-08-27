struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 21> = array<f32, 21>(-523f, 479f, -1196f, -1000f, 1437f, -827f, -312f, 2044f, 486f, 1000f, -831f, -1433f, 2466f, 1031f, 1090f, -1206f, 666f, -1414f, -819f, -148f, 696f);

var<private> global2: array<Struct_3, 21>;

var<private> global3: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global1[_wgslsmith_index_u32(79733u, 21u)]))), vec2<i32>(global0.a.b.x, 1i));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~firstLeadingBit(_wgslsmith_add_u32(~arg_2, global0.c.x)), ~_wgslsmith_mult_u32(~11197u << (firstLeadingBit(arg_2) % 32u), 4294967295u)), 21u)];
    global2 = array<Struct_3, 21>();
    let var_2 = ~vec2<i32>(-25882i, min(_wgslsmith_add_i32(firstTrailingBit(-1i), var_1.a), max(~(-2147483647i), -var_1.a)));
    var var_3 = global0.a;
    return var_0.a;
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    var var_0 = global0.c.x;
    var var_1 = global0.a;
    global1 = array<f32, 21>();
    let var_2 = Struct_1(1000f, u_input.a.zx);
    global1 = array<f32, 21>();
    return u_input.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_div_i32(global0.a.b.x, ~34123i), Struct_2(Struct_1(global1[_wgslsmith_index_u32(33225u, 21u)], vec2<i32>(-12813i, arg_1.x) & _wgslsmith_sub_vec2_i32(u_input.a.xy, arg_0.b)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(global0.b, global0.b)))))), _wgslsmith_sub_vec4_u32(~global0.c, global0.c)));
    let var_1 = var_0.b;
    var var_2 = global2[_wgslsmith_index_u32(var_1.c.x, 21u)];
    global3 = var_0.b.c.zw;
    global3 = vec2<u32>(~(~(~global3.x)), ~_wgslsmith_clamp_u32(var_1.c.x, ~(var_2.b.c.x | 1u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.c.x, var_1.c.x), vec2<u32>(26904u, var_1.c.x)), countOneBits(31463u))));
    return Struct_2(Struct_1(_wgslsmith_div_f32(-974f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -983f))), select(vec2<i32>(func_3(vec4<i32>(var_2.b.a.b.x, arg_0.b.x, var_1.a.b.x, var_0.a)), var_0.b.a.b.x ^ var_1.a.b.x), -arg_1, vec2<bool>(var_0.b.c.x <= global0.c.x, all(vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(ceil(var_1.b)), var_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 21>();
    global0 = func_2(global0.a, _wgslsmith_div_vec2_i32(-reverseBits(u_input.a.wz << (vec2<u32>(7420u, 20276u) % vec2<u32>(32u))), vec2<i32>(u_input.b, -global0.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-962f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1196f)), global1[_wgslsmith_index_u32(67237u & global3.x, 21u)])) + -539f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.c.x, 21u)] + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(true, abs(vec3<i32>(global0.a.b.x, u_input.b, u_input.a.x)), 12374u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), -162f))));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2018f - global0.a.a), global0.a.a) - 1408f), func_2(global0.a, vec2<i32>(~u_input.a.x, 2147483647i), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(14848u, 21u)]), -788f).a.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-259f, -1000f) + _wgslsmith_f_op_vec2_f32(global0.b + global0.b)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.c.x, 21u)]))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.c.x), global0.c.zy), 21u)])), select(vec2<bool>(true, u_input.a.x < -1i), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), all(vec3<bool>(true, true, false))), false))), ~(~firstTrailingBit(~vec4<u32>(69161u, 6381u, global3.x, 22036u))));
    let var_0 = func_2(global0.a, -vec2<i32>(u_input.b, ~3775i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.c, global0.c), 21u)] * _wgslsmith_f_op_f32(-1203f * global0.a.a))), global1[_wgslsmith_index_u32(~abs(global3.x), 21u)]), -768f);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1446f))) + var_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.a)) * var_0.a.a), _wgslsmith_div_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 21u)], 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-992f * -496f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a)), 1533f)) * global0.a.a));
    global2 = array<Struct_3, 21>();
    let var_2 = !vec4<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), true)), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-833f, global0.a.a))))), u_input.a.x);
}

