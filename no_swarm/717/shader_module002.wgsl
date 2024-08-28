struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    let var_0 = !arg_0.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -540f);
    var var_2 = ~vec3<i32>(min(-1i, 0i), -firstLeadingBit(1i), _wgslsmith_mult_i32(~(u_input.d << (104020u % 32u)), ~5444i));
    var var_3 = u_input.b.x;
    var_3 = 95386i;
    return u_input.c ^ abs(0i);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, _wgslsmith_div_u32(reverseBits(u_input.a), 21498u)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, reverseBits(1902u)), vec2<u32>(0u ^ u_input.a, 0u))), countOneBits(reverseBits(max(vec2<u32>(0u, 4294967295u) << (vec2<u32>(u_input.a, 24916u) % vec2<u32>(32u)), vec2<u32>(1u, 17808u)))), abs((vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(1u, 1u)) << (firstTrailingBit(abs(vec2<u32>(u_input.a, 213u))) % vec2<u32>(32u))));
    var var_1 = func_3(!vec2<bool>(!arg_1, true)) ^ -61158i;
    var_1 = u_input.b.x;
    var_0 = _wgslsmith_sub_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.a, var_0.x)), firstTrailingBit(abs(abs(vec2<u32>(469u, var_0.x))))) << (~(~(~vec2<u32>(16641u, u_input.a))) % vec2<u32>(32u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, arg_2))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(762f, arg_2))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1076f, 788f)))))), vec2<bool>(false, all(!vec4<bool>(arg_1, false, arg_0, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_f_op_f32(min(-747f, arg_2)), -1000f))), any(select(select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_1), true), vec2<bool>(true, true), _wgslsmith_f_op_f32(-1648f - -230f) >= arg_2)), arg_2 < 1156f);
    return ~(~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 41382u), vec2<u32>(31423u, 12530u)), ~var_0.x, 0u)) ^ (~(~countOneBits(vec4<u32>(4294967295u, var_0.x, u_input.a, var_0.x))) >> (min(vec4<u32>(~4040u, ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(12791u, 58714u, u_input.a, 1u), vec4<u32>(1956u, 4294967295u, u_input.a, var_0.x)), 1u), vec4<u32>(14915u, u_input.a, 0u, ~u_input.a)) % vec4<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(-205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -346f)))), _wgslsmith_f_op_f32(sign(1028f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), -340f, 1117f)), vec3<f32>(-1395f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-866f, 846f))), 1f), any(vec3<bool>(true, true, true)))), all(vec4<bool>(true, true, u_input.d != 1i, all(vec2<bool>(false, false)))), !all(vec3<bool>(true, select(false, true, false), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.a.x, var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1698f + var_0.a.x) + 1212f), any(!vec3<bool>(var_0.c, var_0.c, var_0.c))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.x, 495f, var_0.d)) * _wgslsmith_f_op_f32(var_0.b.x + -1101f)), _wgslsmith_f_op_f32(round(-753f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1629f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, 322f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yy)), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), -416f, var_0.a.x)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b + var_0.b))))), all(vec3<bool>(true, var_0.d, all(!vec2<bool>(true, var_0.c)))), !(_wgslsmith_add_i32(-u_input.c, ~(-20198i)) < -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -10420i), vec2<i32>(6695i, u_input.c))));
    let var_3 = 10237u;
    var var_4 = _wgslsmith_dot_vec3_u32(~arg_1.zyz, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(9095u, u_input.a), 0u), ~(~abs(var_3)), var_3));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    var var_0 = func_4((~select(68426u, u_input.a, arg_1.x) & ~countOneBits(1u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(27312u, _wgslsmith_mod_u32(u_input.a, 37277u), ~u_input.a, select(u_input.a, 0u, false)), ~(vec4<u32>(4294967295u, 83937u, 0u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 1u, 1u))) % 32u), select(max(~select(vec4<u32>(41785u, u_input.a, u_input.a, 34233u), vec4<u32>(u_input.a, 0u, 1u, u_input.a), arg_0.d), ~vec4<u32>(u_input.a, 3030u, u_input.a, u_input.a)), (func_2(arg_1.x, false, 1577f) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 30397u, 0u, u_input.a), vec4<u32>(15343u, 4294967295u, 7637u, 0u))) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), any(arg_1.xx)));
    return true & arg_0.d;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = -739f;
    let var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = ~select(func_2(any(!arg_2), !select(arg_0.x, arg_0.x, arg_0.x), _wgslsmith_f_op_f32(-1064f * -709f)).x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(20872u, u_input.a), vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)) & ~vec2<u32>(u_input.a, u_input.a), vec2<u32>(63052u, 13155u)), all(!(!arg_0.wzy)));
    var var_3 = 0u;
    var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(min(reverseBits(vec2<u32>(u_input.a, 28507u)), vec2<u32>(0u, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 61739u)) | (vec2<u32>(u_input.a, 72691u) ^ vec2<u32>(15842u, 71070u))), 4294967295u) & _wgslsmith_sub_u32(4294967295u, 1u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a) + arg_1.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.b, vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.a.x), vec3<bool>(arg_0.x, false, arg_2.x)))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -180f), var_0, _wgslsmith_div_f32(-236f, -1122f)))), false || arg_1.d)), 7529u > ~(~(1u >> (u_input.a % 32u))), true);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = vec2<bool>(false, any(!vec4<bool>(true, arg_2.d, arg_1.d, true)) | !func_4(0u, vec4<u32>(71826u, 0u, u_input.a, u_input.a)).c);
    var var_1 = func_4(select(~((u_input.a ^ 0u) & u_input.a), 4294967295u, true), vec4<u32>(1041u, ~u_input.a, u_input.a, 14600u));
    var var_2 = func_4(30705u, _wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 1865u, 0u)) ^ vec4<u32>(0u, 82547u, 0u, 50914u)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 39817u, 59584u), ~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 16946u)), u_input.a, ~46339u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), vec4<u32>(12338u, 25296u, 1u, u_input.a))))));
    var var_3 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_2.a.x, 975f)), _wgslsmith_f_op_f32(arg_1.a.x * var_1.b.x), _wgslsmith_div_f32(198f, arg_2.b.x), 459f) - vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.b.x)), arg_1.b.x, _wgslsmith_f_op_f32(685f * 936f), -437f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 52015u;
    let var_1 = any(vec3<bool>(select(false, true, true), (true || all(vec4<bool>(true, false, true, true))) && false, true));
    let var_2 = -11306i;
    let var_3 = max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(~(u_input.a << (u_input.a % 32u)), ~(~58095u), (u_input.a >> (42828u % 32u)) ^ select(1u, 35494u, var_1), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4109u, var_0) << (vec4<u32>(51931u, var_0, 1u, var_0) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(var_0, var_0, var_0, 4294967295u), vec4<u32>(var_0, 44882u, 0u, 4294967295u) << (vec4<u32>(68871u, 25932u, 1u, 48288u) % vec4<u32>(32u)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(func_6(var_1, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-251f, -1338f)), -545f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(169f, -1574f, -1417f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1079f, 907f, -1067f))), var_1, all(!select(vec4<bool>(false, var_1, true, true), vec4<bool>(false, var_1, true, false), true))), func_5(select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(true, var_1, var_1, select(var_1, true, false)), vec4<bool>(any(vec4<bool>(var_1, false, true, true)), true, func_1(Struct_1(vec2<f32>(1219f, 1460f), vec3<f32>(-1506f, 1500f, 1018f), true, var_1), vec3<bool>(var_1, var_1, var_1)), false)), func_4(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, 0u, var_3), vec3<u32>(u_input.a, var_0, var_3)), vec4<u32>(33359u, _wgslsmith_dot_vec3_u32(vec3<u32>(26771u, var_3, 0u), vec3<u32>(1u, 4294967295u, var_0)), ~var_3, 1u)), vec4<bool>(true, !var_1, var_1, func_1(Struct_1(vec2<f32>(665f, 752f), vec3<f32>(323f, -335f, -644f), true, false), vec3<bool>(true, true, var_1))), -(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, -37438i), u_input.b) | _wgslsmith_mod_vec3_i32(vec3<i32>(22793i, 5331i, var_2), u_input.b)))));
    var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_4.x, _wgslsmith_f_op_f32(-725f - var_4.x), _wgslsmith_f_op_f32(min(765f, -442f)), var_4.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(func_5(vec4<bool>(var_1, true, var_1, var_1), Struct_1(var_4.xw, vec3<f32>(416f, -457f, var_4.x), var_1, true), vec4<bool>(false, var_1, true, var_1), vec3<i32>(u_input.c, -1i, 1i)).c, Struct_1(vec2<f32>(776f, var_4.x), var_4.zyy, true, var_1), Struct_1(vec2<f32>(var_4.x, var_4.x), var_4.yxx, false, false))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4.x, var_4.x, 1107f, var_4.x))))))));
    var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, -1014f, 142f, var_4.x) * vec4<f32>(1435f, var_4.x, -1041f, -103f))))));
    var var_5 = func_5(vec4<bool>(var_1, var_1, true, true), func_4(1u, vec4<u32>(15232u, _wgslsmith_sub_u32(~0u, 1u), var_0, var_0)), vec4<bool>(var_1, var_1, func_4(43848u, vec4<u32>(0u, _wgslsmith_clamp_u32(1863u, 40054u, var_3), u_input.a, ~u_input.a)).c, !all(vec2<bool>(false, true))), ~_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2, var_2, -8693i), vec3<i32>(var_2, u_input.d, 2147483647i) | u_input.b), vec3<i32>(firstLeadingBit(-16266i), 43771i, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-min(firstLeadingBit(vec3<i32>(u_input.c, u_input.d, 0i)), abs(u_input.b))));
}

