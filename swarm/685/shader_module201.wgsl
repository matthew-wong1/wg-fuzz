struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, true, false, false, true, false, true, true);

var<private> global1: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(2147483647i, -47198i, 41431i), vec3<i32>(1i, i32(-2147483648), 2147483647i));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(0u, vec3<i32>(i32(-2147483648), -2260i, 3522i), 1u, vec3<bool>(false, false, false)), Struct_1(4294967295u, vec3<i32>(31701i, 0i, 0i), 45655u, vec3<bool>(true, true, true)), Struct_1(1u, vec3<i32>(i32(-2147483648), 1826i, 13905i), 0u, vec3<bool>(true, true, true)), Struct_1(12345u, vec3<i32>(26763i, 52296i, -13387i), 4294967295u, vec3<bool>(false, false, true)), Struct_1(4794u, vec3<i32>(28161i, 6646i, 0i), 55575u, vec3<bool>(true, true, false)), Struct_1(0u, vec3<i32>(-21447i, 2147483647i, -60261i), 39934u, vec3<bool>(true, false, false)), Struct_1(12900u, vec3<i32>(-22334i, i32(-2147483648), -1i), 4294967295u, vec3<bool>(true, false, true)), Struct_1(4080u, vec3<i32>(2147483647i, 1i, 19999i), 47926u, vec3<bool>(false, false, false)), Struct_1(5570u, vec3<i32>(-1i, 50065i, 11659i), 4294967295u, vec3<bool>(true, false, true)), Struct_1(4294967295u, vec3<i32>(-75334i, -39828i, 1i), 1u, vec3<bool>(true, false, true)), Struct_1(0u, vec3<i32>(2147483647i, 1i, 1i), 0u, vec3<bool>(false, false, false)), Struct_1(4294967295u, vec3<i32>(2147483647i, 11497i, 0i), 0u, vec3<bool>(true, false, false)), Struct_1(12880u, vec3<i32>(-5076i, i32(-2147483648), -26998i), 1u, vec3<bool>(true, false, true)), Struct_1(1931u, vec3<i32>(-1i, 1i, -15320i), 0u, vec3<bool>(false, false, false)), Struct_1(4294967295u, vec3<i32>(-5646i, 0i, 0i), 13296u, vec3<bool>(true, true, false)), Struct_1(1u, vec3<i32>(i32(-2147483648), 0i, 2147483647i), 44711u, vec3<bool>(true, false, true)), Struct_1(29464u, vec3<i32>(-27633i, 15981i, -71004i), 4294967295u, vec3<bool>(false, false, true)), Struct_1(34014u, vec3<i32>(-5420i, 1i, -1i), 86381u, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec3<i32>(0i, 4127i, 0i), 0u, vec3<bool>(true, false, false)), Struct_1(0u, vec3<i32>(-1214i, 5037i, -37042i), 1u, vec3<bool>(false, false, false)), Struct_1(28610u, vec3<i32>(-1i, 13572i, 2147483647i), 2663u, vec3<bool>(true, true, true)), Struct_1(1u, vec3<i32>(-19730i, 23225i, 0i), 20684u, vec3<bool>(false, true, true)), Struct_1(0u, vec3<i32>(0i, -14643i, 2147483647i), 1u, vec3<bool>(true, true, false)), Struct_1(0u, vec3<i32>(3611i, i32(-2147483648), 2147483647i), 26152u, vec3<bool>(false, false, true)), Struct_1(1u, vec3<i32>(i32(-2147483648), 0i, -44862i), 77284u, vec3<bool>(false, false, false)), Struct_1(96525u, vec3<i32>(-86576i, -1i, 1i), 0u, vec3<bool>(true, true, false)), Struct_1(4294967295u, vec3<i32>(0i, -58252i, -58267i), 1u, vec3<bool>(true, true, true)), Struct_1(1u, vec3<i32>(-32162i, 2147483647i, 13995i), 4294967295u, vec3<bool>(false, false, false)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_sub_i32(-select(countOneBits(u_input.a), ~2147483647i, arg_0.e > u_input.a), global2.b.x);
    var_0 = min(402i, 1i);
    var var_1 = ~(max(_wgslsmith_mult_vec2_u32(select(u_input.e.zx, vec2<u32>(0u, 28550u), true), vec2<u32>(19438u, arg_0.b.c)), _wgslsmith_sub_vec2_u32(~u_input.e.yz, u_input.e.xy)) | ~u_input.e.yz);
    var var_2 = arg_0.d;
    global0 = array<bool, 9>();
    return true;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(~_wgslsmith_mod_u32(min(u_input.c, 4294967295u), u_input.b), global3[_wgslsmith_index_u32(46004u, 28u)], global2.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f) + _wgslsmith_f_op_f32(f32(-1f) * -1127f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(947f - 101f) - _wgslsmith_div_f32(253f, -487f))))), 0i);
    global3 = array<Struct_1, 28>();
    let var_1 = Struct_3(!var_0.b.d.x, var_0.b, Struct_2(_wgslsmith_add_u32(0u, 0u), global3[_wgslsmith_index_u32(4294967295u, 28u)], !(!func_3(var_0, 0u)), _wgslsmith_f_op_f32(trunc(var_0.d)), _wgslsmith_div_i32(reverseBits(u_input.a), global2.b.x)), !(~min(4294967295u, u_input.e.x) <= 107416u), (global2.b.xz ^ -countOneBits(global2.b.yz)) & vec2<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -75039i, -1i), vec4<i32>(global2.b.x, 10454i, global2.b.x, var_0.b.b.x)), 1i), var_0.e));
    var var_2 = -1560f;
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.d), -722f)))));
    return 4344u;
}

