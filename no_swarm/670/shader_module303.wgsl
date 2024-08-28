struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true, -10796i), Struct_1(true, 2147483647i), Struct_1(false, i32(-2147483648)), Struct_1(false, -46573i), Struct_1(false, 20911i), Struct_1(true, 0i), Struct_1(true, 29633i), Struct_1(false, 0i), Struct_1(false, 2147483647i), Struct_1(true, i32(-2147483648)), Struct_1(true, 26710i), Struct_1(true, -1i), Struct_1(true, 0i), Struct_1(true, -2969i), Struct_1(false, -1i), Struct_1(false, 36771i), Struct_1(false, 17343i), Struct_1(false, i32(-2147483648)), Struct_1(false, 14873i), Struct_1(false, i32(-2147483648)), Struct_1(true, 31380i), Struct_1(false, -783i), Struct_1(false, -12791i), Struct_1(false, -7381i), Struct_1(false, 35756i), Struct_1(false, 26313i), Struct_1(true, i32(-2147483648)), Struct_1(true, -30414i), Struct_1(true, 23526i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = min(vec2<u32>(_wgslsmith_clamp_u32(~1u, min(4294967295u, 2157u), 1u), max(_wgslsmith_mult_u32(1u, ~4294967295u), firstTrailingBit(~10771u))), select(vec2<u32>(22361u, ~0u), vec2<u32>(1u, 1u), select(!select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, arg_0.a), arg_0.a), select(select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, arg_0.a), arg_0.a), vec2<bool>(true, false), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, arg_0.a), vec2<bool>(false, false))), arg_0.a)));
    var_0 = vec2<u32>(1u, 35090u);
    var var_1 = select(abs(-vec2<i32>(5092i, arg_0.b)), _wgslsmith_div_vec2_i32(~(~vec2<i32>(arg_0.b, arg_0.b)), u_input.a), arg_0.a) >> ((~(~vec2<u32>(4294967295u, var_0.x)) >> (vec2<u32>(var_0.x, 32465u) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = Struct_3(~1335u, arg_0, Struct_2(min(vec2<i32>(2147483647i >> (var_0.x % 32u), 0i), -u_input.a & ~u_input.a), min(~firstTrailingBit(var_0.x), _wgslsmith_mod_u32(var_0.x, var_0.x & var_0.x)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.x, 0u), _wgslsmith_add_u32(98001u, 22326u)) ^ ~(~var_0.x)), Struct_1(!any(select(vec2<bool>(arg_0.a, false), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a))), _wgslsmith_mod_i32(arg_0.b, 1i)), global0[_wgslsmith_index_u32(18805u << (_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(var_0.x, var_0.x)), vec2<u32>(4798u, abs(var_0.x))) % 32u), 17u)]);
    var var_3 = -1216f;
    return max(~62132u, _wgslsmith_mult_u32(reverseBits(33889u), firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(var_0.x, 4294967295u), ~1u))));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = arg_1.d;
    global2 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, ~(~82101u | arg_1.a), arg_1.a, 1u), ~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.c.b, 1u, arg_1.a, arg_1.c.b), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a, arg_1.a, arg_1.a, arg_1.c.b), vec4<u32>(5626u, 4294967295u, 1u, arg_1.c.b)))));
    global0 = array<f32, 17>();
    let var_2 = select(vec2<u32>(func_3(Struct_1(any(vec4<bool>(true, var_0.a, arg_1.b.a, false)), 0i), arg_2.x), 0u), ~var_1.zy, vec2<bool>(true, any(!vec4<bool>(var_0.a, var_0.a, true, var_0.a))));
    return Struct_2(~(~_wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(var_0.b, -11480i) & arg_1.c.a)), 91473u, 101838u & _wgslsmith_div_u32(~abs(0u), ~_wgslsmith_mult_u32(var_2.x, var_1.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global1 = countOneBits(select(firstLeadingBit(1u), 1u, arg_1.a));
    var var_0 = Struct_1(~(~arg_2.b) > ~_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_2.b, 4294967295u), arg_2.c), abs(1i));
    var var_1 = Struct_1(var_0.a, 0i);
    var var_2 = -min(arg_0.x, var_1.b ^ 2147483647i);
    var var_3 = Struct_3(1u & arg_2.c, Struct_1(var_1.a, func_2(2147483647i, Struct_3(firstTrailingBit(4294967295u), global2[_wgslsmith_index_u32(arg_2.c, 29u)], Struct_2(vec2<i32>(2147483647i, -1i), 0u, 38865u), Struct_1(arg_1.a, arg_1.b), global0[_wgslsmith_index_u32(min(arg_2.b, arg_2.c), 17u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_2.b, 17u)], global0[_wgslsmith_index_u32(arg_2.b, 17u)]) * vec2<f32>(681f, global0[_wgslsmith_index_u32(4294967295u, 17u)])))).a.x), Struct_2(~arg_2.a, firstTrailingBit(func_3(Struct_1(false, arg_0.x), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 17u)], -117f)))), arg_2.c), Struct_1(all(vec3<bool>(true, false, true)), _wgslsmith_div_i32(~(-14260i), arg_2.a.x)), global0[_wgslsmith_index_u32(arg_2.c, 17u)]);
    return global2[_wgslsmith_index_u32(abs(~((_wgslsmith_dot_vec2_u32(vec2<u32>(56159u, 0u), vec2<u32>(arg_2.c, 1u)) ^ 1u) << (~var_3.c.c % 32u))), 29u)];
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_2 {
    global1 = countOneBits(select(arg_1.a, 0u, true)) ^ arg_1.a;
    var var_0 = arg_1.d;
    var_0 = arg_1.d;
    global2 = array<Struct_1, 29>();
    global0 = array<f32, 17>();
    return Struct_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(-u_input.a, vec2<i32>(_wgslsmith_sub_i32(-1943i, var_0.b), i32(-1i) * -1i)), vec2<i32>(var_0.b, _wgslsmith_add_i32(firstLeadingBit(1i), -30574i)), _wgslsmith_mod_vec2_i32(abs(~vec2<i32>(-28392i, -26797i)), -arg_1.c.a << (abs(vec2<u32>(arg_1.c.b, arg_1.c.b)) % vec2<u32>(32u)))), arg_1.c.c, _wgslsmith_mod_u32(29681u, 1u));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 688f, _wgslsmith_f_op_f32(min(2500f, global0[_wgslsmith_index_u32(23262u, 17u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 22909u), 17u)] - 855f))), Struct_3(firstLeadingBit(11922u), func_4(_wgslsmith_mod_vec4_i32(max(vec4<i32>(-63528i, 43848i, -2147483647i, 10188i), vec4<i32>(u_input.a.x, -1i, u_input.a.x, 10995i)), abs(vec4<i32>(u_input.a.x, -28672i, u_input.a.x, u_input.a.x))), Struct_1(true, -1i), func_2(-15671i, Struct_3(79562u, Struct_1(true, u_input.a.x), Struct_2(u_input.a, 1u, 4294967295u), global2[_wgslsmith_index_u32(3391u, 29u)], global0[_wgslsmith_index_u32(7560u, 17u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1425f, global0[_wgslsmith_index_u32(1u, 17u)])))), func_2(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) ^ 2147483647i, Struct_3(1u, global2[_wgslsmith_index_u32(firstLeadingBit(1u), 29u)], func_2(u_input.a.x, Struct_3(33552u, global2[_wgslsmith_index_u32(39937u, 29u)], Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), 2866u, 85928u), global2[_wgslsmith_index_u32(23984u, 29u)], -402f), vec2<f32>(global0[_wgslsmith_index_u32(28187u, 17u)], -766f)), Struct_1(true, u_input.a.x), 345f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1781f, -526f), vec2<f32>(global0[_wgslsmith_index_u32(41112u, 17u)], global0[_wgslsmith_index_u32(67815u, 17u)]), vec2<bool>(true, true))) * vec2<f32>(204f, global0[_wgslsmith_index_u32(1u, 17u)]))), Struct_1(select(true, global0[_wgslsmith_index_u32(1u, 17u)] != global0[_wgslsmith_index_u32(21048u, 17u)], false), -2147483647i), 849f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23277u, 17u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(9536u, 17u)] - global0[_wgslsmith_index_u32(42265u, 17u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(285f, global0[_wgslsmith_index_u32(25323u, 17u)]) * vec2<f32>(-261f, global0[_wgslsmith_index_u32(45789u, 17u)]))), true)))));
    global1 = 13651u;
    let var_1 = vec2<i32>(-20836i, max(var_0.a.x, -7844i)) ^ abs(-var_0.a | vec2<i32>(reverseBits(u_input.a.x), var_0.a.x));
    let var_2 = vec4<bool>(false, any(select(vec4<bool>(true, true, func_4(vec4<i32>(var_0.a.x, 1i, var_1.x, 22762i), global2[_wgslsmith_index_u32(var_0.b, 29u)], Struct_2(vec2<i32>(-19547i, var_1.x), var_0.c, 34523u)).a, false), vec4<bool>(all(vec3<bool>(true, false, false)), false, true, true), -2147483647i > firstTrailingBit(u_input.a.x))), all(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), true)), any(vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), false, all(vec4<bool>(true, true, true, true)), true)));
    var var_3 = !select(!(!select(var_2.ywz, vec3<bool>(true, false, var_2.x), vec3<bool>(true, var_2.x, false))), var_2.ywz, (any(vec3<bool>(true, var_2.x, var_2.x)) || (global0[_wgslsmith_index_u32(var_0.b, 17u)] >= global0[_wgslsmith_index_u32(17818u, 17u)])) && true);
    return global2[_wgslsmith_index_u32(1u ^ (var_0.c | _wgslsmith_mult_u32(4294967295u >> (var_0.c % 32u), var_0.b)), 29u)];
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 29>();
    var var_0 = Struct_3(15226u, global2[_wgslsmith_index_u32(~func_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(795f, 916f, global0[_wgslsmith_index_u32(1u, 17u)], -672f))))), Struct_3(select(4294967295u, 23200u, true), func_4(vec4<i32>(u_input.a.x, 32513i, u_input.a.x, arg_0.b), Struct_1(arg_0.a, -2147483647i), Struct_2(u_input.a, 0u, 11886u)), func_5(vec4<f32>(-248f, 1321f, -1966f, global0[_wgslsmith_index_u32(37027u, 17u)]), Struct_3(1u, global2[_wgslsmith_index_u32(0u, 29u)], Struct_2(u_input.a, 4294967295u, 4294967295u), Struct_1(true, arg_0.b), global0[_wgslsmith_index_u32(14493u, 17u)]), vec2<f32>(-157f, global0[_wgslsmith_index_u32(9165u, 17u)])), Struct_1(true, 30236i), 750f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(591f, global0[_wgslsmith_index_u32(4294967295u, 17u)])))))).b, 29u)], func_2(u_input.a.x, Struct_3(46066u, Struct_1(all(vec3<bool>(false, true, false)), u_input.a.x), Struct_2(u_input.a, ~10242u, func_2(u_input.a.x, Struct_3(32370u, global2[_wgslsmith_index_u32(147588u, 29u)], Struct_2(u_input.a, 1u, 76773u), Struct_1(arg_0.a, -2147483647i), -1000f), vec2<f32>(1755f, global0[_wgslsmith_index_u32(1u, 17u)])).c), func_4(firstLeadingBit(vec4<i32>(31567i, arg_0.b, 2147483647i, arg_0.b)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(76076u, 6437u), 29u)], func_5(vec4<f32>(460f, global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(24919u, 17u)]), Struct_3(0u, Struct_1(false, -1i), Struct_2(vec2<i32>(26877i, -8351i), 56348u, 1u), arg_0, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<f32>(-329f, 230f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1845f) * 1094f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(33635u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<f32>(319f, 422f)))))), Struct_1(false, u_input.a.x >> (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(abs(65809u), 17u)])) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24025u, 17u)]))))));
    let var_1 = var_0.c;
    global1 = _wgslsmith_mult_u32(var_1.b, _wgslsmith_sub_u32(4294967295u, 1u));
    var var_2 = arg_0.a;
    return func_4(abs(min(-vec4<i32>(-1i, 9097i, var_1.a.x, 1i), reverseBits(vec4<i32>(u_input.a.x, arg_0.b, 1i, arg_0.b)))), Struct_1(select(!all(vec4<bool>(arg_0.a, false, false, false)), true | select(false, arg_0.a, var_0.b.a), select(true, true, any(vec4<bool>(var_0.b.a, true, true, var_0.b.a)))), reverseBits(116065i)), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1());
    global0 = array<f32, 17>();
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~8660u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(32154u, 1u, 1u, 5654u)), vec4<u32>(_wgslsmith_div_u32(4294967295u, 74104u), 1u, ~41837u, 1u))), reverseBits(reverseBits(select(vec2<u32>(8742u, 4294967295u), ~vec2<u32>(103124u, 21063u), !vec2<bool>(var_0.a, true)))));
    global1 = var_1;
    let var_2 = -vec3<i32>(_wgslsmith_sub_i32(~1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, var_0.b, var_0.b), vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, 1i))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.a.x, 2147483647i, var_0.b), vec4<i32>(u_input.a.x, 1147i, u_input.a.x, 71737i), vec4<i32>(var_0.b, var_0.b, 2147483647i, u_input.a.x)), abs(vec4<i32>(var_0.b, var_0.b, -1i, 18329i))) >> (var_1 % 32u), _wgslsmith_div_i32(-u_input.a.x << (var_1 % 32u), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.b);
}

