struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(17707u, 35808u, 1u, 60165u), vec4<u32>(30534u, 0u, 1u, 83472u), vec4<u32>(39836u, 40528u, 0u, 4294967295u), vec4<u32>(24648u, 60836u, 4294967295u, 9286u), vec4<u32>(1u, 46245u, 1107u, 1u), vec4<u32>(11806u, 22555u, 4899u, 56107u), vec4<u32>(27910u, 30900u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 38836u, 0u), vec4<u32>(5690u, 38297u, 38427u, 4294967295u), vec4<u32>(20520u, 4294967295u, 24479u, 93763u), vec4<u32>(74538u, 1u, 4294967295u, 34780u), vec4<u32>(1u, 0u, 22202u, 94530u), vec4<u32>(0u, 1u, 1623u, 4294967295u), vec4<u32>(28573u, 4294967295u, 78238u, 4294967295u), vec4<u32>(1u, 0u, 45411u, 0u), vec4<u32>(1u, 38791u, 0u, 11788u), vec4<u32>(12392u, 72593u, 1u, 43475u), vec4<u32>(1u, 13592u, 3522u, 4294967295u), vec4<u32>(1u, 0u, 79089u, 4294967295u), vec4<u32>(1u, 21011u, 25053u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(42087u, 4294967295u, 1u, 14709u), vec4<u32>(1u, 11853u, 2272u, 1u), vec4<u32>(1u, 0u, 0u, 58158u), vec4<u32>(54991u, 1u, 41711u, 36191u), vec4<u32>(34531u, 21845u, 68822u, 0u), vec4<u32>(1u, 75928u, 28332u, 2182u), vec4<u32>(59174u, 4294967295u, 78155u, 4294967295u), vec4<u32>(66841u, 63667u, 15481u, 6826u), vec4<u32>(0u, 27689u, 1u, 4294967295u), vec4<u32>(1u, 33239u, 4294967295u, 0u));

var<private> global1: array<vec3<bool>, 16>;

var<private> global2: vec3<i32> = vec3<i32>(30136i, 1i, 12867i);

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1205f, 1695f, global3.x))))))));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(min(countOneBits(~global0[_wgslsmith_index_u32(70879u, 31u)]), reverseBits(vec4<u32>(11821u, 10056u, 5086u, 4294967295u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(min(global0[_wgslsmith_index_u32(0u, 31u)], vec4<u32>(3581u, 0u, 21239u, 31822u)), ~global0[_wgslsmith_index_u32(60478u, 31u)]), select(vec4<u32>(5587u, 0u, 1u, 84366u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 71092u), global0[_wgslsmith_index_u32(18734u, 31u)]), global3.x))));
    var var_2 = Struct_4(var_1, Struct_3(Struct_2(var_1.a, var_1.a, var_1)), Struct_2(var_1.a >> (max(var_1.a ^ 1u, select(var_1.a, var_1.a, global3.x)) % 32u), select(1u, var_1.a, global3.x | true), Struct_1(abs(min(4294967295u, 1u)))), Struct_2(firstLeadingBit(~(~var_1.a)), ~reverseBits(var_1.a >> (0u % 32u)), Struct_1(~var_1.a)), vec3<i32>(-min(-u_input.a, global2.x << (var_1.a % 32u)), _wgslsmith_add_i32(-(63i ^ global2.x), -13562i), _wgslsmith_mod_i32(u_input.a, ~_wgslsmith_mod_i32(2147483647i, global2.x))));
    global1 = array<vec3<bool>, 16>();
    return _wgslsmith_mult_u32(~(~(var_2.c.a & 1u)), 4294967295u);
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a ^ min(u_input.a, firstLeadingBit(1i)), _wgslsmith_mod_i32(u_input.a, i32(-1i) * -8266i) | 1i, abs(-global2.x)), -_wgslsmith_div_vec3_i32(reverseBits(-vec3<i32>(u_input.a, global2.x, -8895i)), (vec3<i32>(2133i, global2.x, 41053i) ^ vec3<i32>(u_input.a, global2.x, 2147483647i)) | _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a, global2.x), vec3<i32>(0i, 17125i, -1i))));
    global3 = vec3<bool>(global3.x, 1i <= ~(u_input.a ^ global2.x), all(!vec4<bool>(global3.x, global3.x, true, true)));
    return Struct_1(func_3());
}

fn func_1() -> u32 {
    var var_0 = Struct_4(func_2(), Struct_3(Struct_2(1u, 1u, func_2())), Struct_2(1u, abs(88695u), func_2()), Struct_2(1u, _wgslsmith_add_u32(~(~10598u), 0u), func_2()), countOneBits(-(vec3<i32>(2147483647i, u_input.a, global2.x) << (vec3<u32>(6637u, 11268u, 0u) % vec3<u32>(32u)))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    var var_1 = var_0.c.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1428f, -968f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-651f, 2099f, -258f) - vec3<f32>(-124f, 749f, -1173f)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-524f, -969f, -868f))))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.x, -1124f)), _wgslsmith_f_op_f32(trunc(1000f))))))));
    let var_4 = -(~firstLeadingBit(60526i ^ -var_0.e.x));
    return ~max(~max(_wgslsmith_mult_u32(17967u, var_0.a.a), ~var_0.a.a), select(var_0.d.c.a, 1u, !global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(vec2<u32>(_wgslsmith_clamp_u32(1u, 90043u << (1u % 32u), func_1()), 113869u), vec2<u32>(32190u, countOneBits(87881u)));
    var var_1 = func_2();
    let var_2 = Struct_4(Struct_1(57361u), Struct_3(Struct_2(~(~var_0.x), _wgslsmith_mult_u32(1u, ~1u), func_2())), Struct_2(var_1.a, 403u, func_2()), Struct_2(_wgslsmith_div_u32(~4294967295u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.x, 30606u), var_0.x, 1u)), 27607u, func_2()), abs(-_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global2.x, 2147483647i), vec3<i32>(u_input.a, -2147483647i, u_input.a)) | (-vec3<i32>(-9518i, u_input.a, 61654i) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 17755u, 0u), vec3<u32>(0u, 17897u, var_1.a), vec3<u32>(1u, 4294967295u, 1u)) % vec3<u32>(32u)))));
    let var_3 = var_2.d;
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1284f)), -693f) - _wgslsmith_f_op_f32(-950f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1748f + 448f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-740f, 605f)), _wgslsmith_f_op_f32(select(483f, 448f, global3.x)))), 734f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(677f)), -1431f)), -1523f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), vec2<u32>(var_1.a, var_3.a));
}

