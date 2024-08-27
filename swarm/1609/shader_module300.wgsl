struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = 103180i;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<u32>(73564u, 1u)), Struct_1(vec2<u32>(7352u, 4294967295u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(11498u, 4294967295u)), Struct_1(vec2<u32>(76235u, 25765u)), Struct_1(vec2<u32>(4294967295u, 33736u)), Struct_1(vec2<u32>(3155u, 16620u)), Struct_1(vec2<u32>(1u, 7724u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(2091u, 1u)), Struct_1(vec2<u32>(1u, 5581u)), Struct_1(vec2<u32>(14682u, 12264u)), Struct_1(vec2<u32>(0u, 80276u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(22796u, 1u)), Struct_1(vec2<u32>(1u, 32906u)), Struct_1(vec2<u32>(55637u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 4294967295u)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = max(vec2<i32>(u_input.c.x, max(-20733i, -2147483647i & u_input.c.x) >> (u_input.b.x % 32u)), ~(vec2<i32>(u_input.c.x & u_input.d, _wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.zx)) & (vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, -91960i))));
    var var_1 = global2[_wgslsmith_index_u32(~1u, 21u)];
    global2 = array<Struct_1, 21>();
    global0 = abs(~var_1.a.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(418f + _wgslsmith_f_op_f32(step(-699f, -1278f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(trunc(962f))) - 1000f))));
    return !(!(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false))));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<u32>) -> Struct_2 {
    global1 = -min(0i, -6640i);
    var var_0 = Struct_2(Struct_1(arg_2), !vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(4189u, 31511u, 93512u), vec3<u32>(24478u, 0u, u_input.b.x)) <= _wgslsmith_mult_u32(113047u, 19523u), !(!arg_0), !arg_0, ~arg_1.x > arg_1.x));
    var var_1 = Struct_3(Struct_1(u_input.b), -1i, global2[_wgslsmith_index_u32(u_input.a.x, 21u)], countOneBits(vec2<i32>(u_input.c.x, _wgslsmith_mod_i32(-u_input.c.x, -20122i))), Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, u_input.a.x), ~u_input.a), vec2<u32>(7324u, 2730u), vec2<u32>(~1u, var_0.a.a.x))));
    var var_2 = -15462i;
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, 0u & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 8209u, 0u), vec3<u32>(16958u, var_1.c.a.x, 17621u))), 0u), abs(_wgslsmith_mod_u32(33700u, var_0.a.a.x)));
    return Struct_2(var_1.c, !func_3());
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    let var_0 = func_2(select(max(2147483647i ^ arg_1, firstLeadingBit(arg_1)) >= 1i, arg_0.b.x, -31684i != arg_1), _wgslsmith_sub_vec3_i32(select(u_input.c, -_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, u_input.c.x, u_input.d), u_input.c), func_2(arg_0.b.x, ~vec3<i32>(2147483647i, 5853i, -2147483647i), countOneBits(arg_0.a.a)).b.xxy), u_input.c), _wgslsmith_mult_vec2_u32(arg_0.a.a, _wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.b.x, arg_0.a.a.x), u_input.b), u_input.b, countOneBits(select(vec2<u32>(23863u, u_input.b.x), vec2<u32>(16035u, 9480u), arg_0.b.x))))).a;
    var var_1 = func_2(true || (u_input.c.x == max(~29847i, -39036i)), -u_input.c & select(vec3<i32>(_wgslsmith_mod_i32(arg_1, -26676i), ~u_input.c.x, abs(-2147483647i)), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 963i, arg_1), u_input.c)), !(!arg_0.b.zxy)), vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.x, arg_0.a.a.x, 0u, u_input.a.x), vec4<u32>(58844u, var_0.a.x, 63284u, arg_0.a.a.x))), select(_wgslsmith_mult_u32(36151u, arg_0.a.a.x), ~0u, all(vec2<bool>(arg_0.b.x, arg_0.b.x)))) << ((abs(u_input.a) << (~firstTrailingBit(arg_0.a.a) % vec2<u32>(32u))) % vec2<u32>(32u))).a;
    let var_2 = ~(select(5621i, -25275i, true) & ~firstTrailingBit(arg_1));
    var_1 = Struct_1(~abs(~vec2<u32>(4294967295u, var_0.a.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1139f) * -1042f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(506f)) * _wgslsmith_f_op_f32(round(627f))), 1152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(754f * -904f) - _wgslsmith_f_op_f32(f32(-1f) * -215f)))))));
    return vec2<bool>(true, false);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> u32 {
    global1 = min(u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c.zx, ~vec2<i32>(2147483647i, arg_2) ^ (_wgslsmith_add_vec2_i32(u_input.c.zx, vec2<i32>(arg_2, u_input.c.x)) ^ u_input.c.xx)));
    let var_0 = arg_0;
    var var_1 = func_4(func_2(true, u_input.c, func_2(true, firstTrailingBit(countOneBits(vec3<i32>(arg_2, arg_2, 1i))), ~vec2<u32>(u_input.b.x, arg_0.a.a.x) & _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.a.x, u_input.b.x), vec2<u32>(var_0.a.a.x, 67205u))).a.a), u_input.c.x).x;
    let var_2 = Struct_4(max(_wgslsmith_add_vec3_i32(~u_input.c << (vec3<u32>(u_input.a.x, arg_0.a.a.x, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(~(-2147483647i), u_input.c.x, 2147483647i)), u_input.c), func_2(all(vec2<bool>(!arg_3.x, any(vec2<bool>(true, arg_3.x)))), ~abs(u_input.c), _wgslsmith_mod_vec2_u32(arg_0.a.a | _wgslsmith_sub_vec2_u32(vec2<u32>(24972u, var_0.a.a.x), vec2<u32>(arg_0.a.a.x, 4294967295u)), vec2<u32>(1u, u_input.a.x))), vec3<bool>(all(vec4<bool>(!arg_3.x, 0i < u_input.d, false, false)), arg_3.x, func_3().x), var_0.b.zyx);
    let var_3 = -_wgslsmith_mod_vec3_i32(var_2.a, vec3<i32>(_wgslsmith_mod_i32(reverseBits(-34938i), ~var_2.a.x), -13104i, _wgslsmith_mult_i32(-41834i, _wgslsmith_add_i32(var_2.a.x, 38949i))));
    return _wgslsmith_sub_u32(~var_0.a.a.x, 1u);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u | firstTrailingBit(u_input.a.x), 21u)];
    global1 = reverseBits(u_input.c.x);
    let var_1 = func_5(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false))), -105f, -68665i, select(select(func_4(func_2(false, u_input.c, var_0.a), i32(-1i) * -1i), vec2<bool>(true, true), false), !vec2<bool>(func_3().x, true), !((var_0.a.x >= u_input.a.x) & any(vec3<bool>(false, true, true)))));
    var var_2 = !any(func_2(true, u_input.c, firstLeadingBit(vec2<u32>(30136u, 42139u))).b.xx) || all(vec2<bool>(false, all(func_3().zww)));
    var var_3 = vec2<u32>(~(~(~_wgslsmith_div_u32(var_1, 36032u))), abs(0u));
    return Struct_1(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, countOneBits(0u)), firstLeadingBit(vec2<u32>(4294967295u, var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 21>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1321f * 452f))))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -623f), _wgslsmith_f_op_f32(floor(-500f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-232f)))));
    var var_1 = firstTrailingBit(u_input.c & u_input.c);
    let var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1451f)) - 332f));
    global1 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.x, vec3<i32>(~(u_input.c.x | 1i), ~(-42694i), 2147483647i));
}