fn func_4(arg_0: u32) -> Struct_1 {
    global3 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_mult_vec2_i32(min(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -30852i) & vec2<i32>(2147483647i, u_input.a), ~vec2<i32>(u_input.a, global2.b.x))), ~firstTrailingBit(~vec2<i32>(u_input.a, 2058i))), global2.b.xy);
    var var_1 = Struct_2(global2.c ^ 1016u, Struct_1((_wgslsmith_dot_vec2_u32(vec2<u32>(80716u, u_input.b), u_input.e.xw) | ~u_input.b) & arg_0, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(20985u & arg_0, 45875u), ~(~74060u)), 2u)], ~(~u_input.b), !global2.d), all(!(!global2.d)), -256f, 43170i);
    var_1 = Struct_2(~arg_0, global3[_wgslsmith_index_u32(u_input.e.x, 28u)], countOneBits(global2.c) >= ~reverseBits(reverseBits(4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)), -global2.b.x);
    var var_2 = select(vec4<u32>(1u, global2.a, 4294967295u, 1u), vec4<u32>(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.a), vec2<u32>(86353u, 21935u)), arg_0, max(u_input.b, 4294967295u)) ^ ~u_input.e, vec4<bool>(false, !global0[_wgslsmith_index_u32(~55466u, 9u)], !any(vec3<bool>(true, true, false)), func_3(Struct_2(arg_0, global3[_wgslsmith_index_u32(global2.a, 28u)], false, 1769f, var_1.e), u_input.c))) & ~vec4<u32>(~u_input.b, _wgslsmith_sub_u32(min(1u, 1u), _wgslsmith_mult_u32(global2.c, 16669u)), arg_0, min(_wgslsmith_div_u32(u_input.e.x, 80491u), arg_0 ^ u_input.e.x));
    return Struct_1(max(4294967295u, _wgslsmith_add_u32(0u, 24750u)), global1[_wgslsmith_index_u32(1u, 2u)] & (abs(vec3<i32>(var_1.b.b.x, u_input.d, 35881i)) | global2.b), _wgslsmith_sub_u32(global2.c, countOneBits(~1u)), vec3<bool>(false, any(select(vec2<bool>(true, var_1.c), select(vec2<bool>(true, var_1.c), vec2<bool>(global2.d.x, true), var_1.b.d.xy), !var_1.b.d.xy)), true));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>, arg_3: vec4<i32>) -> i32 {
    let var_0 = ~(~(~_wgslsmith_mod_vec3_u32(u_input.e.xzz, u_input.e.zzw) << (vec3<u32>(1u >> (global2.a % 32u), ~u_input.c, ~8665u) % vec3<u32>(32u))));
    global3 = array<Struct_1, 28>();
    let var_1 = Struct_2(~_wgslsmith_add_u32(abs(var_0.x), arg_0.b.c), func_4(func_2()), all(!global2.d.zx), 559f, -14526i);
    var var_2 = ~var_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(871f, -254f));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -215f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(302f, _wgslsmith_f_op_f32(step(-727f, -329f)), global2.b.x > 13610i)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1181f + 2202f)))) * -545f)));
    var var_1 = global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mult_u32(54332u, ~_wgslsmith_mod_u32(global2.a, global2.a))), 2u)];
    global1 = array<vec3<i32>, 2>();
    global1 = array<vec3<i32>, 2>();
    let var_2 = abs(u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(func_1(Struct_2(u_input.e.x, Struct_1(52026u, global1[_wgslsmith_index_u32(1u, 2u)], var_2.x, global2.d), global0[_wgslsmith_index_u32(var_2.x, 9u)], var_0, 2147483647i), 50886u, vec4<bool>(true, global0[_wgslsmith_index_u32(global2.a, 9u)], global0[_wgslsmith_index_u32(var_2.x, 9u)], false), vec4<i32>(-1i, global2.b.x, -2147483647i, 2147483647i)) >> (var_2.x % 32u), func_4(abs(u_input.c)).b.x), firstTrailingBit(firstLeadingBit(vec2<i32>(41283i, 32797i))), global0[_wgslsmith_index_u32(~var_2.x, 9u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(var_0 - 874f)), -967f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0)), var_0))), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.e, var_2) & ~1u, ~(~55610u)), var_2.x, _wgslsmith_mod_u32(var_2.x | 4294967295u, global2.a & 1u)));
}

