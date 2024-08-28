struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> f32 {
    let var_0 = vec3<i32>(-60508i, u_input.a, countOneBits(_wgslsmith_sub_i32(-u_input.a, select(u_input.a, 0i, true)) ^ -u_input.a));
    var var_1 = false;
    var var_2 = Struct_2(4294967295u);
    var var_3 = vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~(-2147483647i)), -var_0.yz)), _wgslsmith_mod_i32(~firstLeadingBit(1i) & u_input.a, u_input.a), _wgslsmith_add_i32(2147483647i, ~var_0.x) ^ (abs(u_input.a) | 1i), -15957i);
    let var_4 = firstTrailingBit(select(vec3<u32>(40372u, var_2.a, select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, 1u, var_2.a), vec3<u32>(34019u, var_2.a, var_2.a)), _wgslsmith_add_u32(var_2.a, 0u), true)), ~vec3<u32>(var_2.a, 49275u, var_2.a) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a, var_2.a, var_2.a), vec3<u32>(27046u, 1344u, var_2.a), vec3<u32>(13562u, 48044u, var_2.a)), vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1028f * -905f) + -1275f))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = ~14664u;
    let var_2 = _wgslsmith_dot_vec3_u32(max(_wgslsmith_mod_vec3_u32(max(vec3<u32>(var_1, 4294967295u, var_1), vec3<u32>(39624u, 21029u, var_1)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(110075u, var_1, 28373u), vec3<u32>(0u, 4294967295u, var_1)), vec3<u32>(1u, 1u, 1u)), ~select(~vec3<u32>(8826u, var_1, var_1), vec3<u32>(0u, var_1, var_1), false)), vec3<u32>(~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, var_1), vec3<u32>(1u, var_1, 26032u)), 0u, 1u), ~(vec3<u32>(var_1, 4294967295u, var_1) >> (vec3<u32>(0u, var_1, var_1) % vec3<u32>(32u)))), 4294967295u));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f + -1000f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1944f, 555f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-743f)), _wgslsmith_f_op_f32(f32(-1f) * -1261f))))));
    var var_4 = vec2<i32>(~(~1i), _wgslsmith_sub_i32(select(-(~u_input.a), ~(~u_input.a), all(vec3<bool>(false, false, true))), 2147483647i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.x, _wgslsmith_f_op_f32(var_3.a.x - var_3.a.x)))) + 724f);
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-119f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(804f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1616f - 1581f)))))));
    var var_1 = ~(-_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, 1i, u_input.a), ~vec3<i32>(u_input.a, u_input.a, u_input.a))) << (~_wgslsmith_div_vec3_u32(~reverseBits(vec3<u32>(1u, 1u, arg_0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), ~vec3<u32>(0u, 65408u, arg_0.x))) % vec3<u32>(32u));
    let var_2 = 1u;
    var var_3 = Struct_3(1f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-367f, 1699f, 533f, -1201f) + vec4<f32>(688f, 351f, -549f, -1256f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-437f, 280f, 1519f, -1058f), vec4<f32>(963f, 394f, -161f, 306f)) * vec4<f32>(-511f, -685f, -584f, 622f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(334f, -106f, 471f, 1000f) * vec4<f32>(-1056f, 831f, 923f, -673f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(283f, -976f, 1000f, 989f) * vec4<f32>(1000f, -410f, 1191f, 447f)), true)), vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -935f), _wgslsmith_f_op_f32(919f + -616f), _wgslsmith_f_op_f32(f32(-1f) * -1196f)))))), reverseBits(var_1.x));
    let var_4 = min(~firstLeadingBit(vec4<u32>(1u, 14451u, arg_0.x, 10320u)) << (vec4<u32>(~arg_0.x, ~29023u, _wgslsmith_dot_vec2_u32(arg_0, ~arg_0), 20819u) % vec4<u32>(32u)), ~(~vec4<u32>(abs(var_2), 33307u, _wgslsmith_clamp_u32(var_2, 4294967295u, var_2), var_2)));
    return -1728f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1529f), _wgslsmith_f_op_f32(abs(-515f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(459f + -2035f)), 1f)));
    let var_1 = true;
    var var_2 = vec3<bool>(true, true, true);
    let var_3 = Struct_1(~vec3<u32>(1u, 1u, 1u), vec4<f32>(1188f, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-218f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(trunc(406f)))))));
    let var_4 = var_0.a.x;
    let var_5 = 0u == var_3.a.x;
    var var_6 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1233f);
}

