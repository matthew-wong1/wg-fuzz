struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = vec2<i32>(-1i, 29225i);
    let var_1 = abs(firstLeadingBit(arg_1.a.yzy));
    let var_2 = Struct_2(~_wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(arg_0.a, vec4<u32>(34423u, 1u, var_1.x, var_1.x))), select(arg_1.a, ~vec4<u32>(var_1.x, arg_0.a.x, arg_1.c.a, u_input.c), !vec4<bool>(true, arg_1.b, true, false))), false, arg_1.c);
    let var_3 = arg_1.a.xz;
    let var_4 = -1669f;
    return all(select(vec4<bool>(arg_0.b, (arg_2 != -282f) & !arg_1.b, !all(vec2<bool>(var_2.b, var_2.b)), -1i != _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.b.x, u_input.d, 43015i, 2147483647i), vec4<i32>(-1622i, -1i, 2147483647i, -8400i))), vec4<bool>(any(vec3<bool>(arg_1.b, var_2.b, arg_1.b)), abs(u_input.c) > ~13373u, var_2.b, var_2.b), true));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    let var_0 = arg_1.a;
    let var_1 = _wgslsmith_f_op_f32(round(-398f));
    var var_2 = u_input.e;
    let var_3 = vec4<bool>(!(true | arg_0) && true, arg_0, !(select(u_input.d <= -1i, select(false, true, true), true) && true), arg_0);
    var var_4 = select(~(~(~min(vec4<u32>(32518u, 34350u, 17155u, u_input.c), vec4<u32>(arg_1.a, var_0, var_0, arg_1.a)))), vec4<u32>(u_input.a.x | u_input.a.x, _wgslsmith_add_u32(var_0, var_0), abs(abs(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_1.a, u_input.a.x, 118u)))), u_input.a.x), vec4<bool>(arg_0, true, all(!vec4<bool>(arg_0, true, true, arg_0)), (_wgslsmith_f_op_f32(round(var_1)) <= _wgslsmith_f_op_f32(-143f + -1340f)) != arg_2));
    return select(select(vec2<bool>(arg_0, arg_2), select(var_3.zx, select(select(var_3.xy, vec2<bool>(var_3.x, var_3.x), true), vec2<bool>(true, var_3.x), arg_2), var_3.x), any(vec3<bool>(var_3.x, arg_0, var_3.x)) & arg_2), vec2<bool>(true, all(!var_3.wz)), vec2<bool>(arg_0, !(!arg_2) | !(arg_0 && var_3.x)));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> bool {
    var var_0 = vec2<bool>(false, any(select(vec3<bool>(u_input.d < -6789i, true, arg_0 == arg_0), !select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, false), false), arg_0)));
    var_0 = func_4(all(vec4<bool>(var_0.x, arg_0, arg_0, true)), Struct_1(~countOneBits(~3926u), select(countOneBits(-vec3<i32>(arg_1.x, 0i, arg_1.x)), firstLeadingBit(~vec3<i32>(-44136i, u_input.d, u_input.d)), true), abs(vec3<i32>(arg_1.x, -26002i, 10381i) >> (~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)))), all(!vec3<bool>(false, var_0.x, false)) & func_3(Struct_2(min(vec4<u32>(0u, 4294967295u, u_input.e, u_input.b.x), vec4<u32>(0u, 0u, 0u, u_input.b.x)), any(vec3<bool>(var_0.x, false, arg_0)), Struct_1(u_input.e, vec3<i32>(u_input.d, 47842i, u_input.d), vec3<i32>(u_input.d, arg_1.x, -13716i))), Struct_2(firstLeadingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)), true, Struct_1(4294967295u, vec3<i32>(11625i, u_input.d, -52674i), vec3<i32>(5287i, u_input.d, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-743f - 2049f)), firstTrailingBit(u_input.d) & u_input.d));
    let var_1 = Struct_1(select(u_input.e, 4294967295u, true), vec3<i32>(-1i, _wgslsmith_mod_i32(~firstLeadingBit(arg_1.x), _wgslsmith_mod_i32(u_input.d, _wgslsmith_mod_i32(arg_1.x, -27964i))), _wgslsmith_dot_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(18774i, 14698i, 52385i), vec3<i32>(2147483647i, -37668i, -50492i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-31396i, u_input.d, 1687i), vec3<i32>(u_input.d, -10257i, -10124i), vec3<i32>(2147483647i, 962i, -43721i))), select(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.d, 8734i), vec3<i32>(arg_1.x, u_input.d, arg_1.x)), firstTrailingBit(vec3<i32>(-57880i, 1i, arg_1.x)), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, var_0.x, var_0.x), false)))), select(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(0i, arg_1.x), -2147483647i), -12522i << (u_input.a.x % 32u), _wgslsmith_sub_i32(u_input.d, arg_1.x)), vec3<i32>(-1i, _wgslsmith_sub_i32(41736i, _wgslsmith_div_i32(-1273i, arg_1.x)), countOneBits(u_input.d)), any(select(vec3<bool>(true, false, true), vec3<bool>(arg_0, var_0.x, false), true)) || !var_0.x));
    var_0 = vec2<bool>(true, !(!var_0.x));
    let var_2 = u_input.d;
    return !func_4(func_3(Struct_2(~vec4<u32>(var_1.a, 51321u, u_input.b.x, 27642u), arg_0, var_1), Struct_2(vec4<u32>(u_input.b.x, u_input.e, 1u, var_1.a), true, Struct_1(var_1.a, var_1.b, vec3<i32>(1815i, var_2, -1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, u_input.d, var_1.c.x, -98782i), vec4<i32>(0i, -1i, arg_1.x, u_input.d))), Struct_1(~1u, var_1.b, abs(vec3<i32>(u_input.d, var_1.b.x, u_input.d))), arg_0 || var_0.x).x;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(firstLeadingBit(arg_1.a), all(!(!(!vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b)))), Struct_1(u_input.a.x, -(vec3<i32>(-1148i, u_input.d, arg_1.c.c.x) >> (vec3<u32>(7461u, arg_1.c.a, 56223u) % vec3<u32>(32u))), ~vec3<i32>(7437i, ~arg_1.c.b.x, 1i)));
    let var_1 = select(!func_4(all(!vec3<bool>(arg_1.b, arg_1.b, var_0.b)), Struct_1(1u, arg_1.c.b, var_0.c.c), false), !(!(!select(vec2<bool>(false, false), vec2<bool>(arg_1.b, true), true))), func_4(all(!select(vec2<bool>(var_0.b, true), vec2<bool>(arg_1.b, true), arg_1.b)), Struct_1(u_input.a.x, arg_1.c.b << (~vec3<u32>(53276u, var_0.c.a, 4294967295u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(33331i, 42393i, var_0.c.c.x), arg_1.c.c), vec3<i32>(0i, u_input.d, arg_1.c.c.x))), false));
    let var_2 = 22359u;
    var var_3 = Struct_2(arg_1.a, var_1.x, arg_1.c);
    var_0 = arg_1;
    return vec3<i32>(2147483647i, 25070i, -28396i | u_input.d);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_5(0u, Struct_2(vec4<u32>(u_input.a.x, 4294967295u, _wgslsmith_mod_u32(4294967295u >> (u_input.b.x % 32u), max(u_input.e, 0u)), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 18597u, 4294967295u, 37299u), vec4<u32>(410u, 52597u, 6077u, u_input.c)))), func_2(true, abs(vec2<i32>(u_input.d, u_input.d))), Struct_1(max(firstTrailingBit(u_input.e), _wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, 23254u)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 23640i, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(-2147483647i, u_input.d, u_input.d)), abs(firstTrailingBit(vec3<i32>(37051i, 11119i, u_input.d))))));
    var var_1 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, ~u_input.b.x ^ ~u_input.c, u_input.a.x, firstTrailingBit(abs(12913u))), (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 60251u, 4294967295u, u_input.a.x), vec4<u32>(0u, 58155u, 4294967295u, 0u), vec4<u32>(u_input.c, u_input.a.x, 1u, 20514u)) << (~vec4<u32>(29273u, u_input.e, 18154u, u_input.b.x) % vec4<u32>(32u))) & firstTrailingBit(vec4<u32>(4294967295u, 2267u, 1u, u_input.c))), true, Struct_1(78969u, vec3<i32>(~30404i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_0, vec3<i32>(-54035i, -21328i, u_input.d)), abs(vec3<i32>(-38911i, 1i, u_input.d))), var_0.x), func_5(~4623u, Struct_2(vec4<u32>(u_input.e, 56979u, 1u, u_input.c), true, Struct_1(36557u, vec3<i32>(var_0.x, -1i, 0i), var_0))) & var_0));
    var var_2 = Struct_2(firstTrailingBit(~vec4<u32>(var_1.c.a, 10142u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.e, var_1.a.x, 8337u), var_1.a), 33270u)), !(!(all(vec3<bool>(true, true, false)) | all(vec4<bool>(true, true, false, true)))), var_1.c);
    var var_3 = ~(~(_wgslsmith_add_u32(~var_1.c.a, 0u | var_1.a.x) << (~_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u)));
    var var_4 = Struct_1(max(4294967295u, select(~var_1.c.a, 1u, -60981i >= ~var_1.c.b.x)), var_1.c.c, vec3<i32>(-1i) * -vec3<i32>(u_input.d, -2147483647i, 47312i));
    return !vec3<bool>(all(!select(vec4<bool>(false, false, false, false), vec4<bool>(var_2.b, false, false, false), vec4<bool>(var_2.b, var_1.b, var_1.b, true))), var_1.b, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = select(vec2<bool>(!any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1291f, 223f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -1085f)) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1118f + 1318f)))), vec2<bool>(false, all(!func_1())), false);
    var_0 = 67432u;
    let var_2 = Struct_1(4294967295u, (vec3<i32>(1i, ~(-5123i), 48160i & u_input.d) ^ ~(-vec3<i32>(u_input.d, 1851i, -41255i))) | vec3<i32>(15839i, min(32885i, ~u_input.d), max(~(-7750i), ~u_input.d)), reverseBits(~firstLeadingBit(-vec3<i32>(u_input.d, u_input.d, 0i))));
    let var_3 = Struct_1(reverseBits(u_input.c & ~u_input.c) & ~(~(~var_2.a)), min(var_2.c, _wgslsmith_mult_vec3_i32(var_2.c, var_2.b) & -vec3<i32>(u_input.d, 11560i, u_input.d)) ^ ~var_2.c, var_2.c);
    var_0 = ~(0u >> (~((1950u >> (1u % 32u)) << (_wgslsmith_sub_u32(var_2.a, 4294967295u) % 32u)) % 32u));
    let var_4 = Struct_2(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 14631u, 14384u, var_2.a), vec4<u32>(1u, var_3.a, u_input.b.x, var_3.a)), ~vec4<u32>(1u, 71848u, 6910u, var_3.a), _wgslsmith_div_vec4_u32(vec4<u32>(var_3.a, var_2.a, 4294967295u, var_3.a), vec4<u32>(66572u, var_2.a, 0u, var_2.a))), ~vec4<u32>(var_2.a, var_3.a, 0u, 46160u)), true, Struct_1(_wgslsmith_div_u32(min(countOneBits(var_3.a), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), 65805u), vec3<i32>(_wgslsmith_sub_i32(-25322i, u_input.d >> (var_3.a % 32u)), -var_3.b.x, max(6795i | var_3.c.x, -19979i)), _wgslsmith_div_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b.x, var_3.c.x, var_2.b.x), vec3<i32>(var_2.c.x, var_3.c.x, var_3.b.x)), ~vec3<i32>(-1133i, -1i, 56488i), select(vec3<bool>(false, true, var_1.x), vec3<bool>(false, true, var_1.x), vec3<bool>(true, var_1.x, false))), var_3.c)));
    var var_5 = !var_1;
    var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(2211u, u_input.b.x), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, var_3.c.x, -2147483647i), var_2.b) << (47075u % 32u), -3590i, 1i, ~func_5(0u, var_4).x), _wgslsmith_add_u32(29825u, ~var_2.a));
}

