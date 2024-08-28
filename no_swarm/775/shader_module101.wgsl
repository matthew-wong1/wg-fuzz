struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(-1i, 32351i, 18827i, 24832i, 22055i, 2147483647i, 26111i, -22498i, 2147483647i, 35945i, 9484i, 2147483647i, i32(-2147483648), -1i, -51390i, i32(-2147483648), -1i, -1i, -1i, 1i, 0i, -35277i, -59638i, 41320i, -1i, i32(-2147483648), 0i, -2203i, -1i, 33519i, 38638i);

var<private> global1: array<f32, 16>;

var<private> global2: array<Struct_2, 13>;

var<private> global3: array<f32, 28> = array<f32, 28>(-1908f, -1332f, -1201f, -3230f, -299f, 1296f, 1701f, -1000f, 705f, 831f, -397f, -1279f, 603f, -1458f, -1000f, 328f, -600f, -1893f, 845f, -2358f, 1977f, 452f, 284f, 331f, 322f, -1455f, -1261f, 530f);

var<private> global4: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    let var_0 = !select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), true), vec3<bool>(u_input.a != u_input.c, -1840f <= global1[_wgslsmith_index_u32(1u, 16u)], false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), any(vec2<bool>(false, true)))));
    let var_1 = Struct_4(firstLeadingBit(arg_1), var_0.x);
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.x - global3[_wgslsmith_index_u32(u_input.c, 28u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(29791u, 16u)] - arg_3.x), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(39414u, 28u)])), -1000f))));
    var var_3 = Struct_4(min(var_1.a, arg_1), any(!select(vec4<bool>(var_1.b, var_1.b, false, var_1.b), select(vec4<bool>(false, var_1.b, var_0.x, var_0.x), vec4<bool>(var_1.b, false, var_0.x, var_0.x), var_0.x), select(var_1.b, true, var_1.b))));
    var_3 = Struct_4(~var_3.a, true && (u_input.a != ~64891u));
    return !select(1f != _wgslsmith_f_op_f32(round(arg_2.a.x)), !(true & var_3.b), ((u_input.c >> (u_input.b.x % 32u)) ^ u_input.c) != u_input.b.x);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    var var_0 = !select(vec4<bool>(!func_3(vec2<i32>(1i, 9167i), vec2<i32>(-24733i, arg_1.b.c), Struct_3(vec3<f32>(-1000f, 132f, 1000f)), vec2<f32>(global3[_wgslsmith_index_u32(arg_0.d.a.x, 28u)], arg_1.b.b)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), !all(vec4<bool>(false, true, false, true)), -1000f > arg_0.b.x), vec4<bool>(-arg_1.a.c != -arg_0.c.b.c, true, true, all(vec2<bool>(true, true))), true);
    let var_1 = var_0.xw;
    var var_2 = _wgslsmith_f_op_f32(-555f * -585f);
    global1 = array<f32, 16>();
    global2 = array<Struct_2, 13>();
    return _wgslsmith_mod_u32(u_input.b.x, (arg_0.c.b.a.x << (arg_0.a.x % 32u)) ^ countOneBits(max(_wgslsmith_mult_u32(arg_0.c.a.d.x, u_input.c), ~43808u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = ~vec3<u32>(func_2(Struct_5(~u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, 1260f, 413f, arg_2.a.x)), global2[_wgslsmith_index_u32(~20924u, 13u)], arg_0.a), arg_0, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1597f, global3[_wgslsmith_index_u32(arg_0.a.a.x, 28u)], 1546f)))), 22521u, max(arg_0.b.d.x | _wgslsmith_dot_vec4_u32(vec4<u32>(18324u, 1u, 4294967295u, u_input.c), vec4<u32>(u_input.b.x, arg_0.a.a.x, 77305u, 0u)), ~arg_0.b.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(306f - _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(45102u, 16u)])))), 1515f, -302f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(153f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.b.d.x, 28u)] * 556f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1488f)))), -1910f, 605f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, global3[_wgslsmith_index_u32(u_input.b.x, 28u)], 1272f, -111f), vec4<f32>(-1496f, arg_0.a.b, var_1.x, 593f), vec4<bool>(false, true, false, true))))), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.b.b)), -1000f, arg_0.a.b, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 16u)] + 938f)))));
    let var_3 = 1i;
    var var_4 = arg_0.b.d.xy;
    return !select(!vec3<bool>(select(true, false, true), true, true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, any(vec4<bool>(false, false, true, true))), vec3<bool>(false, true, 0u < u_input.c)), func_3(vec2<i32>(~global0[_wgslsmith_index_u32(arg_0.a.d.x, 31u)], ~1i), vec2<i32>(~(-69497i), countOneBits(2147483647i)), Struct_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], 338f, 537f)))), arg_2.a.zx));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>) -> Struct_3 {
    global2 = array<Struct_2, 13>();
    let var_0 = vec2<u32>(max(_wgslsmith_mult_u32(firstTrailingBit(u_input.b.x & 46883u), u_input.c), u_input.c), ~_wgslsmith_mult_u32(u_input.c, 0u) >> (~u_input.c % 32u));
    let var_1 = select(select(abs(firstLeadingBit(vec4<i32>(0i, global0[_wgslsmith_index_u32(88561u, 31u)], 0i, 0i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -24809i, 2147483647i, 32831i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)], 2147483647i, 6104i)), select(vec4<bool>(false || arg_0, all(arg_1), !arg_1.x, !arg_1.x), !(!vec4<bool>(arg_1.x, arg_0, arg_1.x, arg_1.x)), select(!vec4<bool>(true, true, arg_1.x, true), select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, true, arg_0, arg_0), arg_0), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)))), abs(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(0u, 31u)], i32(-1i) * -51753i, -global0[_wgslsmith_index_u32(u_input.a, 31u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)])))), false);
    global4 = true;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a), 13u)];
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(15441u, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)], var_2.b.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 31>();
    var var_0 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 28u)]);
    let var_1 = func_4(any(!func_1(Struct_2(Struct_1(vec4<u32>(u_input.c, 62677u, u_input.c, 2458u), global3[_wgslsmith_index_u32(5094u, 28u)], global0[_wgslsmith_index_u32(1u, 31u)], vec3<u32>(0u, u_input.b.x, u_input.b.x)), Struct_1(vec4<u32>(12184u, 88507u, u_input.a, u_input.a), 759f, global0[_wgslsmith_index_u32(u_input.a, 31u)], vec3<u32>(1u, u_input.a, u_input.c))), vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a, 31u)], -52098i, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), Struct_3(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], -1000f, global1[_wgslsmith_index_u32(u_input.c, 16u)])))), !vec2<bool>(true, 0i > (-1i >> (u_input.b.x % 32u))));
    let var_2 = Struct_1(max(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, 1u), vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.b.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.c, 0u), vec4<u32>(4294967295u, u_input.c, 57259u, u_input.b.x) | vec4<u32>(u_input.a, u_input.c, u_input.a, 40934u))), countOneBits(~vec4<u32>(0u, 17529u, 0u, u_input.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1479f, var_1.a.x)), 974f, (global0[_wgslsmith_index_u32(4294967295u, 31u)] >= -62454i) && (global0[_wgslsmith_index_u32(u_input.b.x, 31u)] > global0[_wgslsmith_index_u32(u_input.b.x, 31u)]))))), max(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)]), vec2<i32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(~33486u, 31u)])), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(global0[_wgslsmith_index_u32(12943u, 31u)], -2147483647i)), vec2<i32>(~global0[_wgslsmith_index_u32(u_input.c, 31u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a, 31u)], 1i)))), vec3<u32>(~firstLeadingBit(1u), u_input.b.x, 52087u));
    let var_3 = any(func_1(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b, var_2.d.zy), 1u), 13u)], _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(43443i, var_2.c, global0[_wgslsmith_index_u32(1u, 31u)], 0i), vec4<i32>(17525i, global0[_wgslsmith_index_u32(var_2.d.x, 31u)], var_2.c, var_2.c) >> (var_2.a % vec4<u32>(32u))), -(vec4<i32>(0i, var_2.c, var_2.c, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]) >> (var_2.a % vec4<u32>(32u)))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a + var_1.a)))));
    let var_4 = select(!(var_2.c <= countOneBits(global0[_wgslsmith_index_u32(var_2.d.x, 31u)])), var_3, any(vec2<bool>(false, all(vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, min(vec4<i32>(var_2.c, max(abs(2147483647i), max(global0[_wgslsmith_index_u32(var_2.d.x, 31u)], global0[_wgslsmith_index_u32(33577u, 31u)])), _wgslsmith_div_i32(-var_2.c, var_2.c), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(max(1u, var_2.a.x), 31u)], ~(-2147483647i), ~(-19791i))), -firstLeadingBit(vec4<i32>(var_2.c, global0[_wgslsmith_index_u32(var_2.d.x, 31u)], -1i, 74751i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.a.x)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_2.d.x, 28u)] + 1021f))), 784f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f - 672f)), global1[_wgslsmith_index_u32(var_2.d.x, 16u)]) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(694f, var_2.b, 1681f, 919f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, 1163f, global1[_wgslsmith_index_u32(var_2.d.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<f32>(692f, -138f, 1778f, var_1.a.x))) + vec4<f32>(1000f, var_2.b, var_1.a.x, 1190f)), !var_3 == true))));
}

