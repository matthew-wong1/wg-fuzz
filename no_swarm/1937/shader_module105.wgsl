struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(Struct_2(true, vec4<u32>(20506u, 15199u, 100996u, 0u), Struct_1(vec4<bool>(false, false, true, false), 853f, 1u, vec3<u32>(37247u, 10938u, 4294967295u), vec2<u32>(0u, 35578u))), vec3<i32>(-8550i, 56346i, 0i)), Struct_5(Struct_2(true, vec4<u32>(18144u, 4294967295u, 47169u, 0u), Struct_1(vec4<bool>(true, false, true, false), 702f, 12316u, vec3<u32>(4294967295u, 21221u, 47083u), vec2<u32>(60444u, 16478u))), vec3<i32>(0i, 1i, -15835i)), Struct_5(Struct_2(false, vec4<u32>(119853u, 4294967295u, 671u, 1u), Struct_1(vec4<bool>(true, true, true, true), -650f, 42574u, vec3<u32>(47400u, 4294967295u, 1u), vec2<u32>(4294967295u, 955u))), vec3<i32>(0i, -27638i, 0i)), Struct_5(Struct_2(false, vec4<u32>(87478u, 58109u, 48002u, 45626u), Struct_1(vec4<bool>(false, true, true, false), -1320f, 1u, vec3<u32>(66100u, 4294967295u, 1u), vec2<u32>(21034u, 0u))), vec3<i32>(-63079i, -12175i, 48123i)));

