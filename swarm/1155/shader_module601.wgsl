struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec2<i32>(2147483647i, -19337i), true, vec4<bool>(true, false, true, true));

var<private> global1: vec4<u32>;

var<private> global2: array<f32, 25> = array<f32, 25>(372f, -426f, -559f, -1000f, 206f, -250f, 840f, 771f, 989f, -1237f, -2724f, -550f, 1378f, 1455f, 845f, 904f, -144f, 857f, 1254f, -1358f, -367f, -537f, -636f, -347f, 267f);

var<private> global3: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global3 = array<vec4<bool>, 23>();
    let var_0 = _wgslsmith_div_f32(-2006f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4933u, 25u)]));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(241f, -1219f, -936f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(333f, var_0, -1799f)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(665f, var_0, -1013f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, 1173f, -1018f), vec3<f32>(-631f, -1000f, -493f)))))))));
    global3 = array<vec4<bool>, 23>();
    var var_2 = var_1.yy;
    return -254f;
}

fn func_2() -> Struct_1 {
    return Struct_1(reverseBits(countOneBits(vec2<i32>(~u_input.a.x, firstTrailingBit(0i)))), _wgslsmith_f_op_f32(f32(-1f) * -452f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(global0.c, Struct_1(global0.a, global0.b, global3[_wgslsmith_index_u32(global1.x, 23u)]), Struct_1(vec2<i32>(26522i, u_input.b), false, global3[_wgslsmith_index_u32(0u, 23u)]))), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(global1.x, 25u)]))))), vec4<bool>(all(global0.c.zyw), global0.b, any(global0.c.wxz), global0.c.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_1;
    var var_0 = firstLeadingBit(1u);
    global3 = array<vec4<bool>, 23>();
    var var_1 = arg_1;
    global1 = vec4<u32>(max(min(arg_0, _wgslsmith_dot_vec3_u32(global1.zxz, global1.zxw)), 31674u), arg_0 ^ arg_0, firstTrailingBit(~_wgslsmith_div_u32(global1.x, arg_0)), arg_0) | firstLeadingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(46767u, 42610u, arg_0, 68672u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, arg_0, arg_0, 83992u), vec4<u32>(arg_0, global1.x, global1.x, arg_0)) >> (vec4<u32>(arg_0, 1u, arg_0, 0u) % vec4<u32>(32u))));
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(~(~_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, -1i), u_input.c.zz)), true, !select(global0.c, arg_3.c, vec4<bool>(all(vec3<bool>(true, arg_3.c.x, false)), global0.b, arg_2.x, true)));
    var var_1 = global1.x;
    var var_2 = func_4(_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec2_u32(global1.wy, global1.zw)), func_2());
    global1 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(global1.x, global1.x, 16684u, 4294967295u)), ~(~vec4<u32>(global1.x, global1.x, global1.x, global1.x)) | vec4<u32>(~global1.x, 4294967295u | global1.x, ~global1.x, global1.x)) & vec4<u32>(~4294967295u, 25568u, 0u, countOneBits(1u));
    let var_3 = !(!(!(!vec3<bool>(global0.c.x, true, var_2.c.x))));
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>((-35044i << (_wgslsmith_mult_u32(3873u, _wgslsmith_add_u32(global1.x, global1.x)) % 32u)) == max(~_wgslsmith_clamp_i32(global0.a.x, u_input.a.x, u_input.c.x), abs(_wgslsmith_add_i32(u_input.b, 20160i))), !(-u_input.a.x < u_input.a.x), func_1(global0.a.x, u_input.c, !(!select(global0.c.yyy, vec3<bool>(global0.c.x, global0.b, global0.b), false)), Struct_1(global0.a, any(vec3<bool>(global0.b, false, true)), !select(vec4<bool>(global0.b, global0.c.x, global0.b, global0.c.x), global3[_wgslsmith_index_u32(4294967295u, 23u)], global0.c.x))), global0.c.x);
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u), abs(global1.x), ~0u, 50694u), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(63073u, global1.x, global1.x, 4294967295u), vec4<u32>(global1.x, global1.x, 0u, global1.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 4294967295u, global1.x, global1.x), reverseBits(vec4<u32>(3108u, global1.x, global1.x, 16862u)))), countOneBits(vec4<u32>(countOneBits(1u), 4294967295u, min(69047u, global1.x), global1.x))) << (vec4<u32>(global1.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, global1.x), global1.x), select(global1.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.x, 1u, 1u), vec3<u32>(global1.x, 13851u, global1.x)), global0.b), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 10600u), global1.zy)) % vec4<u32>(32u));
    global3 = array<vec4<bool>, 23>();
    global0 = Struct_1(select(u_input.c.zz, countOneBits(vec2<i32>(_wgslsmith_mult_i32(u_input.b, 0i), u_input.b)), true), true, !global0.c);
    let var_2 = func_2();
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, var_1.x), vec2<u32>(global1.x, var_1.x)), min(_wgslsmith_div_vec2_u32(vec2<u32>(53555u, 30232u) ^ var_1.yz, vec2<u32>(global1.x, global1.x)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, var_1.x), reverseBits(global1.xx)))), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 0u), abs(vec2<u32>(var_1.x, 53298u)))), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x);
}

