struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(2542f)));
    global1 = vec4<f32>(var_0.a, -102f, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = Struct_1(min(firstLeadingBit(vec2<u32>(14318u, 4294967295u) >> (abs(vec2<u32>(u_input.c.x, 1u)) % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_add_u32(0u, 59369u), u_input.c.x)), select(global0.b, select(vec3<bool>(all(global0.b.xx), true, global0.b.x), select(select(vec3<bool>(false, false, true), vec3<bool>(global0.b.x, false, global0.b.x), vec3<bool>(global0.b.x, global0.b.x, global0.b.x)), !vec3<bool>(false, global0.b.x, global0.b.x), any(vec4<bool>(true, global0.b.x, true, false))), any(global0.b)), select(select(select(global0.b, global0.b, vec3<bool>(false, global0.b.x, true)), select(vec3<bool>(true, true, true), vec3<bool>(global0.b.x, true, true), true), !vec3<bool>(global0.b.x, true, false)), global0.b, !global0.b)), _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, ~_wgslsmith_mod_u32(0u, u_input.c.x)), ~min(34986u, global0.c << (global0.c % 32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, _wgslsmith_f_op_f32(581f * -374f))));
    let var_2 = Struct_2(Struct_1(u_input.c, select(select(!global0.b, vec3<bool>(false, true, global0.b.x), !global0.b), global0.b, select(select(global0.b, global0.b, global0.b.x), select(global0.b, vec3<bool>(false, global0.b.x, global0.b.x), vec3<bool>(false, true, global0.b.x)), global0.b)), countOneBits(firstLeadingBit(u_input.c.x))), Struct_1(select(reverseBits(vec2<u32>(global0.a.x, 1u)) & ~u_input.c, max(firstTrailingBit(u_input.c), vec2<u32>(u_input.c.x, 1u)), global0.b.yx), vec3<bool>(any(!global0.b), global0.b.x, all(vec3<bool>(global0.b.x, global0.b.x, global0.b.x))), 6504u));
    return u_input.c.x;
}

