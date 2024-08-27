struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(1u, 4294967295u, 4294967295u, 5040u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(68131u, 0u, 0u, 29962u), vec4<u32>(21929u, 58170u, 68934u, 38310u), vec4<u32>(44728u, 21003u, 0u, 42731u), vec4<u32>(0u, 4294967295u, 56411u, 48165u), vec4<u32>(7486u, 0u, 43325u, 4294967295u));

var<private> global2: Struct_2 = Struct_2(1i, 35463u);

var<private> global3: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(4294967295u, 62280u), vec2<u32>(23651u, 25732u), vec2<u32>(19913u, 72241u), vec2<u32>(0u, 0u), vec2<u32>(41703u, 0u), vec2<u32>(4294967295u, 114876u), vec2<u32>(1u, 74391u), vec2<u32>(68173u, 49166u), vec2<u32>(4294967295u, 87048u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(55111u, 13903u), vec2<u32>(44084u, 1u), vec2<u32>(4294967295u, 27005u), vec2<u32>(79214u, 33911u), vec2<u32>(0u, 84024u), vec2<u32>(0u, 20835u), vec2<u32>(76323u, 31752u), vec2<u32>(36164u, 4294967295u), vec2<u32>(5269u, 4294967295u), vec2<u32>(6810u, 58716u), vec2<u32>(4294967295u, 88071u), vec2<u32>(5406u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(0u, 45094u), vec2<u32>(4379u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 1u), vec2<u32>(694u, 19493u), vec2<u32>(30840u, 38635u), vec2<u32>(1u, 0u), vec2<u32>(30922u, 24214u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = (_wgslsmith_sub_vec3_u32(min(~vec3<u32>(global2.b, 0u, 4294967295u), vec3<u32>(arg_3.a, 4294967295u, 1u) | vec3<u32>(4294967295u, 0u, 15866u)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(4294967295u, global2.b, global2.b), vec3<u32>(global2.b, 4294967295u, 109521u)), ~vec3<u32>(arg_3.a, 0u, 50378u))) ^ (_wgslsmith_mult_vec3_u32(select(vec3<u32>(global2.b, global2.b, global2.b), vec3<u32>(4294967295u, arg_3.a, 16346u), true), _wgslsmith_mult_vec3_u32(vec3<u32>(global2.b, global2.b, 46258u), vec3<u32>(global2.b, global2.b, global2.b))) >> ((vec3<u32>(1u, arg_3.a, arg_3.a) ^ reverseBits(vec3<u32>(8375u, global2.b, arg_3.a))) % vec3<u32>(32u)))) >> (~vec3<u32>(17311u, firstTrailingBit(firstTrailingBit(4294967295u)), select(~global2.b, arg_3.a, global2.a < u_input.b)) % vec3<u32>(32u));
    let var_1 = arg_3.c.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_3.c.c.x, _wgslsmith_f_op_f32(min(arg_1, -590f)), global0[_wgslsmith_index_u32(~43729u, 1u)])))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(708f * _wgslsmith_f_op_f32(select(arg_0, 334f, global0[_wgslsmith_index_u32(var_0.x, 1u)])))))), _wgslsmith_div_vec2_f32(arg_2.xy, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-625f)), _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x)))))));
    let var_3 = -_wgslsmith_mult_vec2_i32(~vec2<i32>(-arg_3.b, min(var_1, u_input.a.x)), u_input.a.xy);
    global2 = Struct_2(u_input.a.x, select(global2.b, arg_3.a, all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], arg_3.c.b), vec2<bool>(false, arg_3.c.b), arg_3.c.b), select(vec2<bool>(true, true), vec2<bool>(true, arg_3.c.b), vec2<bool>(global0[_wgslsmith_index_u32(global2.b, 1u)], false)), all(vec2<bool>(global0[_wgslsmith_index_u32(6163u, 1u)], arg_3.c.b))))));
    return vec2<u32>(23598u, ~(~(~_wgslsmith_add_u32(0u, arg_3.a))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_2(global2.a, global2.b & abs(_wgslsmith_dot_vec2_u32(vec2<u32>(53172u, global2.b), func_3(-1702f, -1000f, vec3<f32>(904f, -1611f, -1096f), Struct_3(global2.b, global2.a, Struct_1(u_input.b, true, vec3<f32>(-755f, 118f, 1554f), 12762i))))));
    global1 = array<vec4<u32>, 7>();
    var var_1 = Struct_3(~(0u | var_0.b) & ~(var_0.b | select(33235u, 10938u, false)), 1i, Struct_1(~firstLeadingBit(0i), any(vec3<bool>(arg_0, true, true)) && (!arg_0 & all(vec3<bool>(arg_1, arg_1, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(905f - 1000f), -137f, -466f) * vec3<f32>(_wgslsmith_f_op_f32(abs(834f)), _wgslsmith_f_op_f32(133f * 1299f), _wgslsmith_f_op_f32(round(-370f)))), _wgslsmith_dot_vec4_i32(u_input.a >> (max(vec4<u32>(18939u, global2.b, var_0.b, global2.b), global1[_wgslsmith_index_u32(global2.b, 7u)]) % vec4<u32>(32u)), firstTrailingBit(~vec4<i32>(u_input.a.x, arg_2.x, var_0.a, -2147483647i)))));
    var var_2 = vec2<u32>(var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_1.a, var_1.a), vec3<u32>(var_1.a, 42571u >> (global2.b % 32u), 1u))) >> (max(~func_3(_wgslsmith_f_op_f32(var_1.c.c.x - -2456f), 1019f, _wgslsmith_f_op_vec3_f32(select(var_1.c.c, vec3<f32>(-378f, -127f, var_1.c.c.x), vec3<bool>(false, false, true))), Struct_3(var_0.b, u_input.a.x, Struct_1(global2.a, var_1.c.b, vec3<f32>(1453f, -1000f, 349f), 41i))), _wgslsmith_add_vec2_u32(~global3[_wgslsmith_index_u32(global2.b, 31u)], select(vec2<u32>(0u, 1u), global3[_wgslsmith_index_u32(global2.b, 31u)], vec2<bool>(false, global0[_wgslsmith_index_u32(global2.b, 1u)])))) % vec2<u32>(32u));
    let var_3 = var_1.c;
    return Struct_1(_wgslsmith_add_i32(-(_wgslsmith_sub_i32(-19868i, 69017i) | ~u_input.a.x), -2147483647i), _wgslsmith_f_op_f32(max(1445f, 836f)) > _wgslsmith_f_op_f32(trunc(-582f)), vec3<f32>(var_3.c.x, -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1349f * var_3.c.x))), -953f))), -1i);
}

