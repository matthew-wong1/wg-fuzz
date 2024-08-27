struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false, true, 0u, false, vec4<bool>(false, true, true, true)), Struct_1(false, false, 0u, true, vec4<bool>(false, false, true, true)), Struct_1(true, false, 33231u, false, vec4<bool>(true, true, true, true)), Struct_1(true, true, 4294967295u, false, vec4<bool>(true, true, false, false)), Struct_1(false, false, 1u, true, vec4<bool>(false, false, false, true)), Struct_1(false, true, 1u, true, vec4<bool>(true, false, true, true)), Struct_1(true, false, 1u, true, vec4<bool>(false, true, true, true)), Struct_1(false, false, 4294967295u, false, vec4<bool>(true, false, false, false)), Struct_1(true, false, 21885u, true, vec4<bool>(true, false, true, false)), Struct_1(false, true, 29607u, true, vec4<bool>(false, false, false, false)), Struct_1(false, true, 6958u, false, vec4<bool>(true, false, false, false)), Struct_1(false, true, 4294967295u, true, vec4<bool>(false, true, false, false)), Struct_1(true, false, 4294967295u, false, vec4<bool>(true, false, true, false)), Struct_1(false, false, 4294967295u, false, vec4<bool>(true, true, false, false)), Struct_1(false, true, 0u, true, vec4<bool>(true, true, true, true)), Struct_1(true, false, 4294967295u, true, vec4<bool>(false, true, true, false)), Struct_1(false, true, 4294967295u, true, vec4<bool>(false, false, true, true)), Struct_1(false, true, 8248u, false, vec4<bool>(true, true, false, false)), Struct_1(false, false, 4294967295u, false, vec4<bool>(false, false, false, false)), Struct_1(true, true, 4294967295u, true, vec4<bool>(false, true, true, false)), Struct_1(false, false, 1u, true, vec4<bool>(true, true, true, false)), Struct_1(true, false, 1u, true, vec4<bool>(true, false, true, true)), Struct_1(true, false, 1u, false, vec4<bool>(false, false, true, true)), Struct_1(true, false, 31276u, true, vec4<bool>(false, true, true, false)), Struct_1(true, true, 4294967295u, true, vec4<bool>(false, true, false, false)), Struct_1(false, true, 35513u, false, vec4<bool>(true, false, true, false)));

var<private> global3: Struct_1;

var<private> global4: u32 = 68955u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(global3.c, 28u)];
    var var_1 = global2[_wgslsmith_index_u32(0u, 26u)];
    let var_2 = Struct_1(u_input.e.x >= min((u_input.b.x ^ -1i) << (~5697u % 32u), ~abs(2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.b.x), vec3<i32>(-7099i, u_input.a.x, -12677i)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -14869i, u_input.e.x), u_input.b.wxw)), u_input.b.x, 2147483647i) <= max(~2147483647i, -26994i & (34868i << (u_input.c % 32u))), abs(firstLeadingBit(0u)), global3.a, !select(select(!arg_1.e, !vec4<bool>(true, false, global3.a, var_1.b), select(var_0.e.x, true, arg_0)), var_1.e, arg_1.c != _wgslsmith_clamp_u32(1u, 0u, global3.c)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1991f);
}

fn func_2(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = Struct_1(true, all(select(!global3.e, global3.e, false)), _wgslsmith_add_u32(u_input.c, u_input.c), global3.e.x, !(!global3.e));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global3.a, global0[_wgslsmith_index_u32(~select(var_0.c, 28569u, global3.e.x), 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1127f) + _wgslsmith_f_op_f32(sign(220f))))), _wgslsmith_f_op_f32(func_3(~var_0.c != ~0u, Struct_1(false, true, global3.c, global3.a, select(var_0.e, vec4<bool>(false, false, true, false), var_0.d)), 984f))), 1f);
    var var_2 = 594f;
    let var_3 = vec3<bool>(true, !global3.b, select(~global3.c > 1u, all(var_0.e.yyz), any(vec4<bool>(var_0.e.x, false, false, false)) && true) | (!global3.b | global3.e.x));
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(12573u, 23871u, var_0.c, 10913u) ^ vec4<u32>(91271u, global3.c, 117768u, 21700u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c, var_0.c, 53284u), vec4<u32>(72032u, 36772u, global3.c, 4294967295u)))), reverseBits(1u), var_0.c), 28u)];
    return ~vec3<u32>(1u, ~6768u, 9555u);
}

