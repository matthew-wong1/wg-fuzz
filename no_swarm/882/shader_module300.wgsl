struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, false, false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<bool> {
    return !select(vec4<bool>(!(arg_0.x < 21946u), true, _wgslsmith_div_f32(-1108f, arg_3.x) >= _wgslsmith_f_op_f32(f32(-1f) * -468f), global0.a.x), select(select(!global0.a, select(vec4<bool>(global0.a.x, global0.a.x, arg_2.a.x, true), vec4<bool>(arg_2.a.x, arg_2.a.x, false, true), arg_2.a), all(vec3<bool>(global0.a.x, true, global0.a.x))), !(!global0.a), vec4<bool>(!global0.a.x, global0.a.x, !arg_2.a.x, arg_0.x != 1u)), !select(select(global0.a, arg_2.a, arg_2.a), vec4<bool>(false, false, true, false), global0.a));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = true;
    var var_1 = Struct_1(select(!vec4<bool>(!var_0, true, true, !arg_1.a.x), !func_3(reverseBits(vec4<u32>(27031u, 5016u, 1u, 4294967295u)), vec3<i32>(-26811i, u_input.a, u_input.a), Struct_1(vec4<bool>(arg_1.a.x, true, var_0, true)), vec4<f32>(1000f, 462f, -1183f, 277f)), false));
    var var_2 = select(select(~(~max(vec2<u32>(1u, 4294967295u), vec2<u32>(2997u, 1u))), vec2<u32>(1u, ~1u), !arg_1.a.zw), select(vec2<u32>(~_wgslsmith_mult_u32(21596u, 106136u), 1u), select(vec2<u32>(_wgslsmith_div_u32(37701u, 17931u), _wgslsmith_mult_u32(5898u, 1u)), ~vec2<u32>(0u, 4294967295u), !var_0), true), true);
    let var_3 = !global0.a.x;
    let var_4 = 49578u < ~var_2.x;
    return ~(~(~(~vec4<u32>(0u, 1u, var_2.x, 0u))) | reverseBits(~vec4<u32>(1u, 41530u, 46188u, 1u) | _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, 55877u, var_2.x, 19242u), vec4<u32>(var_2.x, 4294967295u, 77640u, var_2.x))));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_clamp_vec4_u32(func_2(true & any(global0.a), Struct_1(global0.a)), vec4<u32>(firstTrailingBit(firstTrailingBit(19078u)), 31256u, 0u, firstTrailingBit(23373u)) ^ vec4<u32>(~(~1u), 1u, min(select(39124u, 51116u, global0.a.x), func_2(false, arg_0).x), abs(1u >> (1u % 32u))), firstTrailingBit(~firstTrailingBit(vec4<u32>(0u, 4247u, 1u, 74514u))));
    global0 = Struct_1(global0.a);
    global0 = arg_0;
    global0 = Struct_1(!arg_0.a);
    global0 = arg_0;
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = u_input.a;
    let var_1 = -u_input.a;
    let var_2 = !select(!select(vec2<bool>(false, true), global0.a.zz, true), select(vec2<bool>(true, true), select(!vec2<bool>(global0.a.x, global0.a.x), select(vec2<bool>(false, true), global0.a.zx, true), !vec2<bool>(false, global0.a.x)), !vec2<bool>(global0.a.x, true)), !(!func_1(Struct_1(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true)))));
    let var_3 = Struct_1(select(!global0.a, select(select(select(vec4<bool>(false, true, var_2.x, global0.a.x), global0.a, global0.a), select(vec4<bool>(global0.a.x, false, global0.a.x, var_2.x), global0.a, true), !vec4<bool>(true, true, false, global0.a.x)), vec4<bool>(global0.a.x && true, true, global0.a.x, global0.a.x), global0.a.x), true));
    global0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_vec2_u32(select(vec2<u32>(0u, 49944u), vec2<u32>(4294967295u, 74462u), true) >> (vec2<u32>(43758u, 26423u) % vec2<u32>(32u)), vec2<u32>(1u, _wgslsmith_div_u32(120381u, 4294967295u)))), vec4<u32>(~1u, ~1u, countOneBits(1u), 5263u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(-204f + -1299f))))));
}

