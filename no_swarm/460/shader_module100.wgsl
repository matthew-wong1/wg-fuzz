struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec3<i32>(63924i, 1i, -31795i), vec3<i32>(2147483647i, 7216i, 2147483647i), vec4<bool>(true, false, false, true), 4294967295u), Struct_3(vec3<i32>(-1i, -7174i, 20500i), vec3<i32>(15688i, i32(-2147483648), 31296i), vec4<bool>(true, false, true, true), 4294967295u), Struct_3(vec3<i32>(-20526i, 0i, -1416i), vec3<i32>(-33383i, i32(-2147483648), 1i), vec4<bool>(false, true, false, true), 0u), Struct_3(vec3<i32>(0i, -16902i, i32(-2147483648)), vec3<i32>(46424i, -33832i, 1i), vec4<bool>(false, true, true, false), 57960u), Struct_3(vec3<i32>(9613i, 1i, 1i), vec3<i32>(2595i, 24472i, -8328i), vec4<bool>(false, true, true, true), 46784u), Struct_3(vec3<i32>(28879i, -10163i, 0i), vec3<i32>(-38085i, 3033i, -13959i), vec4<bool>(false, false, false, true), 10750u), Struct_3(vec3<i32>(-11400i, i32(-2147483648), -8839i), vec3<i32>(19453i, -29563i, -15598i), vec4<bool>(true, true, false, false), 79029u), Struct_3(vec3<i32>(16984i, 3113i, -12483i), vec3<i32>(2147483647i, 0i, -59081i), vec4<bool>(false, false, false, true), 0u), Struct_3(vec3<i32>(15205i, -48378i, -52545i), vec3<i32>(2147483647i, 1i, -27690i), vec4<bool>(false, true, true, true), 0u), Struct_3(vec3<i32>(0i, 0i, -3971i), vec3<i32>(1i, 1i, 17628i), vec4<bool>(true, false, false, false), 4294967295u), Struct_3(vec3<i32>(36185i, 0i, i32(-2147483648)), vec3<i32>(30899i, 9304i, 0i), vec4<bool>(false, true, true, true), 1u), Struct_3(vec3<i32>(-19490i, 46249i, 91656i), vec3<i32>(-31033i, 0i, -1i), vec4<bool>(false, true, false, false), 0u), Struct_3(vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(29344i, 26501i, 9094i), vec4<bool>(true, false, true, false), 0u), Struct_3(vec3<i32>(10748i, -10348i, -62914i), vec3<i32>(-3179i, 1i, 1i), vec4<bool>(true, true, true, true), 0u), Struct_3(vec3<i32>(-2026i, -37145i, 2147483647i), vec3<i32>(32861i, -6182i, 0i), vec4<bool>(true, false, false, true), 18144u), Struct_3(vec3<i32>(0i, -82023i, i32(-2147483648)), vec3<i32>(-37969i, -9409i, 0i), vec4<bool>(true, true, false, true), 4294967295u), Struct_3(vec3<i32>(2147483647i, 16987i, 19867i), vec3<i32>(-40043i, -4786i, -56143i), vec4<bool>(true, false, false, true), 1u), Struct_3(vec3<i32>(1i, 62108i, 45469i), vec3<i32>(44668i, -12581i, 1i), vec4<bool>(false, false, true, true), 64283u), Struct_3(vec3<i32>(14116i, -1i, -1i), vec3<i32>(11631i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, true, false, true), 0u), Struct_3(vec3<i32>(i32(-2147483648), 1i, -31722i), vec3<i32>(2147483647i, -46618i, -1i), vec4<bool>(false, true, false, false), 49080u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4) -> i32 {
    let var_0 = ~0u | global0.d;
    return global0.a.x;
}

