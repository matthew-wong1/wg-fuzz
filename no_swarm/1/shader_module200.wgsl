struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32 = 41823u;

var<private> global2: f32;

var<private> global3: i32 = 15120i;

var<private> global4: Struct_1 = Struct_1(false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    global4 = Struct_1(!global4.a);
    var var_0 = Struct_1(true);
    global3 = reverseBits(-1i);
    let var_1 = Struct_1(all(global0.xz));
    var var_2 = global4.a;
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(201f, 768f, 1185f, -1469f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(522f, 167f, -1288f, 707f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(171f)), _wgslsmith_f_op_f32(f32(-1f) * -2260f), _wgslsmith_f_op_f32(select(189f, 643f, global0.x)), _wgslsmith_div_f32(-2912f, -543f))))));
    return 0u;
}

fn func_1() -> u32 {
    var var_0 = u_input.a.xx;
    return _wgslsmith_mod_u32(func_3(func_2(), func_2()), ~_wgslsmith_div_u32(max(64139u, firstTrailingBit(4294967295u)), 48763u));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1074f, -1439f, 637f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(161f, 584f, 2085f) - vec3<f32>(381f, -215f, 1000f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2974f, 415f, 1015f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-623f, 669f, 820f)))), vec3<f32>(-1643f, _wgslsmith_f_op_f32(ceil(-626f)), -760f), all(global0.xz) | true))), arg_1));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    var var_1 = u_input.a.yz;
    let var_2 = !global4.a;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<i32>(u_input.a.x, _wgslsmith_add_i32(firstTrailingBit(max(u_input.a.x, -1i)), ~(~u_input.a.x))), select(vec3<bool>(!(u_input.a.x == u_input.a.x), all(select(vec4<bool>(true, global0.x, false, true), vec4<bool>(global0.x, global4.a, false, global0.x), true)), any(vec3<bool>(global4.a, true, global0.x))), vec3<bool>(select(true, global0.x, true), global4.a, 1u > func_1()), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, global4.a, global4.a), vec3<bool>(true, global0.x, true), global0.x), vec3<bool>(true, func_2().a, select(true, global4.a, false)))), func_2(), 1u);
    let var_1 = Struct_1(var_0.a);
    var var_2 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1099f, 139f)) - -1000f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(2287f)), 2460f), _wgslsmith_f_op_f32(1625f + _wgslsmith_f_op_f32(641f - -693f))))), 1f);
    global0 = vec3<bool>(false, !((14316u | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 85872u, 0u, 28619u), vec4<u32>(1u, 1u, 0u, 118671u))) < func_1()), true);
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1789f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1171f)) + _wgslsmith_div_f32(-317f, -2432f)))));
    global3 = firstLeadingBit(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~1i, -74044i, _wgslsmith_mult_i32(-25172i, -11365i | u_input.a.x), u_input.a.x));
}

