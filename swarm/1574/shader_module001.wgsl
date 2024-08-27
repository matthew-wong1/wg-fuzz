struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(1i, 21375i), 0u, vec2<i32>(0i, 60252i), false);

var<private> global3: array<Struct_2, 10>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(344f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(519f))))))), _wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(563f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(105f * -595f), -1016f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1715f, _wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_f_op_f32(min(-445f, 190f))), _wgslsmith_f_op_vec3_f32(step(var_0.zxw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(489f, var_0.x, var_0.x))))))));
    let var_2 = Struct_1(vec2<i32>(reverseBits(firstTrailingBit(26568i)), _wgslsmith_add_i32(15824i, u_input.e) & ~26479i), global2.b, global1.a, global2.d);
    return global0.yy;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = -u_input.b;
    var var_1 = vec4<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), func_3(Struct_1(vec2<i32>(var_0.x, -2147483647i), 2796u, arg_2.c, true), global3[_wgslsmith_index_u32(arg_2.b, 10u)])), vec2<bool>(global1.d, global1.c.x <= -6045i), global2.d)), arg_2.d, global2.d, true);
    var var_2 = global3[_wgslsmith_index_u32(global2.b, 10u)];
    let var_3 = select(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~min(vec4<u32>(4294967295u, 21180u, 3870u, arg_2.b), vec4<u32>(var_2.a.x, 88549u, global1.b, 112525u)), (vec4<u32>(global2.b, arg_0, 1u, 62879u) & vec4<u32>(global1.b, global2.b, arg_0, arg_0)) >> (select(vec4<u32>(4294967295u, global1.b, global2.b, global2.b), vec4<u32>(arg_0, global1.b, 17389u, global2.b), vec4<bool>(true, arg_2.d, true, var_1.x)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(64161u, global1.b, arg_2.b, 0u)), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(23858u, 4294967295u, 7220u, 0u), vec4<u32>(global2.b, arg_2.b, global1.b, 507u))))), max(~(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 1u, 0u, global1.b), vec4<u32>(arg_0, 124954u, var_2.a.x, var_2.a.x)) >> (~vec4<u32>(0u, 1u, arg_2.b, arg_2.b) % vec4<u32>(32u))), max(vec4<u32>(firstTrailingBit(4294967295u), 4294967295u << (arg_0 % 32u), 13848u, 4294967295u), min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b, global1.b, 890u, 1u), vec4<u32>(48609u, 1u, arg_0, global2.b)), ~vec4<u32>(43601u, 7469u, global2.b, global2.b)))), select(select(!select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(global2.d, arg_2.d, true, arg_2.d), global2.d), select(!vec4<bool>(global2.d, global1.d, true, arg_2.d), vec4<bool>(global1.d, false, global1.d, var_1.x), select(vec4<bool>(true, var_1.x, arg_2.d, true), vec4<bool>(true, true, true, false), global0.x)), arg_1 < _wgslsmith_f_op_f32(select(-366f, -316f, global0.x))), !vec4<bool>(all(vec2<bool>(var_1.x, global1.d)), any(vec4<bool>(false, global1.d, true, global2.d)), !global1.d, true), select(!select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(var_1.x, arg_2.d, var_1.x, global2.d), vec4<bool>(true, true, false, false)), vec4<bool>(!arg_2.d, func_3(arg_2, Struct_2(vec2<u32>(4294967295u, global1.b))).x, !global2.d, all(var_1.yyz)), global1.d)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, arg_1, arg_1))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(588f, -1064f, arg_1, arg_1))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -790f, 288f)))))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1900f), 1f), _wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(arg_1, arg_1)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-641f * arg_1))))));
    return 36224u;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<i32>(~reverseBits(global2.a.x), -13288i);
    var var_1 = global3[_wgslsmith_index_u32(reverseBits(~12716u), 10u)];
    let var_2 = reverseBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(~arg_0.x, abs(43609u)), ~(~0u)), 45304u));
    let var_3 = vec2<i32>(26104i, ~21776i);
    global0 = vec4<bool>(true, false, true, !(!global2.d));
    return Struct_1(-global1.a | -(~global2.c), 7702u, vec2<i32>(_wgslsmith_mod_i32(1i | _wgslsmith_dot_vec2_i32(global2.a, global2.a), -2147483647i), ~u_input.d), false);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    global2 = arg_1;
    let var_0 = select(select(global0.yyy, !global0.wzw, !(global1.d != global0.x)), select(!vec3<bool>(true, true, !global0.x), global0.yyw, global2.d), vec3<bool>(false, true, true));
    global1 = func_4(vec3<u32>(4294967295u, 1u, ~(~func_2(arg_3.a.x, arg_2, Struct_1(vec2<i32>(-6708i, 1077i), global1.b, arg_0, var_0.x)))), arg_2);
    global1 = func_4(~vec3<u32>(0u, ~arg_3.a.x & _wgslsmith_mod_u32(global1.b, global2.b), global2.b), arg_2);
    global2 = arg_1;
    return Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(753u, 1u, func_4(vec3<u32>(global1.b, arg_3.a.x, 97995u), arg_2).b), min(~arg_1.b, 36333u)), arg_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(firstTrailingBit(u_input.b.xx), 0u ^ ~global1.b, max(global2.c, u_input.b.xy), false);
    var var_0 = 4294967295u;
    var var_1 = global0.yzy;
    var var_2 = func_1(firstLeadingBit(global2.c) | global2.c, Struct_1(select(_wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, global1.a.x), global1.a), countOneBits(vec2<i32>(28907i, 2147483647i)), vec2<bool>(false, true)), 0u, _wgslsmith_mult_vec2_i32(vec2<i32>(global2.a.x ^ 34670i, -global1.c.x), vec2<i32>(global2.a.x, global2.a.x)), global0.x), _wgslsmith_f_op_f32(floor(252f)), global3[_wgslsmith_index_u32(47322u, 10u)]);
    var var_3 = _wgslsmith_mod_vec4_i32(-reverseBits(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, u_input.c, u_input.a, global1.a.x)), vec4<i32>(u_input.e, -1i, -2147483647i, global2.c.x))), _wgslsmith_add_vec4_i32(vec4<i32>((i32(-1i) * -2147483647i) & max(global2.c.x, -13135i), 49855i, global2.c.x, max(17857i, 93324i)), vec4<i32>(-1i) * -select(vec4<i32>(-11346i, global1.a.x, -18138i, global2.a.x), vec4<i32>(1i, 46899i, u_input.a, u_input.e), global1.d)));
    let var_4 = min(~_wgslsmith_dot_vec2_i32(var_3.xy, _wgslsmith_div_vec2_i32(vec2<i32>(var_3.x, global1.a.x), global2.c)) ^ ~33263i, u_input.b.x ^ _wgslsmith_div_i32(global1.a.x, 0i));
    let var_5 = func_1(vec2<i32>(var_3.x, -global2.c.x) ^ vec2<i32>(var_3.x, 2147483647i), func_4(firstLeadingBit(firstTrailingBit(abs(vec3<u32>(global1.b, 20657u, global1.b)))), _wgslsmith_f_op_f32(min(1860f, 674f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(368f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -500f) + _wgslsmith_div_f32(680f, 1460f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(882f + _wgslsmith_f_op_f32(f32(-1f) * -598f))))), global3[_wgslsmith_index_u32(126221u, 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, max(_wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(-2147483647i, -28745i)), -29790i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-361f))), 532f))));
}

