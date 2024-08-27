struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    var var_0 = select(vec4<bool>(true, true, true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), all(vec2<bool>(false, true))))), vec4<bool>(true, true, false, false), !(true == !all(vec4<bool>(true, true, false, false))));
    var_0 = select(vec4<bool>(false, !(~u_input.b < 1u), true, true), vec4<bool>(!all(select(var_0.xw, var_0.xy, vec2<bool>(true, true))), false, any(select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true), var_0.x), vec4<bool>(true, true, false, var_0.x), true)), !(!(!var_0.x))), !vec4<bool>(false, var_0.x, var_0.x, var_0.x | var_0.x));
    let var_1 = select(!vec2<bool>(!(true & var_0.x), select(true, var_0.x, true) & true), vec2<bool>((u_input.b >= _wgslsmith_clamp_u32(u_input.b, 4294967295u, 21288u)) & !(!var_0.x), var_0.x), ~((0u << (0u % 32u)) ^ ~u_input.b) <= _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(u_input.b, 4294967295u, 15747u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(0u, u_input.b, u_input.b)) ^ ~vec3<u32>(55386u, u_input.b, u_input.b)));
    var var_2 = Struct_2(4294967295u, countOneBits(vec4<i32>(u_input.a, 0i >> (u_input.b % 32u), -2147483647i, countOneBits(2147483647i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1579f, -132f)), Struct_1(max(-45752i | _wgslsmith_add_i32(-2147483647i, u_input.a), min(_wgslsmith_mult_i32(1i, u_input.a), max(1i, u_input.a))), select(!var_0.www, !(!vec3<bool>(var_1.x, false, false)), !(var_1.x & var_0.x)), vec2<bool>(!var_1.x, var_1.x)));
    let var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_2.a, u_input.b, 4294967295u, 4294967295u) & (vec4<u32>(var_2.a, 0u, 72649u, 4294967295u) ^ vec4<u32>(u_input.b, 45822u, 9562u, u_input.b)), (vec4<u32>(1u, u_input.b, 5156u, 4294967295u) << (vec4<u32>(u_input.b, u_input.b, 77551u, 4294967295u) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 84425u, 4294967295u, var_2.a), vec4<u32>(u_input.b, u_input.b, u_input.b, var_2.a)) % vec4<u32>(32u)), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_0.x), vec4<bool>(var_2.d.c.x, false, true, false), var_2.d.c.x)), _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a, 112054u, 0u, u_input.b), vec4<u32>(u_input.b, 20667u, 4774u, 18458u)), abs(vec4<u32>(u_input.b, u_input.b, var_2.a, u_input.b) | vec4<u32>(var_2.a, u_input.b, 9271u, 14887u)))), _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a, 28610u, 52569u, 35642u), ~vec4<u32>(1u, u_input.b, u_input.b, u_input.b))), reverseBits(vec4<u32>(u_input.b, var_2.a, abs(var_2.a), 1u))));
    return ~vec4<u32>(32411u, ~u_input.b | u_input.b, _wgslsmith_mod_u32(49033u, max(99525u, 6715u)), 31537u) & vec4<u32>(abs(_wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(var_3, 34891u)), _wgslsmith_mod_u32(1u, 4708u))), ~u_input.b, var_3, ~14944u);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_4(Struct_2(~(~_wgslsmith_div_u32(4294967295u, u_input.b)), _wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, arg_1.x, u_input.a), arg_1, arg_0), -arg_1) >> (min(vec4<u32>(52209u, u_input.b, u_input.b, u_input.b) ^ vec4<u32>(19723u, u_input.b, u_input.b, u_input.b), func_3()) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1148f, -347f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1451f, 435f)))), Struct_1(u_input.a, vec3<bool>(all(vec2<bool>(true, arg_0)), select(arg_0, arg_0, false), 1u > u_input.b), !(!vec2<bool>(arg_0, false)))));
    var var_1 = Struct_2(_wgslsmith_add_u32(~4294967295u, ~(~(~0u))), var_0.a.b, _wgslsmith_f_op_vec2_f32(-var_0.a.c), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 35151i), vec2<i32>(arg_1.x, var_0.a.b.x)), var_0.a.d.a, var_0.a.b.x), var_0.a.d.b, !var_0.a.d.c));
    var_1 = Struct_2(_wgslsmith_add_u32(countOneBits(firstLeadingBit(21072u << (var_0.a.a % 32u))), _wgslsmith_mod_u32(7304u, _wgslsmith_mult_u32(30013u, var_0.a.a))), var_1.b, var_0.a.c, Struct_1(select(i32(-1i) * -31211i, 2147483647i, true), vec3<bool>(false, true, !var_1.d.b.x), select(!(!var_0.a.d.b.yx), vec2<bool>(any(vec4<bool>(var_1.d.b.x, var_0.a.d.c.x, false, var_0.a.d.b.x)), var_1.d.c.x), all(select(vec4<bool>(false, true, var_0.a.d.b.x, false), vec4<bool>(var_1.d.c.x, true, var_1.d.c.x, var_0.a.d.c.x), vec4<bool>(false, true, var_0.a.d.b.x, arg_0))))));
    var_1 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4500u, var_0.a.a), 0u, 1u), ~vec4<i32>(u_input.a, var_1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d.a, var_1.d.a, -69522i), var_0.a.b.wwx), _wgslsmith_mult_i32(-7147i, -9242i)), var_0.a.c, var_0.a.d);
    var var_2 = var_0;
    return Struct_2(var_2.a.a, -vec4<i32>(var_2.a.d.a, var_1.b.x ^ 22887i, u_input.a, countOneBits(-15145i)) ^ var_2.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-705f - var_2.a.c.x), _wgslsmith_f_op_f32(round(var_0.a.c.x))), _wgslsmith_div_vec2_f32(var_1.c, _wgslsmith_f_op_vec2_f32(-var_0.a.c))))), var_0.a.d);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = false;
    let var_1 = 0i;
    var var_2 = Struct_3(arg_0.yyy, func_2(var_0, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, u_input.a, arg_1.x), vec3<i32>(-1i, -1858i, -25815i)), u_input.a ^ u_input.a), -_wgslsmith_sub_i32(2147483647i, var_1), ~(~2147483647i), arg_1.x & _wgslsmith_div_i32(-20286i, 2147483647i))), Struct_1(-_wgslsmith_mod_i32(u_input.a, arg_1.x & -1i), !func_2(false, -vec4<i32>(arg_1.x, u_input.a, u_input.a, 0i)).d.b, !vec2<bool>(var_0, false)));
    var var_3 = select(var_2.b.b.zzz, var_2.b.b.wxz, !(!any(vec4<bool>(var_2.b.d.b.x, false, var_0, var_2.b.d.b.x))));
    let var_4 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1192f * var_2.a.x), 968f)), var_2.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * arg_0.x)), func_2(!all(vec3<bool>(true, true, true)), func_2(any(!vec4<bool>(var_0, true, var_2.b.d.b.x, true)), vec4<i32>(var_2.c.a, _wgslsmith_sub_i32(var_2.c.a, var_1), reverseBits(-1i), var_2.b.b.x >> (20669u % 32u))).b), func_2(!(var_2.c.c.x & !var_0), ~var_2.b.b >> (vec4<u32>(_wgslsmith_add_u32(var_2.b.a, var_2.b.a), 4294967295u, ~67524u, u_input.b << (4294967295u % 32u)) % vec4<u32>(32u))).d);
    return var_4.c.b.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_dot_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)), reverseBits(-vec4<i32>(-21519i, -2637i, u_input.a, -63578i)));
    let var_1 = all(select(vec2<bool>(false, true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), func_1(vec4<f32>(-255f, 1000f, -732f, -1785f), vec2<i32>(var_0, var_0)), func_1(vec4<f32>(-382f, -2524f, 996f, 214f), vec2<i32>(-10795i, u_input.a)).x), vec2<bool>(true, true), func_2(4294967295u > u_input.b, vec4<i32>(-1i, 20898i, u_input.a, 0i)).d.c), vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1965f - 509f), 898f)), _wgslsmith_f_op_f32(max(-390f, -189f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1270f)))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(1165f, -1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-127f, 190f, 611f, -1000f) - vec4<f32>(-2405f, -1463f, 173f, -954f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1705f, 452f, 905f, 701f))), var_1)))));
    var var_3 = !(!vec3<bool>(var_1 == !var_1, true, !any(vec2<bool>(false, var_1))));
    var var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(~31883u), 1u, ~(u_input.b & 1u), ~u_input.b | u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(32141u, countOneBits(u_input.b), ~u_input.b, u_input.b), vec4<u32>(_wgslsmith_mod_u32(72395u, 4294967295u), u_input.b, 0u, abs(u_input.b))) << (~vec4<u32>(firstLeadingBit(u_input.b), _wgslsmith_mult_u32(24174u, 1u), u_input.b, 36353u) % vec4<u32>(32u)));
    let var_5 = all(!(!vec3<bool>(true, var_3.x, -1i > u_input.a)));
    var_4 = ~firstTrailingBit(abs(func_3()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(firstLeadingBit(11664u), _wgslsmith_dot_vec2_u32(~firstLeadingBit(var_4.zz), ~var_4.ww)), var_4.x, firstTrailingBit(abs(var_4.x)));
}

