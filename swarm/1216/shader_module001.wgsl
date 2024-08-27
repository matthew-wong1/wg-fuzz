struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 4294967295u), vec2<u32>(23478u, 1u), vec2<u32>(0u, 30596u), vec2<u32>(0u, 0u), vec2<u32>(23291u, 73353u));

var<private> global1: vec2<bool>;

var<private> global2: vec3<u32> = vec3<u32>(48690u, 8382u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    var var_0 = false;
    var var_1 = Struct_1(!select(vec4<bool>(!global1.x, global1.x, true, false & global1.x), vec4<bool>(true, true, any(vec2<bool>(arg_1.x, global1.x)), !arg_1.x), true));
    var_0 = true;
    let var_2 = vec3<bool>(true, true, true);
    global1 = var_2.yz;
    return ~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(~1u, global2.x), global2.x));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = !all(vec2<bool>(arg_0 || global1.x, false)) && arg_0;
    global0 = array<vec2<u32>, 5>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1211f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a))));
    var var_3 = Struct_1(vec4<bool>(true || !(!var_0), !all(!vec3<bool>(arg_0, arg_0, true)), any(!vec2<bool>(false, global1.x)), firstTrailingBit(-24870i) != -2147483647i));
    return vec4<bool>(global1.x, all(select(vec3<bool>(any(vec3<bool>(false, var_0, true)), true, all(vec4<bool>(true, false, var_3.a.x, false))), !(!var_3.a.zzx), !select(var_3.a.wzw, vec3<bool>(true, arg_0, var_0), true))), true, global1.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> Struct_2 {
    global2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(28613u, _wgslsmith_add_u32(select(arg_1.x, 0u, global1.x), max(global2.x, arg_1.x)), 30443u), u_input.b, _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_1.x, 4294967295u, global2.x), arg_1)) | u_input.b;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-392f, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))) - _wgslsmith_f_op_f32(floor(814f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1069f, arg_0.x, false)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(-arg_0.x))));
    global1 = !arg_3.zz;
    var var_1 = ~(33423i | -_wgslsmith_clamp_i32(1i, i32(-1i) * -68281i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 58208i), vec2<i32>(-2147483647i, 35414i))));
    let var_2 = _wgslsmith_mult_u32(74946u, ~_wgslsmith_mod_u32(func_2(arg_0.x, vec4<bool>(false, false, arg_3.x, false)), u_input.a.x));
    return Struct_2(Struct_1(!select(!vec4<bool>(true, global1.x, arg_3.x, arg_3.x), func_3(global1.x, arg_2, Struct_3(arg_2.x)), select(vec4<bool>(false, true, false, arg_3.x), vec4<bool>(false, true, global1.x, false), true))), -firstLeadingBit(-68769i << (reverseBits(0u) % 32u)), Struct_1(!vec4<bool>(!global1.x, !arg_3.x, true, !global1.x)), 39341i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>) -> bool {
    global1 = !vec2<bool>(any(func_3(true, vec4<f32>(arg_0.a, 131f, -689f, 1302f), Struct_3(arg_0.a)).wzw), true);
    var var_0 = ~firstTrailingBit(arg_2.zy);
    var var_1 = 0i;
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.a, arg_0.a)))))), vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a)), vec2<bool>(true, true))), vec3<u32>(global2.x, ~(_wgslsmith_dot_vec2_u32(global2.yy, vec2<u32>(0u, 0u)) << (global2.x % 32u)), max(firstLeadingBit(func_2(626f, vec4<bool>(arg_1.c.a.x, false, arg_1.c.a.x, global1.x))), ~34549u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, -801f, -717f))))), !vec3<bool>(false, all(func_3(true, vec4<f32>(-306f, 1185f, arg_0.a, arg_0.a), Struct_3(911f)).zxy), global1.x));
    var var_3 = false;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 30882u;
    let var_1 = Struct_1(!vec4<bool>(global1.x, global1.x, func_4(Struct_3(-1000f), func_1(vec2<f32>(-131f, -331f), vec3<u32>(0u, 32746u, 4294967295u), vec4<f32>(-322f, -845f, 505f, -367f), vec3<bool>(false, false, false)), vec4<i32>(31646i, 29886i, -12628i, 18363i)), true));
    let var_2 = var_1.a.x;
    global0 = array<vec2<u32>, 5>();
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))));
    var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_3.a, 1000f, false)))), -236f)) * _wgslsmith_f_op_f32(var_3.a * var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, var_3.a, 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1193f)))))), 4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, var_3.a) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, var_3.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-838f, 1145f)) + vec2<f32>(-163f, 244f)))), ~(-_wgslsmith_add_vec4_i32(vec4<i32>(-50270i, -16194i, -1i, 1i), vec4<i32>(6399i, -51548i, 2147483647i, 14153i) >> (vec4<u32>(var_0, 89837u, 1u, global2.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.a, 586f))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_3.a, _wgslsmith_f_op_f32(-var_3.a))), var_3.a))));
}

