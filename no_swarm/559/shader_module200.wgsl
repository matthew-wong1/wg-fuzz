struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false));

var<private> global1: vec4<f32>;

var<private> global2: vec3<u32>;

var<private> global3: vec4<u32>;

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(191f, 4294967295u, 1u), Struct_1(1572f, 32793u, 73962u), Struct_1(305f, 4294967295u, 18528u), Struct_1(-1048f, 0u, 0u), Struct_1(-119f, 50846u, 44632u), Struct_1(-1000f, 5183u, 1u), Struct_1(-566f, 35955u, 23545u), Struct_1(-881f, 72944u, 38788u), Struct_1(175f, 14865u, 4294967295u), Struct_1(1556f, 41780u, 44675u), Struct_1(-534f, 1u, 3829u), Struct_1(-785f, 6499u, 1u), Struct_1(198f, 55574u, 4294967295u), Struct_1(-1682f, 1u, 4294967295u), Struct_1(-545f, 1657u, 60589u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = Struct_1(arg_2.a, arg_2.b, 0u >> (_wgslsmith_mod_u32(firstLeadingBit(global2.x), 4294967295u) % 32u));
    let var_1 = var_0;
    let var_2 = (vec4<i32>(arg_3, 2147483647i, firstTrailingBit(_wgslsmith_mult_i32(15928i, -1i)), arg_3) >> (vec4<u32>(0u, arg_1.x, firstLeadingBit(arg_1.x ^ global2.x), 8556u) % vec4<u32>(32u))) >> (~select(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c, 47414u, 6789u, 82102u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 28280u)), ~vec4<u32>(arg_2.c, 40938u, 35496u, 14611u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(30615u, arg_1.x, 1u, 1u), vec4<u32>(arg_1.x, var_0.b, 0u, arg_1.x)), vec4<u32>(50019u, 0u, 0u, 4294967295u), vec4<u32>(global3.x, 1u, 4294967295u, 5473u)), vec4<bool>(!arg_0, arg_0, arg_0, any(vec3<bool>(arg_0, arg_0, arg_0)))) % vec4<u32>(32u));
    global3 = ~vec4<u32>(reverseBits(~var_1.c), var_0.c, 4294967295u, ~global3.x);
    var var_3 = vec3<u32>(~global2.x, reverseBits(arg_2.c), var_0.b);
    return -334f;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global3 = ~max(arg_1, ~(~(vec4<u32>(7866u, global2.x, 10368u, arg_2.c) << (arg_1 % vec4<u32>(32u)))));
    global0 = array<vec4<bool>, 15>();
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(arg_2.a * -132f);
    let var_2 = arg_3;
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    global3 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~(~1u), func_2(arg_0, ~vec4<u32>(11437u, 4294967295u, global3.x, 48691u), func_2(Struct_1(arg_0.a, 29147u, arg_1.x), vec4<u32>(68817u, 1u, global2.x, arg_0.b), global4[_wgslsmith_index_u32(global3.x, 15u)], Struct_1(arg_0.a, 0u, 27832u)), Struct_1(822f, 1u, global2.x)).b, arg_0.b, _wgslsmith_clamp_u32(abs(0u), 11567u, ~20816u)), countOneBits(max(~vec4<u32>(arg_0.b, 72589u, 0u, global2.x), reverseBits(vec4<u32>(global2.x, 21379u, 81003u, 23927u))) | select(select(vec4<u32>(0u, global2.x, global2.x, 44456u), vec4<u32>(arg_0.b, arg_1.x, 0u, arg_1.x), arg_2), ~vec4<u32>(18358u, global2.x, 1u, 0u), global0[_wgslsmith_index_u32(~arg_1.x, 15u)])), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1.x, 0u, global3.x) ^ vec4<u32>(4294967295u, 22602u, global3.x, global3.x), ~vec4<u32>(35931u, 62355u, 17977u, global3.x))));
    global0 = array<vec4<bool>, 15>();
    global4 = array<Struct_1, 15>();
    let var_0 = global4[_wgslsmith_index_u32(select(~global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~86677u, global3.x, _wgslsmith_sub_u32(arg_1.x, 1u)) | _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(global3.wyw, global3.wxw), vec3<u32>(arg_0.b, 74233u, arg_1.x)), ~vec3<u32>(global3.x, 0u, 884u)), true), 15u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(global1.yyy * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.a, global1.x, arg_2)), _wgslsmith_f_op_f32(162f * global1.x), _wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a + -1375f), 1934f, _wgslsmith_f_op_f32(-arg_0.a)) + global1.ywz)));
    return Struct_1(var_0.a, 36957u, global2.x);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1033f * 943f) + _wgslsmith_f_op_f32(-global1.x))) * 210f) * arg_2.a);
    var var_1 = global3.xwx;
    global4 = array<Struct_1, 15>();
    var var_2 = firstLeadingBit(-25411i);
    var var_3 = any(vec3<bool>(true, true, true));
    return ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_1.b, var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 49756u, 4294967295u, arg_1.b), vec4<u32>(39816u, global3.x, 10411u, global2.x))), reverseBits(countOneBits(vec2<u32>(4294967295u, 17904u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(u_input.a.x, -u_input.a.x) ^ -u_input.a.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_1(~global3.x >= global2.x, vec2<u32>(global3.x, _wgslsmith_div_u32(select(global3.x, global2.x, true), 10775u)), Struct_1(_wgslsmith_f_op_f32(1612f + _wgslsmith_f_op_f32(trunc(1000f))), ~global2.x, _wgslsmith_mod_u32(global3.x, global2.x)), reverseBits(-22885i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(trunc(1088f))))) * -1347f), global1.x);
    global2 = vec3<u32>(~35629u, ~func_4(1u, func_3(func_2(Struct_1(-940f, 0u, global3.x), vec4<u32>(global2.x, global2.x, global2.x, 28971u), Struct_1(-651f, global2.x, 80867u), Struct_1(var_1.x, global3.x, 14636u)), vec2<u32>(global2.x, 1u) | vec2<u32>(1u, 4294967295u), true), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(global2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(10148u, 93907u, global3.x, global2.x), vec4<u32>(global3.x, 4294967295u, global2.x, 1u))), 15u)]), ~global3.x);
    let var_2 = reverseBits(u_input.a << (~(~(vec4<u32>(4294967295u, 1u, global3.x, 13793u) | vec4<u32>(15353u, 75866u, global2.x, 4294967295u))) % vec4<u32>(32u)));
    global0 = array<vec4<bool>, 15>();
    var var_3 = func_3(global4[_wgslsmith_index_u32(global2.x, 15u)], select(global3.yy, ~global2.xx, true), ~_wgslsmith_div_u32(max(global3.x, global2.x), global2.x) < min(_wgslsmith_sub_u32(global3.x, global3.x) << (0u % 32u), max(1u, _wgslsmith_div_u32(global2.x, global3.x))));
    let var_4 = global4[_wgslsmith_index_u32(var_3.b, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(45418u, global3.zz, var_2);
}

