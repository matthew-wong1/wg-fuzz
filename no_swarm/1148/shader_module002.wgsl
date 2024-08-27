struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_3(-u_input.a, ~15941i, Struct_1(true, u_input.a, vec2<i32>(_wgslsmith_mod_i32(arg_0, _wgslsmith_mult_i32(-17551i, 0i)), arg_0), u_input.c.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(464f, -993f))), vec2<f32>(_wgslsmith_div_f32(1125f, 1228f), _wgslsmith_f_op_f32(-226f - -210f))))), -(-u_input.e ^ (~u_input.a.x >> (1u % 32u))), ~vec4<i32>(~57647i, ~u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.b.x, -18486i, -4662i) ^ vec4<i32>(-14428i, u_input.b.x, arg_0, u_input.a.x), vec4<i32>(1i, arg_0, u_input.e, -2147483647i)), 0i));
    var var_1 = reverseBits(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, u_input.c.x, var_0.c.d), firstLeadingBit(vec3<u32>(var_0.c.d, 1u, 67082u)), select(vec3<bool>(false, true, var_0.c.a), vec3<bool>(var_0.c.a, var_0.c.a, var_0.c.a), vec3<bool>(true, false, true))), ~max(vec3<u32>(var_0.c.d, 46454u, u_input.c.x), vec3<u32>(99182u, u_input.c.x, u_input.c.x)), min(vec3<u32>(var_0.c.d, 4294967295u, u_input.c.x), vec3<u32>(0u, 1u, 4294967295u)) >> (~vec3<u32>(30502u, 4294967295u, 1u) % vec3<u32>(32u)))) | ~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, 1u, var_0.c.d)) | _wgslsmith_div_vec3_u32(vec3<u32>(84284u, u_input.c.x, var_0.c.d), vec3<u32>(4294967295u, u_input.c.x, 122196u)), ~vec3<u32>(u_input.c.x, u_input.c.x, var_0.c.d) >> (~vec3<u32>(0u, u_input.c.x, var_0.c.d) % vec3<u32>(32u)), abs(vec3<u32>(var_0.c.d, var_0.c.d, 0u)));
    var var_2 = var_1.x;
    let var_3 = u_input.e;
    var var_4 = Struct_4(Struct_2(var_0.c, Struct_1(var_0.c.a, -vec2<i32>(var_3, u_input.e), _wgslsmith_clamp_vec2_i32(firstTrailingBit(var_0.e.wy), vec2<i32>(var_3, var_3), ~vec2<i32>(39256i, u_input.e)), 4294967295u, var_0.c.e), Struct_1(var_0.c.e.x <= _wgslsmith_div_f32(var_0.c.e.x, 641f), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.zz, var_0.a), ~vec2<i32>(var_0.d, var_3)), select(~vec2<i32>(16063i, 44752i), var_0.a >> (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u)), true), _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(var_1.x, u_input.c.x), var_1.x), var_0.c.e), var_0.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(401f, var_0.c.e.x, var_0.c.e.x, -276f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.e.x * 526f), var_0.c.e.x), vec2<f32>(_wgslsmith_f_op_f32(floor(1685f)), var_0.c.e.x), true)) * _wgslsmith_div_vec2_f32(var_0.c.e, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1142f, -348f))))), var_3, var_0.a, var_0.c);
    return var_3;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_3(vec2<i32>(arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(func_3(4972i), u_input.d.x, -arg_2.x), arg_2.xxz)), _wgslsmith_dot_vec4_i32(~u_input.d, -_wgslsmith_mod_vec4_i32(vec4<i32>(-40775i, arg_0.x, arg_2.x, u_input.e), select(vec4<i32>(u_input.b.x, arg_2.x, arg_0.x, arg_0.x), vec4<i32>(-1i, 22235i, -1603i, arg_2.x), true))), Struct_1(true, ~firstLeadingBit(u_input.b.zz ^ vec2<i32>(u_input.a.x, -2147483647i)), min(~(vec2<i32>(arg_0.x, -1i) ^ arg_2.wz), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, -26339i), arg_0.zz | u_input.b.zz)), ~_wgslsmith_add_u32(1u, max(u_input.c.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(2198f, arg_1.x))))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(u_input.d.zzy), max(vec3<i32>(54901i, -1i, arg_0.x), vec3<i32>(-13838i, arg_2.x, arg_2.x) >> (vec3<u32>(4294967295u, arg_3, 11545u) % vec3<u32>(32u)))), vec3<i32>(arg_2.x, -29863i, arg_2.x)), firstTrailingBit(-arg_0));
    var var_1 = Struct_1(!select(var_0.c.a, !var_0.c.a, var_0.c.a && true), max(~(~vec2<i32>(var_0.b, arg_0.x) ^ ~u_input.d.xy), arg_2.zx), arg_0.zy, min((~0u ^ arg_3) ^ 1u, arg_3), _wgslsmith_f_op_vec2_f32(-arg_1));
    var_0 = Struct_3(-firstTrailingBit(~vec2<i32>(1i, var_1.b.x)), -u_input.a.x, var_0.c, var_1.c.x, vec4<i32>(firstLeadingBit(1i), 2147483647i, min(_wgslsmith_sub_i32(2147483647i, 1i), arg_0.x) >> (4294967295u % 32u), -9802i));
    var var_2 = min(u_input.d.xy, max(vec2<i32>(firstLeadingBit(26392i), var_0.c.c.x), -u_input.a));
    var var_3 = _wgslsmith_clamp_u32(~616u, 20291u, _wgslsmith_sub_u32(71211u, reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(84561u, var_0.c.d), vec2<u32>(1473u, 20005u)))));
    return Struct_3(abs(abs(min(var_1.b, arg_0.zz)) & _wgslsmith_mod_vec2_i32(var_1.c, vec2<i32>(arg_0.x, u_input.b.x))), -(_wgslsmith_dot_vec2_i32(countOneBits(var_1.b), -var_1.c) >> (~(~u_input.c.x) % 32u)), var_0.c, 59407i, var_0.e);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    return func_2(~u_input.d, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), arg_2.e.x))), countOneBits(_wgslsmith_add_vec4_i32(-arg_1.e & _wgslsmith_mult_vec4_i32(u_input.d, arg_1.e), vec4<i32>(u_input.e, arg_1.e.x, abs(arg_1.d), ~arg_2.c.c.x))), ~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.d, u_input.c.x), u_input.c) ^ ~u_input.c.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f))))), func_2(u_input.d << (vec4<u32>(u_input.c.x, ~0u, u_input.c.x, ~u_input.c.x) % vec4<u32>(32u)), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(721f)))), u_input.d, u_input.c.x), Struct_2(func_2(u_input.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1316f, -711f), vec2<f32>(-231f, -659f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1393f, 117f) + vec2<f32>(-126f, -1000f)))), min(vec4<i32>(u_input.d.x, u_input.e, u_input.b.x, u_input.a.x), ~u_input.d), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.c.x, 16863u, u_input.c.x)), ~vec3<u32>(u_input.c.x, 46477u, u_input.c.x))).c, Struct_1(func_2(u_input.d | u_input.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(345f, -198f)), u_input.d, firstTrailingBit(20109u)).c.a, select(~vec2<i32>(-1i, u_input.a.x), u_input.d.xz, vec2<bool>(true, true)), -u_input.b.xx, abs(_wgslsmith_div_u32(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(519f, -679f) + vec2<f32>(800f, 1232f)))), func_2(~u_input.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(841f, 754f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, -607f))), countOneBits(u_input.d) | u_input.d, select(8727u, u_input.c.x, true)).c, Struct_1(!any(vec4<bool>(false, false, false, true)), -vec2<i32>(u_input.e, u_input.e) >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), ~vec2<i32>(u_input.d.x, 51167i), u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1081f, -874f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(670f, -1325f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(641f, 859f), _wgslsmith_f_op_f32(-457f + -105f), _wgslsmith_f_op_f32(sign(712f)), -782f)))));
    let var_1 = var_0.c.d;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(any(vec3<bool>(false, true, true)), false != select(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), true);
    var var_1 = func_1();
    var var_2 = func_1();
    var_1 = func_4(var_1.e.x, func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1078f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x))), Struct_3(abs(vec2<i32>(13093i, 9942i)), _wgslsmith_sub_i32(-35131i, 1i), func_4(_wgslsmith_f_op_f32(f32(-1f) * -198f), Struct_3(var_1.b, var_2.c.x, Struct_1(true, var_2.c, vec2<i32>(u_input.d.x, -1i), u_input.c.x, vec2<f32>(791f, var_2.e.x)), -53179i, u_input.d), Struct_2(Struct_1(false, vec2<i32>(var_2.b.x, var_2.b.x), u_input.b.yy, 4294967295u, vec2<f32>(var_1.e.x, -1000f)), Struct_1(true, vec2<i32>(20979i, -41753i), var_2.c, var_1.d, var_1.e), Struct_1(false, var_1.c, vec2<i32>(1i, -18679i), u_input.c.x, vec2<f32>(-1968f, -1103f)), Struct_1(var_1.a, var_1.c, vec2<i32>(-1i, var_2.c.x), u_input.c.x, var_2.e), vec4<f32>(var_1.e.x, var_1.e.x, var_2.e.x, var_1.e.x))).c, i32(-1i) * -77670i, -vec4<i32>(53297i, 2147483647i, var_1.c.x, -80507i)), Struct_2(Struct_1(132f >= var_2.e.x, select(vec2<i32>(u_input.d.x, -2147483647i), vec2<i32>(17283i, var_1.c.x), var_0.x), vec2<i32>(var_2.b.x, 40978i), u_input.c.x & 4294967295u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1205f, var_2.e.x), var_1.e, var_0.yz))), Struct_1(all(var_0.yy), var_1.b, -u_input.d.wy, 25557u << (u_input.c.x % 32u), _wgslsmith_f_op_vec2_f32(ceil(var_1.e))), func_4(_wgslsmith_f_op_f32(2597f * 256f), func_2(vec4<i32>(38569i, -1i, -1i, u_input.d.x), var_1.e, u_input.d, var_2.d), Struct_2(Struct_1(false, var_1.b, u_input.a, 4294967295u, var_2.e), Struct_1(var_2.a, vec2<i32>(var_1.c.x, -2147483647i), var_2.c, 29718u, vec2<f32>(var_2.e.x, -1276f)), Struct_1(var_2.a, vec2<i32>(var_1.b.x, -53934i), u_input.d.zw, 0u, vec2<f32>(-1017f, var_2.e.x)), Struct_1(false, vec2<i32>(u_input.e, var_2.c.x), vec2<i32>(2147483647i, var_2.c.x), 33825u, vec2<f32>(var_2.e.x, 671f)), vec4<f32>(-1495f, -636f, var_2.e.x, var_1.e.x))).c, Struct_1(true, u_input.b.yx & vec2<i32>(u_input.b.x, var_1.b.x), vec2<i32>(var_2.c.x, var_2.b.x), 4294967295u, vec2<f32>(var_2.e.x, var_2.e.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(491f, 1864f, -1902f, 1515f), vec4<f32>(490f, var_2.e.x, var_1.e.x, 1000f)))))), Struct_2(Struct_1(all(select(var_0.yx, vec2<bool>(false, var_1.a), var_1.a)), var_2.b, var_1.b, u_input.c.x, _wgslsmith_div_vec2_f32(vec2<f32>(1539f, var_1.e.x), var_2.e)), func_2(_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(14482i, u_input.e, var_1.c.x, -2147483647i)), vec2<f32>(_wgslsmith_div_f32(-1063f, 638f), 1236f), -u_input.d, func_4(_wgslsmith_f_op_f32(step(var_1.e.x, -1279f)), func_4(2559f, Struct_3(u_input.b.xx, var_1.b.x, Struct_1(var_0.x, var_2.c, var_1.c, u_input.c.x, vec2<f32>(var_1.e.x, var_1.e.x)), -58027i, vec4<i32>(0i, var_1.b.x, var_1.b.x, 2147483647i)), Struct_2(Struct_1(false, vec2<i32>(u_input.b.x, 2147483647i), var_1.b, var_2.d, vec2<f32>(-1178f, var_1.e.x)), Struct_1(true, u_input.b.zx, vec2<i32>(1i, -59569i), var_1.d, vec2<f32>(-475f, var_2.e.x)), Struct_1(true, var_1.b, vec2<i32>(var_2.b.x, u_input.d.x), var_2.d, var_1.e), Struct_1(true, vec2<i32>(var_2.c.x, 2147483647i), u_input.d.xy, u_input.c.x, var_2.e), vec4<f32>(-499f, 588f, -524f, var_1.e.x))), Struct_2(Struct_1(true, vec2<i32>(var_2.c.x, u_input.b.x), vec2<i32>(-10295i, 29199i), 9180u, vec2<f32>(var_2.e.x, -526f)), Struct_1(false, u_input.a, vec2<i32>(-8559i, -3306i), u_input.c.x, vec2<f32>(466f, -166f)), Struct_1(false, u_input.d.wz, vec2<i32>(2147483647i, u_input.e), 91486u, vec2<f32>(132f, -546f)), Struct_1(var_0.x, var_2.b, vec2<i32>(18561i, var_1.b.x), var_2.d, var_2.e), vec4<f32>(var_1.e.x, var_1.e.x, var_2.e.x, var_1.e.x))).c.d).c, Struct_1(var_1.a, vec2<i32>(var_1.c.x, func_3(-42447i)), var_1.b, 1u & u_input.c.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.e.x, var_1.e.x), vec2<f32>(533f, var_1.e.x))))), func_1(), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, var_1.e.x, -941f, var_1.e.x)))))))).c;
    var var_3 = _wgslsmith_mult_vec4_u32(select(~vec4<u32>(u_input.c.x, var_1.d, u_input.c.x, 1u) << (_wgslsmith_mod_vec4_u32(max(vec4<u32>(var_2.d, var_1.d, var_1.d, 6362u), vec4<u32>(u_input.c.x, var_1.d, var_2.d, u_input.c.x)), vec4<u32>(13540u, 0u, var_2.d, var_2.d)) % vec4<u32>(32u)), vec4<u32>(reverseBits(_wgslsmith_clamp_u32(var_1.d, 4294967295u, u_input.c.x)), 1u, ~(~var_2.d), func_2(u_input.d, vec2<f32>(924f, 1761f), u_input.d, 11676u).c.d | var_2.d), !select(vec4<bool>(var_1.a, var_1.a, false, true), !vec4<bool>(true, var_0.x, false, false), select(vec4<bool>(var_2.a, var_2.a, var_2.a, var_0.x), vec4<bool>(true, var_2.a, var_0.x, false), true))), vec4<u32>(~(~_wgslsmith_add_u32(0u, var_1.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d, min(var_2.d, u_input.c.x), u_input.c.x), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 71051u, 4294967295u), vec3<u32>(31372u, var_1.d, 28723u))), u_input.c.x, 0u));
    let var_4 = var_0.yz;
    let var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1122f, var_2.e.x))), var_1.e)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1000f, var_2.e.x), _wgslsmith_f_op_f32(-var_2.e.x))) + var_1.e));
    var_3 = abs(vec4<u32>(u_input.c.x, var_1.d | ~(var_2.d << (var_1.d % 32u)), min(countOneBits(1u), _wgslsmith_clamp_u32(var_3.x, ~var_2.d, u_input.c.x)), ~91202u));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1032f)) - -564f));
}

