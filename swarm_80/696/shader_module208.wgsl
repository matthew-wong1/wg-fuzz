struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    let var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1444u, 15u)], 15u)];
    let var_1 = abs(43323u) << (_wgslsmith_add_u32(~(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12677u, 15u)], 15u)])), ~(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]))) % 32u);
    let var_2 = Struct_5(Struct_1(~(-u_input.a)), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, 49363i), u_input.a) >> (0u % 32u), ~vec4<u32>(select(var_1, max(global0[_wgslsmith_index_u32(4294967295u, 15u)], var_1), true), ~var_1, ~(~4294967295u), select(global0[_wgslsmith_index_u32(1608u, 15u)], var_1, false) ^ 4294967295u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2062f - -1106f))))));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_3) -> bool {
    var var_0 = select(arg_1, !select(select(arg_1, select(vec3<bool>(arg_1.x, false, true), vec3<bool>(false, true, arg_1.x), arg_1.x), any(arg_1.yy)), vec3<bool>(!arg_1.x, true, arg_1.x), !select(arg_1, arg_1, arg_1)), arg_1.x);
    let var_1 = vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(false, var_0.x, var_0.x, true))))), -215f));
    var var_2 = Struct_1(1i << (~arg_0.c.x % 32u));
    var var_3 = false;
    let var_4 = -1i;
    return var_0.x || all(!vec3<bool>(var_1.x >= -1000f, false, arg_1.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: bool) -> i32 {
    global0 = array<u32, 15>();
    var var_0 = !select(vec2<bool>(select(true == arg_2, !arg_2, true), true), !(!vec2<bool>(arg_2, arg_2)), arg_3);
    var var_1 = any(vec4<bool>(select(arg_2, true, !func_3(Struct_5(Struct_1(-42075i), 37673i, vec4<u32>(17137u, global0[_wgslsmith_index_u32(arg_0.x, 15u)], 17243u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 15u)], 15u)])), vec3<bool>(true, true, false), Struct_3(Struct_2(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(u_input.a), global0[_wgslsmith_index_u32(arg_0.x, 15u)])))), false, u_input.a >= reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(61767i, 0i, u_input.a, -11691i), vec4<i32>(u_input.a, u_input.a, -6192i, -25672i))), !arg_3));
    let var_2 = _wgslsmith_div_u32(1u, 12298u);
    let var_3 = 1u;
    return _wgslsmith_clamp_i32(u_input.a, 2147483647i, _wgslsmith_sub_i32(select(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(0i, -33198i))), 0i, arg_3), u_input.a));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_4) -> StorageBuffer {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(arg_0 ^ arg_0, 15u)], arg_3.b, min(_wgslsmith_sub_vec4_u32(arg_3.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(38150u, 42093u, 5110u, arg_3.c.x), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 61758u, 4294967295u) >> (vec4<u32>(0u, arg_3.c.x, 4294967295u, 4294967295u) % vec4<u32>(32u)), arg_3.c)), vec4<u32>(countOneBits(arg_3.b.a.c) ^ arg_0, arg_3.a, 1u, 45984u)));
    var var_1 = _wgslsmith_dot_vec2_i32(var_0.b.a.a.wx, arg_3.b.a.a.xy);
    let var_2 = select(arg_2.yy, vec2<bool>(true, false), !(!vec2<bool>(all(vec2<bool>(true, true)), select(arg_2.x, arg_2.x, arg_2.x))));
    var var_3 = select(select(!arg_2, !vec3<bool>(false && arg_1, !arg_2.x, any(arg_2)), select(arg_2, vec3<bool>(var_2.x | arg_2.x, true, true), vec3<bool>(true, arg_3.b.a.a.x != 2147483647i, select(var_2.x, arg_1, arg_2.x)))), !(!vec3<bool>(!arg_1, true, var_2.x || true)), vec3<bool>(all(!vec2<bool>(true, arg_2.x)), !var_2.x & !(39690i < arg_3.b.a.a.x), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_3.c.zwy, vec3<u32>(arg_3.c.x, 1u, 1u)), 15u)], 15u)] == ~arg_0));
    var var_4 = 18256u;
    return StorageBuffer(vec2<u32>(54910u ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(85623u, global0[_wgslsmith_index_u32(arg_0, 15u)]), arg_3.c.wz), 4294967295u), var_0.b.a.c, ~_wgslsmith_mult_i32(~func_2(vec3<u32>(arg_0, var_0.a, 21577u), vec2<f32>(1000f, 282f), arg_2.x, true), max(-2147483647i, min(-1i, u_input.a))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0, global0[_wgslsmith_index_u32(var_0.c.x, 15u)], global0[_wgslsmith_index_u32(14360u, 15u)], 0u), var_0.c, true), vec4<u32>(1u, 21607u, arg_0, global0[_wgslsmith_index_u32(var_0.b.a.c, 15u)]) & var_0.c), 4294967295u, 0u, 44442u), _wgslsmith_sub_vec4_u32(vec4<u32>(~14307u, ~4294967295u, ~1u, _wgslsmith_dot_vec4_u32(arg_3.c, vec4<u32>(arg_0, 6676u, global0[_wgslsmith_index_u32(arg_3.b.a.c, 15u)], 84662u))), ~var_0.c)), _wgslsmith_div_vec3_i32(arg_3.b.a.a.yzx, arg_3.b.a.a.wzw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1868f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, true, true)))))));
    global0 = array<u32, 15>();
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1224f, 940f)) - vec3<f32>(-814f, 492f, -250f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(772f, 1012f, -2094f))))))));
    var_0 = -1119f;
    global0 = array<u32, 15>();
    var_0 = var_1.x;
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let x = u_input.a;
    s_output = func_4(global0[_wgslsmith_index_u32(~0u, 15u)], any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(5953u, 15u)] > 15725u)), select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), func_2(vec3<u32>(18890u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<f32>(-854f, var_2), false, true) <= (u_input.a & u_input.a)), true), Struct_4(~4294967295u, Struct_3(Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, -1i), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), Struct_1(u_input.a), ~35427u)), vec4<u32>(~(~27499u), global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_dot_vec4_u32(vec4<u32>(30354u, 52782u, 10622u, global0[_wgslsmith_index_u32(12509u, 15u)]), vec4<u32>(36460u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(31524u, 15u)], global0[_wgslsmith_index_u32(35564u, 15u)])), global0[_wgslsmith_index_u32(41110u, 15u)] & ~68339u)));
}

