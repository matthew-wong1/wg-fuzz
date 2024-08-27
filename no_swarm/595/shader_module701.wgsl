struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 15226i, i32(-2147483648));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(true, 1000f, vec3<u32>(10597u, 4294967295u, 57310u), vec2<bool>(true, false)), Struct_1(true, 785f, vec3<u32>(1u, 70125u, 4294967295u), vec2<bool>(false, true)), Struct_1(true, 1086f, vec3<u32>(1u, 4294967295u, 0u), vec2<bool>(true, true)), Struct_1(false, 830f, vec3<u32>(89884u, 0u, 0u), vec2<bool>(false, true)), Struct_1(false, 1479f, vec3<u32>(49661u, 16315u, 0u), vec2<bool>(false, true)), Struct_1(true, 2435f, vec3<u32>(1u, 1u, 29885u), vec2<bool>(true, true)), Struct_1(true, 536f, vec3<u32>(0u, 72314u, 0u), vec2<bool>(false, true)), Struct_1(false, -1817f, vec3<u32>(0u, 37634u, 32809u), vec2<bool>(true, false)), Struct_1(true, -393f, vec3<u32>(60726u, 0u, 34013u), vec2<bool>(true, false)), Struct_1(true, -1000f, vec3<u32>(21979u, 54844u, 59334u), vec2<bool>(false, true)));

var<private> global2: array<f32, 27> = array<f32, 27>(-305f, 345f, -345f, -1467f, -400f, -513f, -476f, -541f, 1389f, 2108f, 453f, -1960f, 1760f, 1391f, -434f, -678f, -496f, 758f, 1516f, -1155f, -338f, -1024f, 2503f, -1879f, 1473f, 524f, -430f);

var<private> global3: Struct_1 = Struct_1(true, -462f, vec3<u32>(36328u, 71724u, 16633u), vec2<bool>(false, false));

