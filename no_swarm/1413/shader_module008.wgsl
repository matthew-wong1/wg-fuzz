struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: u32 = 9321u;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = Struct_1(global3.a);
    global1 = Struct_2(0u);
    global3 = Struct_1(~var_0.a);
    return select(47876i, -22874i, !(_wgslsmith_dot_vec3_i32(max(global0.a.wxz, vec3<i32>(0i, global3.a.x, 2147483647i)), global0.a.wzx) > u_input.d));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = -197f < _wgslsmith_f_op_f32(min(1198f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1385f)) * _wgslsmith_f_op_f32(f32(-1f) * -441f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) + _wgslsmith_f_op_f32(sign(477f))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-435f * -1519f), _wgslsmith_f_op_f32(f32(-1f) * -879f)))))), 138f, -149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1661f) - _wgslsmith_div_f32(-583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1005f))))));
    global0 = Struct_1(vec4<i32>(-_wgslsmith_sub_i32(arg_0.x, global0.a.x), reverseBits(1i), 1i, 1i) | -arg_0);
    var var_2 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(arg_0.x, arg_0.x, _wgslsmith_clamp_i32(func_3(vec4<bool>(true, true, false, false)), -2147483647i, global0.a.x)), abs(vec3<i32>(0i, -8250i, u_input.d) >> (u_input.a.xxw % vec3<u32>(32u))), select(vec3<bool>(u_input.d != -1i, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), false)), vec3<i32>(2147483647i, 2147483647i, 1i));
    let var_3 = _wgslsmith_div_i32(-1i, ~(-37821i));
    return Struct_2(~(_wgslsmith_dot_vec3_u32(u_input.a.zyz, vec3<u32>(u_input.c, global1.a, global1.a)) | u_input.b));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global3 = arg_0;
    var var_0 = func_2(~global0.a);
    var_0 = func_2(((select(global3.a, global3.a, vec4<bool>(true, false, true, false)) & _wgslsmith_div_vec4_i32(vec4<i32>(-1i, global3.a.x, 0i, 2147483647i), global0.a)) << (u_input.a % vec4<u32>(32u))) ^ countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 22665i, 34045i, 36534i), vec4<i32>(-2147483647i, 29947i, 23298i, arg_0.a.x)), 1i, firstTrailingBit(global0.a.x), arg_0.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(179f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-300f, 385f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-672f, -1120f, 108f) - vec3<f32>(-1361f, 622f, -373f)) + vec3<f32>(736f, 2867f, 1573f)))));
    return select(-u_input.d, 73964i, !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), any(vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(vec4<i32>(38897i, _wgslsmith_dot_vec2_i32(vec2<i32>(func_1(Struct_1(global3.a)), global0.a.x), global3.a.zy | select(vec2<i32>(global3.a.x, 0i), vec2<i32>(u_input.d, global0.a.x), false)), ~1i, global0.a.x));
    global0 = Struct_1(reverseBits(vec4<i32>(min(select(1i, global3.a.x, true), global3.a.x), 2147483647i, abs(global0.a.x), -2147483647i)));
    var var_0 = any(!vec2<bool>(any(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, true, true))));
    global1 = func_2(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<i32>(-global3.a.x, countOneBits(2147483647i)) | abs(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.a.x, 2147483647i), global3.a.ww))), ~abs(1u));
}

