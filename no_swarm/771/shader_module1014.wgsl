struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: array<i32, 27> = array<i32, 27>(-59487i, i32(-2147483648), 43065i, 29455i, 12635i, 13642i, 2147483647i, i32(-2147483648), -1i, -1i, 901i, -2410i, 23517i, 14306i, -66074i, -1i, 50603i, i32(-2147483648), -11476i, 1i, -44880i, 42964i, 11387i, -3734i, 44561i, -16252i, -1i);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(true);
    global3 = arg_0;
    var var_1 = 4294967295u;
    var var_2 = arg_1;
    var var_3 = !(-1999f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -293f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1646f), _wgslsmith_f_op_f32(-1620f + -639f))), -u_input.a != -1i)));
    return u_input.b.x;
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = Struct_1(global1.x);
    let var_1 = var_0;
    return vec3<bool>(false, var_0.a, true);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 0i;
    let var_1 = Struct_1((_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(2004f)), 961f)) > 1000f) || any(global1.xz));
    global1 = !(!vec3<bool>(true, all(func_3(-8956i)), (u_input.b.x >> (4294967295u % 32u)) >= ~u_input.b.x));
    let var_2 = Struct_1(!(!select(all(global1.xz), any(vec2<bool>(true, true)), global3.a & global1.x)));
    global1 = vec3<bool>(false, true, select(all(!select(global1.yz, vec2<bool>(global1.x, false), vec2<bool>(global2.a, true))), !(!(var_1.a & false)), abs(0u >> (0u % 32u)) <= _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(2157u, u_input.b.x))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global2 = Struct_1(true);
    global3 = func_2(arg_0);
    global3 = func_2(func_2(arg_0));
    let var_0 = _wgslsmith_dot_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], u_input.a, -2147483647i)), vec3<i32>(36739i, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 11154i), arg_2 <= 279f) ^ vec3<i32>(2147483647i, countOneBits(30226i), global0[_wgslsmith_index_u32(60628u, 27u)] << (u_input.b.x % 32u)), max(min(vec3<i32>(45781i, 2147483647i, 14735i), vec3<i32>(12222i, -35515i, u_input.a)), vec3<i32>(-2147483647i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(47932u, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), ~global0[_wgslsmith_index_u32(u_input.b.x, 27u)]))) >= (u_input.a | _wgslsmith_mult_i32(_wgslsmith_sub_i32(20614i, firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b.x, 27u)])), _wgslsmith_add_i32(~0i, -global0[_wgslsmith_index_u32(84392u, 27u)])));
    let var_1 = func_2(Struct_1(func_3(-2147483647i).x));
    return Struct_1(var_1.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = !vec4<bool>(!global2.a, func_4(arg_0, Struct_1(true), 192f).a, true, arg_0.a);
    let var_1 = arg_2.xz;
    global3 = func_2(arg_0);
    global2 = func_4(arg_3, Struct_1(any(var_0.zzw)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1516f)))));
    global3 = Struct_1(global1.x);
    return ~16889u | ~_wgslsmith_clamp_u32(~(28393u << (u_input.b.x % 32u)), 36876u, ~0u);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: i32) -> StorageBuffer {
    global2 = Struct_1(!global1.x == false);
    global2 = arg_0;
    global0 = array<i32, 27>();
    var var_0 = func_4(func_2(arg_0), func_2(arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -857f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(482f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(224f))))))));
    global2 = arg_0;
    return StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(4088i, 0i, arg_3, global0[_wgslsmith_index_u32(3309u, 27u)]), -vec4<i32>(arg_3, -16573i, 45564i, -14857i)) << ((u_input.b << (~u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)), select(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], -1i, global0[_wgslsmith_index_u32(1u, 27u)], -8864i), vec4<i32>(-17039i, -31429i, -33043i, 2147483647i), vec4<i32>(-30146i, u_input.a, -28912i, -49657i)), -vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], arg_3, u_input.a, u_input.a), !vec4<bool>(false, true, global1.x, global3.a)), vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(arg_2, 27u)], -7335i, 2147483647i, arg_3), !select(vec4<bool>(false, global3.a, global2.a, true), vec4<bool>(global3.a, true, true, global3.a), global2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 27>();
    let var_0 = Struct_1(global3.a);
    var var_1 = Struct_1(var_0.a);
    global1 = select(vec3<bool>(!any(select(vec3<bool>(false, false, global3.a), vec3<bool>(var_1.a, true, true), vec3<bool>(var_0.a, true, var_1.a))), true && select(any(vec4<bool>(false, global1.x, var_0.a, true)), global2.a, global0[_wgslsmith_index_u32(4294967295u, 27u)] == -9434i), !all(vec4<bool>(true, false, var_1.a, false))), vec3<bool>(true, true, u_input.b.x > _wgslsmith_mod_u32(~u_input.b.x, func_1(var_0, Struct_1(false)))), true);
    global0 = array<i32, 27>();
    let x = u_input.a;
    s_output = func_6(var_0, vec3<bool>(any(select(vec2<bool>(var_1.a, var_1.a), !global1.yy, vec2<bool>(true, true))), global3.a, !any(vec4<bool>(false, true, var_0.a, false)) & true), ~func_5(Struct_1(global3.a), ~u_input.b.ywz >> (_wgslsmith_mult_vec3_u32(u_input.b.xyx, vec3<u32>(4294967295u, 80426u, u_input.b.x)) % vec3<u32>(32u)), select(vec3<i32>(-45067i, -2147483647i, global0[_wgslsmith_index_u32(20104u, 27u)]), ~vec3<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 27u)], 70418i), select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(true, true, true), vec3<bool>(true, true, var_0.a))), func_4(func_2(Struct_1(global2.a)), Struct_1(true), _wgslsmith_div_f32(524f, -1096f))), _wgslsmith_mod_i32(~(-2147483647i ^ abs(u_input.a)), _wgslsmith_div_i32(firstTrailingBit(6320i << (1u % 32u)), select(u_input.a, global0[_wgslsmith_index_u32(84856u << (1u % 32u), 27u)], false))));
}

