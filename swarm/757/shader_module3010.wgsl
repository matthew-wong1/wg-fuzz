struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(23848u, 1u, 1u, 23938u);

var<private> global1: Struct_1 = Struct_1(49190u, 46416i, vec4<u32>(13567u, 44674u, 52844u, 47295u), 34253u);

var<private> global2: bool;

var<private> global3: array<u32, 23> = array<u32, 23>(10139u, 1u, 43831u, 0u, 29461u, 8719u, 60628u, 1u, 4294967295u, 10628u, 54801u, 4294967295u, 11093u, 4294967295u, 1u, 0u, 0u, 35914u, 17682u, 59342u, 1u, 10605u, 4294967295u);

var<private> global4: array<f32, 9>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = select(_wgslsmith_sub_vec3_u32(arg_2.c.yzy, ~(~(vec3<u32>(u_input.c, arg_3.a, arg_3.a) >> (global0.zyz % vec3<u32>(32u))))), ~global0.wwy, vec3<bool>(true, false, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false)))));
    global2 = false;
    global3 = array<u32, 23>();
    let var_1 = any(select(vec4<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), any(vec3<bool>(true, true, true)), true), select(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), any(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true), firstTrailingBit(arg_2.c.x) > _wgslsmith_mod_u32(arg_2.c.x, global1.c.x)), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), true))));
    global2 = true;
    return !(!select(vec2<bool>(!var_1, var_1), select(select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), vec2<bool>(true, var_1)), select(vec2<bool>(true, true), vec2<bool>(var_1, false), true), vec2<bool>(false, true)), vec2<bool>(718f != global4[_wgslsmith_index_u32(38275u, 9u)], false)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_add_u32(~u_input.c, ~select(~11840u, 61253u, all(vec2<bool>(true, false)))), -2147483647i, reverseBits(vec4<u32>(~_wgslsmith_dot_vec2_u32(global1.c.wy, global1.c.xw), 1u, _wgslsmith_mult_u32(1u, 1u), 0u)), ~max(~0u, global3[_wgslsmith_index_u32(49355u, 23u)]));
    global4 = array<f32, 9>();
    global2 = !(!select(any(func_3(vec2<f32>(-380f, -1108f), 4294967295u, Struct_1(4294967295u, 0i, var_0.c, global1.c.x), Struct_1(4795u, u_input.a, vec4<u32>(global0.x, var_0.a, 1u, u_input.c), global3[_wgslsmith_index_u32(49866u, 23u)]))), true, true));
    var var_1 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), any(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, global4[_wgslsmith_index_u32(52419u, 9u)] >= global4[_wgslsmith_index_u32(var_0.c.x, 9u)]), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, false)))));
    var var_2 = Struct_1(select(min(1u, 0u), 122616u ^ _wgslsmith_dot_vec2_u32(global0.yw, var_0.c.zy), var_1.x), -2147483647i, global1.c, ~74128u);
    return !var_1.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<i32>) -> Struct_1 {
    global4 = array<f32, 9>();
    global3 = array<u32, 23>();
    var var_0 = Struct_1(~(~abs(1u)), ~u_input.a, abs(vec4<u32>(arg_1 ^ 19902u, ~61132u, ~0u, ~916u)), 37050u);
    var var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(~(~(~u_input.c))) << (arg_1 % 32u), 23u)];
    var_0 = Struct_1(1u, global1.b | _wgslsmith_mult_i32(firstLeadingBit(-14797i), global1.b), ~vec4<u32>(13063u, arg_1, max(~40103u, global3[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(59166u, global1.c.x, u_input.c) | vec3<u32>(37542u, global1.d, 38717u), ~global0.xwz)), u_input.c);
    return Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~global3[_wgslsmith_index_u32(global0.x, 23u)]), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], 16200u)), var_0.c.zx, var_0.c.yz)) << (~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 14023u), vec3<u32>(0u, global1.a, 4294967295u)) & _wgslsmith_div_u32(global3[_wgslsmith_index_u32(4294967295u, 23u)], 4294967295u)) % 32u), u_input.b, min(global1.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(42376u, global1.c.x, global1.d, global0.x) ^ vec4<u32>(arg_1, global1.d, 70826u, 1u), _wgslsmith_div_vec4_u32(var_0.c, global1.c), vec4<u32>(62714u, arg_1, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.a, 23u)], 23u)], 2582u) & vec4<u32>(var_0.a, global0.x, 30781u, 21080u))) << (global1.c % vec4<u32>(32u)), 4294967295u);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    var var_0 = func_4(-vec2<i32>(select(arg_1, arg_0.b, func_2()), 0i), 1u, _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~abs(vec2<i32>(u_input.a, global1.b)), abs(-vec2<i32>(u_input.a, 1i))), vec2<i32>(arg_1, -1i)));
    var var_1 = global1.c.yw;
    var var_2 = arg_0;
    var var_3 = 46861u;
    var_2 = arg_0;
    return ~abs(vec4<u32>(17385u, ~34269u, _wgslsmith_add_u32(2421u, u_input.c | 1u), firstTrailingBit(21541u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_mult_vec4_u32(~global1.c, func_1(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 23132u), vec3<u32>(global3[_wgslsmith_index_u32(9795u, 23u)], u_input.c, 44222u)), u_input.a ^ -2147483647i, vec4<u32>(global1.c.x, 0u, global1.c.x, global1.a), 7846u), u_input.a));
    global0 = ~global1.c;
    var var_0 = Struct_1(_wgslsmith_clamp_u32(global1.c.x, reverseBits(308u), _wgslsmith_div_u32((global0.x << (0u % 32u)) >> (_wgslsmith_mult_u32(14405u, 0u) % 32u), 4294967295u)), _wgslsmith_add_i32(-2147483647i, global1.b), vec4<u32>(firstLeadingBit(1u), 1u, ~1u, 53722u), abs(global1.c.x));
    var var_1 = Struct_1(_wgslsmith_add_u32(countOneBits(24667u) >> (_wgslsmith_sub_u32(~4294967295u, ~global1.a) % 32u), var_0.d), 1i, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(global1.c, ~vec4<u32>(global3[_wgslsmith_index_u32(global1.a, 23u)], global1.d, 4294967295u, u_input.c)), ~(~vec4<u32>(global0.x, 0u, global0.x, 27135u))) >> (global1.c % vec4<u32>(32u)), ~(~abs(~0u)));
    var var_2 = 1737f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global4[_wgslsmith_index_u32(global1.c.x, 9u)]) - _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 9u)]))), _wgslsmith_f_op_f32(529f + 318f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(1325u, 9u)]))))), ~global3[_wgslsmith_index_u32(~(~4294967295u), 23u)]);
}

