struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -448f;

var<private> global1: array<bool, 5>;

var<private> global2: array<f32, 20>;

var<private> global3: array<f32, 6> = array<f32, 6>(-411f, -1019f, -1229f, 1816f, 784f, 259f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = arg_1;
    var var_1 = select(all(select(vec3<bool>(arg_0.e.x <= -31169i, arg_3, !arg_3), select(!vec3<bool>(global1[_wgslsmith_index_u32(21643u, 5u)], false, false), select(vec3<bool>(false, false, arg_3), vec3<bool>(arg_3, arg_3, global1[_wgslsmith_index_u32(0u, 5u)]), true), !vec3<bool>(global1[_wgslsmith_index_u32(arg_0.c.x, 5u)], global1[_wgslsmith_index_u32(arg_0.c.x, 5u)], true)), global1[_wgslsmith_index_u32(~arg_0.c.x, 5u)] | false)), true, arg_3);
    let var_2 = arg_0.c.x;
    global1 = array<bool, 5>();
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(36134u, 6u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d.x, 541f), arg_1.c)) * vec2<f32>(-386f, -1742f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(arg_0.c.x, 20u)], arg_0.b.b.x), arg_1.b)))), arg_2.d), Struct_1(338f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b.x, var_0.a) + vec2<f32>(var_0.d.x, 126f)) - _wgslsmith_f_op_vec2_f32(var_0.d.wy - vec2<f32>(128f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(152f, arg_0.d.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-114f, arg_0.b.a)))), arg_2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(arg_0.c.x, 6u)], _wgslsmith_f_op_f32(max(var_0.a, -469f)), -290f, _wgslsmith_f_op_f32(f32(-1f) * -188f)))), arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(-193f, arg_2.d.x, -345f, -2907f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1596f, global2[_wgslsmith_index_u32(var_2, 20u)], 2605f, -214f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(515f, arg_2.a, -138f, arg_0.d.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(481f, global2[_wgslsmith_index_u32(var_2, 20u)], arg_0.d.x, -499f)))))), ~(-_wgslsmith_add_vec2_i32(select(arg_0.e, arg_0.e, true), arg_0.e)));
    return var_2;
}

