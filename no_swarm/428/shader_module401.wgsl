struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(1545f, -1997f), vec2<f32>(-257f, -877f), vec2<f32>(1020f, 951f), vec2<f32>(-213f, -361f), vec2<f32>(769f, 1155f), vec2<f32>(-896f, -782f), vec2<f32>(-101f, 588f), vec2<f32>(1000f, 2228f), vec2<f32>(1403f, 1203f), vec2<f32>(626f, -1000f), vec2<f32>(1165f, -383f), vec2<f32>(-1029f, 860f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: vec2<i32>) -> vec2<bool> {
    global0 = array<vec2<f32>, 12>();
    var var_0 = false;
    var_0 = arg_0.a;
    let var_1 = select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, true), !vec2<bool>(arg_0.a || arg_0.a, (arg_0.a & arg_0.a) | all(vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a))));
    global0 = array<vec2<f32>, 12>();
    return select(vec2<bool>(true, true), select(vec2<bool>(true, u_input.a != ~44757u), !var_1, true), var_1.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    var var_0 = !vec2<bool>(65052u < max(u_input.a, ~28434u), !(!all(vec4<bool>(arg_1.a, arg_2.a, arg_2.a, arg_2.a))));
    return !(!(!arg_0.a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<vec2<f32>, 12>();
    var var_0 = Struct_1(false);
    var_0 = Struct_1(any(select(vec4<bool>(true, arg_1.a, arg_0.a, true), vec4<bool>(arg_0.a, true, all(vec4<bool>(arg_1.a, var_0.a, var_0.a, arg_0.a)), all(vec4<bool>(arg_1.a, true, var_0.a, true))), select(!vec4<bool>(false, false, false, var_0.a), vec4<bool>(true, true, arg_1.a, arg_0.a), !var_0.a))));
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    return select(!(!vec2<bool>(arg_1.a, true)), !select(vec2<bool>(true, false), func_1(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1180f, 666f, -669f)), _wgslsmith_f_op_f32(-1302f + 154f), ~vec2<i32>(31334i, 1i)), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~select(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(48199u, u_input.a) | vec2<u32>(u_input.a, u_input.a), all(vec2<bool>(true, false)))) << (vec2<u32>(u_input.a, ~_wgslsmith_div_u32(~50648u, countOneBits(u_input.a))) % vec2<u32>(32u));
    let var_1 = select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), func_1(Struct_1(true), vec3<f32>(440f, -1000f, -1178f), 790f, vec2<i32>(2147483647i, 3918i))), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), !func_2(Struct_1(true), Struct_1(true), Struct_1(false), vec3<f32>(1375f, 1066f, 624f)) == func_2(Struct_1(false), Struct_1(true), Struct_1(false), vec3<f32>(-136f, 529f, -600f))), !select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), any(vec3<bool>(true, false, false))), select(func_3(Struct_1(false), Struct_1(false)), vec2<bool>(true, true), true), vec2<bool>(true, true)), var_0.x >= ~1u);
    let var_2 = 461f;
    let var_3 = vec3<bool>(true, var_1.x, false);
    var var_4 = _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(u_input.a, ~select(var_0.x, 99112u, true))), 12u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(trunc(var_2)))))));
    var var_5 = ~_wgslsmith_add_vec2_u32(min(max(firstLeadingBit(vec2<u32>(u_input.a, var_0.x)), abs(vec2<u32>(4294967295u, 85798u))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, u_input.a, 4294967295u), vec4<u32>(0u, 31703u, u_input.a, u_input.a)), ~0u)), ~(max(vec2<u32>(62254u, 15707u), vec2<u32>(0u, 98899u)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(54475u, 34639u), vec2<u32>(1u, var_0.x), vec2<u32>(u_input.a, 41856u))));
    var var_6 = vec4<i32>(~_wgslsmith_add_i32(-1i << (var_5.x % 32u), 1i) & _wgslsmith_div_i32(-2147483647i, (-26337i >> (var_5.x % 32u)) & (i32(-1i) * -24726i)), 10651i, _wgslsmith_add_i32(_wgslsmith_sub_i32(~(-4420i), 1i), ~(_wgslsmith_mod_i32(-1i, 1i) >> (0u % 32u))), -2147483647i);
    var var_7 = _wgslsmith_add_vec3_u32(vec3<u32>(27448u, _wgslsmith_clamp_u32(u_input.a, var_5.x, 15030u) ^ abs(4294967295u), ~(19119u & var_5.x)) << (~(~abs(vec3<u32>(1u, var_0.x, 4294967295u))) % vec3<u32>(32u)), vec3<u32>(1u, firstLeadingBit(var_0.x), u_input.a));
    let var_8 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(1i), var_6.yw, 51635u, var_6.x);
}

