struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<u32>(4294967295u, 79919u, 4294967295u, 2003u), 1u, true), Struct_1(vec4<u32>(1u, 69771u, 4294967295u, 1u), 1u, false), Struct_1(vec4<u32>(1u, 71082u, 4294967295u, 57425u), 4294967295u, false), Struct_1(vec4<u32>(0u, 1u, 34025u, 1544u), 1u, false), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 13775u), 38252u, true), Struct_1(vec4<u32>(14615u, 1u, 123702u, 10005u), 51817u, false), Struct_1(vec4<u32>(15014u, 106002u, 0u, 94543u), 4294967295u, false), Struct_1(vec4<u32>(30547u, 31938u, 28105u, 35282u), 17742u, false), Struct_1(vec4<u32>(0u, 79189u, 0u, 9809u), 43155u, false), Struct_1(vec4<u32>(0u, 0u, 75394u, 28293u), 0u, false), Struct_1(vec4<u32>(77657u, 0u, 0u, 0u), 1u, false), Struct_1(vec4<u32>(1u, 25908u, 4294967295u, 11838u), 4294967295u, true), Struct_1(vec4<u32>(28414u, 4294967295u, 0u, 4294967295u), 14025u, true), Struct_1(vec4<u32>(0u, 4294967295u, 7175u, 0u), 7627u, false), Struct_1(vec4<u32>(0u, 33557u, 48921u, 1u), 4294967295u, false), Struct_1(vec4<u32>(0u, 29546u, 59847u, 4294967295u), 1u, false), Struct_1(vec4<u32>(80152u, 1u, 78796u, 0u), 4294967295u, true), Struct_1(vec4<u32>(0u, 5626u, 1u, 34368u), 24319u, true), Struct_1(vec4<u32>(1u, 1u, 25154u, 44607u), 22033u, false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), 53361u, false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), 10102u, true), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), 4294967295u, true), Struct_1(vec4<u32>(26654u, 64232u, 68752u, 0u), 45518u, true), Struct_1(vec4<u32>(4294967295u, 1u, 97084u, 50663u), 61993u, false), Struct_1(vec4<u32>(35386u, 4294967295u, 1u, 4294967295u), 52825u, true));

