struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = Struct_1(~(vec4<u32>(35299u >> (u_input.a % 32u), max(u_input.a, 31825u), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a)) >> (~(~vec4<u32>(1u, u_input.a, 21328u, u_input.a)) % vec4<u32>(32u))), ~((vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, u_input.a)) | vec3<u32>(~u_input.a, select(14581u, 1u, false), u_input.a | u_input.a)));
    var_0 = Struct_1(firstLeadingBit(vec4<u32>(min(0u, 19057u), var_0.b.x, reverseBits(min(0u, 0u)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.b.x, 1u), var_0.b.x))), abs(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, var_0.a.x, u_input.a), vec3<u32>(u_input.a, 0u, 6365u)), var_0.b), var_0.a.xwx >> ((vec3<u32>(44697u, u_input.a, u_input.a) ^ vec3<u32>(var_0.b.x, u_input.a, u_input.a)) % vec3<u32>(32u)))));
    var_0 = Struct_1(firstLeadingBit(var_0.a | vec4<u32>(var_0.b.x, var_0.b.x, ~var_0.b.x, 0u)), select(var_0.a.xzy, max(var_0.b, vec3<u32>(~45039u, _wgslsmith_mult_u32(16130u, 5747u), 25303u)), ~var_0.a.x == ((0u | var_0.a.x) & u_input.a)));
    var var_1 = -vec4<i32>(-69969i, 67867i, arg_1.x << (min(~0u, u_input.a) % 32u), -arg_0);
    let var_2 = Struct_3(Struct_1(~countOneBits(firstTrailingBit(var_0.a)), abs(countOneBits(var_0.b)) << (_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.b, var_0.b), var_0.b << (vec3<u32>(var_0.b.x, 53480u, var_0.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))), any(vec4<bool>(any(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, false)) || all(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true)))), vec3<bool>(true, select(var_0.b.x > u_input.a, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, true))) | true, false), Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(var_0.b.x, 16320u, 4294967295u, u_input.a), vec4<u32>(var_0.b.x, 1u, 1u, u_input.a)), vec4<u32>(22651u, u_input.a, u_input.a, 35708u), var_0.a), var_0.b), Struct_1(vec4<u32>(~var_0.b.x, firstLeadingBit(1u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 0u, var_0.a.x))), max(vec3<u32>(59747u, 29582u, 40990u), var_0.b)), var_0.a, Struct_1(var_0.a, abs(var_0.b))));
    return vec4<u32>(u_input.a, ~56692u, 4294967295u, 0u);
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = Struct_3(Struct_1(select(_wgslsmith_mult_vec4_u32(vec4<u32>(35208u, 0u, arg_1.c.x, arg_1.d.b.x), arg_1.d.a), func_3(-2147483647i, vec4<i32>(-2147483647i, 25464i, -19915i, -1i)) >> (vec4<u32>(4294967295u, 18070u, 4294967295u, 14693u) % vec4<u32>(32u)), vec4<bool>(4294967295u > u_input.a, !arg_0, !arg_0, select(false, true, arg_0))), firstLeadingBit(~_wgslsmith_add_vec3_u32(arg_1.d.a.yyw, arg_1.d.a.xxz))), true, vec3<bool>(true, arg_0 || !(!arg_0), 1000f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1362f + 1621f)))), arg_1);
    var var_1 = var_0.d.a;
    var_0 = Struct_3(Struct_1(_wgslsmith_mod_vec4_u32(~var_0.a.a, ~vec4<u32>(14860u, 26457u, 53076u, 4294967295u)), var_0.a.a.zxy), true, !select(!vec3<bool>(var_0.c.x, arg_0, var_0.c.x), select(var_0.c, select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, var_0.b), var_0.c), select(var_0.c, vec3<bool>(true, true, true), var_0.c)), var_0.c), Struct_2(arg_1.d, Struct_1(arg_1.a.a, abs(arg_1.c.yzx)), abs(var_0.d.a.a), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.x, arg_1.b.a.x, 61568u, var_1.b.x), var_1.a), var_1.a.yyy << (firstTrailingBit(arg_1.d.b) % vec3<u32>(32u)))));
    let var_2 = false;
    var var_3 = true;
    return vec2<u32>(func_3(-14074i, abs(~vec4<i32>(1i, -1i, 1i, -2147483647i))).x ^ min(4294967295u << (_wgslsmith_add_u32(arg_1.b.a.x, arg_1.b.a.x) % 32u), var_1.b.x), select(arg_1.c.x ^ var_1.a.x, 29049u, !(!select(true, var_2, true))));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_4(!vec2<bool>(true && any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), Struct_1(((vec4<u32>(arg_0.x, arg_0.x, u_input.a, 43234u) >> (vec4<u32>(arg_0.x, 3033u, u_input.a, u_input.a) % vec4<u32>(32u))) >> (firstLeadingBit(vec4<u32>(16877u, 49425u, 4294967295u, u_input.a)) % vec4<u32>(32u))) ^ countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 17753u), vec4<u32>(arg_0.x, 17055u, 1u, u_input.a), vec4<u32>(arg_0.x, 20905u, arg_0.x, u_input.a))), vec3<u32>(u_input.a, 1u, u_input.a & _wgslsmith_mod_u32(u_input.a, 1u))));
    let var_1 = 0u;
    let var_2 = select(vec3<bool>(var_0.a.x, !(!var_0.a.x) || false, (!var_0.a.x && true) & !any(vec2<bool>(true, var_0.a.x))), vec3<bool>(var_0.a.x, var_0.a.x, !var_0.a.x), select(select(vec3<bool>(var_0.a.x, !var_0.a.x, !var_0.a.x), vec3<bool>(false, var_1 >= 54016u, false), vec3<bool>(select(true, var_0.a.x, var_0.a.x), false, true)), vec3<bool>(all(!vec4<bool>(true, true, var_0.a.x, false)), true, any(vec3<bool>(var_0.a.x, true, true))), vec3<bool>(all(vec4<bool>(false, true, false, var_0.a.x)), all(vec2<bool>(false, var_0.a.x)), true)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.b.x, arg_0.x, 10396u, 17496u), vec4<u32>(9294u, 90225u, var_0.b.b.x, 9856u)), firstTrailingBit(~vec4<u32>(u_input.a, 62570u, var_0.b.b.x, u_input.a))), ~var_0.b.a.wyx), Struct_1(vec4<u32>(_wgslsmith_mod_u32(0u, 4294967295u), min(98136u, var_0.b.b.x), u_input.a, func_2(false, Struct_2(var_0.b, Struct_1(vec4<u32>(var_1, 0u, 48951u, var_0.b.a.x), var_0.b.a.wyx), vec4<u32>(0u, arg_0.x, 49073u, 8688u), Struct_1(vec4<u32>(1u, arg_0.x, 79498u, var_1), var_0.b.a.zww))).x) & abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, arg_0.x, u_input.a), vec4<u32>(var_1, var_1, 18683u, 61422u))), _wgslsmith_mod_vec3_u32(max(vec3<u32>(arg_0.x, 39936u, arg_0.x), var_0.b.a.xwy), var_0.b.b)), firstTrailingBit(~(~var_0.b.a)), Struct_1(~(~var_0.b.a), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 157162u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.a.x, 1u), vec2<u32>(var_0.b.b.x, 1u))), ~firstLeadingBit(u_input.a), 26901u)));
    return Struct_1(_wgslsmith_mod_vec4_u32(min(var_0.b.a, var_3.d.a), vec4<u32>(reverseBits(_wgslsmith_mod_u32(0u, var_0.b.b.x)), countOneBits(0u), ~_wgslsmith_dot_vec4_u32(var_0.b.a, vec4<u32>(52935u, var_3.a.a.x, var_0.b.a.x, var_0.b.b.x)), ~min(u_input.a, var_0.b.a.x))), select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(52973u, var_3.a.b.x, 36947u, u_input.a), ~var_0.b.a), firstTrailingBit(~40097u), 1u), firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(var_1, var_3.b.a.x, var_3.b.a.x), vec3<u32>(var_1, 4294967295u, 0u) ^ var_3.b.b)), !(!all(vec4<bool>(var_0.a.x, true, var_2.x, true)))));
}

