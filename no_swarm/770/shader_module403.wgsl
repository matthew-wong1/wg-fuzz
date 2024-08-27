struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(4294967295u);

var<private> global1: array<f32, 7> = array<f32, 7>(-1059f, 1074f, -1125f, -1975f, -1776f, -795f, -950f);

var<private> global2: array<vec4<u32>, 2>;

var<private> global3: array<i32, 3>;

var<private> global4: array<vec2<u32>, 23>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(vec4<u32>(abs(select(u_input.a.x & 1u, u_input.a.x, true)), ~1u, max(_wgslsmith_add_u32(0u, ~u_input.a.x), firstTrailingBit(~global0.a)), 27812u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-546f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(109306u, 7u)])))) - 1403f), !((min(u_input.a.x, 4294967295u) < 0u) | (~u_input.a.x != 43995u)));
    var var_1 = ~max(~(var_0.a.x ^ 60871u), u_input.a.x);
    global4 = array<vec2<u32>, 23>();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(38843u, 4294967295u, 1u, 4294967295u), vec4<u32>(var_0.a.x, 0u, global0.a, u_input.a.x)) ^ (global0.a & 124631u)), ~firstTrailingBit(min(var_0.a.wz, global4[_wgslsmith_index_u32(1u, 23u)])), !var_0.c), reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(global4[_wgslsmith_index_u32(min(global0.a, 4294967295u), 23u)], ~global4[_wgslsmith_index_u32(1u, 23u)]), vec2<u32>(58369u, global0.a), abs(~u_input.a.zy)))), 7u)];
    global2 = array<vec4<u32>, 2>();
    return Struct_2(global0.a);
}

fn func_1() -> u32 {
    global1 = array<f32, 7>();
    let var_0 = global2[_wgslsmith_index_u32(1u, 2u)];
    global0 = Struct_2(~min(~(~4294967295u), _wgslsmith_div_u32(firstTrailingBit(var_0.x), u_input.a.x)));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-273f, _wgslsmith_f_op_f32(step(-166f, 154f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), global1[_wgslsmith_index_u32(~1u, 7u)]))));
    return ~7850u;
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<u32>) -> vec4<i32> {
    var var_0 = arg_2.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-573f, global1[_wgslsmith_index_u32(u_input.a.x, 7u)])), arg_1)));
    let var_2 = Struct_4(Struct_3(-select(-28020i, 1i, arg_0.x)), Struct_3(21230i), Struct_3(-2147483647i), select(vec2<bool>(true, true), arg_0.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - 1000f) == 954f), Struct_2(~u_input.a.x));
    global0 = func_2();
    global4 = array<vec2<u32>, 23>();
    return abs(vec4<i32>(var_2.a.a, -2147483647i, u_input.b.x, u_input.b.x) | _wgslsmith_mult_vec4_i32(vec4<i32>(abs(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_2.a.a, 2147483647i, global3[_wgslsmith_index_u32(var_2.e.a, 3u)]), vec4<i32>(var_2.b.a, -1i, var_2.c.a, global3[_wgslsmith_index_u32(49200u, 3u)])), firstLeadingBit(-10378i), ~u_input.b.x), _wgslsmith_div_vec4_i32(-vec4<i32>(-15442i, u_input.b.x, var_2.b.a, -45164i), vec4<i32>(var_2.a.a, u_input.b.x, 42464i, u_input.b.x) << (vec4<u32>(arg_2.x, global0.a, 44605u, 0u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(~global3[_wgslsmith_index_u32(~(0u << (global0.a % 32u)), 3u)] <= _wgslsmith_mod_i32(-1i, ~2147483647i));
    global1 = array<f32, 7>();
    var var_1 = Struct_1(abs(~global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], vec4<u32>(u_input.a.x, 20565u, 4294967295u, global0.a)), ~u_input.a.x, _wgslsmith_mult_u32(62796u, u_input.a.x)), 2u)]), 1000f, global3[_wgslsmith_index_u32(func_1(), 3u)] <= max(-(global3[_wgslsmith_index_u32(4294967295u, 3u)] & u_input.b.x), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], 2147483647i, -1i, u_input.b.x)), func_3(vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(0u, 7u)], u_input.a))));
    let var_2 = select(vec3<bool>(!all(select(vec3<bool>(var_0, var_1.c, false), vec3<bool>(var_1.c, var_0, true), var_0)), all(vec4<bool>(!var_0, any(vec2<bool>(false, var_1.c)), var_1.c, var_0)), var_0), !select(vec3<bool>(false, any(vec3<bool>(var_0, var_0, var_1.c)), !var_1.c), select(select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_1.c), vec3<bool>(true, var_1.c, var_1.c)), !vec3<bool>(var_1.c, true, false), select(vec3<bool>(var_0, var_1.c, var_0), vec3<bool>(var_1.c, true, var_1.c), var_1.c)), vec3<bool>(!var_1.c, select(true, var_0, true), any(vec3<bool>(var_0, var_0, false)))), var_0);
    let var_3 = Struct_4(Struct_3(0i), Struct_3(1i), Struct_3(firstTrailingBit(~u_input.b.x)), var_2.xz, func_2());
    var var_4 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