var<private> global2: f32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_4(Struct_2(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), max(vec2<i32>(u_input.a, 1i), vec2<i32>(-28234i, 0i)), vec2<i32>(u_input.a, 5662i))), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~21273u, u_input.b.x, u_input.b.x), 25u)], abs(_wgslsmith_add_u32(~u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), abs(vec3<i32>(u_input.a, -32369i, -1i)), vec3<i32>(u_input.a, 19099i, u_input.a)), (vec3<i32>(1i, -1i, u_input.a) | vec3<i32>(-2147483647i, u_input.a, -2147483647i)) >> ((vec3<u32>(5404u, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.b.x, 1u, 20681u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1365f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-300f, -233f)))))), u_input.a, global0.x);
    var var_1 = Struct_3(~max(var_0.a.d, var_0.a.d), global0.wy, _wgslsmith_mult_vec3_u32(~var_0.a.b.a.zxz, var_0.a.b.a.wxy));
    let var_2 = countOneBits(var_0.a.d.x);
    var_0 = Struct_4(Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -1i, 0i, -25805i), vec4<i32>(var_1.a.x, u_input.a, -2147483647i, -21605i)), abs(vec4<i32>(1i, 1i, var_2, 75593i))), var_1.a.x), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.c, var_0.a.b.b, u_input.b.x, var_1.c.x) >> (var_0.a.b.a % vec4<u32>(32u)), var_0.a.b.a), ~u_input.b.x & ~0u, true), ~(~var_0.a.b.a.x), -(-vec3<i32>(-11445i, var_1.a.x, 32056i) >> (var_0.a.b.a.wzy % vec3<u32>(32u))), var_0.a.e), 1i, global0.x);
    var var_3 = Struct_3(select(_wgslsmith_mod_vec3_i32(vec3<i32>(~var_1.a.x, 0i, _wgslsmith_sub_i32(-1i, var_2)), var_1.a), var_1.a, vec3<bool>(true && (var_0.a.e.x > 949f), !all(vec2<bool>(true, global0.x)), all(vec2<bool>(global0.x, global0.x)))), select(vec2<bool>(all(select(vec4<bool>(false, var_0.c, var_0.a.b.c, true), vec4<bool>(true, false, true, global0.x), var_1.b.x)), var_1.b.x), select(vec2<bool>(all(global0.xzx), true), select(vec2<bool>(true, var_0.a.b.c), select(global0.wx, vec2<bool>(var_1.b.x, var_1.b.x), false), 0i >= var_0.a.d.x), true), any(vec4<bool>(var_1.b.x, var_2 == u_input.a, !global0.x, var_0.a.e.x < var_0.a.e.x))), ~var_0.a.b.a.zzw);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.e.x, 121f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.e.x)), -217f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = vec3<i32>(reverseBits(u_input.a), u_input.a, select(_wgslsmith_sub_i32(arg_1.a.x, _wgslsmith_dot_vec3_i32(arg_1.d, _wgslsmith_add_vec3_i32(arg_1.d, arg_1.d))), ~(-countOneBits(-39179i)), (u_input.a > min(2147483647i, 2147483647i)) || global0.x));
    var var_1 = Struct_3(vec3<i32>(-2147483647i, 0i, 0i), global0.yz, vec3<u32>(~(25187u | _wgslsmith_add_u32(arg_1.b.a.x, arg_1.c)), 8919u, _wgslsmith_mod_u32((4294967295u << (arg_1.b.a.x % 32u)) | ~4294967295u, arg_1.c)));
    global1 = array<Struct_1, 25>();
    let var_2 = -select(~(-abs(vec2<i32>(-16154i, -1i))), -var_1.a.yy & arg_1.a, select(!var_1.b.x, var_1.b.x || arg_2, var_1.b.x));
    let var_3 = arg_2;
    return global0.x & !(arg_2 & global0.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(arg_3.x));
    var var_1 = arg_3;
    global0 = select(vec4<bool>(_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_2.b.b, 1u), _wgslsmith_sub_u32(arg_1.a.x, arg_1.a.x)) < 4294967295u, arg_1.c, all(vec4<bool>(true, arg_1.c, !arg_1.c, !global0.x)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1766f, arg_2.e.x, var_1.x)), Struct_2(arg_2.d.yz, Struct_1(arg_1.a, arg_2.b.a.x, arg_1.c), 29161u, vec3<i32>(arg_2.d.x, 1i, arg_2.a.x), vec2<f32>(1270f, 447f)), false)), select(select(vec4<bool>(false, any(global0.xw), arg_1.c, any(global0.zxz)), vec4<bool>(!global0.x, 46552u == arg_2.b.a.x, arg_1.c, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.b.c, arg_2.b.c, arg_1.c, true), select(vec4<bool>(true, true, false, global0.x), !vec4<bool>(false, true, arg_1.c, arg_2.b.c), !vec4<bool>(arg_1.c, global0.x, true, true))), true), !(!select(!vec4<bool>(arg_1.c, arg_2.b.c, arg_1.c, arg_1.c), select(vec4<bool>(arg_1.c, true, arg_2.b.c, true), vec4<bool>(false, arg_1.c, arg_1.c, true), false), all(vec4<bool>(true, global0.x, arg_1.c, global0.x)))));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(arg_3)), vec3<f32>(var_0, var_1.x, 558f))))), arg_3);
    let var_2 = abs(u_input.b.x);
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.e.x, -763f))), arg_2.e));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>) -> bool {
    global0 = arg_1;
    var var_0 = Struct_3(vec3<i32>(u_input.a, ~u_input.a, ~u_input.a), !arg_1.zx, ~(~vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.b.x, u_input.b.x)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2070f, -1923f))))), 250f, -1000f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f))));
    var var_2 = _wgslsmith_mult_vec2_i32(-max(-select(vec2<i32>(var_0.a.x, 2147483647i), var_0.a.yx, arg_0.x), vec2<i32>(var_0.a.x, ~6461i)), vec2<i32>(2147483647i, u_input.a));
    var var_3 = _wgslsmith_f_op_vec2_f32(func_5(select(select(~(vec4<u32>(1u, u_input.b.x, var_0.c.x, u_input.b.x) | vec4<u32>(4294967295u, 39530u, u_input.b.x, var_0.c.x)), vec4<u32>(var_0.c.x << (var_0.c.x % 32u), 34686u, _wgslsmith_add_u32(1u, var_0.c.x), u_input.b.x), !select(arg_1, vec4<bool>(false, true, false, arg_0.x), arg_1)), ~(~vec4<u32>(41330u, var_0.c.x, 0u, 24324u)), vec4<bool>(true, true, true, any(select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, false), arg_0)))), Struct_1(~(~(vec4<u32>(37032u, var_0.c.x, 4294967295u, 12112u) & vec4<u32>(var_0.c.x, var_0.c.x, 0u, var_0.c.x))), ~(~62393u), func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-611f, 1622f, var_1.x, var_1.x))), Struct_2(~var_0.a.xz, global1[_wgslsmith_index_u32(36045u, 25u)], 1u, select(vec3<i32>(u_input.a, u_input.a, u_input.a), var_0.a, true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_1.x)))), true)), Struct_2(vec2<i32>(i32(-1i) * -20987i, u_input.a), global1[_wgslsmith_index_u32(var_0.c.x, 25u)], _wgslsmith_div_u32(~(u_input.b.x << (var_0.c.x % 32u)), abs(4294967295u & var_0.c.x)), vec3<i32>(-1i, 1i, 2147483647i) & _wgslsmith_sub_vec3_i32(-var_0.a, abs(var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, var_1.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - -1580f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.zyx + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, var_1.x), var_1.xww)))))));
    return true;
}

