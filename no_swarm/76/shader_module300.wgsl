struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = ((57422u << (~(~u_input.b) % 32u)) << (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.d, 0u), vec3<u32>(arg_0, arg_0, u_input.b))) % 32u)) != arg_0;
    let var_1 = -35555i;
    var var_2 = Struct_3(u_input.c.yxz);
    var var_3 = any(select(vec2<bool>(true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true))), !select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true), vec2<bool>(true, !any(vec2<bool>(false, true)))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_sub_i32(var_1, 1i), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_2.a.x, 28090u) >> (u_input.c.wwx % vec3<u32>(32u)), firstTrailingBit(var_2.a), u_input.c.wzx)), ~firstLeadingBit(abs(vec4<u32>(6638u, 0u, 0u, 30036u))), false);
    return _wgslsmith_f_op_f32(f32(-1f) * -706f);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(reverseBits(_wgslsmith_sub_i32(-59441i, -12015i >> (u_input.b % 32u))), vec3<u32>(u_input.b ^ 0u, 4294967295u, u_input.b));
    var_0 = Struct_1(4965i, abs(vec3<u32>(u_input.a.x, u_input.d, var_0.b.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(986f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1250f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1513f)), -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(1743f)), 2500f, _wgslsmith_f_op_f32(2624f * -173f), -601f), vec4<f32>(-847f, -1000f, _wgslsmith_f_op_f32(trunc(-1756f)), _wgslsmith_f_op_f32(func_3(4294967295u))))) * vec4<f32>(1f, 1f, 1f, 1f))));
    let var_2 = Struct_5(vec3<bool>(!any(vec2<bool>(true, true)), true, !any(vec2<bool>(true, false)) || true), ~(~(0i)), var_0.b.yx, Struct_1(var_0.a, select(~vec3<u32>(39093u, var_0.b.x, 18770u), countOneBits(~vec3<u32>(var_0.b.x, var_0.b.x, u_input.b)), !(0i == var_0.a))), all(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))));
    let var_3 = !var_2.a;
    return Struct_4(~vec3<i32>(var_2.d.a, _wgslsmith_add_i32(~(-54337i), -var_2.d.a), var_2.b));
}

fn func_4(arg_0: Struct_4) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(u_input.c.x)))), 1f)), 1000f, -131f, _wgslsmith_f_op_f32(f32(-1f) * -516f));
    return -2147483647i;
}

fn func_1() -> i32 {
    return func_4(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(select(vec4<i32>(reverseBits(~0i), -(-14711i >> (u_input.a.x % 32u)), 0i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(func_1(), -7627i, 1i, -19165i), select(vec4<i32>(-45963i, 20955i, -23651i, 7361i), vec4<i32>(-38715i, -2147483647i, -2005i, -2147483647i), false) << (~vec4<u32>(u_input.a.x, 0u, 60731u, u_input.d) % vec4<u32>(32u))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), select(false, true, true)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), true), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, -242f, 1000f, 1069f)) * vec4<f32>(_wgslsmith_div_f32(2093f, -1401f), _wgslsmith_f_op_f32(round(-2113f)), _wgslsmith_f_op_f32(f32(-1f) * -2207f), 148f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1734f, 354f, -1000f, 1000f) + vec4<f32>(1357f, -2069f, -761f, 559f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1466f, 180f, -1081f, 1421f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1034f, 1000f, 2299f, 1244f), vec4<f32>(-1000f, 917f, 2347f, -132f))))))));
    let var_2 = Struct_4(var_0.wyx);
    var var_3 = var_1.x;
    var_3 = 438f;
    var var_4 = vec4<bool>(false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), true), any(vec2<bool>(true, true)) | true)), _wgslsmith_dot_vec2_u32(abs(~u_input.c.zz), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.yx, u_input.a), ~vec2<u32>(u_input.a.x, 4294967295u), ~vec2<u32>(u_input.b, 4294967295u))) <= ~u_input.a.x, any(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var_0 = _wgslsmith_sub_vec4_i32(~(-(-vec4<i32>(var_0.x, 2322i, 2147483647i, 14647i) << (vec4<u32>(u_input.c.x, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u)))), vec4<i32>(func_1(), ~firstLeadingBit(var_2.a.x << (1u % 32u)), var_0.x, var_2.a.x));
    var_0 = firstLeadingBit(vec4<i32>(-1i) * -abs(vec4<i32>(var_0.x, 21306i, var_2.a.x, var_2.a.x)));
    let var_5 = _wgslsmith_div_i32(~(1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2.a.x, 22107i, var_0.x), vec4<i32>(30013i, var_0.x, -16646i, -28068i))) | 0i, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_add_vec2_u32(vec2<u32>(50589u, 45922u), u_input.a));
}

