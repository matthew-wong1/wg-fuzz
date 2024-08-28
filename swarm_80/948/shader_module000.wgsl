struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<bool>(true, false, true), i32(-2147483648), false, vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, false, true), i32(-2147483648), true, vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, true, false), 23017i, false, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(true, true, false), -23110i, false, vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, false), 0i, false, vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, false, false), i32(-2147483648), true, vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(false, false, false), -18200i, false, vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(true, true, false), -19273i, true, vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, true, false), 1i, true, vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(false, false, true), 43067i, true, vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, false, false), -36323i, true, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(true, false, true), i32(-2147483648), false, vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(true, true, true), -22418i, true, vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(false, true, false), -12076i, true, vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(true, false, true), -25879i, false, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, false), 68364i, true, vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(true, false, false), i32(-2147483648), false, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, true, true), -6834i, false, vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, true, true), 1i, true, vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(true, false, true), -4142i, false, vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, true, false), i32(-2147483648), true, vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, true, true), 2147483647i, true, vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(false, true, false), 1i, false, vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, false, false), -16893i, false, vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, true, false), 44160i, false, vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, true), 44007i, true, vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(false, true, true), -37518i, true, vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, false, true), 67650i, false, vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(false, true, true), 32211i, true, vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(false, true, false), 42508i, true, vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, true, false), -1i, true, vec4<bool>(false, false, true, false)));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<bool>(true, false, false), -52035i, true, vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(false, false, false), 7866i, false, vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, false, true), 11359i, true, vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, false), 0i, false, vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, false), 35419i, false, vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, true, false), 2147483647i, false, vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(false, false, true), -1i, false, vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, true, false), -5403i, true, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, false), -18172i, false, vec4<bool>(false, false, true, false)));

var<private> global2: array<u32, 23>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 1u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> i32 {
    global1 = array<Struct_1, 9>();
    global3 = u_input.b;
    let var_0 = false;
    var var_1 = abs(~1i);
    global2 = array<u32, 23>();
    return countOneBits(-15422i);
}

fn func_3(arg_0: f32) -> bool {
    global0 = array<Struct_1, 31>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~48664u << (~_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u), 0u), ~abs(global3.x)), 9u)];
    let var_1 = select(vec4<i32>(var_0.b, var_0.b, -2147483647i | _wgslsmith_add_i32(18785i, var_0.b), 7910i) >> (_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 24942u), vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global3.x, 23u)], 55182u, global3.x), vec4<u32>(0u, 46840u, u_input.b.x, 13688u)), ~vec4<u32>(global3.x, u_input.a, 4294967295u, global2[_wgslsmith_index_u32(global3.x, 23u)]), abs(vec4<u32>(u_input.b.x, 17590u, u_input.a, global2[_wgslsmith_index_u32(global3.x, 23u)]))), ~(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 23u)], u_input.b.x, u_input.b.x, global3.x))) % vec4<u32>(32u)), -(select(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.b, var_0.b, var_0.b), vec4<i32>(var_0.b, var_0.b, var_0.b, 0i)), vec4<i32>(var_0.b, 9421i, var_0.b, -8377i) ^ vec4<i32>(-3565i, -85927i, var_0.b, var_0.b), arg_0 >= 944f) & max(vec4<i32>(-3391i, 26017i, -2147483647i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(-4369i, var_0.b, -6330i, 1425i), vec4<i32>(var_0.b, -6943i, var_0.b, var_0.b)))), var_0.d);
    let var_2 = false;
    global2 = array<u32, 23>();
    return !all(vec3<bool>(true, any(var_0.d.wx), true));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!vec3<bool>(func_3(_wgslsmith_f_op_f32(abs(321f))), true, true), 6654i, false, select(!vec4<bool>(true, func_3(1221f), true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), true));
    var var_1 = i32(-1i) * -1i;
    let var_2 = false;
    let var_3 = Struct_1(!select(select(!var_0.a, select(vec3<bool>(var_2, false, var_0.d.x), vec3<bool>(var_2, true, false), vec3<bool>(var_2, true, var_0.c)), true), var_0.a, var_2), firstLeadingBit(-45523i), false, !vec4<bool>(var_0.d.x, var_2 | false, (61973u >> (0u % 32u)) >= _wgslsmith_sub_u32(u_input.b.x, global3.x), min(var_0.b, 8466i) <= -10566i));
    let var_4 = u_input.b;
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> bool {
    let var_0 = max(vec2<i32>(1i, func_2().b), vec2<i32>(2147483647i, -31808i));
    var var_1 = func_2();
    var var_2 = select(firstLeadingBit(~(~(~vec3<u32>(20515u, 1u, 4294967295u)))), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, 54145u, global3.x), ~vec4<u32>(0u, 2465u, 29238u, 1u)), min(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 41133u, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], 52838u), vec4<u32>(37757u, 86366u, global2[_wgslsmith_index_u32(0u, 23u)], global3.x)), ~vec4<u32>(36770u, u_input.b.x, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 23u)]))), u_input.a, _wgslsmith_clamp_u32(27391u, firstLeadingBit(~0u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(14965u, global3.x), vec2<u32>(u_input.a, 1u)), ~vec2<u32>(u_input.a, 0u)))), var_1.a);
    var var_3 = ~(~(-(vec4<i32>(-1i) * -vec4<i32>(1i, 29556i, -16643i, 12875i))));
    var var_4 = Struct_1(!vec3<bool>(var_1.d.x, arg_0.c, true), 6914i, arg_0.d.x, !arg_0.d);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(true, !(!all(vec4<bool>(true, true, true, false))), false));
    let var_1 = _wgslsmith_add_i32(~(~(i32(-1i) * -2147483647i)) >> (u_input.a % 32u), reverseBits(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, 535f, -2006f)), -1000f)));
    let var_2 = Struct_1(vec3<bool>(func_4(func_2(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1000f)))), vec2<f32>(_wgslsmith_f_op_f32(297f + 1025f), _wgslsmith_f_op_f32(f32(-1f) * -523f))), var_0, true), -2147483647i, true, select(func_2().d, !vec4<bool>(true && var_0, var_0, func_2().c, var_0), select(!vec4<bool>(false, var_0, var_0, true), select(!vec4<bool>(false, var_0, true, false), vec4<bool>(false, true, var_0, true), func_2().d), select(!vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(false, false, false, true), !var_0))));
    var var_3 = func_2();
    var var_4 = global1[_wgslsmith_index_u32(~1u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-986f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-3844f)), _wgslsmith_f_op_f32(-776f + -1000f)))))), vec4<u32>(30050u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, firstLeadingBit(global2[_wgslsmith_index_u32(global3.x, 23u)])), u_input.b), 0u, 0u), -((vec4<i32>(-1i) * -vec4<i32>(var_4.b, var_4.b, var_3.b, var_1)) >> (vec4<u32>(~58751u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37215u, 23u)], 23u)] << (81994u % 32u), 31006u, ~61939u) % vec4<u32>(32u))));
}

