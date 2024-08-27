struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(95392u, 28513u, 53005u);

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 27>;

var<private> global3: vec3<f32>;

var<private> global4: array<u32, 9>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> vec3<bool> {
    global3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(arg_1.d, global1.d), _wgslsmith_f_op_f32(-global1.d), -223f)))))));
    global1 = arg_1;
    return !arg_1.a.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 1374f, global3.x) - vec3<f32>(371f, global3.x, 557f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, 1454f, arg_1) - vec3<f32>(arg_1, -1000f, arg_1))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1296f, global3.x, global1.d) + vec3<f32>(arg_1, arg_1, -1645f))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -482f, global1.d)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, -637f, 2597f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1841f, 178f, 398f)), true))))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global0.zx), global0.x), countOneBits(u_input.b.yxx)) & (34928u >> (~countOneBits(global0.x) % 32u));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = vec3<i32>(i32(-1i) * -72937i, 0i, arg_0);
    var var_1 = func_4(global1.e, _wgslsmith_f_op_f32(sign(global1.d)), Struct_1(select(global1.e.a, !func_3(true, Struct_2(global1.a, global1.b, 1u, global3.x, global1.b), global1.b.b.x, global1.b.b.x), vec3<bool>(all(vec4<bool>(false, global1.b.b.x, true, false)), true, false)), vec2<bool>(true, global1.e.a.x)), global1.a);
    global4 = array<u32, 9>();
    var var_2 = abs(arg_0);
    var var_3 = u_input.b.yxx;
    return select(func_3(all(global1.e.a), Struct_2(global1.a, global1.b, ~_wgslsmith_mod_u32(global0.x, 17614u), global1.d, global1.a), all(func_3(!global1.b.b.x, Struct_2(global1.b, Struct_1(vec3<bool>(false, false, global1.a.b.x), global1.e.b), 16947u, global1.d, Struct_1(global1.e.a, vec2<bool>(global1.b.b.x, false))), arg_0 != var_0.x, global1.b.b.x)), 507f > global3.x), !select(global1.b.a, select(global1.b.a, global1.a.a, !global1.e.a), all(!global1.a.b)), vec3<bool>(true, var_3.x <= global0.x, u_input.b.x == _wgslsmith_dot_vec3_u32(~u_input.b.zxx, ~vec3<u32>(global0.x, 20526u, global0.x))));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(func_2(firstLeadingBit(-(~(-48317i)))), arg_0.b);
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c, firstLeadingBit(abs(53902u)), global0.x, ~(~0u)), ~vec4<u32>(global0.x, _wgslsmith_dot_vec2_u32(~global0.xy, u_input.b.yy >> (u_input.b.zz % vec2<u32>(32u))), _wgslsmith_div_u32(abs(global4[_wgslsmith_index_u32(42891u, 9u)]), global0.x | 135423u), reverseBits(global1.c) << (0u % 32u)), vec4<u32>(abs(24062u), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x << (global1.c % 32u), _wgslsmith_add_u32(4417u, global0.x)), u_input.b.x | global4[_wgslsmith_index_u32(1u, 9u)]), ~28221u, ~global1.c));
    let var_2 = firstTrailingBit(u_input.a);
    var var_3 = var_1.x;
    var_3 = ~12870u;
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.d, 152f)), global3.x), global1.d, true | arg_0.b.x)), _wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2417f), _wgslsmith_f_op_f32(ceil(500f))))))), _wgslsmith_f_op_f32(-378f + _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(round(2065f)))), global1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3.x)), global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 27>();
    global2 = array<vec2<u32>, 27>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.d), global1.d)), 299f));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1403f, global3.x, global1.d, -964f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-903f, 594f, global1.d, 263f) - vec4<f32>(global1.d, 1140f, -411f, global3.x))))) * _wgslsmith_f_op_vec4_f32(func_1(Struct_1(!global1.b.a, vec2<bool>(global1.a.a.x, global1.b.b.x)))))));
    global3 = vec3<f32>(global3.x, var_1.x, var_1.x);
    let var_2 = -150f;
    let var_3 = 4294967295u;
    var var_4 = Struct_1(select(select(func_2(_wgslsmith_div_i32(2147483647i, u_input.a)), !vec3<bool>(global1.e.b.x, global1.a.b.x, false), all(vec4<bool>(global1.e.a.x, true, global1.b.a.x, false)) | global1.e.a.x), !global1.b.a, global1.a.b.x), global1.e.a.yz);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(select(~4294967295u, max(49381u, 1u), true), select(1u, ~var_3, true)), 66733u), var_3, -firstTrailingBit((-5079i >> (global1.c % 32u)) | u_input.a), vec3<f32>(var_2, _wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(-var_1.x)), -(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, 57078i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))) << (abs(~vec2<u32>(u_input.b.x, 0u)) % vec2<u32>(32u))));
}

