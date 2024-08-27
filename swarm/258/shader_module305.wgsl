struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-1i, vec3<bool>(false, true, false), vec3<bool>(true, true, true), 1u, vec2<u32>(143146u, 78671u)), Struct_1(i32(-2147483648), vec3<bool>(true, false, false), vec3<bool>(true, false, false), 1u, vec2<u32>(29366u, 57541u)), Struct_1(i32(-2147483648), vec3<bool>(true, true, true), vec3<bool>(false, false, false), 4294967295u, vec2<u32>(4294967295u, 51776u)), Struct_1(2147483647i, vec3<bool>(true, false, true), vec3<bool>(true, true, true), 44416u, vec2<u32>(0u, 19325u)), Struct_1(1i, vec3<bool>(true, true, false), vec3<bool>(false, true, true), 60628u, vec2<u32>(54288u, 56247u)), Struct_1(-1i, vec3<bool>(false, true, true), vec3<bool>(true, false, true), 36877u, vec2<u32>(0u, 12903u)), Struct_1(2147483647i, vec3<bool>(true, true, true), vec3<bool>(false, true, true), 52320u, vec2<u32>(19254u, 0u)), Struct_1(-1i, vec3<bool>(true, false, true), vec3<bool>(true, true, true), 72219u, vec2<u32>(0u, 87623u)), Struct_1(-1i, vec3<bool>(false, true, false), vec3<bool>(true, false, true), 16596u, vec2<u32>(1u, 4294967295u)), Struct_1(2147483647i, vec3<bool>(true, false, true), vec3<bool>(false, false, true), 106708u, vec2<u32>(1u, 25238u)));

var<private> global1: array<bool, 9> = array<bool, 9>(false, true, false, false, true, false, true, false, true);

var<private> global2: Struct_2;

var<private> global3: vec3<f32> = vec3<f32>(484f, -519f, 1351f);

