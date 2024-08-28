struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<i32, 29> = array<i32, 29>(-24004i, -21868i, 1i, -2316i, 0i, i32(-2147483648), -21957i, 3464i, -31961i, 0i, 1i, -53146i, 19558i, 57915i, 12052i, 2147483647i, 8498i, -1i, i32(-2147483648), 70077i, -1i, 1i, 1i, -1i, 59552i, i32(-2147483648), i32(-2147483648), -8400i, -1i);

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -145f))))));
    var var_1 = Struct_1(!(!all(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0, 9u)], global0[_wgslsmith_index_u32(11240u, 9u)]))), -((global1[_wgslsmith_index_u32(~45244u, 29u)] << (_wgslsmith_mult_u32(u_input.a.x, arg_0) % 32u)) | max(2147483647i, global1[_wgslsmith_index_u32(17582u, 29u)])));
    var var_2 = -vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(-19953i, u_input.b.x ^ 2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.c.x), 29u)]), ~var_1.b, global1[_wgslsmith_index_u32(~firstTrailingBit(global2.b), 29u)]);
    var var_3 = 1u;
    let var_4 = vec3<bool>(select(false, all(vec2<bool>(true, var_1.a)) != true, global0[_wgslsmith_index_u32(global2.a.x, 9u)]), var_1.a, any(!(!select(vec3<bool>(true, false, var_1.a), vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 9u)]), var_1.a))));
    return _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> vec3<bool> {
    let var_0 = -global1[_wgslsmith_index_u32(4294967295u, 29u)];
    global0 = array<bool, 9>();
    let var_1 = Struct_3(~_wgslsmith_mult_vec2_u32(~vec2<u32>(global2.b, 0u) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), vec2<u32>(~0u, global2.a.x)), reverseBits(~(~select(4294967295u, global2.a.x, arg_2))));
    global0 = array<bool, 9>();
    global2 = var_1;
    return vec3<bool>(var_0 <= -1i, false, reverseBits(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(reverseBits(global2.b), 29u)], 2147483647i)) == _wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(1i, _wgslsmith_mod_i32(-2147483647i, 2147483647i))));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<bool>) -> f32 {
    global0 = array<bool, 9>();
    var var_0 = Struct_1(true, -arg_0.x);
    var var_1 = !arg_1.zx;
    let var_2 = !select(!(!select(vec4<bool>(false, var_0.a, true, false), vec4<bool>(var_1.x, true, var_0.a, arg_1.x), vec4<bool>(true, var_0.a, var_0.a, arg_1.x))), select(!vec4<bool>(false, false, var_0.a, true), !vec4<bool>(false, global0[_wgslsmith_index_u32(global2.a.x, 9u)], true, true), ~global2.b <= global2.b), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1596f), _wgslsmith_div_vec4_f32(vec4<f32>(-427f, 1955f, 1000f, -125f), vec4<f32>(119f, -1276f, -500f, -636f)), all(vec4<bool>(var_1.x, false, false, true))).x | all(arg_1.yx));
    let var_3 = ~(~vec4<u32>(4294967295u, _wgslsmith_sub_u32(global2.b, global2.b), u_input.a.x, 4740u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(275f)))))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(540f)) + _wgslsmith_div_f32(338f, -535f)) + -2196f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(990f - _wgslsmith_f_op_f32(f32(-1f) * -494f)), -984f), _wgslsmith_f_op_f32(func_5(vec3<i32>(global1[_wgslsmith_index_u32(~(~u_input.c.x), 29u)], -34196i, u_input.b.x), func_4(_wgslsmith_f_op_f32(func_3(u_input.a.x, -304f)), vec4<f32>(_wgslsmith_f_op_f32(min(693f, 1441f)), -1533f, _wgslsmith_f_op_f32(572f + 1799f), _wgslsmith_f_op_f32(ceil(1755f))), !(!global0[_wgslsmith_index_u32(u_input.a.x, 9u)])))));
    global2 = Struct_3(u_input.a, _wgslsmith_add_u32(~0u, firstTrailingBit(~(global2.a.x >> (global2.a.x % 32u)))));
    let var_1 = ~firstLeadingBit(global1[_wgslsmith_index_u32(~arg_0, 29u)]);
    return Struct_2(1000f, select(!select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 9u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 9u)]), true), vec2<bool>(-843f != var_0.x, false), vec2<bool>(true | !global0[_wgslsmith_index_u32(global2.b, 9u)], false)), _wgslsmith_clamp_u32(countOneBits(1u), firstTrailingBit(~(global2.b << (3183u % 32u))), 8060u), vec4<f32>(_wgslsmith_f_op_f32(min(1335f, var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_0, 2344f)), _wgslsmith_f_op_f32(f32(-1f) * -897f)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.x, 731f))))))), !global0[_wgslsmith_index_u32(1u, 9u)]);
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(u_input.b.x, reverseBits(global1[_wgslsmith_index_u32(arg_0.c, 29u)]));
    var var_1 = firstTrailingBit(u_input.c.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 34270u, firstTrailingBit(global2.b)), ~vec3<u32>(arg_0.c, 35071u, global2.a.x)) % 32u));
    let var_2 = func_2(u_input.c.x);
    global0 = array<bool, 9>();
    var var_3 = vec2<bool>(global0[_wgslsmith_index_u32(global2.a.x, 9u)], all(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) - 521f), var_2.d, !(var_2.a >= 750f)).zz));
    return Struct_1(true, -29143i);
}