fn func_1() -> u32 {
    var var_0 = Struct_3(func_4((~vec2<u32>(u_input.a, 34384u) ^ abs(vec2<u32>(u_input.a, u_input.a))) << (func_2(true, Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 63977u, u_input.a)), Struct_1(vec4<u32>(4797u, u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)), vec4<u32>(u_input.a, 1u, u_input.a, 0u), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec3<u32>(8375u, u_input.a, u_input.a)))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(502f))))) <= 2575f, !vec3<bool>(true, !any(vec2<bool>(true, false)), !(4294967295u <= u_input.a)), Struct_2(func_4(~(~vec2<u32>(0u, 100197u))), func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(52716u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)))), countOneBits(~(~vec4<u32>(4294967295u, 0u, u_input.a, 15702u))), Struct_1(func_3(-8826i, vec4<i32>(19087i, -5062i, -1i, 21618i)), func_4(~vec2<u32>(u_input.a, 1147u)).a.xyy)));
    var_0 = Struct_3(func_4(~var_0.a.a.yy), all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.b, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.b, var_0.c.x, false, true), var_0.b), any(vec3<bool>(true, true, true)))), vec3<bool>(true, all(var_0.c.zx), !all(vec2<bool>(true, false))), Struct_2(func_4(vec2<u32>(u_input.a, 3060u)), Struct_1(~firstLeadingBit(vec4<u32>(var_0.a.b.x, 1u, var_0.d.a.b.x, 4294967295u)), vec3<u32>(_wgslsmith_mult_u32(u_input.a, var_0.a.a.x), ~var_0.a.a.x, _wgslsmith_mult_u32(u_input.a, 1u))), vec4<u32>(var_0.d.c.x, firstTrailingBit(~0u), func_4(~vec2<u32>(0u, u_input.a)).b.x, 26277u), func_4(vec2<u32>(~u_input.a, _wgslsmith_mod_u32(1u, 66689u)))));
    var_0 = Struct_3(var_0.a, !(any(!var_0.c) != !any(vec4<bool>(var_0.c.x, var_0.b, var_0.b, true))), !(!select(!var_0.c, !vec3<bool>(var_0.b, true, true), !var_0.c)), var_0.d);
    var_0 = Struct_3(Struct_1(vec4<u32>(_wgslsmith_mult_u32(u_input.a, select(u_input.a, u_input.a, false)), var_0.a.b.x, _wgslsmith_div_u32(~var_0.a.a.x, ~0u), ~var_0.a.b.x), var_0.a.b), var_0.c.x, select(vec3<bool>(var_0.b || true, true, all(vec4<bool>(true, var_0.b, true, var_0.b))), var_0.c, var_0.c.x), Struct_2(Struct_1(abs(var_0.a.a), ~var_0.d.d.a.wwx), Struct_1(_wgslsmith_add_vec4_u32(var_0.a.a, _wgslsmith_mult_vec4_u32(var_0.d.a.a, var_0.a.a)), var_0.a.b), var_0.d.b.a, func_4(max(var_0.a.a.yz, func_2(true, Struct_2(Struct_1(var_0.d.b.a, vec3<u32>(46698u, var_0.d.a.b.x, var_0.a.b.x)), Struct_1(vec4<u32>(2051u, 9713u, 0u, u_input.a), vec3<u32>(4294967295u, 62571u, u_input.a)), var_0.a.a, Struct_1(var_0.a.a, var_0.a.a.wzx)))))));
    var_0 = Struct_3(func_4(vec2<u32>(u_input.a, max(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b.x, var_0.d.c.x, var_0.a.a.x, u_input.a), var_0.d.b.a)))), any(select(vec4<bool>(false, any(var_0.c.xx), var_0.b, true), !vec4<bool>(true, var_0.b, var_0.c.x, var_0.b), vec4<bool>(true, var_0.b, !var_0.b, var_0.c.x))), var_0.c, var_0.d);
    return _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(~u_input.a, func_3(-16095i, vec4<i32>(8527i, 2147483647i, -11541i, -1i)).x)), vec2<u32>(_wgslsmith_sub_u32(u_input.a >> (var_0.d.a.a.x % 32u), ~max(0u, 50425u)), _wgslsmith_mult_u32(~(~51001u), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-_wgslsmith_add_i32(firstTrailingBit(-27279i) << (func_1() % 32u), -18295i), 0i, abs(7855i), ~(~(~(~6367i))));
    let var_1 = Struct_2(Struct_1(vec4<u32>(0u, 18844u, 0u, 61704u >> (~u_input.a % 32u)), countOneBits(vec3<u32>(u_input.a, u_input.a, 1u) & firstLeadingBit(vec3<u32>(u_input.a, 88335u, u_input.a)))), func_4(firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 46511u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, 0u))))), abs(~vec4<u32>(_wgslsmith_mod_u32(48513u, 1u), reverseBits(4294967295u), u_input.a | 39163u, 4294967295u)), Struct_1(firstTrailingBit(~reverseBits(vec4<u32>(u_input.a, u_input.a, 0u, 20475u))), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), u_input.a ^ ~0u, u_input.a)));
    let var_2 = Struct_1(~select(countOneBits(~vec4<u32>(26882u, 42128u, 48427u, 4294967295u)), vec4<u32>(u_input.a | u_input.a, 0u, 1u, 0u >> (u_input.a % 32u)), true), firstTrailingBit(var_1.d.a.wwx));
    var_0 = vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, ~(~32248i)), reverseBits(0i | var_0.x), 2147483647i, _wgslsmith_mult_i32(var_0.x, countOneBits(_wgslsmith_clamp_i32(-var_0.x, -2147483647i, 1i))));
    var var_3 = Struct_4(select(vec2<bool>(true, !any(vec3<bool>(true, false, false))), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), true && !any(vec3<bool>(true, true, false))), func_4(var_1.a.b.zx >> (var_2.b.yx % vec2<u32>(32u))));
    var var_4 = Struct_4(vec2<bool>(var_3.a.x, all(vec2<bool>(false, all(vec4<bool>(false, false, var_3.a.x, false))))), Struct_1(~_wgslsmith_sub_vec4_u32(var_2.a, ~vec4<u32>(u_input.a, 42635u, 1u, var_1.d.b.x)), ~(~vec3<u32>(u_input.a, var_3.b.b.x, var_1.b.a.x))));
    let var_5 = Struct_4(vec2<bool>(true, all(vec2<bool>(false, var_3.a.x))), var_1.a);
    var var_6 = all(vec3<bool>(true | var_5.a.x, true, true)) || any(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(var_3.a.x, false, false, false), var_4.a.x), vec4<bool>(false, var_5.a.x, true, false), !vec4<bool>(var_5.a.x, false, var_3.a.x, false)));
    var var_7 = ~(~(~18136u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1089f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(628f, -1243f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f))), _wgslsmith_f_op_f32(ceil(-1499f)), _wgslsmith_f_op_f32(f32(-1f) * -204f)));
}

