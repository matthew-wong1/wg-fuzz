struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(13852u, 4294967295u, 63325u, 40624u));

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<u32>(0u, 1u, 24802u, 4294967295u)), Struct_1(vec4<u32>(71673u, 5251u, 0u, 20728u)), Struct_1(vec4<u32>(46464u, 8670u, 0u, 4294967295u)), Struct_1(vec4<u32>(1u, 14402u, 61643u, 0u)), Struct_1(vec4<u32>(8182u, 41599u, 0u, 0u)), Struct_1(vec4<u32>(4294967295u, 9517u, 74204u, 1u)), Struct_1(vec4<u32>(1u, 4054u, 4294967295u, 1u)), Struct_1(vec4<u32>(1u, 60044u, 8681u, 69598u)), Struct_1(vec4<u32>(5548u, 1u, 54145u, 1u)), Struct_1(vec4<u32>(1u, 0u, 0u, 22303u)));

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<f32> {
    global2 = array<Struct_1, 10>();
    var var_0 = true;
    global1 = Struct_1(~_wgslsmith_add_vec4_u32(~global1.a, global1.a));
    let var_1 = vec3<bool>(true, true, true);
    global2 = array<Struct_1, 10>();
    return vec4<f32>(636f, 1744f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-271f, -1274f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1342f, -348f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 812f, global0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(208f))))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !(!vec4<bool>(global0.x, true, true, !any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1027f, -965f, -761f, -316f), vec4<f32>(838f, -2678f, 248f, -341f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1553f, 1363f, -2042f, 779f)))))));
    var var_2 = ~(_wgslsmith_div_u32(global1.a.x, global1.a.x) << (u_input.b.x % 32u));
    let var_3 = u_input.a;
    let var_4 = select(vec2<u32>(_wgslsmith_mult_u32(~1u, ~firstLeadingBit(arg_0.a.x)), ~4860u), _wgslsmith_div_vec2_u32(~(~vec2<u32>(var_3, var_3)), countOneBits(~u_input.b)), !select(select(false, global0.x, false) || global0.x, global0.x, global0.x));
    return Struct_1(~abs(arg_0.a));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = ~(~vec2<u32>(func_2(global2[_wgslsmith_index_u32(38752u, 10u)]).a.x, abs(global3.x))) >> (global3.zz % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-261f, 2389f) - _wgslsmith_f_op_f32(f32(-1f) * -451f)) * -2274f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-303f - -297f) * 723f), _wgslsmith_f_op_f32(f32(-1f) * -757f), any(arg_0.xy))), any(!global0.yy)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1004f + _wgslsmith_f_op_f32(-221f + -190f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-692f, 508f)) - _wgslsmith_f_op_f32(1875f * -548f)))))) - _wgslsmith_f_op_f32(-206f - -1512f));
    return 1u;
}

fn func_5(arg_0: u32) -> Struct_1 {
    global3 = _wgslsmith_sub_vec4_u32(vec4<u32>(max(~global3.x, 10771u & arg_0), 0u, ~func_2(func_2(Struct_1(global1.a))).a.x, global3.x), ~(~select(~global1.a, select(vec4<u32>(0u, 121790u, u_input.b.x, 17787u), global1.a, vec4<bool>(global0.x, global0.x, global0.x, false)), true)));
    global1 = Struct_1(vec4<u32>(abs(~global1.a.x), 1u, 0u, 1u));
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, -396f, 650f));
    var var_1 = func_2(Struct_1(vec4<u32>(arg_0, global3.x, ~(~global3.x), 4294967295u)));
    global3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1.a, vec4<u32>(~_wgslsmith_mult_u32(1u, 0u), ~(~3885u), func_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(76043u, 67900u), 10u)]).a.x, var_1.a.x), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, global3.x), vec3<u32>(40899u, global1.a.x, 0u)), max(_wgslsmith_div_u32(global3.x, 7425u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 0u, 67734u), var_1.a.xzx)), _wgslsmith_mod_u32(38640u, 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, u_input.b.x, 40289u, global1.a.x), vec4<u32>(global1.a.x, u_input.b.x, 4294967295u, var_1.a.x) >> (global1.a % vec4<u32>(32u))))), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 23797u, select(arg_0, firstTrailingBit(u_input.b.x), false)), global3.x, firstTrailingBit(~(~var_1.a.x)), 0u), vec4<u32>(abs(max(56313u, 47964u)), abs(global3.x), select(34752u, global1.a.x, 0u != countOneBits(arg_0)), ~(~var_1.a.x)));
    return global2[_wgslsmith_index_u32(1u, 10u)];
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global3 = max(global1.a, abs(~(~vec4<u32>(u_input.a, global3.x, global3.x, 1688u))) & countOneBits(global1.a));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -309f);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1527f, -1877f) * vec3<f32>(-1000f, 1423f, 210f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(223f, -1765f, -662f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1166f, -1946f, 844f), vec3<f32>(1081f, 107f, 1015f))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-810f, 194f, -715f) - vec3<f32>(-1187f, -1000f, -906f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1031f, -455f, -1067f)), !vec3<bool>(true, global0.x, true))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-959f - -160f), _wgslsmith_div_f32(-331f, 1265f), _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2667f, 1573f, -363f), vec3<f32>(-189f, 895f, 1566f))), abs(arg_0) > arg_0)), true)));
    var var_2 = _wgslsmith_clamp_i32(arg_0, -25280i, -1i);
    global1 = func_5(~_wgslsmith_div_u32(func_4(!vec4<bool>(global0.x, global0.x, false, false), func_2(global2[_wgslsmith_index_u32(global1.a.x, 10u)]), 0u), global3.x));
    return StorageBuffer(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(min(reverseBits(abs(-1331i >> (global3.x % 32u))), ((i32(-1i) * -62445i) >> (0u % 32u)) ^ ~(-1i >> (u_input.b.x % 32u))));
}

