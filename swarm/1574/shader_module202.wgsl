struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)));

var<private> global1: vec4<u32>;

var<private> global2: array<bool, 19>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = Struct_1(vec2<bool>(all(arg_3.a), -arg_3.c <= _wgslsmith_add_i32(min(11681i, -20455i), u_input.e.x)));
    let var_1 = Struct_2(!arg_3.a, arg_3.b, -2147483647i, _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(arg_3.c, 3188i, arg_3.d)) ^ -(vec3<i32>(32904i, -1077i, u_input.e.x) >> (u_input.b.wyw % vec3<u32>(32u))), ~(-countOneBits(vec3<i32>(-362i, arg_0.c, 34414i)))));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(1427f * -196f), -274f, 1833f, -881f)))));
    let var_4 = 4294967295u;
    return !arg_0.a.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>) -> bool {
    global0 = array<Struct_1, 23>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(16376u, ~(u_input.a.x >> (global1.x % 32u)), 1u), 23u)];
    let var_1 = !select(vec4<bool>(all(vec3<bool>(true, true, var_0.a.x)), false, func_3(Struct_2(var_0.a, vec3<bool>(true, var_0.a.x, true), 62345i, arg_0.x), firstLeadingBit(global1.xz), 1u, Struct_2(arg_1, vec3<bool>(false, true, true), 2147483647i, -11648i)), global2[_wgslsmith_index_u32(~u_input.a.x, 19u)]), vec4<bool>(!arg_1.x, !arg_1.x, any(!vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 19u)], var_0.a.x, false, false)), true), !vec4<bool>(arg_1.x, true, !global2[_wgslsmith_index_u32(58117u, 19u)], global1.x == 76235u));
    global2 = array<bool, 19>();
    global2 = array<bool, 19>();
    return any(select(select(var_1, select(vec4<bool>(arg_1.x, false, arg_1.x, global2[_wgslsmith_index_u32(u_input.c.x, 19u)]), !vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 19u)], var_1.x, true), false), var_1), var_1, any(select(vec3<bool>(false, false, true), var_1.ywx, !arg_1.x))));
}

fn func_1() -> u32 {
    var var_0 = Struct_2(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 19u)], !(!global2[_wgslsmith_index_u32(global1.x, 19u)])), !vec2<bool>(func_2(vec4<i32>(11729i, u_input.e.x, -22922i, 2147483647i), vec2<bool>(false, global2[_wgslsmith_index_u32(70301u, 19u)])), true), select(select(vec2<bool>(global2[_wgslsmith_index_u32(26607u, 19u)], false), vec2<bool>(true, false), func_2(vec4<i32>(-39157i, 6065i, -29319i, 49413i), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], false))), vec2<bool>(true, true), select(!vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 19u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(21157u, 19u)], false), vec2<bool>(true, true), false), false))), select(!vec3<bool>(!global2[_wgslsmith_index_u32(26235u, 19u)], global2[_wgslsmith_index_u32(firstTrailingBit(32699u), 19u)], all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(global1.x, 19u)]))), vec3<bool>(select(4294967295u, 99229u, global2[_wgslsmith_index_u32(u_input.d.x, 19u)]) < 1u, true, func_2(vec4<i32>(4615i, u_input.e.x, 1i, u_input.e.x), vec2<bool>(false, global2[_wgslsmith_index_u32(global1.x, 19u)]))), 25981u == _wgslsmith_dot_vec4_u32(vec4<u32>(533u, global1.x, global1.x, 9456u), u_input.c | vec4<u32>(global1.x, u_input.d.x, u_input.b.x, u_input.d.x))), u_input.e.x, u_input.e.x);
    global0 = array<Struct_1, 23>();
    var var_1 = ~(~vec3<i32>(abs(-2147483647i), ~(u_input.e.x | u_input.e.x), var_0.c));
    return 22246u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b;
    global1 = ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(func_1(), u_input.d.x, select(global1.x, 0u, false), _wgslsmith_add_u32(u_input.d.x, u_input.b.x)), ~(u_input.c << (u_input.c % vec4<u32>(32u)))));
    global2 = array<bool, 19>();
    let var_0 = Struct_1(!(!select(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 19u)], global2[_wgslsmith_index_u32(40496u, 19u)]), vec2<bool>(false, false), vec2<bool>(false, global2[_wgslsmith_index_u32(80733u, 19u)])), !vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 19u)], true), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 19u)], false), vec2<bool>(global2[_wgslsmith_index_u32(1u, 19u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)])))));
    var var_1 = -firstTrailingBit(~(-vec4<i32>(2147483647i, u_input.e.x, u_input.e.x, -11071i)));
    let var_2 = global1.x;
    var_1 = select(abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, var_1.x, -1i, var_1.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e.x, -2147483647i, 8613i, -1i), vec4<i32>(0i, var_1.x, var_1.x, var_1.x), vec4<i32>(var_1.x, u_input.e.x, 0i, 25318i)))), vec4<i32>(_wgslsmith_div_i32(0i, 1i), u_input.e.x, 18537i, reverseBits(~var_1.x)), any(select(select(vec3<bool>(true, var_0.a.x, false), vec3<bool>(true, var_0.a.x, false), true), !(!vec3<bool>(false, var_0.a.x, false)), !vec3<bool>(false, var_0.a.x, var_0.a.x))));
    var var_3 = var_0;
    global0 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, -abs(-17277i), ~u_input.c.x, global1.x, (~0u ^ u_input.c.x) | 1u);
}

