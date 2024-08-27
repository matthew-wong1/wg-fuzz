struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: bool = false;

var<private> global2: array<i32, 18>;

var<private> global3: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

var<private> global4: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(888f, -1000f, -295f), vec3<f32>(-746f, -143f, 2440f), vec3<f32>(-391f, -1601f, -1791f), vec3<f32>(1000f, 162f, 284f), vec3<f32>(-748f, 891f, 614f), vec3<f32>(1000f, -2174f, -154f), vec3<f32>(-1000f, 371f, -485f), vec3<f32>(-860f, -382f, -1399f), vec3<f32>(-1556f, -1887f, 251f), vec3<f32>(-1941f, -1263f, -468f));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = Struct_1(false, ~(~(~vec4<u32>(119693u, u_input.a, 4294967295u, 56342u))) >> (vec4<u32>(u_input.b, u_input.e | 1u, 52205u, _wgslsmith_add_u32(~2073u, u_input.a << (1u % 32u))) % vec4<u32>(32u)), 1379f, select(vec4<bool>(true, true, true, true), vec4<bool>(true, _wgslsmith_f_op_f32(-arg_0.x) <= arg_0.x, false, all(vec2<bool>(false, false)) && all(vec4<bool>(true, true, false, true))), false), ~32787u);
    var var_1 = Struct_1(any(vec3<bool>(any(vec3<bool>(var_0.d.x, true, true)), reverseBits(4294967295u) != var_0.b.x, all(select(vec4<bool>(var_0.d.x, true, true, false), vec4<bool>(var_0.a, var_0.a, true, false), true)))), abs(abs(firstTrailingBit(vec4<u32>(var_0.e, 1u, u_input.e, var_0.e)))), arg_0.x, var_0.d, u_input.e);
    let var_2 = Struct_2(Struct_1(true, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-515f, -1000f))))), vec4<bool>(false, true, false, false), ~4294967295u), Struct_1(37327u > _wgslsmith_add_u32(u_input.e ^ var_1.e, 52587u), var_0.b, _wgslsmith_f_op_f32(trunc(arg_0.x)), vec4<bool>(!var_1.a, var_0.a, false, true), 1u), ~(~vec4<u32>(min(u_input.e, var_1.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4075u, var_0.e), vec2<u32>(var_0.b.x, var_1.e)), var_0.e | var_0.e, firstLeadingBit(var_0.b.x))));
    let var_3 = var_1.d.ywy;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, 1275f, var_1.c))), arg_0)));
    return vec2<u32>(26989u, ~(19319u ^ var_0.e));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(func_3(vec3<f32>(_wgslsmith_f_op_f32(select(1756f, arg_2, false)), arg_2, arg_2)), _wgslsmith_mod_vec2_u32(~(vec2<u32>(0u, arg_1.x) | arg_1.zx), vec2<u32>(4294967295u, countOneBits(1u))), arg_1.yy), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, ~0u, u_input.b | u_input.b), ~(~arg_0)));
    global3 = array<vec3<bool>, 9>();
    global0 = array<i32, 15>();
    let var_1 = arg_2;
    var var_2 = Struct_1(all(vec4<bool>(true, true, true, true)) & ((~(-2755i) == u_input.d.x) && all(vec2<bool>(true, true))), _wgslsmith_div_vec4_u32(~vec4<u32>(firstTrailingBit(arg_0), ~28981u, 15288u, max(20614u, 4294967295u)), vec4<u32>(116567u << (var_0.x % 32u), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0), arg_1.zy)), firstTrailingBit(4294967295u), _wgslsmith_sub_u32(~arg_1.x, 4294967295u & var_0.x))), arg_2, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true)))), 69804u);
    return Struct_1(true, ~abs(vec4<u32>(75714u, _wgslsmith_dot_vec4_u32(var_2.b, vec4<u32>(0u, 4294967295u, 68885u, arg_0)), _wgslsmith_dot_vec4_u32(var_2.b, var_2.b), _wgslsmith_dot_vec4_u32(var_2.b, vec4<u32>(40452u, 43513u, arg_1.x, 1u)))), -1000f, vec4<bool>(-1012f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), true, select(true, all(vec2<bool>(var_2.d.x, var_2.d.x)), all(!vec3<bool>(true, false, var_2.d.x))), any(select(select(var_2.d.yx, vec2<bool>(var_2.a, true), vec2<bool>(var_2.a, true)), !vec2<bool>(var_2.d.x, var_2.d.x), all(vec3<bool>(false, false, true))))), func_3(vec3<f32>(_wgslsmith_f_op_f32(444f * 1315f), _wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(min(754f, var_1)))).x >> (~(~_wgslsmith_sub_u32(arg_1.x, 1u)) % 32u));
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<u32>(u_input.b, 20557u);
    global2 = array<i32, 18>();
    let var_1 = Struct_2(func_2(var_0.x, vec3<u32>(1u, 1u, var_0.x) | ~firstTrailingBit(vec3<u32>(1u, 29196u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_f_op_f32(f32(-1f) * -1500f)))), func_2(u_input.e, select(~vec3<u32>(u_input.b, 0u, u_input.e) | vec3<u32>(var_0.x, 4294967295u, 30815u), vec3<u32>(5399u, 4294967295u, reverseBits(var_0.x)), global3[_wgslsmith_index_u32(var_0.x, 9u)]), func_2(_wgslsmith_sub_u32(reverseBits(4294967295u), func_2(u_input.b, vec3<u32>(var_0.x, 15008u, 51182u), -584f).b.x), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.x, var_0.x, 0u), select(vec3<u32>(33891u, u_input.a, 1u), vec3<u32>(20535u, var_0.x, 27241u), true)), _wgslsmith_f_op_f32(1f - 1079f)).c), (firstLeadingBit(vec4<u32>(var_0.x, 0u, 4294967295u, var_0.x) | vec4<u32>(u_input.b, 4294967295u, 0u, u_input.a)) | max(~vec4<u32>(u_input.e, var_0.x, 4294967295u, 226u), vec4<u32>(1u, var_0.x, u_input.b, u_input.a))) & vec4<u32>(var_0.x, firstLeadingBit(~45915u), u_input.b, var_0.x));
    global3 = array<vec3<bool>, 9>();
    let var_2 = global4[_wgslsmith_index_u32(~var_0.x, 10u)];
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(~40299u, 1u, abs(118677u))), firstLeadingBit(_wgslsmith_sub_vec3_u32(arg_0.c.wxz, ~vec3<u32>(1u, arg_1.e, 66078u))));
    global1 = true;
    let var_1 = global0[_wgslsmith_index_u32(func_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(func_1().c.x, u_input.e), countOneBits(1u)), vec3<u32>(1u, arg_0.c.x, _wgslsmith_clamp_u32(~(var_0.x << (arg_0.c.x % 32u)), _wgslsmith_div_u32(~1u, 1u), ~arg_0.b.b.x ^ (var_0.x | 1u))), 266f).e, 15u)];
    let var_2 = firstLeadingBit(u_input.d.zz);
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1.c, -468f)), _wgslsmith_f_op_f32(arg_0.a.c + arg_0.a.c), true || arg_1.d.x)) + arg_0.b.c), _wgslsmith_f_op_f32(1341f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(841f, arg_1.c, arg_1.d.x)))), _wgslsmith_f_op_f32(trunc(arg_0.a.c)))));
    return Struct_1(arg_1.d.x, firstTrailingBit(vec4<u32>(~var_0.x ^ select(83258u, 4294967295u, true), countOneBits(abs(4294967295u)), 1u, _wgslsmith_dot_vec3_u32(arg_0.a.b.zwy >> (vec3<u32>(var_0.x, arg_1.b.x, 17852u) % vec3<u32>(32u)), vec3<u32>(arg_0.a.e, 8203u, u_input.b)))), _wgslsmith_f_op_f32(441f * 653f), func_2(func_3(var_3).x, ~vec3<u32>(arg_0.a.e, 6812u, u_input.a) | _wgslsmith_mult_vec3_u32(~vec3<u32>(32594u, arg_1.b.x, 33104u), firstTrailingBit(vec3<u32>(4294967295u, u_input.b, 4294967295u))), -611f).d, 4294967295u >> (func_2(_wgslsmith_mult_u32(var_0.x, 0u), vec3<u32>(_wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(34422u, 34883u, 4294967295u, arg_0.c.x)), 21054u, 0u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-446f - arg_1.c)))).b.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), func_2(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.e), ~vec3<u32>(1u, u_input.b, u_input.a))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, firstLeadingBit(0u), u_input.e | u_input.e), vec3<u32>(func_3(global4[_wgslsmith_index_u32(4294967295u, 10u)]).x, u_input.a, 1u >> (u_input.e % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1054f)) * _wgslsmith_div_f32(570f, -1198f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global4 = array<vec3<f32>, 10>();
    var var_1 = vec2<i32>(global2[_wgslsmith_index_u32(var_0.e, 18u)], -32160i);
    var var_2 = var_0;
    let var_3 = func_1().b.b;
    global4 = array<vec3<f32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(~_wgslsmith_mult_u32(var_0.e, 62965u), ~_wgslsmith_add_u32(var_2.b.x, var_3.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e, 4294967295u), var_0.b.yx), ~(~var_3.x)), max(abs(vec4<u32>(1u, var_0.b.x, var_2.e, var_3.x)), vec4<u32>(var_0.b.x, var_0.e, var_3.x, 1u)), select(!func_1().b.d, func_4(Struct_2(var_0, var_0, vec4<u32>(var_0.b.x, u_input.a, var_0.e, var_3.x)), Struct_1(true, vec4<u32>(2044u, u_input.e, 932u, var_2.b.x), 550f, vec4<bool>(false, var_0.a, false, true), 5349u)).d, !vec4<bool>(var_0.d.x, var_0.d.x, false, var_0.a))), vec4<f32>(741f, _wgslsmith_f_op_f32(round(798f)), func_4(func_1(), Struct_1(var_2.a, vec4<u32>(var_2.e, u_input.b, var_2.b.x, 1u) >> (vec4<u32>(var_2.b.x, var_3.x, var_0.b.x, var_3.x) % vec4<u32>(32u)), _wgslsmith_div_f32(var_0.c, var_0.c), vec4<bool>(var_2.a, true, var_0.a, var_0.d.x), select(25783u, 25452u, true))).c, var_0.c), vec2<f32>(-178f, var_2.c), 11984u);
}

