struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<i32>(-21732i, 2147483647i, 46394i), vec2<bool>(false, false), vec4<u32>(0u, 58270u, 40051u, 44627u), -1i, vec3<f32>(1086f, 1419f, -231f));

var<private> global1: Struct_4;

var<private> global2: vec3<i32>;

var<private> global3: array<u32, 27> = array<u32, 27>(0u, 1u, 98277u, 4294967295u, 5245u, 14098u, 19153u, 43749u, 0u, 84199u, 0u, 63418u, 41451u, 59236u, 4943u, 17343u, 82512u, 0u, 34282u, 10255u, 21915u, 26182u, 107184u, 76671u, 4294967295u, 93367u, 1u);

var<private> global4: array<vec2<bool>, 15>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_5(abs(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(global0.c.x, 22307u, global1.c.x)) ^ _wgslsmith_div_vec3_u32(global1.c.zzx, vec3<u32>(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(124036u, 27u)], 27120u)), select(vec3<u32>(global3[_wgslsmith_index_u32(0u, 27u)], 12443u, global3[_wgslsmith_index_u32(1u, 27u)]), vec3<u32>(global0.c.x, 35153u, global3[_wgslsmith_index_u32(16071u, 27u)]) << (u_input.d % vec3<u32>(32u)), false), _wgslsmith_div_vec3_u32(vec3<u32>(23159u, 5620u, 29826u), vec3<u32>(4294967295u, 4294967295u, 1u)) << (~vec3<u32>(33205u, 38763u, global3[_wgslsmith_index_u32(0u, 27u)]) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-122f, -2972f, -143f, global1.e.x) - vec4<f32>(-1181f, global1.e.x, 718f, 558f))))), Struct_1(global1.a.x, _wgslsmith_div_f32(-119f, global0.e.x), !select(arg_1, !vec2<bool>(false, arg_1.x), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-998f))), _wgslsmith_f_op_f32(arg_0.x * global1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1259f * global1.e.x)))));
    global1 = Struct_4(_wgslsmith_mult_vec3_i32(-global1.a, _wgslsmith_mod_vec3_i32(vec3<i32>(20091i, 2147483647i, global0.a.x) >> (global1.c.yxz % vec3<u32>(32u)), -vec3<i32>(global2.x, 2147483647i, global2.x))), select(vec2<bool>(any(vec2<bool>(global0.b.x, false)), 96180u != global3[_wgslsmith_index_u32(abs(4294967295u), 27u)]), arg_1, any(select(vec3<bool>(false, arg_1.x, true), vec3<bool>(false, false, var_0.c.c.x), !vec3<bool>(arg_1.x, global0.b.x, var_0.c.c.x)))), vec4<u32>(~(~4294967295u), global3[_wgslsmith_index_u32(4294967295u, 27u)], countOneBits(0u), global1.c.x & _wgslsmith_div_u32(4294967295u, var_0.a.x)) ^ global1.c, _wgslsmith_sub_i32(0i, abs(countOneBits(global2.x) >> (~4294967295u % 32u))), vec3<f32>(-178f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1514f, 349f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c.b + global0.e.x))) - var_0.d.x)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(291f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global1.e.x, 354f, true)))))));
    global4 = array<vec2<bool>, 15>();
    var_0 = Struct_5(u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, var_1.x, global0.e.x), var_0.d)))))), var_0.c, _wgslsmith_f_op_vec4_f32(var_0.d * var_0.b));
    return 1u;
}

