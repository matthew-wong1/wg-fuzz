struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(65139u, 1u, 0u, 22754u);

var<private> global1: vec3<u32> = vec3<u32>(15722u, 116474u, 1u);

var<private> global2: array<bool, 12>;

var<private> global3: Struct_1 = Struct_1(vec2<i32>(16520i, -42954i), 34027u);

var<private> global4: Struct_1;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> i32 {
    let var_0 = 1f;
    global4 = Struct_1(~arg_0.a, arg_2);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, var_0, -1315f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 632f, -186f))), !select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, true, false), arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-920f, var_0, arg_1)), var_0, _wgslsmith_div_f32(var_0, -263f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-781f, _wgslsmith_f_op_f32(exp2(var_0)), var_0)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 1335f) * vec3<f32>(var_0, var_0, -595f))))));
    global4 = Struct_1(vec2<i32>(~12102i, 1i) ^ u_input.c.xx, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(global3.b, global4.b), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(global0.x, arg_2))), ~(vec2<u32>(global1.x, global4.b) & vec2<u32>(52687u, 1u))) << (max(global0.x, ~(global1.x ^ 28065u)) % 32u));
    var var_2 = 8980u;
    return -30196i;
}

fn func_2(arg_0: vec3<u32>) -> vec2<i32> {
    global4 = Struct_1(_wgslsmith_mod_vec2_i32(~global3.a, vec2<i32>(~u_input.b.x, _wgslsmith_div_i32(abs(u_input.d.x), u_input.d.x))), global3.b);
    let var_0 = max(u_input.c, abs((~vec4<i32>(u_input.c.x, u_input.c.x, global3.a.x, global4.a.x) << ((vec4<u32>(1u, 0u, arg_0.x, u_input.a) << (vec4<u32>(global0.x, arg_0.x, 4294967295u, global0.x) % vec4<u32>(32u))) % vec4<u32>(32u))) | u_input.c));
    var var_1 = global0.xxw;
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(reverseBits(func_3(Struct_1(vec2<i32>(-10972i, 9859i), 0u), global2[_wgslsmith_index_u32(8252u, 12u)], global0.x)), _wgslsmith_mult_i32(55444i, reverseBits(global4.a.x))), 10770i), _wgslsmith_mult_i32(-u_input.c.x, 26856i), ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global3.a.x, u_input.c.x, 34456i), u_input.d), max(u_input.d, vec3<i32>(global4.a.x, 13160i, -1i))) >> (_wgslsmith_add_u32(~global1.x, u_input.a) % 32u), var_0.x);
    global0 = abs(_wgslsmith_add_vec4_u32((vec4<u32>(9835u, 1u, 50486u, global0.x) << (~vec4<u32>(37863u, 4294967295u, global0.x, 4294967295u) % vec4<u32>(32u))) & ~vec4<u32>(global4.b, global3.b, arg_0.x, var_1.x), ~vec4<u32>(~u_input.a, abs(u_input.e), 41595u << (global3.b % 32u), 8728u)));
    return vec2<i32>(_wgslsmith_dot_vec2_i32(global4.a, vec2<i32>(countOneBits(-5895i), -reverseBits(global3.a.x))), countOneBits(~_wgslsmith_div_i32(-2147483647i, -2147483647i)));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    let var_0 = Struct_1(~func_2(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5977u, 9659u, 47590u), global0.yzx), ~4294967295u, ~142556u)), firstTrailingBit(min(0u ^ abs(u_input.a), global3.b)));
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(var_0.a.x, 45736i, ~u_input.b.x, firstLeadingBit(u_input.c.x)), select(vec4<i32>(-39811i, 18674i, -80219i, -55303i) & vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, u_input.d.x), abs(vec4<i32>(global4.a.x, 1i, u_input.c.x, -6435i)), global2[_wgslsmith_index_u32(~var_0.b, 12u)])), vec4<i32>(func_3(Struct_1(vec2<i32>(2092i, var_0.a.x), global1.x), any(vec4<bool>(false, global2[_wgslsmith_index_u32(global1.x, 12u)], global2[_wgslsmith_index_u32(global4.b, 12u)], global2[_wgslsmith_index_u32(var_0.b, 12u)])), 0u), firstLeadingBit(96407i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -9769i, global4.a.x) | u_input.d, u_input.c.ywx), _wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, 1i), -global4.a.x))), vec4<i32>(_wgslsmith_mult_i32(~global4.a.x, _wgslsmith_mult_i32(global3.a.x, min(u_input.c.x, u_input.d.x))), ~(~(-2147483647i) | ~u_input.b.x), ~global4.a.x, global3.a.x));
    var var_2 = true;
    var var_3 = 0u | (abs(min(42036u, global3.b)) | (93682u | _wgslsmith_add_u32(reverseBits(4294967295u), 43906u | arg_0)));
    var_3 = global4.b | 22252u;
    return select(!(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 12u)], true)), vec2<bool>(abs(~4294967295u) != _wgslsmith_dot_vec2_u32(countOneBits(global1.yz), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b, global0.x), global1.yz)), true || global2[_wgslsmith_index_u32(14686u, 12u)]), !select(select(select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(global3.b, 12u)]), global2[_wgslsmith_index_u32(u_input.a, 12u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(89941u, 12u)]), select(vec2<bool>(true, global2[_wgslsmith_index_u32(global4.b, 12u)]), vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 12u)], true), vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 12u)]))), select(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 12u)], global2[_wgslsmith_index_u32(81497u, 12u)]), vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 12u)], global2[_wgslsmith_index_u32(arg_0, 12u)]), vec2<bool>(true, false)), vec2<bool>(false, false), false & global2[_wgslsmith_index_u32(var_0.b, 12u)]), !select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 12u)], global2[_wgslsmith_index_u32(global0.x, 12u)]), vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 12u)], false))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    var var_0 = arg_2;
    global2 = array<bool, 12>();
    var_0 = arg_2;
    var var_1 = !vec4<bool>(false, false, !any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.e, 12u)])), any(select(!vec4<bool>(true, global2[_wgslsmith_index_u32(global4.b, 12u)], global2[_wgslsmith_index_u32(global4.b, 12u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(global1.x, 12u)], true), select(vec4<bool>(global2[_wgslsmith_index_u32(65148u, 12u)], global2[_wgslsmith_index_u32(37475u, 12u)], true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, global2[_wgslsmith_index_u32(global4.b, 12u)]), arg_0.x))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-873f, -882f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3)))), arg_3, -199f);
    return StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, global0.x), ~vec2<u32>(1u, u_input.e), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.b, u_input.a), vec2<u32>(global1.x, global1.x))), firstTrailingBit(~global0.wx)), 36566u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_2.x)))))), -1000f, true)), _wgslsmith_sub_i32(countOneBits(-2147483647i) << (~abs(var_0.b) % 32u), -(u_input.b.x ^ _wgslsmith_sub_i32(17521i, -1i))), abs(~(-abs(1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-253f, -1955f, 1286f, var_2.x), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, -757f, -618f), vec4<f32>(var_2.x, 302f, arg_3, arg_3))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 12>();
    let x = u_input.a;
    s_output = func_4(!select(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(73622u, global3.b, global1.x, 4294967295u), vec4<u32>(global0.x, 16863u, u_input.a, global4.b))), vec2<bool>(!global2[_wgslsmith_index_u32(global4.b, 12u)], any(vec2<bool>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)]))), vec2<bool>(true, !global2[_wgslsmith_index_u32(global4.b, 12u)])), abs(vec3<i32>(max(abs(33884i), ~22450i), _wgslsmith_mult_i32(4337i, -21466i), -22296i)), Struct_1(_wgslsmith_sub_vec2_i32(~global4.a, -abs(global3.a)), 16191u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-612f, _wgslsmith_f_op_f32(-1f)))));
}

