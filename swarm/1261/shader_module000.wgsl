struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<f32>(656f, 628f), vec4<i32>(0i, 2147483647i, 1i, -23414i), true, -30662i), Struct_1(vec2<f32>(682f, -1739f), vec4<i32>(-8799i, 2147483647i, -18010i, 0i), false, -17749i), Struct_1(vec2<f32>(152f, 759f), vec4<i32>(2147483647i, i32(-2147483648), 0i, -39866i), false, 43034i), Struct_1(vec2<f32>(-428f, -1061f), vec4<i32>(i32(-2147483648), -38139i, -1i, -1i), true, -20823i), Struct_1(vec2<f32>(119f, 798f), vec4<i32>(0i, 0i, -68901i, i32(-2147483648)), true, -41000i), Struct_1(vec2<f32>(-1059f, 1512f), vec4<i32>(0i, 1i, 0i, -7830i), true, 2147483647i), Struct_1(vec2<f32>(160f, -725f), vec4<i32>(20076i, -10473i, i32(-2147483648), 0i), true, -6256i), Struct_1(vec2<f32>(1097f, 873f), vec4<i32>(-1i, -46946i, 1i, 1i), true, -15520i), Struct_1(vec2<f32>(-175f, 1968f), vec4<i32>(30082i, -1i, 1i, -29321i), true, i32(-2147483648)), Struct_1(vec2<f32>(1000f, -1000f), vec4<i32>(23972i, 1i, 2147483647i, 16715i), false, -29847i), Struct_1(vec2<f32>(-1365f, 252f), vec4<i32>(-41214i, 37933i, -1i, 3239i), true, 9724i), Struct_1(vec2<f32>(-993f, -1663f), vec4<i32>(2147483647i, -21041i, 52094i, 58311i), true, -42891i), Struct_1(vec2<f32>(709f, -793f), vec4<i32>(2147483647i, -45342i, -26486i, 2147483647i), false, 1i), Struct_1(vec2<f32>(-1000f, -824f), vec4<i32>(9241i, -1i, 0i, 44870i), false, -19658i), Struct_1(vec2<f32>(968f, 798f), vec4<i32>(-2010i, 0i, -35643i, 59710i), true, -20481i), Struct_1(vec2<f32>(430f, 1000f), vec4<i32>(-1i, 1i, -37180i, 1i), true, 8247i), Struct_1(vec2<f32>(1000f, -171f), vec4<i32>(i32(-2147483648), -22703i, 0i, -10929i), true, -10106i), Struct_1(vec2<f32>(568f, -1769f), vec4<i32>(0i, 10115i, -19420i, 1i), true, -1i), Struct_1(vec2<f32>(-165f, 419f), vec4<i32>(0i, 0i, 0i, 1i), true, 30000i), Struct_1(vec2<f32>(268f, -881f), vec4<i32>(0i, -108363i, 2147483647i, 22404i), true, -609i), Struct_1(vec2<f32>(378f, -452f), vec4<i32>(-30822i, 36728i, -22940i, -49958i), true, -18362i), Struct_1(vec2<f32>(336f, 1043f), vec4<i32>(2147483647i, 0i, 24120i, 2147483647i), true, -15778i), Struct_1(vec2<f32>(1293f, -889f), vec4<i32>(1i, -19286i, 1i, 49178i), true, -26279i), Struct_1(vec2<f32>(-1035f, 392f), vec4<i32>(0i, 2147483647i, -22901i, 2147483647i), false, i32(-2147483648)), Struct_1(vec2<f32>(-1296f, -423f), vec4<i32>(-24948i, -37602i, 2147483647i, 17529i), true, 15711i), Struct_1(vec2<f32>(150f, -747f), vec4<i32>(-2836i, 0i, 37170i, -39173i), true, -6951i), Struct_1(vec2<f32>(1000f, -1000f), vec4<i32>(-1i, -16052i, -1i, 1i), false, -44861i), Struct_1(vec2<f32>(2025f, 964f), vec4<i32>(14592i, -26087i, -1i, 972i), false, 5274i), Struct_1(vec2<f32>(-402f, -1000f), vec4<i32>(8337i, -15398i, 0i, 1i), false, -7362i));

