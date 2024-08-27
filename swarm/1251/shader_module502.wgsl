struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
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

var<private> global0: array<u32, 16>;

var<private> global1: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(-756f, vec4<f32>(1799f, 1392f, 1000f, -1060f), Struct_1(-16264i, -262f, vec2<f32>(-1889f, -1785f), vec2<i32>(1i, -37773i), vec2<bool>(true, false)), -1i), Struct_5(1416f, vec4<f32>(-626f, -1000f, -106f, 631f), Struct_1(i32(-2147483648), -697f, vec2<f32>(-469f, 1428f), vec2<i32>(-26470i, 2147483647i), vec2<bool>(false, true)), 18558i), Struct_5(1063f, vec4<f32>(1374f, -628f, 1000f, 714f), Struct_1(-14143i, -330f, vec2<f32>(296f, -641f), vec2<i32>(1i, -14584i), vec2<bool>(true, false)), 2147483647i), Struct_5(-1388f, vec4<f32>(1067f, 919f, 653f, -1070f), Struct_1(0i, 298f, vec2<f32>(574f, 1084f), vec2<i32>(-8750i, 0i), vec2<bool>(false, false)), 1203i), Struct_5(-417f, vec4<f32>(-649f, -972f, 783f, -1850f), Struct_1(1913i, 537f, vec2<f32>(-1969f, -1963f), vec2<i32>(-4068i, 1i), vec2<bool>(true, true)), -24235i), Struct_5(-2474f, vec4<f32>(-1121f, -284f, -1292f, 493f), Struct_1(2147483647i, -101f, vec2<f32>(-998f, -1655f), vec2<i32>(32440i, -73515i), vec2<bool>(false, true)), 2147483647i));

var<private> global2: i32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>) -> f32 {
    global2 = 4265i;
    global0 = array<u32, 16>();
    let var_0 = ~u_input.a;
    global2 = -(2147483647i | arg_1.x);
    global0 = array<u32, 16>();
    return _wgslsmith_f_op_f32(f32(-1f) * -184f);
}

