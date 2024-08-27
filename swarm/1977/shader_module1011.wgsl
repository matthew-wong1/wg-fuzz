struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(71153u, 3744u, 0u, 79193u, 52127u, 5673u, 12331u, 0u, 0u, 109770u, 1u, 3954u, 0u, 18411u, 32808u, 4294967295u, 43435u, 43083u, 1u, 1u, 1u, 61560u, 32898u, 79663u, 0u, 39369u, 0u, 23313u);

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(276f, vec3<bool>(false, false, false))), 3386i, 1i, Struct_1(109f, vec3<bool>(true, true, true)), vec3<i32>(0i, -1i, 753i));

var<private> global2: vec4<u32>;

var<private> global3: array<vec2<i32>, 28>;

var<private> global4: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_2(Struct_1(-103f, vec3<bool>(false, true, true))), 0i, -1i, Struct_1(324f, vec3<bool>(false, true, true)), vec3<i32>(36614i, 21463i, 86009i)), Struct_3(Struct_2(Struct_1(-1017f, vec3<bool>(true, false, false))), i32(-2147483648), -21496i, Struct_1(1004f, vec3<bool>(true, true, true)), vec3<i32>(i32(-2147483648), 2147483647i, 1i)), Struct_3(Struct_2(Struct_1(-1143f, vec3<bool>(true, false, false))), 12320i, -51505i, Struct_1(-1821f, vec3<bool>(true, false, true)), vec3<i32>(-1i, 34869i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(-1000f, vec3<bool>(false, false, false))), i32(-2147483648), -12108i, Struct_1(182f, vec3<bool>(true, true, true)), vec3<i32>(3060i, 12838i, 11307i)), Struct_3(Struct_2(Struct_1(-1415f, vec3<bool>(true, false, false))), 1i, -5137i, Struct_1(-102f, vec3<bool>(true, false, false)), vec3<i32>(-29782i, -10856i, 0i)), Struct_3(Struct_2(Struct_1(449f, vec3<bool>(true, false, false))), 14102i, 16474i, Struct_1(-610f, vec3<bool>(false, false, false)), vec3<i32>(-7008i, 2147483647i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(246f, vec3<bool>(true, false, true))), 30333i, -1i, Struct_1(507f, vec3<bool>(false, false, false)), vec3<i32>(0i, 0i, 2147483647i)), Struct_3(Struct_2(Struct_1(-441f, vec3<bool>(false, false, true))), 3062i, 44841i, Struct_1(1073f, vec3<bool>(true, true, true)), vec3<i32>(-53189i, -12427i, -62515i)), Struct_3(Struct_2(Struct_1(-482f, vec3<bool>(true, false, false))), 15560i, -1i, Struct_1(-557f, vec3<bool>(false, true, true)), vec3<i32>(i32(-2147483648), i32(-2147483648), -63647i)), Struct_3(Struct_2(Struct_1(-555f, vec3<bool>(false, false, false))), 12096i, 37821i, Struct_1(441f, vec3<bool>(false, true, false)), vec3<i32>(32355i, 10581i, 7477i)), Struct_3(Struct_2(Struct_1(-275f, vec3<bool>(false, false, true))), 3304i, 0i, Struct_1(-388f, vec3<bool>(false, false, true)), vec3<i32>(10373i, i32(-2147483648), -1i)), Struct_3(Struct_2(Struct_1(-136f, vec3<bool>(false, false, false))), -8532i, 30225i, Struct_1(-806f, vec3<bool>(true, true, false)), vec3<i32>(-43307i, 0i, -1i)), Struct_3(Struct_2(Struct_1(1111f, vec3<bool>(true, true, false))), -19272i, 2147483647i, Struct_1(-2708f, vec3<bool>(true, false, false)), vec3<i32>(2147483647i, 581i, -44184i)), Struct_3(Struct_2(Struct_1(-466f, vec3<bool>(true, true, true))), 2147483647i, -480i, Struct_1(1194f, vec3<bool>(false, false, true)), vec3<i32>(0i, 64911i, 1i)), Struct_3(Struct_2(Struct_1(1000f, vec3<bool>(false, false, true))), 1i, -7092i, Struct_1(3016f, vec3<bool>(true, false, true)), vec3<i32>(-1i, 2009i, 91502i)), Struct_3(Struct_2(Struct_1(-1661f, vec3<bool>(true, true, false))), 1i, -1i, Struct_1(417f, vec3<bool>(true, false, true)), vec3<i32>(43582i, 13057i, 1i)), Struct_3(Struct_2(Struct_1(645f, vec3<bool>(true, true, true))), 1i, -33879i, Struct_1(-1000f, vec3<bool>(false, false, false)), vec3<i32>(i32(-2147483648), 1i, 0i)), Struct_3(Struct_2(Struct_1(-121f, vec3<bool>(true, false, true))), 1i, 2147483647i, Struct_1(1834f, vec3<bool>(false, true, true)), vec3<i32>(0i, 1i, 1i)), Struct_3(Struct_2(Struct_1(320f, vec3<bool>(false, true, true))), 0i, 2147483647i, Struct_1(-2011f, vec3<bool>(false, true, false)), vec3<i32>(9079i, 8420i, 2147483647i)), Struct_3(Struct_2(Struct_1(1000f, vec3<bool>(true, true, true))), -15887i, -1i, Struct_1(506f, vec3<bool>(true, true, true)), vec3<i32>(-148i, -27757i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(1558f, vec3<bool>(true, true, false))), 1i, 1i, Struct_1(-926f, vec3<bool>(false, true, false)), vec3<i32>(i32(-2147483648), -11204i, -19722i)), Struct_3(Struct_2(Struct_1(-1497f, vec3<bool>(true, false, true))), 1i, 28615i, Struct_1(-1000f, vec3<bool>(true, true, true)), vec3<i32>(-14705i, i32(-2147483648), 1i)), Struct_3(Struct_2(Struct_1(-904f, vec3<bool>(false, false, false))), 0i, -7909i, Struct_1(1330f, vec3<bool>(false, false, true)), vec3<i32>(-2605i, -18764i, 53157i)), Struct_3(Struct_2(Struct_1(-229f, vec3<bool>(false, true, true))), 7686i, -47767i, Struct_1(546f, vec3<bool>(true, true, false)), vec3<i32>(1i, -94435i, 2147483647i)), Struct_3(Struct_2(Struct_1(860f, vec3<bool>(false, true, false))), 6890i, -1600i, Struct_1(-765f, vec3<bool>(false, false, false)), vec3<i32>(2147483647i, 14368i, 23966i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> i32 {
    global4 = array<Struct_3, 25>();
    let var_0 = global1.a.a;
    var var_1 = !vec2<bool>(any(!var_0.b.yx), var_0.b.x);
    global1 = Struct_3(Struct_2(global1.a.a), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-22186i), i32(-1i) * -u_input.a, ~(~0i)), -(abs(vec3<i32>(-2147483647i, 65197i, u_input.a)) & (u_input.c << (u_input.d.zyw % vec3<u32>(32u))))), select(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(global1.b, global1.e.x, global1.c, global1.e.x)), select(select(vec4<i32>(12169i, global1.c, u_input.c.x, 0i), vec4<i32>(20830i, 2147483647i, -2147483647i, global1.c), var_0.b.x), firstLeadingBit(vec4<i32>(u_input.c.x, global1.b, -2147483647i, u_input.c.x)), var_1.x)), -24991i, true), global1.d, vec3<i32>(_wgslsmith_mod_i32(global1.c, _wgslsmith_div_i32(u_input.b, global1.e.x) >> (0u % 32u)), countOneBits(~u_input.a) ^ _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-13174i, 1i, 2147483647i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(6266i, global1.c, u_input.a, 2147483647i), vec4<i32>(-2147483647i, -27912i, global1.c, u_input.b))), _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, u_input.c.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.c, 0i, global1.e.x, global1.e.x), vec4<i32>(-16647i, u_input.b, 29427i, global1.c)), reverseBits(vec4<i32>(global1.c, 2147483647i, u_input.b, 1i))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1715f, var_0.a, global1.d.a, -1756f)) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.d.a, -1713f, global1.d.a, global1.a.a.a), vec4<f32>(297f, var_0.a, global1.a.a.a, -443f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-847f, global1.a.a.a, global1.d.a, 179f))))))) - vec4<f32>(_wgslsmith_f_op_f32(min(-357f, _wgslsmith_f_op_f32(var_0.a + -439f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.a.a))))), global1.a.a.a, _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(-var_0.a)))));
    return 55255i;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_2 {
    global3 = array<vec2<i32>, 28>();
    global1 = Struct_3(arg_0.a, _wgslsmith_div_i32(1i, _wgslsmith_div_i32(global1.c, (13360i >> (global2.x % 32u)) << (_wgslsmith_mod_u32(1u, global2.x) % 32u))), func_3(), arg_0.a.a, u_input.c);
    var var_0 = u_input.e & vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.e.zx, vec2<u32>(83513u, 4294967295u)), ~global0[_wgslsmith_index_u32(4294967295u, 28u)], ~32319u, global2.x);
    global4 = array<Struct_3, 25>();
    var_0 = vec4<u32>(global0[_wgslsmith_index_u32(u_input.e.x, 28u)], global2.x, _wgslsmith_clamp_u32(1u, 4294967295u, var_0.x), 93082u | _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, var_0.x, u_input.d.x), 11844u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, global2.x, 9969u, global0[_wgslsmith_index_u32(29902u, 28u)]), u_input.e), firstTrailingBit(global2.x))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-368f, _wgslsmith_f_op_f32(ceil(-813f))))), arg_1.b));
}

