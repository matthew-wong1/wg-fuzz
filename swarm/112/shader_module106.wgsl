struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<u32> {
    let var_0 = !any(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))));
    return ~(~vec3<u32>(~abs(u_input.a.x), 2739u, _wgslsmith_div_u32(~2355u, u_input.b)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> i32 {
    global0 = countOneBits(~u_input.a.x);
    var var_0 = Struct_1(_wgslsmith_clamp_u32(u_input.b, 37933u, 4294967295u), vec2<i32>(_wgslsmith_clamp_i32(1i, arg_1.x >> (u_input.b % 32u), -_wgslsmith_mod_i32(u_input.c.x, 0i)), u_input.c.x), 1i, (countOneBits(arg_1 & arg_1) >> (select(~vec3<u32>(u_input.b, 0u, u_input.b), ~u_input.a.ywz, true) % vec3<u32>(32u))) >> (func_3() % vec3<u32>(32u)));
    var var_1 = -644f;
    let var_2 = Struct_1(min(func_3().x, 4294967295u), ~vec2<i32>(u_input.c.x, -var_0.b.x | (arg_1.x & 2147483647i)), ~(-14050i), _wgslsmith_mod_vec3_i32(-firstLeadingBit(select(vec3<i32>(-1i, 20075i, var_0.c), var_0.d, vec3<bool>(arg_0.x, false, arg_0.x))), _wgslsmith_div_vec3_i32(-arg_1, arg_1)));
    let var_3 = -1622f;
    return reverseBits(16234i) | ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_2.b.x, arg_1.x, -22367i, arg_1.x)), vec4<i32>(u_input.c.x, u_input.c.x, var_0.d.x, -1i) & vec4<i32>(u_input.c.x, -77547i, 0i, 16501i)), 1i, 47692i >> (firstLeadingBit(18074u) % 32u));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = false;
    var var_1 = Struct_2(Struct_1(48657u, vec2<i32>(func_2(vec2<bool>(true, true), vec3<i32>(arg_0, 1i, -58069i)), abs(~1i)), -34172i, select(min(select(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), vec3<i32>(58109i, -1i, arg_0), vec3<bool>(false, false, true)), vec3<i32>(0i, 3037i, arg_0) ^ vec3<i32>(arg_0, -1i, u_input.c.x)), -vec3<i32>(arg_0, u_input.c.x, arg_0), vec3<bool>(true, true, false))), Struct_1(firstLeadingBit(abs(arg_1.x)), vec2<i32>(1i, _wgslsmith_mod_i32(u_input.c.x, func_2(vec2<bool>(true, false), vec3<i32>(-15985i, arg_0, -19034i)))), _wgslsmith_mod_i32(~arg_0, -select(-1i, -5437i, true)), ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(-10897i, -2147483647i, -1i), vec3<i32>(-2147483647i, arg_0, u_input.c.x), vec3<i32>(arg_0, -20541i, 3509i)) & (vec3<i32>(u_input.c.x, 1i, -7541i) ^ vec3<i32>(arg_0, u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-521f, -314f, 1068f) - vec3<f32>(2363f, -1000f, -926f))))))), all(vec4<bool>(_wgslsmith_clamp_i32(u_input.c.x, arg_0, u_input.c.x) >= (u_input.c.x >> (u_input.a.x % 32u)), select(false, arg_1.x != arg_1.x, true), true, true && all(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1733f)))))));
    let var_2 = Struct_2(Struct_1(67413u, var_1.a.b, firstTrailingBit(var_1.b.c), vec3<i32>(max(-1i, min(u_input.c.x, -1i)), 1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, 220i), reverseBits(-16091i), _wgslsmith_sub_i32(var_1.a.b.x, -1i)))), var_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1.c))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.e - var_1.e))), _wgslsmith_f_op_f32(sign(-200f)), _wgslsmith_f_op_f32(var_1.e + var_1.e))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-623f + _wgslsmith_f_op_f32(select(208f, -591f, true))) + 1f)));
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(28428u, _wgslsmith_mult_u32(84573u, abs(17006u))), u_input.a.yz);
    var var_3 = !var_1.d;
    return var_2;
}

