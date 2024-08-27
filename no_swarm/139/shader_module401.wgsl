struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), -9231i, 58589i, -36374i));

var<private> global1: vec3<bool>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    var var_0 = global0.a.x;
    global0 = Struct_1(!select(select(!vec2<bool>(false, global0.a.x), select(global1.xz, vec2<bool>(global1.x, global1.x), global0.a), vec2<bool>(global0.a.x, false)), select(!global1.zz, vec2<bool>(global1.x, false), vec2<bool>(false, false)), 18928i > global0.b.x), global0.b & ~(~global0.b));
    global0 = Struct_1(global0.a, vec4<i32>(i32(-1i) * -abs(2147483647i), ~countOneBits(-1i), 0i >> (u_input.a % 32u), -firstLeadingBit(640i)));
    global1 = select(vec3<bool>(true, !(!any(global0.a)), true), !select(select(select(vec3<bool>(global1.x, global0.a.x, global1.x), vec3<bool>(false, global1.x, global1.x), true), vec3<bool>(true, true, true), false), vec3<bool>(global1.x, any(vec4<bool>(true, global0.a.x, global1.x, global1.x)), all(vec4<bool>(false, global1.x, false, true))), !vec3<bool>(global0.a.x, true, false)), !select(!(!vec3<bool>(global0.a.x, global0.a.x, false)), vec3<bool>(u_input.a < 5307u, all(vec2<bool>(true, global0.a.x)), !global0.a.x), !select(vec3<bool>(true, global0.a.x, false), vec3<bool>(true, true, global1.x), false)));
    let var_1 = vec2<bool>(all(select(!select(vec4<bool>(global1.x, false, false, true), vec4<bool>(true, global0.a.x, false, global1.x), false), select(vec4<bool>(false, false, true, global1.x), vec4<bool>(global1.x, true, global1.x, true), global1.x), all(global1.yy))), global1.x);
    return all(!global1.zx);
}

