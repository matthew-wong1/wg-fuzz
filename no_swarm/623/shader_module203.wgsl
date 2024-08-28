struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(771f), Struct_1(-823f), Struct_1(-1771f), Struct_1(1730f), Struct_1(-257f), Struct_1(268f), Struct_1(134f), Struct_1(-662f), Struct_1(1375f), Struct_1(511f), Struct_1(-357f), Struct_1(-233f), Struct_1(-1841f), Struct_1(-179f), Struct_1(1647f), Struct_1(1000f), Struct_1(-1155f), Struct_1(115f), Struct_1(920f), Struct_1(455f), Struct_1(430f), Struct_1(-641f), Struct_1(-105f), Struct_1(587f), Struct_1(-280f), Struct_1(-1993f), Struct_1(-1588f));

var<private> global1: Struct_3;

var<private> global2: array<vec4<u32>, 30>;

var<private> global3: array<vec3<u32>, 24>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> bool {
    let var_0 = min(~vec2<i32>(_wgslsmith_mult_i32(52668i, -1i), 0i), vec2<i32>(firstTrailingBit(1i), 2147483647i)) >> (~arg_1.zz % vec2<u32>(32u));
    let var_1 = Struct_2(var_0.x, global1.a.a, 602f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, 474f, 871f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a, global1.a.a, global1.a.a) + vec3<f32>(global1.a.a, -662f, arg_0.a.a)))))), arg_0.a);
    global1 = Struct_3(arg_0.a);
    let var_2 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(var_0.x, -44486i)), var_0), var_1.a, var_1.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.a));
    return 36224u < (firstTrailingBit(~_wgslsmith_add_u32(0u, 4294967295u)) << (firstLeadingBit(~1251u) % 32u));
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_1, 27>();
    let var_0 = select(!all(vec4<bool>(true, true, true, true)), func_3(Struct_3(global1.a), ~firstLeadingBit(global3[_wgslsmith_index_u32(~u_input.b, 24u)])), !(!(!all(vec3<bool>(true, true, false)))));
    global3 = array<vec3<u32>, 24>();
    return Struct_3(Struct_1(global1.a.a));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = vec2<i32>(~(~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(2147483647i, 0i)), i32(-1i) * -26730i)), (~(-10446i) ^ _wgslsmith_clamp_i32(-1i, ~1i, -1i)) << (_wgslsmith_div_u32(abs(_wgslsmith_add_u32(74u, 22437u)), ~(~63266u)) % 32u));
    let var_1 = global2[_wgslsmith_index_u32(u_input.a, 30u)];
    var var_2 = select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec2<bool>(false, false))), vec2<bool>(true, true)), vec2<bool>((31641i >> (u_input.a % 32u)) <= _wgslsmith_dot_vec3_i32(vec3<i32>(6000i, var_0.x, var_0.x), vec3<i32>(-51150i, var_0.x, var_0.x)), true), vec2<bool>(true, true)), select(vec2<bool>(true, (4294967295u << (arg_1.x % 32u)) <= arg_1.x), vec2<bool>(false, false), true));
    global1 = Struct_3(Struct_1(global1.a.a));
    let var_3 = vec3<f32>(563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(209f))) * _wgslsmith_f_op_f32(trunc(-242f)))));
    return Struct_3(global0[_wgslsmith_index_u32(41049u, 27u)]);
}

fn func_1() -> Struct_1 {
    global1 = func_4(func_2(), ~firstLeadingBit(select(firstLeadingBit(global3[_wgslsmith_index_u32(1792u, 24u)]), ~global3[_wgslsmith_index_u32(16637u, 24u)], true)));
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 27u)];
    global0 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_div_u32(u_input.b, ~(~_wgslsmith_add_u32(~52317u, u_input.b)));
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1478f, var_0.a)))));
    return global0[_wgslsmith_index_u32(abs(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b, _wgslsmith_mod_u32(24132u, 4294967295u), ~14457u), u_input.a)), 27u)];
}

fn func_5(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = i32(-1i) * -firstLeadingBit(min(_wgslsmith_add_i32(-2147483647i, 2147483647i), firstTrailingBit(2147483647i)));
    let var_1 = ~vec4<i32>(abs(_wgslsmith_mod_i32(var_0, var_0)), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0, var_0, var_0, -2147483647i), firstTrailingBit(vec4<i32>(28038i, var_0, 74145i, -1i))) << (0u % 32u), min(0i, _wgslsmith_add_i32(30970i, -var_0)), min(var_0, _wgslsmith_mult_i32(var_0, 45120i)));
    global3 = array<vec3<u32>, 24>();
    global3 = array<vec3<u32>, 24>();
    let var_2 = Struct_3(Struct_1(func_1().a));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(411f, 280f, 995f) * vec3<f32>(var_2.a.a, 699f, -1000f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1636f, arg_0.a, 101f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a.a, arg_0.a, global1.a.a), vec3<f32>(248f, var_2.a.a, global1.a.a)))), true))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1112f, var_2.a.a, 919f), vec3<f32>(arg_0.a, global1.a.a, arg_0.a)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1271f, arg_0.a) - vec3<f32>(global1.a.a, -210f, var_2.a.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    let var_0 = Struct_2(-60110i, -1100f, global1.a.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(global1.a.a, _wgslsmith_f_op_f32(global1.a.a + -843f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1436f), _wgslsmith_f_op_f32(-global1.a.a))), _wgslsmith_f_op_f32(-global1.a.a)), _wgslsmith_f_op_vec3_f32(func_5(func_1())))), func_4(Struct_3(global1.a), min(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.b, 0u)), u_input.a, 4294967295u), ~_wgslsmith_mult_vec3_u32(global3[_wgslsmith_index_u32(21163u, 24u)], vec3<u32>(u_input.a, 4294967295u, 4294967295u)))).a);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-global1.a.a)))));
    global3 = array<vec3<u32>, 24>();
    let var_2 = firstLeadingBit(vec4<u32>(~(u_input.b >> (reverseBits(u_input.b) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 32489u), vec3<u32>(u_input.a ^ 48218u, u_input.b, u_input.a)), 1u, 153278u));
    var var_3 = 124808u;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(var_0.a, -1i)), ~var_0.a);
}

