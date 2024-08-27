struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: array<u32, 15>;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(false, vec4<u32>(1u, 18819u, 19895u, 50139u), -35192i), Struct_1(true, vec4<u32>(0u, 4294967295u, 1u, 4294967295u), 0i), Struct_1(false, vec4<u32>(0u, 1u, 0u, 29282u), 0i), Struct_1(true, vec4<u32>(121449u, 36227u, 56670u, 1u), 1i), Struct_1(true, vec4<u32>(55249u, 18223u, 1u, 0u), 13404i), Struct_1(false, vec4<u32>(0u, 0u, 0u, 67272u), 7332i), Struct_1(false, vec4<u32>(1u, 1u, 11065u, 0u), 1i), Struct_1(false, vec4<u32>(92181u, 1u, 0u, 0u), 26754i), Struct_1(true, vec4<u32>(903u, 16318u, 4294967295u, 1u), 1i), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 28897u, 48715u), 2147483647i), Struct_1(false, vec4<u32>(0u, 4294967295u, 1u, 11638u), -1i), Struct_1(false, vec4<u32>(1u, 14762u, 4097u, 0u), 29155i), Struct_1(false, vec4<u32>(71587u, 4294967295u, 19688u, 4294967295u), 15556i), Struct_1(false, vec4<u32>(42318u, 29659u, 22458u, 4294967295u), 28482i), Struct_1(false, vec4<u32>(4689u, 126483u, 4294967295u, 4294967295u), -1827i), Struct_1(true, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), 18578i), Struct_1(true, vec4<u32>(7120u, 33195u, 1u, 1u), -22106i), Struct_1(true, vec4<u32>(11878u, 0u, 0u, 1u), 0i), Struct_1(true, vec4<u32>(75839u, 1u, 0u, 1u), i32(-2147483648)), Struct_1(false, vec4<u32>(74469u, 3980u, 0u, 4294967295u), 54953i), Struct_1(true, vec4<u32>(4294967295u, 47879u, 5401u, 2335u), 11671i), Struct_1(true, vec4<u32>(0u, 0u, 0u, 92337u), 2147483647i), Struct_1(true, vec4<u32>(52201u, 4294967295u, 1u, 35888u), -1i), Struct_1(false, vec4<u32>(24128u, 41740u, 1u, 95682u), -41532i), Struct_1(false, vec4<u32>(14548u, 59623u, 15614u, 42871u), 1i), Struct_1(true, vec4<u32>(14277u, 4294967295u, 5596u, 3943u), 47176i), Struct_1(false, vec4<u32>(36135u, 1u, 0u, 4294967295u), 1i), Struct_1(false, vec4<u32>(4294967295u, 0u, 1u, 0u), -3058i), Struct_1(false, vec4<u32>(1u, 0u, 26097u, 1u), -34968i), Struct_1(true, vec4<u32>(4294967295u, 72058u, 4294967295u, 0u), 20061i), Struct_1(true, vec4<u32>(14394u, 1u, 4294967295u, 53762u), 0i));

var<private> global4: array<vec4<u32>, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    global0 = Struct_1(false, abs(~vec4<u32>(~u_input.c, firstLeadingBit(7512u), 32274u, ~0u)), -1i);
    var var_0 = false;
    let var_1 = Struct_4(vec2<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(firstLeadingBit(0u), 15u)], 0u), 1u), Struct_2(Struct_1(!select(false, true, global0.a), ~(~vec4<u32>(0u, 4294967295u, 62806u, 114791u)), u_input.e.x | 6745i), vec3<bool>(global0.a, any(vec2<bool>(global0.a, global0.a)), global0.a)), Struct_3(vec3<u32>(43670u, global0.b.x, global0.b.x)));
    var var_2 = min(vec3<u32>(~0u, 4294967295u, 4294967295u), u_input.a);
    var_2 = _wgslsmith_add_vec3_u32(u_input.a, max(vec3<u32>(_wgslsmith_sub_u32(global0.b.x, ~1u), var_1.a.x, ~var_2.x), max(global0.b.wyw, global0.b.wyz)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_0)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), -317f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2284f, -643f)))));
}

