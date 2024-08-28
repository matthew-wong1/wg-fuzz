struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 18> = array<i32, 18>(i32(-2147483648), -36302i, -55337i, 4148i, -2657i, 2147483647i, -22376i, 2147483647i, 1i, 7507i, 16643i, 2147483647i, 1i, 45245i, -1i, 1i, -1i, i32(-2147483648));

var<private> global2: u32 = 37513u;

var<private> global3: array<u32, 16> = array<u32, 16>(1u, 66114u, 4294967295u, 1u, 2780u, 44941u, 4294967295u, 22980u, 1u, 24856u, 1u, 0u, 0u, 51627u, 1u, 4294967295u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: u32) -> vec2<bool> {
    let var_0 = Struct_1(~select(vec3<i32>(1i, abs(-2147483647i), -global1[_wgslsmith_index_u32(1u, 18u)]), min(u_input.a, vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(38628u, 18u)], 3482i)), vec3<bool>(true, select(arg_1.x, false, true), all(vec4<bool>(true, arg_1.x, true, true)))));
    var var_1 = false;
    global2 = 1u;
    global0 = select((true && !arg_1.x) | (false && arg_1.x), false, arg_1.x) && true;
    let var_2 = (_wgslsmith_sub_vec2_i32(min(~var_0.a.yz, select(var_0.a.zy, vec2<i32>(var_0.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 18u)]), arg_1.zx)), min(var_0.a.yz, vec2<i32>(-39603i, global1[_wgslsmith_index_u32(u_input.b.x, 18u)])) & -vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 18u)])) | -(vec2<i32>(global1[_wgslsmith_index_u32(27592u, 18u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 16u)], 18u)]) ^ vec2<i32>(10102i, u_input.a.x))) | var_0.a.zz;
    return vec2<bool>(any(select(vec4<bool>(arg_1.x, true, arg_1.x, global3[_wgslsmith_index_u32(39902u, 16u)] >= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38249u, 16u)], 16u)]), vec4<bool>(true, all(arg_1), true & arg_1.x, arg_1.x), !vec4<bool>(false, false, arg_1.x, arg_1.x))), any(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))));
}

