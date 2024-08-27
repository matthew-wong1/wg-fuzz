struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec2<f32>;

var<private> global2: Struct_2;

var<private> global3: array<vec2<f32>, 17>;

var<private> global4: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> f32 {
    global3 = array<vec2<f32>, 17>();
    var var_0 = -1000f;
    var_0 = 533f;
    var var_1 = ~(-67018i | _wgslsmith_dot_vec2_i32(-(u_input.a.wz >> (arg_0 % vec2<u32>(32u))), -(~vec2<i32>(u_input.a.x, 24095i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-global2.a.a.yyz);
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = ~(~u_input.b | (u_input.b ^ (~u_input.b ^ ~4294967295u)));
    let var_1 = vec2<bool>(true, any(!vec4<bool>(all(vec3<bool>(false, false, false)), true, true, false)));
    var var_2 = vec2<u32>(~abs(reverseBits(u_input.b) | ~92175u), u_input.b);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-733f + global2.a.a.x), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec2<u32>(var_2.x, 4294967295u), u_input.b)), _wgslsmith_f_op_f32(exp2(arg_1.a.b))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global2.a.a.x)) * global2.a.a.yx))));
    global1 = global3[_wgslsmith_index_u32(4294967295u, 17u)];
    return !(!(!(!vec4<bool>(var_1.x, true, var_1.x, false))));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = !(!(!select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), func_2(global2.a.a.zw, Struct_2(global2.a)))));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 3909u, u_input.b), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(15161u, 5141u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 28346u, 0u, 0u)), u_input.b, _wgslsmith_sub_u32(u_input.b, 0u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b) << (abs(vec3<u32>(1u, u_input.b, 11950u)) % vec3<u32>(32u)), ~vec3<u32>(u_input.b, 1u, 46157u), vec3<u32>(_wgslsmith_mod_u32(u_input.b, 32344u), _wgslsmith_dot_vec4_u32(vec4<u32>(25486u, u_input.b, 0u, 1u), vec4<u32>(41116u, 4294967295u, 22674u, u_input.b)), max(u_input.b, u_input.b))), countOneBits(vec3<u32>(u_input.b, u_input.b ^ u_input.b, u_input.b)));
    let var_2 = Struct_3(~max(_wgslsmith_mult_i32(-46348i, firstTrailingBit(2147483647i)), -36507i), vec3<i32>(-1i) * -(~(~u_input.a.xzw)), vec4<bool>(!var_0.x, false, var_1.x <= 38567u, (-2147483647i != u_input.a.x) || (select(-63910i, arg_0, var_0.x) < arg_0)), reverseBits(u_input.a));
    let var_3 = !func_2(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~4294967295u), 14798u), 17u)], Struct_2(global2.a)).xw;
    let var_4 = -u_input.a.www;
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(-(~0i) < -func_1(~u_input.a.x));
    var var_1 = select(vec4<bool>(~_wgslsmith_sub_i32(1i, 36285i) < u_input.a.x, true, true, !all(vec2<bool>(true, true))), select(vec4<bool>(true, !all(vec4<bool>(true, false, false, true)), all(vec4<bool>(false, false, true, true)) & true, true), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)), any(select(vec3<bool>(false, true, true), func_2(vec2<f32>(global1.x, global0.x), Struct_2(global2.a)).wxz, true))), (((30001u >> (u_input.b % 32u)) < 0u) | (1u >= u_input.b)) || ((global0.x > _wgslsmith_f_op_f32(-1249f * global1.x)) || all(vec4<bool>(true, true, true, true))));
    var var_2 = 54937u;
    let var_3 = ~(~(~abs(-16794i)));
    let var_4 = Struct_3(_wgslsmith_sub_i32(max(var_3, 1i), u_input.a.x) | -2147483647i, -(~countOneBits(u_input.a.wzy)), !vec4<bool>(true, !all(var_1.yzz), !(!var_1.x), true), vec4<i32>(max(u_input.a.x, ~_wgslsmith_clamp_i32(1i, var_3, u_input.a.x)), var_3, ~(-3754i) | var_3, -(u_input.a.x | -u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 3669u, 27144u, 7488u) | vec4<u32>(u_input.b, u_input.b, u_input.b, 18635u), ~vec4<u32>(8615u, u_input.b, u_input.b, u_input.b)), ~(~(~vec4<u32>(4294967295u, 0u, 41118u, u_input.b)))), ~_wgslsmith_div_i32(2147483647i, ~5880i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global1.x) * global2.a.b));
}

