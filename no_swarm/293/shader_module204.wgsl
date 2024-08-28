struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec4<i32>(0i, -22609i, 1i, -19835i), true, 1i, vec4<bool>(true, false, true, true), vec3<u32>(31078u, 66975u, 81591u)), 1i, true, 0i), Struct_2(Struct_1(vec4<i32>(49308i, 2147483647i, -8305i, 10561i), false, 49946i, vec4<bool>(false, false, true, true), vec3<u32>(1u, 0u, 57491u)), 62187i, false, -27845i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, -7041i), false, -32042i, vec4<bool>(true, true, true, false), vec3<u32>(29805u, 52629u, 17712u)), 2147483647i, false, 0i), Struct_2(Struct_1(vec4<i32>(-41373i, -1i, -11349i, -8156i), true, 19199i, vec4<bool>(true, false, true, false), vec3<u32>(0u, 1u, 0u)), 25542i, true, 0i), Struct_2(Struct_1(vec4<i32>(7963i, -1i, 50474i, -1i), false, i32(-2147483648), vec4<bool>(true, false, true, true), vec3<u32>(0u, 1u, 16513u)), i32(-2147483648), false, i32(-2147483648)), Struct_2(Struct_1(vec4<i32>(-14314i, 7820i, -1i, 0i), false, 1i, vec4<bool>(false, false, true, false), vec3<u32>(32383u, 8265u, 4294967295u)), -1419i, false, 1i), Struct_2(Struct_1(vec4<i32>(78532i, 10935i, 0i, -24606i), false, 1i, vec4<bool>(false, true, true, false), vec3<u32>(0u, 1u, 4294967295u)), -45831i, false, -1i), Struct_2(Struct_1(vec4<i32>(5i, 0i, 25599i, 13041i), false, 61711i, vec4<bool>(false, true, true, true), vec3<u32>(4294967295u, 4294967295u, 60134u)), 1i, false, -32128i), Struct_2(Struct_1(vec4<i32>(2147483647i, 52995i, 44567i, -15178i), true, 91914i, vec4<bool>(true, true, false, true), vec3<u32>(1u, 14571u, 4294967295u)), 1170i, false, 2147483647i), Struct_2(Struct_1(vec4<i32>(-1i, 0i, 19762i, 36884i), false, -11355i, vec4<bool>(false, false, true, true), vec3<u32>(1u, 33467u, 0u)), 20413i, true, 0i), Struct_2(Struct_1(vec4<i32>(72290i, 11381i, 0i, 20562i), false, i32(-2147483648), vec4<bool>(true, true, false, false), vec3<u32>(1u, 4294967295u, 38768u)), 1i, false, -35091i), Struct_2(Struct_1(vec4<i32>(42221i, -1i, -17831i, -1i), false, i32(-2147483648), vec4<bool>(true, false, false, false), vec3<u32>(5973u, 28946u, 4294967295u)), -75370i, false, 19466i), Struct_2(Struct_1(vec4<i32>(-15800i, -1i, -1i, -20555i), true, 1i, vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 0u, 27048u)), 1i, true, -132i), Struct_2(Struct_1(vec4<i32>(-23153i, i32(-2147483648), 31030i, i32(-2147483648)), true, 2147483647i, vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 136309u, 24215u)), -53906i, false, 2147483647i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -40773i), true, -37410i, vec4<bool>(false, true, false, true), vec3<u32>(59418u, 53015u, 105462u)), -1i, false, 31928i), Struct_2(Struct_1(vec4<i32>(-13799i, -3461i, 2147483647i, -48293i), false, 2474i, vec4<bool>(true, false, false, true), vec3<u32>(0u, 4294967295u, 25493u)), 1i, true, 2147483647i), Struct_2(Struct_1(vec4<i32>(-38668i, 42037i, 1i, -13548i), true, 1i, vec4<bool>(true, false, true, false), vec3<u32>(37854u, 33026u, 0u)), -45390i, true, 2147483647i), Struct_2(Struct_1(vec4<i32>(2147483647i, 3398i, 0i, -1i), false, 1i, vec4<bool>(true, false, false, true), vec3<u32>(1u, 53183u, 54057u)), i32(-2147483648), true, 2147483647i), Struct_2(Struct_1(vec4<i32>(37394i, 1i, -1315i, -27409i), false, 0i, vec4<bool>(true, false, true, false), vec3<u32>(1u, 26541u, 1u)), 375i, true, 25110i), Struct_2(Struct_1(vec4<i32>(-33532i, 10340i, 0i, -32741i), true, 50994i, vec4<bool>(true, false, false, true), vec3<u32>(50234u, 13700u, 0u)), 0i, true, 2147483647i), Struct_2(Struct_1(vec4<i32>(2147483647i, 17763i, -2495i, 3221i), false, 42266i, vec4<bool>(true, true, false, false), vec3<u32>(1u, 1u, 9854u)), 25635i, false, 2147483647i), Struct_2(Struct_1(vec4<i32>(10493i, -1417i, -1i, 2147483647i), true, 1i, vec4<bool>(true, false, false, false), vec3<u32>(7352u, 1u, 16822u)), 2147483647i, false, i32(-2147483648)), Struct_2(Struct_1(vec4<i32>(-1i, 24792i, i32(-2147483648), 2147483647i), false, -1i, vec4<bool>(false, false, false, true), vec3<u32>(0u, 0u, 21638u)), 2147483647i, true, 2147483647i), Struct_2(Struct_1(vec4<i32>(56973i, 50930i, 0i, 48376i), true, 20268i, vec4<bool>(false, false, false, true), vec3<u32>(1402u, 39428u, 0u)), -1i, false, 43209i), Struct_2(Struct_1(vec4<i32>(2147483647i, -27799i, i32(-2147483648), -47775i), true, -77162i, vec4<bool>(true, true, true, true), vec3<u32>(44854u, 1u, 49339u)), 57158i, true, 38422i), Struct_2(Struct_1(vec4<i32>(-26342i, 55873i, 2147483647i, 0i), true, 12746i, vec4<bool>(true, false, true, false), vec3<u32>(24623u, 0u, 9417u)), -5708i, false, i32(-2147483648)), Struct_2(Struct_1(vec4<i32>(2147483647i, 34174i, -5731i, 27221i), false, i32(-2147483648), vec4<bool>(true, false, true, true), vec3<u32>(0u, 70647u, 13466u)), 1i, false, -73890i), Struct_2(Struct_1(vec4<i32>(19913i, -19010i, 15621i, 19805i), true, -76135i, vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 41642u, 0u)), 1i, false, 6814i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 19518i, -24699i, i32(-2147483648)), true, 0i, vec4<bool>(true, false, false, false), vec3<u32>(88733u, 4294967295u, 3315u)), -1i, true, -1i));

