struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 11>;

var<private> global2: array<Struct_3, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    global1 = array<Struct_3, 11>();
    global1 = array<Struct_3, 11>();
    var var_0 = -660f;
    return arg_0.c;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = select(vec4<bool>(!(!(arg_0 <= arg_1.x)), _wgslsmith_mod_i32(reverseBits(arg_1.x), _wgslsmith_div_i32(2147483647i, arg_0)) > -1i, false, false), vec4<bool>(any(vec2<bool>(any(vec2<bool>(false, true)), true)), any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), !(_wgslsmith_f_op_f32(-arg_2) >= _wgslsmith_f_op_f32(-arg_3))), !vec4<bool>(true, select(arg_1.x >= 10038i, false, true), all(vec3<bool>(false, true, false)), true));
    global1 = array<Struct_3, 11>();
    global2 = array<Struct_3, 13>();
    global0 = Struct_1(0u);
    let var_1 = true;
    return func_2(global2[_wgslsmith_index_u32(global0.a, 13u)]);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = -(~_wgslsmith_mod_vec4_i32(~firstTrailingBit(vec4<i32>(-1i, u_input.c.x, -1i, 2147483647i)), min(vec4<i32>(-1i, 1i, arg_3.a, u_input.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(arg_3.a, u_input.a, u_input.c.x, -33132i), vec4<i32>(arg_2.x, arg_3.a, 4203i, arg_2.x)))));
    var var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1192f, 849f, arg_3.b), vec3<f32>(-867f, 438f, 371f), var_1.d))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(366f, arg_3.b, var_1.b), vec3<f32>(-1243f, var_1.b, arg_3.b))) * vec3<f32>(-1112f, var_1.b, -531f)))))));
    var var_3 = !(1000f >= _wgslsmith_f_op_f32(-var_2.x));
    var_3 = true;
    return max(func_2(Struct_3(~var_0.x, _wgslsmith_div_f32(arg_3.b, -652f), func_1(var_1.a, vec2<i32>(-1i, arg_3.a), -1264f, var_2.x), arg_3.d)).a.a | ~(~(~26919u)), (u_input.b >> (var_1.c.a.a % 32u)) | 1u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = !select(select(vec4<bool>(true, arg_1.x, arg_1.x, false), select(!vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), u_input.a != u_input.c.x), true), vec4<bool>(!select(true, arg_1.x, true), any(arg_1) & all(arg_1), arg_1.x, any(!vec2<bool>(arg_1.x, arg_1.x))), !arg_1.x);
    let var_1 = ~global0.a;
    var var_2 = global0.a;
    var var_3 = -1424f;
    let var_4 = false;
    return func_1(~_wgslsmith_div_i32(-u_input.a, u_input.c.x) & -1995i, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1029f - _wgslsmith_f_op_f32(f32(-1f) * -1489f))), _wgslsmith_f_op_f32(max(-540f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<u32>(~(42383u & u_input.b) << (func_3(func_1(u_input.c.x, u_input.c, -1631f, -503f), vec2<bool>(false, true), vec3<i32>(-69i, u_input.a, -14048i), Struct_3(2147483647i, 812f, Struct_2(Struct_1(23312u)), vec3<bool>(true, false, true))) % 32u), firstLeadingBit(18666u ^ u_input.b), ~4294967295u), select(vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), vec2<bool>(true, !all(vec3<bool>(true, true, true))), vec2<bool>(true, true)));
    global2 = array<Struct_3, 13>();
    global2 = array<Struct_3, 13>();
    var var_1 = ~u_input.c;
    global1 = array<Struct_3, 11>();
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -672f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(744f, 892f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-718f - 1078f))), _wgslsmith_f_op_f32(1861f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)))), vec2<bool>(all(vec4<bool>(true, true, true, true)), !(_wgslsmith_add_i32(var_1.x, -37746i) < _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, u_input.a), vec2<i32>(2147483647i, -1i))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))));
    global2 = array<Struct_3, 13>();
    let var_4 = all(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c.x, -22120i, 0i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-393f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x + var_3), _wgslsmith_f_op_f32(max(var_2.x, -926f)))))));
}