var<private> global2: array<vec4<f32>, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: bool) -> vec4<f32> {
    var var_0 = ~u_input.b;
    global2 = array<vec4<f32>, 32>();
    var var_1 = select(vec3<bool>(abs(u_input.a.x | -15912i) != ~(~u_input.a.x), true, true), vec3<bool>(arg_3, global0.c.a.x, any(!vec2<bool>(false, arg_0.a.x))), arg_3);
    var var_2 = true;
    var var_3 = Struct_2(true, _wgslsmith_mod_vec4_u32(~min(vec4<u32>(4294967295u, 1u, 1u, 40283u), global0.b) >> (~(~global0.b) % vec4<u32>(32u)), vec4<u32>(2749u, min(1u, min(84739u, 65359u)), ~(~55644u), 4294967295u)), Struct_1(select(select(!arg_0.a, global0.c.a, true), select(!arg_0.a, global0.c.a, vec4<bool>(global0.c.a.x, true, false, arg_0.a.x)), false), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.b * -449f)))), 0u, arg_0.d, ~countOneBits(u_input.b.zz | vec2<u32>(1u, 58963u))));
    return _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~1u, 32u)]);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>) -> vec4<f32> {
    let var_0 = -(~0i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(select(!global0.c.a, !global0.c.a, !vec4<bool>(false, true, global0.c.a.x, arg_1.x)), -686f, 0u, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.d.x, 25454u, 16987u), vec3<u32>(9069u, u_input.c.x, u_input.c.x)), 1u << (u_input.b.x % 32u), 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.x, u_input.c.x), vec2<u32>(0u, global0.b.x)) >> (~vec2<u32>(49730u, 72213u) % vec2<u32>(32u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.x, global0.c.c, global0.b.x), u_input.c.yzx), vec3<u32>(40324u, 7970u, 0u), u_input.c.zwx) | vec3<u32>(min(24968u, 1u), min(global0.b.x, 2552u), 1u), global0.c.d.xx, arg_1.x)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f - _wgslsmith_f_op_f32(f32(-1f) * -1188f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c.b, arg_0.x, arg_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -178f), -441f))))));
    var var_2 = Struct_3(select(vec4<i32>(1i, -_wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.zw), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, -2147483647i, u_input.a.x), u_input.a.zzw), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), ~(~var_0)), select(vec4<i32>(reverseBits(u_input.a.x), ~var_0, select(u_input.a.x, var_0, false), ~0i), countOneBits(firstLeadingBit(vec4<i32>(u_input.a.x, -2147483647i, var_0, var_0))), true), false), vec3<bool>(false, 67869u != _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, u_input.c.x), u_input.c), any(vec2<bool>(select(true, global0.a, true), true))));
    let var_3 = 62812u;
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1246f, global0.c.b))) * arg_0.zwz);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_div_f32(global0.c.b, global0.c.b), _wgslsmith_f_op_f32(-1760f - arg_0.x), -1015f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-716f, arg_0.x, var_1.x, -1249f))))) * _wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(_wgslsmith_f_op_f32(-global0.c.b), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<bool>(true, global0.c.a.x, arg_1.x, true), -585f, var_3, u_input.b, global0.b.wz), u_input.c.yxx, u_input.c.zz, true)).x, _wgslsmith_f_op_f32(max(var_1.x, arg_0.x)), 1500f), vec4<bool>(any(var_2.b.xx), false, false, true && var_2.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), arg_0.x, global0.c.b, arg_0.x)));
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: Struct_2, arg_3: Struct_5) -> i32 {
    global2 = array<vec4<f32>, 32>();
    global1 = array<Struct_5, 4>();
    let var_0 = arg_3.a;
    let var_1 = arg_0.a.c.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(func_3(arg_0.a.c, vec3<u32>(~abs(arg_2.c.d.x), _wgslsmith_mult_u32(~arg_0.a.b.x, u_input.c.x | arg_3.a.b.x), 4059u), arg_3.a.b.wx ^ ~u_input.c.yy, select(any(select(arg_0.a.c.a.wyx, arg_0.a.c.a.yzw, var_0.c.a.xwx)), true, false))), vec3<bool>(var_0.c.a.x, !(!(arg_2.c.b > -243f)), all(var_0.c.a))));
    return -21880i;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: u32, arg_3: vec4<f32>) -> Struct_1 {
    global1 = array<Struct_5, 4>();
    var var_0 = _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(~4294967295u ^ firstTrailingBit(70162u), ~_wgslsmith_clamp_u32(12710u, u_input.c.x, 1u)), arg_2, ~abs(_wgslsmith_mult_u32(global0.b.x, global0.c.e.x)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(352f * arg_1.a.c.b))))));
    global2 = array<vec4<f32>, 32>();
    global0 = Struct_2(global0.a | arg_1.a.a, vec4<u32>(_wgslsmith_div_u32(6186u, 1u), ~firstTrailingBit(~4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, arg_2, global0.c.d.x, u_input.c.x), vec4<u32>(global0.b.x, arg_1.a.b.x, 37022u, global0.b.x)), ~vec4<u32>(41045u, arg_1.a.b.x, global0.b.x, 4294967295u)), u_input.c.x), arg_1.a.c);
    return Struct_1(global0.c.a, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_mod_u32(arg_1.a.c.d.x, global0.b.x), vec3<u32>(18479u, 1u, global0.c.c), _wgslsmith_mod_vec2_u32(countOneBits(abs(vec2<u32>(u_input.b.x, 64832u))), ~(~(~u_input.b.yz))));
}