fn func_2() -> u32 {
    global1 = max(u_input.e, vec2<i32>(1i, abs(select(~2147483647i, abs(-17494i), global0.a))));
    global3 = array<Struct_1, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1130f, -387f), -366f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(155f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-325f, 151f) - _wgslsmith_div_f32(-1722f, 1595f)), 1000f))));
    var var_1 = global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 31u)];
    var var_2 = ~(~(reverseBits(global0.b.x >> (u_input.a.x % 32u)) << (4294967295u % 32u)));
    return firstLeadingBit(37374u);
}

fn func_1() -> Struct_2 {
    let var_0 = (global1.x << (62019u % 32u)) >= 56856i;
    var var_1 = Struct_4(vec2<u32>(1u, _wgslsmith_mult_u32(func_2(), 17965u)), Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.c, 15u)], global0.b.x, u_input.c), global0.b), 0u), 31u)], vec3<bool>(!global0.a & !var_0, all(!vec2<bool>(true, global0.a)), !any(vec3<bool>(var_0, false, global0.a)))), Struct_3(global0.b.zzw));
    return var_1.b;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(~abs(vec2<i32>(-7348i, -1i)), u_input.b.yz ^ u_input.b.yx, vec2<i32>(u_input.b.x, -1i) << (vec2<u32>(~global2[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_add_u32(82951u, 799u)) % vec2<u32>(32u))), min(firstTrailingBit(vec2<i32>(~(-1i), arg_0.a.c)), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(13773i, -49897i), ~u_input.b.wz))));
    global3 = array<Struct_1, 31>();
    global0 = Struct_1(func_1().b.x, _wgslsmith_mult_vec4_u32(global4[_wgslsmith_index_u32(func_2(), 18u)], _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.a.b.x, global2[_wgslsmith_index_u32(4294967295u, 15u)], 20212u, arg_0.a.b.x), vec4<u32>(global0.b.x, 1u, ~1390u, firstTrailingBit(0u)))), _wgslsmith_div_i32(_wgslsmith_add_i32(-arg_0.a.c, ~arg_0.a.c), global1.x));
    let var_0 = Struct_3(vec3<u32>(~(~115415u) >> (_wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.b.x, u_input.c), u_input.a.xz)) % 32u), 1u, 7780u));
    var var_1 = u_input.e;
    return Struct_2(Struct_1(false || arg_0.b.x, _wgslsmith_mult_vec4_u32(global4[_wgslsmith_index_u32(~var_0.a.x, 18u)], vec4<u32>(0u, 1u, 4294967295u, 4294967295u) << (global0.b % vec4<u32>(32u))) | _wgslsmith_mult_vec4_u32(select(global4[_wgslsmith_index_u32(0u, 18u)], global0.b, arg_0.b.x), ~vec4<u32>(3104u, 85647u, arg_0.a.b.x, 4294967295u)), func_1().a.c), vec3<bool>(false, all(select(vec2<bool>(arg_0.b.x, false), func_1().b.yz, vec2<bool>(global0.a, arg_0.b.x))), select(~global2[_wgslsmith_index_u32(var_0.a.x, 15u)] <= ~arg_0.a.b.x, !arg_0.b.x, !all(arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    var var_1 = func_4(Struct_2(Struct_1(any(vec2<bool>(true, true)), var_0.a.b, global0.c), vec3<bool>(true, false, any(vec4<bool>(false, global0.a, false, var_0.a.a))))).a.a;
    global1 = countOneBits(~(-vec2<i32>(min(global1.x, global0.c), -10027i)));
    let var_2 = func_4(Struct_2(Struct_1(true, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 71183u, 71220u, var_0.a.b.x), vec4<u32>(0u, global0.b.x, 4294967295u, 40137u)), abs(var_0.a.c)), !vec3<bool>(global0.a, func_1().a.a, true)));
    var var_3 = func_4(Struct_2(var_2.a, var_0.b)).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-vec4<i32>(~(-40941i), _wgslsmith_dot_vec3_i32(u_input.b.xwy, vec3<i32>(2147483647i, 2147483647i, 2147483647i)), 1i, 26020i), vec4<i32>(-1i, _wgslsmith_mod_i32(reverseBits(global1.x), 0i), var_2.a.c, i32(-1i) * -23133i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-859f, _wgslsmith_f_op_f32(f32(-1f) * -782f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-148f - -347f))), _wgslsmith_f_op_f32(floor(-503f)))), _wgslsmith_f_op_f32(1f + 884f)));
}