fn func_2() -> Struct_1 {
    global4 = array<vec2<bool>, 15>();
    let var_0 = vec3<u32>(global0.c.x, func_3(vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -712f)), select(select(global4[_wgslsmith_index_u32(~global0.c.x, 15u)], global4[_wgslsmith_index_u32(~global0.c.x, 15u)], global0.b), !global1.b, !(!vec2<bool>(global1.b.x, global1.b.x))), countOneBits(u_input.b)), global3[_wgslsmith_index_u32(23664u << (~global3[_wgslsmith_index_u32(~global0.c.x, 27u)] % 32u), 27u)]);
    var var_1 = !vec3<bool>(true, select(all(vec2<bool>(global1.b.x, false)), global0.b.x, true), global0.e.x != -594f);
    let var_2 = Struct_3(global0.e.x, Struct_1(~((global1.d >> (global1.c.x % 32u)) | u_input.b.x), 1054f, global0.b), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-840f + -1510f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x * global0.e.x))), Struct_1(1i, _wgslsmith_f_op_f32(sign(global0.e.x)), var_1.xz), Struct_1(global1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-541f)), global0.e.x), select(global4[_wgslsmith_index_u32(reverseBits(global0.c.x), 15u)], global4[_wgslsmith_index_u32(global0.c.x, 15u)], global4[_wgslsmith_index_u32(0u << (0u % 32u), 15u)])), Struct_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x * global0.e.x) + _wgslsmith_f_op_f32(global0.e.x * -2050f)), select(select(global0.b, global4[_wgslsmith_index_u32(0u, 15u)], true), vec2<bool>(var_1.x, false), global1.b)), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, global1.b.x, var_1.x), vec4<bool>(global1.b.x, false, global1.b.x, var_1.x)))), Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-6177i, global2.x, global0.a.x) & vec3<i32>(4657i, global1.a.x, -15590i)), (vec3<i32>(global2.x, -2147483647i, global2.x) & vec3<i32>(global0.d, -11174i, u_input.e)) & vec3<i32>(-6953i, 1i, u_input.e)), 919f, !select(vec2<bool>(var_1.x, false), !vec2<bool>(var_1.x, true), global4[_wgslsmith_index_u32(0u, 15u)])), true || !global0.b.x);
    global4 = array<vec2<bool>, 15>();
    return var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = abs(13233u);
    let var_1 = _wgslsmith_f_op_f32(exp2(global0.e.x));
    var var_2 = Struct_4(abs(-global0.a) ^ ~(_wgslsmith_add_vec3_i32(u_input.b.yyy, global0.a) | vec3<i32>(2632i, global2.x, 0i)), !select(arg_0.c, !vec2<bool>(global0.b.x, true), true), global0.c, -global2.x, vec3<f32>(167f, var_1, _wgslsmith_f_op_f32(-1126f * _wgslsmith_f_op_f32(abs(arg_0.b)))));
    global0 = Struct_4(vec3<i32>(~min(_wgslsmith_dot_vec2_i32(vec2<i32>(-14369i, -1i), vec2<i32>(0i, -2147483647i)), -33040i), var_2.d, reverseBits(-_wgslsmith_sub_i32(-2147483647i, -68184i))), vec2<bool>(!(!(var_0 == var_2.c.x)), arg_1), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, global0.c.x, global3[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<u32>(u_input.c.x, 66853u, 1u, var_2.c.x) | _wgslsmith_mod_vec4_u32(var_2.c, global1.c)), global1.d, vec3<f32>(_wgslsmith_f_op_f32(min(-525f, _wgslsmith_f_op_f32(floor(var_1)))), -1011f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1853f + var_2.e.x)) - -928f)));
    var var_3 = Struct_4(-select(global1.a, vec3<i32>(_wgslsmith_clamp_i32(-1i, -9605i, global2.x), 373i, -global1.d), select(select(vec3<bool>(global0.b.x, global1.b.x, global0.b.x), vec3<bool>(arg_0.c.x, false, false), vec3<bool>(var_2.b.x, arg_0.c.x, global0.b.x)), vec3<bool>(global1.b.x, false, false), !vec3<bool>(false, arg_1, arg_1))), !func_2().c, max(vec4<u32>(1u, _wgslsmith_div_u32(var_0, 0u), var_0, var_2.c.x), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(8450u, global1.c.x, 55709u), vec3<u32>(u_input.c.x, 4294967295u, 70939u)) >> (global0.c.x % 32u), ~(~var_0), _wgslsmith_dot_vec2_u32(select(var_2.c.zx, vec2<u32>(var_2.c.x, u_input.d.x), global0.b), global0.c.yy), _wgslsmith_mult_u32(u_input.c.x, var_2.c.x) | 4294967295u)), -global0.d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.x) * 1265f)), -825f, 597f));
    return Struct_2(global0.e.x, func_2(), func_2(), arg_0, select(vec4<bool>(false, (arg_0.a | u_input.e) >= max(1i, 41512i), all(global0.b), !arg_0.c.x), select(vec4<bool>(!var_3.b.x, true, all(global4[_wgslsmith_index_u32(var_0, 15u)]), var_3.b.x), !vec4<bool>(false, false, true, global0.b.x), all(vec3<bool>(false, arg_0.c.x, false)) & !global0.b.x), var_3.b.x));
}