fn func_2(arg_0: bool, arg_1: bool) -> bool {
    let var_0 = Struct_1(!vec2<bool>(func_3(), any(vec4<bool>(global0.a.x, false, false, false)) || arg_1), ~(vec4<i32>(-1i) * -(global0.b ^ global0.b)));
    let var_1 = vec4<f32>(1064f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-669f, _wgslsmith_f_op_f32(f32(-1f) * -1208f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 974f) + _wgslsmith_f_op_f32(min(-708f, 501f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -449f))) * _wgslsmith_f_op_f32(trunc(-1258f))))), _wgslsmith_f_op_f32(-1f), 135f);
    var var_2 = vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 45239u), ~vec2<u32>(4294967295u, u_input.a)), _wgslsmith_clamp_u32(~4294967295u, 51735u, u_input.a >> (u_input.a % 32u))), ~0u, ~u_input.a, u_input.a);
    var var_3 = Struct_1(!vec2<bool>(all(vec3<bool>(true, true, true)), global0.a.x), min(min(var_0.b, vec4<i32>(global0.b.x, global0.b.x, var_0.b.x, global0.b.x)), global0.b) & ~(vec4<i32>(-9071i, -4334i, 7178i, global0.b.x) << ((vec4<u32>(1u, 11563u, 5169u, u_input.a) ^ vec4<u32>(0u, var_2.x, 1u, u_input.a)) % vec4<u32>(32u))));
    let var_4 = Struct_1(!(!(!select(vec2<bool>(false, false), global0.a, var_3.a.x))), vec4<i32>(~var_0.b.x, abs(~(~28710i)), global0.b.x, var_0.b.x));
    return !arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    global1 = select(select(vec3<bool>(true, false, any(arg_2.a)), vec3<bool>(false, true, arg_2.a.x), select(vec3<bool>(true, !arg_0.a.x, func_2(false, false)), !select(vec3<bool>(false, true, global1.x), vec3<bool>(true, global0.a.x, true), vec3<bool>(false, global1.x, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, global1.x), !vec3<bool>(arg_0.a.x, false, global0.a.x)))), vec3<bool>(arg_0.a.x, any(vec4<bool>(global1.x, func_2(arg_0.a.x, arg_0.a.x), global1.x, global0.a.x)), false), arg_2.a.x);
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(814f, 1000f) * vec2<f32>(1000f, -1084f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(128f, -121f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1385f, -1068f), vec2<f32>(-615f, -1038f))), arg_0.a.x)))));
    global0 = Struct_1(!global0.a, global0.b);
    var var_2 = Struct_1(select(global1.yz, vec2<bool>(!var_0.a.x, !all(vec4<bool>(global1.x, true, global1.x, arg_2.a.x))), func_2(arg_0.a.x, var_0.a.x)), vec4<i32>(14796i, 1i, -(~select(-2147483647i, global0.b.x, false)), 48274i | arg_0.b.x));
    return _wgslsmith_mod_u32(u_input.a >> (~u_input.a % 32u), u_input.a | 43892u) ^ abs(u_input.a);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<u32>) -> vec2<bool> {
    var var_0 = Struct_1(global1.zx, global0.b);
    var_0 = Struct_1(select(select(!vec2<bool>(global1.x, false), global0.a, var_0.a.x), global0.a, global0.a), -vec4<i32>(var_0.b.x, global0.b.x, global0.b.x, -global0.b.x));
    global0 = Struct_1(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), !vec2<bool>(global1.x, global1.x), vec2<bool>(global0.a.x, var_0.a.x)), vec2<bool>(!global1.x | (true & var_0.a.x), false)), vec4<i32>(-14446i, -57258i, -(~(-89086i)), _wgslsmith_div_i32(0i, -27832i)));
    let var_1 = arg_1;
    var_0 = Struct_1(vec2<bool>(global1.x, any(select(vec3<bool>(var_0.a.x, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, var_0.a.x, false), vec3<bool>(global1.x, global0.a.x, global1.x), var_0.a.x)))), vec4<i32>(~_wgslsmith_dot_vec4_i32(var_0.b << (arg_2 % vec4<u32>(32u)), reverseBits(vec4<i32>(0i, -1915i, -65222i, global0.b.x))), -12112i, abs(_wgslsmith_div_i32(-11242i << (u_input.a % 32u), ~(-23845i))), global0.b.x));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-_wgslsmith_div_i32(1i, ~global0.b.x));
    let var_1 = firstLeadingBit(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 783u), ~vec2<u32>(51995u, u_input.a) << ((vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(11411u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    let var_2 = ~_wgslsmith_mod_vec2_u32(~var_1, vec2<u32>(firstLeadingBit(24673u) << ((u_input.a & u_input.a) % 32u), abs(u_input.a)));
    let var_3 = Struct_1(func_4(u_input.a, 27527u, firstTrailingBit(vec4<u32>(~var_2.x, var_2.x, func_1(Struct_1(global0.a, global0.b), vec4<i32>(global0.b.x, global0.b.x, 0i, global0.b.x), Struct_1(global1.yx, vec4<i32>(global0.b.x, -23949i, 2147483647i, global0.b.x))), 28056u))), vec4<i32>(_wgslsmith_dot_vec3_i32(global0.b.zyw, global0.b.xxz), global0.b.x, -2147483647i >> ((var_2.x >> (var_2.x % 32u)) % 32u), i32(-1i) * -1i) << (vec4<u32>(u_input.a ^ countOneBits(var_1.x), 73603u, ~12933u, min(4294967295u, 16799u)) % vec4<u32>(32u)));
    let var_4 = var_3;
    let var_5 = global1.yx;
    global1 = !vec3<bool>(any(!(!vec4<bool>(var_5.x, global1.x, var_5.x, true))), var_4.a.x, !(~u_input.a > 4294967295u));
    let var_6 = vec2<u32>(4294967295u, ~var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(779f, 809f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) + vec2<f32>(-2410f, 760f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1174f - -920f) * -187f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(561f, -1663f)) + _wgslsmith_div_f32(-2175f, 293f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1071f - -286f), _wgslsmith_f_op_f32(sign(-442f)), false)), -394f, u_input.a > u_input.a))));
}

