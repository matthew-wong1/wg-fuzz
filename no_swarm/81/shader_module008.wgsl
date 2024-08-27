struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(i32(-2147483648), Struct_1(vec4<bool>(true, false, false, false))), Struct_2(25870i, Struct_1(vec4<bool>(false, true, false, true))), Struct_2(-27041i, Struct_1(vec4<bool>(false, false, true, true))), Struct_2(26910i, Struct_1(vec4<bool>(true, false, false, false))), Struct_2(-5388i, Struct_1(vec4<bool>(false, true, false, false))), Struct_2(3119i, Struct_1(vec4<bool>(true, true, false, false))), Struct_2(19434i, Struct_1(vec4<bool>(false, true, false, true))), Struct_2(24563i, Struct_1(vec4<bool>(false, true, true, false))), Struct_2(-1i, Struct_1(vec4<bool>(true, true, false, false))), Struct_2(-7790i, Struct_1(vec4<bool>(true, true, false, false))), Struct_2(55746i, Struct_1(vec4<bool>(false, true, true, false))), Struct_2(43182i, Struct_1(vec4<bool>(true, false, false, true))), Struct_2(-89063i, Struct_1(vec4<bool>(false, true, false, false))));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = 0i;
    let var_1 = ~u_input.e.x;
    let var_2 = global0[_wgslsmith_index_u32(abs(abs(_wgslsmith_mod_u32(28125u, u_input.b.x))), 13u)];
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    return Struct_4(global0[_wgslsmith_index_u32(~u_input.e.x, 13u)], ~var_1 != (80179u ^ var_1), var_2.b, Struct_2(_wgslsmith_clamp_i32(-31894i, arg_0, var_0), var_2.b));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = vec4<u32>(u_input.e.x, u_input.e.x, ~(~28946u), _wgslsmith_dot_vec3_u32(vec3<u32>(36928u, ~_wgslsmith_mod_u32(u_input.e.x, 0u), ~u_input.e.x ^ _wgslsmith_add_u32(u_input.e.x, 73693u)), u_input.b.yzw));
    var var_1 = var_0;
    var_1 = ~abs(~(~u_input.b));
    let var_2 = ~vec2<u32>(46094u, min(var_1.x, u_input.e.x | ~var_1.x));
    let var_3 = Struct_3(vec3<i32>(_wgslsmith_div_i32(-_wgslsmith_mult_i32(u_input.d, 1i), -2147483647i), u_input.c, _wgslsmith_mod_i32(_wgslsmith_add_i32(~(-1i), u_input.a.x), abs(firstLeadingBit(arg_0.d.a)))), max(var_0.xxy, vec3<u32>(_wgslsmith_clamp_u32(0u, 51790u, 24168u), _wgslsmith_add_u32(var_0.x, 33793u), u_input.b.x)) | _wgslsmith_sub_vec3_u32(var_1.xzy, ~abs(vec3<u32>(var_0.x, var_0.x, 4294967295u))), !arg_0.d.b.a, 28732u);
    return var_3.d;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_4 {
    global0 = array<Struct_2, 13>();
    return Struct_4(arg_0.a, ~_wgslsmith_div_u32(arg_1.b.x, 88888u) > firstTrailingBit(u_input.b.x), arg_0.d.b, Struct_2(3578i, Struct_1(!vec4<bool>(arg_1.c.x, false, false, true))));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_3 {
    global0 = array<Struct_2, 13>();
    let var_0 = func_4(func_2(arg_2.x & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -11861i, 4395i, u_input.c), vec4<i32>(u_input.c, -22772i, arg_2.x, arg_2.x))), Struct_3(-u_input.a, _wgslsmith_div_vec3_u32(select(~vec3<u32>(arg_0, arg_0, u_input.e.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 1u, 41439u), vec3<u32>(1u, 21892u, u_input.b.x), vec3<u32>(arg_0, u_input.e.x, 1u)), !vec3<bool>(arg_1.x, arg_1.x, true)), vec3<u32>(abs(u_input.b.x), ~16077u, func_3(Struct_4(Struct_2(arg_2.x, Struct_1(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))), true, Struct_1(arg_1), global0[_wgslsmith_index_u32(arg_0, 13u)])))), arg_1, firstTrailingBit(arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1373f, 1153f, -764f) * vec3<f32>(1305f, -1269f, 308f)))))));
    var var_1 = vec4<i32>(2147483647i, -68709i, _wgslsmith_mod_i32(var_0.d.a, var_0.d.a), -u_input.a.x);
    global0 = array<Struct_2, 13>();
    var var_2 = Struct_3(-abs(var_1.zwx), vec3<u32>(abs(firstTrailingBit(arg_0)), _wgslsmith_add_u32(_wgslsmith_add_u32(50036u << (u_input.b.x % 32u), abs(arg_0)), abs(_wgslsmith_add_u32(53391u, 0u))), 0u), select(select(select(vec4<bool>(var_0.d.b.a.x, true, var_0.a.b.a.x, arg_1.x), func_4(Struct_4(global0[_wgslsmith_index_u32(u_input.e.x, 13u)], var_0.d.b.a.x, Struct_1(var_0.d.b.a), global0[_wgslsmith_index_u32(4294967295u, 13u)]), Struct_3(vec3<i32>(var_1.x, 1i, 29444i), u_input.b.yxy, arg_1, 2483u), vec3<f32>(-1032f, -866f, 1910f)).c.a, arg_1), func_2(arg_2.x).c.a, vec4<bool>(arg_1.x, 4294967295u != u_input.b.x, true, any(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)))), func_4(var_0, Struct_3(u_input.a, vec3<u32>(arg_0, u_input.e.x, arg_0), vec4<bool>(arg_1.x, var_0.d.b.a.x, arg_1.x, var_0.c.a.x), ~u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(floor(-244f)), -713f, -1077f)).d.b.a, !select(var_0.a.b.a, func_2(14929i).c.a, arg_0 >= u_input.e.x)), ~max(arg_0, u_input.e.x) >> (firstTrailingBit(select(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_0, 93496u, 51429u, 0u)), 1u, true)) % 32u));
    return Struct_3(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(firstLeadingBit(-2147483647i), var_1.x, 0i)), reverseBits(-_wgslsmith_div_vec3_i32(var_2.a, vec3<i32>(u_input.a.x, -12013i, var_1.x)))), ~_wgslsmith_div_vec3_u32(var_2.b, select(~var_2.b, u_input.b.wxz, arg_1.x)), vec4<bool>(!(!(var_2.c.x | true)), 0u == ((u_input.e.x & 22665u) << (~32687u % 32u)), !any(vec3<bool>(true, var_2.c.x, var_0.c.a.x)), all(select(var_0.c.a, select(var_0.a.b.a, vec4<bool>(true, true, arg_1.x, var_2.c.x), vec4<bool>(arg_1.x, var_0.b, arg_1.x, arg_1.x)), !var_0.c.a))), arg_0);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = arg_0.a.yy;
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -549f), _wgslsmith_f_op_f32(min(-855f, _wgslsmith_f_op_f32(-arg_1.x)))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1116f, -499f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(747f, _wgslsmith_div_f32(arg_1.x, -1266f)) - arg_1.x), 1391f)));
    var_0 = -(vec2<i32>(var_0.x, u_input.c) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.x, u_input.a.x), u_input.a.yx), _wgslsmith_div_vec2_i32(u_input.a.zz, vec2<i32>(-39691i, 45559i)))) & _wgslsmith_sub_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.x, -13102i), arg_0.a.yz), vec2<i32>(arg_0.a.x, 48417i));
    var var_2 = Struct_4(func_4(func_4(func_4(Struct_4(global0[_wgslsmith_index_u32(46276u, 13u)], false, Struct_1(arg_0.c), global0[_wgslsmith_index_u32(14299u, 13u)]), arg_0, _wgslsmith_f_op_vec3_f32(-arg_1)), Struct_3(vec3<i32>(arg_0.a.x, u_input.a.x, 31815i), select(u_input.b.xxw, vec3<u32>(arg_0.d, u_input.e.x, 93052u), arg_0.c.xzx), !vec4<bool>(true, false, arg_0.c.x, false), u_input.b.x & arg_0.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -258f) - arg_1)), Struct_3((u_input.a ^ arg_0.a) << (min(arg_0.b, vec3<u32>(9625u, u_input.e.x, 0u)) % vec3<u32>(32u)), countOneBits(~vec3<u32>(arg_0.d, 14525u, 3287u)), vec4<bool>(true, true, !arg_0.c.x, all(arg_0.c.yw)), arg_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(992f, arg_1.x)) * 1647f), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_1.x) + _wgslsmith_div_f32(var_1.x, arg_1.x)))).a, all(vec2<bool>(all(arg_0.c.xz) && true, true)), Struct_1(func_4(func_2(arg_0.a.x), Struct_3(u_input.a, arg_0.b, !arg_0.c, abs(u_input.e.x)), _wgslsmith_f_op_vec3_f32(arg_1 - vec3<f32>(-396f, arg_1.x, 158f))).d.b.a), Struct_2(firstTrailingBit(-abs(-87906i)), func_4(Struct_4(Struct_2(var_0.x, Struct_1(arg_0.c)), true, func_4(Struct_4(Struct_2(44265i, Struct_1(vec4<bool>(true, arg_0.c.x, arg_0.c.x, false))), arg_0.c.x, Struct_1(arg_0.c), global0[_wgslsmith_index_u32(arg_0.d, 13u)]), Struct_3(vec3<i32>(arg_0.a.x, -31340i, arg_0.a.x), arg_0.b, arg_0.c, u_input.b.x), arg_1).c, func_2(var_0.x).d), func_1(~u_input.b.x, !vec4<bool>(arg_0.c.x, false, true, arg_0.c.x), vec2<i32>(u_input.d, u_input.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1, vec3<f32>(var_1.x, -159f, arg_1.x))))).c));
    var var_3 = arg_1;
    return func_4(func_4(func_4(Struct_4(Struct_2(var_2.d.a, var_2.d.b), any(vec2<bool>(false, false)), Struct_1(vec4<bool>(var_2.a.b.a.x, var_2.b, false, false)), func_2(var_2.a.a).d), func_1(abs(arg_0.b.x), !var_2.c.a, arg_0.a.yy), vec3<f32>(599f, _wgslsmith_div_f32(1647f, -729f), -194f)), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, var_1.x, -877f), arg_1, vec3<bool>(false, false, true)))) - _wgslsmith_f_op_vec3_f32(arg_1 - vec3<f32>(arg_1.x, var_1.x, var_3.x)))), Struct_3(arg_0.a, countOneBits(abs(~arg_0.b)), vec4<bool>(select(arg_0.c.x, false, !arg_0.c.x), all(!arg_0.c.xww), var_2.d.b.a.x, true), ~u_input.b.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1618f, _wgslsmith_div_f32(arg_1.x, var_1.x)))))).a.b;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(select(167f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1632f, 231f))), func_5(Struct_3(max(u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(abs(u_input.b.zyw), arg_2.ywy | vec3<u32>(12393u, 8398u, 4294967295u)), !vec4<bool>(true, arg_1, false, arg_1), _wgslsmith_mod_u32(~arg_2.x, 56054u)), vec3<f32>(-531f, -1583f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1793f), _wgslsmith_f_op_f32(f32(-1f) * -639f))))).a.x));
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    let var_1 = func_1(4294967295u, vec4<bool>(true, arg_0.a.x, !(!arg_0.a.x), any(!arg_0.a.wwy)), abs(max(vec2<i32>(-2147483647i, -22415i) << ((vec2<u32>(arg_3, arg_3) << (vec2<u32>(u_input.e.x, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), abs(abs(u_input.a.zx))))).c;
    var var_2 = ~vec2<i32>(u_input.a.x, -((50743i << (u_input.b.x % 32u)) << ((arg_3 ^ u_input.e.x) % 32u)));
    return -var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(~(~(vec2<u32>(u_input.b.x, u_input.b.x) ^ u_input.b.zw)));
    var var_1 = func_6(func_5(func_1(select(~4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), true), vec4<bool>(any(vec3<bool>(true, false, true)), true, all(vec3<bool>(false, false, false)), true), -reverseBits(vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2287f, 904f, -260f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, 1704f, -691f) + vec3<f32>(-612f, -642f, -422f)), vec3<bool>(false, true, false))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-851f)), -147f, _wgslsmith_f_op_f32(floor(-1000f))))), true, u_input.b, ~u_input.e.x);
    let var_2 = vec4<bool>(!(41302i < func_6(func_2(-2147483647i).d.b, true, vec4<u32>(89559u, 33040u, u_input.b.x, var_0.x) >> (u_input.b % vec4<u32>(32u)), ~var_0.x)), u_input.d == _wgslsmith_mult_i32(-55444i, u_input.a.x), false, !(!all(func_2(-12560i).c.a.yy)));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(320f + 812f)));
    var var_4 = (u_input.a.zy & _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, u_input.a.x) >> (var_0 % vec2<u32>(32u)), vec2<i32>(u_input.d, -2147483647i))) & ~(~vec2<i32>(max(0i, u_input.d), -1i));
    var var_5 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(abs(-37043i), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-40694i, 8376i, -19905i))), 22703i), reverseBits(select(vec2<i32>(-33306i, 2147483647i), vec2<i32>(u_input.d, -1i), vec2<bool>(false, var_2.x))) << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.e.x), vec2<u32>(0u, u_input.b.x)) % vec2<u32>(32u))), -vec2<i32>(func_4(Struct_4(Struct_2(2147483647i, Struct_1(var_2)), false, Struct_1(var_2), global0[_wgslsmith_index_u32(4294967295u, 13u)]), Struct_3(vec3<i32>(1i, 2147483647i, var_4.x), vec3<u32>(var_0.x, 49396u, 14183u), var_2, 2452u), vec3<f32>(-720f, -1118f, -1525f)).a.a & -1i, var_4.x));
    let var_6 = all(func_1(65881u, vec4<bool>(false, _wgslsmith_add_u32(31573u, u_input.e.x) != 4294967295u, any(var_2), 20343i != var_5.x), abs(vec2<i32>(abs(1i), _wgslsmith_mod_i32(u_input.d, -128i)))).c.zwy);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<u32>(56460u, u_input.b.x) | var_0));
}

