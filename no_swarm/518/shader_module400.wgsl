struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(1u, min(~reverseBits(vec3<u32>(1u, 58538u, 36515u)), ~(~vec3<u32>(4294967295u, 17626u, 4294967295u))) >> (_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), select(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(27062u, 30275u, 1u)), select(false, false, true))) % vec3<u32>(32u)));
    let var_1 = 4294967295u;
    var_0 = Struct_1(~1u, _wgslsmith_clamp_vec3_u32(var_0.b, ~var_0.b, vec3<u32>(var_1, min(var_0.a >> (var_1 % 32u), 22432u), ~1u)));
    var_0 = Struct_1(17434u, vec3<u32>(max(4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_0.a, var_1, var_1), vec4<u32>(var_1, var_0.a, 0u, var_1)), ~_wgslsmith_mult_u32(89408u, var_1)), select(1u, ~3149u, true), _wgslsmith_sub_u32(var_0.a, 0u)));
    var var_2 = u_input.b.x;
    return abs(u_input.b.x | 2147483647i);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1146f) + _wgslsmith_f_op_f32(f32(-1f) * -1622f)), _wgslsmith_f_op_f32(trunc(-116f)), _wgslsmith_div_f32(-177f, -1011f));
    let var_1 = Struct_3(vec4<u32>(1u, arg_1.a, arg_1.a, firstTrailingBit(countOneBits(65334u))) ^ (vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.b, vec3<u32>(4294967295u, 1u, arg_1.b.x)), arg_1.a, ~23023u, arg_1.b.x) & firstLeadingBit(vec4<u32>(arg_1.a, arg_1.b.x, 4294967295u, 0u))), _wgslsmith_f_op_f32(-var_0.x), arg_1, Struct_2(_wgslsmith_sub_i32(func_3(), firstTrailingBit(abs(arg_0.x)))), Struct_2(-u_input.a));
    var var_2 = ~(abs(firstLeadingBit(firstTrailingBit(arg_1.b))) ^ vec3<u32>(countOneBits(arg_1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 110987u, 33082u) ^ vec3<u32>(95422u, 1u, arg_1.b.x), vec3<u32>(arg_1.a, arg_1.b.x, 1u)), arg_1.a));
    var var_3 = var_1.e;
    let var_4 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-u_input.b.x, 0i, ~(-51165i), var_3.a), -_wgslsmith_add_vec4_i32(vec4<i32>(var_1.d.a, -39225i, var_3.a, u_input.b.x), u_input.b) & u_input.b), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(u_input.a, -29572i)), ~min(arg_0.yz, vec2<i32>(u_input.b.x, -11665i))), _wgslsmith_dot_vec4_i32(u_input.b, ~vec4<i32>(arg_0.x, var_1.e.a, var_3.a, 1i))));
    return select(select(select(vec3<bool>(true, any(vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), false), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), false), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), arg_1.a < 20730u))), vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), any(vec2<bool>(true, true)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)) | !all(vec4<bool>(false, false, true, false))), vec3<bool>(!(var_1.b == 494f), true, !any(vec3<bool>(true, true, true))));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), func_2(vec3<i32>(15993i, arg_1.x, 15388i), Struct_1(0u, vec3<u32>(79661u, arg_3, arg_3))), vec3<bool>(true, true, true))), select(!func_2(arg_1.wzy, Struct_1(4294967295u, vec3<u32>(1u, arg_3, arg_3))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false == !all(vec4<bool>(true, true, true, true)));
    var_0 = !vec3<bool>((_wgslsmith_mult_u32(arg_3, 1u) == 33672u) != func_2(max(u_input.b.zzz, vec3<i32>(-1i, u_input.b.x, u_input.b.x)), Struct_1(arg_3, vec3<u32>(83552u, arg_3, arg_3))).x, any(func_2(vec3<i32>(53364i, -1i, -2147483647i), Struct_1(arg_3, vec3<u32>(arg_3, arg_3, 87849u)))), false);
    let var_1 = Struct_3(~max(abs(vec4<u32>(arg_3, arg_3, 0u, arg_3)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_3, arg_3, 4294967295u) << (vec4<u32>(arg_3, arg_3, arg_3, arg_3) % vec4<u32>(32u)), vec4<u32>(arg_3, 15864u, arg_3, arg_3), vec4<u32>(4294967295u, arg_3, arg_3, 100735u))), _wgslsmith_f_op_f32(min(-298f, arg_0)), Struct_1(firstTrailingBit(min(13610u, 9168u) ^ arg_3), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_3, 46301u), vec3<u32>(4194u, arg_3, 41855u)))), Struct_2(-(i32(-1i) * -1i)), Struct_2(firstTrailingBit(1i)));
    let var_2 = var_1;
    let var_3 = ~((vec4<i32>(-1i) * -(vec4<i32>(12626i, 5161i, var_1.e.a, var_1.e.a) << (var_2.a % vec4<u32>(32u)))) ^ min(u_input.b, ~firstLeadingBit(arg_1)));
    return Struct_1(_wgslsmith_sub_u32(arg_3, 4294967295u), ~var_1.a.yzz);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = func_1(-278f, _wgslsmith_div_vec4_i32(abs(u_input.b), countOneBits(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, u_input.a, u_input.b.x, 650i)), -u_input.b))), i32(-1i) * -2147483647i, 6400u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-126f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1556f - _wgslsmith_f_op_f32(842f + -126f)), _wgslsmith_div_f32(-203f, _wgslsmith_f_op_f32(f32(-1f) * -414f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-209f, 1398f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(490f, -170f))), 195f)));
    var var_2 = Struct_2(abs(61352i));
    var_2 = Struct_2(~(~_wgslsmith_clamp_i32(var_2.a, var_2.a ^ 2147483647i, ~2147483647i)));
    return Struct_2(reverseBits(-611i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(2147483647i);
    var_0 = Struct_2(2147483647i);
    var var_1 = func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(629f)))), min(vec4<i32>(0i, u_input.a, u_input.a | var_0.a, 1i), u_input.b), ~(~var_0.a), ~(~(~17718u))), vec4<u32>(1u, 1u, 1u, 1u), vec2<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-533f * 1576f), _wgslsmith_f_op_f32(f32(-1f) * -239f), any(vec2<bool>(false, false)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)), false), select(select(vec4<bool>(func_2(u_input.b.yxw, Struct_1(1383u, vec3<u32>(0u, 34000u, 72362u))).x, true, true, false), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), false));
    var_0 = Struct_2(-28008i);
    var_1 = func_4(Struct_1(countOneBits(0u), ~vec3<u32>(0u, _wgslsmith_sub_u32(4294967295u, 43587u), ~0u)), select(abs(min(_wgslsmith_mod_vec4_u32(vec4<u32>(70201u, 11318u, 55703u, 49364u), vec4<u32>(1u, 373u, 4294967295u, 33589u)), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(max(905f, -170f)) < _wgslsmith_f_op_f32(sign(-797f)), true)), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(false, true, true)), false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(true, true)), vec4<bool>(func_2(vec3<i32>(30834i, 5837i, var_1.a) & (vec3<i32>(9196i, var_1.a, var_1.a) << (vec3<u32>(7559u, 0u, 0u) % vec3<u32>(32u))), func_1(302f, u_input.b, 17223i, ~4294967295u)).x, !all(vec3<bool>(true, true, true)), true, ~(-31945i) >= u_input.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1019f, 1131f, 331f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1131f, 261f, -296f))))))) - vec3<f32>(_wgslsmith_div_f32(-146f, -1092f), _wgslsmith_f_op_f32(f32(-1f) * -224f), -966f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, -146f, 198f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1924f, 1578f, -1000f), vec3<f32>(-134f, -658f, 612f)))))));
    var var_3 = _wgslsmith_mod_u32(~1u, firstLeadingBit(1u)) >> (firstTrailingBit(4294967295u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_add_u32(1u, 1u), ~(~_wgslsmith_clamp_u32(4294967295u, 44162u, 25514u)), select(abs(firstTrailingBit(22059u)), ~1u, !all(vec2<bool>(false, false)))), _wgslsmith_add_i32(select(~36443i << (1u % 32u), 2147483647i, ~1i > ~var_1.a), -2147483647i), ~vec4<u32>(15508u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 5970u, 607u, 83285u), vec4<u32>(28253u, 1u, 84677u, 27728u)) >> (select(4294967295u, 29160u, false) % 32u), 66938u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 484f, var_2.x, 756f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(624f, var_2.x, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -1463f, -352f)) + vec4<f32>(1224f, -1467f, -271f, -229f))))), ~select(vec4<u32>(min(44319u, 12877u), ~57444u, _wgslsmith_sub_u32(1u, 1u), abs(1u)), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(83159u, 0u, 61111u, 32062u), true), true));
}

