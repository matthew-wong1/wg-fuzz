struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<u32, 32> = array<u32, 32>(47359u, 1u, 4294967295u, 0u, 35412u, 4294967295u, 4258u, 4294967295u, 4294967295u, 5635u, 27275u, 1u, 1u, 4294967295u, 74884u, 39697u, 0u, 23672u, 18946u, 11534u, 0u, 1u, 0u, 105u, 53014u, 5236u, 57623u, 9063u, 4294967295u, 1u, 0u, 44579u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_2) -> vec3<f32> {
    global0 = array<f32, 30>();
    var var_0 = ~(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1.c.d, 4294967295u, 0u, 0u)), arg_1.a));
    global0 = array<f32, 30>();
    let var_1 = ~(~1u);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -376f)));
    return arg_2.a;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 45987u, 3248u), 30u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 30u)])))), _wgslsmith_f_op_f32(f32(-1f) * -180f)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, -172f, 936f)))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(865f, 202f, var_0), vec3<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 30u)], var_0))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-272f, var_0, var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(6496u, 30u)], -289f, 925f) + vec3<f32>(876f, 775f, global0[_wgslsmith_index_u32(23238u, 30u)])) - _wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(-48182i, -50252i, 6112i), Struct_5(vec4<u32>(4294967295u, 48503u, global1[_wgslsmith_index_u32(u_input.a, 32u)], 32879u), -162i, Struct_1(false, vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), 22063u, var_0), vec4<bool>(true, true, false, false)), Struct_2(vec3<f32>(var_0, -249f, -129f), Struct_1(false, vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), u_input.a, -226f), true, vec4<bool>(false, true, true, true), Struct_1(true, vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), 4836u, 996f)))))))), Struct_1(false, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(var_0 <= -232f, true, select(false, true, true), true)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false)), vec4<bool>(all(vec2<bool>(false, false)), true, true, true), all(vec3<bool>(false, false, true))), _wgslsmith_dot_vec2_u32(select(select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], 0u), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<bool>(true, false)), ~vec2<u32>(4294967295u, u_input.a)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, 358f, true)))))), !(!select(false, true, global0[_wgslsmith_index_u32(1u, 30u)] >= var_0)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), any(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false))), Struct_1(any(vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true))), select(vec4<bool>(all(vec4<bool>(true, false, true, true)), any(vec2<bool>(true, false)), true, -1805f >= global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57226u, 32u)], 32u)], 30u)]), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))), ~1886u, 461f));
    global0 = array<f32, 30>();
    let var_2 = Struct_1(var_1.b.b.x, select(select(select(!vec4<bool>(var_1.c, var_1.c, true, var_1.e.b.x), vec4<bool>(false, var_1.d.x, true, false), var_1.e.a && false), select(var_1.d, var_1.b.c, vec4<bool>(var_1.e.b.x, false, var_1.d.x, var_1.c)), select(var_1.d, select(vec4<bool>(var_1.c, false, false, false), var_1.e.b, vec4<bool>(var_1.c, var_1.c, false, true)), var_1.e.a && false)), vec4<bool>(all(vec2<bool>(var_1.d.x, var_1.c)), var_1.b.b.x, all(select(vec2<bool>(var_1.b.b.x, var_1.b.c.x), var_1.d.yx, var_1.c)), true), var_1.e.c.x), select(vec4<bool>(any(var_1.e.b.wyz), _wgslsmith_sub_u32(var_1.e.d, u_input.a) > firstLeadingBit(var_1.e.d), any(var_1.d), true), vec4<bool>(select(true, any(var_1.d.xwy), true), any(select(var_1.b.b.zxy, vec3<bool>(false, var_1.e.b.x, var_1.e.c.x), vec3<bool>(true, var_1.b.c.x, var_1.e.a))), select(true, all(var_1.d.xw), false), var_1.d.x), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -4811i, -2147483647i) == 65522i), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(abs(1u), ~37719u), 4294967295u, _wgslsmith_add_u32(42802u, _wgslsmith_add_u32(u_input.a, var_1.e.d))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, var_1.b.d, u_input.a), vec3<u32>(var_1.b.d, var_1.e.d, 17057u) >> (vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.a, 32u)], 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -438f));
    let var_3 = ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~u_input.a, abs(var_2.d)), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_2.d), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.d, 32u)], 32u)], 7933u)), min(68582u, var_2.d), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(0u), 37277u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.d, var_2.d), 32u)]), 32u)]), max(vec4<u32>(1u, 0u, var_2.d, var_1.b.d) | vec4<u32>(64532u, u_input.a, global1[_wgslsmith_index_u32(0u, 32u)], 5628u), _wgslsmith_mult_vec4_u32(~vec4<u32>(40233u, global1[_wgslsmith_index_u32(var_1.b.d, 32u)], 17956u, 14335u), ~vec4<u32>(0u, 4294967295u, var_1.b.d, 1u))));
    return ~var_1.b.d;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<u32>) -> Struct_5 {
    return Struct_5(_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a, ~21758u, 0u, ~arg_0.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(7058u, 19304u, 0u, 1919u), vec4<u32>(167630u, 4294967295u, 1u, 14075u)) % vec4<u32>(32u)), vec4<u32>(~(~arg_2.x), ~1u & (arg_0.x | 0u), _wgslsmith_mult_u32(1u, arg_0.x) << (min(arg_0.x, u_input.a) % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, 25624u), vec3<u32>(arg_0.x, 56905u, global1[_wgslsmith_index_u32(u_input.a, 32u)])), 94039u, ~42620u))), 33952i, Struct_1(false, vec4<bool>(true, true, true, true), !vec4<bool>(select(false, false, true), true, true, true), ~abs(min(arg_0.x, arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1007f), global0[_wgslsmith_index_u32(1u, 30u)])), select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, all(vec2<bool>(false, true)), true, select(false, true, false)), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), true)));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = func_4(_wgslsmith_mult_vec2_u32(max(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 32u)] & 34870u, ~40769u), vec2<u32>(select(u_input.a, 24197u, arg_2.a.c.x), func_2())), reverseBits((vec2<u32>(u_input.a, arg_2.a.d) >> (vec2<u32>(57695u, u_input.a) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.a.d, u_input.a), vec2<u32>(40000u, 31980u)) % vec2<u32>(32u)))), max(_wgslsmith_div_i32(-21357i, ~9354i), abs(-(~0i))), abs(~(~vec2<u32>(arg_2.a.d, u_input.a))));
    var_0 = func_4(var_0.a.wx, ~(var_0.b >> ((~arg_2.a.d >> (64903u % 32u)) % 32u)), var_0.a.xx);
    var_0 = func_4(~(~var_0.a.xx), var_0.b, var_0.a.zy >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(38010u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34828u, 32u)], 32u)]), var_0.a.xy | vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    var var_1 = Struct_5(vec4<u32>(~countOneBits(22631u), ~(4294967295u >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(95797u, 32u)], 32u)] % 32u)), countOneBits(~u_input.a), _wgslsmith_div_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 32u)], 26689u) ^ ~4294967295u, ~global1[_wgslsmith_index_u32(arg_2.a.d, 32u)])), -29776i, func_4(var_0.a.zx, _wgslsmith_add_i32(_wgslsmith_add_i32(8385i, -var_0.b), _wgslsmith_mod_i32(var_0.b, 28475i)), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 26535u, arg_2.a.d, global1[_wgslsmith_index_u32(1u, 32u)]), vec4<u32>(0u, arg_2.a.d, 47761u, arg_2.a.d))), reverseBits(u_input.a) & 8278u)).c, arg_2.a.c);
    var var_2 = min(~(~(~0u)), ~(~select(0u, arg_2.a.d, arg_0.x)));
    return vec3<bool>(func_4(vec2<u32>(~62752u, _wgslsmith_add_u32(~var_1.a.x, var_1.a.x)), func_4(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.a.d, u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], 4294967295u), var_1.a.zx), ~firstTrailingBit(var_0.b), ~max(var_0.a.yz, var_1.a.wy)).b, ~(~vec2<u32>(44208u, var_1.c.d))).c.a, !(!func_4(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], var_0.a.x), 43994i, var_0.a.wy).c.c.x || true), arg_0.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec4<u32>) -> Struct_5 {
    global1 = array<u32, 32>();
    global0 = array<f32, 30>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec3<f32>(-2042f, global0[_wgslsmith_index_u32(22538u, 30u)], global0[_wgslsmith_index_u32(arg_2.x, 30u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(106f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 30u)], arg_0.x), vec3<f32>(271f, global0[_wgslsmith_index_u32(1u, 30u)], 258f), false)))))) * _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, 20831i), vec3<i32>(31861i, 2147483647i, -3343i), vec3<i32>(2147483647i, -8646i, -34389i))), Struct_5(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(arg_2.x, 32u)], 4294967295u, 22254u) | vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], arg_2.x, 33967u), countOneBits(-1i), func_4(arg_2.zx, -1i, vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], 0u)).c, select(vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(false, arg_1.x, false, false), arg_1)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 238f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 30u)])), func_4(vec2<u32>(global1[_wgslsmith_index_u32(0u, 32u)], arg_2.x), -21486i, arg_2.zy).c, false, func_4(vec2<u32>(51453u, global1[_wgslsmith_index_u32(arg_2.x, 32u)]), 17757i, arg_2.ww).c.c, func_4(arg_2.yz, 2147483647i, vec2<u32>(u_input.a, arg_2.x)).c)))), Struct_1(false, !select(!arg_1, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), !vec4<bool>(false, false, arg_1.x, false)), vec4<bool>(arg_1.x, true, true, arg_1.x), _wgslsmith_dot_vec4_u32(arg_2, arg_2), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~49051u, 30u)]))), false, !(!arg_1), Struct_1(true, vec4<bool>(arg_1.x, arg_1.x, any(select(vec4<bool>(false, true, true, arg_1.x), arg_1, vec4<bool>(false, true, false, arg_1.x))), false), vec4<bool>(arg_1.x, arg_1.x, !(!arg_1.x), true), global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(0u, arg_2.x)), 32u)], arg_0.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_2.x, 30u)], -259f, 389f, 171f), vec4<f32>(638f, -1184f, var_0.e.e, global0[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.e, global0[_wgslsmith_index_u32(7064u, 30u)], -1101f, var_0.a.x), vec4<f32>(global0[_wgslsmith_index_u32(var_0.e.d, 30u)], 3254f, var_0.a.x, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(249f, -700f, 1000f, global0[_wgslsmith_index_u32(var_0.e.d, 30u)]))))))));
    let var_2 = abs(countOneBits(~countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.x, 1u), vec2<u32>(1u, 1u)))));
    return func_4(~(_wgslsmith_sub_vec2_u32(~var_2, ~arg_2.yw) | (min(vec2<u32>(24994u, 4294967295u), vec2<u32>(5717u, global1[_wgslsmith_index_u32(1u, 32u)])) >> ((arg_2.zw | vec2<u32>(var_2.x, global1[_wgslsmith_index_u32(38097u, 32u)])) % vec2<u32>(32u)))), -_wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(1i, -19847i, 1i, 21649i)), abs(vec4<i32>(-1i, -2147483647i, -61010i, 1i)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 30u)] > 1977f), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -24909i, -2147483647i, 4489i), vec4<i32>(12045i, 4758i, -36922i, 84793i)))), arg_2.wz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<f32>(796f, _wgslsmith_f_op_f32(f32(-1f) * -1823f)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), select(reverseBits(firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(54862u, 32u)], u_input.a, 123735u, 39108u) & vec4<u32>(38183u, 0u, 13780u, 26800u))), vec4<u32>(reverseBits(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(58781u, 32u)], 45349u)), 77897u, _wgslsmith_add_u32(~u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)), max(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23589u, 32u)], 32u)]), u_input.a)), any(func_1(vec3<bool>(false, false, false), true, Struct_3(Struct_1(false, vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), global1[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), -1186f)))));
    var var_1 = vec4<u32>(func_5(vec2<f32>(1f, 1f), var_0.c.b, ~select(var_0.a, reverseBits(var_0.a), true)).c.d, max(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1436f, 2251f)), vec4<bool>(any(var_0.c.b.ww), var_0.c.b.x != true, var_0.c.a, true), reverseBits(min(var_0.a, vec4<u32>(var_0.a.x, var_0.c.d, var_0.a.x, 0u)))).c.d, ~firstLeadingBit(~var_0.a.x)), 65480u, select(var_0.c.d & (u_input.a >> (0u % 32u)), global1[_wgslsmith_index_u32(~(~var_0.c.d << (87386u % 32u)), 32u)], any(vec2<bool>(var_0.b != 37254i, var_0.a.x <= 4294967295u))));
    var_0 = Struct_5(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(61370u, global1[_wgslsmith_index_u32(var_1.x, 32u)], 4294967295u, 870u), vec4<u32>(1u, func_2(), var_0.a.x, 4294967295u)), 32u)], func_4(min(var_1.yx, var_0.a.yx), -func_5(vec2<f32>(2259f, var_0.c.e), vec4<bool>(var_0.d.x, true, var_0.d.x, true), var_0.a).b, _wgslsmith_mult_vec2_u32(func_5(vec2<f32>(-1181f, -666f), vec4<bool>(true, var_0.c.a, var_0.d.x, true), var_0.a).a.zz, ~vec2<u32>(global1[_wgslsmith_index_u32(58838u, 32u)], 10021u))).a.x, _wgslsmith_div_u32(var_1.x, var_1.x), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1559f, global0[_wgslsmith_index_u32(65272u, 30u)]))), var_0.d, countOneBits(vec4<u32>(var_1.x, var_1.x, u_input.a, var_0.a.x) | var_0.a)).c.d), _wgslsmith_mod_i32(~_wgslsmith_mod_i32(var_0.b, 8154i & var_0.b), 1i), func_5(vec2<f32>(var_0.c.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.e)))), select(select(var_0.c.c, var_0.c.b, var_0.c.c), !(!var_0.d), vec4<bool>(func_5(vec2<f32>(global0[_wgslsmith_index_u32(var_1.x, 30u)], -857f), var_0.d, var_0.a).d.x, false, true, var_0.c.e >= var_0.c.e)), func_5(vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], var_0.c.a)), 1200f), vec4<bool>(true, false, !var_0.d.x, all(var_0.d)), var_0.a).a).c, vec4<bool>(true, true, true, true));
    var_0 = Struct_5(abs(~(vec4<u32>(global1[_wgslsmith_index_u32(19695u, 32u)], u_input.a, 24730u, global1[_wgslsmith_index_u32(var_0.c.d, 32u)]) & vec4<u32>(global1[_wgslsmith_index_u32(1u, 32u)], 4294967295u, 1u, var_0.c.d))), _wgslsmith_mod_i32(i32(-1i) * -_wgslsmith_sub_i32(var_0.b, var_0.b), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.b, 1i), vec2<i32>(var_0.b, 2793i) ^ vec2<i32>(2147483647i, var_0.b)) << (4294967295u % 32u)), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.e, _wgslsmith_f_op_f32(var_0.c.e - 915f))), vec4<bool>(any(var_0.c.c.zy), false, !func_4(var_0.a.zy, var_0.b, vec2<u32>(0u, 14146u)).d.x, all(select(var_0.c.c, var_0.c.b, true))), vec4<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(16147u, 32u)] >> (u_input.a % 32u), 28938u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.x, u_input.a), 1u), 1u, global1[_wgslsmith_index_u32(~(var_1.x & var_0.a.x), 32u)])).c, !vec4<bool>(var_0.d.x == false, func_1(!var_0.c.c.xxw, true, Struct_3(Struct_1(false, vec4<bool>(var_0.d.x, false, var_0.c.c.x, true), var_0.d, u_input.a, 341f), var_0.c.e)).x, !all(var_0.d.xzz), func_4(vec2<u32>(29177u, var_0.a.x) ^ var_0.a.ww, -2147483647i, vec2<u32>(25218u, 0u)).d.x));
    var var_2 = Struct_3(var_0.c, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 30u)]));
    let var_3 = !(!func_5(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.e, -1000f))), select(func_5(vec2<f32>(var_2.b, global0[_wgslsmith_index_u32(var_1.x, 30u)]), var_0.c.c, vec4<u32>(1u, 112150u, 1u, 0u)).c.b, !vec4<bool>(true, var_2.a.c.x, var_0.d.x, true), var_0.d.x), countOneBits(vec4<u32>(45015u, 0u, var_2.a.d, 5878u))).c.c);
    let var_4 = var_0.b;
    let var_5 = all(vec2<bool>(true, any(select(vec3<bool>(var_0.d.x, var_3.x, false), vec3<bool>(true, var_3.x, true), var_0.c.c.x)))) | true;
    var var_6 = Struct_4(var_2.a.b, vec2<f32>(-395f, func_4(vec2<u32>(~4294967295u, u_input.a), ~_wgslsmith_mult_i32(1i, var_0.b), reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 0u)) << (var_1.wy % vec2<u32>(32u))).c.e));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, _wgslsmith_f_op_f32(-var_2.a.e), vec4<u32>(49457u, countOneBits(0u), ~(~606u), u_input.a | ~u_input.a), vec4<i32>(0i, min(~max(2147483647i, 16616i), 25465i), var_0.b, firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.b, var_0.b, -50690i), vec4<i32>(-1i, var_0.b, -28643i, var_0.b)), _wgslsmith_mod_i32(-13864i, var_0.b)))));
}