fn func_2() -> u32 {
    let var_0 = Struct_3(firstLeadingBit(~u_input.c.x), any(!vec3<bool>(false, true, all(vec4<bool>(true, true, true, false)))), global3[_wgslsmith_index_u32(~0u, 16u)], Struct_1(-(vec3<i32>(u_input.a.x, -1i, 48176i) & -vec3<i32>(-5046i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44729u, 16u)], 18u)], 2147483647i))), _wgslsmith_clamp_i32(2147483647i, 58309i >> (u_input.b.x % 32u), global1[_wgslsmith_index_u32(8131u, 18u)] | ~9586i));
    let var_1 = !select(select(select(select(vec2<bool>(true, var_0.b), vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, false)), func_3(vec4<f32>(877f, -407f, 348f, 324f), vec3<bool>(false, var_0.b, true), 31831u), vec2<bool>(true, var_0.b)), vec2<bool>(var_0.b, true), select(select(vec2<bool>(false, false), vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, var_0.b)), !vec2<bool>(var_0.b, false), var_0.b)), func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1104f, 103f, -567f, -398f))), vec3<bool>(true, true, true), u_input.b.x), true);
    let var_2 = select(vec3<bool>(!var_1.x, _wgslsmith_sub_i32(~u_input.a.x, ~1i) != global1[_wgslsmith_index_u32(73503u | _wgslsmith_dot_vec2_u32(u_input.d.zy, u_input.b.yw), 18u)], true), select(!vec3<bool>(var_1.x, any(vec3<bool>(true, var_1.x, var_0.b)), any(vec3<bool>(var_0.b, var_1.x, false))), vec3<bool>(!all(vec3<bool>(false, true, var_1.x)), all(var_1) && true, true), any(vec3<bool>(true, true | var_0.b, true))), select(vec3<bool>(var_0.b, false, var_0.b), select(select(!vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(var_0.b, true, var_0.b), !vec3<bool>(var_0.b, var_0.b, true)), select(vec3<bool>(true, false, var_0.b), vec3<bool>(true, true, true), select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_0.b, var_0.b), vec3<bool>(false, false, false))), select(select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, var_0.b, var_1.x), var_1.x), !vec3<bool>(var_1.x, var_0.b, true), select(vec3<bool>(false, true, true), vec3<bool>(false, var_0.b, true), false))), var_0.b));
    var var_3 = var_0;
    let var_4 = var_3.d;
    return firstTrailingBit(global3[_wgslsmith_index_u32(u_input.c.x, 16u)] >> (4364u % 32u));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(-firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_3.b.a.x, 65540i, arg_3.e.x), vec4<i32>(54598i, global1[_wgslsmith_index_u32(52761u, 18u)], -29088i, u_input.a.x)), 18311i, 1i)));
    var var_1 = firstTrailingBit(arg_3.b.a);
    var var_2 = Struct_5(arg_3.c.x, Struct_3(58528u, arg_3.d.x, countOneBits(0u), arg_3.b, abs(var_0.a.x)), Struct_2(arg_1, var_0, vec2<f32>(arg_1.x, -183f), arg_3.d, max(vec3<i32>(select(1i, 15376i, false), global1[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.e.x, u_input.a.x, -2147483647i, 37149i), vec4<i32>(u_input.a.x, -5729i, 30311i, var_1.x))), u_input.a)), select(!vec4<bool>(true, true, !arg_3.d.x, true), !arg_3.d, vec4<bool>(false, !all(vec2<bool>(arg_3.d.x, arg_3.d.x)), true, true)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-544f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(645f))))), -926f);
    global1 = array<i32, 18>();
    return var_2.c.d.zx;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    let var_0 = Struct_4(0i, select(select(vec4<bool>(arg_0.x, true, !arg_2, func_3(vec4<f32>(666f, -911f, 1130f, arg_1.x), vec3<bool>(arg_2, false, true), u_input.d.x).x), !(!vec4<bool>(arg_2, arg_0.x, true, arg_2)), vec4<bool>(arg_0.x, true, any(vec3<bool>(arg_2, arg_0.x, arg_0.x)), arg_2)), vec4<bool>(arg_2, arg_2, !arg_2, !(global3[_wgslsmith_index_u32(1u, 16u)] >= global3[_wgslsmith_index_u32(4294967295u, 16u)])), select(!(!vec4<bool>(arg_0.x, true, true, arg_0.x)), vec4<bool>(true, true, u_input.a.x >= global1[_wgslsmith_index_u32(27934u, 18u)], true), !(!arg_2))));
    var var_1 = var_0;
    var var_2 = select(!all(vec3<bool>(true, true, all(vec4<bool>(true, false, arg_0.x, true)))), false, var_0.b.x);
    var var_3 = min((reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-30609i, -12941i, 2147483647i, var_1.a), vec4<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(88532u, 16u)], 18u)], u_input.a.x, 29311i, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], -2147483647i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46084u, 16u)], 16u)], 18u)], -66481i))) << ((vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.c.x) << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))) & vec4<i32>(-14982i, -23530i, -33038i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.a, -17833i, u_input.a.x), ~2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1473i, var_0.a, 1i), -firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a, 2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 18u)]), vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(19022u, 18u)], var_0.a, 27279i), vec4<i32>(-402i, var_1.a, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22941u, 16u)], 16u)], 18u)], var_1.a)))));
    let var_4 = Struct_3(global3[_wgslsmith_index_u32(0u, 16u)], true, u_input.d.x, Struct_1(abs(vec3<i32>(0i, u_input.a.x, countOneBits(-1i)))), 1i);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 415f)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: f32) -> vec2<bool> {
    var var_0 = ~(-vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, select(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], false)), ~0i, _wgslsmith_div_i32(5009i, global1[_wgslsmith_index_u32(0u, 18u)]) & (u_input.a.x | 80241i), ~0i));
    global0 = true;
    let var_1 = 47233u;
    var_0 = -vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(87407u, 18u)], _wgslsmith_sub_i32(firstTrailingBit(global1[_wgslsmith_index_u32(19317u, 18u)]), min(var_0.x, global1[_wgslsmith_index_u32(59290u, 18u)]))), 6574i, global1[_wgslsmith_index_u32(~4294967295u, 18u)]);
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(func_5(func_4(func_2(), vec2<f32>(-876f, arg_2), u_input.d.zz, Struct_2(vec2<f32>(-2095f, arg_2), Struct_1(var_0.wwx), arg_1.yy, vec4<bool>(true, true, arg_0.x, arg_0.x), vec3<i32>(global1[_wgslsmith_index_u32(45527u, 18u)], 0i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1762f, arg_2, arg_2, -221f) - vec4<f32>(arg_2, arg_2, 869f, 891f)), arg_0.x)) >= arg_2, arg_0.x, true, true);
    return func_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(506f, arg_1.x, arg_2, arg_1.x), vec4<f32>(-496f, 1053f, -2431f, 446f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -100f, arg_1.x, arg_1.x) + vec4<f32>(arg_2, 1387f, arg_2, arg_1.x)))))), arg_0, u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(!select(func_1(vec3<bool>(false, false, false), vec3<f32>(989f, 427f, -1052f), 567f), vec2<bool>(true, true), vec2<bool>(true, true))) | all(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), true), vec3<bool>(true, true, true), !any(vec3<bool>(false, true, true))));
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(-705f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(703f)) * -736f))), Struct_1(_wgslsmith_mult_vec3_i32(select(vec3<i32>(global1[_wgslsmith_index_u32(38036u, 18u)], -4919i, -36908i), u_input.a | u_input.a, select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), u_input.a)), vec2<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-483f - -1043f) * _wgslsmith_f_op_f32(trunc(353f)))))), vec4<bool>(select(1i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 18u)], u_input.a.x), true) == 1i, any(vec4<bool>(true, true, true, true)) && false, true, true), u_input.a);
    var var_1 = u_input.a;
    var var_2 = vec2<u32>(~(~u_input.b.x), 8325u);
    var var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(30249u);
}