fn func_1() -> Struct_4 {
    var var_0 = select(vec4<bool>(func_2(global0.wxw, vec4<bool>(true, !global0.x, global0.x, global0.x)), true, !(!func_4(vec4<f32>(-1674f, -694f, 704f, -927f), Struct_2(vec2<i32>(2147483647i, u_input.a), Struct_1(vec4<u32>(u_input.b.x, 16467u, u_input.b.x, 1u), u_input.b.x, global0.x), 65712u, vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<f32>(-410f, -917f)), global0.x)), true), vec4<bool>(false, global0.x, true, !func_2(vec3<bool>(true, false, global0.x), select(vec4<bool>(global0.x, true, false, true), vec4<bool>(true, true, global0.x, false), vec4<bool>(false, false, false, global0.x)))), select(vec4<bool>(true, global0.x, all(select(vec4<bool>(true, true, true, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, global0.x))), true), !(!select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), true)), select(select(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, false, global0.x, global0.x)), select(vec4<bool>(global0.x, false, true, true), vec4<bool>(global0.x, global0.x, true, true), global0.x), vec4<bool>(true, global0.x, false, false)), select(vec4<bool>(global0.x, global0.x, true, true), !vec4<bool>(false, global0.x, false, global0.x), any(vec2<bool>(global0.x, global0.x))), false)));
    let var_1 = Struct_3(vec3<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 15065i), vec2<i32>(40569i, u_input.a)) >> (u_input.b.x % 32u), -2147483647i) << (abs(firstLeadingBit(~vec3<u32>(u_input.b.x, u_input.b.x, 73727u))) % vec3<u32>(32u)), !vec2<bool>(any(!vec4<bool>(var_0.x, global0.x, true, var_0.x)), true), abs(abs(~(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)))));
    global1 = array<Struct_1, 25>();
    let var_2 = firstLeadingBit(abs(_wgslsmith_mult_i32(i32(-1i) * -53409i, _wgslsmith_clamp_i32(1i, firstTrailingBit(u_input.a), abs(var_1.a.x)))));
    global2 = -413f;
    return Struct_4(Struct_2(-abs(var_1.a.zx), Struct_1(~(~vec4<u32>(var_1.c.x, 1u, 6267u, 0u)), abs(u_input.b.x), !var_1.b.x), _wgslsmith_sub_u32(u_input.b.x, ~25888u), var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-763f, -1000f) - vec2<f32>(-565f, 327f))))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a, -var_1.a.x, -51831i, var_1.a.x), -vec4<i32>(-23733i, 2147483647i, -1i, u_input.a) >> (~vec4<u32>(u_input.b.x, u_input.b.x, var_1.c.x, var_1.c.x) % vec4<u32>(32u))), _wgslsmith_mult_i32(u_input.a, -var_2)), _wgslsmith_dot_vec3_i32(var_1.a, vec3<i32>(var_2, var_2, 64118i) & var_1.a) <= min(reverseBits(2147483647i), ~var_2));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec4<u32>) -> Struct_1 {
    global2 = 435f;
    global1 = array<Struct_1, 25>();
    var var_0 = 2147483647i;
    let var_1 = select(select(select(select(global0.yww, vec3<bool>(global0.x, arg_0.c, false), func_4(vec4<f32>(arg_2.a.e.x, -528f, arg_2.a.e.x, -783f), arg_2.a, false)), select(select(vec3<bool>(false, global0.x, true), global0.xzy, vec3<bool>(false, false, false)), global0.wzx, all(vec2<bool>(arg_1.c, false))), vec3<bool>(true, func_4(vec4<f32>(-984f, arg_2.a.e.x, arg_2.a.e.x, arg_2.a.e.x), Struct_2(vec2<i32>(2147483647i, -24659i), global1[_wgslsmith_index_u32(arg_3.x, 25u)], arg_2.a.b.b, arg_2.a.d, vec2<f32>(arg_2.a.e.x, -373f)), global0.x), false)), global0.xyy, false), vec3<bool>(!(!select(global0.x, true, false)), all(global0.zyw), true), global0.yzz);
    var var_2 = ~vec3<i32>(u_input.a, firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, -1i), _wgslsmith_sub_i32(arg_2.b, arg_2.a.a.x))), -2147483647i);
    return arg_2.a.b;
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> f32 {
    let var_0 = !func_6(arg_1, Struct_1(vec4<u32>(4294967295u, arg_1.a.x, ~arg_3, 10523u), firstTrailingBit(~0u), !global0.x), Struct_4(func_1().a, -2147483647i, (false && global0.x) != !arg_1.c), _wgslsmith_div_vec4_u32(max(vec4<u32>(0u, 0u, arg_3, 4294967295u), abs(vec4<u32>(arg_3, 39250u, u_input.b.x, u_input.b.x))), arg_1.a)).c;
    global0 = !vec4<bool>(arg_1.c, arg_1.c, arg_3 >= 109605u, var_0);
    var var_1 = Struct_1(firstLeadingBit(~arg_1.a), _wgslsmith_mult_u32(_wgslsmith_div_u32(min(arg_1.a.x, 50930u) >> (51076u % 32u), arg_0), abs(~u_input.b.x | arg_0)), !func_2(vec3<bool>(var_0 == var_0, any(global0.xxw), func_6(Struct_1(arg_1.a, arg_0, arg_1.c), Struct_1(arg_1.a, 10091u, false), Struct_4(Struct_2(vec2<i32>(2147483647i, 13907i), global1[_wgslsmith_index_u32(34362u, 25u)], arg_1.b, vec3<i32>(59012i, 20481i, u_input.a), vec2<f32>(arg_2, -352f)), 0i, var_0), vec4<u32>(arg_1.b, 0u, 27413u, arg_3)).c), !select(vec4<bool>(true, arg_1.c, global0.x, var_0), vec4<bool>(false, global0.x, false, false), true)));
    var_1 = Struct_1(~(~var_1.a), abs(func_1().a.c), all(vec2<bool>(var_1.c, !(arg_1.c && false))));
    global2 = -871f;
    return _wgslsmith_f_op_f32(round(arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(reverseBits(_wgslsmith_sub_vec2_u32(~u_input.b, vec2<u32>(u_input.b.x, reverseBits(11131u)))));
    var var_1 = _wgslsmith_f_op_f32(func_7(~u_input.b.x, func_6(Struct_1(vec4<u32>(119215u, var_0.x, 4294967295u, 4294967295u) & select(vec4<u32>(1u, u_input.b.x, var_0.x, u_input.b.x), vec4<u32>(var_0.x, 1u, u_input.b.x, 111499u), global0.x), ~var_0.x, any(global0.yxy)), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b.x, ~4484u, 1u), 25u)], func_1(), vec4<u32>(~(~u_input.b.x), min(var_0.x, ~u_input.b.x), 1u << (var_0.x % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.x, 71939u, u_input.b.x), vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x)), select(var_0.x, 4294967295u, true)))), _wgslsmith_div_f32(2316f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1000f))))))), func_1().a.c));
    let var_2 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, 44660i), 18653i);
    global0 = !(!vec4<bool>(!(!global0.x), false, !any(vec2<bool>(global0.x, true)), true));
    var var_3 = Struct_4(func_1().a, func_1().a.d.x, true);
    global0 = !(!select(vec4<bool>(!global0.x, var_3.c != var_3.a.b.c, false, true), !vec4<bool>(false, global0.x, global0.x, true), func_1().c));
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b);
}

