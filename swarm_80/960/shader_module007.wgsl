struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_5;

var<private> global2: Struct_4 = Struct_4(Struct_3(Struct_2(false, Struct_1(984f, 0u), vec2<bool>(false, false), vec3<bool>(false, true, true), -18611i), Struct_2(false, Struct_1(1667f, 20095u), vec2<bool>(false, false), vec3<bool>(true, false, true), -1i)), Struct_2(true, Struct_1(1000f, 33158u), vec2<bool>(false, false), vec3<bool>(true, true, true), 0i), vec2<bool>(true, false));

var<private> global3: Struct_4;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    global1 = Struct_5(arg_0, 1478f);
    global2 = arg_0;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1690f, global2.b.b.a)))), global1.a.b.b.b);
    global0 = vec4<u32>(~(~_wgslsmith_div_u32(global3.a.b.b.b, 0u)) << (20938u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.a.b.b.b, var_0.b, 0u, 32163u), ~vec4<u32>(arg_0.b.b.b, global3.b.b.b, global3.b.b.b, global3.a.b.b.b))), global0.xz), global2.b.b.b, arg_0.b.b.b);
    let var_1 = !select(vec3<bool>(!select(global2.b.d.x, true, global3.c.x), select(-65697i <= global2.b.e, global3.c.x, global3.a.b.b.b >= global0.x), !any(vec3<bool>(global3.c.x, global3.b.c.x, true))), vec3<bool>(true, true, arg_0.a.a.a), select(arg_0.b.d, select(!vec3<bool>(global1.a.c.x, global1.a.b.d.x, global2.a.b.c.x), select(vec3<bool>(arg_0.a.b.a, true, true), global3.a.b.d, global1.a.b.d), !arg_0.a.a.d.x), vec3<bool>(true, false || global1.a.c.x, true)));
    return u_input.a.yz | u_input.a.zz;
}

