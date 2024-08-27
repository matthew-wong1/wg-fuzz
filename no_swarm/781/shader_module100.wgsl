struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(1u, 41306u, 4294967295u, 8237u), vec4<u32>(1u, 1u, 4294967295u, 43891u), vec4<u32>(22283u, 12678u, 28259u, 101181u), vec4<u32>(18777u, 31659u, 1u, 56488u), vec4<u32>(49947u, 4294967295u, 71132u, 1u), vec4<u32>(1u, 34166u, 25353u, 4294967295u), vec4<u32>(109554u, 0u, 5353u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 8615u), vec4<u32>(35323u, 7u, 1u, 0u), vec4<u32>(4294967295u, 1u, 39028u, 18976u), vec4<u32>(4294967295u, 24416u, 10920u, 0u), vec4<u32>(1u, 0u, 12484u, 0u), vec4<u32>(0u, 83983u, 13521u, 0u), vec4<u32>(0u, 25433u, 2405u, 13221u), vec4<u32>(4294967295u, 4294967295u, 80716u, 4294967295u), vec4<u32>(36514u, 4294967295u, 0u, 0u), vec4<u32>(34714u, 2949u, 4294967295u, 764u), vec4<u32>(8862u, 40364u, 22153u, 0u), vec4<u32>(64848u, 3317u, 1u, 18431u), vec4<u32>(57967u, 77568u, 93674u, 26046u), vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(12238u, 17972u, 4294967295u, 68630u), vec4<u32>(33042u, 0u, 68333u, 4294967295u), vec4<u32>(0u, 0u, 27706u, 0u), vec4<u32>(23244u, 48943u, 35539u, 75482u), vec4<u32>(55240u, 1u, 78806u, 4294967295u), vec4<u32>(1u, 29761u, 91850u, 33543u), vec4<u32>(0u, 29172u, 0u, 1u), vec4<u32>(29390u, 1u, 24689u, 10091u), vec4<u32>(43869u, 1u, 94438u, 12329u), vec4<u32>(27384u, 21652u, 0u, 52702u));

var<private> global2: array<f32, 2> = array<f32, 2>(947f, -657f);

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-916f, -1000f, 3206f), true, vec3<f32>(1000f, 1704f, -1123f), vec2<u32>(4294967295u, 33494u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: bool, arg_1: i32) -> bool {
    return all(select(vec4<bool>(false, !arg_0 | true, true, global0.b), vec4<bool>(false, global0.b, true, false == (global3.b != global0.b)), true));
}