fn func_2(arg_0: i32) -> vec4<f32> {
    global3 = array<f32, 6>();
    global1 = array<bool, 5>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -609f) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 6u)])))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(26114u, 6u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 20u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1196f + 133f), global3[_wgslsmith_index_u32(~673u, 6u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(1017u, 20u)]), vec2<f32>(1344f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), global1[_wgslsmith_index_u32(4294967295u, 5u)])) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 735f), vec2<f32>(global2[_wgslsmith_index_u32(0u, 20u)], 1519f), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 5u)])))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-369f, -1967f))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(116f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], -267f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(662f, global3[_wgslsmith_index_u32(73941u, 6u)], global3[_wgslsmith_index_u32(72623u, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]) + vec4<f32>(680f, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)], -1412f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1138f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 384f, -289f), vec4<f32>(-639f, global3[_wgslsmith_index_u32(36735u, 6u)], global3[_wgslsmith_index_u32(12728u, 6u)], -1000f))))), Struct_1(-1365f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(65250u, 6u)]))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1909f, 1925f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1010f, -374f))))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global2[_wgslsmith_index_u32(38978u, 20u)], -422f, global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec4<f32>(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 2060f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 20u)]), _wgslsmith_f_op_f32(step(1415f, 681f)), _wgslsmith_f_op_f32(-463f + global3[_wgslsmith_index_u32(u_input.a.x, 6u)])))), ~(vec3<u32>(func_3(Struct_2(Struct_1(1000f, vec2<f32>(-1266f, -258f), vec2<f32>(global3[_wgslsmith_index_u32(64975u, 6u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec4<f32>(-491f, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(1u, 6u)], -362f)), Struct_1(global3[_wgslsmith_index_u32(7970u, 6u)], vec2<f32>(global2[_wgslsmith_index_u32(13487u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec2<f32>(-581f, 866f), vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], 1000f, -860f, global2[_wgslsmith_index_u32(1u, 20u)])), vec3<u32>(u_input.a.x, 13227u, 4294967295u), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(12807u, 20u)], -415f, global2[_wgslsmith_index_u32(92375u, 20u)]), vec2<i32>(-1i, arg_0)), Struct_1(1000f, vec2<f32>(806f, global2[_wgslsmith_index_u32(1u, 20u)]), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(2625u, 6u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(0u, 20u)], -778f, global3[_wgslsmith_index_u32(24910u, 6u)])), Struct_1(-252f, vec2<f32>(global3[_wgslsmith_index_u32(1u, 6u)], -1698f), vec2<f32>(-496f, 1279f), vec4<f32>(-1215f, global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(60583u, 20u)], -253f)), global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), 1u, abs(70292u)) ^ (_wgslsmith_sub_vec3_u32(vec3<u32>(28800u, 0u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) << (firstTrailingBit(vec3<u32>(45241u, 64291u, u_input.a.x)) % vec3<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 20u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1807f + 643f) - _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], -1000f)))), -878f, 1459f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(~1u, 6u)], -2882f)), vec2<i32>(~firstTrailingBit(abs(arg_0)), -17272i));
    global3 = array<f32, 6>();
    var var_1 = var_0.b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.b.d), vec4<f32>(627f, var_0.d.x, -1374f, var_0.b.b.x)))))));
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = arg_0.yx;
    var var_1 = ~1i;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(1132f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -434f) + vec2<f32>(-2097f, -610f)) - _wgslsmith_f_op_vec2_f32(-arg_0.wy))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec4_f32(func_2(11948i))), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], _wgslsmith_div_vec2_f32(arg_0.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(350f, global2[_wgslsmith_index_u32(4294967295u, 20u)]))))), arg_0.yw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(1187f, 418f, -691f, arg_0.x))) + vec4<f32>(_wgslsmith_f_op_f32(var_0.x + 550f), var_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(arg_0.x, global3[_wgslsmith_index_u32(u_input.a.x, 6u)]))))), ~vec3<u32>(4294967295u, 0u, ~u_input.a.x) | ~(vec3<u32>(u_input.a.x, 50607u, u_input.a.x) & vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_0)))), vec2<i32>(0i, countOneBits(2147483647i)));
    global3 = array<f32, 6>();
    var var_3 = Struct_2(var_2.b, var_2.a, abs(~(~var_2.c)), var_2.b.d, var_2.e);
    return vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(105298u, var_3.c.x, var_2.c.x, var_2.c.x)), ~vec4<u32>(1u, u_input.a.x, var_3.c.x, var_3.c.x)), 80118u, 4294967295u, func_3(var_2, Struct_1(var_3.d.x, vec2<f32>(-396f, arg_0.x), vec2<f32>(-697f, global3[_wgslsmith_index_u32(var_3.c.x, 6u)]), var_2.b.d), Struct_1(arg_0.x, var_3.d.yy, vec2<f32>(204f, 187f), vec4<f32>(-911f, -1790f, var_2.a.b.x, -1583f)), false) << (45463u % 32u)) & reverseBits(vec4<u32>(abs(var_3.c.x) ^ var_2.c.x, var_3.c.x, _wgslsmith_mod_u32(min(17970u, 0u), firstTrailingBit(var_2.c.x)), _wgslsmith_mod_u32(u_input.a.x, min(1u, u_input.a.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    global2 = array<f32, 20>();
    let var_0 = !(!vec3<bool>(true, false, any(select(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_3.c.x, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 5u)])))));
    var var_1 = arg_2.yxx;
    var var_2 = Struct_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.a.d.zy + vec2<f32>(-1676f, -1000f)) + vec2<f32>(arg_3.b.c.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.x, 20u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_f_op_f32(f32(-1f) * -768f)) - vec2<f32>(global2[_wgslsmith_index_u32(~u_input.a.x, 20u)], _wgslsmith_f_op_f32(ceil(634f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, 1470f, global2[_wgslsmith_index_u32(var_1.x, 20u)], -2425f)) + arg_1.d)), arg_1, abs(arg_2.zyw), arg_1.d, _wgslsmith_clamp_vec2_i32(arg_3.e, select(~(~arg_3.e), arg_3.e, false), arg_3.e));
    var_2 = arg_3;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], -714f, -1309f, 593f) - vec4<f32>(-579f, -398f, 447f, global3[_wgslsmith_index_u32(u_input.a.x, 6u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 772f, global3[_wgslsmith_index_u32(1687u, 6u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -711f, -3050f, 1388f) * vec4<f32>(global2[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)], -1743f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-622f, -574f, -1168f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]) * vec4<f32>(395f, 711f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)]))))), Struct_1(-121f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1508f)) - 736f), global3[_wgslsmith_index_u32(min(u_input.a.x, ~u_input.a.x), 6u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-676f, global3[_wgslsmith_index_u32(u_input.a.x, 6u)])))), vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)), 6u)] + global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 6u)] * global2[_wgslsmith_index_u32(14452u, 20u)])), -446f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(0i)).x)))), ~(~(~(~vec4<u32>(0u, 19904u, 0u, 16829u)))), Struct_2(Struct_1(_wgslsmith_div_f32(-552f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3[_wgslsmith_index_u32(33299u, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)]))) - _wgslsmith_f_op_vec4_f32(func_2(-49273i)).xy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1838f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -1262f, global3[_wgslsmith_index_u32(1u, 6u)]))), Struct_1(-1513f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(873f, 761f) + vec2<f32>(283f, 706f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], 849f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-367f, 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], 473f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)])))), abs(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 40694u)), vec3<u32>(4294967295u, 19213u, u_input.a.x), !vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1343f, -708f, 604f, global3[_wgslsmith_index_u32(u_input.a.x, 6u)]) + vec4<f32>(-1038f, -155f, global2[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(0u, 6u)])), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 1045f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 982f), !global1[_wgslsmith_index_u32(87253u, 5u)])) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(395f, global2[_wgslsmith_index_u32(0u, 20u)], -1101f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)])))))), countOneBits(_wgslsmith_mult_vec2_i32(~vec2<i32>(-14888i, 0i), -vec2<i32>(-41602i, -2147483647i)))));
    global2 = array<f32, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(var_0.d));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.d.wyx + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-218f)) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(235u, 6u)])), _wgslsmith_f_op_f32(f32(-1f) * -856f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(680f, 1084f, var_1.x)) - vec3<f32>(var_0.c.x, var_1.x, -437f))))), vec3<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), global1[_wgslsmith_index_u32(0u, 5u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(34565u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]), global1[_wgslsmith_index_u32(1u, 5u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]))), !(!any(vec3<bool>(global1[_wgslsmith_index_u32(53731u, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(1u, 5u)]))), !global1[_wgslsmith_index_u32(u_input.a.x, 5u)] && global1[_wgslsmith_index_u32(~u_input.a.x >> (0u % 32u), 5u)])));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -453f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.x)))), 1306f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(659f + var_2.x))))), var_0.d);
    global3 = array<f32, 6>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))));
    let var_4 = vec2<bool>(false, all(vec3<bool>(all(!vec2<bool>(false, global1[_wgslsmith_index_u32(60752u, 5u)])), false, 1u > _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))));
    global0 = 613f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-2478f, _wgslsmith_f_op_f32(-var_3.d.x)), ~select(u_input.a.x, max(func_1(var_3.d).x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), var_4.x), reverseBits(4294967295u), var_3.d.zzw, vec2<i32>(-1i) * -vec2<i32>(~1i, firstLeadingBit(-40834i)));
}

