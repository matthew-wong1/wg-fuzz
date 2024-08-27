struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(288f, vec2<f32>(650f, -1000f), vec2<i32>(2438i, -18237i)), Struct_1(-1467f, vec2<f32>(-521f, -636f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(962f, vec2<f32>(-305f, 733f), vec2<i32>(0i, -18795i)), Struct_1(-536f, vec2<f32>(-372f, 812f), vec2<i32>(89230i, -1i)), Struct_1(-373f, vec2<f32>(1180f, -773f), vec2<i32>(2147483647i, 1i)), Struct_1(1372f, vec2<f32>(-514f, -1000f), vec2<i32>(26338i, 1i)), Struct_1(-103f, vec2<f32>(-517f, -2200f), vec2<i32>(-22542i, -29981i)), Struct_1(-369f, vec2<f32>(1570f, -296f), vec2<i32>(23164i, -12661i)), Struct_1(-509f, vec2<f32>(378f, 496f), vec2<i32>(i32(-2147483648), -3010i)), Struct_1(143f, vec2<f32>(-1704f, 1780f), vec2<i32>(-28921i, -7961i)), Struct_1(942f, vec2<f32>(-1000f, -1682f), vec2<i32>(1213i, i32(-2147483648))), Struct_1(-579f, vec2<f32>(-690f, 207f), vec2<i32>(1i, 0i)), Struct_1(-150f, vec2<f32>(-1000f, 632f), vec2<i32>(-1i, 31338i)), Struct_1(-200f, vec2<f32>(1247f, 2414f), vec2<i32>(-15031i, -27802i)), Struct_1(1044f, vec2<f32>(-353f, -127f), vec2<i32>(0i, -1i)), Struct_1(1499f, vec2<f32>(418f, -257f), vec2<i32>(-1i, 21716i)), Struct_1(-947f, vec2<f32>(-1490f, -2041f), vec2<i32>(i32(-2147483648), -3518i)));

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(-942f, vec2<f32>(1035f, -743f), vec2<i32>(-4411i, 40197i));

var<private> global3: array<u32, 30>;

var<private> global4: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = vec4<i32>(global2.c.x, abs(_wgslsmith_sub_i32(global4.c, -1i)), ~(~(-2147483647i)), global4.c);
    let var_1 = arg_2;
    var var_2 = ~(~max(~global4.e.xy << (global4.e.zx % vec2<u32>(32u)), firstLeadingBit(abs(vec2<u32>(59297u, 1u)))));
    let var_3 = arg_3.c;
    let var_4 = abs(32961u);
    return global4.d;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global4 = Struct_2(global4.b << (u_input.d % 32u), ~min(_wgslsmith_sub_i32(arg_0.c.x, 49159i), global2.c.x) | 46453i, 0i, select(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-657f, 1033f, arg_0.a) - vec3<f32>(-540f, 572f, global2.b.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(527f, arg_0.a, -296f))), select(vec2<bool>(true, true), global4.d.wx, global4.d.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1340f, arg_0.a, -838f))))), Struct_1(-763f, vec2<f32>(-202f, 441f), _wgslsmith_mult_vec2_i32(vec2<i32>(global4.c, arg_0.c.x), global2.c))), !global4.d, global4.d.x), u_input.c ^ vec3<u32>(~(~1u), firstLeadingBit(~u_input.b), (u_input.d << (1u % 32u)) & global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global4.e.x, 30u)], global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.e.x, 30u)], 30u)]), 30u)]));
    global2 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    let var_0 = !global4.d.x;
    return Struct_2(arg_0.c.x, global2.c.x, ((global4.c & -global2.c.x) << (~0u % 32u)) & reverseBits(abs(i32(-1i) * -2918i)), select(vec4<bool>(false, -arg_0.c.x <= -1735i, _wgslsmith_f_op_f32(trunc(global2.b.x)) > 103f, all(!vec3<bool>(global4.d.x, var_0, global4.d.x))), global4.d, select(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 871f, global2.a)), global4.d.zx, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, -1424f, global2.b.x) + vec3<f32>(-549f, 148f, 415f)), global0[_wgslsmith_index_u32(global4.e.x, 17u)]), select(vec4<bool>(true, false, false, false), vec4<bool>(var_0, true, global4.d.x, global4.d.x), vec4<bool>(global4.d.x, false, false, global4.d.x)), true)), abs(_wgslsmith_mult_vec3_u32(global4.e, u_input.c)));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = global4.e.xy;
    var var_1 = -1i >> (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(32967u, 1u, 2995u, var_0.x), firstLeadingBit(vec4<u32>(var_0.x, global4.e.x, 1u, 4889u))) >> (global3[_wgslsmith_index_u32(var_0.x, 30u)] % 32u), global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(var_0.x, ~1u)), 30u)]) % 32u);
    var var_2 = func_2(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(54387u, 30u)], u_input.d, 123090u, 18759u), vec4<u32>(12483u, 4294967295u, 4294967295u, u_input.d)), vec4<u32>(1u, 4294967295u, 24341u, u_input.d)) >> (1u % 32u)), 17u)]);
    var var_3 = Struct_1(-1000f, _wgslsmith_f_op_vec2_f32(-arg_3.yw), vec2<i32>(reverseBits(var_2.b), 56310i));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_1, arg_3.x)), arg_2.x, _wgslsmith_f_op_f32(-905f + -1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_2.zww, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_3.b.x, arg_1)), vec3<bool>(false, global4.d.x, var_2.d.x)))));
    return global4.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = abs(global4.c);
    let var_1 = global2.b.x;
    return func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(134f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, -1232f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global2.b))) + global2.b), ~(-global2.c ^ global2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a, 1187f, _wgslsmith_f_op_f32(-652f + _wgslsmith_f_op_f32(-global2.a)), -562f))));
    global4 = func_4(Struct_2(-12145i, global2.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(2147483647i, global2.c.x), global2.c.x, firstLeadingBit(global4.b), _wgslsmith_sub_i32(7425i, 16185i)), (vec4<i32>(global4.a, global2.c.x, 0i, -38477i) | vec4<i32>(global2.c.x, global2.c.x, global2.c.x, -666i)) & -vec4<i32>(0i, 20239i, global2.c.x, global4.c)), select(func_1(vec2<i32>(global4.b, global2.c.x) ^ global2.c, _wgslsmith_f_op_f32(step(var_0.x, 193f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, -1682f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -901f, -1819f, var_0.x) + vec4<f32>(var_0.x, -622f, global2.b.x, -459f))), global4.d, false), ~max(vec3<u32>(u_input.a, 37770u, 4294967295u) ^ vec3<u32>(global4.e.x, 0u, 47140u), vec3<u32>(global4.e.x, u_input.b, u_input.a) & u_input.c)), func_2(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 17u)]));
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(global2.b.x, 894f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -383f)), var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(round(-1059f))))), _wgslsmith_div_f32(1367f, var_0.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(446f, var_0.x, 640f, global2.a) * vec4<f32>(var_0.x, -1110f, 854f, -841f))))), global4.d.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -365f)));
    global2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(~31009u, ~global3[_wgslsmith_index_u32(~global4.e.x, 30u)])), 17u)];
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-504f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a))), var_0.x) - vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - 1587f))), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(544f - 112f) * var_0.x), var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1422f, -843f)), global2.a, _wgslsmith_f_op_f32(trunc(global2.b.x)), _wgslsmith_f_op_f32(sign(-303f))))), false & global4.d.x));
    global3 = array<u32, 30>();
    var var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-347f, 1f)), global4.a);
}

