struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global3: array<vec2<i32>, 8>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_1(firstLeadingBit(global0.c.xzx), ~(~_wgslsmith_clamp_u32(global0.c.x, global0.b, global0.c.x) ^ _wgslsmith_mult_u32(global0.b, 14419u << (0u % 32u))), global0.c, global0.d, firstTrailingBit(global0.e));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-404f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1275f, -752f), _wgslsmith_f_op_f32(462f - 696f)))))));
    var var_2 = ~global0.b;
    var var_3 = var_0;
    var var_4 = ~(~var_3.b);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_div_f32(372f, -673f)));
}

fn func_2() -> Struct_1 {
    global3 = array<vec2<i32>, 8>();
    let var_0 = vec3<bool>(!(!any(vec3<bool>(true, global0.d, false))) & !any(vec3<bool>(true, false, true)), true, true);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1034f, -673f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1308f, 452f)), _wgslsmith_f_op_vec2_f32(func_3()), global2[_wgslsmith_index_u32(1u, 4u)])), !(!vec2<bool>(var_0.x, true))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + -1976f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1224f) - 408f) + _wgslsmith_f_op_f32(1f - 927f))));
    var var_2 = !global2[_wgslsmith_index_u32(1u, 4u)];
    var var_3 = Struct_1(global0.a, ~abs(max(global0.a.x, abs(30875u))), (firstTrailingBit(~global0.c) ^ vec4<u32>(21995u, 20250u, _wgslsmith_mult_u32(206u, global0.a.x), abs(4294967295u))) >> (global0.c % vec4<u32>(32u)), var_2.x, global0.e);
    return Struct_1(firstLeadingBit(vec3<u32>(min(~var_3.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(77590u, var_3.c.x, var_3.a.x, global0.b), vec4<u32>(0u, var_3.a.x, global0.a.x, 0u))), 0u, ~(~global0.a.x))), ~global0.c.x, ~var_3.c, true, global0.e);
}

fn func_1(arg_0: Struct_1) -> f32 {
    global3 = array<vec2<i32>, 8>();
    global3 = array<vec2<i32>, 8>();
    global2 = array<vec2<bool>, 4>();
    var var_0 = func_2();
    global0 = Struct_1(select(~select(vec3<u32>(arg_0.c.x, 0u, 37246u), min(global0.a, vec3<u32>(arg_0.b, var_0.b, 50901u)), select(vec3<bool>(arg_0.d, false, arg_0.d), vec3<bool>(true, false, true), arg_0.d)), ~(~vec3<u32>(2331u, 6524u, 43526u)), any(select(global2[_wgslsmith_index_u32(1u, 4u)], !global2[_wgslsmith_index_u32(17465u, 4u)], !arg_0.d))), firstLeadingBit(firstLeadingBit(var_0.a.x)), countOneBits(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(13354u, var_0.b), _wgslsmith_div_u32(4294967295u, global0.b)), ~arg_0.c.x << (global0.a.x % 32u), 1u, min(var_0.b, _wgslsmith_sub_u32(var_0.c.x, arg_0.a.x)))), global0.d, global0.e);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1018f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - -1152f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(738f * 1960f), 187f, -144f, -773f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_1(global0.c.zyx, global0.c.x, global0.c, global0.d, vec3<i32>(2147483647i, 33033i, 1i)))))), _wgslsmith_f_op_f32(f32(-1f) * -485f))));
    let x = u_input.a;
    s_output = StorageBuffer(917f, u_input.a, _wgslsmith_div_vec3_u32(firstLeadingBit(global0.a), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(global0.b, 4294967295u, global0.a.x), ~vec3<u32>(global0.c.x, global0.a.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, -123f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1893f, -770f, var_0.x, 1550f), vec4<f32>(var_0.x, var_0.x, 1565f, var_0.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(266f, -1988f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, -818f, var_0.x), vec4<bool>(global0.d, global0.d, global0.d, false))))))), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(14987u, global0.a.x)) | ~firstLeadingBit(global0.c.wx), _wgslsmith_div_vec2_u32(reverseBits(global0.a.xy), _wgslsmith_mod_vec2_u32(~vec2<u32>(11494u, global0.b), vec2<u32>(66836u, global0.c.x)))));
}

