struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: bool;

var<private> global2: vec4<i32>;

var<private> global3: Struct_1 = Struct_1(1i, 652f, vec2<bool>(false, true), 63415i, false);

var<private> global4: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, false, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    var var_0 = arg_1;
    global1 = arg_1.c.x;
    let var_1 = _wgslsmith_f_op_f32(floor(arg_1.b));
    global3 = Struct_1(var_0.d ^ var_0.a, -1104f, global3.c, -36610i, true);
    let var_2 = u_input.a.x | u_input.a.x;
    return ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2404i, var_0.a ^ var_0.a), -global2.xz) | reverseBits(0i << (((1u ^ var_2) << (select(19593u, u_input.a.x, true) % 32u)) % 32u));
}

fn func_2() -> f32 {
    global0 = array<bool, 13>();
    var var_0 = global2.wyw;
    let var_1 = Struct_1(func_3(min(global2.xxx, _wgslsmith_div_vec3_i32(global2.yxw >> (vec3<u32>(u_input.a.x, 4294967295u, 19972u) % vec3<u32>(32u)), -global2.xzw)), Struct_1(~_wgslsmith_mod_i32(-48345i, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) - global3.b), select(!global3.c, vec2<bool>(global3.e, false), vec2<bool>(true, true)), -(~global3.d), true), -(-vec4<i32>(-2147483647i, var_0.x, global2.x, -2624i) << (vec4<u32>(u_input.a.x, u_input.a.x, 36343u, u_input.a.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b * -257f))))), global3.c, var_0.x, global3.e || (global3.b <= global3.b));
    let var_2 = u_input.a;
    let var_3 = Struct_1(1i, global3.b, select(var_1.c, var_1.c, true), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-416i, 24874i), vec2<i32>(-2147483647i, -26934i)), vec2<i32>(_wgslsmith_dot_vec3_i32(global2.wxz, vec3<i32>(2147483647i, 2147483647i, var_0.x)), _wgslsmith_div_i32(global3.a, global3.d))), any(select(!vec4<bool>(true, global3.c.x, false, true), !select(global4[_wgslsmith_index_u32(0u, 1u)], vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], true, false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), global4[_wgslsmith_index_u32(var_2.x, 1u)]), select(global4[_wgslsmith_index_u32(max(8951u, 0u), 1u)], !global4[_wgslsmith_index_u32(43747u, 1u)], !var_1.c.x))));
    return _wgslsmith_f_op_f32(-var_1.b);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = ((_wgslsmith_sub_i32(-49426i & arg_0.x, ~27571i) & (arg_2.a << (~1u % 32u))) ^ global3.a) ^ _wgslsmith_clamp_i32(global2.x, -1i, _wgslsmith_dot_vec2_i32(select(global2.wz, global2.zw, !vec2<bool>(global3.e, arg_1)), global2.xw));
    global3 = Struct_1(global2.x, global3.b, select(!vec2<bool>(any(vec2<bool>(arg_1, arg_1)), arg_2.c.x), global3.c, false), arg_2.a, true);
    var var_1 = vec4<f32>(2037f, _wgslsmith_f_op_f32(func_2()), global3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-648f - _wgslsmith_f_op_f32(-global3.b)), 650f));
    let var_2 = arg_2;
    let var_3 = global2.x;
    return 41054i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstTrailingBit(~abs(-abs(vec4<i32>(-531i, -16414i, -1i, 1i))));
    global0 = array<bool, 13>();
    global2 = vec4<i32>(_wgslsmith_clamp_i32(global2.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(func_1(vec4<i32>(-14599i, 0i, global3.a, global2.x), global0[_wgslsmith_index_u32(0u, 13u)], Struct_1(0i, global3.b, vec2<bool>(global3.c.x, false), -1i, false)), min(global2.x, 0i), global3.a), _wgslsmith_add_i32(global3.a, global2.x) ^ global2.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, global2.x), -global2.x) | (i32(-1i) * -global3.a)), _wgslsmith_clamp_i32(-19589i, reverseBits(1i >> (u_input.a.x % 32u)), 1i), 1i, global2.x);
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(7299u, u_input.a.x, 68745u, u_input.a.x), min(vec4<u32>(u_input.a.x, 77212u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 3203u, u_input.a.x), vec3<u32>(44057u, u_input.a.x, 38282u)) % 32u), _wgslsmith_sub_u32(u_input.a.x, 1u), _wgslsmith_clamp_u32(u_input.a.x, ~21918u, 17912u)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 80932u, 85390u, u_input.a.x), vec4<u32>(u_input.a.x, 10758u, 2655u, u_input.a.x)) << (vec4<u32>(0u, 1u, u_input.a.x, 66661u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u)), any(select(global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(u_input.a.x, 1u)], global4[_wgslsmith_index_u32(u_input.a.x, 1u)])))));
    var var_1 = ~_wgslsmith_div_vec2_u32(var_0.zx, var_0.wz);
    let var_2 = Struct_1(_wgslsmith_clamp_i32(-12672i, select(abs(global2.x), global3.a, false) | min(_wgslsmith_sub_i32(1i, -1i), global3.a), min(-reverseBits(global3.d), global2.x & _wgslsmith_sub_i32(0i, 10807i))), -464f, !select(select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 13u)], false), !vec2<bool>(false, global3.c.x)), global3.c, select(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 13u)]), vec2<bool>(global3.c.x, global3.c.x), select(global3.c, global3.c, global3.c))), global2.x & (func_1(firstLeadingBit(vec4<i32>(global3.a, global2.x, global2.x, global3.a)), !global0[_wgslsmith_index_u32(u_input.a.x, 13u)], Struct_1(global3.a, global3.b, global3.c, global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 13u)])) ^ _wgslsmith_mod_i32(global2.x, -72462i << (u_input.a.x % 32u))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-1i, ~global2.x, -98711i), 0i, i32(-1i) * -global2.x) <= -544i);
    var var_3 = firstTrailingBit(max(firstTrailingBit(26879i) << (63324u % 32u), _wgslsmith_sub_i32(var_2.d, 0i)) | 1i);
    let var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(global3.d, (_wgslsmith_mod_i32(global3.a, global2.x) & (global2.x | 38322i)) >> (0u % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -38297i, -41631i, 0i), vec4<i32>(global2.x, var_2.a, var_2.d, var_2.d)), 0i & var_2.a) ^ func_1(abs(vec4<i32>(-17109i, 1i, -15334i, var_2.d)), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], var_2.c.x, global3.e)), var_2), ~_wgslsmith_div_i32(global3.a ^ global2.x, global3.a)), max(countOneBits(max(vec4<i32>(global2.x, 2147483647i, 1i, var_2.d), vec4<i32>(var_2.d, global2.x, global3.a, 76531i)) | (vec4<i32>(-1i, 2147483647i, 2147483647i, global3.a) >> (vec4<u32>(11917u, 4294967295u, 32536u, 1u) % vec4<u32>(32u)))), -(~reverseBits(vec4<i32>(global2.x, 69345i, global3.a, global3.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(207f * -1652f)), _wgslsmith_f_op_f32(-global3.b)) - 1045f), i32(-1i) * -2147483647i, func_3(select(vec3<i32>(-1350i, global2.x, global3.a), vec3<i32>(-13059i, 0i, 12539i), var_2.e), var_2, vec4<i32>(var_2.d, global2.x, ~var_4.x, func_1(var_4, var_2.e, Struct_1(global2.x, -1866f, var_2.c, 17972i, var_2.c.x)))) & global3.d, global2.zx, global2.x);
}

