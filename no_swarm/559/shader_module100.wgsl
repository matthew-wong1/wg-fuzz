struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: Struct_2,
    d: Struct_4,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = select(~(-(~(vec4<i32>(u_input.b, -37600i, -6130i, -24675i) | vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i)))), vec4<i32>(~min(u_input.b, 2147483647i), ~(~2147483647i), _wgslsmith_div_i32(u_input.b, _wgslsmith_mod_i32(-41673i, -21224i)), ~(u_input.b << (u_input.a % 32u))) >> (abs(arg_0.a.a) % vec4<u32>(32u)), select(select(vec4<bool>(arg_0.a.a.x != u_input.a, true, true, any(vec3<bool>(false, false, true))), vec4<bool>(all(vec3<bool>(true, false, true)), true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.a > u_input.a, true, false, u_input.b != -60725i), vec4<bool>(select(true, true, true), all(vec2<bool>(false, false)), true, any(vec2<bool>(true, false)))), vec4<bool>(!all(vec2<bool>(false, true)), true, all(vec4<bool>(true, true, true, true)), true)));
    let var_1 = u_input.a;
    var var_2 = all(vec4<bool>(true, all(vec2<bool>(select(true, false, true), true)), true, !select(true, var_0.x < -27931i, true)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1303f * _wgslsmith_f_op_f32(-613f + -136f)) + -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(886f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -740f), -180f, false)), true)))), _wgslsmith_f_op_f32(trunc(-503f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(-1000f)));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 1006f, -971f, 1528f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-927f, var_3.x, var_3.x, var_3.x) - vec4<f32>(-1000f, var_3.x, -321f, var_3.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -858f, var_3.x, -854f) * vec4<f32>(var_3.x, 947f, -1685f, 322f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, -456f, var_3.x, var_3.x)))))) - vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(294f, var_3.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -613f)))), -1170f));
    return 56095u;
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    let var_0 = 4294967295u;
    var var_1 = Struct_3(vec4<u32>(func_3(Struct_4(Struct_3(vec4<u32>(19790u, 0u, u_input.a, 0u)))), ~u_input.a, u_input.a, var_0));
    var var_2 = Struct_3(vec4<u32>(~1u, var_0, u_input.a, ~abs(var_1.a.x)));
    var_2 = Struct_3(var_1.a);
    var var_3 = !(!vec3<bool>(true, !arg_0.x, arg_0.x));
    return countOneBits(var_0);
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_5(select(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_0), vec2<u32>(4294967295u, arg_0)), select(arg_0, u_input.a, false)), 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0 >> (4294967295u % 32u), 1u), vec2<u32>(1u, 1u) ^ select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a), false)), vec2<bool>(false, true)), Struct_4(Struct_3(vec4<u32>(15593u, func_2(vec2<bool>(false, false)), 1u, 0u))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(340f, 1000f)) - 607f)), Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), u_input.b), Struct_1(-1i, -23536i << (arg_0 % 32u)), ~(~(vec2<u32>(arg_0, u_input.a) << (vec2<u32>(u_input.a, arg_0) % vec2<u32>(32u)))), Struct_1(u_input.b, 0i)), Struct_4(Struct_3(vec4<u32>(4294967295u, u_input.a, 84956u, 0u) << (firstTrailingBit(vec4<u32>(u_input.a, 1u, 1757u, 0u)) % vec4<u32>(32u)))), Struct_3(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0, 0u, 27879u, u_input.a), ~vec4<u32>(u_input.a, 45959u, 8734u, 11201u)) >> (~(~vec4<u32>(47052u, 4294967295u, 16886u, 26107u)) % vec4<u32>(32u))));
    var var_1 = Struct_5(~var_0.c.d, Struct_4(var_0.d.a), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(257f, -1000f) + var_0.c.a)), var_0.c.b, Struct_1(var_0.c.b.b, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-26449i, u_input.b, var_0.c.e.a), vec3<i32>(-43577i, var_0.c.e.a, u_input.b)), -2147483647i, any(vec4<bool>(false, true, true, true)))), vec2<u32>(func_2(vec2<bool>(true, true)), ~u_input.a | 30785u), var_0.c.b), var_0.b, var_0.b.a);
    var_1 = Struct_5(var_1.a, Struct_4(Struct_3(_wgslsmith_div_vec4_u32(var_1.e.a, ~var_0.e.a))), var_1.c, var_0.b, var_1.d.a);
    let var_2 = true;
    let var_3 = 4294967295u;
    return Struct_3(~max(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), var_0.d.a.a.yw), u_input.a, ~arg_0, var_0.b.a.a.x ^ arg_0), var_0.e.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~1u);
    var var_1 = ~vec3<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -16078i), vec3<i32>(u_input.b, 1058i, u_input.b)), u_input.b) >> (~vec3<u32>(~0u, func_1(func_2(vec2<bool>(true, true))).a.x, ~1u >> (~4294967295u % 32u)) % vec3<u32>(32u));
    var var_2 = Struct_4(func_1(u_input.a));
    let var_3 = Struct_3(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 0u), var_2.a.a.zww), 18073u << (0u % 32u), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 19989u, var_2.a.a.x), vec3<u32>(0u, 24765u, var_0.a.x))) & vec4<u32>(firstLeadingBit(1u), 0u, u_input.a, firstLeadingBit(var_0.a.x)));
    let var_4 = Struct_4(var_2.a);
    var var_5 = vec2<bool>(true, ~(~_wgslsmith_sub_u32(20597u, 0u)) < abs(var_4.a.a.x));
    var var_6 = (_wgslsmith_add_vec2_i32(vec2<i32>(~(-75366i), _wgslsmith_dot_vec2_i32(var_1.xy, var_1.yy)), var_1.yz) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, var_1.x, u_input.b), vec4<i32>(var_1.x, 1i, -2147483647i, var_1.x)), select(2147483647i, var_1.x, var_5.x)), min(var_1.xx, vec2<i32>(37185i, u_input.b)))) & reverseBits(~_wgslsmith_clamp_vec2_i32(~vec2<i32>(-27319i, var_1.x), var_1.zz, -var_1.zx));
    var_1 = -max(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, 30727i, 31386i), vec3<i32>(var_1.x, var_1.x, 1i), vec3<i32>(-41528i, 56026i, -29653i)), ~vec3<i32>(-15493i, var_6.x, 0i)) & vec3<i32>(var_1.x, firstLeadingBit(-var_6.x), 0i);
    var var_7 = var_2.a.a.zxw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(197f, 736f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-809f, 1000f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1090f, -286f) + vec2<f32>(2061f, 479f)))))))), var_3.a.yxy);
}

