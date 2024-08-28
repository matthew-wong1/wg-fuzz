struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 6>;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: u32) -> f32 {
    var var_0 = vec2<bool>(arg_2, arg_2);
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, arg_0, global1.e.a.a, arg_0)));
    var var_2 = Struct_1(_wgslsmith_div_f32(-972f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.a.d) + global1.b.x))), _wgslsmith_div_u32(_wgslsmith_mod_u32(~4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(24719u, u_input.b, u_input.b), vec3<u32>(global1.a, 14942u, 4294967295u))), global1.a), u_input.c.x > 0i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_f_op_f32(-231f + -942f));
    var var_3 = countOneBits(u_input.c.x);
    let var_4 = global0[_wgslsmith_index_u32(19116u, 6u)];
    return 1594f;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> vec3<i32> {
    global1 = Struct_3(4294967295u, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.e * arg_2.a.a), -615f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1319f, global1.e.a.c, true, 38069u)) + 959f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * 498f)))), arg_2, 50286u, Struct_2(Struct_1(arg_2.a.a, 4294967295u, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-524f - arg_2.a.d) * arg_2.a.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, 14972u), 0u), ~29075u)));
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.d), 949f), ~select(1u, arg_2.b.x, arg_2.a.c), all(vec2<bool>(arg_0, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(873f - arg_2.a.a) - global1.e.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.c.a.a, false, arg_0, u_input.b)))), select(min(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.e.a.b, 1u), global1.c.b), countOneBits(global1.e.b)), vec2<u32>(~u_input.b, 4294967295u), arg_2.a.c)));
    let var_1 = global0[_wgslsmith_index_u32(~(~reverseBits(10864u | global1.d) | arg_2.a.b), 6u)];
    return select(-firstLeadingBit(-vec3<i32>(0i, u_input.e, 2147483647i)), select(vec3<i32>(u_input.d ^ u_input.d, u_input.d, countOneBits(u_input.a)) << (~vec3<u32>(arg_2.a.b, var_1.d.b, global1.a) % vec3<u32>(32u)), ~vec3<i32>(u_input.a, u_input.c.x, 1i) >> (((vec3<u32>(4294967295u, 4294967295u, 11129u) ^ vec3<u32>(0u, var_0.a.b.x, var_0.a.a.b)) << (reverseBits(vec3<u32>(59986u, 0u, 13390u)) % vec3<u32>(32u))) % vec3<u32>(32u)), false), vec3<bool>(any(!vec2<bool>(false, global1.c.a.c)), false, global1.c.a.c));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(2442f, false, global1.e.a.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.d, 0u, 0u, 0u), ~(~vec4<u32>(14760u, global1.d, u_input.b, 4294967295u))))), ~(~firstTrailingBit(17382u)), global1.c.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(528f * _wgslsmith_f_op_f32(global1.c.a.d * -1354f)) * _wgslsmith_f_op_f32(global1.e.a.a - global1.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1.c.a.e, _wgslsmith_f_op_f32(trunc(-1593f)))))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + global1.e.a.a) - _wgslsmith_f_op_f32(round(var_0.e)));
    return var_0.a;
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(532f + arg_0), _wgslsmith_f_op_f32(floor(1029f)), _wgslsmith_div_f32(-400f, -428f), _wgslsmith_f_op_f32(step(-2293f, -542f)))))));
    var var_1 = max(~(vec4<u32>(1u, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.c.b.x, global1.a), vec3<u32>(u_input.b, global1.d, 31555u)), _wgslsmith_dot_vec3_u32(vec3<u32>(11396u, 20637u, 18439u), vec3<u32>(0u, global1.e.a.b, global1.e.b.x))) << (countOneBits(countOneBits(vec4<u32>(global1.d, 1u, 1u, u_input.b))) % vec4<u32>(32u))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(40898u, 7479u, global1.e.b.x, u_input.b) >> (vec4<u32>(global1.d, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, global1.c.a.b, u_input.b, 88754u), vec4<u32>(u_input.b, u_input.b, global1.d, 1u)))));
    let var_2 = global1.c;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_2.a.d), var_1.x, select(false, true, any(!select(vec4<bool>(global1.e.a.c, false, var_2.a.c, global1.c.a.c), vec4<bool>(var_2.a.c, true, false, global1.e.a.c), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2641f) * var_0.x), _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -2147483647i, 2147483647i), vec3<i32>(u_input.c.x, u_input.e, u_input.a)), func_2(var_2.a.c, var_2.a.c, Struct_2(global1.e.a, global1.c.b))) << (var_2.b.x % 32u), -(vec4<i32>(-1i) * -vec4<i32>(u_input.d, -25910i, u_input.d, -56589i)), global1.e.a.c)));
    var_1 = select(select(select(vec4<u32>(0u, var_3.b, abs(49069u), var_1.x), ~(~vec4<u32>(var_3.b, 0u, var_3.b, 1u)), !(!vec4<bool>(var_2.a.c, global1.c.a.c, true, false))), abs(select(vec4<u32>(global1.a, 21461u, 14203u, 13067u), vec4<u32>(93164u, 4294967295u, 115858u, var_2.a.b), vec4<bool>(false, global1.c.a.c, var_3.c, true))) >> (~reverseBits(vec4<u32>(global1.a, 4294967295u, 0u, var_2.b.x)) % vec4<u32>(32u)), var_2.a.c), reverseBits(vec4<u32>(7754u, _wgslsmith_add_u32(16330u, u_input.b) | (var_1.x >> (0u % 32u)), ~_wgslsmith_dot_vec3_u32(var_1.wwz, vec3<u32>(31199u, 1u, var_1.x)), 1u)), select(select(vec4<bool>(true, !var_3.c, !global1.c.a.c, true), vec4<bool>(!var_3.c, global1.e.a.c, false, true), vec4<bool>(true && global1.c.a.c, all(vec4<bool>(var_2.a.c, true, false, var_2.a.c)), true, true == var_2.a.c)), !vec4<bool>(var_2.a.c, true, false, var_3.c & true), var_3.c));
    return -1308f;
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_4) -> Struct_4 {
    let var_0 = arg_1;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3.a.a.b, firstLeadingBit(_wgslsmith_add_u32(4294967295u >> (arg_2.c.b.x % 32u), _wgslsmith_mult_u32(select(1u, u_input.b, arg_3.a.a.c), u_input.b)))), 6u)];
    global0 = array<Struct_5, 6>();
    global1 = Struct_3(27200u, _wgslsmith_f_op_vec2_f32(floor(var_1.a.zw)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.b.x, false, global1.e.a.c, arg_2.c.a.b))), ~(~global1.a), _wgslsmith_mod_i32(-1i, 35488i) <= _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, arg_1, 0i, arg_1), vec4<i32>(-1i, -21668i, -38929i, arg_1)), global1.c.a.a, arg_3.a.a.a), ~_wgslsmith_mod_vec2_u32(max(vec2<u32>(arg_2.c.a.b, 24320u), vec2<u32>(arg_3.a.a.b, 0u)), select(arg_3.a.b, vec2<u32>(12528u, var_1.d.b), vec2<bool>(global1.c.a.c, true)))), arg_3.a.a.b << (~(~firstTrailingBit(19329u)) % 32u), Struct_2(var_1.d, reverseBits(abs(vec2<u32>(arg_3.a.a.b, 27372u) << (vec2<u32>(4294967295u, var_1.b.b) % vec2<u32>(32u))))));
    return Struct_4(arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-705f, ~(u_input.b & abs(~u_input.b)), false, _wgslsmith_f_op_f32(global1.b.x - -1608f), global1.b.x);
    let var_1 = min(min(select(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 56515i, -2447i), vec3<i32>(-17126i, u_input.d, u_input.c.x), vec3<i32>(-1i, u_input.d, u_input.c.x)), -vec3<i32>(36930i, -24233i, u_input.d)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, u_input.d, -2147483647i) & vec3<i32>(u_input.d, 1i, u_input.e), vec3<i32>(56987i, u_input.d, -2147483647i), vec3<i32>(-28042i, -29946i, 25002i)), vec3<bool>(any(vec2<bool>(true, false)), true | var_0.c, any(vec4<bool>(true, false, var_0.c, var_0.c)))), vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(-56994i, 0i, u_input.a))), vec3<i32>(2147483647i, 0i ^ ~u_input.c.x, -2147483647i));
    global0 = array<Struct_5, 6>();
    var var_2 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e, 1347f, 1656f), vec3<f32>(-430f, 587f, var_0.e), vec3<bool>(false, true, global1.c.a.c))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.a.e)), -120f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(464f))))), u_input.a, Struct_3(_wgslsmith_sub_u32(~global1.d >> ((u_input.b | 18513u) % 32u), global1.c.a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * global1.b), global1.c, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, global1.d, 0u, 1u)), ~firstTrailingBit(vec4<u32>(1u, 41089u, 0u, 1u))), Struct_2(global1.e.a, global1.c.b)), Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1.e.a.e), _wgslsmith_mod_u32(0u, 4294967295u), global1.e.a.c, 912f, _wgslsmith_f_op_f32(-1011f + 994f)), global1.c.b)));
    var var_3 = _wgslsmith_mod_vec2_u32(~reverseBits(func_5(vec3<f32>(-811f, var_2.a.a.e, var_0.d), 6219i, Struct_3(103054u, global1.b, Struct_2(global1.c.a, vec2<u32>(var_0.b, u_input.b)), u_input.b, var_2.a), Struct_4(global1.c)).a.b), ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(var_2.a.b, global1.e.b), abs(vec2<u32>(4294967295u, global1.c.a.b)))) << (vec2<u32>(83957u, ~((0u << (u_input.b % 32u)) ^ 38259u)) % vec2<u32>(32u));
    var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(max(firstLeadingBit(vec3<u32>(34220u, 16141u, 5081u)), vec3<u32>(global1.e.a.b, var_2.a.b.x, 10527u)), ~vec3<u32>(global1.c.a.b, var_0.b, global1.a) >> (~vec3<u32>(1u, 4461u, global1.d) % vec3<u32>(32u))), global1.a), var_2.a.b);
    let var_4 = global1.e.a.c;
    var_2 = Struct_4(func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.a.a.d, -787f, 867f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.a.d, -1040f, 1085f) - vec3<f32>(global1.c.a.a, var_2.a.a.e, -566f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(458f, var_0.e, global1.b.x))))), _wgslsmith_mult_i32(-u_input.d, ~2147483647i) | ~(~var_1.x), Struct_3(0u, global1.b, func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, var_0.a, global1.b.x)), u_input.e, Struct_3(20213u, vec2<f32>(var_2.a.a.a, -875f), var_2.a, 1u, var_2.a), func_5(vec3<f32>(-276f, -773f, global1.c.a.a), var_1.x, Struct_3(0u, global1.b, global1.e, 1u, Struct_2(global1.e.a, vec2<u32>(24754u, 43868u))), Struct_4(var_2.a))).a, global1.a, func_5(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2162f, var_2.a.a.e, var_2.a.a.a))), _wgslsmith_add_i32(var_1.x, -2147483647i), Struct_3(global1.a, vec2<f32>(var_0.e, var_2.a.a.e), Struct_2(Struct_1(global1.b.x, var_2.a.b.x, var_0.c, 1843f, global1.c.a.e), var_2.a.b), u_input.b, global1.c), Struct_4(global1.e)).a), func_5(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-391f, -265f, 1260f))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(30518i, var_1.x, u_input.d, -1i), vec4<i32>(u_input.e, -49613i, var_1.x, 2147483647i), vec4<i32>(u_input.c.x, -2147483647i, -6395i, var_1.x)), max(vec4<i32>(-16910i, u_input.d, -2147483647i, u_input.c.x), vec4<i32>(-1i, 35545i, -12063i, var_1.x))), Struct_3(55707u, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.a.a, 2051f) + global1.b), func_5(vec3<f32>(global1.c.a.a, global1.e.a.e, global1.c.a.e), 65940i, Struct_3(u_input.b, vec2<f32>(var_2.a.a.e, global1.e.a.a), global1.e, global1.c.b.x, global1.c), Struct_4(var_2.a)).a, global1.e.b.x, func_5(vec3<f32>(753f, -1503f, var_0.e), 45661i, Struct_3(var_3.x, global1.b, Struct_2(var_2.a.a, vec2<u32>(30510u, 71627u)), 1u, Struct_2(Struct_1(var_0.d, 1u, global1.c.a.c, -1000f, var_0.e), global1.e.b)), Struct_4(Struct_2(Struct_1(var_0.a, 4721u, global1.c.a.c, var_0.a, 144f), global1.c.b))).a), func_5(vec3<f32>(-808f, global1.e.a.e, -1065f), ~19144i, Struct_3(var_3.x, global1.b, global1.e, u_input.b, global1.e), func_5(vec3<f32>(376f, var_2.a.a.d, -1763f), 80297i, Struct_3(4205u, global1.b, Struct_2(var_2.a.a, vec2<u32>(65705u, u_input.b)), 1u, Struct_2(Struct_1(global1.b.x, global1.e.a.b, var_0.c, 451f, global1.b.x), global1.c.b)), Struct_4(Struct_2(var_2.a.a, vec2<u32>(553u, 52863u))))))).a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(_wgslsmith_div_u32(global1.c.b.x, 0u), var_2.a.a.b), min(~global1.e.a.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 100479u, 18901u, 13001u), vec4<u32>(2861u, 6430u, u_input.b, 0u))) >> (~min(var_2.a.b.x, 44536u << (var_3.x % 32u)) % 32u), 904f, countOneBits((firstLeadingBit(var_2.a.b) ^ abs(vec2<u32>(var_3.x, 38112u))) | vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 78997u, global1.c.b.x), u_input.b)));
}

