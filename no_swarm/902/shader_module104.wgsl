struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

var<private> global2: vec2<i32> = vec2<i32>(-18028i, 1i);

var<private> global3: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec3<u32> {
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a - global0.a.a)), _wgslsmith_f_op_f32(-global0.a.a))), global0.a.b));
    global3 = 36596u;
    global3 = abs(u_input.d.x);
    var var_0 = vec4<u32>(u_input.d.x, _wgslsmith_mult_u32(~1u, u_input.d.x) << ((66307u >> ((u_input.d.x | 25211u) % 32u)) % 32u), 45640u, u_input.d.x);
    let var_1 = Struct_3(global0.a);
    return var_0.wyy;
}

fn func_3() -> vec3<bool> {
    let var_0 = !(~(global2.x & 30279i) <= 1i);
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d.x, ~0u, abs(u_input.d.x)), func_2()) << (u_input.d.x % 32u), ~20926u);
    global1 = min(_wgslsmith_clamp_i32(_wgslsmith_div_i32(global2.x, -2147483647i), 1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(-7650i, 44083i)), abs(global2.x)) & global2.x), ~(~(~0i)));
    global2 = reverseBits(abs(max(_wgslsmith_sub_vec2_i32(u_input.b.zz, vec2<i32>(u_input.a, u_input.b.x)), u_input.b.yy) | _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.c, u_input.a), u_input.b.wx)));
    global2 = ~abs(countOneBits(u_input.b.yw));
    return select(!select(select(!vec3<bool>(global0.a.b, true, true), !vec3<bool>(global0.a.b, false, var_0), vec3<bool>(true, false, false)), vec3<bool>(any(vec2<bool>(true, global0.a.b)), global0.a.b, !global0.a.b), !select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, true, true), var_0)), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(var_0, false, var_0), false)), vec3<bool>(!(!var_0), !any(vec4<bool>(global0.a.b, global0.a.b, false, false)), !select(var_0, global0.a.b, global0.a.b)), ((u_input.d.x | 11540u) >> (~u_input.d.x % 32u)) >= ~u_input.d.x), !select(vec3<bool>(select(global0.a.b, var_0, global0.a.b), !global0.a.b, var_0), select(!vec3<bool>(false, global0.a.b, var_0), vec3<bool>(global0.a.b, false, var_0), all(vec2<bool>(true, global0.a.b))), true));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_add_vec3_u32(func_2(), ~vec3<u32>(50169u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) | vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 76153u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.d.x))), u_input.d.x));
    let var_1 = any(func_3());
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.a.a, global0.a.a, 932f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.a, -1025f, arg_2.a.a, -461f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a, 1407f, global0.a.a, global0.a.a)), _wgslsmith_div_vec4_f32(vec4<f32>(-2251f, global0.a.a, global0.a.a, global0.a.a), vec4<f32>(global0.a.a, arg_2.a.a, global0.a.a, 1133f))))), vec4<f32>(-480f, global0.a.a, -434f, 345f), vec4<bool>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.x, 0u, var_0.x), vec4<u32>(4294967295u, 150507u, 32946u, u_input.d.x)), firstLeadingBit(vec4<u32>(1u, 4294967295u, 1u, 48768u))) >= 14003u, !(func_3().x && false), true, var_0.x == ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.d.x, 4294967295u, 34144u), vec4<u32>(var_0.x, var_0.x, u_input.d.x, u_input.d.x)))));
    let var_3 = -vec4<i32>(abs(12545i), -13667i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global2.x, -16471i), _wgslsmith_div_i32(global2.x, u_input.b.x), _wgslsmith_mod_i32(global2.x, global2.x)), u_input.b.zxw), global2.x);
    global1 = max(_wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(u_input.c), -(-54729i << (u_input.d.x % 32u))), ~_wgslsmith_mult_i32(1i, 0i)), _wgslsmith_div_i32(40764i, 36198i));
    return 1246f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_1.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-561f, global0.a.a) - vec2<f32>(-289f, -497f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.a, arg_0.a), vec2<f32>(-1068f, -569f), vec2<bool>(false, global0.a.b))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a, 1090f)))), vec2<bool>(false || arg_0.b, true))))));
    let var_1 = vec2<bool>(!global0.a.b, global0.a.b);
    global3 = 35147u;
    let var_2 = reverseBits(~0i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), any(vec4<bool>(_wgslsmith_dot_vec2_i32(u_input.b.yw, vec2<i32>(u_input.c, arg_2.a.x)) > global2.x, all(select(vec2<bool>(var_1.x, var_1.x), var_1, global0.a.b)), true, var_1.x)));
    return Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-2147483647i, u_input.b.x, u_input.c)), -(arg_2.a.www & vec3<i32>(53488i, u_input.c, global2.x))), u_input.a ^ abs(abs(-54289i)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.yw, select(vec2<i32>(arg_2.a.x, -1i), vec2<i32>(global2.x, global2.x), vec2<bool>(var_1.x, false))), min(vec2<i32>(2147483647i, 12143i), vec2<i32>(global2.x, 2147483647i)) >> (firstLeadingBit(u_input.d) % vec2<u32>(32u))), ~_wgslsmith_mod_i32(min(1i, -4742i), global2.x)), ~arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    var var_1 = func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a - global0.a.a) + _wgslsmith_f_op_f32(func_1(true, global0.a.b, Struct_3(global0.a)))), _wgslsmith_f_op_f32(global0.a.a - _wgslsmith_f_op_f32(-global0.a.a))), select(true, true & (343f <= global0.a.a), true)), global0.a, Struct_2(firstTrailingBit(select(vec4<i32>(u_input.b.x, global2.x, u_input.b.x, 36128i), u_input.b, vec4<bool>(false, true, true, false)) >> ((vec4<u32>(u_input.d.x, 4294967295u, 33756u, 22694u) ^ vec4<u32>(u_input.d.x, 31475u, u_input.d.x, u_input.d.x)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(max(u_input.d.x, 0u), _wgslsmith_clamp_u32(u_input.d.x, 69849u, 34033u)), _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(78512u, u_input.d.x), vec2<u32>(u_input.d.x, 46949u))), ~_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), ~u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.b.x, 59205u, 28548u), vec3<u32>(0u, 0u, 4294967295u)), ~(~1u)), 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, global0.a.a, global0.a.a, global0.a.a))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1354f, 1000f, -436f, -1047f) + vec4<f32>(-784f, global0.a.a, global0.a.a, global0.a.a)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.a, -320f, global0.a.a, -1000f), vec4<f32>(1000f, global0.a.a, global0.a.a, 605f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1646f, -1635f, global0.a.a, global0.a.a))), vec2<i32>(~global2.x, global2.x));
}