var<private> global1: array<u32, 31>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> f32 {
    global1 = array<u32, 31>();
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(16975u >> ((global1[_wgslsmith_index_u32(41238u, 31u)] << (u_input.c % 32u)) % 32u), u_input.c, u_input.c), 31u)]), 31u)], 8689u);
    global0 = array<Struct_1, 29>();
    let var_1 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49357u, 31u)] >> (4294967295u % 32u), 29u)];
    var var_2 = arg_1.a.x;
    global1 = array<u32, 31>();
    return vec2<f32>(2730f, var_1.a.x);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_4(global0[_wgslsmith_index_u32(~u_input.c, 29u)], Struct_1(vec2<f32>(1000f, _wgslsmith_f_op_f32(func_3(arg_0.x))), vec4<i32>(~u_input.b.x, ~2817i, u_input.a.x, countOneBits(u_input.b.x)), false, 11466i)))));
    return global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 51885u), ~select(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], false)), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 31u)], 31u)] | 3584u), 29u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    return arg_2;
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 29u)];
    global1 = array<u32, 31>();
    var_0 = func_5(arg_0, _wgslsmith_add_vec3_i32(vec3<i32>(~_wgslsmith_mod_i32(-1i, arg_0.b.x), -_wgslsmith_clamp_i32(arg_0.b.x, arg_0.d, var_0.b.x), ~(-11737i)), u_input.a.yzx), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1331f, arg_0.a.x, arg_0.a.x) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.x, arg_0.a.x, var_0.a.x)))))));
    var var_1 = countOneBits(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)]), vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 31u)], u_input.c, 0u)) & min(vec3<u32>(4450u, u_input.c, global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec3<u32>(20903u, u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 31u)], 31u)], 31u)], 31u)]))) & vec3<u32>(~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 13634u), 1u, firstLeadingBit(~1u)));
    global0 = array<Struct_1, 29>();
    return min(_wgslsmith_dot_vec2_u32(var_1.xy, ~(~var_1.yy)), ~(~abs(global1[_wgslsmith_index_u32(var_1.x, 31u)]))) >= min(_wgslsmith_add_u32(0u & var_1.x, select(var_1.x, 95610u, true)) << (_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52379u, 31u)], 31u)] >> (4294967295u % 32u), firstTrailingBit(var_1.x)) % 32u), global1[_wgslsmith_index_u32(var_1.x, 31u)]);
}

fn func_6(arg_0: i32, arg_1: vec4<f32>, arg_2: i32) -> StorageBuffer {
    let var_0 = max(vec3<u32>(u_input.c >> (global1[_wgslsmith_index_u32(12491u, 31u)] % 32u), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~1u, 31u)], firstLeadingBit(31187u), u_input.c), _wgslsmith_div_u32(u_input.c, u_input.c)) ^ firstLeadingBit(max(countOneBits(vec3<u32>(1u, global1[_wgslsmith_index_u32(5401u, 31u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1884u, 31u)], 31u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 31u)], 31u)], 0u, 21065u), vec3<u32>(4294967295u, 36833u, 4294967295u)))), ~vec3<u32>(u_input.c, ~(4294967295u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27528u, 31u)], 31u)]), ~abs(27781u)));
    global1 = array<u32, 31>();
    var var_1 = -1000f;
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)) * arg_1.yz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)) + _wgslsmith_f_op_vec2_f32(arg_1.wz * vec2<f32>(arg_1.x, arg_1.x))), arg_1.xy)), select(vec4<i32>(_wgslsmith_div_i32(1i, u_input.b.x), 995i, 1i, u_input.a.x), vec4<i32>(-5636i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.a.x, -1i, arg_2) ^ u_input.a, u_input.a), firstLeadingBit(6636i) << (1u % 32u), 59625i), select(vec4<bool>(true, any(vec4<bool>(false, true, true, false)), func_5(Struct_1(arg_1.yx, u_input.a, false, -1i), u_input.b.yyw, global0[_wgslsmith_index_u32(var_0.x, 29u)]).c, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), true)), any(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, select(true, any(vec2<bool>(true, true)), true), _wgslsmith_clamp_i32(16341i, arg_2, arg_2) == -2147483647i)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x), -20951i, -12951i), min(i32(-1i) * -2147483647i, i32(-1i) * -60460i)) & -arg_0);
    let var_3 = 38924i;
    return StorageBuffer(0u, min(var_0.xx, var_0.xz), -1000f, _wgslsmith_f_op_f32(sign(var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1000f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-290f)) - 301f), _wgslsmith_f_op_f32(608f * -1444f))))), _wgslsmith_f_op_f32(f32(-1f) * -362f));
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global1 = array<u32, 31>();
    var var_1 = firstTrailingBit(u_input.a.ww);
    let x = u_input.a;
    s_output = func_6(_wgslsmith_clamp_i32(select(~(~(-59778i)), (-1i | u_input.b.x) << ((u_input.c | 0u) % 32u), func_1(global0[_wgslsmith_index_u32(u_input.c, 29u)])), max(i32(-1i) * -1i, ~(3174i >> (global1[_wgslsmith_index_u32(u_input.c, 31u)] % 32u))), _wgslsmith_div_i32(_wgslsmith_mult_i32(i32(-1i) * -2852i, i32(-1i) * -29467i), firstTrailingBit(i32(-1i) * -1i))), vec4<f32>(-1430f, var_0.x, var_0.x, var_0.x), abs(abs(35947i)));
}

