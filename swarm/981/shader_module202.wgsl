struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<vec2<i32>, 13>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> vec4<f32> {
    let var_0 = vec4<u32>(u_input.a.x, ~abs(~(~54352u)), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a, select(u_input.a, abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u, 0u), vec3<u32>(46219u, 25284u, global0[_wgslsmith_index_u32(61629u, 26u)]))), arg_0)));
    let var_1 = -1i;
    global0 = array<u32, 26>();
    global1 = array<vec2<i32>, 13>();
    let var_2 = u_input.a.x;
    return arg_1.b.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-482f, _wgslsmith_div_f32(arg_2, arg_0.x), 603f) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_0.x, arg_2))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 - 1293f))) * arg_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(false, Struct_2(vec3<f32>(arg_2, -770f, arg_2), Struct_1(arg_0.x, vec4<f32>(159f, arg_0.x, arg_0.x, arg_0.x))), false, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1069f, -878f, 679f, 762f))))));
    global1 = array<vec2<i32>, 13>();
    return true;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> vec4<bool> {
    let var_0 = arg_1;
    global1 = array<vec2<i32>, 13>();
    global0 = array<u32, 26>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2025f))), -772f);
    global1 = array<vec2<i32>, 13>();
    return !vec4<bool>(func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1, var_0.a.x) * var_0.b.b.yyz))), firstLeadingBit(-vec2<i32>(1i, 0i)), -730f, u_input.a.x), !(!(!arg_0.x)), select(false, func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a, arg_1.b.b.x, 623f) + arg_1.a), ~vec2<i32>(0i, arg_2), _wgslsmith_f_op_f32(-var_0.b.a), u_input.a.x), true), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -101f) * _wgslsmith_f_op_f32(trunc(-644f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(683f)) - -501f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-549f, 446f)))), !all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-426f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2082f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1058f * -260f) + -482f)), _wgslsmith_f_op_f32(532f - 639f), -1196f));
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.x, var_0.a)) + var_0.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(sign(-250f)), -1208f), var_0);
    let var_2 = ~(~vec3<u32>(~_wgslsmith_sub_u32(24031u, u_input.a.x), global0[_wgslsmith_index_u32(4294967295u, 26u)], 1u));
    var var_3 = select(select(!vec4<bool>(true, true, true, func_1(vec3<f32>(-2334f, 812f, -1480f), vec2<i32>(1i, -1i), -842f, u_input.a.x)), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(vec2<bool>(false, false)), all(vec3<bool>(true, false, true)) & true, true)), select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), true), select(func_3(vec2<bool>(false, false), Struct_2(vec3<f32>(var_1.b.b.x, var_1.b.a, 490f), Struct_1(1126f, vec4<f32>(-716f, 538f, 174f, var_0.b.x))), -29829i, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), func_3(vec2<bool>(true, true), Struct_2(var_1.b.b.xwy, var_1.b), ~1i, false)), vec4<bool>(true, true, true, true), func_3(!select(vec2<bool>(false, false), vec2<bool>(true, false), false), var_1, -_wgslsmith_clamp_i32(1i, 1i, -2147483647i), false)), true);
    global1 = array<vec2<i32>, 13>();
    let var_4 = _wgslsmith_mult_i32(min(reverseBits(~1i), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-50157i, -2147483647i, 0i, -5762i), vec4<i32>(-3738i, -32088i, 1i, 2147483647i)), i32(-1i) * -1i)), _wgslsmith_dot_vec3_i32(min(~vec3<i32>(-1817i, 42780i, 10154i), abs(vec3<i32>(-18234i, 30844i, -2147483647i))), abs(firstTrailingBit(vec3<i32>(-16998i, 2147483647i, 1i)))) << ((select(var_2.x, u_input.a.x, all(vec4<bool>(false, var_3.x, var_3.x, false))) << (global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)]), 26u)] % 32u)) % 32u));
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -1475f);
    var var_6 = Struct_1(-954f, vec4<f32>(740f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(746f, 1414f) * var_1.a.x), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(10416u, (34554u >> (0u % 32u)) >> (firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)]) % 32u), 4294967295u), reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(46329u, 1u), 26u)])), ~_wgslsmith_clamp_i32(~(-15851i), 1i, (1i & var_4) & 16221i));
}