fn func_4(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_2(global3.c.x, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global3.b.b.a)), global3.a.a.b.a)), 4294967295u), global2.a.b.c, vec3<bool>(any(global1.a.b.d), true, select(!global2.a.b.d.x, all(!vec2<bool>(global2.b.a, true)), true)), 0i);
    let var_1 = !vec4<bool>(var_0.c.x, false, select(select(global2.a.b.a & global3.c.x, global3.a.b.d.x, true), true, any(select(vec2<bool>(true, global3.c.x), global3.b.d.zy, true))), false);
    var var_2 = 2147483647i;
    var var_3 = Struct_5(global1.a, _wgslsmith_f_op_f32(trunc(global1.a.a.b.b.a)));
    let var_4 = select(select(!(!(!var_1)), !vec4<bool>(true, true, !var_0.a, true), select(select(!vec4<bool>(var_3.a.a.a.a, true, false, var_1.x), var_1, all(global1.a.c)), vec4<bool>(global3.c.x, true, all(var_1), any(vec2<bool>(var_0.c.x, false))), !(!var_1))), var_1, var_1);
    return 1718f;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b.b.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_3(Struct_4(global2.a, global3.b, vec2<bool>(true, true))))), _wgslsmith_f_op_f32(global3.a.a.b.a * _wgslsmith_f_op_f32(func_4(u_input.a.zz))))))));
    let var_1 = global3.a.a.b.a;
    var_0 = arg_2;
    var_0 = -1158f;
    var var_2 = vec2<i32>(i32(-1i) * -17812i, u_input.a.x);
    return global2.a.a.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_2(!any(select(vec3<bool>(false, global1.a.b.d.x, false), select(global2.b.d, global1.a.a.a.d, vec3<bool>(global3.a.a.a, true, false)), all(global1.a.a.b.c))), arg_0, select(vec2<bool>(arg_1.x, any(!global3.a.a.d)), !global1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f - -288f) * _wgslsmith_div_f32(-189f, global1.b)) == _wgslsmith_f_op_f32(arg_0.a - -1000f)), global3.a.b.d, _wgslsmith_mult_i32(~global3.a.a.e, -abs(global1.a.b.e)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(438f + 1010f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-926f, arg_0.a))), global1.a.b.b, vec2<bool>((global1.a.c.x && var_0.c.x) == any(vec2<bool>(true, true)), any(select(global1.a.c, global3.b.c, var_0.c.x))), var_0.d, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e, global1.a.b.e, 2147483647i, 20107i), abs(vec4<i32>(global1.a.a.b.e, -15127i, global3.b.e, -50674i)))), global2.b);
    var var_2 = ~_wgslsmith_mod_vec4_i32(select(firstTrailingBit(reverseBits(vec4<i32>(u_input.a.x, 34331i, global1.a.b.e, 1i))), -firstLeadingBit(vec4<i32>(u_input.a.x, var_1.b.e, -1i, global3.b.e)), select(vec4<bool>(global3.a.b.c.x, global2.c.x, true, true), select(vec4<bool>(arg_1.x, global3.c.x, true, true), vec4<bool>(false, var_1.b.d.x, true, false), global1.a.a.b.c.x), all(global3.c))), vec4<i32>(select(var_0.e, ~(-31284i), true), ~(~global2.a.b.e), _wgslsmith_sub_i32(global2.a.a.e, _wgslsmith_mod_i32(1i, 2147483647i)), ~_wgslsmith_add_i32(var_0.e, 1i)));
    var var_3 = Struct_3(Struct_2(var_0.d.x, func_2(firstTrailingBit(vec4<u32>(95874u, 4255u, 82665u, global1.a.a.b.b.b)), 8843u, _wgslsmith_f_op_f32(f32(-1f) * -927f)), var_1.a.c, !var_1.b.d, ~(i32(-1i) * -31872i)), Struct_2(true, global3.b.b, select(global1.a.c, select(!vec2<bool>(false, var_0.d.x), var_0.d.xz, vec2<bool>(true, true)), select(select(var_1.b.d.yz, global1.a.c, arg_1.x), select(vec2<bool>(global2.a.b.a, global2.c.x), vec2<bool>(global1.a.b.d.x, var_0.a), true), true)), global1.a.a.b.d, abs(firstTrailingBit(-2147483647i)) ^ -_wgslsmith_sub_i32(global2.a.a.e, var_0.e)));
    var_3 = global2.a;
    return global2.a;
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_5(Struct_4(func_5(func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.b.b.b, global0.x, global2.a.a.b.b, 22141u), vec4<u32>(1u, global3.a.b.b.b, 0u, 0u)), 1u, 1f), global3.b.d.zy), func_5(global2.a.a.b, select(global3.a.b.d.yz, select(global1.a.b.c, global2.c, true), all(vec3<bool>(false, true, global1.a.b.d.x)))).a, vec2<bool>(all(!global3.b.d), true)), -274f);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b, 925f), vec2<f32>(global1.a.b.b.a, -1078f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1326f), -293f))), vec2<f32>(global2.b.b.a, _wgslsmith_f_op_f32(-var_0.a.a.a.b.a)));
    let var_2 = !(!vec2<bool>(func_5(func_2(vec4<u32>(1u, global3.a.b.b.b, 4879u, global3.a.b.b.b), global0.x, 1057f), vec2<bool>(global2.a.a.d.x, false)).a.c.x, global3.a.a.a && true));
    global0 = vec4<u32>(~4294967295u, ~global1.a.b.b.b, global0.x, reverseBits(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.b.b, global2.a.b.b.b, 59898u), vec3<u32>(4294967295u, 32346u, var_0.a.a.a.b.b)), _wgslsmith_mult_u32(1u, var_0.a.b.b.b)), ~(~global0.x), var_0.a.a.b.b.b)));
    var var_3 = func_5(var_0.a.a.b.b, !(!var_2)).b;
    return vec3<bool>(true, any(vec4<bool>(true, var_3.a, !global3.c.x, func_5(Struct_1(var_1.x, var_0.a.a.b.b.b), var_2).a.c.x)) | true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a.b.b.a;
    var var_1 = Struct_2(all(select(!(!global2.b.d), global2.a.b.d, global1.a.b.d)), global3.a.a.b, !vec2<bool>(global1.a.b.a, !any(global3.b.d)), func_1(), ~global2.a.b.e);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.a.b.a), _wgslsmith_div_f32(442f, _wgslsmith_f_op_f32(-693f - _wgslsmith_f_op_f32(-global1.b)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-638f, global3.b.b.a)) - vec2<f32>(1f, 1f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a, global3.a.a.b.a))), vec2<f32>(var_1.b.a, _wgslsmith_f_op_f32(-var_1.b.a))), func_1().x)));
    var var_3 = vec4<f32>(-604f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.b.a, -351f) - _wgslsmith_f_op_f32(step(226f, var_2.x))), _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_div_f32(388f, -446f)))) * _wgslsmith_f_op_f32(abs(-1027f))), 269f, var_1.b.a);
    var var_4 = _wgslsmith_div_u32(~(~firstLeadingBit(global2.a.a.b.b) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, global2.b.b.b, 36279u), vec4<u32>(4294967295u, global2.a.a.b.b, 34140u, 1u))), select(~(~abs(global1.a.b.b.b)), 0u, true));
    global1 = Struct_5(Struct_4(func_5(func_5(Struct_1(192f, 4294967295u), global2.a.a.c).a.b, select(!vec2<bool>(global2.c.x, var_1.c.x), !vec2<bool>(global1.a.b.d.x, var_1.a), global2.a.a.b.a > 498f)), global1.a.b, !global1.a.a.a.d.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1315f - _wgslsmith_f_op_f32(-1000f * -353f))));
    let x = u_input.a;
    s_output = StorageBuffer(-877f);
}