fn func_3() -> u32 {
    let var_0 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.e >= ~firstTrailingBit(u_input.b), true, true), true);
    let var_1 = Struct_2(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.b, -25022i, u_input.c, u_input.b)), _wgslsmith_div_vec4_i32(~vec4<i32>(1i, u_input.b, u_input.e, u_input.b), reverseBits(vec4<i32>(u_input.c, u_input.e, u_input.c, u_input.e)))) >> (vec4<u32>(15475u, ~(~u_input.a.x), _wgslsmith_clamp_u32(~18704u, ~41093u, 1481u), _wgslsmith_mult_u32(0u, u_input.a.x) >> ((1u >> (0u % 32u)) % 32u)) % vec4<u32>(32u)), Struct_1(~(~(~u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f) - 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1315f, 2460f), vec2<f32>(-279f, -406f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-395f, -1000f))))), abs((vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u))) << (u_input.a.xz % vec2<u32>(32u))), var_0.wy), _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(select(88708u, 1u, var_0.x | true), ~1u)), ~(vec4<i32>(u_input.b, u_input.b, -2178i, -8963i) ^ firstTrailingBit(vec4<i32>(-1i, 13218i, u_input.c, u_input.b))) >> (~(~min(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 22855u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(38543u, 16u)], 34711u, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]))) % vec4<u32>(32u)));
    var var_2 = Struct_3(var_1.b);
    global0 = array<u32, 16>();
    var var_3 = max(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(~(-3477i << (var_1.c % 32u)), var_2.a.d.x), _wgslsmith_div_vec2_i32(~select(var_1.d.wx, var_2.a.d, vec2<bool>(var_0.x, false)), countOneBits(vec2<i32>(-5915i, var_2.a.d.x) ^ vec2<i32>(var_1.d.x, var_2.a.d.x)))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)]) >> (1u % 32u), 16u)], 16u)], reverseBits(0u), _wgslsmith_div_u32(u_input.d, reverseBits(~1997u)), ~(~(~0u))), ~abs(min(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(70424u, 16u)], u_input.a.x, var_1.c), ~vec4<u32>(1u, var_1.c, 0u, u_input.d))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(~arg_2.x, 4294967295u & global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(u_input.a.x, 78130u), ~u_input.a.x), 16u)], func_3() | 0u));
    let var_1 = vec3<u32>(var_0.x, ~(~abs(~16147u)), _wgslsmith_clamp_u32(arg_2.x, 55282u << (~var_0.x % 32u), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(31984u, 16u)], 1u, global0[_wgslsmith_index_u32(0u, 16u)]), vec4<u32>(var_0.x, 46163u, 12457u, 1u)), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 16u)], 16u)], 16u)], 16u)])));
    var var_2 = _wgslsmith_div_u32(reverseBits(1103u), ~func_3());
    var var_3 = u_input.e;
    let var_4 = !select(select(!(!vec3<bool>(false, arg_1, false)), !select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), false), !select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1))), !vec3<bool>(arg_1, false, false), any(!(!vec4<bool>(false, arg_1, true, arg_1))));
    return Struct_1(u_input.b, _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-245f, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1098f, arg_0) * vec2<f32>(arg_0, arg_0))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2386f, 157f)) + vec2<f32>(arg_0, -580f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), vec2<f32>(810f, 2591f), all(vec3<bool>(true, false, arg_1)))))), ~vec2<i32>(max(2147483647i, ~u_input.c), _wgslsmith_mult_i32(countOneBits(17451i), countOneBits(u_input.e))), !var_4.yx);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(arg_2, 1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.b, 242f), vec2<f32>(-814f, -713f))))), select(_wgslsmith_div_vec2_i32(arg_1.d, arg_1.d) | ~arg_1.d, vec2<i32>(_wgslsmith_sub_i32(u_input.e, arg_1.a), 13490i), 1u != global0[_wgslsmith_index_u32(_wgslsmith_div_u32(47447u, u_input.d), 16u)]), func_2(_wgslsmith_f_op_f32(floor(-816f)), true, _wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 16u)], 3872u), vec2<u32>(96823u, 4294967295u)) >> (u_input.a.xy % vec2<u32>(32u))).e));
    let var_1 = _wgslsmith_mod_u32(countOneBits(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 16u)])), 25566u) >= ~_wgslsmith_sub_u32(firstLeadingBit(u_input.d), u_input.a.x >> ((u_input.a.x & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 16u)], 16u)]) % 32u));
    global1 = array<Struct_5, 6>();
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.d, 0u), 4294967295u), 16u)], _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), u_input.a)), ~_wgslsmith_dot_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(false, arg_1.e.x, false)), u_input.a)) ^ func_3();
    var_0 = Struct_3(var_0.a);
    return Struct_3(var_0.a);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5) -> Struct_2 {
    var var_0 = u_input.a.x <= ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.d, 16u)], global0[_wgslsmith_index_u32(24001u, 16u)], 39188u) & ~80114u, ~global0[_wgslsmith_index_u32(34857u, 16u)]);
    var var_1 = -_wgslsmith_mod_vec3_i32(-(~reverseBits(vec3<i32>(10267i, 56740i, arg_0.a.a))), abs(vec3<i32>(1i, ~u_input.b, 2740i)));
    let var_2 = vec2<i32>(u_input.c, select(_wgslsmith_sub_i32(-2147483647i, 1i), _wgslsmith_dot_vec2_i32(arg_1.c.d, func_4(arg_1.b.yxy, arg_1.c, -2147483647i).a.d) ^ arg_0.a.a, !func_4(_wgslsmith_f_op_vec3_f32(select(arg_1.b.zxw, vec3<f32>(920f, -561f, 1173f), vec3<bool>(arg_1.c.e.x, arg_0.a.e.x, true))), Struct_1(-2147483647i, arg_0.a.c.x, arg_0.a.c, vec2<i32>(arg_0.a.d.x, -10770i), arg_1.c.e), _wgslsmith_mult_i32(u_input.b, u_input.b)).a.e.x));
    global1 = array<Struct_5, 6>();
    global2 = ~abs(1i);
    return Struct_2(vec4<i32>(func_2(817f, any(select(vec3<bool>(false, arg_0.a.e.x, true), vec3<bool>(arg_1.c.e.x, true, true), true)), vec2<u32>(0u, ~global0[_wgslsmith_index_u32(0u, 16u)])).d.x, _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(var_2.x, var_2.x, var_1.x)), vec3<i32>(reverseBits(u_input.c), _wgslsmith_mult_i32(-2147483647i, 1i), _wgslsmith_add_i32(0i, 0i))), var_2.x, arg_0.a.d.x), Struct_1(-16012i, 313f, vec2<f32>(arg_0.a.c.x, arg_0.a.b), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, 20690i), var_2, -vec2<i32>(var_1.x, arg_0.a.a)), arg_1.c.e), u_input.d, vec4<i32>(arg_0.a.a, -2147483647i, ~1i, arg_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = func_5(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), reverseBits(vec4<i32>(-2147483647i, 31625i, 61754i, -18260i)))), 340f, _wgslsmith_f_op_f32(964f + -1436f)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1105f, 498f)), all(vec3<bool>(false, true, false)), abs(var_0.yy)), 1i), Struct_5(_wgslsmith_f_op_f32(-469f - 198f), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1392f + 1309f), _wgslsmith_div_f32(282f, 691f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1386f)) + _wgslsmith_f_op_f32(step(-180f, 1061f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1158f)) - _wgslsmith_div_f32(-1164f, -237f)), func_2(_wgslsmith_div_f32(-753f, -638f), true, vec2<u32>(var_0.x, 1u)).b), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-245f, -1006f, -2035f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(357f, 945f, 436f), vec3<f32>(1547f, -1806f, 1681f)))), Struct_1(u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<f32>(-297f, 2296f), vec2<i32>(0i, u_input.b), vec2<bool>(true, true)), u_input.c).a, _wgslsmith_mult_i32(u_input.c, func_2(-634f, u_input.c < 1i, select(vec2<u32>(u_input.d, 4294967295u), var_0.zz, true)).d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~countOneBits(~4294967295u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_0.x), vec2<u32>(var_0.x, global0[_wgslsmith_index_u32(0u, 16u)])), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_1.c), 16u)])));
}

