struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
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

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(34746i, 0i, -52902i, 46664i), vec4<i32>(-1i, 26073i, 2147483647i, i32(-2147483648)), vec4<i32>(31354i, 43254i, 1i, -1i), vec4<i32>(i32(-2147483648), 1i, 37593i, 408i), vec4<i32>(-12491i, 0i, 10084i, 11955i), vec4<i32>(2147483647i, i32(-2147483648), -5382i, -16466i), vec4<i32>(0i, 0i, 2147483647i, 25177i), vec4<i32>(2147483647i, -3433i, 0i, 2147483647i), vec4<i32>(-12522i, 2147483647i, 2147483647i, -26229i), vec4<i32>(37536i, 0i, 1i, 50402i), vec4<i32>(1i, 1i, 9702i, -14186i), vec4<i32>(-10509i, 36757i, -1i, i32(-2147483648)), vec4<i32>(-8292i, -21743i, -16784i, 0i), vec4<i32>(-164i, 2147483647i, -12584i, -1i), vec4<i32>(-9256i, -4638i, 35369i, 0i), vec4<i32>(i32(-2147483648), 1i, 12573i, 0i), vec4<i32>(1i, 2147483647i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), -25462i, 15179i, -54433i), vec4<i32>(i32(-2147483648), -1i, 919i, 21290i), vec4<i32>(0i, 12002i, 4363i, -82238i), vec4<i32>(-52331i, -1i, 0i, -30367i), vec4<i32>(22773i, i32(-2147483648), 34339i, 33115i), vec4<i32>(i32(-2147483648), 0i, 14710i, -1i), vec4<i32>(28065i, 45396i, -1i, -15245i), vec4<i32>(-17831i, -39720i, i32(-2147483648), i32(-2147483648)), vec4<i32>(68248i, i32(-2147483648), -8068i, i32(-2147483648)), vec4<i32>(-26529i, 2147483647i, 0i, 0i), vec4<i32>(0i, 0i, i32(-2147483648), 26723i), vec4<i32>(-12596i, -29356i, -2483i, -9368i), vec4<i32>(1i, 1i, 0i, -1i), vec4<i32>(11093i, 1397i, -1i, i32(-2147483648)), vec4<i32>(0i, 58225i, 1i, 38138i));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-44907i, vec2<f32>(416f, 312f), vec4<i32>(1i, 2147483647i, 41607i, 1i), true, 313f), Struct_1(-5637i, vec2<f32>(304f, -1000f), vec4<i32>(15373i, 1i, -24163i, -1i), true, -512f), Struct_1(-13640i, vec2<f32>(195f, 375f), vec4<i32>(10279i, 45208i, 2147483647i, 20424i), true, 1000f), Struct_1(2020i, vec2<f32>(362f, -997f), vec4<i32>(2147483647i, 49477i, -6292i, -1i), true, 781f), Struct_1(116806i, vec2<f32>(-630f, -1013f), vec4<i32>(1i, -39319i, -51895i, 1i), false, -399f), Struct_1(1i, vec2<f32>(419f, 1000f), vec4<i32>(2147483647i, -27076i, 1i, -12197i), true, 977f), Struct_1(-1i, vec2<f32>(957f, -1361f), vec4<i32>(2147483647i, -1i, 2147483647i, 2147483647i), true, -1000f), Struct_1(0i, vec2<f32>(1000f, 302f), vec4<i32>(29342i, 1i, 59897i, 50824i), false, 1233f), Struct_1(0i, vec2<f32>(918f, 354f), vec4<i32>(-1i, 2147483647i, i32(-2147483648), i32(-2147483648)), false, -1919f), Struct_1(i32(-2147483648), vec2<f32>(822f, 2784f), vec4<i32>(6619i, i32(-2147483648), -3979i, -33176i), true, 263f), Struct_1(2147483647i, vec2<f32>(581f, -654f), vec4<i32>(-4240i, 0i, -21594i, 57970i), true, -1000f), Struct_1(-2931i, vec2<f32>(1700f, 1000f), vec4<i32>(78839i, i32(-2147483648), i32(-2147483648), 20431i), true, -971f), Struct_1(-38270i, vec2<f32>(-837f, 533f), vec4<i32>(-9759i, -18100i, -15212i, 139i), false, -587f), Struct_1(-1i, vec2<f32>(-121f, -698f), vec4<i32>(1i, i32(-2147483648), 2147483647i, 4438i), true, -565f), Struct_1(2147483647i, vec2<f32>(1000f, -1192f), vec4<i32>(32163i, 43185i, 8655i, -27673i), true, -1038f), Struct_1(-13673i, vec2<f32>(-1000f, -791f), vec4<i32>(29107i, 0i, 2147483647i, 2147483647i), true, 213f), Struct_1(36319i, vec2<f32>(-641f, -1391f), vec4<i32>(0i, 24203i, -22870i, -4181i), true, -781f), Struct_1(25312i, vec2<f32>(-647f, 1234f), vec4<i32>(32917i, 2147483647i, 28100i, 0i), false, -1170f));

