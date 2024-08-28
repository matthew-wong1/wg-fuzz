struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(-22621i, -46608i), vec2<u32>(38839u, 4294967295u), true, vec4<u32>(61963u, 87629u, 1u, 0u), vec3<f32>(-117f, -1117f, -1000f));

var<private> global2: vec3<f32> = vec3<f32>(940f, 1036f, -468f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: u32) -> vec2<u32> {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1278f, -690f, global0[_wgslsmith_index_u32(4294967295u, 32u)])))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, global0[_wgslsmith_index_u32(4294967295u, 32u)], global1.e.x)), _wgslsmith_div_vec3_f32(global1.e, vec3<f32>(1000f, global2.x, global2.x))) + global1.e));
    let var_0 = 24450u;
    let var_1 = Struct_2(global1.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(min(1460u, 0u), _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_2, 18641u), 8821u)), (reverseBits(u_input.a.yz) >> (vec2<u32>(0u, 15272u) % vec2<u32>(32u))) << (vec2<u32>(arg_2, countOneBits(4294967295u)) % vec2<u32>(32u)), vec2<u32>(arg_2, u_input.b)), !all(!select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(global1.c, arg_1, arg_1, arg_0), vec4<bool>(global1.c, true, true, true))), ((_wgslsmith_sub_vec4_u32(global1.d, vec4<u32>(69212u, 1u, 1u, u_input.a.x)) ^ global1.d) ^ global1.d) ^ vec4<u32>(~global1.d.x, ~0u, _wgslsmith_sub_u32(global1.b.x, global1.b.x) << (~var_0 % 32u), arg_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global1.e, vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global1.e.x)))), global1.e))));
    let var_2 = var_1.a;
    global0 = array<f32, 32>();
    return abs(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(global1.b, ~vec2<u32>(34775u, 69640u)), ~var_1.b << (vec2<u32>(48345u, arg_2) % vec2<u32>(32u))) ^ var_1.b);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-160f)) + -771f))) * global1.e.x));
    var var_1 = vec2<u32>(select(0u, firstLeadingBit(~u_input.b << (1u % 32u)), false), u_input.a.x);
    var var_2 = Struct_2(vec2<i32>(-1i) * -(_wgslsmith_sub_vec2_i32(vec2<i32>(-23497i, global1.a.x), vec2<i32>(1i, global1.a.x)) ^ reverseBits(global1.a)), vec2<u32>(19765u, 4294967295u) >> (u_input.a.zy % vec2<u32>(32u)), true, firstLeadingBit(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(global1.d, vec4<u32>(u_input.b, global1.b.x, 4294967295u, var_1.x)), global1.d)), vec3<f32>(-2931f, var_0, -369f));
    var var_3 = _wgslsmith_add_vec2_i32(~global1.a, vec2<i32>(countOneBits(~min(global1.a.x, var_2.a.x)), -24755i));
    global1 = Struct_2(countOneBits(~vec2<i32>(var_2.a.x, ~var_3.x)), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(52994u, 1u)), firstLeadingBit(func_3(false, global1.c, var_2.d.x)), reverseBits(~global1.b)) ^ vec2<u32>(~(~var_1.x), ~u_input.a.x | 1u), var_2.c, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, var_2.b.x), select(u_input.a.zz, u_input.a.zz, true)), abs(global1.d.x | var_2.d.x) << (global1.d.x % 32u), var_1.x & 50221u, 1461u), global1.e);
    return global1.d.x ^ _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(33218u | u_input.b, u_input.b, global1.b.x), max(_wgslsmith_mod_vec3_u32(global1.d.xzz, vec3<u32>(var_1.x, 45965u, 1u)), ~u_input.a)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = 525f;
    global0 = array<f32, 32>();
    let var_1 = Struct_1(vec4<u32>(global1.d.x, 1u, 0u, ~(~0u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.x, global1.d.x, 0u, global1.b.x) >> (vec4<u32>(10957u, 78486u, global1.b.x, 1u) % vec4<u32>(32u)), ~global1.d << (global1.d % vec4<u32>(32u))), 68883u == u_input.b, vec2<u32>(global1.b.x, func_2()) >> (u_input.a.xy % vec2<u32>(32u)), 59405i);
    let var_2 = !global1.c;
    var var_3 = vec3<bool>(!(!(50471u <= global1.d.x)) || (_wgslsmith_f_op_f32(round(arg_0.x)) < -1412f), var_2, (~(~0u) & _wgslsmith_mod_u32(_wgslsmith_div_u32(5980u, global1.d.x), 0u)) == func_3(~global1.b.x <= abs(u_input.a.x), true, 5186u).x);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = arg_1;
    var var_1 = select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 32u)] > global0[_wgslsmith_index_u32(26426u, 32u)], true, true, global1.c), select(!vec4<bool>(arg_1.c, arg_1.c, global1.c, var_0.c), !vec4<bool>(global1.c, false, false, var_0.c), select(vec4<bool>(global1.c, false, global1.c, arg_0.b), vec4<bool>(global1.c, true, true, true), true)), any(select(vec4<bool>(false, false, var_0.c, arg_0.b), vec4<bool>(false, false, false, true), false))), !vec4<bool>(any(vec3<bool>(global1.c, arg_1.c, var_0.c)), arg_1.d.x > 1u, all(vec2<bool>(false, true)), !arg_1.c), vec4<bool>(true, func_1(_wgslsmith_f_op_vec3_f32(min(arg_1.e, vec3<f32>(769f, var_0.e.x, 1960f)))).b, global1.c, false)), vec4<bool>(!(var_0.c || var_0.c), all(vec4<bool>(true, global1.c | global1.c, true, any(vec2<bool>(var_0.c, true)))), global1.c, true), vec4<bool>(arg_1.c, arg_0.b, true, !(false || global1.c) | false));
    var_1 = !(!vec4<bool>(!var_0.c, true, arg_0.b, true));
    var var_2 = arg_1;
    var_2 = Struct_2(var_0.a, ~firstTrailingBit(_wgslsmith_sub_vec2_u32(~var_0.d.zz, ~vec2<u32>(arg_1.b.x, 1u))), true, _wgslsmith_add_vec4_u32(vec4<u32>(47270u & select(1u, u_input.b, true), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, 98671u, 16097u, u_input.a.x), vec4<u32>(515u, var_2.d.x, var_0.d.x, 4294967295u)) << (58603u % 32u), ~u_input.b, reverseBits(~95078u)), _wgslsmith_add_vec4_u32(arg_0.a, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(7368u, u_input.b, 39804u, 4294967295u), var_2.d), arg_0.c.x & u_input.b, _wgslsmith_mod_u32(u_input.a.x, arg_1.d.x), min(arg_0.a.x, u_input.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1705f, global0[_wgslsmith_index_u32(20814u, 32u)], global0[_wgslsmith_index_u32(37015u, 32u)]), arg_1.e) + global1.e))));
    return _wgslsmith_f_op_f32(f32(-1f) * -942f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_vec3_f32(-global1.e)), Struct_2(-vec2<i32>(u_input.c, -4110i), global1.b, any(vec2<bool>(global1.c, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(65084u, global1.d.x, global1.b.x, 4294967295u), vec4<u32>(72051u, u_input.a.x, 1u, u_input.b)), global1.e))), _wgslsmith_f_op_f32(ceil(845f)), 1071f), vec3<f32>(global2.x, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(16141u, 32u)], 988f)), -1379f), !global1.c));
    let var_1 = func_1(global1.e);
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(178f, -823f, global1.c)), global2.x, -827f)))));
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(ceil(global1.e)));
    let var_4 = func_1(global1.e);
    var var_5 = -u_input.c;
    var_2 = func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1000f + global2.x), global2.x, global2.x))))));
    let var_6 = ~vec2<u32>(~(~select(0u, var_3.c.x, var_1.b)), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]))), _wgslsmith_f_op_f32(floor(-1000f)))));
}

