struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1437f, -719f, 1695f));

var<private> global1: array<f32, 12> = array<f32, 12>(-965f, -1069f, -621f, -1847f, -179f, 110f, 1021f, -1420f, -1000f, 872f, -406f, 610f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    var var_0 = !all(select(vec3<bool>(any(vec3<bool>(false, true, true)), true, false), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), vec3<bool>(all(vec4<bool>(false, true, true, true)), true, false)));
    var var_1 = ~(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(59620u >> (1u % 32u), u_input.c.x, ~u_input.c.x), select(~0u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 57109u < u_input.c.x)));
    var_1 = ~(~u_input.c.x);
    global0 = Struct_1(global0.a);
    var var_2 = _wgslsmith_clamp_i32(min(~_wgslsmith_dot_vec4_i32(min(u_input.a, vec4<i32>(u_input.d, 0i, 2147483647i, 1i)), u_input.a ^ vec4<i32>(-1i, u_input.a.x, u_input.d, -2147483647i)), select(-reverseBits(2147483647i), _wgslsmith_mod_i32(1i, u_input.d), true)), reverseBits(abs(9969i)), u_input.d);
    return vec3<bool>(any(vec4<bool>(all(vec3<bool>(false, true, true)), true, true, true)) && true, false, false);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = any(func_3());
    var var_1 = global1[_wgslsmith_index_u32(45234u, 12u)];
    let var_2 = arg_0;
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x), true), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 80017u, 38752u, u_input.c.x), vec4<u32>(19357u, u_input.c.x, 35125u, u_input.c.x))), ~u_input.c.x) >> (_wgslsmith_sub_u32(u_input.c.x, 64664u) % 32u), ~(~u_input.c.x));
    var_3 = ~12830u;
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), u_input.c.zx) << (firstTrailingBit(u_input.c.x) % 32u), u_input.c.x, reverseBits(27u & u_input.c.x), u_input.c.x), abs(min(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 24689u), ~vec4<u32>(29252u, 1u, 45173u, 79302u)) << (select(max(vec4<u32>(6826u, u_input.c.x, u_input.c.x, 47509u), vec4<u32>(1u, u_input.c.x, u_input.c.x, 15877u)), vec4<u32>(u_input.c.x, u_input.c.x, 0u, 0u), vec4<bool>(false, false, true, false)) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_mod_vec4_u32(countOneBits((vec4<u32>(u_input.c.x, arg_1, 16611u, 24519u) ^ vec4<u32>(u_input.c.x, arg_1, 8524u, u_input.c.x)) & select(reverseBits(vec4<u32>(29824u, 29830u, 95157u, 34679u)), vec4<u32>(59948u, 4294967295u, u_input.c.x, arg_1), true)), ~vec4<u32>(~func_2(Struct_1(vec3<f32>(-768f, arg_0.a.x, arg_0.a.x))), abs(arg_1), 0u, u_input.c.x));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(-367f, global0.a.x, 1000f)), _wgslsmith_f_op_vec3_f32(exp2(global0.a)), vec3<bool>(true, false, true))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 12u)], arg_0.a.x, -981f), global0.a, true)))))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(782f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(max(29694u, var_0.x), ~var_0.x), 12u)], arg_0.a.x));
    var var_2 = min(u_input.a.yy, ~u_input.a.zz);
    let var_3 = any(!func_3().xz);
    return vec3<u32>(~1u ^ abs(_wgslsmith_mult_u32(reverseBits(4294967295u), select(var_0.x, u_input.c.x, var_3))), 0u, _wgslsmith_clamp_u32(755u, 1u, ~max(4294967295u, 16002u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-711f, 1714f)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1554f)) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 12u)])) - global1[_wgslsmith_index_u32(abs(countOneBits(u_input.c.x)), 12u)]), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x + arg_1.a.x))), var_0.x));
    var var_2 = u_input.d;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1380f)), global0.a.x) * _wgslsmith_f_op_f32(sign(-227f))))), -2003f);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(~func_1(Struct_1(vec3<f32>(252f, global1[_wgslsmith_index_u32(60718u, 12u)], 1506f)), ~abs(u_input.c.x)), Struct_1(vec3<f32>(619f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1000f)), 1222f, true)), _wgslsmith_f_op_f32(ceil(global0.a.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-674f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(15751u, 12u)], -1400f), _wgslsmith_f_op_f32(-894f - global1[_wgslsmith_index_u32(u_input.c.x, 12u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], -1582f, global1[_wgslsmith_index_u32(u_input.c.x, 12u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-389f, 1055f, global1[_wgslsmith_index_u32(9018u, 12u)]))))), false || any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))));
    global1 = array<f32, 12>();
    global0 = func_4(~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.c.x, 98339u, u_input.c.x), abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), ~(~1u), ~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4643u >> (u_input.c.x % 32u), 70692u), 12u)], _wgslsmith_f_op_f32(step(-873f, -150f)), -178f)), func_4(u_input.c, func_4(vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, 1u), ~u_input.c.x, _wgslsmith_clamp_u32(21657u, 4294967295u, u_input.c.x)), func_4(~vec3<u32>(u_input.c.x, 27072u, 16255u), func_4(vec3<u32>(1u, u_input.c.x, 16546u), Struct_1(vec3<f32>(-357f, -1378f, -457f)), Struct_1(global0.a), true), func_4(u_input.c, Struct_1(global0.a), Struct_1(global0.a), false), any(vec4<bool>(true, false, false, false))), Struct_1(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(global1[_wgslsmith_index_u32(8669u, 12u)], global0.a.x, -1061f))), all(vec3<bool>(true, true, true)) | false), func_4(u_input.c, func_4(~u_input.c, func_4(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), Struct_1(vec3<f32>(1000f, -1056f, global1[_wgslsmith_index_u32(1u, 12u)])), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(6234u, 12u)], 1146f, 1280f)), true), Struct_1(global0.a), true), func_4(vec3<u32>(u_input.c.x, u_input.c.x, 21942u), func_4(u_input.c, Struct_1(vec3<f32>(global0.a.x, -801f, 670f)), Struct_1(global0.a), false), func_4(u_input.c, Struct_1(vec3<f32>(-1130f, -431f, global0.a.x)), Struct_1(vec3<f32>(-814f, global0.a.x, global0.a.x)), false), all(vec4<bool>(true, true, false, false))), any(vec3<bool>(true, true, true))), true), func_3().x | !(!select(false, false, true)));
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.c.x, 12u)])), 435f, 1059f));
    let var_1 = func_4(~vec3<u32>(57872u, _wgslsmith_dot_vec2_u32(select(u_input.c.xz, u_input.c.yx, vec2<bool>(true, false)), vec2<u32>(u_input.c.x, 1u)), 21758u), func_4(vec3<u32>(select(4294967295u ^ u_input.c.x, min(u_input.c.x, u_input.c.x), true), abs(u_input.c.x), 69088u), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -1110f, var_0.a.x) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.x, var_0.a.x, 305f), vec3<f32>(204f, global1[_wgslsmith_index_u32(38351u, 12u)], global0.a.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(var_0.a))))), true), func_4(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 67190u), u_input.c)), Struct_1(vec3<f32>(-641f, _wgslsmith_f_op_f32(select(-1676f, 732f, true)), _wgslsmith_f_op_f32(f32(-1f) * -153f))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(823f, 1439f, -1942f))), true), any(vec2<bool>(select(false, false, true) && true, true)));
    var_0 = var_1;
    global0 = Struct_1(vec3<f32>(1f, 726f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), -1127f, any(vec3<bool>(true, true, false))))));
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(min(u_input.c, u_input.c) << (vec3<u32>(165409u, 52189u, 15480u) % vec3<u32>(32u)))), -countOneBits(countOneBits(u_input.a.wwy)) | u_input.a.yzy);
}

