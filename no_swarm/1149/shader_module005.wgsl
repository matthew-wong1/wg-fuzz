struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(13808u, 102476u), vec2<u32>(1u, 34047u), vec2<u32>(35874u, 4294967295u), vec2<u32>(0u, 0u));

var<private> global1: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(0u, 0u, 2254u), vec3<u32>(54544u, 0u, 7311u), vec3<u32>(19657u, 4294967295u, 119691u), vec3<u32>(1u, 17530u, 1u), vec3<u32>(21878u, 195u, 57592u), vec3<u32>(1u, 2730u, 50565u), vec3<u32>(4294967295u, 0u, 13012u), vec3<u32>(44890u, 0u, 1u), vec3<u32>(46251u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u));

var<private> global2: Struct_1 = Struct_1(2552f);

var<private> global3: vec4<f32> = vec4<f32>(1240f, -1000f, -490f, 233f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + global2.a) + _wgslsmith_f_op_f32(-global3.x)), -191f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, -1000f)) + _wgslsmith_f_op_f32(sign(arg_1.a)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f)), arg_1.a, 1603f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * -1369f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1774f, -331f, -347f, -1373f) - vec4<f32>(1991f, -822f, global2.a, global2.a)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a, _wgslsmith_f_op_f32(-2264f - -1943f), _wgslsmith_f_op_f32(322f * global2.a), _wgslsmith_f_op_f32(select(global2.a, arg_1.a, false))))))), vec4<bool>(any(vec2<bool>(select(true, false, false), false)), global2.a == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-959f)), _wgslsmith_f_op_f32(select(1140f, global3.x, true)))), any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true))), true)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> u32 {
    global1 = array<vec3<u32>, 10>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(708f * 1f), -2373f, 1000f, arg_2.x) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_3.x, -744f, arg_1.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a, arg_1.x, -252f, 894f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(288f, -874f, global2.a, global2.a))))))))));
    global3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -208f), global2.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -713f, arg_0, arg_3.x)) * _wgslsmith_div_vec4_f32(var_1, var_1))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(-41440i, Struct_1(850f))), vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(arg_3.x)), -1000f, -478f))))));
    let var_2 = _wgslsmith_f_op_f32(floor(-607f));
    return reverseBits(u_input.b);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = vec4<u32>(~(~arg_3) << ((~_wgslsmith_sub_u32(arg_3, u_input.c) & ((arg_3 ^ 4294967295u) >> (_wgslsmith_clamp_u32(23214u, 1u, u_input.c) % 32u))) % 32u), 1u, (~arg_3 >> (17616u % 32u)) ^ ~32402u, _wgslsmith_dot_vec3_u32(~global1[_wgslsmith_index_u32(~arg_3, 10u)], vec3<u32>(~(4045u >> (u_input.a.x % 32u)), ~select(1u, 106815u, false), u_input.a.x & u_input.c)));
    var var_1 = var_0.x;
    var var_2 = u_input.d.www;
    let var_3 = -vec4<i32>(-1i, u_input.d.x >> (var_0.x % 32u), _wgslsmith_div_i32(_wgslsmith_sub_i32(-40209i, max(-2147483647i, 11748i)), 35052i), 14383i);
    let var_4 = arg_2;
    return Struct_1(997f);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = !(!any(vec4<bool>(true, true, true, true))) & false;
    global0 = array<vec2<u32>, 4>();
    let var_1 = func_4(_wgslsmith_div_f32(433f, _wgslsmith_f_op_f32(ceil(-1000f))), arg_3.a, arg_3, _wgslsmith_add_u32(~0u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.x, 1u), vec3<u32>(51066u, arg_1, 31213u)), _wgslsmith_dot_vec3_u32(u_input.a.yxz, global1[_wgslsmith_index_u32(arg_1, 10u)])) >> (func_2(-1186f, global3.wz, _wgslsmith_f_op_vec2_f32(-global3.xy), _wgslsmith_f_op_vec2_f32(-global3.xz)) % 32u)));
    global0 = array<vec2<u32>, 4>();
    var var_2 = var_1;
    return vec2<bool>(!var_0, false);
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_1 {
    global0 = array<vec2<u32>, 4>();
    var var_0 = 11625u;
    let var_1 = 1u;
    var var_2 = u_input.e.x >= 19732i;
    var var_3 = _wgslsmith_f_op_f32(sign(-757f));
    return func_4(-153f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, global2.a)), func_4(global3.x, -626f, func_4(643f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global3.x)))), func_4(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -940f), func_4(global3.x, -135f, Struct_1(global2.a), 67414u), 30466u), _wgslsmith_mult_u32(arg_1 | arg_1, 1u)), arg_2.x), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~max(~u_input.a >> (u_input.a % vec4<u32>(32u)), max(abs(vec4<u32>(3225u, u_input.a.x, 4294967295u, u_input.b)), ~u_input.a)), _wgslsmith_mod_u32(u_input.c, u_input.b), min(~(~(~vec3<u32>(u_input.b, u_input.b, u_input.a.x))), u_input.a.zzy), select(select(select(func_1(vec2<u32>(u_input.c, 4294967295u), 4294967295u, u_input.d, Struct_1(global3.x)), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(select(true, false, true), true), true));
    global1 = array<vec3<u32>, 10>();
    global0 = array<vec2<u32>, 4>();
    let var_1 = func_4(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(global2.a * -766f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(-1522f * -525f)))), Struct_1(func_5(~vec4<u32>(u_input.a.x, u_input.b, 101836u, 0u), u_input.b, min(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(129035u, 0u, 1u), vec3<u32>(u_input.a.x, 4294967295u, 22153u))), vec2<bool>(true, true)).a), 23849u);
    let var_2 = func_4(1000f, var_1.a, var_1, firstLeadingBit(abs(1u)));
    var var_3 = vec2<i32>(abs(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.e.x, 0i)), u_input.d.yw)), 3451i);
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1065f, 1000f, 1037f, var_2.a))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, var_1.a, var_1.a, -381f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-109f, var_2.a, -2074f, 1000f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 1161f, 549f, -3402f) + vec4<f32>(-979f, global3.x, 1723f, var_1.a)))), vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(3886u, u_input.b ^ (u_input.a.x | 1579u)), _wgslsmith_mod_u32(abs(abs(u_input.a.x)), 20719u)), abs(-abs(vec3<i32>(var_3.x, -2147483647i, u_input.d.x))), u_input.a.wx);
}

