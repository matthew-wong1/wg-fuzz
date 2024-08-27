struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = -38091i;
    let var_1 = 23158i;
    let var_2 = Struct_3(vec3<i32>(firstLeadingBit(reverseBits(var_1)), var_1, -14865i << (u_input.a.x % 32u)), arg_0);
    var_0 = 18189i;
    var_0 = ~(-1i);
    return arg_0.b;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = ~(~func_2(Struct_2(arg_1.yzz >> (arg_3.www % vec3<u32>(32u)), Struct_1(vec4<u32>(arg_3.x, u_input.d.x, 4294967295u, 38373u), u_input.b, arg_0.a.x, vec3<bool>(arg_0.b.b.d.x, arg_0.b.b.d.x, false)), arg_2, ~arg_1.x, max(u_input.d, vec2<u32>(22076u, arg_0.b.b.b))), !func_2(Struct_2(vec3<i32>(20733i, arg_1.x, arg_1.x), arg_0.b.b, arg_0.b.e.x, 14804i, u_input.d), vec3<bool>(false, arg_0.b.b.d.x, true)).d).b);
    var_0 = _wgslsmith_sub_u32(~arg_2, (53060u << (countOneBits(_wgslsmith_add_u32(arg_3.x, u_input.a.x)) % 32u)) ^ ~_wgslsmith_add_u32(arg_2, 26835u << (1u % 32u)));
    let var_1 = true;
    var var_2 = Struct_1(vec4<u32>(arg_0.b.b.b, 4294967295u, 48963u, 12979u), abs(u_input.d.x), 76779i, select(func_2(Struct_2(firstTrailingBit(vec3<i32>(-2147483647i, arg_1.x, arg_0.b.b.c)), func_2(arg_0.b, arg_0.b.b.d), _wgslsmith_mod_u32(4294967295u, arg_3.x), 56238i, u_input.d), !(!vec3<bool>(true, arg_0.b.b.d.x, var_1))).d, arg_0.b.b.d, !(!(var_1 & var_1))));
    var_2 = arg_0.b.b;
    return select(select(func_2(Struct_2(vec3<i32>(var_2.c, -1i, var_2.c), arg_0.b.b, reverseBits(58241u), -arg_1.x, u_input.d), select(var_2.d, !vec3<bool>(arg_0.b.b.d.x, arg_0.b.b.d.x, false), arg_0.b.b.d)).d.xz, arg_0.b.b.d.zz, arg_0.b.b.d.x), select(func_2(Struct_2(arg_0.a, arg_0.b.b, _wgslsmith_mult_u32(arg_3.x, arg_2), var_2.c, vec2<u32>(89425u, 1u)), var_2.d).d.xz, !select(func_2(Struct_2(arg_1.wxz, arg_0.b.b, arg_3.x, 0i, arg_0.b.b.a.xy), vec3<bool>(var_2.d.x, true, var_2.d.x)).d.yy, var_2.d.xy, vec2<bool>(true, false)), any(vec4<bool>(true, false, true, arg_0.b.b.d.x))), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, -1393f)), 246f)) > _wgslsmith_f_op_f32(floor(1834f))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(536f - 1f)));
    var var_1 = Struct_2(arg_0.a, func_2(arg_0, vec3<bool>(all(!arg_1), false, all(vec2<bool>(false, false)))), 1u, arg_0.a.x, abs(vec2<u32>(4294967295u, ~13225u)));
    let var_2 = select(vec4<i32>(~_wgslsmith_mult_i32(0i, -arg_0.d), ~firstTrailingBit(~(-35048i)), select(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.d, -2147483647i), var_1.b.c >> (4294967295u % 32u)), var_1.b.c & -23177i, all(func_3(Struct_3(vec3<i32>(-1i, arg_0.b.c, 2147483647i), Struct_2(var_1.a, Struct_1(var_1.b.a, 4294967295u, arg_0.a.x, vec3<bool>(true, true, var_1.b.d.x)), arg_0.b.a.x, arg_0.d, vec2<u32>(u_input.a.x, 0u))), vec4<i32>(-18774i, 2147483647i, 14740i, var_1.b.c), arg_0.b.b, arg_0.b.a))), arg_0.b.c), firstTrailingBit(-max(vec4<i32>(1i, var_1.a.x, var_1.a.x, arg_0.a.x), vec4<i32>(2147483647i, -40419i, var_1.a.x, var_1.a.x))) >> (vec4<u32>(4294967295u, u_input.a.x >> (33803u % 32u), _wgslsmith_mult_u32(arg_0.c, u_input.b), _wgslsmith_mult_u32(22009u, 1u)) % vec4<u32>(32u)), vec4<bool>(-1693f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-162f, 355f))), false, any(vec3<bool>(!arg_1.x, arg_1.x, true)), arg_0.b.d.x));
    var var_3 = Struct_2(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(var_2.xww, arg_0.a) >> (~arg_0.b.a.yzy % vec3<u32>(32u)), vec3<i32>(var_1.b.c, arg_0.a.x >> (54212u % 32u), var_2.x)) >> (abs(_wgslsmith_div_vec3_u32(u_input.a, u_input.a)) % vec3<u32>(32u)), arg_0.b, ~u_input.a.x << (arg_0.b.b % 32u), countOneBits(func_2(arg_0, vec3<bool>(true, false, select(false, true, false))).c), arg_0.e & (vec2<u32>(_wgslsmith_add_u32(1u, 36471u), ~0u) >> (func_2(arg_0, !var_1.b.d).a.yw % vec2<u32>(32u))));
    var var_4 = 0i;
    return Struct_1(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_0.b.a.x, var_1.c, var_3.e.x, 0u), vec4<u32>(var_3.e.x, 4294967295u, u_input.c, 36653u), var_3.b.d.x), arg_0.b.a), var_3.b.a, var_1.b.a), _wgslsmith_sub_u32(arg_0.b.a.x, (_wgslsmith_mod_u32(var_3.c, 0u) >> (27524u % 32u)) | ~(~arg_0.c)), countOneBits(arg_0.b.c), vec3<bool>(var_1.b.d.x, !var_3.b.d.x, arg_0.b.d.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(floor(-436f));
    var var_1 = Struct_3(abs(-arg_3.a), arg_3.b);
    var_1 = Struct_3(-select(select(var_1.b.a, var_1.a, vec3<bool>(arg_3.b.b.d.x, false, false)), abs(var_1.b.a) ^ (var_1.b.a << (vec3<u32>(arg_1.a.x, 1u, u_input.c) % vec3<u32>(32u))), !(!arg_1.d)), Struct_2(~arg_3.b.a, arg_1, ~(_wgslsmith_sub_u32(16023u, u_input.c) >> (max(0u, arg_1.a.x) % 32u)), arg_3.a.x, var_1.b.b.a.wz << ((_wgslsmith_add_vec2_u32(vec2<u32>(26164u, arg_1.a.x), vec2<u32>(0u, arg_3.b.e.x)) ^ vec2<u32>(var_1.b.e.x, arg_3.b.b.b)) % vec2<u32>(32u))));
    let var_2 = var_1.b.c;
    var var_3 = (var_1.a.x >> (reverseBits(arg_1.b) % 32u)) ^ ~(~arg_1.c);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(func_4(vec3<bool>(false, false, false), func_1(Struct_2(vec3<i32>(-1i, 11735i, -1i), Struct_1(vec4<u32>(0u, 29713u, u_input.d.x, 1u), 84356u, 0i, vec3<bool>(true, true, true)), u_input.c, 2147483647i, vec2<u32>(120626u, 31168u)), vec3<bool>(true, true, true)), select(true, true, false), Struct_3(vec3<i32>(2147483647i, 0i, -2147483647i), Struct_2(vec3<i32>(21905i, 1i, 1i), Struct_1(vec4<u32>(u_input.c, u_input.d.x, u_input.c, u_input.c), u_input.b, -37952i, vec3<bool>(false, false, true)), 48393u, -2147483647i, vec2<u32>(1u, 18709u)))) & ~vec3<i32>(-22728i, -13342i, -1i), vec3<i32>(1i, ~(~(-1i)), max(~(-2147483647i), 53143i))), vec3<i32>(1i, -29011i, 1i) >> (_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.d.x, 13987u, u_input.d.x)), firstTrailingBit(u_input.a)), (vec3<u32>(0u, u_input.a.x, u_input.d.x) << (vec3<u32>(0u, u_input.a.x, 85183u) % vec3<u32>(32u))) >> (~vec3<u32>(55858u, 1u, u_input.d.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.a.x, 42311u), u_input.c), u_input.a.x, ~_wgslsmith_div_u32(2369u ^ u_input.b, u_input.c), ~u_input.b), _wgslsmith_mod_u32(8848u, firstTrailingBit(9838u) | _wgslsmith_add_u32(0u, u_input.a.x)), var_0, func_1(Struct_2(select(select(vec3<i32>(var_0, 2147483647i, 1i), vec3<i32>(-1i, 31035i, var_0), true), firstTrailingBit(vec3<i32>(1i, -2147483647i, 3560i)), func_3(Struct_3(vec3<i32>(var_0, var_0, -2147483647i), Struct_2(vec3<i32>(0i, var_0, var_0), Struct_1(vec4<u32>(u_input.d.x, 3393u, 47475u, u_input.a.x), u_input.a.x, -2147483647i, vec3<bool>(false, true, true)), 40021u, -2147483647i, vec2<u32>(u_input.c, u_input.d.x))), vec4<i32>(var_0, var_0, -1i, var_0), 0u, vec4<u32>(41919u, 1u, u_input.a.x, u_input.c)).x), Struct_1(~vec4<u32>(113u, 58235u, 1u, u_input.a.x), countOneBits(0u), 1i, select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), u_input.d.x, _wgslsmith_div_i32(~2147483647i, countOneBits(2147483647i)), _wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.d), select(u_input.a.zz, vec2<u32>(0u, u_input.c), true))), select(vec3<bool>(true, true, true), select(func_2(Struct_2(vec3<i32>(-63071i, var_0, 3162i), Struct_1(vec4<u32>(4294967295u, 0u, u_input.d.x, u_input.b), u_input.c, 4893i, vec3<bool>(true, true, false)), 7025u, -2147483647i, vec2<u32>(u_input.b, 21320u)), vec3<bool>(false, false, false)).d, vec3<bool>(true, false, false), vec3<bool>(true, true, false)), false)).d);
    var var_2 = vec4<bool>(true, select(func_3(Struct_3(vec3<i32>(-1i, var_0, -1i) << (u_input.a % vec3<u32>(32u)), Struct_2(vec3<i32>(0i, var_0, var_1.c), var_1, u_input.a.x, var_0, u_input.d)), vec4<i32>(1i, ~var_1.c, -2147483647i, min(-2287i, -2147483647i)), var_1.b, _wgslsmith_sub_vec4_u32(var_1.a, vec4<u32>(u_input.d.x, var_1.a.x, u_input.b, 4294967295u))).x, !all(vec3<bool>(false, var_1.d.x, var_1.d.x)) | false, true), !(!(var_1.d.x & false)) & !var_1.d.x, var_1.d.x);
    var_2 = vec4<bool>(u_input.c != _wgslsmith_clamp_u32(u_input.b, ~_wgslsmith_div_u32(0u, 1u), ~4570u), func_2(Struct_2(select(countOneBits(vec3<i32>(var_0, var_0, var_1.c)), vec3<i32>(-15897i, -1i, var_0), !var_2.xxx), var_1, firstLeadingBit(var_1.b), var_0, var_1.a.wy), vec3<bool>(!all(var_1.d.zz), var_2.x, all(select(vec4<bool>(var_1.d.x, var_2.x, true, var_2.x), vec4<bool>(var_1.d.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_2.x, true))))).d.x, _wgslsmith_mod_u32(43382u, reverseBits(u_input.b ^ u_input.b)) > (0u | ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_1.b, 1u, 33097u))), true);
    let var_3 = Struct_2(vec3<i32>((select(1i, var_0, var_1.d.x) >> (0u % 32u)) & -43601i, var_1.c, min(-var_1.c, var_0) | countOneBits(26322i)), Struct_1(var_1.a, ~var_1.b, var_1.c, select(!var_1.d, !vec3<bool>(false, var_2.x, var_1.d.x), true)), firstTrailingBit(u_input.d.x), _wgslsmith_div_i32(~_wgslsmith_clamp_i32(0i, var_0, 1i) >> (_wgslsmith_dot_vec4_u32(var_1.a, ~var_1.a) % 32u), var_1.c), vec2<u32>(4294967295u, var_1.b));
    let var_4 = !all(vec3<bool>(false, false, any(!var_3.b.d.zy)));
    let var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-683f))));
    var_2 = vec4<bool>(true, _wgslsmith_mod_i32(abs(_wgslsmith_mod_i32(13575i, var_1.c)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-27880i, var_0), var_3.a.xy)) <= (17695i ^ var_0), select(var_4, var_2.x, var_3.b.d.x), false);
    var var_6 = Struct_2(select(var_3.a, var_3.a, select(var_1.d, !vec3<bool>(false, var_2.x, var_2.x), !(!vec3<bool>(var_2.x, var_2.x, true)))), var_3.b, _wgslsmith_add_u32(min(var_3.c, _wgslsmith_mod_u32(4294967295u, ~var_1.b)), _wgslsmith_mult_u32(1u << ((var_1.a.x << (4294967295u % 32u)) % 32u), ~(7917u << (var_1.b % 32u)))), abs(select(_wgslsmith_sub_i32(var_3.d, 1i << (var_3.c % 32u)), _wgslsmith_clamp_i32(-87218i, ~(-2147483647i), _wgslsmith_mod_i32(0i, 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -2172f) >= _wgslsmith_div_f32(var_5, var_5))), ~reverseBits(vec2<u32>(91236u, ~var_3.b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-2147483647i, var_3.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) * _wgslsmith_f_op_f32(f32(-1f) * -1918f))));
}