fn func_3() -> i32 {
    let var_0 = !(!all(select(vec2<bool>(global0.b, false), vec2<bool>(false, global3.b), vec2<bool>(false, global3.b))) & global3.b);
    global3 = Struct_1(global3.c, select(any(vec4<bool>(global3.a.x <= -131f, true, true, true)), ((global0.d.x << (u_input.a % 32u)) == (global3.d.x | global3.d.x)) | false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-134f)), global0.a.x, 479f))), global3.d);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.c.x, 327f, 370f), global3.c, vec3<bool>(var_0, true, global3.b))))))), all(select(select(vec2<bool>(true, global3.b), select(vec2<bool>(true, true), vec2<bool>(true, global3.b), vec2<bool>(var_0, true)), vec2<bool>(false, global0.b)), !vec2<bool>(true, global0.b), vec2<bool>(!var_0, global0.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c), _wgslsmith_f_op_vec3_f32(-global3.c)))), u_input.c.yw);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-293f + _wgslsmith_f_op_f32(global3.a.x * global3.a.x))), -1021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x)))), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a, global0.a) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 2u)], 1543f, global3.c.x)))))), vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 2u)] * -965f)), global3.c.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~(vec2<u32>(u_input.a, u_input.a) & u_input.c.xy), vec2<u32>(u_input.a, 19856u)), vec2<u32>(0u, global3.d.x)));
    let var_2 = vec3<f32>(-478f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f))))), -832f);
    return -15551i;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool) -> i32 {
    global1 = array<vec4<u32>, 31>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(global0.c)))), -(~_wgslsmith_div_i32(arg_0.x, 0i)) < _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x << (4294967295u % 32u), func_3()), vec2<i32>(reverseBits(arg_0.x), _wgslsmith_dot_vec3_i32(arg_0.wwx, vec3<i32>(-71752i, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(global0.a)), _wgslsmith_f_op_vec3_f32(abs(global0.c)))))), ~(~countOneBits(global0.d ^ u_input.c.wy)));
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(351f, global0.a.x, -187f)))) * global0.c), true, vec3<f32>(-102f, _wgslsmith_f_op_f32(global3.c.x - global0.a.x), _wgslsmith_f_op_f32(sign(global3.a.x))), ~vec2<u32>(arg_1.a.x, abs(countOneBits(u_input.b))));
    let var_0 = max(arg_0 | arg_0, vec4<i32>(arg_0.x, firstLeadingBit(arg_0.x), ~(~(~arg_0.x)), _wgslsmith_clamp_i32(42527i, 1i, -2147483647i & arg_0.x) >> (global3.d.x % 32u)));
    global1 = array<vec4<u32>, 31>();
    return -_wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_mult_i32(-17017i, var_0.x)), -2147483647i, arg_0.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    global1 = array<vec4<u32>, 31>();
    let var_0 = !select(!(!select(vec4<bool>(global3.b, global3.b, true, true), vec4<bool>(false, false, true, global3.b), global3.b)), select(vec4<bool>(global3.b, global3.d.x <= u_input.b, true, !global3.b), !select(vec4<bool>(true, true, global0.b, global3.b), vec4<bool>(global3.b, false, global3.b, global3.b), true), vec4<bool>(func_1(global0.b, arg_2.x), !global3.b, global0.b, global3.b)), !(!global3.b));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(abs(~u_input.c.xyx), firstLeadingBit(~vec3<u32>(52113u, 0u, 72491u)), vec3<bool>(var_0.x, all(vec4<bool>(true, global0.b, true, true)), arg_2.x >= 76198i)), _wgslsmith_div_vec3_u32(select(vec3<u32>(global0.d.x, global3.d.x, 1u) ^ vec3<u32>(59658u, 0u, global0.d.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0.d.x, global0.d.x), vec3<u32>(4294967295u, global3.d.x, 1u)), var_0.x), _wgslsmith_clamp_vec3_u32(u_input.c.yzy ^ u_input.c.yyw, vec3<u32>(45768u, global3.d.x, global0.d.x), vec3<u32>(50053u, 4294967295u, 4294967295u))), vec3<u32>(min(0u, u_input.b), 52730u, 72955u)), ~vec3<u32>(~(~0u), ~(~91056u), _wgslsmith_add_u32(0u, _wgslsmith_mult_u32(89360u, u_input.a))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(exp2(arg_1)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.c + _wgslsmith_f_op_vec3_f32(global3.a * vec3<f32>(arg_3, -485f, arg_3))))), ~global3.d);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    global0 = Struct_1(vec3<f32>(667f, 538f, 724f), all(vec3<bool>(any(select(vec4<bool>(false, global0.b, false, true), vec4<bool>(false, arg_1.b, global3.b, global3.b), vec4<bool>(true, true, true, false))), true, true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c.x, global3.a.x, global0.a.x), global3.a) * vec3<f32>(388f, 799f, _wgslsmith_f_op_f32(-global3.c.x))), global3.c)), vec2<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c.x), reverseBits(vec2<u32>(30511u, 0u))), 4294967295u, any(!vec4<bool>(false, false, arg_1.b, true))), ~select(abs(global0.d.x), u_input.b, true)));
    var var_0 = func_4(select(~(-vec2<i32>(1i, 1i)), ~(-vec2<i32>(46114i, -2147483647i)), !select(select(vec2<bool>(false, arg_1.b), vec2<bool>(true, true), true), !vec2<bool>(true, arg_0), vec2<bool>(true, true))), vec3<f32>(global3.a.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 43872u, global0.d.x), 2u)], _wgslsmith_f_op_f32(-arg_2.x)), -(_wgslsmith_mult_vec4_i32(~vec4<i32>(7495i, 8346i, -27029i, -35223i), vec4<i32>(1i, 1i, 1i, 1i)) >> (~_wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], vec4<u32>(4294967295u, global3.d.x, 30164u, global3.d.x)) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(26685u, 5019u), 2u)]);
    var var_1 = (_wgslsmith_div_i32(-1i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 6101i, -10575i), vec4<i32>(0i, -1i, 2147483647i, -2147483647i)), abs(-54010i))) & -48106i) | -1i;
    var var_2 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(abs(0i)), ~(-36506i >> (1u % 32u))), vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(32847i, -54950i, 0i, -61940i), ~vec4<i32>(-1i, 7129i, 17463i, -5318i)), 0i)), ~(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-3903i, -294i, -56576i), vec3<i32>(1i, -1i, 2147483647i)), ~45097i) & -12606i));
    let var_3 = _wgslsmith_add_u32(18469u, u_input.c.x);
    return Struct_2(global1[_wgslsmith_index_u32(~abs(~_wgslsmith_clamp_u32(var_0.d.x, 51542u, global3.d.x)), 31u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(true, -max(-7057i, 1i)), func_4(vec2<i32>(func_2(-vec4<i32>(7738i, 2147483647i, 2147483647i, -1i), Struct_2(vec4<u32>(96247u, 24403u, global3.d.x, u_input.b)), global0.b), _wgslsmith_mult_i32(min(10659i, 1i), 0i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -316f, global2[_wgslsmith_index_u32(0u, 2u)]))))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-32928i, 2147483647i, 32i), vec3<i32>(1i, 1i, 1i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(13957i, -2147483647i), vec2<i32>(-3188i, 1150i)), -9532i, i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -574f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f), -948f))));
    global2 = array<f32, 2>();
    global0 = func_4(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-12231i, ~2147483647i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(3763i, 0i, -59965i), vec3<i32>(1i, 8752i, -21915i)))), -vec2<i32>(abs(7627i), _wgslsmith_add_i32(21069i, 13554i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.c)) + global0.c))), max(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(abs(-25029i), _wgslsmith_add_i32(-1i, -1i), i32(-1i) * -1546i, 1i >> (global0.d.x % 32u))), ~max(_wgslsmith_add_vec4_i32(vec4<i32>(-94735i, -42012i, 0i, -49220i), vec4<i32>(0i, -68601i, 2147483647i, 0i)), ~vec4<i32>(1i, -77046i, 1i, 0i))), global3.c.x);
    global3 = func_4(-_wgslsmith_sub_vec2_i32(min(firstTrailingBit(vec2<i32>(-22417i, 2147483647i)), select(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(37936i, 6724i), vec2<bool>(false, global0.b))), vec2<i32>(1i, 1i)), global3.a, vec4<i32>(1i, 1i, 31436i, 1i) ^ vec4<i32>(-(2147483647i << (global0.d.x % 32u)), reverseBits(-9532i), 1i, 2147483647i), global3.a.x);
    var var_1 = Struct_3(_wgslsmith_mult_i32(select(-2147483647i, _wgslsmith_div_i32(1i, -11837i), global0.b), ~1i) >> (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global3.d.x, 0u), var_0.a >> (vec4<u32>(global3.d.x, 23230u, 17271u, var_0.a.x) % vec4<u32>(32u)))) % 32u), ~2147483647i);
    var var_2 = Struct_3(-abs(_wgslsmith_clamp_i32(var_1.b, var_1.a, 29288i) & abs(7465i)), ~_wgslsmith_mod_i32(8266i & func_3(), var_1.a));
    var var_3 = Struct_3(-2020i, ~abs(max(var_2.b, var_2.b)));
    global2 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, var_1.a, -1i), ~2147483647i), func_2(vec4<i32>(7619i, -50738i, -3617i, var_3.b) ^ (vec4<i32>(-1i, var_1.b, var_2.a, -8229i) >> (vec4<u32>(global3.d.x, global3.d.x, 72942u, global0.d.x) % vec4<u32>(32u))), Struct_2(~vec4<u32>(u_input.c.x, 77505u, 14551u, global3.d.x)), any(vec2<bool>(global3.b, false)) || true)), reverseBits(firstLeadingBit(~vec3<i32>(var_1.b, var_2.a, var_1.b))), i32(-1i) * -1i, _wgslsmith_div_i32(_wgslsmith_div_i32(var_1.a, _wgslsmith_sub_i32(62374i, 34448i)), func_3()) ^ ~(-2147483647i ^ (var_2.b ^ 2177i)));
}