fn func_7(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    var var_0 = select(func_2(u_input.a.x).b, vec2<bool>(!arg_1.a, true), all(vec3<bool>(true, true != !arg_1.a, true != arg_0)));
    let var_1 = Struct_3(select(global2.a, _wgslsmith_div_vec2_u32(vec2<u32>(1u, ~u_input.a.x), vec2<u32>(_wgslsmith_add_u32(0u, global2.b), _wgslsmith_add_u32(u_input.c.x, global2.b))), true), ~(~u_input.c.x));
    global2 = Struct_3(vec2<u32>(~u_input.c.x, ~(~var_1.b)), ~var_1.a.x);
    var var_2 = -2277f;
    let var_3 = Struct_1(all(!(!func_2(global2.b).b)), 1i);
    return Struct_2(361f, vec2<bool>(global0[_wgslsmith_index_u32(~(0u ^ var_1.a.x), 9u)], !all(vec2<bool>(false, var_3.a))), global2.a.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-721f))), 1f, -417f, _wgslsmith_f_op_f32(f32(-1f) * -1231f)), true && global0[_wgslsmith_index_u32(u_input.a.x, 9u)]);
}

fn func_8(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = vec3<bool>(select(arg_1.x, func_2(arg_2.x).e || arg_1.x, any(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 9u)], arg_0.e, false), vec4<bool>(false, false, true, true), true))), false, any(select(select(arg_0.b, vec2<bool>(true, global0[_wgslsmith_index_u32(27048u, 9u)]), !arg_0.b), func_7(true, func_6(Struct_2(arg_0.a, arg_0.b, 69200u, vec4<f32>(arg_0.d.x, 2119f, 249f, arg_0.a), true))).b, func_2(~arg_0.c).e)));
    let var_1 = Struct_1(var_0.x, global1[_wgslsmith_index_u32(max(~20816u, 1u), 29u)]);
    let var_2 = abs(reverseBits(0i));
    let var_3 = ~firstTrailingBit(vec4<u32>(4850u >> (1u % 32u), func_2(4294967295u).c, abs(u_input.a.x) >> (_wgslsmith_dot_vec2_u32(u_input.a, arg_2.yz) % 32u), 28521u));
    let var_4 = _wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_3.x, 29u)], 11797i, abs(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b.xxw, u_input.b.xxw)))), _wgslsmith_mult_vec3_i32(abs(-u_input.b.zyw), -firstLeadingBit(min(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(8108u, 29u)], 52450i), u_input.b.zwz))));
    return Struct_3(reverseBits(arg_2.yy) | ~vec2<u32>(func_7(false, Struct_1(true, global1[_wgslsmith_index_u32(33781u, 29u)])).c, 9494u ^ global2.b), 0u);
}

