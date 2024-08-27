struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-15182i, i32(-2147483648), i32(-2147483648), -35985i, -6639i, -9216i, -1i);

var<private> global1: array<bool, 16> = array<bool, 16>(false, false, true, false, true, true, true, false, true, false, true, false, false, true, true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec2_u32(~(~u_input.d.yx), u_input.d.yx);
    var var_1 = !select(select(vec3<bool>(true, any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 16u)], global1[_wgslsmith_index_u32(18854u, 16u)])), global1[_wgslsmith_index_u32(arg_0.x, 16u)]), !vec3<bool>(global1[_wgslsmith_index_u32(7008u, 16u)], false, global1[_wgslsmith_index_u32(19684u, 16u)]), select(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 16u)]), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 16u)], global1[_wgslsmith_index_u32(arg_0.x, 16u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 16u)], false, false), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 16u)], false)), select(vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 16u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(30330u, 16u)], false, global1[_wgslsmith_index_u32(u_input.e, 16u)])))), !vec3<bool>(true, true & global1[_wgslsmith_index_u32(u_input.e, 16u)], false), global1[_wgslsmith_index_u32(~1u, 16u)]);
    var_1 = vec3<bool>(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(1u, 29006u), arg_0.x), 7u)] > _wgslsmith_dot_vec2_i32(reverseBits(~vec2<i32>(-20890i, u_input.b.x)), min(_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(0i, -1i)), reverseBits(u_input.b))), arg_0.x <= ~u_input.e, true);
    let var_2 = vec3<i32>(~(-global0[_wgslsmith_index_u32(arg_0.x, 7u)]), -39629i, _wgslsmith_clamp_i32(countOneBits(~38518i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), ~(-65822i)) >> (var_0.x % 32u), u_input.b.x));
    var_1 = !select(!(!vec3<bool>(var_1.x, true, true)), select(vec3<bool>(true, var_2.x != u_input.b.x, global0[_wgslsmith_index_u32(9590u, 7u)] < 1i), select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 16u)], global1[_wgslsmith_index_u32(arg_0.x, 16u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], var_1.x, global1[_wgslsmith_index_u32(var_0.x, 16u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 16u)], true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0, ~arg_0), 16u)]), !(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 16u)], false), vec3<bool>(var_1.x, false, false), true)));
    return vec4<bool>(global1[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(u_input.d.x, u_input.e), 1441u, global1[_wgslsmith_index_u32(~50329u, 16u)] && true), 16u)], !((1i == u_input.a) || all(var_1.yy)), any(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], false, true, true), !vec4<bool>(true, var_1.x, false, true), !vec4<bool>(true, var_1.x, true, var_1.x))), true);
}

fn func_2() -> Struct_2 {
    global0 = array<i32, 7>();
    let var_0 = Struct_2(abs(18052u), vec4<bool>(false, !global1[_wgslsmith_index_u32(~21195u ^ u_input.c, 16u)], !any(func_3(vec4<u32>(u_input.d.x, u_input.e, u_input.e, 27110u))), true), abs(abs(u_input.d)), abs(min(countOneBits(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.e, 7u)], 2147483647i, u_input.b.x, u_input.b.x))), abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 7u)], 1i, global0[_wgslsmith_index_u32(1u, 7u)], 10492i)))), vec3<i32>(-15493i, -49643i, i32(-1i) * -u_input.b.x));
    global0 = array<i32, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1840f - -247f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(min(788f, -1559f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -890f))), _wgslsmith_f_op_f32(-var_1.x))));
    return Struct_2(abs(u_input.d.x), vec4<bool>(true, all(!(!vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))), true, true), vec3<u32>(~(~0u), reverseBits(~0u), u_input.d.x), vec4<i32>(firstLeadingBit(-6269i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, -2147483647i, 14270i, -40091i), var_0.d), ~(global0[_wgslsmith_index_u32(32823u, 7u)] ^ -1i) & u_input.a, abs(-(u_input.a << (u_input.d.x % 32u))), _wgslsmith_div_i32(24918i, var_0.e.x)), (vec3<i32>(abs(7379i), -2147483647i, var_0.e.x) | var_0.e) >> (vec3<u32>(~(~34939u), var_0.a ^ countOneBits(4048u), var_0.c.x) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    let var_0 = func_2();
    global0 = array<i32, 7>();
    var var_1 = -14850i;
    let var_2 = var_0;
    let var_3 = var_2.d.x;
    return _wgslsmith_f_op_f32(sign(-875f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(234f, -2308f) * -2045f))), 1206f);
    let var_1 = countOneBits(u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2227f, 807f, -1446f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(370f, 1136f, 1116f), vec3<f32>(-862f, 357f, -1484f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(802f, 492f, 523f), vec3<f32>(-1108f, 1000f, -1128f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f * -106f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2117f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(476f - 1827f), 978f)))));
    var var_3 = u_input.d;
    global1 = array<bool, 16>();
    var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(u_input.c, 4294967295u), var_3.x, vec2<f32>(595f, -1000f), u_input.c), vec2<bool>(false, global1[_wgslsmith_index_u32(var_3.x, 16u)]))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -646f), var_2.x)), -701f, !(u_input.e > 0u))), -1668f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(735f, var_2.x, -129f) + vec3<f32>(var_2.x, 972f, -900f)))))))));
    var var_4 = ~u_input.d;
    let var_5 = Struct_1(min(u_input.d.yy, vec2<u32>(countOneBits(~93102u), min(1u, var_3.x) << (_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) % 32u))), var_4.x << (var_4.x % 32u), var_2.zz, firstLeadingBit(~var_4.x));
    var_3 = vec3<u32>(~select(~_wgslsmith_clamp_u32(27452u, 0u, var_5.d), 15077u, false), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_5.a, vec2<u32>(u_input.d.x, 0u) | _wgslsmith_sub_vec2_u32(u_input.d.xy, u_input.d.yx)), ~(~78433u)), ~(~15273u));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_1, -1i), u_input.d);
}

