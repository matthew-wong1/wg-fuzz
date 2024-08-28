struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(vec2<bool>(true, true), -929f, vec4<u32>(0u, 1u, 21225u, 0u)), vec2<bool>(false, false), 0u), Struct_3(Struct_1(vec2<bool>(false, true), -1007f, vec4<u32>(4294967295u, 37999u, 51324u, 63799u)), vec2<bool>(true, true), 4294967295u), Struct_3(Struct_1(vec2<bool>(true, false), -1626f, vec4<u32>(51114u, 48887u, 8587u, 56737u)), vec2<bool>(true, true), 4294967295u), Struct_3(Struct_1(vec2<bool>(true, false), 1700f, vec4<u32>(1u, 0u, 1u, 4294967295u)), vec2<bool>(false, true), 5695u), Struct_3(Struct_1(vec2<bool>(true, false), -1271f, vec4<u32>(0u, 4294967295u, 4294967295u, 33900u)), vec2<bool>(true, true), 26870u), Struct_3(Struct_1(vec2<bool>(true, false), 317f, vec4<u32>(13997u, 10040u, 0u, 0u)), vec2<bool>(false, true), 1u), Struct_3(Struct_1(vec2<bool>(true, false), -736f, vec4<u32>(14222u, 0u, 16862u, 3834u)), vec2<bool>(true, true), 16048u), Struct_3(Struct_1(vec2<bool>(true, true), -100f, vec4<u32>(1u, 36056u, 1u, 1u)), vec2<bool>(true, false), 2088u), Struct_3(Struct_1(vec2<bool>(false, true), 239f, vec4<u32>(47385u, 41927u, 0u, 1u)), vec2<bool>(true, true), 0u), Struct_3(Struct_1(vec2<bool>(false, false), 758f, vec4<u32>(0u, 59638u, 5659u, 1u)), vec2<bool>(false, false), 0u), Struct_3(Struct_1(vec2<bool>(true, true), 1131f, vec4<u32>(93014u, 172927u, 112895u, 32944u)), vec2<bool>(true, true), 49160u), Struct_3(Struct_1(vec2<bool>(false, true), -1366f, vec4<u32>(11884u, 61650u, 83062u, 2297u)), vec2<bool>(true, false), 28676u), Struct_3(Struct_1(vec2<bool>(true, true), -124f, vec4<u32>(3270u, 45218u, 1u, 0u)), vec2<bool>(false, true), 1u), Struct_3(Struct_1(vec2<bool>(false, true), -2553f, vec4<u32>(28800u, 4294967295u, 104851u, 39358u)), vec2<bool>(true, false), 1u), Struct_3(Struct_1(vec2<bool>(false, true), -1217f, vec4<u32>(31502u, 714u, 1u, 44398u)), vec2<bool>(true, false), 2345u), Struct_3(Struct_1(vec2<bool>(false, true), -102f, vec4<u32>(15314u, 23567u, 0u, 45221u)), vec2<bool>(true, false), 33917u), Struct_3(Struct_1(vec2<bool>(true, false), 642f, vec4<u32>(0u, 0u, 55205u, 0u)), vec2<bool>(true, true), 0u), Struct_3(Struct_1(vec2<bool>(true, false), -534f, vec4<u32>(84099u, 31894u, 10985u, 0u)), vec2<bool>(false, false), 86383u), Struct_3(Struct_1(vec2<bool>(false, true), -566f, vec4<u32>(23599u, 4294967295u, 64251u, 54510u)), vec2<bool>(true, true), 4294967295u), Struct_3(Struct_1(vec2<bool>(true, true), 1939f, vec4<u32>(1u, 1u, 1u, 0u)), vec2<bool>(true, true), 1u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = u_input.a.x;
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a.b, _wgslsmith_f_op_f32(arg_2.a.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b))), arg_1.a.x)));
    var var_3 = Struct_2(~u_input.b.yxw, u_input.a.x ^ arg_0, Struct_1(vec2<bool>(true, arg_2.a.b > _wgslsmith_div_f32(arg_2.a.b, arg_1.b)), arg_1.b, u_input.b), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(528f, arg_2.a.b, 1569f, arg_2.a.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1653f, arg_2.a.b, -376f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1087f, arg_2.a.b, -1205f, arg_1.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.b, arg_2.a.b, arg_1.b) + vec4<f32>(arg_2.a.b, arg_2.a.b, var_2, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, 494f, 794f, -1080f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, var_2, var_2, arg_2.a.b), vec4<f32>(1000f, -1438f, arg_1.b, arg_1.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1304f, -727f, 471f, arg_1.b) + vec4<f32>(arg_2.a.b, 864f, -2629f, -1882f))))), select(select(!vec3<bool>(arg_1.a.x, arg_2.b.x, var_1), select(!vec3<bool>(var_1, false, false), select(vec3<bool>(true, false, var_1), vec3<bool>(false, arg_1.a.x, true), vec3<bool>(false, true, arg_1.a.x)), !vec3<bool>(arg_1.a.x, arg_1.a.x, true)), select(vec3<bool>(false, false, arg_2.a.a.x), vec3<bool>(false, true, false), select(vec3<bool>(true, var_1, true), vec3<bool>(false, arg_2.a.a.x, false), true))), vec3<bool>(-u_input.a.x > var_0, (arg_2.a.b < var_2) | (arg_2.a.b != 1417f), any(select(vec3<bool>(arg_2.a.a.x, false, true), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_2.b.x), false))), !select(select(vec3<bool>(arg_2.b.x, arg_1.a.x, arg_2.a.a.x), vec3<bool>(var_1, true, true), true), !vec3<bool>(false, arg_2.a.a.x, true), vec3<bool>(var_1, arg_1.a.x, var_1))));
    let var_4 = arg_2;
    return arg_2.a.a;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    let var_0 = !select(select(vec2<bool>(true, true), func_3(reverseBits(u_input.a.x), Struct_1(vec2<bool>(true, true), -149f, vec4<u32>(u_input.b.x, 61516u, 58967u, 9697u)), global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), !select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), any(func_3(u_input.a.x, Struct_1(vec2<bool>(false, false), 444f, vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)), Struct_3(Struct_1(vec2<bool>(false, true), -549f, vec4<u32>(u_input.b.x, 37560u, 80564u, 1u)), vec2<bool>(true, true), 0u)))), func_3(~_wgslsmith_add_i32(-30969i, u_input.a.x), Struct_1(vec2<bool>(true, false), _wgslsmith_div_f32(1708f, -855f), vec4<u32>(u_input.b.x, u_input.b.x, 57713u, u_input.b.x)), global0[_wgslsmith_index_u32(1u, 20u)]));
    global0 = array<Struct_3, 20>();
    return Struct_1(select(select(!vec2<bool>(var_0.x, var_0.x), var_0, var_0), !vec2<bool>(true, var_0.x), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -524f), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(select(u_input.b, u_input.b, vec4<bool>(true, true, true, var_0.x)), vec4<u32>(u_input.b.x, 1u, 1u, 4294967295u)), abs(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 28091u, u_input.b.x, u_input.b.x)))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = true;
    global0 = array<Struct_3, 20>();
    var var_1 = func_2();
    var var_2 = !(u_input.b.x != ((max(var_1.c.x, u_input.b.x) & 13348u) | 71949u));
    var var_3 = Struct_1(!(!select(vec2<bool>(false, var_0), !var_1.a, true)), var_1.b, ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_1.c.x, 31364u, arg_0.a.c.x), vec4<u32>(102891u, 29800u, arg_0.c, var_1.c.x))) >> (arg_0.a.c % vec4<u32>(32u)));
    return select(reverseBits(select(~vec4<u32>(u_input.b.x, 4294967295u, 73609u, 80756u), ~vec4<u32>(65920u, var_1.c.x, arg_0.c, var_1.c.x), vec4<bool>(false, false, true, arg_0.b.x))) << (~var_1.c % vec4<u32>(32u)), firstTrailingBit(~(~var_3.c)), select(vec4<bool>(true, any(select(vec4<bool>(false, var_0, var_1.a.x, arg_0.a.a.x), vec4<bool>(var_3.a.x, true, false, false), vec4<bool>(arg_0.a.a.x, var_0, false, var_0))), true, var_1.a.x), vec4<bool>(!var_0, arg_0.a.a.x, all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, var_1.a.x, var_1.a.x), vec4<bool>(var_0, false, arg_0.b.x, arg_0.a.a.x))), _wgslsmith_f_op_f32(max(1000f, 1000f)) <= var_1.b), vec4<bool>(all(vec2<bool>(false, var_3.a.x)) || true, arg_0.a.a.x, var_3.a.x, true)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_2 {
    global0 = array<Struct_3, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(arg_1.d));
    var var_1 = vec4<u32>(arg_1.c.c.x, ~1u, _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_mult_u32(~u_input.b.x, min(21173u, arg_1.c.c.x))) & ~(~4294967295u), firstLeadingBit(_wgslsmith_dot_vec3_u32(func_1(Struct_3(Struct_1(vec2<bool>(arg_1.c.a.x, true), arg_2.x, vec4<u32>(54611u, u_input.b.x, arg_1.a.x, 78198u)), vec2<bool>(arg_3.b.x, true), arg_3.a.c.x), _wgslsmith_f_op_f32(arg_3.a.b * var_0.x), countOneBits(vec3<i32>(17343i, u_input.a.x, arg_1.b))).ywx, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(arg_3.a.c.x, 11446u, 85914u), u_input.b.zxx)))));
    var var_2 = Struct_3(func_2(), !arg_3.a.a, 4294967295u);
    var_1 = ~_wgslsmith_mod_vec4_u32(arg_3.a.c, u_input.b);
    return Struct_2(~_wgslsmith_sub_vec3_u32(abs(~arg_3.a.c.xyx), ~vec3<u32>(arg_3.a.c.x, 64256u, 0u) ^ vec3<u32>(var_2.a.c.x, arg_3.a.c.x, arg_1.a.x)), -(~(-30360i)), func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.b, _wgslsmith_div_f32(176f, -605f), 657f, _wgslsmith_f_op_f32(f32(-1f) * -1714f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1330f, arg_1.d.x, -691f, 887f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.d, arg_1.d, vec4<bool>(arg_1.c.a.x, true, arg_3.a.a.x, true)))))), select(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) < func_2().b, false, var_2.a.a.x), arg_1.e, select(arg_1.e, !arg_1.e, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    let var_0 = func_4(-14667i, Struct_2(u_input.b.yxy, -_wgslsmith_sub_i32(~2147483647i, u_input.a.x), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, false), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -593f) + -565f), func_1(Struct_3(Struct_1(vec2<bool>(true, true), -236f, u_input.b), vec2<bool>(false, true), 24138u), _wgslsmith_f_op_f32(abs(526f)), min(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 1i)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 391f, -494f, -927f) * vec4<f32>(-138f, -1000f, 1672f, 341f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(583f, 1000f, 2376f, 1614f) - vec4<f32>(-1343f, -654f, -1736f, 436f))))), vec3<bool>(false, select(all(vec4<bool>(false, true, true, false)), false, true), !any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(633f, 1016f), vec2<f32>(681f, 1191f))))))))), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 20u)]);
    var var_1 = global0[_wgslsmith_index_u32(0u, 20u)];
    let var_2 = _wgslsmith_f_op_f32(-var_0.d.x) < _wgslsmith_f_op_f32(f32(-1f) * -1824f);
    global0 = array<Struct_3, 20>();
    let var_3 = 109342u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_0.c.b, var_1.a.b)), reverseBits(select(vec2<u32>(35756u, ~41233u), _wgslsmith_div_vec2_u32(var_0.c.c.yy | var_1.a.c.xy, vec2<u32>(var_1.c, var_1.c)), all(vec4<bool>(var_2, true, var_0.c.a.x, var_1.b.x)))));
}

