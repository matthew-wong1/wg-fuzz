struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(19755i, -1i, 36311i, 0i, -1111i, 56791i, 26187i, 1i, 27539i, 16963i, 2147483647i, 2147483647i, 0i, 0i, -1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = (~35469u ^ (74599u << (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a.x, arg_0.a.x), firstTrailingBit(vec2<u32>(43469u, arg_0.a.x))) % 32u))) & ~arg_0.a.x;
    let var_1 = arg_0;
    var var_2 = vec3<f32>(-432f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(471f + 165f) + _wgslsmith_f_op_f32(select(-681f, 792f, var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1384f, -199f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -274f)));
    let var_3 = i32(-1i) * -firstTrailingBit(max(2147483647i, reverseBits(u_input.a.x)));
    var var_4 = _wgslsmith_dot_vec2_i32(reverseBits(u_input.a.yy), ~vec2<i32>(1i, reverseBits(0i) >> (_wgslsmith_mult_u32(var_1.a.x, var_1.a.x) % 32u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -683f);
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    global0 = array<i32, 15>();
    var var_0 = -335f;
    let var_1 = ~1u;
    var_0 = _wgslsmith_f_op_f32(max(1428f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-213f, _wgslsmith_f_op_f32(select(1840f, -164f, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1866f), _wgslsmith_f_op_f32(func_3(arg_0)))))));
    let var_2 = vec2<bool>(~countOneBits(-13706i) != select(~(u_input.a.x | 2147483647i), 1i, true), true);
    return Struct_2(~firstLeadingBit(_wgslsmith_clamp_vec2_u32(arg_0.a, abs(vec2<u32>(arg_0.a.x, var_1)), ~arg_0.a)), true);
}

fn func_4(arg_0: Struct_2) -> bool {
    global0 = array<i32, 15>();
    var var_0 = vec4<bool>(arg_0.b && any(!vec2<bool>(false, arg_0.b)), !(!(~arg_0.a.x >= ~arg_0.a.x)), false, ~arg_0.a.x > func_2(Struct_2(max(vec2<u32>(69517u, arg_0.a.x), arg_0.a), arg_0.b), i32(-1i) * -2147483647i).a.x);
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -308f, -1807f, 659f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1046f, 1062f, 365f, -270f))), vec4<f32>(-1536f, -132f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-649f)), 1f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(853f))))))));
    return 41617u <= ~_wgslsmith_div_u32(arg_0.a.x, func_2(Struct_2(arg_0.a, false), global0[_wgslsmith_index_u32(arg_0.a.x, 15u)] >> (arg_0.a.x % 32u)).a.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = arg_1;
    let var_1 = 5811i;
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 * 531f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 + -733f), arg_1, !arg_2)), _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2565f, _wgslsmith_f_op_f32(f32(-1f) * -759f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f)), 1270f)))));
    var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(step(-512f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(580f + 2037f))))), -1457f, arg_1), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), -1127f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(var_2.x * arg_1)), vec4<f32>(316f, 1000f, _wgslsmith_f_op_f32(-696f * arg_1), -1123f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), 721f, -106f, arg_1), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-390f, -236f, 933f, var_2.x), vec4<f32>(454f, -931f, arg_1, 176f)))))))));
    var_0 = _wgslsmith_f_op_f32(select(var_2.x, 1000f, !(!func_4(func_2(Struct_2(vec2<u32>(4294967295u, 1u), false), u_input.a.x)))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), min(vec3<u32>(48996u, 3390u, 20144u), vec3<u32>(17864u, 12638u, 15426u))) ^ _wgslsmith_clamp_u32(func_1(vec2<i32>(0i, 2147483647i), -2053f, true), 1u, _wgslsmith_mod_u32(~19159u, ~1u)), 18467u);
    global0 = array<i32, 15>();
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~(~27274u)), ~countOneBits(_wgslsmith_mult_u32(0u, 56256u)), _wgslsmith_clamp_u32(~(~8690u), _wgslsmith_add_u32(1u, 1u), ~1u), 1u), vec4<u32>(1u, 1u, _wgslsmith_add_u32(func_2(func_2(Struct_2(vec2<u32>(1u, 4294967295u), true), u_input.a.x), ~(-34120i)).a.x, 4294967295u), _wgslsmith_clamp_u32(reverseBits(0u), ~8293u, max(1u, 0u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_clamp_vec2_u32(func_2(Struct_2(vec2<u32>(1u, 7051u), true), u_input.a.x).a, vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), true))));
    var var_2 = Struct_2(vec2<u32>(1u, 0u) << (_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(24455u, 57834u)) >> (firstLeadingBit(vec2<u32>(4294967295u, 12505u)) % vec2<u32>(32u)), ~select(vec2<u32>(115413u, 33840u), vec2<u32>(0u, 1u), vec2<bool>(true, false)), func_2(Struct_2(vec2<u32>(0u, 1u), true), u_input.a.x).a) % vec2<u32>(32u)), true);
    var var_3 = Struct_2(~(~abs(vec2<u32>(var_2.a.x, var_2.a.x)) ^ vec2<u32>(~var_2.a.x, countOneBits(69373u))), any(!select(!vec2<bool>(var_2.b, var_2.b), select(vec2<bool>(var_2.b, false), vec2<bool>(var_2.b, var_2.b), false), !var_2.b)));
    var_2 = Struct_2(firstTrailingBit(vec2<u32>(~0u, _wgslsmith_add_u32(34790u, 0u))) << (~var_2.a % vec2<u32>(32u)), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(711f, -1000f, -515f, -863f), vec4<f32>(-241f, -2275f, 758f, -1000f), vec4<bool>(true, false, true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2082f, -527f, 796f, 411f) * vec4<f32>(189f, 120f, 705f, 131f)))))));
}

