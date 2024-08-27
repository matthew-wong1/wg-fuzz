struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: vec4<f32>,
    d: Struct_3,
    e: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global0 = array<vec4<f32>, 17>();
    global0 = array<vec4<f32>, 17>();
    let var_0 = Struct_5(true, any(vec3<bool>(false, select(true, true, true), all(vec3<bool>(true, true, true)))), select(~vec2<i32>(reverseBits(u_input.b), ~1i), ~vec2<i32>(firstLeadingBit(50688i), i32(-1i) * -1i), vec2<bool>(true, (u_input.a == u_input.c) && true)));
    global0 = array<vec4<f32>, 17>();
    global0 = array<vec4<f32>, 17>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f)))))) - 224f);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = Struct_2(true, 857f, arg_1, vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -511f), -1785f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3())))))), arg_1);
    var var_1 = abs(-65794i);
    var var_2 = max(_wgslsmith_div_u32(46104u, firstTrailingBit(~_wgslsmith_div_u32(arg_1.b.x, arg_0.x))), arg_0.x);
    let var_3 = ~u_input.c;
    var var_4 = Struct_2(!(any(select(vec2<bool>(var_0.e.a.x, true), vec2<bool>(false, true), vec2<bool>(var_0.e.a.x, false))) & var_0.a), var_0.b, Struct_1(var_0.c.a, _wgslsmith_add_vec3_u32(~firstLeadingBit(arg_1.b), _wgslsmith_mult_vec3_u32(~vec3<u32>(13342u, 0u, var_3), vec3<u32>(4294967295u, arg_0.x, var_3))), countOneBits(~12509i), vec2<i32>(_wgslsmith_add_i32(-2147483647i, -41501i ^ u_input.b), -1i)), _wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, firstTrailingBit(firstTrailingBit(arg_0.x))), 17u)])), var_0.e);
    return select(~select(vec2<i32>(-1i) * -var_4.e.d, var_0.e.d, select(!vec2<bool>(var_0.c.a.x, false), var_4.c.a.yx, !arg_1.a.xz)), arg_1.d << (min(vec2<u32>(4294967295u, ~arg_1.b.x), ~(~vec2<u32>(u_input.c, 1u))) % vec2<u32>(32u)), !select(vec2<bool>(!var_0.c.a.x, true), vec2<bool>(true, all(arg_1.a)), arg_1.a.zz));
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(!arg_0.a & arg_0.b, false, true), ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(70966u, u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.a), vec3<u32>(u_input.c, u_input.a, 0u))), reverseBits(~vec3<u32>(u_input.a, 1u, 4294967295u))), _wgslsmith_div_i32(-1i, arg_0.c.x), firstLeadingBit(vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, arg_0.c.x), ~vec2<i32>(1i, arg_0.c.x)))));
    global0 = array<vec4<f32>, 17>();
    var var_1 = 1i;
    return var_0;
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = Struct_2(false, -1261f, func_4(Struct_5(!all(vec2<bool>(false, false)), true, func_2(reverseBits(vec2<u32>(57933u, u_input.a)), Struct_1(vec3<bool>(false, true, false), vec3<u32>(1u, u_input.c, 4294967295u), u_input.b, vec2<i32>(-11591i, 2147483647i))))), global0[_wgslsmith_index_u32(~u_input.a, 17u)], func_4(Struct_5(false, !all(vec4<bool>(true, true, true, true)), -firstTrailingBit(vec2<i32>(u_input.b, -1i)))));
    let var_1 = false;
    var var_2 = all(select(!select(select(vec4<bool>(false, var_0.c.a.x, true, var_1), vec4<bool>(true, true, false, true), vec4<bool>(var_1, var_1, var_0.e.a.x, var_0.a)), select(vec4<bool>(var_0.e.a.x, true, var_0.c.a.x, false), vec4<bool>(true, true, true, var_0.e.a.x), true), false), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, var_0.e.a.x, true), vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_0.e.a.x, true), true), var_1), !select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.c.a.x, false, var_0.e.a.x, var_0.a), var_0.a), !any(var_0.e.a.yx)), all(!vec2<bool>(var_1, false)) & !(!var_0.a)));
    let var_3 = vec3<bool>(true, var_1, true);
    let var_4 = vec2<u32>(countOneBits(5087u), 0u);
    return func_2(var_4, func_4(Struct_5(true, var_0.c.a.x, _wgslsmith_add_vec2_i32(var_0.e.d, vec2<i32>(5496i, u_input.b) << (var_4 % vec2<u32>(32u)))))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(false, ~vec3<i32>(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1431f)), ~_wgslsmith_sub_i32(u_input.b, u_input.b), -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1170f, 1000f, 1557f, 559f))) + global0[_wgslsmith_index_u32(~4294967295u, 17u)])))), Struct_3(func_4(Struct_5(func_4(Struct_5(true, false, vec2<i32>(-35072i, 4002i))).a.x, true, vec2<i32>(u_input.b, u_input.b))), _wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(12451u, 0u, u_input.c)), ~(vec3<u32>(0u, 5571u, u_input.c) >> (vec3<u32>(54643u, u_input.a, 4294967295u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(func_4(Struct_5(false, false, vec2<i32>(-2147483647i, -1800i))).b, vec3<u32>(u_input.a, 70890u, 1167u), vec3<u32>(u_input.c, u_input.c, 21523u) | vec3<u32>(17314u, 5868u, u_input.c))), vec2<f32>(889f, 462f), _wgslsmith_sub_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.a, 0u), vec3<u32>(u_input.c, u_input.c, 1u))), vec3<u32>(1u, u_input.a, ~u_input.a))), vec4<u32>(min(~u_input.c, ~u_input.a), u_input.a, max(22799u, abs(u_input.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.c), vec3<u32>(55225u, u_input.c, 0u)), u_input.c)) & vec4<u32>(~countOneBits(u_input.c), 11631u, u_input.c, 2983u));
    global0 = array<vec4<f32>, 17>();
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1020f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.c.x), _wgslsmith_f_op_f32(select(var_0.c.x, var_0.d.c.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-462f - -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.x)))))));
    let var_2 = vec2<u32>(~(~0u), 4612u);
    var_0 = Struct_4(any(var_0.d.a.a.xx), max(var_0.b, firstLeadingBit(var_0.b)), vec4<f32>(-1330f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2224f + 937f), var_1.x, var_0.a)), var_0.d.c.x, !var_0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.d.c.x, -2149f, var_0.a & false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-151f, -672f)) * _wgslsmith_f_op_f32(step(var_0.d.c.x, 703f))), _wgslsmith_f_op_f32(-362f + _wgslsmith_f_op_f32(-var_0.d.c.x))))), Struct_3(func_4(Struct_5(var_0.d.a.a.x, true, var_0.b.xz)), vec3<u32>(1u, _wgslsmith_sub_u32(var_2.x, var_2.x), 0u), var_0.d.c, vec3<u32>(u_input.c, 26096u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_2.x, 4294967295u, 55075u, var_2.x), var_0.e, vec4<bool>(var_0.d.a.a.x, var_0.a, var_0.a, var_0.d.a.a.x)), ~var_0.e))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_2.x, firstTrailingBit(firstLeadingBit(var_0.d.a.b.x)), ~(~4294967295u)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(var_0.e, vec4<u32>(var_0.d.b.x, u_input.a, var_2.x, var_0.d.b.x) ^ vec4<u32>(12346u, 14935u, var_0.d.a.b.x, var_0.d.a.b.x)), _wgslsmith_add_vec4_u32(~var_0.e, vec4<u32>(var_0.e.x, var_0.d.b.x, 4294967295u, 5363u)))));
    var var_3 = Struct_2(var_0.a != !any(vec3<bool>(var_0.a, false, var_0.a)), 855f, func_4(Struct_5(false, false, var_0.d.a.d)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_0.d.c.x + _wgslsmith_f_op_f32(floor(471f))), 1844f, -1661f, _wgslsmith_f_op_f32(ceil(var_1.x))))), var_0.d.a);
    let var_4 = countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(u_input.b), _wgslsmith_add_i32(~var_3.c.d.x, -1184i), 1i & countOneBits(u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, -19874i), var_0.b.x & u_input.b, _wgslsmith_div_i32(0i, u_input.b)), vec3<i32>(2147483647i, -51203i, -26834i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_0.c.xww - var_1), -_wgslsmith_div_i32(func_4(Struct_5(false, false, vec2<i32>(var_3.e.c, u_input.b))).d.x, 1i), var_3.d.zy, ~var_0.d.d);
}

