struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global3: f32 = -487f;

var<private> global4: vec4<f32> = vec4<f32>(-561f, -1190f, -213f, -1813f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<f32> {
    var var_0 = u_input.a.zxx;
    var var_1 = global0[_wgslsmith_index_u32(1u, 15u)];
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -482f) * global4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x))));
    let var_3 = Struct_1(_wgslsmith_div_i32(var_0.x, _wgslsmith_clamp_i32(41773i, ~(-2147483647i), var_0.x | 18695i)), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(global4.zzw - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(global4.ywy)), global4.xxw, vec3<bool>(true, true, true))))));
    let var_4 = global0[_wgslsmith_index_u32(~(~reverseBits(~4294967295u)), 15u)];
    return vec3<f32>(global4.x, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.x)) * var_3.c.x));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = Struct_1(countOneBits(~35150i), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false)) || true, _wgslsmith_div_vec3_f32(vec3<f32>(-1087f, -1083f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.x, global4.x)) * global4.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))));
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-853f - 853f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-797f, _wgslsmith_f_op_f32(global4.x + global4.x), var_0.b == var_0.b))))), vec4<i32>(~(var_0.a << (38078u % 32u)), arg_0, _wgslsmith_mod_i32(arg_0, u_input.a.x), -_wgslsmith_mult_i32(var_0.a, u_input.a.x << (71671u % 32u))));
    var var_2 = !var_0.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -901f)), 358f) - vec2<f32>(181f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -926f) * var_0.c.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + global4.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(484f + -413f), -908f)))))));
    global1 = array<Struct_1, 12>();
    return var_0.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> vec4<i32> {
    global2 = array<vec2<bool>, 28>();
    let var_0 = true;
    var var_1 = var_0;
    var var_2 = Struct_2(global4.xw, vec4<i32>(1i, i32(-1i) * -1i, -arg_0.x, ~(~(-42569i)) | u_input.a.x));
    var var_3 = !select(select(vec2<bool>(global4.x < global4.x, func_2(-7433i)), select(vec2<bool>(true, true), select(global2[_wgslsmith_index_u32(42980u, 28u)], vec2<bool>(false, var_0), vec2<bool>(true, var_0)), global2[_wgslsmith_index_u32(min(arg_1, 15501u), 28u)]), all(!vec3<bool>(var_0, false, var_0))), !select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), false), select(vec2<bool>(false, true), vec2<bool>(false, var_0), vec2<bool>(true, var_0)), global2[_wgslsmith_index_u32(arg_2.x, 28u)]), var_0);
    return vec4<i32>(~var_2.b.x, ~var_2.b.x, -u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(min(global4.x, _wgslsmith_f_op_f32(-global4.x)));
    var var_0 = _wgslsmith_f_op_f32(sign(-1444f));
    var var_1 = select(countOneBits(firstLeadingBit(vec4<i32>(u_input.a.x, -u_input.a.x, 2147483647i ^ u_input.a.x, 1i))), _wgslsmith_mod_vec4_i32(~func_1(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -2147483647i), 4294967295u, vec2<u32>(16864u, 4294967295u), u_input.a.x), vec4<i32>(~u_input.a.x, _wgslsmith_mod_i32(12159i, u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), max(-3374i, u_input.a.x))) >> (reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(16279u, 0u, 60804u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(12221u, 47543u, 1u, 96572u), vec4<u32>(12064u, 11276u, 16575u, 4294967295u)))) % vec4<u32>(32u)), vec4<bool>(all(vec2<bool>(true, true)), func_2(-2147483647i & _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.zy)), true, true));
    global0 = array<Struct_2, 15>();
    var var_2 = Struct_1(_wgslsmith_add_i32(~(~countOneBits(var_1.x)), ~1i), false & (reverseBits(abs(1i)) <= u_input.a.x), vec3<f32>(255f, _wgslsmith_div_f32(global4.x, global4.x), global4.x));
    var var_3 = 0i;
    var var_4 = vec4<bool>(!any(!(!vec3<bool>(var_2.b, var_2.b, true))), false, all(vec2<bool>(all(global2[_wgslsmith_index_u32(~4294967295u, 28u)]), !var_2.b)), var_2.b);
    let var_5 = vec4<bool>(var_4.x, var_2.b, true, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(max(~vec3<u32>(12060u, 11881u, 0u), abs(vec3<u32>(4294967295u, 1u, 4294967295u))), max(abs(vec3<u32>(29485u, 3241u, 30408u)), ~vec3<u32>(4294967295u, 1u, 11745u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(29593u, 5899u, 12157u), vec3<u32>(1u, 1u, 1u), vec3<u32>(26644u, 1631u, 38593u))) % vec3<u32>(32u)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec3<u32>(60719u, 1u, 49574u), countOneBits(vec2<i32>(var_2.a, ~(~var_2.a))));
}