fn func_4(arg_0: Struct_2) -> bool {
    global0 = ~(~113004u | _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(77426u, 0u, 20232u) ^ vec3<u32>(76080u, 41692u, arg_0.a.a), vec3<u32>(u_input.a.x, 80044u, u_input.b)), ~_wgslsmith_div_u32(arg_0.b.a, 41473u), u_input.b));
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_0.c.xx * _wgslsmith_f_op_vec2_f32(-arg_0.c.xx));
    var var_1 = vec4<f32>(-620f, _wgslsmith_f_op_f32(var_0.x + arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1151f)) - _wgslsmith_f_op_f32(-1338f - _wgslsmith_f_op_f32(trunc(var_0.x))))));
    let var_2 = vec2<bool>(any(select(select(vec2<bool>(arg_0.d, true), vec2<bool>(true, true), !arg_0.d), vec2<bool>(arg_0.d | true, all(vec2<bool>(false, arg_0.d))), vec2<bool>(true, any(vec2<bool>(true, false))))), all(select(vec2<bool>(!arg_0.d, true), select(vec2<bool>(arg_0.d, true), vec2<bool>(true, true), var_0.x != arg_0.e), select(select(vec2<bool>(arg_0.d, true), vec2<bool>(false, true), true), !vec2<bool>(arg_0.d, true), any(vec3<bool>(arg_0.d, false, arg_0.d))))));
    var var_3 = -742f;
    return true;
}