fn func_1() -> vec4<f32> {
    let var_0 = global1.a.a;
    let var_1 = func_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.x, 1u), global2.wz ^ abs(global2.wz & global2.xy)), 25u)], Struct_1(_wgslsmith_f_op_f32(min(-1312f, _wgslsmith_f_op_f32(-var_0.a))), !(!select(global1.a.a.b, vec3<bool>(false, false, var_0.b.x), true))), !vec4<bool>(false, var_0.b.x, var_0.b.x, any(!vec4<bool>(global1.d.b.x, global1.a.a.b.x, true, var_0.b.x))));
    global0 = array<u32, 28>();
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(~_wgslsmith_sub_u32(32915u, 1u)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 63239u, 22606u, 4294967295u), vec4<u32>(global2.x, 31946u, global2.x, global0[_wgslsmith_index_u32(14250u, 28u)])), 28u)] << (max(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 28u)], 28u)]) % 32u)), ~(min(vec2<u32>(1u, 35891u) & global2.wz, vec2<u32>(global2.x, u_input.d.x)) >> (vec2<u32>(1u, global2.x | 4294967295u) % vec2<u32>(32u)))), 25u)];
    global1 = global4[_wgslsmith_index_u32(66359u, 25u)];
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a.a - 957f) + 931f), -1000f), -414f, _wgslsmith_f_op_f32(-var_2.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.d.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(~u_input.a), ~_wgslsmith_add_i32(global1.e.x, u_input.b), -3631i, global1.c), global3[_wgslsmith_index_u32(u_input.d.x, 28u)], 24558u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1655f, global1.d.a, -737f, -315f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(602f, global1.d.a, global1.d.a, global1.d.a) + vec4<f32>(-727f, global1.a.a.a, 930f, -1455f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.a, global1.d.a, -122f, global1.a.a.a) + vec4<f32>(478f, -1000f, -1646f, -1746f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.a, global1.d.a, global1.d.a, 574f) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.d.a, global1.a.a.a, -840f, -2460f), vec4<f32>(417f, 760f, global1.d.a, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())))), true)));
}

