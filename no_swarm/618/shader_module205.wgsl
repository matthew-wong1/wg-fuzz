struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(489f, 519f), vec2<f32>(394f, 1372f), vec2<f32>(-336f, -1512f), vec2<f32>(-1858f, 811f), vec2<f32>(-480f, -2546f), vec2<f32>(1383f, -329f), vec2<f32>(-709f, 1005f), vec2<f32>(277f, -1693f));

var<private> global1: array<bool, 3>;

var<private> global2: Struct_1 = Struct_1(i32(-2147483648), -1i, vec3<u32>(0u, 5649u, 2275u));

var<private> global3: i32 = -43132i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = array<bool, 3>();
    let var_0 = select(select(vec2<bool>(any(!vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], false)), any(!vec4<bool>(false, true, arg_0.a.x, global1[_wgslsmith_index_u32(68956u, 3u)]))), arg_0.a, !arg_0.a.x), arg_0.a, select(!(!(!arg_0.a)), select(arg_0.a, select(vec2<bool>(false, arg_0.a.x), arg_0.a, false), vec2<bool>(!arg_0.a.x, arg_0.a.x)), vec2<bool>(!all(arg_0.a), global1[_wgslsmith_index_u32(4294967295u, 3u)])));
    var var_1 = -472f;
    var var_2 = select(var_0, select(select(select(vec2<bool>(false, arg_0.a.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), true), vec2<bool>(true, true)), vec2<bool>(true, false || arg_0.a.x), !vec2<bool>(true, arg_0.a.x)), vec2<bool>(var_0.x, all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 3u)], true)) || var_0.x), any(vec3<bool>(true, !global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(arg_0.b.c.x, 3u)]))), global1[_wgslsmith_index_u32(21359u, 3u)]);
    global0 = array<vec2<f32>, 8>();
    return arg_0.b.c.x;
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_1(-firstLeadingBit(1i), 1i, global2.c);
    let var_1 = Struct_1(reverseBits(-54047i), arg_0.x, ~vec3<u32>(~(~28740u), global2.c.x, select(max(1u, 57050u), ~global2.c.x, true)));
    let var_2 = var_0.c.x;
    let var_3 = global1[_wgslsmith_index_u32(25363u, 3u)];
    let var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(12267u, firstLeadingBit(var_0.c.x), countOneBits(30713u), global2.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(global2.c.x, ~9201u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.x, 34643u, 46941u) | vec3<u32>(94963u, var_2, global2.c.x), vec3<u32>(u_input.c, 64213u, 4294967295u) << (vec3<u32>(var_2, 1u, 828u) % vec3<u32>(32u))), _wgslsmith_add_u32(47333u | u_input.c, ~18212u)), _wgslsmith_sub_vec4_u32(vec4<u32>(~global2.c.x, var_2, func_3(Struct_2(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 3u)]), var_1, vec3<f32>(-516f, 103f, 1298f))), _wgslsmith_add_u32(u_input.c, var_2)), countOneBits(~vec4<u32>(23233u, var_1.c.x, 4294967295u, global2.c.x)))));
    return var_0.b;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = 21739u & u_input.c;
    var var_1 = vec3<bool>((false | select(!global1[_wgslsmith_index_u32(global2.c.x, 3u)], arg_0, arg_0)) | (!arg_0 && (any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], arg_0)) && arg_0)), arg_0 & !(!(!arg_0)), ((func_2(u_input.a.xx) >> (41106u % 32u)) < ~1i) || true);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(4294967295u), ~(~(u_input.c & 4294967295u))), 3u)];
    var var_3 = Struct_2(select(vec2<bool>(global2.c.x > 69191u, !(!var_1.x)), !var_1.zy, any(vec3<bool>(true, select(global1[_wgslsmith_index_u32(10853u, 3u)], var_1.x, false), false))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -13972i, u_input.a.x), vec3<i32>(-global2.b, ~u_input.b, u_input.a.x | -1076i)), max(global2.b, -global2.a) & 26108i, ~_wgslsmith_div_vec3_u32(vec3<u32>(global2.c.x, u_input.c, 1u) | vec3<u32>(9175u, u_input.c, u_input.c), global2.c)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(209f)) - -556f), -1366f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(924f * -1698f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(166f, -130f, -358f) * vec3<f32>(870f, -652f, -1482f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(352f, -1326f, 560f))), arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 409f, 1000f), vec3<f32>(1290f, 663f, -355f), vec3<bool>(arg_0, var_1.x, global1[_wgslsmith_index_u32(4294967295u, 3u)]))))))));
    let var_4 = u_input.b;
    return Struct_2(!var_1.zy, var_3.b, _wgslsmith_f_op_vec3_f32(var_3.c - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_3.c))) - var_3.c)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = array<bool, 3>();
    var var_0 = arg_0.b.c >> (vec3<u32>(0u, min(42832u, abs(0u)), 29341u) % vec3<u32>(32u));
    global2 = Struct_1(_wgslsmith_div_i32(arg_0.b.b, global2.b ^ (i32(-1i) * -global2.a)), ~(-2147483647i), vec3<u32>(select((u_input.c << (84144u % 32u)) >> (7213u % 32u), 0u << (1u % 32u), global1[_wgslsmith_index_u32(func_3(func_1(true)), 3u)]), global2.c.x, firstLeadingBit(u_input.c)));
    global1 = array<bool, 3>();
    var var_1 = vec3<i32>(abs(firstLeadingBit(1i) ^ ~global2.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b, 27583i, u_input.a.x), u_input.a.xww), arg_0.b.a, 7282i), vec4<i32>(~(-1i), arg_0.b.b, arg_0.b.a, global2.a ^ 6308i)), global2.a) << (global2.c % vec3<u32>(32u));
    return Struct_2(arg_0.a, arg_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c + arg_0.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -934f, 647f)))), _wgslsmith_f_op_vec3_f32(arg_0.c - _wgslsmith_f_op_vec3_f32(-arg_0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1000f;
    global1 = array<bool, 3>();
    let var_1 = func_4(func_1(false));
    var var_2 = Struct_1(select(~firstTrailingBit(2147483647i), _wgslsmith_sub_i32(firstLeadingBit(-global2.b), -_wgslsmith_add_i32(u_input.a.x, 0i)), func_1(false).a.x), var_1.b.a, global2.c << (vec3<u32>(countOneBits(global2.c.x), 1u, 12999u) % vec3<u32>(32u)));
    var var_3 = !(!vec3<bool>(false, (827i & var_1.b.b) >= -18223i, false));
    var var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x);
}