fn func_1() -> Struct_2 {
    global2 = Struct_3(vec2<u32>(~(~select(u_input.c.x, u_input.a.x, true)), 1u), 86249u);
    var var_0 = -15411i;
    let var_1 = _wgslsmith_div_u32(global2.b >> (_wgslsmith_mult_u32(reverseBits(u_input.c.x), ~1u) % 32u), (global2.a.x & ~global2.b) << (~(~global2.a.x) % 32u)) <= 1u;
    global1 = array<i32, 29>();
    var var_2 = func_8(func_7(!var_1, func_6(func_2(u_input.c.x))), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 9u)], func_2(firstLeadingBit(global2.b)).c <= 0u), vec4<u32>(u_input.a.x, u_input.c.x, _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(38123u, 4294967295u, 4294967295u, u_input.a.x)), select(abs(vec4<u32>(1u, global2.a.x, 107350u, 4294967295u)), abs(vec4<u32>(91982u, 22871u, 0u, 68177u)), true)), global2.a.x));
    return Struct_2(_wgslsmith_f_op_f32(823f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_7(var_1, Struct_1(false, global1[_wgslsmith_index_u32(42416u, 29u)])).b, ~92942u, _wgslsmith_f_op_vec4_f32(select(func_2(1u).d, _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(u_input.a.x).a, _wgslsmith_f_op_f32(1887f - 179f), _wgslsmith_f_op_f32(max(1000f, -853f)), _wgslsmith_f_op_f32(1000f - -341f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), !vec4<bool>(var_1, true, !var_1, any(vec4<bool>(false, true, var_1, var_1))))), _wgslsmith_add_i32(u_input.b.x ^ global1[_wgslsmith_index_u32(112662u, 29u)], ~(i32(-1i) * -2147483647i)) != (_wgslsmith_mod_i32(reverseBits(u_input.b.x), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(125187u, 29u)], 2147483647i)) >> (~abs(4294967295u) % 32u)));
}

fn func_9(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = vec3<bool>(true, true, func_4(258f, arg_0.d, arg_0.b.x).x);
    var var_1 = arg_0;
    var_1 = func_1();
    let var_2 = func_8(Struct_2(func_2(abs(21786u)).a, vec2<bool>(true, func_2(var_1.c).e), _wgslsmith_div_u32(1u, abs(u_input.a.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -734f), 1305f, _wgslsmith_f_op_f32(max(795f, -1983f))))), false && all(!vec3<bool>(arg_0.e, false, true))), !var_0, ~firstLeadingBit(vec4<u32>(arg_0.c, ~global2.b, _wgslsmith_mult_u32(0u, global2.a.x), var_1.c >> (114374u % 32u))));
    let var_3 = func_1().d.xy;
    return select(global2.a, ~var_2.a, (u_input.b.x << (select(~var_1.c, _wgslsmith_div_u32(var_1.c, 0u), true) % 32u)) >= arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-2055f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-799f + -449f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1065f) - _wgslsmith_f_op_f32(select(959f, -1756f, false)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1304f)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2436f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-780f, var_0, -1000f)))))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_0, 457f, var_0), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + -161f), 473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 1645f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1302f, var_1.x, var_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1235f, var_1.x, 745f, 1399f))) * vec4<f32>(var_0, 165f, _wgslsmith_f_op_f32(-var_0), var_1.x)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_0, var_0, 545f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1906f, -545f, var_0)), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false)))))));
    var var_3 = Struct_3(vec2<u32>(0u, u_input.a.x), 69876u);
    var var_4 = vec2<bool>(global0[_wgslsmith_index_u32(global2.a.x | global2.b, 9u)], true);
    global2 = Struct_3(func_9(func_1(), u_input.b, min(~u_input.b, vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], u_input.b.x | -2147483647i, firstTrailingBit(2147483647i), i32(-1i) * -2746i))), 0u);
    var var_5 = ~53052u;
    let x = u_input.a;
    s_output = StorageBuffer(0u << (1u % 32u), -(_wgslsmith_sub_vec4_i32(u_input.b, countOneBits(u_input.b)) & u_input.b));
}