var<private> global1: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = !global1.a.d.x;
    let var_1 = 1u;
    var var_2 = Struct_2(global1.a, global1.d, false, select(arg_2.x, 42241i, var_1 >= ~_wgslsmith_mult_u32(global1.a.e.x, global1.a.e.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-948f - -2687f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-276f, -1401f)) - -1024f) * 975f)));
    var var_4 = Struct_2(Struct_1(vec4<i32>(reverseBits(arg_2.x ^ 1i), global1.a.c, _wgslsmith_mult_i32(global1.a.c, _wgslsmith_sub_i32(global1.d, 0i)), 48912i), false, arg_1, var_2.a.d, ~(~(global1.a.e << (vec3<u32>(arg_0, 56774u, var_1) % vec3<u32>(32u))))), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -2147483647i), arg_2.xy), !(select(global1.d, i32(-1i) * -3451i, !var_0) < -1i), 38806i);
    return _wgslsmith_div_vec2_u32(select(global1.a.e.zy, ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a.e.x, var_2.a.e.x), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.xw)), (_wgslsmith_f_op_f32(var_3.x * var_3.x) > _wgslsmith_div_f32(var_3.x, 1580f)) || false), var_2.a.e.xx >> (vec2<u32>(_wgslsmith_mult_u32(var_4.a.e.x & global1.a.e.x, var_4.a.e.x), ~var_4.a.e.x) % vec2<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    var var_0 = -global1.a.a.zw;
    var_0 = vec2<i32>(_wgslsmith_add_i32(-var_0.x, -(arg_0 >> (global1.a.e.x % 32u))), ~2147483647i) >> (~_wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_mult_vec2_u32(func_3(global1.a.e.x, var_0.x, vec4<i32>(global1.b, -2147483647i, var_0.x, arg_0)), ~vec2<u32>(1u, global1.a.e.x))) % vec2<u32>(32u));
    global0 = array<Struct_2, 29>();
    var var_1 = Struct_2(global1.a, var_0.x, false, -5846i);
    let var_2 = var_1.a;
    return global0[_wgslsmith_index_u32(~u_input.a.x, 29u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    return reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(i32(-1i) * -23241i, -20196i, arg_1.d, abs(-2147483647i)), global1.a.a));
}

fn func_1() -> Struct_1 {
    var var_0 = global1.a.a;
    var var_1 = global1.a.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-634f, 259f)))))) * 204f);
    var_0 = countOneBits(global1.a.a);
    var var_3 = -_wgslsmith_mod_i32(func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-742f, 169f, -1145f, 134f)))), func_2(_wgslsmith_dot_vec3_i32(global1.a.a.yyy, global1.a.a.wxx), _wgslsmith_f_op_f32(round(868f)))), global1.d);
    return Struct_1(global1.a.a | global1.a.a, _wgslsmith_clamp_i32((-23680i >> (u_input.a.x % 32u)) << (_wgslsmith_mult_u32(4294967295u, u_input.a.x) % 32u), _wgslsmith_dot_vec2_i32(global1.a.a.zz & vec2<i32>(global1.a.c, global1.a.c), vec2<i32>(global1.a.a.x, -44802i) | vec2<i32>(1i, var_0.x)), firstTrailingBit(global1.d | var_0.x)) > 1i, global1.d, vec4<bool>(!(!global1.c | true), !any(!vec2<bool>(true, global1.c)), false, global1.c), ~(~global1.a.e | ~global1.a.e) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), func_2(0i, 387f).a.e) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    global1 = global0[_wgslsmith_index_u32(1u, 29u)];
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1150f))));
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c, -2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(global1.a.a.x, -2147483647i), func_1().c), var_0.c), global1.a.a);
    let var_3 = func_2(2147483647i, _wgslsmith_f_op_f32(-280f * _wgslsmith_f_op_f32(abs(1f))));
    var var_4 = Struct_2(var_3.a, ~var_3.d, true, -53426i);
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-360f * _wgslsmith_f_op_f32(sign(-1002f))), _wgslsmith_f_op_f32(ceil(1345f))))), 384f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(126f, -2001f)), _wgslsmith_div_f32(979f, 2215f), -1559f)) - vec3<f32>(-658f, _wgslsmith_div_f32(404f, _wgslsmith_f_op_f32(-1000f + 937f)), -441f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-103f - 1f))), func_1().a.x, _wgslsmith_add_i32(func_2(reverseBits(var_2.x), _wgslsmith_f_op_f32(637f + -1046f)).b ^ select(i32(-1i) * -23358i, -var_3.a.a.x, true), ~2147483647i));
}