fn func_2(arg_0: vec2<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_vec3_i32(-firstTrailingBit(select(abs(global0.b), vec3<i32>(-1i, global0.a.x, -2147483647i) << (vec3<u32>(0u, 71869u, u_input.c) % vec3<u32>(32u)), select(global1.zxw, vec3<bool>(global1.x, global1.x, global0.c.x), global1.zyy))), global0.a);
    global0 = Struct_3(vec3<i32>(2147483647i, ~(1i >> (firstLeadingBit(global0.d) % 32u)), _wgslsmith_clamp_i32(~func_3(-775f, Struct_1(u_input.a.x, u_input.d), Struct_4(vec2<i32>(-2147483647i, -11543i), vec4<u32>(1u, global0.d, 12235u, u_input.c))), _wgslsmith_add_i32(var_0.x, arg_0.x), (var_0.x & arg_0.x) >> (~global0.d % 32u))), _wgslsmith_mod_vec3_i32(global0.b, (vec3<i32>(-1i) * -vec3<i32>(-1i, 17337i, 1i)) >> (vec3<u32>(u_input.c, u_input.a.x, global0.d) % vec3<u32>(32u))), !(!(!select(global0.c, vec4<bool>(true, global0.c.x, false, global0.c.x), true))), 4294967295u);
    global0 = global2[_wgslsmith_index_u32(~1u, 20u)];
    var var_1 = vec2<f32>(-1862f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1236f))));
    var var_2 = 1u;
    return ~(vec4<u32>(~countOneBits(global0.d), 1u, ~global0.d, 0u) >> (_wgslsmith_mod_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(8835u, u_input.a.x, global0.d, global0.d), vec4<u32>(global0.d, u_input.c, global0.d, u_input.b.x), vec4<u32>(global0.d, 4294967295u, u_input.a.x, global0.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.a.x, 28385u), vec4<u32>(global0.d, u_input.b.x, 37595u, global0.d)), vec4<bool>(false, global0.c.x, global1.x, false)), select(vec4<u32>(u_input.c, 4294967295u, u_input.a.x, 31972u) >> (vec4<u32>(global0.d, u_input.a.x, global0.d, global0.d) % vec4<u32>(32u)), vec4<u32>(1u, 63436u, 1u, global0.d), !global0.c)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.b - arg_2.b), -771f));
    var var_1 = Struct_4(-vec2<i32>(~(~arg_2.d.b.x), 1i), ~abs(arg_0.b));
    var var_2 = arg_1;
    global1 = global0.c;
    let var_3 = vec2<bool>(true, false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1056f)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_4(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.d.wyx, vec3<i32>(-1i, u_input.d.x, global0.a.x) | vec3<i32>(-22004i, -27527i, global0.b.x)), global0.b.x), func_2(u_input.d.yz) | _wgslsmith_sub_vec4_u32(vec4<u32>(global0.d, 41015u, u_input.a.x, 55812u) >> (vec4<u32>(global0.d, global0.d, 0u, 5867u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(global0.d, 4294967295u, global0.d, 51538u)))), Struct_1(4294967295u, -firstLeadingBit(~u_input.d)), Struct_5(firstTrailingBit(~vec3<u32>(u_input.c, 13965u, global0.d) | ~vec3<u32>(global0.d, u_input.b.x, 4294967295u)), _wgslsmith_f_op_f32(-857f * _wgslsmith_f_op_f32(step(798f, -373f))), _wgslsmith_div_vec2_u32(vec2<u32>(~0u, ~4294967295u), _wgslsmith_clamp_vec2_u32(~u_input.b, vec2<u32>(6046u, 9399u), vec2<u32>(7952u, 48288u))), Struct_1(u_input.b.x, select(~u_input.d, countOneBits(u_input.d), global1.x))), !global0.c.yxz));
    var var_1 = Struct_1(~(~_wgslsmith_sub_u32(u_input.b.x, u_input.c) << (u_input.b.x % 32u)), abs(~(~(-vec4<i32>(u_input.d.x, 1i, 1i, global0.a.x)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(376f, 844f)))) * _wgslsmith_f_op_f32(918f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f), 1678f))));
    var var_2 = Struct_4(var_1.b.yz, vec4<u32>(4294967295u, ~var_1.a, var_1.a, ~(~global0.d & ~u_input.b.x)));
    let var_3 = Struct_5(var_2.b.ywy, 733f, ~(~vec2<u32>(1u, _wgslsmith_clamp_u32(var_2.b.x, global0.d, global0.d))), Struct_1(1u, -(~(vec4<i32>(var_2.a.x, 3619i, 45091i, var_1.b.x) ^ vec4<i32>(-9606i, 51816i, var_1.b.x, -1i)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, select(false, global0.c.x, false) | any(global0.c), all(vec2<bool>(false, global1.x))), vec3<bool>(!all(vec4<bool>(true, global0.c.x, false, global0.c.x)), !func_1(), !global0.c.x), all(!select(vec4<bool>(global1.x, true, true, false), global0.c, vec4<bool>(global1.x, true, global1.x, global0.c.x)))), select(!select(vec3<bool>(false, global1.x, false), !vec3<bool>(global0.c.x, global0.c.x, global1.x), any(vec3<bool>(false, true, global1.x))), select(global0.c.xyz, select(vec3<bool>(global1.x, false, false), vec3<bool>(false, false, global1.x), vec3<bool>(global0.c.x, global0.c.x, true)), global1.x), select(!select(vec3<bool>(global1.x, false, global0.c.x), vec3<bool>(false, false, global1.x), vec3<bool>(global0.c.x, true, global0.c.x)), global0.c.wwx, all(select(vec2<bool>(false, global1.x), vec2<bool>(global0.c.x, global1.x), vec2<bool>(true, global1.x))))), true);
    let var_1 = global0.c.wzw;
    global1 = global0.c;
    global2 = array<Struct_3, 20>();
    global1 = select(vec4<bool>(all(global0.c), var_1.x, select(true, var_1.x, true), true), select(vec4<bool>(any(global0.c), global1.x, global0.c.x & any(global0.c), false), vec4<bool>(all(!var_0.xx), u_input.d.x >= 1i, true, !var_0.x), vec4<bool>(select(all(global0.c.xxw), false, all(global0.c)), !(var_0.x && true), var_0.x, true)), any(vec4<bool>(false, true, var_0.x, true)));
    let var_2 = Struct_5(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.c, global0.d), ~(~vec3<u32>(58836u, 1u, 1u))) >> (~(~(~vec3<u32>(u_input.a.x, u_input.c, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(101f, _wgslsmith_f_op_f32(958f * -921f), global0.d < 1u)))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c & u_input.b.x), max(_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(global0.d, 54210u)), vec2<u32>(101723u, u_input.c))) >> (vec2<u32>(u_input.b.x, 75619u) % vec2<u32>(32u)), Struct_1(~_wgslsmith_dot_vec3_u32(~vec3<u32>(83380u, 58734u, u_input.a.x), vec3<u32>(4294967295u, u_input.c, 17470u) & vec3<u32>(0u, u_input.b.x, 30757u)), ~u_input.d));
    global2 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(max(var_2.d.b.x >> (global0.d % 32u), ~(-6261i)), ~abs(var_2.d.b.x)), -u_input.d.xx), var_2.c.x, countOneBits(~global0.b.x ^ var_2.d.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2453f, var_2.b, global0.c.x)), var_2.b)), _wgslsmith_f_op_f32(step(var_2.b, _wgslsmith_f_op_f32(func_4(Struct_4(var_2.d.b.wx, vec4<u32>(92815u, u_input.a.x, global0.d, var_2.c.x)), Struct_1(1u, vec4<i32>(u_input.d.x, global0.a.x, -16472i, var_2.d.b.x)), var_2, select(global0.c.zwz, global0.c.zzy, vec3<bool>(false, true, true))))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_2.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_2.b, var_2.b)))))), _wgslsmith_div_f32(141f, _wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(floor(var_2.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b))))));
}