fn func_1() -> vec4<u32> {
    global4 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(func_2(vec2<i32>(u_input.b.x, u_input.d.x)) & vec3<u32>(1714u, 52826u, 1u), countOneBits(vec3<u32>(u_input.c, 13271u, global3.c))), ~(~u_input.c)), vec2<u32>(u_input.c, 48984u));
    let var_0 = global2[_wgslsmith_index_u32(global3.c, 26u)];
    global4 = ~_wgslsmith_mult_u32(var_0.c, 0u);
    var var_1 = !vec2<bool>(all(select(select(vec3<bool>(false, true, false), global3.e.zzx, var_0.e.ywy), !var_0.e.xwx, global3.e.x && false)), !(all(vec4<bool>(var_0.d, var_0.d, false, global3.a)) | !var_0.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-964f, _wgslsmith_f_op_f32(f32(-1f) * -1380f), -661f, _wgslsmith_f_op_f32(min(-291f, -975f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1210f, 495f, 600f, 803f))))));
    return max(vec4<u32>(u_input.c, u_input.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 43794u), ~vec2<u32>(38743u, 7689u)), global3.c) << (_wgslsmith_add_vec4_u32(max(firstLeadingBit(vec4<u32>(6641u, var_0.c, 19222u, 4294967295u)), abs(vec4<u32>(global3.c, u_input.c, global3.c, var_0.c))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(27519u, var_0.c, 65041u), vec3<u32>(4294967295u, u_input.c, 1u)), ~u_input.c, global3.c, var_0.c)) % vec4<u32>(32u)), reverseBits(firstTrailingBit(vec4<u32>(1u, 1u, _wgslsmith_add_u32(31578u, 41525u), 0u))));
}

fn func_4(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(1664f)), _wgslsmith_f_op_f32(-398f + -1229f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1372f, -1066f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1496f, -817f), vec2<f32>(130f, -639f))), vec2<f32>(642f, 1427f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-195f, -195f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1092f, 287f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 858f)))))), select(global3.e.zx, global3.e.yx, select(global3.e.ww, global3.e.ww, false))))));
    global0 = array<Struct_1, 17>();
    let var_1 = global2[_wgslsmith_index_u32(arg_0, 26u)];
    let var_2 = Struct_1(true, any(vec3<bool>(false, select(true, global3.a, global3.e.x), true)) | any(!select(global3.e.yyw, global3.e.yyx, global3.d)), 0u, !(true | (_wgslsmith_f_op_f32(-var_0.x) <= var_0.x)), !select(!var_1.e, var_1.e, true));
    var var_3 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, u_input.d.x), _wgslsmith_mult_i32(1i, select(u_input.d.x, u_input.d.x, var_1.d) << (128673u % 32u))), u_input.e.x >> (global3.c % 32u), firstLeadingBit(_wgslsmith_div_i32(-1i & _wgslsmith_add_i32(u_input.a.x, u_input.e.x), abs(i32(-1i) * -13372i))), u_input.b.x);
    return Struct_1(var_2.d, true, _wgslsmith_dot_vec2_u32(~select(~vec2<u32>(arg_0, u_input.c), firstTrailingBit(vec2<u32>(13633u, u_input.c)), any(vec2<bool>(false, var_1.a))), vec2<u32>(abs(var_1.c ^ 98650u), global3.c ^ global3.c)), var_1.d, !select(vec4<bool>(var_1.a && false, var_1.a, all(vec2<bool>(var_1.a, true)), true), !select(vec4<bool>(global3.d, var_1.d, false, var_1.b), var_1.e, var_1.d), vec4<bool>(false, false, select(false, var_1.b, var_1.b), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(!any(vec3<bool>(false, global3.a, true)), (-1409f != _wgslsmith_f_op_f32(round(-487f))) && global3.b, global3.a);
    let var_1 = func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~27372u), _wgslsmith_mult_u32(reverseBits(5991u), ~global3.c), ~u_input.c, u_input.c), _wgslsmith_mult_vec4_u32(func_1(), abs(_wgslsmith_add_vec4_u32(vec4<u32>(44523u, global3.c, global3.c, 33299u), vec4<u32>(33572u, global3.c, 15855u, 974u))))));
    var var_2 = u_input.e.x;
    let var_3 = u_input.b;
    var var_4 = vec2<bool>(true, false);
    global3 = var_1;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-129f, 2117f)), _wgslsmith_f_op_f32(111f + -438f))), _wgslsmith_f_op_f32(1054f * -414f))));
    global0 = array<Struct_1, 17>();
    var var_6 = global3.e.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -738f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-662f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1220f + 752f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -458f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-465f)), -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(860f, 1555f, -340f, 874f) * vec4<f32>(-221f, -1000f, 1307f, -452f))) - vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, -1000f, true)), _wgslsmith_f_op_f32(min(417f, 960f)), -1020f, _wgslsmith_f_op_f32(298f - 1000f)))));
}

