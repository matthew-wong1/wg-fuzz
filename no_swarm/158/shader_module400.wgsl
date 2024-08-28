struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(30999u), Struct_1(2669u), Struct_1(4294967295u), Struct_1(378u), Struct_1(4294967295u), Struct_1(24751u), Struct_1(4294967295u), Struct_1(37987u), Struct_1(35357u), Struct_1(0u), Struct_1(57605u), Struct_1(4294967295u), Struct_1(1u), Struct_1(1u), Struct_1(59578u), Struct_1(0u), Struct_1(0u), Struct_1(51780u), Struct_1(0u), Struct_1(2383u), Struct_1(72555u), Struct_1(1u), Struct_1(50525u), Struct_1(4294967295u), Struct_1(1u), Struct_1(44655u), Struct_1(0u), Struct_1(38089u), Struct_1(1u), Struct_1(35477u), Struct_1(1u), Struct_1(4294967295u));

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(Struct_1(0u), 4294967295u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: bool) -> bool {
    let var_0 = u_input.c;
    var var_1 = Struct_4(718f, vec3<i32>(firstLeadingBit((i32(-1i) * -1427i) & u_input.d), i32(-1i) * -u_input.b.x, 64271i), arg_3, arg_1.d, min(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 4294967295u, 0u, u_input.a.x), vec4<u32>(global1.a, 37744u, 72454u, 80867u)), _wgslsmith_mod_u32(0u, arg_1.e), global1.a, _wgslsmith_add_u32(0u, 0u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global2.b, global2.b, global2.b), vec4<u32>(arg_1.e, global2.b, 0u, 27961u)), abs(vec4<u32>(4294967295u, 4294967295u, global2.b, global2.a.a)), true)), _wgslsmith_div_u32(11161u, _wgslsmith_div_u32(0u, global2.b))));
    let var_2 = 0u;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-289f - -1034f), arg_1.a, arg_3)), 1841f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + 1228f) - _wgslsmith_f_op_f32(min(var_1.a, var_1.a)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-644f - arg_0))), -1000f, arg_1.a), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(max(arg_1.a, arg_1.a)), -493f))));
    var var_4 = abs(_wgslsmith_sub_vec2_u32(u_input.a.zz, vec2<u32>(1u, 1u << ((var_2 ^ 15864u) % 32u))));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> u32 {
    global2 = arg_0;
    var var_0 = u_input.b.x;
    var var_1 = countOneBits(select(vec2<i32>((u_input.b.x ^ -10178i) << ((global2.b ^ 0u) % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, -26889i), vec2<i32>(2147483647i, u_input.d))), vec2<i32>(0i, -1i), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), func_3(_wgslsmith_div_f32(1000f, arg_1), Struct_4(580f, vec3<i32>(33892i, -9052i, 6820i), false, Struct_2(global2.a, 48390u), 5386u), select(vec2<bool>(false, false), vec2<bool>(true, false), false), all(vec2<bool>(true, true))))));
    let var_2 = Struct_3(arg_0, arg_0, 5204i, arg_0.a, Struct_1(max(arg_0.a.a, ~(~1u))));
    let var_3 = arg_0.b;
    return 0u;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = vec4<u32>(reverseBits(1u), ~0u << (~(~(~global1.a)) % 32u), _wgslsmith_mod_u32(~global2.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.a, global1.a, u_input.a.x, arg_3), countOneBits(vec4<u32>(global2.b, arg_3, arg_3, 1u)))), _wgslsmith_add_u32(abs(44502u), _wgslsmith_sub_u32(4294967295u, func_2(Struct_2(Struct_1(arg_3), global2.b), -207f))));
    global0 = array<Struct_1, 32>();
    let var_1 = vec4<bool>(false, !arg_0, any(select(!vec2<bool>(arg_0, true), select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)), select(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0)))), true);
    let var_2 = any(var_1);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_div_f32(1808f, -1000f))))));
    return Struct_1(37567u);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(arg_0, _wgslsmith_add_u32(29960u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 4294967295u, u_input.c), u_input.a), vec3<u32>(arg_3.x, 0u, global1.a)) << ((1u ^ _wgslsmith_dot_vec4_u32(arg_3, arg_3)) % 32u)));
    let var_1 = !vec3<bool>(select(true, any(vec3<bool>(true, true, true)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -271f), Struct_4(arg_2, u_input.b.wyw, false, Struct_2(arg_0, global1.a), arg_0.a), vec2<bool>(true, true), true)), true, false);
    global0 = array<Struct_1, 32>();
    let var_2 = -45556i;
    let var_3 = func_1(!any(!var_1.yx), vec3<i32>(abs(_wgslsmith_add_i32(u_input.b.x, reverseBits(-2147483647i))), u_input.d, arg_1 >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.a, 40095u, 4294967295u, u_input.a.x), arg_3) % 32u)), countOneBits(arg_1), 0u);
    return Struct_2(Struct_1(_wgslsmith_div_u32(27907u << (~arg_3.x % 32u), global2.a.a)), ~(~_wgslsmith_sub_u32(abs(var_0.a.a), 1u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = u_input.b.x;
    return func_4(Struct_1(arg_0.b), ~_wgslsmith_dot_vec3_i32(max(u_input.b.wyw, vec3<i32>(22292i, 2147483647i, u_input.b.x)), _wgslsmith_add_vec3_i32(~u_input.b.wxz, _wgslsmith_div_vec3_i32(u_input.b.xxw, vec3<i32>(42799i, u_input.b.x, 0i)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-323f + -916f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), true | any(vec2<bool>(true, false)))))), abs(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, global1.a, global2.b)) << (~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 0u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, arg_0.a.a, 20743u, arg_0.a.a), vec4<u32>(global2.a.a, arg_0.b, 18573u, 10275u)) | (vec4<u32>(global1.a, global2.a.a, 4294967295u, arg_0.b) << (vec4<u32>(45719u, global2.b, 1u, 0u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(func_4(func_1(true || all(vec2<bool>(true, false)), u_input.b.zzx, -53108i, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 5596u), u_input.c)), u_input.b.x, _wgslsmith_f_op_f32(-1f), vec4<u32>(max(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(global2.a.a, 0u)), 4294967295u), ~52683u, countOneBits(4294967295u), min(u_input.c, 20131u) | _wgslsmith_clamp_u32(1u, global2.a.a, global2.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(291f)), _wgslsmith_f_op_f32(f32(-1f) * -279f)) - vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(1u, 32u)], 36470u);
    var var_1 = true;
    var_0 = Struct_2(Struct_1(1u), func_2(Struct_2(var_0.a, select(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.yz), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1713f, 1f, true)), 485f)));
    let var_2 = vec2<i32>(-2147483647i, abs(54754i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + 340f), 211f, _wgslsmith_div_f32(3332f, -1000f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(534f, -748f, -887f, -1462f), vec4<f32>(-992f, 462f, 1031f, 160f), vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1585f, 1000f, 1154f, 1000f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1161f, 177f, -1403f, 437f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1085f, -250f, 405f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1089f, -197f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-450f, -616f, -311f))), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1810f, 1923f, 631f) * vec3<f32>(-457f, -812f, -1098f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1538f, 1000f, 319f), vec3<f32>(-1379f, 458f, 518f))))), _wgslsmith_f_op_f32(select(968f, _wgslsmith_f_op_f32(-526f - -196f), !any(vec2<bool>(true, true)))));
}

