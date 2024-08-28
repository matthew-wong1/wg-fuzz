struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<bool>(true, false, true, false), -2627i), Struct_1(vec4<bool>(true, true, true, false), -1807i), Struct_1(vec4<bool>(true, true, true, true), -4845i), Struct_1(vec4<bool>(true, false, true, true), -39607i), Struct_1(vec4<bool>(false, false, false, true), 1i), Struct_1(vec4<bool>(true, true, true, false), 38821i), Struct_1(vec4<bool>(true, false, false, true), 0i), Struct_1(vec4<bool>(true, false, false, false), 1i), Struct_1(vec4<bool>(false, false, true, true), -1i), Struct_1(vec4<bool>(true, false, true, false), 77159i), Struct_1(vec4<bool>(false, false, false, false), 2147483647i), Struct_1(vec4<bool>(true, true, true, true), 1i), Struct_1(vec4<bool>(false, false, false, false), -1i), Struct_1(vec4<bool>(false, true, false, false), 1i));

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 14>();
    return global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(51860u, 39460u, 1u, 24357u), min(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, global0[_wgslsmith_index_u32(11703u, 30u)], 34025u), vec4<u32>(4294967295u, 24627u, 1u, global0[_wgslsmith_index_u32(64417u, 30u)])), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 30u)], 45393u, 89409u) >> (vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 30u)]) % vec4<u32>(32u)))), ~(vec4<u32>(93910u, u_input.a.x, 0u, 0u) << (vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], u_input.a.x) % vec4<u32>(32u)))), 27868u), 14u)];
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = ~(~u_input.a.zz);
    let var_1 = Struct_1(select(select(select(func_1().a, global2.a, global2.a), !(!global2.a), global2.a), vec4<bool>(global2.a.x, !global2.a.x, select(true, !global2.a.x, global2.a.x), global2.a.x), arg_0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_sub_i32(global2.b, reverseBits(global2.b)));
    global2 = Struct_1(vec4<bool>(true || var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), ~(~global2.b));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)));
    global1 = array<Struct_1, 14>();
    return 7446i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = ~vec2<i32>(max(select(2147483647i, func_3(vec4<f32>(202f, -517f, -429f, 1057f)), arg_0.a.x), abs(_wgslsmith_mult_i32(global2.b, -25648i))), _wgslsmith_div_i32(global2.b, arg_1.b));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, 30791u), 14u)];
    let var_3 = ~4294967295u;
    let var_4 = any(var_2.a.wyy);
    return Struct_1(arg_0.a, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(u_input.a, ~u_input.a), _wgslsmith_div_vec3_u32(~u_input.a & (u_input.a << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 0u, 34281u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(42729u, u_input.a.x, u_input.a.x))) | u_input.a), 14u)];
    global0 = array<u32, 30>();
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(select(u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x, true), 30u)], 10811u) ^ u_input.a.x, 14u)];
    let var_1 = abs(vec3<u32>(3460u, 100694u, _wgslsmith_clamp_u32(u_input.a.x ^ global0[_wgslsmith_index_u32(min(84293u, 73176u), 30u)], _wgslsmith_mult_u32(~75328u, global0[_wgslsmith_index_u32(select(u_input.a.x, 25462u, global2.a.x), 30u)]), u_input.a.x)));
    let var_2 = func_2(func_1(), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(var_1, var_1), 111483u), 14u)]);
    global0 = array<u32, 30>();
    let var_3 = 0i;
    global2 = func_2(Struct_1(vec4<bool>(func_1().a.x, true, !all(vec3<bool>(var_2.a.x, var_2.a.x, var_0.a.x)), true), -22798i), var_2);
    let var_4 = func_2(Struct_1(!(!(!var_2.a)), var_3), Struct_1(!select(var_2.a, vec4<bool>(global2.a.x, true, true, true), vec4<bool>(var_2.a.x, global2.a.x, var_2.a.x, true)), abs(1i >> (countOneBits(global0[_wgslsmith_index_u32(0u, 30u)]) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 56497u), vec4<u32>(31555u, u_input.a.x, 4294967295u, 0u), var_4.a), abs(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, var_1.x)), vec4<u32>(1u, global0[_wgslsmith_index_u32(~51659u, 30u)], reverseBits(u_input.a.x), 4294967295u)), vec4<u32>(~u_input.a.x, ~global0[_wgslsmith_index_u32(4294967295u, 30u)], var_1.x | global0[_wgslsmith_index_u32(var_1.x, 30u)], ~0u) & vec4<u32>(firstTrailingBit(0u), _wgslsmith_mult_u32(4294967295u, var_1.x), u_input.a.x, u_input.a.x >> (0u % 32u))), var_1 ^ ~select(vec3<u32>(4294967295u, 66704u, 5000u), vec3<u32>(var_1.x, global0[_wgslsmith_index_u32(69950u, 30u)], var_1.x), false || var_4.a.x));
}