fn func_2() -> Struct_3 {
    global0 = Struct_1(vec2<u32>(func_3(), _wgslsmith_sub_u32(global0.c, _wgslsmith_sub_u32(72482u, _wgslsmith_mult_u32(1u, 1u)))), vec3<bool>(false, global0.b.x, false), _wgslsmith_dot_vec2_u32(u_input.c, max(vec2<u32>(abs(51337u), ~u_input.c.x), u_input.c)));
    var var_0 = -countOneBits(~(-vec4<i32>(-2147483647i, -14723i, 2147483647i, -64633i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, global0.c, 4294967295u, 4294967295u), vec4<u32>(7411u, 0u, global0.a.x, 78360u)) % vec4<u32>(32u))));
    var var_1 = (min(~(~u_input.c.x), 4294967295u) ^ _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 1u, global0.c)), vec3<u32>(_wgslsmith_add_u32(global0.c, global0.c), 37733u, u_input.c.x))) << (_wgslsmith_mult_u32(u_input.c.x, func_3()) % 32u);
    var var_2 = Struct_2(Struct_1(global0.a, global0.b, global0.c), Struct_1(global0.a & max(vec2<u32>(4294967295u, u_input.c.x), _wgslsmith_sub_vec2_u32(global0.a, vec2<u32>(global0.a.x, 31194u))), select(!(!global0.b), global0.b, vec3<bool>(global0.b.x || false, any(vec3<bool>(global0.b.x, true, false)), !global0.b.x)), ~reverseBits(~global0.a.x)));
    var var_3 = select(var_2.a.b.xx, select(vec2<bool>(!(!var_2.b.b.x), global0.b.x), global0.b.yy, vec2<bool>(true, false)), true);
    return Struct_3(-1000f);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - global1.yw);
    var var_1 = func_2();
    global0 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, _wgslsmith_sub_u32(min(4294967295u, 68149u), func_3())), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.a.x, u_input.c.x), u_input.c) ^ (vec2<u32>(0u, u_input.c.x) ^ vec2<u32>(u_input.c.x, 62647u)), ~(~global0.a)), _wgslsmith_div_vec2_u32(~vec2<u32>(global0.a.x, 10389u), vec2<u32>(1u, 94623u) | u_input.c)), global0.b, min(global0.c, _wgslsmith_mult_u32(0u, ~57437u)));
    global0 = Struct_1(~u_input.c, select(select(vec3<bool>(global0.b.x, !arg_0, true), select(vec3<bool>(arg_0, false, false), vec3<bool>(global0.b.x, global0.b.x, arg_0), global0.b), false), !vec3<bool>(arg_0 || global0.b.x, true, arg_0), select(global0.b, !global0.b, false)), 0u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -235f)), var_0, vec2<bool>(global0.b.x, false)))), var_0, vec2<bool>(!(u_input.a >= 40498i), true))));
    return Struct_2(Struct_1(_wgslsmith_div_vec2_u32(~vec2<u32>(88409u, 23214u), u_input.c ^ vec2<u32>(4294967295u, 53181u)) | _wgslsmith_div_vec2_u32(u_input.c ^ global0.a, vec2<u32>(37779u, u_input.c.x) & u_input.c), vec3<bool>(any(!global0.b.xz), arg_0, !(-1145f <= var_2.x)), ~16424u), Struct_1(~(~global0.a), select(!vec3<bool>(true, global0.b.x, true), select(select(global0.b, global0.b, global0.b), select(vec3<bool>(true, global0.b.x, arg_0), global0.b, vec3<bool>(arg_0, false, true)), any(global0.b.yy)), vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_u32(u_input.c, abs(firstTrailingBit(vec2<u32>(90486u, 4294967295u))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = firstLeadingBit(arg_1.a.c);
    var var_2 = 9934i;
    let var_3 = arg_1.b;
    let var_4 = _wgslsmith_sub_vec3_u32(abs(vec3<u32>(~1u, arg_1.a.a.x, reverseBits(min(u_input.c.x, global0.a.x)))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.b.c, ~4294967295u, 43278u), vec3<u32>(~var_0.b.c, global0.a.x, var_3.c << (var_1 % 32u)), vec3<u32>(u_input.c.x, global0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(79718u, arg_1.a.c, 0u, 0u), vec4<u32>(1u, var_1, arg_1.a.a.x, 0u)))));
    return func_1(all(select(var_0.b.b, global0.b, select(arg_1.b.b, select(arg_1.b.b, arg_1.a.b, vec3<bool>(var_3.b.x, false, false)), arg_1.a.b)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_mult_vec2_u32(~global0.a, ~u_input.c), !vec3<bool>(global0.b.x, all(vec4<bool>(global0.b.x, global0.b.x, false, true)), global0.b.x), u_input.c.x), func_4(u_input.b, func_1(!(!global0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, 824f, global1.x, global1.x)))));
    var_0 = Struct_2(func_4(u_input.d.x, Struct_2(var_0.a, var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(135f, -319f, global1.x, 870f))))), var_0.b);
    let var_1 = 1u;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_2().a))) * global1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(819f - 700f))));
    var_0 = Struct_2(func_4(_wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(u_input.d.x, 52262i, u_input.b)), ~vec3<i32>(u_input.d.x, -2147483647i, 1i)), Struct_2(func_1(global0.b.x & global0.b.x).b, func_4(_wgslsmith_mult_i32(43125i, u_input.d.x), func_1(global0.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(2325f, -754f, 1000f, -1195f) * vec4<f32>(var_2, 335f, global1.x, -1740f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1387f * -773f), var_2, _wgslsmith_f_op_f32(ceil(var_2)), global1.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, var_2, var_2, -513f), vec4<f32>(global1.x, var_2, var_2, 2181f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1029f, global1.x, -1093f, 339f), vec4<f32>(global1.x, global1.x, global1.x, 504f)))))), func_4((u_input.a << (1u % 32u)) >> (1u % 32u), func_1(true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1668f, global1.x, 193f, var_2) + vec4<f32>(global1.x, -592f, var_2, global1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(642f + 1839f), _wgslsmith_f_op_f32(round(global1.x)), -101f, _wgslsmith_f_op_f32(-global1.x)))));
    var var_3 = -select(~abs(vec4<i32>(0i, u_input.d.x, -2147483647i, 2147483647i)), _wgslsmith_add_vec4_i32(abs(select(vec4<i32>(2147483647i, 44975i, 2147483647i, u_input.d.x), vec4<i32>(u_input.b, u_input.a, u_input.a, -2147483647i), vec4<bool>(true, global0.b.x, var_0.b.b.x, true))), -select(vec4<i32>(u_input.a, 11785i, u_input.d.x, 5192i), vec4<i32>(42749i, -22573i, u_input.d.x, 0i), global0.b.x)), vec4<bool>(!global0.b.x, global0.b.x, false, any(select(var_0.b.b.xz, vec2<bool>(true, true), var_0.a.b.zy))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_f32(max(1f, var_2)), vec4<i32>(23961i, abs(reverseBits(var_3.x << (u_input.c.x % 32u))), -(~var_3.x), 0i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-242f, _wgslsmith_f_op_f32(global1.x * var_2), !var_0.b.b.x)) + 1358f), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(ceil(var_2)), true)))), global1.x);
}