var<private> global4: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = global3.b;
    var var_1 = ~1u;
    return -max(u_input.c.x, 0i);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-14869i, global0.x, -arg_1), global0.x, -arg_1, _wgslsmith_div_i32(max(0i, u_input.b), func_3(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(global3.c.x, 27u)]))))), -vec4<i32>(min(arg_1, 18056i), -(~arg_1), arg_1, -1i));
    var var_1 = firstLeadingBit(abs(max(vec2<i32>(-global0.x, -48769i), ~_wgslsmith_mod_vec2_i32(u_input.c.zz, u_input.d))));
    let var_2 = true;
    var var_3 = -1i >> (~(~61426u << (~arg_2 % 32u)) % 32u);
    var var_4 = vec3<bool>(all(!(!select(vec4<bool>(false, true, global3.a, global3.d.x), vec4<bool>(false, global3.a, var_2, global3.a), vec4<bool>(global3.a, var_2, true, arg_0)))), true, false);
    return global1[_wgslsmith_index_u32(0u, 10u)];
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(~arg_2.c.x, ~(func_2(false | global3.a, u_input.c.x, _wgslsmith_clamp_u32(arg_2.c.x, 54325u, u_input.a)).c.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global3.c.x, global3.c.x), ~vec2<u32>(1u, global3.c.x))));
    var var_1 = global1[_wgslsmith_index_u32(0u, 10u)];
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    let var_2 = select(vec4<bool>(any(select(select(vec4<bool>(false, arg_0, false, false), vec4<bool>(false, false, var_1.a, global3.a), vec4<bool>(false, true, true, false)), vec4<bool>(arg_0, false, false, var_1.d.x), select(vec4<bool>(true, arg_0, false, true), vec4<bool>(true, false, true, arg_1), var_1.a))), true, false, false), select(vec4<bool>(arg_1, !(!arg_0), true, true), !vec4<bool>(!arg_0, arg_2.d.x & false, u_input.c.x <= u_input.d.x, !global3.a), select(~global0.x, _wgslsmith_mult_i32(u_input.c.x, global0.x), arg_0) <= 0i), false | (~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -17753i, 17911i, u_input.b), vec4<i32>(0i, u_input.d.x, -38385i, -1i)) <= _wgslsmith_div_i32(-u_input.c.x, i32(-1i) * -62718i)));
    return func_2(true, firstTrailingBit(-_wgslsmith_clamp_i32(2147483647i, 1i, 8233i)) & ~(~(-2147483647i)), 36687u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 10>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 10u)];
    var var_1 = arg_0;
    global2 = array<f32, 27>();
    var var_2 = Struct_1(true, -263f, ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, arg_1.c.x, var_1.c.x), arg_1.c << (vec3<u32>(35401u, global3.c.x, arg_0.c.x) % vec3<u32>(32u)))), arg_1.d);
    return Struct_1(arg_1.d.x, -126f, vec3<u32>(4294967295u, func_4(true, true, Struct_1(arg_0.d.x, 897f, vec3<u32>(4294967295u, 1u, 0u), vec2<bool>(global3.a, var_0.d.x))).c.x, var_1.c.x) & var_0.c, arg_0.d);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    global2 = array<f32, 27>();
    let var_0 = Struct_1(!all(select(select(vec3<bool>(global3.a, true, true), vec3<bool>(false, global3.a, global3.a), false), !vec3<bool>(global3.a, global3.a, false), all(vec3<bool>(global3.d.x, global3.a, false)))), _wgslsmith_f_op_f32(-1358f * _wgslsmith_f_op_f32(-arg_0.x)), global3.c, !vec2<bool>(u_input.d.x == ~u_input.c.x, _wgslsmith_f_op_f32(-arg_0.x) == _wgslsmith_div_f32(2307f, global3.b)));
    let var_1 = func_5(Struct_1(var_0.d.x, global3.b, var_0.c, vec2<bool>(select(true, false, false), any(global3.d))), func_4(true, all(vec4<bool>(var_0.a, true, global3.a, var_0.d.x)), func_2(true, -1i, u_input.a)));
    var var_2 = global0.xy;
    let var_3 = Struct_1(true, -285f, var_0.c, func_4(all(vec4<bool>(!var_0.a, true, false, var_0.a)), !global3.a && false, global1[_wgslsmith_index_u32(~1u, 10u)]).d);
    return func_2(true, min(global0.x, u_input.d.x), reverseBits(u_input.e.x));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~1u, 10u)];
    let var_1 = -1i;
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(global4.zzz - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1744f, arg_1.b, arg_1.b) * vec3<f32>(522f, -341f, arg_1.b)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(u_input.e.x, 27u)], 641f, 1237f)))) * _wgslsmith_f_op_vec3_f32(abs(global4.yzz)))), var_0.c.x & global3.c.x);
    var var_3 = func_5(func_1(_wgslsmith_f_op_vec3_f32(global4.yzy + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global4.x, -163f, var_0.b), vec3<f32>(-656f, 411f, global2[_wgslsmith_index_u32(var_2.c.x, 27u)]))))), select(arg_1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, 25787u, 0u, 88014u), vec4<u32>(global3.c.x, var_2.c.x, arg_1.c.x, 45163u)) | 0u, true)), Struct_1(var_0.d.x, _wgslsmith_f_op_f32(-func_1(vec3<f32>(arg_1.b, global4.x, var_0.b), var_2.c.x).b), ~vec3<u32>(u_input.e.x, 1u, u_input.a) & _wgslsmith_mult_vec3_u32(vec3<u32>(14156u, 4294967295u, 1u), var_2.c << (var_0.c % vec3<u32>(32u))), func_5(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-908f, -674f, global2[_wgslsmith_index_u32(4294967295u, 27u)]) - vec3<f32>(938f, -1743f, -326f)), func_5(var_2, Struct_1(arg_1.d.x, var_0.b, global3.c, global3.d)).c.x), Struct_1(!var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -681f), vec3<u32>(54523u, 1u, 14344u), !arg_1.d)).d));
    let var_4 = global4.yw;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -145f;
    global0 = firstLeadingBit(u_input.c);
    global4 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(41229u, 27u)]))) + _wgslsmith_f_op_f32(func_6(_wgslsmith_clamp_vec4_i32(vec4<i32>(-34298i, -28859i, -10038i, -2147483647i), vec4<i32>(3156i, 10872i, -46671i, u_input.c.x), vec4<i32>(19422i, 0i, u_input.b, -21073i)), func_1(vec3<f32>(global3.b, global2[_wgslsmith_index_u32(0u, 27u)], 886f), 1u)))))), _wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(338f, global2[_wgslsmith_index_u32(41819u, 27u)], 722f)), global3.c.x).c.x, 27u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f - -154f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1726f - -773f))), func_5(Struct_1(true, _wgslsmith_f_op_f32(sign(-1044f)), _wgslsmith_mod_vec3_u32(vec3<u32>(10486u, global3.c.x, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(14756u, u_input.e.x, 1u), vec3<u32>(1u, u_input.a, global3.c.x))), vec2<bool>(26046u == u_input.e.x, global3.a)), func_4(any(!vec4<bool>(global3.d.x, global3.d.x, global3.a, global3.d.x)), !(global3.a && global3.d.x), global1[_wgslsmith_index_u32(0u & func_4(true, true, Struct_1(false, -681f, global3.c, vec2<bool>(false, global3.a))).c.x, 10u)])).b);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 10u)];
    var var_2 = 4294967295u;
    var var_3 = global1[_wgslsmith_index_u32(~min(~func_1(global4.wwz, 1u).c.x, var_1.c.x), 10u)];
    let var_4 = vec4<i32>(_wgslsmith_div_i32(-16854i, -2147483647i), abs(countOneBits(u_input.c.x)), u_input.c.x, global0.x);
    var_0 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global4.zx), var_4.x, _wgslsmith_add_u32(11567u, 1u));
}