var<private> global4: array<bool, 26> = array<bool, 26>(false, false, true, true, true, false, false, false, false, true, false, false, false, true, true, false, false, true, false, false, false, true, false, true, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = select(!global2.d.b, arg_1.b, vec3<bool>(select(false, true, true), global4[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(u_input.b.x)), 26u)], arg_3.b.x));
    var var_1 = global0[_wgslsmith_index_u32(0u, 10u)];
    var var_2 = select(~countOneBits(~_wgslsmith_mod_vec2_u32(var_1.e, arg_2.d.e)), abs(select(~vec2<u32>(arg_1.e.x, arg_2.d.d), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.d, 0u), arg_3.e), arg_1.c.yx)), global4[_wgslsmith_index_u32(global2.d.e.x, 26u)]);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, global2.c) + -156f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 10>();
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.d, 9571u), 9u)], vec3<i32>(-1i) * -global2.b, _wgslsmith_f_op_f32(-1262f + _wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(-771f * -201f))), global0[_wgslsmith_index_u32(~(~max(u_input.c.x, _wgslsmith_mod_u32(arg_0.d, 4294967295u))), 10u)]);
    global3 = vec3<f32>(_wgslsmith_f_op_f32(sign(global2.c)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - 229f) * _wgslsmith_f_op_f32(-var_0.c))))), _wgslsmith_f_op_f32(f32(-1f) * -1186f));
    global4 = array<bool, 26>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(_wgslsmith_mod_u32(1u, 41295u), firstTrailingBit(13787u), var_0.d.d), Struct_1(-62066i, !global2.d.c, select(vec3<bool>(true, false, false), arg_0.c, var_0.d.c.x), var_0.d.d, global2.d.e), var_0, var_0.d))), -1238f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(923f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1033f, 1314f)))));
    return Struct_1(var_0.b.x, var_0.d.c, select(select(select(arg_0.b, global2.d.b, true), !select(arg_0.c, arg_0.b, vec3<bool>(var_0.a, true, arg_0.c.x)), vec3<bool>(select(true, arg_0.b.x, global2.a), true, true)), !(!(!global2.d.c)), !var_0.d.c), abs(~u_input.b.x), ~firstTrailingBit(vec2<u32>(~4294967295u, 1u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-695f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f - global2.c))), _wgslsmith_f_op_f32(func_3(u_input.b.yyz, global0[_wgslsmith_index_u32(~97841u, 10u)], Struct_2(true, max(global2.b, global2.b), _wgslsmith_f_op_f32(abs(-312f)), global2.d), global0[_wgslsmith_index_u32(27440u, 10u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * global2.c)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -924f, -822f) * vec3<f32>(-446f, -1206f, 564f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, global2.c, 641f), vec3<f32>(global2.c, 1068f, global2.c)))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.x, _wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(708f + 1000f)))))));
    let var_1 = false;
    global4 = array<bool, 26>();
    let var_2 = Struct_1(1i, select(vec3<bool>(true, !func_2(global2.d).b.x, !(arg_1.b.x && global2.d.c.x)), func_2(arg_1).c, vec3<bool>(false, true, true)), func_2(Struct_1(1i, vec3<bool>(true, any(vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 26u)], true, true)), global4[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<bool>(select(arg_1.c.x, arg_1.c.x, var_1), true && arg_1.b.x, any(vec4<bool>(false, global4[_wgslsmith_index_u32(global2.d.e.x, 26u)], true, global2.a))), global2.d.d, ~vec2<u32>(arg_1.e.x, u_input.c.x))).b, _wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(22769u, 11719u), global2.d.e) ^ ~(u_input.b.x ^ u_input.c.x), _wgslsmith_clamp_u32(global2.d.d, 42099u, 4294967295u)), func_2(Struct_1(~abs(arg_0.x), select(select(arg_1.c, vec3<bool>(global1[_wgslsmith_index_u32(global2.d.e.x, 9u)], true, false), true), select(arg_1.b, vec3<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 26u)], global4[_wgslsmith_index_u32(global2.d.e.x, 26u)]), global2.d.c), vec3<bool>(true, true, true)), vec3<bool>(!arg_1.c.x, global2.b.x < arg_0.x, true), 11641u, abs(global2.d.e))).e);
    global4 = array<bool, 26>();
    return Struct_1(29754i, vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(~var_2.e.x, 9u)], true, false)), all(vec4<bool>(global2.d.c.x, true, true, false)), any(var_2.b.xz)), select(arg_1.b, select(vec3<bool>(!global4[_wgslsmith_index_u32(4294967295u, 26u)], true, true), arg_1.b, arg_1.b), vec3<bool>(global2.d.c.x, false, any(vec2<bool>(var_2.c.x, arg_1.c.x)))), min(~_wgslsmith_mod_u32(u_input.a, u_input.c.x) << (global2.d.d % 32u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_1.e.x, u_input.c.x), var_2.d, global2.d.d)), ~(~_wgslsmith_sub_vec2_u32(arg_1.e | arg_1.e, var_2.e)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_1(~(-func_4(vec2<i32>(-16742i, arg_1.a), Struct_1(global2.d.a, arg_1.c, vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 26u)], true, arg_1.b.x), 1u, vec2<u32>(1u, u_input.a))).a), !func_4(global2.b.zz, func_2(global2.d)).c, !(!global2.d.c), ~arg_1.d, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(global2.d.e, arg_1.e, vec2<u32>(30232u, 83100u)), vec2<u32>(61892u, arg_1.e.x)), ~vec2<u32>(abs(1u), 1u >> (arg_1.e.x % 32u))));
    let var_1 = u_input.a;
    var var_2 = Struct_2(true, _wgslsmith_clamp_vec3_i32(vec3<i32>(~(1i | global2.d.a), var_0.a, i32(-1i) * -global2.b.x), global2.b, select(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, var_0.a, 21908i), global2.b >> (vec3<u32>(27379u, 1u, 0u) % vec3<u32>(32u)), abs(global2.b)), global2.b | (global2.b ^ vec3<i32>(var_0.a, global2.b.x, 1i)), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], false, global4[_wgslsmith_index_u32(u_input.c.x, 26u)]))), _wgslsmith_f_op_f32(sign(arg_2)), func_2(Struct_1(0i, !(!var_0.b), !vec3<bool>(arg_0, false, arg_0), ~2900u, ~select(vec2<u32>(var_0.e.x, 52040u), vec2<u32>(1u, var_1), arg_1.b.xy))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(abs(_wgslsmith_mult_u32(global2.d.d, 75409u)) << (~(~0u) % 32u)), 4294967295u | ((~4294967295u >> (~arg_1.d % 32u)) ^ _wgslsmith_mult_u32(1u, ~var_2.d.d))), 10u)];
    let var_4 = _wgslsmith_add_i32(arg_1.a, func_4(vec2<i32>(~(~(-1i)), abs(select(0i, arg_1.a, var_2.d.b.x))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zzx, vec3<u32>(~global2.d.d, ~1u, global2.d.d)), 10u)]).a);
    return Struct_2(arg_1.b.x, max(vec3<i32>(func_2(var_2.d).a, ~_wgslsmith_add_i32(-11121i, 2147483647i), 2147483647i), select(max(vec3<i32>(var_0.a, global2.b.x, -77275i) >> (vec3<u32>(global2.d.e.x, 64627u, 0u) % vec3<u32>(32u)), vec3<i32>(20826i, -2147483647i, var_2.b.x)), ~(-global2.b), var_3.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), -1836f)), _wgslsmith_f_op_f32(sign(global2.c)))))), func_4(_wgslsmith_clamp_vec2_i32(global2.b.xz, vec2<i32>(func_4(var_2.b.zz, Struct_1(arg_1.a, vec3<bool>(global2.a, global1[_wgslsmith_index_u32(var_0.d, 9u)], false), vec3<bool>(true, true, true), arg_1.d, vec2<u32>(4294967295u, 62273u))).a, ~(-2147483647i)), vec2<i32>(func_2(global0[_wgslsmith_index_u32(u_input.a, 10u)]).a, ~var_2.d.a)), global2.d));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1009f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2754f, -1876f))))))));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(17767i, 2147483647i), firstLeadingBit(global2.b.zy));
    let var_2 = 1u;
    let var_3 = func_5(_wgslsmith_f_op_f32(-global2.c) > _wgslsmith_div_f32(global3.x, -354f), func_4(abs(firstTrailingBit(global2.b.zy << (global2.d.e % vec2<u32>(32u)))), func_2(global0[_wgslsmith_index_u32(4294967295u, 10u)])), global2.c);
    let var_4 = func_5(true, func_2(Struct_1(_wgslsmith_dot_vec2_i32(var_3.b.yy, abs(var_3.b.yy)), global2.d.b, var_3.d.b, func_5(var_3.a, Struct_1(global2.b.x, vec3<bool>(global1[_wgslsmith_index_u32(0u, 9u)], global4[_wgslsmith_index_u32(u_input.a, 26u)], false), global2.d.b, 4294967295u, arg_2.zx), _wgslsmith_f_op_f32(floor(var_3.c))).d.e.x, var_3.d.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.c)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1474f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(-global3.x)))))));
    return var_4.d;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(768f)) + global3.x))));
    let var_2 = _wgslsmith_sub_vec3_i32(global2.b, abs((-vec3<i32>(-1i, arg_1.b.x, 48661i) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(71593u, arg_1.d.d, 0u), vec3<u32>(14814u, 10926u, 75533u), u_input.c.yzx) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(u_input.c.yyw, u_input.b.yww << (u_input.b.xxw % vec3<u32>(32u))) % vec3<u32>(32u))));
    global1 = array<bool, 9>();
    var var_3 = Struct_2(~(~global2.d.e.x >> (_wgslsmith_mult_u32(1u, arg_1.d.d) % 32u)) != _wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.d.e.x, 1u), min(min(1u, 49633u), arg_1.d.e.x)), vec3<i32>(-(~func_2(Struct_1(arg_1.b.x, vec3<bool>(arg_1.d.b.x, false, global4[_wgslsmith_index_u32(2674u, 26u)]), vec3<bool>(global4[_wgslsmith_index_u32(88779u, 26u)], true, global4[_wgslsmith_index_u32(0u, 26u)]), global2.d.d, arg_1.d.e)).a), ~global2.d.a, ~(-(arg_1.b.x | -64637i))), var_1.x, Struct_1(-1133i & _wgslsmith_div_i32(firstLeadingBit(-1i), arg_1.b.x), vec3<bool>(global1[_wgslsmith_index_u32(~(~28345u), 9u)], global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(global2.d.e.x, 9783u), ~u_input.c.x), 26u)], true), select(global2.d.c, vec3<bool>(11022i <= var_2.x, !arg_1.a, arg_1.a), !arg_1.d.c.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.d.d, 16199u), ~1u << (u_input.a % 32u)), func_2(global2.d).e));
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_3.d.d), 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(-global3.yy), Struct_2(global2.a, vec3<i32>(max(1i, global2.b.x ^ global2.b.x), -10851i, -_wgslsmith_mod_i32(global2.b.x, global2.b.x)), _wgslsmith_f_op_f32(-global2.c), func_1(global2.d.d, global2.d.c.xz, u_input.b, ~_wgslsmith_add_u32(7887u, u_input.b.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(-1182f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -860f) + _wgslsmith_f_op_f32(select(1910f, global3.x, global2.d.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1006f + global2.c) - _wgslsmith_f_op_f32(global3.x - -1482f)), global3.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(514f, global2.c, 1000f, -1392f) * vec4<f32>(global2.c, -2030f, global3.x, 1124f))))))));
    let var_1 = vec2<bool>(true, (~(var_0.d ^ var_0.d) > _wgslsmith_clamp_u32(func_1(14184u, vec2<bool>(false, true), u_input.b, u_input.c.x).e.x, global2.d.e.x, ~u_input.b.x)) & select(global2.c != global2.c, any(var_0.c) & true, true));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(-614f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global3.x))))));
    let var_3 = Struct_2(func_5(func_6(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(-1115f))), Struct_2(true, max(global2.b, global2.b), 269f, Struct_1(6542i, vec3<bool>(var_1.x, var_0.c.x, true), vec3<bool>(global4[_wgslsmith_index_u32(4508u, 26u)], global4[_wgslsmith_index_u32(4713u, 26u)], var_0.c.x), 23968u, vec2<u32>(var_0.e.x, 1u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1052f, global2.c, -991f, 2250f))).c.x, global0[_wgslsmith_index_u32(global2.d.e.x, 10u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-139f + 712f), _wgslsmith_f_op_f32(-var_2.x))).d.b.x, abs(~countOneBits(vec3<i32>(global2.b.x, -18599i, -1i))), var_2.x, func_6(_wgslsmith_f_op_vec2_f32(-global3.xy), Struct_2(global2.d.c.x, max(vec3<i32>(global2.b.x, -9321i, var_0.a), vec3<i32>(var_0.a, 1i, var_0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_2.x)))), func_6(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.x, global3.x), global3.yx)), func_5(global1[_wgslsmith_index_u32(u_input.a, 9u)], Struct_1(-1216i, global2.d.c, vec3<bool>(true, false, var_1.x), 4294967295u, vec2<u32>(u_input.c.x, var_0.e.x)), global2.c), _wgslsmith_div_vec4_f32(vec4<f32>(1443f, -759f, 209f, global2.c), vec4<f32>(-1281f, -846f, -982f, 1208f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, global3.x, global3.x, -684f) - vec4<f32>(global3.x, global3.x, -1159f, global3.x))))));
    var var_4 = vec3<u32>(89783u, countOneBits(abs(~0u)) >> (func_4(global2.b.xx, Struct_1(~var_3.b.x, func_6(var_2, var_3, vec4<f32>(var_3.c, 448f, 2055f, global3.x)).b, func_5(false, Struct_1(global2.d.a, var_0.b, var_3.d.b, u_input.a, vec2<u32>(u_input.a, 4294967295u)), 855f).d.b, ~1u, vec2<u32>(0u, var_3.d.d))).e.x % 32u), var_3.d.d);
    let var_5 = var_0.a;
    var var_6 = var_3.d;
    let var_7 = func_5(var_1.x | !any(vec4<bool>(false, false, false, false)), var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(round(global3.x))), var_3.c))).c;
    let x = u_input.a;
    s_output = StorageBuffer(var_7, ~u_input.b.x, _wgslsmith_mod_vec4_i32(vec4<i32>(33783i, -45760i, select(-2147483647i, 1i, 30928u == var_4.x), func_1(_wgslsmith_clamp_u32(4294967295u, 4294967295u, var_0.d), select(var_0.b.yy, vec2<bool>(false, true), true), u_input.c, var_4.x).a), vec4<i32>(reverseBits(var_6.a), -global2.b.x, ~var_6.a, _wgslsmith_add_i32(-1i, 0i)) ^ select(vec4<i32>(global2.d.a, 17853i, var_0.a, var_6.a) & vec4<i32>(1i, -27115i, 2147483647i, global2.d.a), vec4<i32>(15582i, 30129i, var_3.d.a, var_6.a), vec4<bool>(false, false, var_3.a, false))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-117f, global2.c)))), _wgslsmith_f_op_f32(-1795f - -110f)), global2.c, 958f), global2.b.xz);
}