fn func_1() -> vec4<bool> {
    global0 = Struct_2(true, ~(~u_input.c), func_5(vec4<i32>(_wgslsmith_div_i32(~u_input.a.x, func_2(global1[_wgslsmith_index_u32(17996u, 4u)], -1i, Struct_2(global0.c.a.x, u_input.c, Struct_1(global0.c.a, -379f, 42356u, global0.c.d, u_input.b.zz)), Struct_5(Struct_2(true, u_input.c, global0.c), vec3<i32>(u_input.a.x, u_input.a.x, 1i)))), -2147483647i, u_input.a.x, 41448i), Struct_5(Struct_2(!global0.c.a.x, vec4<u32>(41609u, global0.c.c, 4294967295u, 0u), Struct_1(global0.c.a, global0.c.b, u_input.b.x, vec3<u32>(0u, global0.b.x, global0.b.x), vec2<u32>(u_input.c.x, 31762u))), vec3<i32>(-30042i, 1i, -u_input.a.x)), u_input.b.x, _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(abs(~u_input.b.x), 32u)] * global2[_wgslsmith_index_u32(global0.b.x, 32u)])));
    global0 = Struct_2(any(select(vec3<bool>(true & global0.a, any(global0.c.a.ww), -1i == u_input.a.x), select(!global0.c.a.xwy, func_5(vec4<i32>(u_input.a.x, 0i, 41857i, 9642i), Struct_5(Struct_2(false, u_input.c, Struct_1(global0.c.a, global0.c.b, global0.b.x, u_input.b, global0.c.e)), vec3<i32>(-2147483647i, 9744i, 2147483647i)), 4294967295u, vec4<f32>(-1857f, global0.c.b, global0.c.b, global0.c.b)).a.xwx, false), vec3<bool>(!global0.a, any(global0.c.a), all(vec3<bool>(true, global0.a, true))))), global0.b, Struct_1(global0.c.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c.b * _wgslsmith_f_op_f32(global0.c.b * -1000f)), global0.c.b, any(vec2<bool>(false, global0.a)))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(47408u, global0.b.x), ~vec2<u32>(global0.b.x, 4294967295u)), global0.b.xzw, _wgslsmith_mult_vec2_u32(u_input.c.yw, select(global0.b.xy ^ vec2<u32>(u_input.c.x, u_input.b.x), firstTrailingBit(u_input.b.yy), global0.c.a.wy))));
    let var_0 = true;
    let var_1 = true;
    let var_2 = func_5(abs(vec4<i32>(-1i) * -vec4<i32>(-3114i, u_input.a.x, -2147483647i, u_input.a.x)), Struct_5(Struct_2(true, ~u_input.c, global0.c), u_input.a.wyy), _wgslsmith_sub_u32(firstTrailingBit(~global0.b.x >> (43370u % 32u)), ~(firstLeadingBit(4294967295u) >> (_wgslsmith_mult_u32(global0.c.d.x, 9567u) % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(532f, 2172f, global0.c.b, -2276f), vec4<f32>(global0.c.b, 774f, global0.c.b, -610f))), global2[_wgslsmith_index_u32(abs(1u), 32u)])), vec4<f32>(_wgslsmith_f_op_f32(462f * 518f), func_5(vec4<i32>(-69318i, 29130i, 4400i, u_input.a.x), global1[_wgslsmith_index_u32(4294967295u, 4u)], global0.c.c, vec4<f32>(global0.c.b, global0.c.b, global0.c.b, global0.c.b)).b, _wgslsmith_f_op_f32(747f * 998f), _wgslsmith_f_op_f32(max(848f, global0.c.b))), global0.c.a))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.zwy ^ vec3<u32>(firstLeadingBit(~global0.b.x), global0.c.d.x, max(44402u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 99542u, 121806u, global0.b.x) >> (global0.b % vec4<u32>(32u)), ~global0.b)));
    var var_1 = abs(u_input.c);
    let var_2 = func_1();
    let var_3 = reverseBits(max(vec3<u32>(~(~u_input.b.x), _wgslsmith_mod_u32(max(var_0.x, 4294967295u), _wgslsmith_add_u32(u_input.c.x, var_1.x)), abs(global0.b.x)), reverseBits(~u_input.b)));
    global2 = array<vec4<f32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(_wgslsmith_clamp_i32(-719i, _wgslsmith_sub_i32(0i, -1i), 1i), 1i), (u_input.a.x | 1i) >> (8954u % 32u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-893f))), 1939f, 198f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(255f * global0.c.b) - _wgslsmith_f_op_f32(-global0.c.b)) - global0.c.b)), _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a), vec3<f32>(168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1118f + global0.c.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c.b, -599f, var_2.x)))), -325f));
}

