struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(348f, -1233f)));
    let var_1 = Struct_3(Struct_1(~select(vec4<u32>(u_input.b, u_input.b, 47338u, u_input.b), vec4<u32>(1u, 48517u, 0u, u_input.b), false) << (min(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), firstLeadingBit(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b))) % vec4<u32>(32u)), vec4<bool>(!any(vec4<bool>(false, true, false, false)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), false, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))))));
    var var_2 = Struct_3(Struct_1(var_1.a.a, !vec4<bool>(!var_1.a.b.x, any(vec2<bool>(var_1.a.b.x, false)), true && var_1.a.b.x, var_0 <= -1003f)));
    let var_3 = !var_2.a.b.xz;
    var_2 = Struct_3(var_2.a);
    return vec3<i32>(_wgslsmith_add_i32(u_input.a, _wgslsmith_div_i32(~1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, -12838i), firstTrailingBit(0i)))), _wgslsmith_add_i32(1i, u_input.a), reverseBits(_wgslsmith_sub_i32(u_input.a, ~u_input.a)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(~select(arg_2.xy, vec2<u32>(arg_0.a.a.x, u_input.b), arg_3.x), ~(~arg_0.a.a.wy)), ~firstLeadingBit(4294967295u)) & arg_0.a.a.zyy;
    var_0 = arg_0.a.a.wyz;
    var var_1 = select(countOneBits(~_wgslsmith_add_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.a, -44110i, arg_1.x)), ~vec4<i32>(arg_1.x, arg_1.x, -1i, u_input.a))), firstTrailingBit(~max(vec4<i32>(-2147483647i, arg_1.x, 44277i, 2693i) << (vec4<u32>(arg_0.a.a.x, arg_0.a.a.x, 55105u, 0u) % vec4<u32>(32u)), ~vec4<i32>(-75689i, 29669i, arg_1.x, u_input.a))), vec4<bool>(all(!(!vec2<bool>(arg_0.a.b.x, arg_3.x))), !arg_3.x, !arg_3.x, !(_wgslsmith_sub_u32(1u, 0u) < (arg_0.a.a.x >> (4294967295u % 32u)))));
    let var_2 = any(arg_0.a.b);
    return _wgslsmith_mult_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(~1u, arg_0.a.a.x, reverseBits(0u), reverseBits(25777u)), _wgslsmith_add_vec4_u32(arg_0.a.a, vec4<u32>(arg_2.x, 19701u, 4294967295u, var_0.x) >> (arg_0.a.a % vec4<u32>(32u)))), firstLeadingBit(~firstLeadingBit(arg_0.a.a)), var_2), ~select(abs(arg_0.a.a), vec4<u32>(~1u, abs(var_0.x), var_0.x, arg_0.a.a.x), ~57236u == arg_2.x));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(Struct_1(func_4(Struct_2(Struct_1(vec4<u32>(u_input.b, 24547u, u_input.b, 17753u), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec3_i32(func_3(), vec3<i32>(-26070i, 36229i, u_input.a), vec3<i32>(u_input.a, u_input.a, 8707i) << (vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u))), select(_wgslsmith_add_vec3_u32(vec3<u32>(25489u, 58576u, u_input.b), vec3<u32>(11896u, 0u, u_input.b)), reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.b)), true), vec3<bool>(true, true, select(true, false, true))), vec4<bool>(true, true, true, true)));
    var var_1 = ~_wgslsmith_div_u32(0u, var_0.a.a.x);
    var_1 = ~(~(~_wgslsmith_mod_u32(22615u, _wgslsmith_dot_vec2_u32(vec2<u32>(114783u, 67429u), var_0.a.a.zz))));
    var var_2 = ~var_0.a.a.zwy;
    let var_3 = 1u < ~_wgslsmith_sub_u32(countOneBits(var_0.a.a.x), 20320u);
    return Struct_2(Struct_1(~min(~vec4<u32>(var_0.a.a.x, u_input.b, var_0.a.a.x, var_2.x), ~vec4<u32>(4314u, var_2.x, 4294967295u, 92837u)), var_0.a.b), var_0.a.b);
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = vec2<i32>(u_input.a, ~(-_wgslsmith_sub_i32(10676i, u_input.a)) ^ _wgslsmith_add_i32(func_3().x, 16593i));
    var_0 = -(~_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a, -1i) ^ ~vec2<i32>(u_input.a, 1i), -(~vec2<i32>(24296i, 1i)), vec2<i32>(var_0.x, -34856i)));
    let var_1 = _wgslsmith_div_vec3_u32(~(~arg_2.a.a.yzz), arg_2.a.a.zxx);
    var_0 = func_3().xx << (~(~min(vec2<u32>(0u, u_input.b), select(arg_1.wz, arg_2.a.a.xy, arg_3.yz))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 416f, -885f), vec3<f32>(-976f, 959f, -1258f))))));
    return func_2().a;
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = Struct_2(func_5(true, min(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(59250u, u_input.b, 8898u, 11694u)), ~(~vec4<u32>(47554u, 31841u, 64552u, u_input.b))), func_2(), !vec4<bool>(true, any(vec4<bool>(true, true, true, false)), true, all(vec4<bool>(false, false, true, false)))), func_5(any(vec2<bool>(all(vec4<bool>(true, true, true, false)), true)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, 7493u, 1u)) & _wgslsmith_sub_vec4_u32(select(vec4<u32>(46250u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, 14491u, u_input.b, u_input.b), vec4<bool>(true, false, true, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 15642u), vec4<u32>(1u, u_input.b, u_input.b, u_input.b))), func_2(), !vec4<bool>(true, any(vec4<bool>(false, false, false, false)), true, all(vec3<bool>(true, false, true)))).b);
    return any(var_0.b.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(false, select(true, u_input.b != u_input.b, true) || true), !vec2<bool>(false, (u_input.b != 53187u) | func_1(2147483647i)));
    var var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, i32(-1i) * -(~2147483647i), _wgslsmith_mult_i32(u_input.a, u_input.a), 0i));
}

