struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
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

var<private> global0: array<f32, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<bool> {
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    return select(select(vec4<bool>(!any(vec4<bool>(true, false, true, false)), -1i <= -u_input.c, all(vec3<bool>(false, true, true)), ~44581u > _wgslsmith_sub_u32(u_input.d, u_input.a.x)), select(vec4<bool>(true, all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(22735u, 11u)] > global0[_wgslsmith_index_u32(64045u, 11u)], true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), all(vec2<bool>(true, true))), vec4<bool>(true, all(vec2<bool>(true, true)), false, !all(vec3<bool>(false, true, false)))), !(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(vec4<bool>(25275i < u_input.c, true, true, true), vec4<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), all(vec3<bool>(false, false, false))), true));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<u32>) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(464f, -980f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2043f) - -382f) * arg_0));
    global0 = array<f32, 11>();
    var var_1 = !func_3();
    global0 = array<f32, 11>();
    let var_2 = -u_input.e;
    return arg_0;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(1u, ~u_input.a.x)), 11u)] + _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), true)));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-919f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 11u)] + arg_0.x), true, ~vec4<u32>(71836u, 25018u, u_input.d, u_input.d))))) + -418f)));
    let var_1 = func_3();
    var var_2 = u_input.b.x;
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, select(~(~18445u), u_input.d, true)), 11u)], countOneBits(min(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.d, u_input.a.x, u_input.a.x), vec4<u32>(u_input.d, u_input.a.x, 35565u, 0u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 4294967295u, 1u), ~vec4<u32>(u_input.d, u_input.d, u_input.a.x, u_input.a.x)))), vec2<i32>(-u_input.c, _wgslsmith_div_i32(u_input.e.x, _wgslsmith_clamp_i32(1i, -35842i >> (0u % 32u), _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(u_input.c, -36694i))))), -679f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * var_3.a)), var_3.b, u_input.b.zz, -464f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    global0 = array<f32, 11>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1f), firstLeadingBit(select(firstTrailingBit(arg_0.b) | countOneBits(vec4<u32>(6010u, arg_3.b.x, 1u, arg_3.b.x)), abs(arg_3.b), arg_2)), min(max(arg_3.c >> (arg_3.b.wz % vec2<u32>(32u)), vec2<i32>(6657i, 1i)) ^ arg_0.c, arg_0.c >> (u_input.a % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1834f)))), global0[_wgslsmith_index_u32(arg_0.b.x, 11u)]));
    var var_1 = Struct_1(-1155f, vec4<u32>(_wgslsmith_add_u32(min(u_input.a.x, 1104u), arg_3.b.x), arg_3.b.x, ~15895u, _wgslsmith_sub_u32(1u, var_0.b.x)) >> (_wgslsmith_mult_vec4_u32(abs(arg_3.b) & var_0.b, func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(451f, arg_0.d, global0[_wgslsmith_index_u32(1u, 11u)]), vec3<f32>(arg_3.a, 1000f, -1231f), arg_2.x))).b) % vec4<u32>(32u)), _wgslsmith_add_vec2_i32(arg_1, abs(vec2<i32>(_wgslsmith_mult_i32(2147483647i, arg_1.x), -12855i))), 1334f);
    var_1 = Struct_1(-1239f, vec4<u32>(~(~u_input.a.x), _wgslsmith_clamp_u32(func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(1u, 11u)], -1297f, arg_0.a), vec3<f32>(-736f, -781f, 975f), arg_2.x))).b.x, select(_wgslsmith_sub_u32(u_input.d, 48129u), 1u, all(vec3<bool>(arg_2.x, false, arg_2.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, arg_3.b.x, 50768u) >> (var_0.b % vec4<u32>(32u)), func_1(vec3<f32>(-783f, var_0.a, var_1.a)).b)), 11900u, ~arg_3.b.x), _wgslsmith_div_vec2_i32(arg_1 & ~var_0.c, var_0.c) | _wgslsmith_add_vec2_i32(~var_1.c ^ select(arg_0.c, var_1.c, arg_2.zx), vec2<i32>(func_1(vec3<f32>(-461f, 193f, 550f)).c.x, 0i & arg_3.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1190f));
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a, var_0.a, var_1.a) - vec3<f32>(-170f, -1180f, arg_0.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 886f, -1627f)), false)), vec3<f32>(var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -494f), _wgslsmith_f_op_f32(select(1291f, -402f, false))))));
    return -1092f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 11>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1253f, global0[_wgslsmith_index_u32(u_input.d, 11u)], -503f) + vec3<f32>(781f, global0[_wgslsmith_index_u32(u_input.d, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))), select(select(vec2<i32>(u_input.c, -85573i), vec2<i32>(1i, 12590i), vec2<bool>(true, false)), ~u_input.e.zw, true), vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_f_op_f32(step(153f, global0[_wgslsmith_index_u32(19788u, 11u)])), reverseBits(vec4<u32>(38225u, 56134u, 62954u, u_input.a.x)), vec2<i32>(u_input.b.x, u_input.c), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 11u)]))), _wgslsmith_div_f32(535f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 11u)] * -867f))))), max(~vec4<u32>(1u, u_input.d, ~u_input.d, 4u), vec4<u32>(4294967295u, 1u | u_input.a.x, u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 1u, u_input.a.x)) >> (~(vec4<u32>(12312u, u_input.a.x, u_input.a.x, u_input.d) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 37217u)) % vec4<u32>(32u))), vec2<i32>(-30718i, _wgslsmith_dot_vec2_i32(u_input.e.xy, (u_input.e.yx >> (vec2<u32>(u_input.a.x, 47428u) % vec2<u32>(32u))) | u_input.e.yw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 11u)] * -464f)))));
    let var_1 = select(vec4<bool>((var_0.b.x == ~u_input.a.x) && select(any(vec4<bool>(false, true, true, true)), true, any(vec3<bool>(false, true, false))), func_3().x, true, any(select(func_3().zz, select(vec2<bool>(false, false), vec2<bool>(true, false), true), true))), select(!(!func_3()), vec4<bool>(true, true, true & select(false, true, false), !all(vec2<bool>(false, true))), !func_3().x), all(vec4<bool>(true, true, true, true)));
    let var_2 = Struct_1(512f, ~(var_0.b & var_0.b), var_0.c, -558f);
    global0 = array<f32, 11>();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + var_2.d)), _wgslsmith_sub_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(39923u, var_2.b.x, 13621u, 10136u) & vec4<u32>(4294967295u, 8110u, u_input.a.x, u_input.a.x))), abs(reverseBits(vec4<u32>(5934u, 4294967295u, var_0.b.x, u_input.a.x)))), u_input.b.xy >> ((u_input.a << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)), 1505f);
    var_0 = var_2;
    var var_3 = true & (_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.b.x, 11u)] + var_2.a) * _wgslsmith_f_op_f32(-var_2.d))) != global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.a, var_2.b.zz), 11u)]);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1102f * var_2.a)) + _wgslsmith_f_op_f32(f32(-1f) * -845f)), reverseBits(~vec4<u32>(57732u, var_2.b.x, ~u_input.d, 4294967295u)), -(~u_input.e.wz) << (var_2.b.yx % vec2<u32>(32u)), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32((_wgslsmith_div_u32(4294967295u, 14919u) >> (~4294967295u % 32u)) | (reverseBits(4119u) << (_wgslsmith_mult_u32(17887u, var_4.b.x) % 32u)), _wgslsmith_add_u32(~(~0u), ~_wgslsmith_add_u32(var_0.b.x, 45915u))));
}

