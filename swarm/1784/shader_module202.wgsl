struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    let var_0 = vec2<u32>(firstLeadingBit(~(~1u)), _wgslsmith_mult_u32(38380u, firstTrailingBit(abs(46615u))));
    var var_1 = -603f;
    let var_2 = ~u_input.a;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -389f) - _wgslsmith_div_f32(-1547f, 1075f)))))));
    var var_3 = ~var_2.zyw;
    return _wgslsmith_f_op_f32(f32(-1f) * -180f);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> vec3<bool> {
    let var_0 = arg_3;
    var var_1 = !arg_1.e.zz;
    var_1 = !(!select(arg_1.e.yz, vec2<bool>(any(arg_1.e.xy), true), arg_1.e.xy));
    let var_2 = 6114i;
    var_1 = vec2<bool>(all(select(vec4<bool>(true, all(vec3<bool>(arg_1.a.x, arg_1.e.x, true)), var_1.x | arg_1.e.x, arg_1.c.x <= 62668u), select(!vec4<bool>(var_1.x, arg_1.e.x, false, arg_1.e.x), vec4<bool>(arg_1.e.x, false, var_1.x, false), vec4<bool>(false, false, var_1.x, arg_1.e.x)), true)), var_1.x);
    return !(!vec3<bool>(true, arg_1.a.x, var_1.x));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = true;
    var_0 = all(arg_2);
    var_0 = arg_1;
    let var_1 = abs(_wgslsmith_div_vec4_i32(-(~vec4<i32>(0i, 14842i, 32286i, -13002i)), vec4<i32>(1i, 1i, 1i, 1i)));
    var_0 = true;
    return Struct_1(select(!(!(!arg_2)), !(!arg_2), vec3<bool>((arg_0 ^ arg_0) <= arg_0, arg_1, all(vec3<bool>(arg_2.x, true, arg_1)) && (arg_2.x != arg_2.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, arg_2.x), arg_2, vec4<bool>(false, true, false, arg_1), false)), _wgslsmith_f_op_f32(floor(817f))))))), u_input.a.yz, ~select(_wgslsmith_mult_i32(abs(1i), var_1.x), 10155i, arg_1), !(!func_3(_wgslsmith_f_op_f32(-126f + 400f), Struct_1(arg_2, -1041f, vec2<u32>(u_input.b, 44763u), 61356i, vec3<bool>(arg_2.x, true, arg_2.x)), var_1.x << (arg_0 % 32u), _wgslsmith_f_op_f32(f32(-1f) * -536f))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.d.b);
    var var_1 = u_input.b;
    var var_2 = arg_2.b.yw;
    let var_3 = select(-1i, 0i, false) ^ min(1i, -1i << (0u % 32u));
    let var_4 = Struct_2(vec2<i32>(_wgslsmith_div_i32(var_3 >> ((var_2.x << (11136u % 32u)) % 32u), -17603i), (_wgslsmith_dot_vec2_i32(vec2<i32>(-65517i, 1i), vec2<i32>(-27571i, arg_1)) ^ 2147483647i) << (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(22868u, arg_2.d.c.x, 33995u, 4294967295u)), vec4<u32>(arg_2.e, var_2.x, 62274u, 16597u)) % 32u)), ~arg_2.c, vec4<u32>(40868u, ~_wgslsmith_mod_u32(0u, ~u_input.b), ~(~arg_2.b.x) ^ ~u_input.b, 68663u), arg_2.d, u_input.b);
    return _wgslsmith_mult_vec2_u32(select(~vec2<u32>(4294967295u, var_2.x) << (func_1(17107u ^ arg_2.d.c.x, all(vec4<bool>(arg_2.d.a.x, true, true, true)), select(vec3<bool>(var_4.d.a.x, false, true), vec3<bool>(true, true, true), var_4.d.a.x)).c % vec2<u32>(32u)), ~(~abs(vec2<u32>(4294967295u, var_2.x))), !select(var_4.d.a.zz, arg_2.d.a.xy, false)), vec2<u32>(u_input.b, var_4.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_dot_vec2_u32(func_4(-2147483647i, _wgslsmith_sub_i32(-1i, firstLeadingBit(5666i)), Struct_2(vec2<i32>(1i, 1i), u_input.a, u_input.a, func_1(u_input.a.x, true, vec3<bool>(true, false, true)), 1901u)), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yyw, vec3<u32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_dot_vec3_u32(~u_input.a.wwz, ~vec3<u32>(24496u, 4294967295u, u_input.b)))), Struct_2(vec2<i32>(-reverseBits(-12531i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -61012i), vec3<i32>(11040i, -61646i, 25910i))), vec4<u32>(4294967295u, 1u, u_input.b | 6842u, countOneBits(u_input.b)) | ~vec4<u32>(4294967295u, 24459u, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(~min(vec4<u32>(0u, u_input.b, u_input.a.x, 26750u), u_input.a), countOneBits(~u_input.a)), func_1(u_input.b, _wgslsmith_f_op_f32(sign(-1021f)) == _wgslsmith_f_op_f32(f32(-1f) * -573f), vec3<bool>(true, true, true)), ~(~(~36745u))), _wgslsmith_dot_vec3_u32(u_input.a.xxz, vec3<u32>(u_input.b, ~(~u_input.a.x), countOneBits(countOneBits(13388u)))), Struct_2(~_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(30559i, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(11708i, 34944i), vec2<i32>(1i, -2147483647i))), vec4<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_div_u32(u_input.b, 4294967295u) >> (u_input.b % 32u), ~func_1(u_input.a.x, true, vec3<bool>(true, true, true)).c.x, 13065u), ~firstLeadingBit(~vec4<u32>(u_input.a.x, u_input.b, 65665u, 1u)), Struct_1(select(vec3<bool>(false, false, false), func_3(816f, Struct_1(vec3<bool>(true, true, false), 509f, u_input.a.wz, -2147483647i, vec3<bool>(true, true, true)), 1i, 1939f), true), -820f, _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 111393u), reverseBits(vec2<u32>(u_input.a.x, u_input.a.x))), 56529i, vec3<bool>(true, true, false)), _wgslsmith_mod_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), firstLeadingBit(u_input.b)), _wgslsmith_dot_vec3_u32(~u_input.a.xzw, ~vec3<u32>(u_input.b, 21610u, 1u)))));
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(~(~var_0.b.d.d), 0i), -1i, ~(-15961i));
    var var_2 = var_0.d.d;
    var_2 = var_0.b.d;
    var_1 = vec3<i32>(1i, _wgslsmith_div_i32(firstTrailingBit(-var_1.x), var_2.d | -9173i), -50013i | (~_wgslsmith_dot_vec2_i32(var_1.zx, var_1.zx) & max(var_0.d.d.d, -35467i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-655f + -446f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * -681f))), var_0.b.d.b)), var_0.d.b.wzw, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-204f, -1136f, 1195f, 727f), vec4<f32>(var_2.b, var_0.b.d.b, var_0.b.d.b, 1208f), vec4<bool>(true, var_0.b.d.a.x, var_2.e.x, true))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_2.b, var_2.b, var_0.d.d.b) + vec4<f32>(670f, var_0.d.d.b, var_2.b, var_0.b.d.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1112f, -468f, 1382f, -935f)), vec4<bool>(false, var_0.d.d.e.x, var_0.b.d.e.x, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1013f, var_2.b, var_0.b.d.b, -584f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * 131f) + _wgslsmith_f_op_f32(-166f * var_2.b))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.b.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1419f, var_0.b.d.b))))))));
}