fn func_4(arg_0: Struct_1) -> f32 {
    global2 = Struct_2(select(select(-23809i, _wgslsmith_sub_i32(-3484i, u_input.a.x), true), -37112i, !func_2(all(vec2<bool>(true, arg_0.b)), true, -vec2<i32>(-2147483647i, arg_0.a)).b), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), arg_0.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0.c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c.x, -314f, arg_0.c.x)))))), Struct_3(abs(_wgslsmith_div_u32(4294967295u, 1u)), max(1i, -48909i) >> ((global2.b << (4294967295u % 32u)) % 32u), Struct_1(-arg_0.d, !global0[_wgslsmith_index_u32(5199u, 1u)], _wgslsmith_f_op_vec3_f32(-arg_0.c), ~(-2147483647i)))).x);
    let var_0 = vec2<i32>(u_input.b, ~(~(-u_input.b))) | vec2<i32>(~(i32(-1i) * -1i), 36278i);
    global2 = Struct_2(countOneBits(-18284i), _wgslsmith_dot_vec2_u32(~(select(vec2<u32>(global2.b, 35685u), global3[_wgslsmith_index_u32(global2.b, 31u)], vec2<bool>(true, false)) << (vec2<u32>(global2.b, global2.b) % vec2<u32>(32u))), ~countOneBits(~global3[_wgslsmith_index_u32(39685u, 31u)])));
    let var_1 = false && (1678f >= arg_0.c.x);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-383f - _wgslsmith_f_op_f32(max(arg_0.c.x, arg_0.c.x)))))), -171f));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    let var_0 = Struct_1(arg_2.x, false, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(-572f, arg_0, 297f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 871f, -1279f), vec3<f32>(1147f, arg_0, 628f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(287f, arg_0, 600f))))))), _wgslsmith_add_i32(~(~4650i), i32(-1i) * -_wgslsmith_sub_i32(u_input.a.x, arg_2.x)));
    global1 = array<vec4<u32>, 7>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(true, any(vec3<bool>(arg_1, arg_1, true)), countOneBits(u_input.a.yw))))));
    var var_2 = -43414i;
    var_1 = _wgslsmith_f_op_f32(arg_0 - 733f);
    return _wgslsmith_dot_vec3_i32(-(~(~u_input.a.yyw)) ^ u_input.a.zzz, vec3<i32>(arg_2.x, firstTrailingBit(_wgslsmith_mult_i32(abs(-1i), 1i)), var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-2147483647i, 39632u);
    var var_1 = Struct_3(3434u, 33144i, Struct_1(-(~func_1(395f, global0[_wgslsmith_index_u32(global2.b, 1u)], u_input.a.yzz, 9638u)), global0[_wgslsmith_index_u32(max(firstLeadingBit(50773u), global2.b), 1u)], vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(404f, 1978f))))), global2.a));
    var var_2 = Struct_2(-_wgslsmith_dot_vec3_i32(u_input.a.yww, u_input.a.zxy), ~var_1.a);
    let var_3 = 1i;
    let var_4 = _wgslsmith_div_u32(~(~1u), 52017u);
    var var_5 = select(!vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.b, 1u)], !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(27383u, 4294967295u), var_1.a, _wgslsmith_mod_u32(var_1.a, 57314u)), 1u)]));
    var var_6 = Struct_2(global2.a, 1u);
    var_6 = Struct_2(_wgslsmith_mult_i32(func_2(all(!vec3<bool>(global0[_wgslsmith_index_u32(50161u, 1u)], var_5.x, true)), false, ~vec2<i32>(var_1.c.d, var_3)).d, var_1.c.a), _wgslsmith_dot_vec3_u32(~firstTrailingBit(~vec3<u32>(26017u, 0u, 100615u)), vec3<u32>(~77326u, 4294967295u, firstLeadingBit(abs(var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.c.zy, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c.c.x), -272f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1668f, -439f, true))), 615f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1068f * -251f)), var_1.c.c.x))), 1u, vec2<u32>(4294967295u, ~var_6.b));
}

