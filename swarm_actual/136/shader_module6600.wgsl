struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<bool, 26> = array<bool, 26>(false, false, false, false, false, true, true, true, true, false, true, true, true, false, false, false, true, false, true, false, true, false, true, false, false, true);

var<private> global2: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 4294967295u, 64259u), 3411i, vec2<u32>(67377u, 0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    return Struct_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.e.zyw, vec3<u32>(global2.a.x, global0.x, global2.c.x)) & 1u, ~(~global0.x), _wgslsmith_div_u32(~(~u_input.c), firstTrailingBit(global0.x | global2.c.x)), _wgslsmith_dot_vec4_u32(~(~u_input.e), global2.a)), _wgslsmith_add_i32(~(-global2.b | u_input.a.x), ~u_input.a.x ^ 1i), ~(~(~vec2<u32>(4294967295u, u_input.c))) << (u_input.e.yw % vec2<u32>(32u)));
}

fn func_1() -> Struct_1 {
    global1 = array<bool, 26>();
    var var_0 = Struct_1(u_input.e, -31090i, abs(vec2<u32>(reverseBits(u_input.e.x), 52489u)));
    global1 = array<bool, 26>();
    var_0 = func_2();
    let var_1 = ~4294967295u;
    return Struct_1(_wgslsmith_mod_vec4_u32(~(~(~global2.a)), ~global2.a), var_0.b, ~u_input.e.xx);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    global2 = arg_1;
    var var_0 = 2147483647i;
    var var_1 = arg_1;
    global0 = ~reverseBits(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(var_1.c.x, var_1.c.x)), arg_1.c) ^ firstLeadingBit(vec2<u32>(global2.c.x, u_input.e.x) & global2.c));
    var_1 = Struct_1(vec4<u32>(countOneBits(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_1.c.x, var_1.c.x, 83126u), global2.c.x, _wgslsmith_clamp_u32(global0.x, 5476u, arg_1.c.x)), countOneBits(vec3<u32>(0u, global0.x, 0u) | var_1.a.yxx)), 27665u, ~var_1.a.x), -2147483647i, vec2<u32>(~(~28826u), ~_wgslsmith_sub_u32(~0u, 1u)));
    return global1[_wgslsmith_index_u32(abs(max(48979u, arg_1.c.x)), 26u)];
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(~(~u_input.e << (select(u_input.e, ~vec4<u32>(1u, 59938u, u_input.e.x, 0u), all(vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 26u)], arg_0.x, true))) % vec4<u32>(32u))), _wgslsmith_add_i32(-6899i, ~_wgslsmith_add_i32(_wgslsmith_div_i32(global2.b, u_input.d.x), func_2().b)), global2.c);
    let var_1 = ~(~_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.c.x, 45679u, global0.x, 26874u), vec4<u32>(98815u, var_0.a.x, 28103u, var_0.a.x)), func_1().a));
    var var_2 = !arg_0.x;
    let var_3 = Struct_1(func_2().a, 2147483647i & var_0.b, u_input.e.zz);
    global0 = select(var_3.a.wx, vec2<u32>(~(~30140u), _wgslsmith_clamp_u32(abs(var_1), ~9533u, 6970u >> (global2.a.x % 32u))) & vec2<u32>(4294967295u, 0u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1, global0.x), u_input.e.x << (_wgslsmith_mult_u32(50578u, var_3.a.x) % 32u)), _wgslsmith_mod_u32(global2.c.x, 4294967295u & var_1)), 26u)]);
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    global1 = array<bool, 26>();
    var var_1 = vec2<i32>(u_input.b.x, ~global2.b);
    global0 = vec2<u32>(firstLeadingBit(abs(~max(global2.a.x, u_input.c))), ~reverseBits(min(max(67566u, 1u), arg_1.c.x)));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(abs(~_wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(0u, arg_1.a.x, 12190u, 0u)))), firstTrailingBit(countOneBits(arg_0.c.x))), 26u)];
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~(~global2.a.ywy), ~(~u_input.e.xzw));
    var var_1 = func_5(func_1(), func_4(select(vec3<bool>(true, true, true), !(!vec3<bool>(global1[_wgslsmith_index_u32(9926u, 26u)], global1[_wgslsmith_index_u32(global2.c.x, 26u)], true)), vec3<bool>(true, all(vec3<bool>(false, true, true)), func_3(false, Struct_1(vec4<u32>(var_0.x, u_input.c, global0.x, global0.x), 1i, global2.c))))));
    var var_2 = Struct_1(func_2().a, func_5(Struct_1(u_input.e, func_4(vec3<bool>(true, global1[_wgslsmith_index_u32(global2.a.x, 26u)], global1[_wgslsmith_index_u32(0u, 26u)])).b, vec2<u32>(14676u, func_5(Struct_1(u_input.e, 4920i, vec2<u32>(global2.a.x, u_input.e.x)), Struct_1(vec4<u32>(1u, u_input.c, 0u, 1u), u_input.b.x, vec2<u32>(global2.c.x, global0.x))).a.x)), Struct_1(vec4<u32>(global0.x, 4294967295u, var_1.c.x, 4294967295u) & vec4<u32>(0u, global2.c.x, 4294967295u, 0u), 0i, ~global2.c)).b, vec2<u32>(~reverseBits(_wgslsmith_mult_u32(9475u, global2.c.x)), ~var_0.x));
    var var_3 = vec2<i32>(~0i, -(~u_input.d.x));
    let var_4 = -647f;
    var var_5 = global1[_wgslsmith_index_u32(8166u, 26u)] || select((-var_3.x > (var_3.x ^ global2.b)) || ((u_input.b.x & -2147483647i) < 1i), !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, u_input.c) ^ var_2.c.x, 26u)], true);
    var var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4), 1u, var_4, ~vec2<u32>(_wgslsmith_add_u32(countOneBits(0u), 4294967295u), ~(~u_input.e.x)), -2147483647i);
}

