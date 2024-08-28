struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(4294967295u, 1u, 1505u), vec4<i32>(-31858i, -32102i, 41866i, 56053i));

var<private> global2: array<i32, 12>;

var<private> global3: vec2<bool>;

var<private> global4: vec2<u32> = vec2<u32>(1u, 1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = arg_0.c;
    let var_1 = arg_0.d.yx;
    global3 = select(vec2<bool>(!arg_0.a, global3.x), var_1, select(!vec2<bool>(global1.a.x > var_0.a.x, any(vec2<bool>(arg_0.a, arg_0.d.x))), vec2<bool>(false & global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.c.a.x), 22u)], false), arg_0.a));
    global1 = arg_0.c;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b))));
    return abs(-arg_0.c.b.x);
}

fn func_2() -> Struct_1 {
    let var_0 = 7051u | abs(reverseBits(u_input.d));
    var var_1 = Struct_2(select(vec2<bool>(global3.x & global0[_wgslsmith_index_u32(~var_0, 22u)], !any(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(global1.a.x, 22u)]))), vec2<bool>(false, !global0[_wgslsmith_index_u32(0u, 22u)] & false), !vec2<bool>(global0[_wgslsmith_index_u32(global4.x, 22u)] || false, global0[_wgslsmith_index_u32(23745u, 22u)] && true)), Struct_1(abs(global1.a), vec4<i32>(~0i | global1.b.x, 1i << (_wgslsmith_dot_vec2_u32(global1.a.yy, u_input.b.xz) % 32u), firstTrailingBit(func_3(Struct_3(true, 327f, Struct_1(vec3<u32>(0u, global4.x, var_0), global1.b), vec3<bool>(global0[_wgslsmith_index_u32(1u, 22u)], global3.x, global0[_wgslsmith_index_u32(global1.a.x, 22u)])))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a.zyy, vec3<i32>(22787i, u_input.a.x, u_input.a.x)), ~global2[_wgslsmith_index_u32(1u, 12u)]))), vec2<bool>(true, true), Struct_1(min(abs(global1.a), _wgslsmith_sub_vec3_u32(vec3<u32>(15699u, u_input.c, var_0), ~vec3<u32>(u_input.d, var_0, global4.x))), u_input.a), vec4<u32>(4077u, 23976u, min(12323u >> (_wgslsmith_clamp_u32(u_input.c, 4294967295u, 5947u) % 32u), _wgslsmith_dot_vec2_u32(abs(u_input.b.yx), vec2<u32>(var_0, global4.x) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)))), ~_wgslsmith_clamp_u32(var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, global4.x, 1u), global1.a), abs(4294967295u))));
    let var_2 = var_1.d;
    global3 = select(!vec2<bool>(global3.x, false), vec2<bool>(true | !var_1.a.x, false), !(!var_1.c.x));
    global4 = vec2<u32>(u_input.c, select(~u_input.c, 35967u, any(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 22u)], false, var_1.c.x), vec3<bool>(var_1.c.x, global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(var_0, 22u)]), vec3<bool>(false, true, var_1.a.x)))) << ((~_wgslsmith_mod_u32(var_1.d.a.x, u_input.b.x) ^ 0u) % 32u));
    return var_1.b;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(global3.x, false), vec2<bool>(global3.x, true))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, global3.x), vec2<bool>(global3.x, global0[_wgslsmith_index_u32(4294967295u, 22u)])), vec2<bool>(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(global1.a.x, 22u)]), false), vec2<bool>(!global3.x, all(vec4<bool>(true, global3.x, false, false))), true), true), func_2(), vec2<bool>(any(vec4<bool>(false, false || global3.x, true, true)), true), func_2(), _wgslsmith_add_vec4_u32(vec4<u32>(~0u, 1u, global4.x, ~(~u_input.d)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.a.x, 56977u, global4.x, 1u), ~reverseBits(vec4<u32>(global1.a.x, u_input.c, global4.x, 12518u)))));
    global4 = vec2<u32>(global1.a.x, ~min(18085u, _wgslsmith_add_u32(32054u, global1.a.x)));
    global1 = func_2();
    let var_1 = ~global1.a;
    let var_2 = vec2<i32>(_wgslsmith_div_i32(~global1.b.x | firstLeadingBit(-2147483647i), 0i), select(-1i, func_2().b.x, global0[_wgslsmith_index_u32(global4.x, 22u)])) & global1.b.ww;
    return StorageBuffer(vec2<i32>(i32(-1i) * -1i, ~reverseBits(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(global4.x, 12u)], var_0.b.b.x))), select(func_2().a, ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.x, 0u, 7980u), var_1)), !any(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(global4.x, 22u)]), vec3<bool>(var_0.a.x, var_0.c.x, var_0.c.x), vec3<bool>(global0[_wgslsmith_index_u32(60145u, 22u)], false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