var<private> global4: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec4<u32> {
    return _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, ~13145u, global0.x, 21238u), arg_3), vec4<u32>(arg_3.x, 1u, _wgslsmith_mod_u32(45069u << (1u % 32u), u_input.e), 20915u) | ~(arg_3 ^ vec4<u32>(0u, global0.x, global0.x, global0.x)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: bool) -> Struct_1 {
    global3 = array<Struct_1, 18>();
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(-u_input.c.x, arg_0, -1i), ~(vec3<i32>(2147483647i, u_input.c.x, 0i) & vec3<i32>(0i, global2.c.x, 1713i)) ^ -(global2.c.zxz >> (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, -107f))), vec2<f32>(-1000f, -1641f)))), vec4<i32>(i32(-1i) * -6281i, 0i << (_wgslsmith_add_u32(58944u, u_input.e) % 32u), 1268i, -_wgslsmith_clamp_i32(arg_0, arg_0, arg_1)) << (reverseBits(min(func_3(-1000f, global3[_wgslsmith_index_u32(u_input.e, 18u)], vec4<i32>(arg_0, 0i, arg_0, arg_1), vec4<u32>(arg_2, 4294967295u, 4294967295u, 6950u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, u_input.e, 58852u, arg_2), vec4<u32>(arg_2, u_input.e, 4294967295u, 49577u)))) % vec4<u32>(32u)), any(!vec2<bool>(true, global2.d)), global2.e);
    global4 = ~53561u > select(arg_2, firstLeadingBit(arg_2), true);
    let var_1 = select(!vec4<bool>(true, all(select(vec4<bool>(false, false, global2.d, true), vec4<bool>(false, false, true, false), var_0.d)), global2.d != false, true), vec4<bool>(u_input.e <= u_input.e, false && all(select(vec3<bool>(true, true, false), vec3<bool>(arg_3, false, var_0.d), var_0.d)), !var_0.d, !all(!vec3<bool>(var_0.d, false, arg_3))), arg_3);
    var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-469f, global2.b.x), var_0.e) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2686f, -842f)))), ~firstTrailingBit(~select(var_0.c, vec4<i32>(909i, arg_0, 2147483647i, var_0.a), vec4<bool>(false, true, var_1.x, false))), !(!all(vec3<bool>(global2.d, global2.d, true))), global2.e);
    return global3[_wgslsmith_index_u32(arg_2, 18u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = select(vec3<u32>(47958u, ~4430u, u_input.e), reverseBits(vec3<u32>(u_input.e, 24369u, u_input.e << (u_input.e % 32u))) | ~(~vec3<u32>(u_input.e, 1u, 0u) ^ ~vec3<u32>(4294967295u, 29983u, 0u)), false);
    global2 = Struct_1(reverseBits(-1i), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-797f * arg_0.b.x)), _wgslsmith_f_op_f32(trunc(arg_0.b.x))), vec4<i32>(select(~arg_0.a, arg_2.x, _wgslsmith_f_op_f32(-global2.b.x) >= -103f), -1i, ~2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.b, global2.c) & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, 0i), global2.c.www), abs(global2.c.x), _wgslsmith_mod_i32(global2.a, global2.c.x >> (u_input.e % 32u)))), arg_1.d, arg_0.e);
    let var_1 = Struct_1(-19982i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.b))), ~(~vec4<i32>(max(-1i, u_input.d), -13097i, 29077i, abs(1i))), !global2.d, _wgslsmith_f_op_f32(392f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-407f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e, arg_0.e)))));
    global0 = var_0.xx;
    let var_2 = var_0.yz;
    return func_2(0i, arg_0.a, ~var_2.x, all(!select(vec2<bool>(true, arg_0.d), vec2<bool>(true, true), all(vec3<bool>(false, false, global2.d)))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<f32> {
    let var_0 = all(select(select(select(!vec2<bool>(global2.d, true), select(vec2<bool>(false, true), vec2<bool>(global2.d, false), vec2<bool>(true, global2.d)), arg_2.d), !vec2<bool>(arg_2.d, arg_2.d), any(vec4<bool>(arg_2.d, arg_2.d, true, false))), select(!(!vec2<bool>(arg_2.d, true)), !(!vec2<bool>(arg_2.d, true)), func_2(i32(-1i) * -1i, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, 5713u), vec3<u32>(0u, u_input.e, global0.x)), true).d), true));
    var var_1 = select(vec2<bool>(false, true), select(vec2<bool>(func_2(arg_2.a, arg_2.a, ~0u, u_input.e == global0.x).d, any(select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), global2.d))), select(select(select(vec2<bool>(var_0, false), vec2<bool>(global2.d, false), vec2<bool>(false, var_0)), select(vec2<bool>(global2.d, global2.d), vec2<bool>(global2.d, false), false), !var_0), select(!vec2<bool>(arg_2.d, global2.d), vec2<bool>(var_0, var_0), arg_2.e >= 916f), !global2.d), vec2<bool>(arg_2.d & false, !global2.d)), vec2<bool>(!(_wgslsmith_sub_i32(global2.a, 6864i) == 2147483647i), !(!(global0.x > global0.x))));
    global1 = array<vec4<i32>, 32>();
    var_1 = !vec2<bool>(global2.d, true);
    let var_2 = _wgslsmith_div_vec3_u32(~(~select(min(vec3<u32>(1u, u_input.e, global0.x), vec3<u32>(global0.x, 104595u, u_input.e)), min(vec3<u32>(global0.x, global0.x, 4294967295u), vec3<u32>(u_input.e, u_input.e, global0.x)), vec3<bool>(true, true, true))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~u_input.e, 4294967295u, _wgslsmith_add_u32(102789u, u_input.e)), _wgslsmith_mod_u32(~global0.x, u_input.e), max(0u, global0.x)), select(vec3<u32>(1u, global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(4364u, global0.x))), vec3<u32>(0u, global0.x, 12722u), true)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-347f - arg_2.b.x), _wgslsmith_f_op_f32(arg_3.x * -634f), any(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(sign(global2.b.x)), _wgslsmith_f_op_f32(sign(arg_2.e))) * arg_3.xwy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.e, -1488f, -1718f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, -283f, global2.e) + vec3<f32>(global2.e, 1000f, 741f)), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_4(~11634i, -63701i, func_1(Struct_1(global2.c.x, vec2<f32>(227f, global2.e), vec4<i32>(-29277i, u_input.d, 18728i, global2.a), true, -1233f), global3[_wgslsmith_index_u32(u_input.e, 18u)], vec4<i32>(global2.a, u_input.b.x, global2.c.x, u_input.d)), vec4<f32>(global2.e, global2.b.x, -624f, -1154f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, global2.e, -238f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(608f, global2.b.x, 313f)))))), !select(select(vec3<bool>(global2.d, global2.d, global2.d), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(global2.d, global2.d, false), vec3<bool>(global2.d, false, true), global2.d), !vec3<bool>(global2.d, global2.d, global2.d)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.b.x, global2.b.x, global2.e))))))));
    global2 = global3[_wgslsmith_index_u32(u_input.e, 18u)];
    let var_1 = vec3<f32>(1f, 1f, 1f);
    global4 = true;
    var var_2 = func_2(global2.c.x, ~select(1i | global2.a, 1i, false), u_input.e, any(select(vec3<bool>(func_1(global3[_wgslsmith_index_u32(u_input.e, 18u)], global3[_wgslsmith_index_u32(u_input.e, 18u)], vec4<i32>(u_input.a, u_input.d, 2147483647i, 2147483647i)).d, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, global2.d, false), select(vec3<bool>(global2.d, false, true), vec3<bool>(global2.d, global2.d, global2.d), true)), !(-36011i <= global2.a))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(-1i, var_2.a, Struct_1(2147483647i, var_2.b, global1[_wgslsmith_index_u32(u_input.e, 32u)], global2.d, var_2.b.x), vec4<f32>(-1408f, -757f, global2.e, 476f))) + _wgslsmith_div_vec3_f32(vec3<f32>(869f, -378f, -613f), vec3<f32>(var_2.b.x, -318f, var_1.x))))))));
    var var_3 = global2.d;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(var_2.a, firstTrailingBit(global2.a), global2.c.x) >> (94625u % 32u));
}

