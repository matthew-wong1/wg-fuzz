struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(26637u), Struct_4(0u), Struct_4(4294967295u), Struct_4(12376u), Struct_4(74150u), Struct_4(0u), Struct_4(40929u), Struct_4(23113u), Struct_4(43243u), Struct_4(108333u), Struct_4(0u), Struct_4(1u), Struct_4(1u), Struct_4(26140u), Struct_4(81988u), Struct_4(4294967295u));

var<private> global1: array<u32, 29>;

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<i32>(19875i, -1i), vec2<f32>(1421f, -196f), -1000f, true), Struct_2(vec2<i32>(2147483647i, 43494i), vec2<f32>(314f, -1000f), -262f, true), Struct_2(vec2<i32>(0i, -19596i), vec2<f32>(585f, -269f), -2157f, false), Struct_2(vec2<i32>(15537i, 62326i), vec2<f32>(-273f, 175f), 698f, false), Struct_2(vec2<i32>(0i, -18016i), vec2<f32>(1887f, -561f), 1644f, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32) -> vec2<u32> {
    global1 = array<u32, 29>();
    let var_0 = Struct_3(~(~vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)] | 100684u, 29u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 40162u), 1u << (u_input.b % 32u))), -u_input.a.xyx << (~vec3<u32>(global1[_wgslsmith_index_u32(~8897u, 29u)], abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)]), ~global1[_wgslsmith_index_u32(u_input.c, 29u)]) % vec3<u32>(32u)), true, false);
    global0 = array<Struct_4, 16>();
    let var_1 = !(!var_0.c);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 64897u), 5u)];
    return vec2<u32>(0u, u_input.d);
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    global0 = array<Struct_4, 16>();
    let var_0 = arg_0.a.x;
    return vec2<bool>(all(vec3<bool>(false, false, all(vec4<bool>(false, false, true, true)) & (var_0 > arg_0.a.x))), true);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(countOneBits(1u), ~(u_input.c << (1u % 32u))), u_input.d));
    let var_1 = max(~(~var_0.a), var_0.a);
    var var_2 = false;
    var_0 = Struct_1(vec2<u32>(76905u, ~_wgslsmith_add_u32(50009u, 1u)));
    global2 = array<Struct_2, 5>();
    return vec4<u32>(var_1.x, firstLeadingBit(1u >> (abs(~var_0.a.x) % 32u)), firstLeadingBit(0u), _wgslsmith_mult_u32(~(4294967295u >> (func_1(u_input.a.x).x % 32u)), ~(~(~global1[_wgslsmith_index_u32(var_0.a.x, 29u)]))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    global1 = array<u32, 29>();
    let var_0 = Struct_3(func_4(select(countOneBits(vec2<i32>(u_input.a.x, -2147483647i) ^ vec2<i32>(-1i, 0i)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, arg_0), vec2<i32>(-11497i, arg_0)), !func_3(Struct_3(vec4<u32>(92753u, 42445u, 4294967295u, 19343u), u_input.a.zww, arg_2.d, true))), func_3(Struct_3(firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 29u)], 29u)], 30333u, arg_3.x, 4294967295u)), -u_input.a.zwx, true, all(vec4<bool>(false, arg_2.d, false, arg_2.d)))), arg_2, Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, arg_2.a.x), vec2<i32>(1i, -1i)), u_input.a.zz), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(arg_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(366f * 2505f) + arg_2.b.x), arg_2.d)), u_input.a.wxz, true, arg_2.d);
    let var_1 = select(vec3<bool>(true, ~arg_3.x != _wgslsmith_mult_u32(1u, var_0.a.x), -(~(-2147483647i)) < (abs(arg_1.x) << (arg_3.x % 32u))), vec3<bool>(true && !arg_2.d, !arg_2.d, true), arg_2.d);
    global2 = array<Struct_2, 5>();
    var var_2 = global2[_wgslsmith_index_u32(~min(1u, 1u), 5u)];
    return select(_wgslsmith_mod_u32((_wgslsmith_sub_u32(u_input.c, arg_3.x) & arg_3.x) & _wgslsmith_mod_u32(1u, arg_3.x), global1[_wgslsmith_index_u32(min(reverseBits(arg_3.x), ~_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(0u, var_0.a.x, 0u, var_0.a.x))), 29u)]), ~reverseBits(~(~u_input.b)), all(var_1.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!((i32(-1i) * -27071i) != u_input.a.x));
    var var_1 = _wgslsmith_div_vec4_u32(~(vec4<u32>(75950u, 70507u, 0u, u_input.d) << (vec4<u32>(13314u, 1506u, u_input.d, u_input.d) % vec4<u32>(32u))), vec4<u32>(global1[_wgslsmith_index_u32(0u, 29u)] | 0u, abs(global1[_wgslsmith_index_u32(77583u, 29u)]), _wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(1696u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)] >> (global1[_wgslsmith_index_u32(u_input.b, 29u)] % 32u), global1[_wgslsmith_index_u32(81176u, 29u)]), global1[_wgslsmith_index_u32(~4294967295u, 29u)])) >> (~(~(~(vec4<u32>(4294967295u, 56238u, global1[_wgslsmith_index_u32(1u, 29u)], 13067u) >> (vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(4294967295u, 29u)], 0u, global1[_wgslsmith_index_u32(4294967295u, 29u)]) % vec4<u32>(32u))))) % vec4<u32>(32u));
    global0 = array<Struct_4, 16>();
    global2 = array<Struct_2, 5>();
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(1u << (~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.c, 29u)], u_input.d) % 32u), 0u), ~(~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(4294967295u, 32829u)))));
    var_1 = vec4<u32>((u_input.c & _wgslsmith_mod_u32(0u, u_input.b)) & func_2(-(i32(-1i) * -29290i), reverseBits(u_input.a.xx), global2[_wgslsmith_index_u32(select(1u >> (var_1.x % 32u), _wgslsmith_div_u32(u_input.c, 29680u), any(vec2<bool>(false, var_0))), 5u)], ~func_1(0i)), global1[_wgslsmith_index_u32(4294967295u, 29u)], 20366u, u_input.b);
    var_1 = abs(vec4<u32>(_wgslsmith_sub_u32(max(func_2(u_input.a.x, vec2<i32>(-10694i, 42633i), global2[_wgslsmith_index_u32(0u, 5u)], vec2<u32>(var_2.x, var_2.x)), ~35542u), var_1.x), u_input.b, u_input.d, _wgslsmith_clamp_u32(~(~var_2.x), 65824u, func_1(u_input.a.x).x)));
    let var_3 = u_input.a;
    let var_4 = Struct_3(vec4<u32>(global1[_wgslsmith_index_u32(var_1.x, 29u)], min(~(~var_1.x), 2770u), var_2.x, func_4(var_3.wx, select(vec2<bool>(false, false), func_3(Struct_3(vec4<u32>(1u, u_input.c, var_2.x, global1[_wgslsmith_index_u32(0u, 29u)]), vec3<i32>(u_input.a.x, 1i, u_input.a.x), true, var_0)), !var_0), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x, 1u), 5u)], Struct_2(-vec2<i32>(var_3.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2326f, 1000f)), _wgslsmith_f_op_f32(abs(1518f)), var_0)).x), countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(2147483647i, -1i)) ^ ~1i, u_input.a.x, _wgslsmith_div_i32(u_input.a.x, i32(-1i) * -2147483647i))), false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-105450i, u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-561f, 547f, -445f, 704f) * vec4<f32>(-1000f, -181f, 1557f, -287f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2699f, 1097f, -1586f, 571f) - vec4<f32>(-536f, 840f, -225f, 112f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1104f, 1294f, -594f, 1000f)))), _wgslsmith_mult_u32(u_input.c, u_input.c));
}

