struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(1i, -1i, -85706i, 1i, 1i, 12593i, 1i, 0i, 2147483647i, -13996i, 1i, -67691i, 2147483647i, 2147483647i, -25008i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    return global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(select(reverseBits(u_input.a), u_input.a, true) >> ((u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a)), 15u)];
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    global0 = array<i32, 15>();
    return func_3();
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(arg_1, 15u)] ^ global0[_wgslsmith_index_u32(~10364u, 15u)], max(min(_wgslsmith_mod_i32(~arg_2.d, 7287i), -arg_2.d), 12832i));
    global0 = array<i32, 15>();
    var var_1 = true;
    global0 = array<i32, 15>();
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(10589i, _wgslsmith_mult_i32(func_2(true, vec3<i32>(376i, var_0, var_0), false), 0i)), abs(max(-26891i, 2147483647i))), abs(-2147483647i));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_div_u32(~13902u, 23351u);
    var var_1 = arg_3;
    var_1 = Struct_1(vec3<u32>(~firstTrailingBit(~1u), max(1u, select(select(var_1.a.x, 12537u, true), func_1(vec4<f32>(arg_1, arg_1, 529f, -818f), 106530u, arg_2).a.x, true)), max(0u, 63337u)), ~arg_0.b, firstTrailingBit(vec2<i32>(var_1.b.x, -_wgslsmith_mult_i32(arg_2.d, arg_0.b.x))), _wgslsmith_clamp_i32(1i, ~2147483647i << (~4294967295u % 32u), ~global0[_wgslsmith_index_u32(var_1.a.x, 15u)] | arg_0.d) | -28017i);
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    return ~vec3<u32>(var_0, arg_0.a.x, _wgslsmith_mod_u32(countOneBits(1u), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a) & ~33345u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    let var_0 = min(min(_wgslsmith_div_vec3_u32(u_input.a.xzw, func_4(func_1(vec4<f32>(543f, 1608f, 300f, 119f), 27507u, Struct_1(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<i32>(-2147483647i, -26452i, -53653i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], -2147483647i), 20133i)), _wgslsmith_f_op_f32(f32(-1f) * -1824f), func_1(vec4<f32>(-700f, 396f, 1000f, -492f), u_input.a.x, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec2<i32>(4083i, global0[_wgslsmith_index_u32(1u, 15u)]), global0[_wgslsmith_index_u32(u_input.a.x, 15u)])), func_1(vec4<f32>(-496f, 619f, 201f, 687f), 4294967295u, Struct_1(u_input.a.yzw, vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), 2147483647i)))), ~(~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), vec3<u32>(~_wgslsmith_div_u32(~18148u, 6831u ^ u_input.a.x), 38602u, _wgslsmith_mod_u32(reverseBits(1u), func_4(func_1(vec4<f32>(879f, 857f, -434f, 634f), u_input.a.x, Struct_1(u_input.a.xyx, vec3<i32>(49742i, -2147483647i, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -394f), func_1(vec4<f32>(972f, -961f, 588f, 186f), 4294967295u, Struct_1(u_input.a.zwz, vec3<i32>(14593i, -2147483647i, -1i), vec2<i32>(global0[_wgslsmith_index_u32(47074u, 15u)], 1i), -38680i)), Struct_1(u_input.a.wxw, vec3<i32>(-1i, 62361i, -24704i), vec2<i32>(6800i, -11868i), global0[_wgslsmith_index_u32(u_input.a.x, 15u)])).x)));
    global0 = array<i32, 15>();
    let var_1 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(any(vec3<bool>(false, false, true)), false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), (6500i <= global0[_wgslsmith_index_u32(1u, 15u)]) | true), true), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, true)), true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), any(vec4<bool>(true, false, false, false))), all(vec3<bool>(true, true, true))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))) || ((~u_input.a.x > (0u ^ var_0.x)) & any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false))));
    global0 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.x, 54428u, ~(select(0u, 1u, var_1.x) | 4294967295u), ~var_0.x), -926f, var_0.x);
}