fn func_5(arg_0: bool) -> Struct_1 {
    let var_0 = func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, _wgslsmith_add_i32(1i, -2387i)), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 33888i, u_input.c.x, 0i), vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(2147483647i, 2147483647i, u_input.c.x, -2147483647i))), firstLeadingBit(max(vec4<u32>(~24828u, 0u, u_input.b, _wgslsmith_sub_u32(4294967295u, 798u)), abs(reverseBits(vec4<u32>(4294967295u, 37311u, u_input.a.x, 4294967295u)))))).a;
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_sub_u32(countOneBits(75709u), func_3().x << (var_0.a % 32u));
    var var_3 = _wgslsmith_clamp_i32(var_0.c, firstLeadingBit(abs(u_input.c.x)), u_input.c.x) == -_wgslsmith_mult_i32(firstLeadingBit(var_0.b.x), var_0.b.x);
    let var_4 = vec3<u32>(~(var_0.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 0u) >> (vec3<u32>(var_2, var_0.a, 34603u) % vec3<u32>(32u)), firstTrailingBit(u_input.a.wxy))), ~7071u, _wgslsmith_clamp_u32(abs(func_3().x), 4294967295u, var_2));
    return var_0;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-808f, _wgslsmith_f_op_f32(max(397f, 1000f)))), _wgslsmith_f_op_vec2_f32(func_1(~u_input.c.x & ~u_input.c.x, vec4<u32>(countOneBits(0u), reverseBits(0u), ~1u, ~1u)).c.yy * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-858f, -1317f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1454f, 823f) + vec2<f32>(-108f, 300f)))))));
    global0 = arg_0.a;
    var var_1 = 0u;
    global0 = ~17880u;
    return Struct_1(11583u, ~vec2<i32>(-19209i, _wgslsmith_mod_i32(-62080i, ~u_input.c.x)), (_wgslsmith_div_i32(-u_input.c.x, arg_0.b.x) | (_wgslsmith_dot_vec2_i32(arg_0.b, u_input.c) >> (36589u % 32u))) << (0u % 32u), ~(_wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, u_input.c.x, -1i), ~arg_0.d) >> (_wgslsmith_mod_vec3_u32(~u_input.a.wzw, u_input.a.zzx) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6(func_5(func_4(func_1(u_input.c.x, u_input.a)))), Struct_1(~u_input.b >> (~func_5(false).a % 32u), ~(-vec2<i32>(-51993i, -37700i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), u_input.c), -40536i, abs(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -5403i, -2147483647i), vec3<i32>(2147483647i, 2147483647i, 11042i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(126f, 611f, 368f)))) * _wgslsmith_f_op_vec3_f32(func_1(2147483647i, u_input.a).c * vec3<f32>(1080f, 1000f, -218f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1430f, 1000f, 2743f))), select(true, true, true), 1321f);
    let var_1 = 1u;
    let var_2 = func_1(_wgslsmith_div_i32(_wgslsmith_sub_i32(func_1(u_input.c.x, select(vec4<u32>(var_0.a.a, 24063u, 4294967295u, 4294967295u), u_input.a, vec4<bool>(false, false, true, true))).b.b.x, -2147483647i), _wgslsmith_mult_i32(var_0.b.d.x, func_5(false).b.x)), abs(_wgslsmith_mult_vec4_u32(min(u_input.a, vec4<u32>(102073u, var_0.b.a, 0u, 12563u)), ~u_input.a)) >> (vec4<u32>(_wgslsmith_mult_u32(1u, 4294967295u), func_6(Struct_1(4294967295u, vec2<i32>(var_0.b.b.x, 1i), 1i, var_0.b.d)).a, 70487u, ~_wgslsmith_add_u32(1u, 0u)) % vec4<u32>(32u))).a;
    var var_3 = func_1(0i, ~vec4<u32>(12354u, 11723u | var_0.a.a, 76569u, max(u_input.b, 12715u)) & vec4<u32>(~(~26463u), func_6(var_0.a).a | 76945u, ~func_1(var_0.b.c, vec4<u32>(var_1, 0u, var_1, var_0.a.a)).b.a, ~(1u | var_2.a)));
    var var_4 = func_1(reverseBits(_wgslsmith_sub_i32(u_input.c.x ^ var_2.c, _wgslsmith_clamp_i32(var_0.a.b.x, 1i, u_input.c.x))) ^ _wgslsmith_mult_i32(-select(var_2.c, 2147483647i, var_3.d), -8776i), (u_input.a >> (~(u_input.a | u_input.a) % vec4<u32>(32u))) >> (~vec4<u32>(var_0.b.a, abs(56670u), var_2.a | 1u, reverseBits(var_2.a)) % vec4<u32>(32u)));
    global0 = var_2.a;
    var_4 = Struct_2(Struct_1(func_3().x, abs(vec2<i32>(var_2.d.x, u_input.c.x) >> (u_input.a.wx % vec2<u32>(32u))) << (~firstLeadingBit(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), reverseBits(u_input.c.x) | 25697i, _wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(var_3.b.d, var_0.b.d), vec3<i32>(_wgslsmith_sub_i32(var_4.b.d.x, 1i), _wgslsmith_mod_i32(26731i, 33109i), func_2(vec2<bool>(false, false), vec3<i32>(0i, -11982i, var_4.a.d.x))))), Struct_1(min(_wgslsmith_add_u32(var_0.a.a, 1969u), var_2.a), select(vec2<i32>(u_input.c.x, 0i), vec2<i32>(-28804i, var_0.b.c), !vec2<bool>(var_3.d, var_4.d)) >> (u_input.a.ww % vec2<u32>(32u)), 1i | -(var_3.b.b.x >> (0u % 32u)), abs(func_6(func_6(Struct_1(var_3.b.a, var_3.a.d.yx, 1815i, var_2.d))).d)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(var_3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(464f, 970f, var_3.e)))))))), var_3.d, var_0.e);
    let var_5 = Struct_1(_wgslsmith_div_u32(~_wgslsmith_mod_u32(u_input.b, var_3.b.a) >> (~2108u % 32u), u_input.b), vec2<i32>(13253i, ~(-3338i)), 0i, -vec3<i32>(-u_input.c.x, reverseBits(1i), _wgslsmith_mod_i32(~(-2147483647i), ~(-50931i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~firstTrailingBit(var_2.a))));
}

