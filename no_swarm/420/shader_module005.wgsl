struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, true, false, true, false, true, false, false, true, false, true, true, false, true, false, false, false, true, false, true, false, false, false, false, false, false);

var<private> global1: array<i32, 27>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true, false), Struct_1(false, false), Struct_1(false, false), Struct_1(true, true), Struct_1(true, true), Struct_1(false, true), Struct_1(true, true), Struct_1(true, true), Struct_1(true, false), Struct_1(true, false), Struct_1(false, false), Struct_1(true, false), Struct_1(false, true), Struct_1(false, false), Struct_1(true, false), Struct_1(false, true), Struct_1(false, false), Struct_1(true, true), Struct_1(false, false), Struct_1(true, true), Struct_1(true, true), Struct_1(false, false), Struct_1(false, true), Struct_1(false, false), Struct_1(false, false), Struct_1(false, false), Struct_1(true, true), Struct_1(true, true), Struct_1(false, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    let var_0 = ~_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 47526u), u_input.a.zz), countOneBits(1u)) | (_wgslsmith_div_u32(arg_0.x & 1u, 17501u) | abs(1u));
    var var_1 = vec2<u32>(~(~1706u) ^ ~u_input.a.x, firstLeadingBit(~_wgslsmith_mult_u32(~arg_0.x, reverseBits(arg_0.x))));
    var var_2 = global0[_wgslsmith_index_u32(~0u, 26u)];
    var_1 = u_input.c.yy;
    let var_3 = true;
    return vec4<i32>(-23662i, -(2147483647i >> (_wgslsmith_clamp_u32(34423u, var_0, 61795u) % 32u)) ^ -(~(global1[_wgslsmith_index_u32(0u, 27u)] ^ -25925i)), -12457i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, ~u_input.d), u_input.b.x), _wgslsmith_sub_i32(~(-15201i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~arg_0, arg_0), 27u)])));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.c.x, 29u)];
    var_0 = Struct_1(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, u_input.c.x, 58205u) ^ ~vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x), vec3<u32>(abs(1u), u_input.a.x | arg_0, countOneBits(0u))), 26u)], any(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 26u)], global0[_wgslsmith_index_u32(34535u, 26u)], false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], false, false), true), vec4<bool>(var_0.a, var_0.a, false, var_0.b), all(vec4<bool>(var_0.a, true, var_0.a, var_0.a)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1064f, _wgslsmith_f_op_f32(abs(1159f)), _wgslsmith_f_op_f32(round(-428f))))));
    var_1 = vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(abs(var_1.x)));
    var_0 = Struct_1(!global0[_wgslsmith_index_u32(u_input.c.x, 26u)], _wgslsmith_dot_vec4_i32(func_3(u_input.c.zy, Struct_1(true, global0[_wgslsmith_index_u32(67599u, 26u)]), true), vec4<i32>(1i | u_input.d, ~0i, 1i, 1i)) >= -2147483647i);
    return global2[_wgslsmith_index_u32(arg_0, 29u)];
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<bool, 26>();
    global2 = array<Struct_1, 29>();
    let var_0 = Struct_1(true | any(!(!vec4<bool>(false, arg_1.b, false, false))), false);
    var var_1 = vec4<bool>(false, var_0.b, false, false);
    return func_2(select(~u_input.c.x, 0u, true));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<bool, 26>();
    global1 = array<i32, 27>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(167f, -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(380f, 975f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1131f, 1313f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(171f, 568f), vec2<f32>(953f, -260f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -144f)) - vec2<f32>(_wgslsmith_f_op_f32(abs(-144f)), _wgslsmith_f_op_f32(select(-1137f, -931f, arg_0.x)))))));
    let var_1 = func_4(false, func_2(~_wgslsmith_div_u32(57462u ^ u_input.c.x, u_input.c.x)), func_2(0u));
    let var_2 = select(select(!vec2<bool>(any(vec4<bool>(var_1.a, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], var_1.a, false)), true), !select(!arg_0, select(arg_0, vec2<bool>(false, true), arg_0), !global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), false), !(!(!select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, var_1.a), global0[_wgslsmith_index_u32(54247u, 26u)]))), !select(arg_0, vec2<bool>(true, true), vec2<bool>(true, true)));
    return global2[_wgslsmith_index_u32(u_input.c.x, 29u)];
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> i32 {
    var var_0 = 2147483647i;
    global0 = array<bool, 26>();
    var var_1 = vec4<u32>(86316u, select(~reverseBits(45159u), u_input.c.x, !arg_1.a && global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(3827u, u_input.a.x), 26u)]), ~_wgslsmith_sub_u32(1u ^ u_input.a.x, ~u_input.c.x), _wgslsmith_mult_u32(arg_2.x, u_input.a.x)) ^ vec4<u32>(~((40317u >> (u_input.a.x % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 1u, 13987u, 41547u), vec4<u32>(97566u, arg_2.x, 17531u, 0u)) % 32u)), _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_add_u32(arg_2.x, arg_2.x)), 1u), _wgslsmith_dot_vec3_u32(~(vec3<u32>(1u, arg_2.x, 1u) & u_input.c), vec3<u32>(_wgslsmith_add_u32(22474u, 0u), 78208u, ~u_input.c.x)), min(_wgslsmith_dot_vec2_u32(~u_input.a.yz, vec2<u32>(46002u, arg_2.x)), ~(~1u)));
    var var_2 = func_2(1u);
    let var_3 = !(!select(!vec3<bool>(global0[_wgslsmith_index_u32(6535u, 26u)], true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(arg_1.b, arg_1.a, global0[_wgslsmith_index_u32(0u, 26u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(26075u, 26u)], var_2.a)), !vec3<bool>(true, var_2.a, global0[_wgslsmith_index_u32(var_1.x, 26u)]), select(vec3<bool>(var_2.a, false, false), vec3<bool>(true, var_2.a, arg_1.a), false)), all(vec2<bool>(true, true))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -852f;
    var var_1 = _wgslsmith_add_i32(countOneBits(global1[_wgslsmith_index_u32(abs(u_input.a.x), 27u)]), _wgslsmith_add_i32(_wgslsmith_sub_i32(max(_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.ww), firstLeadingBit(-1i)), reverseBits(18118i)), -func_5(_wgslsmith_f_op_f32(round(-1845f)), func_1(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 26u)])), vec2<u32>(1u, u_input.c.x) & vec2<u32>(1u, u_input.c.x), ~2147483647i)));
    var var_2 = firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(44975i, 2147483647i), vec2<i32>(u_input.d, u_input.b.x)) >> (max(u_input.c.x, u_input.a.x) % 32u), _wgslsmith_dot_vec4_i32(-u_input.b, vec4<i32>(-23118i, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.b.x, 0i)), global1[_wgslsmith_index_u32(0u, 27u)]), -u_input.b.ywz));
    global2 = array<Struct_1, 29>();
    var var_3 = i32(-1i) * -var_2.x;
    let var_4 = abs(~(-(vec4<i32>(var_2.x, var_2.x, 41236i, 43982i) ^ u_input.b) << (~(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(12617u, 106636u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(vec3<u32>(1u, 25612u, u_input.a.x) >> (u_input.c % vec3<u32>(32u)))), u_input.b.xyz, func_3(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.c.x), u_input.c.xz), select(u_input.c.zz, vec2<u32>(u_input.a.x, 64685u), vec2<bool>(false, true))), ~abs(u_input.c.xy)), Struct_1(!(!global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), !(!global0[_wgslsmith_index_u32(u_input.c.x, 26u)])), global0[_wgslsmith_index_u32(1u, 26u)]).xzw, _wgslsmith_div_vec2_i32((_wgslsmith_mult_vec2_i32(var_4.zz, vec2<i32>(2147483647i, -32287i)) | abs(var_2.xx)) & (vec2<i32>(var_2.x, -2288i) << (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), var_2.zy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(643f, 684f, false)))) - _wgslsmith_f_op_f32(f32(-1f) * -392f)) * _wgslsmith_f_op_f32(trunc(-696f))));
}

