struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 11> = array<bool, 11>(true, false, true, true, true, true, true, true, true, true, true);

var<private> global2: array<i32, 27> = array<i32, 27>(-36346i, i32(-2147483648), i32(-2147483648), i32(-2147483648), i32(-2147483648), 1i, 19027i, 1i, 2147483647i, 1i, -1644i, 1i, -1i, i32(-2147483648), 14293i, -1i, -5039i, 4577i, 73759i, i32(-2147483648), 48880i, 15109i, 37134i, 17416i, 1i, 0i, 8213i);

var<private> global3: vec3<f32>;

var<private> global4: bool;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = ~(-vec3<i32>(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(1u, 27u)], -1i) >> ((6005u & global0.a.x) % 32u), -22914i, 1071i));
    global2 = array<i32, 27>();
    global1 = array<bool, 11>();
    var var_1 = !(!(!vec3<bool>(!global1[_wgslsmith_index_u32(0u, 11u)], u_input.c < global0.a.x, !global1[_wgslsmith_index_u32(u_input.a, 11u)])));
    global2 = array<i32, 27>();
    return Struct_1(vec3<u32>(~(~(global0.a.x & 50906u)), global0.a.x, ~_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, u_input.a), global0.a.x)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global0 = arg_0;
    global4 = any(!(!select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 11u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(global0.a.x, 11u)]), any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(var_0.a.x, 11u)], false, false)))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.a.yy, arg_1.a.yx), 11u)];
    global1 = array<bool, 11>();
    return Struct_1(~global0.a);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1000f) + global3.x), _wgslsmith_f_op_f32(-global3.x))))));
    global0 = arg_0;
    var var_1 = min(25112u, ~53639u) ^ u_input.a;
    let var_2 = !(!vec4<bool>(select(select(true, global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(1683u, 11u)]), true, !global1[_wgslsmith_index_u32(var_0.a.x, 11u)]), true, false, true));
    let var_3 = global3.x;
    return arg_2;
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = ~_wgslsmith_div_vec3_u32(arg_2.a, ~global0.a);
    return arg_2;
}

fn func_1() -> bool {
    let var_0 = 24657u;
    global2 = array<i32, 27>();
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global3.x, -312f), _wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(ceil(global3.x))))));
    global0 = func_5(~global0.a.xx, 2147483647i, func_4(func_3(Struct_1(abs(vec3<u32>(var_0, var_0, 1u))), func_2(_wgslsmith_f_op_f32(ceil(754f))), func_2(_wgslsmith_f_op_f32(global3.x - global3.x))), global1[_wgslsmith_index_u32(50723u, 11u)], Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(15298u, global0.a.x, global0.a.x), global0.a))));
    let var_1 = func_4(Struct_1(global0.a), true, Struct_1(~(~vec3<u32>(global0.a.x, 0u, var_0) ^ global0.a)));
    return global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(u_input.c, 4294967295u)), 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstLeadingBit(~vec3<u32>(~global0.a.x, _wgslsmith_div_u32(87520u, 18873u), global0.a.x << (global0.a.x % 32u))));
    global1 = array<bool, 11>();
    var var_1 = Struct_1(~select(var_0.a, vec3<u32>(_wgslsmith_mod_u32(4294967295u, global0.a.x), 25950u, _wgslsmith_dot_vec3_u32(vec3<u32>(14014u, 1u, u_input.a), global0.a)), func_1()));
    var var_2 = func_5(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.a.x), _wgslsmith_clamp_vec2_u32(reverseBits(var_0.a.yz & global0.a.xx), global0.a.zx, ~_wgslsmith_sub_vec2_u32(global0.a.zy, vec2<u32>(var_1.a.x, 1u)))), select(-1i, -2147483647i, true), Struct_1(vec3<u32>((global0.a.x << (0u % 32u)) >> (1u % 32u), 4294967295u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_0.a.x, 18538u, 0u), vec4<u32>(var_0.a.x, 6137u, 4294967295u, 10705u))))));
    let var_3 = select(~countOneBits(4294967295u), 0u, true | global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~global0.a.x), var_2.a.x), 11u)]);
    var var_4 = 0u;
    var var_5 = Struct_1(vec3<u32>(var_1.a.x, 4294967295u, ~(~0u) << ((global0.a.x & reverseBits(74656u)) % 32u)));
    var var_6 = Struct_1(vec3<u32>(~_wgslsmith_sub_u32(1u, global0.a.x >> (u_input.a % 32u)), var_0.a.x, u_input.a));
    var_6 = func_4(Struct_1(var_2.a), true, Struct_1(func_4(func_2(global3.x), global1[_wgslsmith_index_u32(~var_6.a.x, 11u)] & false, Struct_1(_wgslsmith_div_vec3_u32(global0.a, vec3<u32>(8151u, var_1.a.x, var_3)))).a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_5.a.x, global0.a.x, var_5.a.x, 32189u), _wgslsmith_div_vec4_u32(vec4<u32>(var_6.a.x, global0.a.x, var_0.a.x, 4294967295u), vec4<u32>(83330u, 11374u, 38063u, var_5.a.x))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 0u, var_1.a.x, 22748u), ~vec4<u32>(var_3, var_1.a.x, 9123u, u_input.a)), ~max(vec4<u32>(1u, var_5.a.x, 4294967295u, 4294967295u), vec4<u32>(var_2.a.x, 60586u, u_input.c, 1u))), ~select(vec4<u32>(4294967295u, 20640u, 40329u, var_0.a.x) | vec4<u32>(1u, 1u, 21941u, 66878u), vec4<u32>(var_5.a.x, 4294967295u, 18805u, var_5.a.x) & vec4<u32>(var_0.a.x, 4294967295u, 1u, 2423u), select(vec4<bool>(global1[_wgslsmith_index_u32(52788u, 11u)], global1[_wgslsmith_index_u32(u_input.c, 11u)], global1[_wgslsmith_index_u32(var_5.a.x, 11u)], true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(global0.a.x, 11u)], false), true))), vec4<u32>(var_2.a.x, firstTrailingBit(var_2.a.x), global0.a.x, reverseBits(~var_2.a.x)));
}

