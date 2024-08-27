struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7>;

var<private> global1: Struct_1 = Struct_1(1u, vec3<f32>(-1007f, -177f, -756f), vec4<f32>(492f, -1436f, 602f, -174f));

var<private> global2: bool = true;

var<private> global3: array<bool, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec2<f32> {
    let var_0 = Struct_3(all(vec2<bool>(true, global3[_wgslsmith_index_u32(~arg_0.x, 18u)])), -217f, Struct_1(countOneBits(_wgslsmith_add_u32(103604u, 1u)), _wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(_wgslsmith_div_f32(388f, 548f), -438f, _wgslsmith_f_op_f32(-942f - global1.c.x))), global1.c), Struct_2(698f, ~firstTrailingBit(vec3<i32>(-9211i, -2147483647i, -69005i)), ~reverseBits(arg_0) | abs(arg_0), global1.c.wx));
    let var_1 = abs(arg_1.x);
    let var_2 = _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(global1.a, 7u)] ^ vec4<u32>(~(~0u), 30688u, ~countOneBits(global1.a), 1u), ~_wgslsmith_mod_vec4_u32(arg_1, max(~vec4<u32>(0u, 68222u, var_0.c.a, 63858u), vec4<u32>(global1.a, 0u, 77951u, var_0.d.c.x) | arg_1)));
    let var_3 = max(-1i, countOneBits(5957i)) & firstTrailingBit(-1924i);
    let var_4 = 1u < abs(select(select(22581u & var_0.d.c.x, 5195u, var_0.a), ~(~arg_1.x), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, arg_1.x), 18u)]));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.c.wx - vec2<f32>(var_0.c.c.x, _wgslsmith_f_op_f32(sign(-284f)))), var_0.d.d);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> Struct_2 {
    var var_0 = 78712u;
    var var_1 = i32(-1i) * -26467i;
    var var_2 = Struct_1(1u, vec3<f32>(385f, arg_1.x, global1.c.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.c, vec4<f32>(global1.c.x, global1.b.x, 1477f, global1.b.x), vec4<bool>(true, global3[_wgslsmith_index_u32(arg_0.c.x, 18u)], true, true)))))))));
    var var_3 = arg_0.d;
    let var_4 = ~firstTrailingBit(-arg_2);
    return Struct_2(218f, firstLeadingBit(min(vec3<i32>(-arg_2, 1i, _wgslsmith_mult_i32(var_4, arg_2)), arg_0.b ^ (arg_0.b >> (vec3<u32>(arg_0.c.x, 4294967295u, 14462u) % vec3<u32>(32u))))), arg_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.c.x, 4294967295u, arg_0.c.x), arg_0.c, firstLeadingBit(vec3<u32>(arg_0.c.x, var_2.a, 26073u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0.c.x, 1u, 4294967295u), vec4<u32>(0u, 1u, arg_0.c.x, arg_0.c.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, global1.c.x, _wgslsmith_div_f32(arg_2.x, arg_0.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global1.c.xyz)))))))));
    global3 = array<bool, 18>();
    var var_1 = Struct_3(all(vec4<bool>(global3[_wgslsmith_index_u32(~(~55668u), 18u)], true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.c, arg_0.c), 18u)], true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1261f * 108f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f + _wgslsmith_f_op_f32(global1.b.x * var_0.x)))), Struct_1(~arg_1.c.x << (abs(_wgslsmith_mod_u32(arg_1.c.x, 4294967295u)) % 32u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b - global1.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, -690f, 472f) - global1.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(483f, global1.b.x, 1439f) + vec3<f32>(arg_0.a, -662f, arg_2.x)), _wgslsmith_f_op_vec3_f32(-global1.c.yzz))))), global1.c), func_2(Struct_2(arg_1.d.x, vec3<i32>(_wgslsmith_add_i32(arg_0.b.x, -1i), arg_1.b.x, u_input.a), reverseBits(vec3<u32>(4034u, 1u, 4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2, global1.c.yw))), arg_1.d, max(-_wgslsmith_add_i32(arg_1.b.x, 30123i), _wgslsmith_clamp_i32(-1i, ~7166i, ~5647i))));
    global2 = var_1.a;
    var_1 = Struct_3(select(any(select(vec2<bool>(true, true), select(vec2<bool>(var_1.a, true), vec2<bool>(true, false), vec2<bool>(true, false)), global3[_wgslsmith_index_u32(arg_0.c.x, 18u)])), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, abs(arg_1.c.x)), ~(~1u)), 18u)], true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + 805f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2731f * _wgslsmith_f_op_f32(-arg_2.x)))), Struct_1(~(13242u >> ((arg_0.c.x & var_1.d.c.x) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1085f, -1000f, -633f) + var_1.c.c.ywz), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a, -1184f, var_1.c.b.x), global1.c.zxw))) - var_1.c.b), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -288f))), -670f, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1550f, 1000f)) - -686f))), Struct_2(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x))), var_1.d.b, countOneBits(firstTrailingBit(arg_0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx) * arg_1.d)));
    return any(vec4<bool>(all(!select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, global3[_wgslsmith_index_u32(arg_1.c.x, 18u)], true), vec3<bool>(false, false, global3[_wgslsmith_index_u32(var_1.c.a, 18u)]))), select(any(!vec2<bool>(var_1.a, true)), var_1.a, false), true, false));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec2<i32> {
    let var_0 = select(-select(vec3<i32>(0i, -27302i, u_input.a & -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, u_input.a, u_input.a)), select(vec3<bool>(global3[_wgslsmith_index_u32(38997u, 18u)], true, global3[_wgslsmith_index_u32(global1.a, 18u)]), vec3<bool>(false, false, arg_1), true)), vec3<i32>(_wgslsmith_div_i32(min(u_input.a, u_input.a), u_input.a), ~u_input.a, abs(-37135i)), vec3<bool>(!(!select(global3[_wgslsmith_index_u32(global1.a, 18u)], true, false)), func_4(func_2(Struct_2(global1.c.x, vec3<i32>(u_input.a, u_input.a, -1i), vec3<u32>(0u, global1.a, global1.a), vec2<f32>(arg_0, arg_0)), vec2<f32>(arg_0, arg_0), u_input.a), func_2(Struct_2(arg_0, vec3<i32>(-21963i, 10287i, 16433i), vec3<u32>(global1.a, global1.a, global1.a), vec2<f32>(1159f, 145f)), vec2<f32>(global1.b.x, -905f), 41732i), _wgslsmith_f_op_vec2_f32(-global1.c.wy)) && global3[_wgslsmith_index_u32(~select(global1.a, 0u, false), 18u)], true));
    let var_1 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(abs(-2535f)));
    var var_2 = 31463u;
    global0 = array<vec4<u32>, 7>();
    let var_3 = global1.a & global1.a;
    return select(~var_0.yx, reverseBits(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -3561i, -1i, 29503i), vec4<i32>(u_input.a, u_input.a, -1961i, u_input.a)))), arg_1) >> (vec2<u32>(global1.a, var_3) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    let var_1 = select(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-32130i, 0i) >> ((vec2<u32>(25804u, global1.a) >> (vec2<u32>(7801u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), func_1(_wgslsmith_f_op_f32(trunc(-430f)), true))), u_input.a, all(select(vec3<bool>(true, !global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(~71738u, 18u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(abs(42475u), 18u)], false), global3[_wgslsmith_index_u32(4294967295u << (global1.a % 32u), 18u)])));
    let var_2 = Struct_3(global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~global1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.a), vec2<u32>(global1.a, global1.a) | vec2<u32>(42374u, global1.a))), 18u)], 890f, Struct_1(func_2(func_2(Struct_2(global1.c.x, vec3<i32>(1i, -13109i, 6118i), vec3<u32>(1u, global1.a, 0u), global1.c.zz), global1.b.zz, var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-512f, 887f))), -(~var_1)).c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-757f, global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -418f))), _wgslsmith_f_op_vec4_f32(-global1.c)), func_2(func_2(func_2(func_2(Struct_2(-1446f, vec3<i32>(u_input.a, 0i, var_1), vec3<u32>(global1.a, 1u, 128762u), global1.b.xx), vec2<f32>(1495f, -862f), 1i), vec2<f32>(979f, global1.c.x), -4758i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-470f, 999f)))), 4701i), _wgslsmith_f_op_vec2_f32(-global1.c.wy), ~func_1(_wgslsmith_f_op_f32(trunc(global1.c.x)), 1u > global1.a).x));
    var var_3 = (global0[_wgslsmith_index_u32(~(~(~0u)), 7u)] >> (vec4<u32>(abs(4294967295u), _wgslsmith_dot_vec2_u32(~var_2.d.c.zz, var_2.d.c.yz), 75165u, 75119u) % vec4<u32>(32u))) >> (~select(firstTrailingBit(vec4<u32>(36694u, global1.a, var_2.c.a, var_2.c.a)), global0[_wgslsmith_index_u32(1u, 7u)] & vec4<u32>(0u, 45838u, global1.a, global1.a), !vec4<bool>(var_2.a, false, true, false)) % vec4<u32>(32u));
    var var_4 = !vec3<bool>(all(!select(vec4<bool>(true, var_2.a, var_2.a, true), vec4<bool>(global3[_wgslsmith_index_u32(0u, 18u)], var_2.a, false, false), true)), any(!select(vec4<bool>(var_2.a, true, var_2.a, false), vec4<bool>(true, global3[_wgslsmith_index_u32(global1.a, 18u)], true, false), global3[_wgslsmith_index_u32(global1.a, 18u)])), all(!(!vec2<bool>(var_2.a, global3[_wgslsmith_index_u32(0u, 18u)]))));
    var var_5 = _wgslsmith_f_op_vec2_f32(func_3(~(~(vec3<u32>(var_2.c.a, 34541u, 4294967295u) & var_2.d.c) | var_3.yzy), select(~min(global0[_wgslsmith_index_u32(var_2.c.a, 7u)], global0[_wgslsmith_index_u32(var_2.d.c.x, 7u)]) & countOneBits(~vec4<u32>(19390u, global1.a, 128545u, 49345u)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 28416u, 14502u, 4294967295u), global0[_wgslsmith_index_u32(var_2.d.c.x, 7u)]), select(vec4<u32>(34721u, 93720u, var_2.d.c.x, 4294967295u), global0[_wgslsmith_index_u32(var_2.c.a, 7u)], true), global0[_wgslsmith_index_u32(var_2.d.c.x, 7u)]), countOneBits(global0[_wgslsmith_index_u32(15984u, 7u)]) << (_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(1u, 7u)], vec4<u32>(var_2.d.c.x, 25979u, global1.a, 48060u)) % vec4<u32>(32u))), -func_2(var_2.d, var_2.d.d, var_1).b.x <= var_1))).x;
    global1 = Struct_1(var_3.x & 6214u, var_2.c.c.xzw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 926f), -2727f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(678f - var_2.d.a)), 314f, _wgslsmith_f_op_f32(select(var_2.c.c.x, _wgslsmith_f_op_f32(-var_2.b), true)))));
    global2 = var_4.x;
    var var_6 = Struct_1(39924u, global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -146f), -1157f, -347f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstLeadingBit(var_2.c.a), 1u));
}