fn func_1() -> Struct_4 {
    global3 = array<u32, 27>();
    let var_0 = vec4<i32>(reverseBits(_wgslsmith_mod_i32(39581i, global1.a.x)), 0i, abs(reverseBits(~37434i)), -global2.x);
    var var_1 = func_4(func_2(), any(!(!(!vec4<bool>(true, true, global0.b.x, global0.b.x)))));
    global2 = ~global1.a;
    let var_2 = Struct_3(1233f, Struct_1(global2.x, 1f, global0.b), func_4(Struct_1(-24968i, 1273f, vec2<bool>(func_4(var_1.d, true).e.x, all(var_1.b.c))), true), var_1.d, !var_1.d.c.x);
    return Struct_4(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-33416i, 15247i << (u_input.d.x % 32u), ~(-7566i))), firstTrailingBit(~var_0.zyx)), func_4(Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 2147483647i, 0i), vec3<i32>(10107i, 0i, -5787i)), var_1.d.b, var_2.b.c), true).e.xz, max(abs(vec4<u32>(global0.c.x, _wgslsmith_mod_u32(u_input.c.x, u_input.d.x), _wgslsmith_add_u32(1u, global3[_wgslsmith_index_u32(4294967295u, 27u)]), global1.c.x)), firstLeadingBit(~global0.c)), -954i, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(992f - global1.e.x) * _wgslsmith_f_op_f32(step(var_2.a, var_1.b.b))), _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.b, -150f, -151f) + vec3<f32>(var_2.b.b, -970f, 471f)))) * vec3<f32>(-506f, 384f, _wgslsmith_f_op_f32(exp2(var_2.b.b)))))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_5 {
    global3 = array<u32, 27>();
    global0 = Struct_4(~arg_0.a, vec2<bool>(!arg_1.x, _wgslsmith_div_f32(global1.e.x, _wgslsmith_div_f32(global1.e.x, arg_0.e.x)) > -414f), global1.c ^ (abs(~global0.c) >> (vec4<u32>(_wgslsmith_mult_u32(42460u, 14168u), global1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, 0u, 4838u), arg_0.c.wwx), _wgslsmith_div_u32(0u, 15505u)) % vec4<u32>(32u))), 1i, arg_0.e);
    global2 = -global0.a;
    global4 = array<vec2<bool>, 15>();
    let var_0 = vec4<f32>(arg_0.e.x, 154f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1328f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-469f)), arg_0.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.e.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1349f * -1000f), -232f)))));
    return Struct_5(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~22765u, global0.c.x), ~(~global1.c.x)), u_input.c.x & 26603u, arg_0.c.x), vec4<f32>(_wgslsmith_f_op_f32(floor(global0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1053f, global1.e.x, !global1.b.x)) * _wgslsmith_f_op_f32(exp2(func_2().b))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(612f * 1269f), !global0.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_div_f32(arg_0.e.x, 110f)))), Struct_1(global0.a.x, -840f, !global4[_wgslsmith_index_u32(64008u, 15u)]), _wgslsmith_f_op_vec4_f32(-var_0));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~min(u_input.d.x << (0u % 32u), 4294967295u), 47714u, 1u), ~global0.c.yyx | ~(global0.c.ywy | (global0.c.xwz ^ u_input.d)));
    var var_1 = func_5(Struct_4(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(global0.a, global1.a), -global0.a), reverseBits(max(vec3<i32>(-1i, 1i, -24491i), vec3<i32>(32510i, u_input.e, 29221i)))), global4[_wgslsmith_index_u32(global0.c.x, 15u)], max(global0.c, global1.c), global2.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1518f, 1000f, 428f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, global1.e.x, arg_1.b))), vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.d.x, -463f)), -3020f, _wgslsmith_f_op_f32(-global0.e.x))))), vec3<bool>(func_1().b.x, false, func_1().b.x));
    var var_2 = Struct_3(-270f, var_1.c, func_4(func_2(), any(select(func_2().c, func_4(var_1.c, var_1.c.c.x).e.yy, arg_1.c.x))), var_1.c, arg_0.c.c.x);
    var var_3 = _wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(1393u << (_wgslsmith_div_u32(global0.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(53811u, 0u, arg_0.a.x, 17194u), vec4<u32>(arg_0.a.x, var_0.x, var_0.x, 1u))) % 32u), arg_0.a.x));
    let var_4 = vec4<u32>(132846u, ~var_0.x, ~arg_0.a.x << (4294967295u % 32u), _wgslsmith_sub_u32(~59951u, 0u));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<bool>, 15>();
    let var_0 = global1.e.x;
    let var_1 = Struct_2(global1.e.x, func_6(func_5(func_1(), select(vec3<bool>(global1.b.x, global1.b.x, true), !vec3<bool>(global0.b.x, true, global0.b.x), global1.b.x)), Struct_1(_wgslsmith_mod_i32(u_input.e, -16330i) | _wgslsmith_sub_i32(global0.a.x, -6305i), 417f, !vec2<bool>(false, global1.b.x))), func_4(func_5(func_1(), !(!vec3<bool>(global0.b.x, false, global1.b.x))).c, false).c, func_6(func_5(func_1(), func_4(func_4(Struct_1(2147483647i, -595f, global4[_wgslsmith_index_u32(54156u, 15u)]), global0.b.x).b, false == global0.b.x).e.xwy), Struct_1(~(global0.d ^ -2147483647i), global1.e.x, vec2<bool>(true, global1.b.x))), !func_4(Struct_1(-6946i, _wgslsmith_f_op_f32(global0.e.x * global0.e.x), !global4[_wgslsmith_index_u32(41690u, 15u)]), !global0.b.x).e);
    global4 = array<vec2<bool>, 15>();
    var var_2 = _wgslsmith_div_f32(var_1.d.b, -520f);
    let var_3 = func_2().b;
    global2 = vec3<i32>(_wgslsmith_div_i32(-max(19394i, -4608i), max(-1i, 1i) ^ -var_1.d.a) ^ _wgslsmith_dot_vec3_i32(min(-global1.a, reverseBits(u_input.b.zyy)), abs(-u_input.b.xxz)), 66065i, -global0.a.x);
    let var_4 = ~global3[_wgslsmith_index_u32(global0.c.x, 27u)];
    var var_5 = -(~var_1.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(-reverseBits(global0.d), ~global0.d, _wgslsmith_sub_i32(var_1.d.a, 1i)), global1.a), ~firstTrailingBit(abs(global1.c & vec4<u32>(global0.c.x, 10741u, global1.c.x, 55321u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.e.x), func_1().e.x, _wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.b), global0.e.x)) * vec4<f32>(-1000f, func_4(func_5(Struct_4(global1.a, global0.b, vec4<u32>(u_input.d.x, global0.c.x, 96166u, global0.c.x), var_1.b.a, vec3<f32>(global0.e.x, -1428f, -831f)), var_1.e.xxw).c, select(false, true, false)).a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1222f, -1129f, global1.b.x)))))));
}

