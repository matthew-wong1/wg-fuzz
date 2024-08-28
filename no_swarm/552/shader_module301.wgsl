struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: array<i32, 18> = array<i32, 18>(51210i, -1i, 2147483647i, -9322i, 9691i, -1i, 29460i, -4259i, 18327i, -64628i, 13135i, -1i, 60376i, -1i, 0i, 0i, 63202i, 2147483647i);

var<private> global2: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global3: array<i32, 32>;

var<private> global4: array<Struct_1, 20>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(~(~(~1u)), select(33917u, ~(~4294967295u), true)), u_input.c, arg_0.c, arg_0.a.a);
    var var_1 = global4[_wgslsmith_index_u32(~(~9365u), 20u)];
    let var_2 = -29325i;
    global0 = array<vec4<bool>, 25>();
    var var_3 = Struct_2(global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(27648u, _wgslsmith_add_u32(abs(18031u), u_input.d.x)), 20u)], vec3<u32>(0u, min(firstLeadingBit(u_input.d.x), max(0u, ~arg_0.a.a)), var_1.a), Struct_1(1u));
    return true;
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_2(Struct_1(~arg_0.a.a), u_input.d.yyz, Struct_1(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.a, arg_0.c.a, arg_0.b.x), vec3<u32>(arg_0.b.x, 35885u, 59978u)), _wgslsmith_sub_u32(u_input.d.x, 1u), false)));
    global3 = array<i32, 32>();
    let var_1 = vec2<bool>(true, any(vec4<bool>(func_3(Struct_3(Struct_1(17664u), vec2<i32>(global1[_wgslsmith_index_u32(arg_0.b.x, 18u)], global1[_wgslsmith_index_u32(24399u, 18u)]), 80578u, -1000f, vec4<i32>(-29949i, global3[_wgslsmith_index_u32(52263u, 32u)], 0i, -3331i))), !any(vec2<bool>(true, true)), true, ~u_input.a == arg_0.c.a)));
    global0 = array<vec4<bool>, 25>();
    global3 = array<i32, 32>();
    return _wgslsmith_add_u32(~(~(var_0.a.a >> (select(arg_0.b.x, 0u, false) % 32u))), ~_wgslsmith_dot_vec2_u32(min(arg_0.b.zx, arg_0.b.zy) | _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 14911u), vec2<u32>(25181u, 3145u)), min(vec2<u32>(4294967295u, u_input.a), ~arg_0.b.yx)));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1((func_2(Struct_2(Struct_1(0u), vec3<u32>(9584u, 4294967295u, 27021u), global4[_wgslsmith_index_u32(1u, 20u)])) & ~(69037u >> (u_input.b % 32u))) << (~26653u % 32u));
    let var_1 = vec4<bool>(true, _wgslsmith_sub_u32(~var_0.a, ~_wgslsmith_mod_u32(u_input.c, 0u)) >= ~u_input.e, false, !(abs(global1[_wgslsmith_index_u32(~u_input.a, 18u)]) == _wgslsmith_dot_vec3_i32(~vec3<i32>(global3[_wgslsmith_index_u32(var_0.a, 32u)], global3[_wgslsmith_index_u32(30293u, 32u)], 22855i), -vec3<i32>(global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(var_0.a, 32u)]))));
    let var_2 = Struct_1(14030u);
    var var_3 = abs(_wgslsmith_sub_vec3_u32(u_input.d.yyz, ~min(u_input.d.xwz, vec3<u32>(var_0.a, var_0.a, 1u))) | vec3<u32>(u_input.e, 1u, 50056u));
    global2 = array<vec2<bool>, 14>();
    return Struct_2(global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, ~min(u_input.e, var_0.a)), 20u)], u_input.d.ywz, Struct_1(~41053u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 25>();
    global3 = array<i32, 32>();
    let var_0 = func_1();
    global3 = array<i32, 32>();
    global0 = array<vec4<bool>, 25>();
    var var_1 = select(vec4<bool>(true, false, all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), !all(vec3<bool>(false, true, false))), !vec4<bool>(true, true, -1657f > _wgslsmith_f_op_f32(step(-1277f, -1362f)), true), func_3(Struct_3(func_1().c, _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(22998u, 18u)]), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(40073u, 18u)])), ~u_input.c, 1516f, vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], -25198i, -7331i, 0i))) | (any(vec3<bool>(true, true, true)) && !any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.e), 18u)], 2147483647i & ~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(25052u, 18u)]), global3[_wgslsmith_index_u32(var_0.b.x, 32u)] & -12852i, global1[_wgslsmith_index_u32(~(~var_0.b.x), 18u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-452f, -874f)) * 1317f))) - -1110f), _wgslsmith_add_u32(((u_input.d.x >> (0u % 32u)) & min(u_input.d.x, var_0.c.a)) & _wgslsmith_sub_u32(~var_0.b.x, var_0.a.a), 5945u), reverseBits(u_input.d.x));
}

