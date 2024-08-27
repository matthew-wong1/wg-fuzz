struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<u32>(79807u, 42559u), vec3<u32>(4294967295u, 39976u, 26988u), vec2<i32>(18469i, -5676i), vec3<bool>(true, true, true), vec3<u32>(34493u, 0u, 18264u)), Struct_1(vec2<u32>(1u, 66743u), vec3<u32>(50767u, 4016u, 48866u), vec2<i32>(0i, -1i), vec3<bool>(false, false, true), vec3<u32>(59474u, 4294967295u, 24148u)), Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(26328u, 49912u, 11436u), vec2<i32>(2147483647i, -1i), vec3<bool>(true, false, false), vec3<u32>(1u, 27400u, 4294967295u)), Struct_1(vec2<u32>(27008u, 15372u), vec3<u32>(19350u, 3709u, 0u), vec2<i32>(2147483647i, 15339i), vec3<bool>(false, true, true), vec3<u32>(14054u, 1u, 1u)), Struct_1(vec2<u32>(19850u, 17233u), vec3<u32>(24375u, 52980u, 13186u), vec2<i32>(16896i, -1i), vec3<bool>(false, false, true), vec3<u32>(1u, 31207u, 4294967295u)), Struct_1(vec2<u32>(1u, 67189u), vec3<u32>(40358u, 42750u, 20770u), vec2<i32>(5798i, -18548i), vec3<bool>(false, false, true), vec3<u32>(1u, 1u, 24849u)));

var<private> global1: Struct_1 = Struct_1(vec2<u32>(52925u, 4294967295u), vec3<u32>(8215u, 31279u, 47187u), vec2<i32>(25040i, 2147483647i), vec3<bool>(false, true, true), vec3<u32>(1u, 4294967295u, 0u));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    global0 = array<Struct_1, 6>();
    let var_0 = arg_0.d.yx;
    global0 = array<Struct_1, 6>();
    let var_1 = arg_2.d.x;
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 38472u), 6u)];
    return arg_2.a.x;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 6>();
    let var_0 = arg_1;
    var var_1 = select(var_0.d.x, true, arg_1.d.x);
    let var_2 = var_0;
    var_1 = arg_1.d.x;
    return ~(~(~38184u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(19512u, 6u)];
    let var_1 = Struct_1(global1.a, vec3<u32>(47126u >> (~arg_0.b.x % 32u), u_input.b, (func_2(Struct_1(arg_0.b.xz, arg_2.b, vec2<i32>(4201i, 8067i), arg_0.d, vec3<u32>(arg_2.b.x, global1.e.x, arg_2.a.x)), 86325u, arg_0, vec2<f32>(arg_1.x, 317f)) << (~arg_0.e.x % 32u)) << (_wgslsmith_dot_vec2_u32(global1.a, ~vec2<u32>(4294967295u, 36061u)) % 32u)), vec2<i32>(-1i, 1i), var_0.d, vec3<u32>(func_2(Struct_1(~vec2<u32>(11430u, arg_0.e.x), vec3<u32>(54141u, 13123u, 5654u), vec2<i32>(arg_0.c.x, arg_2.c.x) & global1.c, select(arg_2.d, vec3<bool>(arg_2.d.x, true, true), arg_0.d.x), ~vec3<u32>(arg_2.a.x, 11222u, arg_2.e.x)), var_0.b.x ^ 0u, arg_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -1520f) + arg_1.yy), global1.d.x))), 29001u, 0u));
    global0 = array<Struct_1, 6>();
    var var_2 = Struct_1(arg_0.a, ~max(abs(global1.b), max(vec3<u32>(0u, 1u, global1.e.x), arg_0.b)), abs(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_0.c.x, global1.c.x, global1.c.x, var_1.c.x)), 1i) >> (vec2<u32>(arg_2.a.x, ~arg_2.e.x) % vec2<u32>(32u))), !var_0.d, ~vec3<u32>(_wgslsmith_clamp_u32(58215u, var_1.a.x, arg_2.e.x), _wgslsmith_sub_u32(~4534u, 1u), func_3(_wgslsmith_f_op_f32(trunc(arg_1.x)), Struct_1(vec2<u32>(21321u, arg_2.a.x), var_1.b, arg_0.c, vec3<bool>(false, false, arg_0.d.x), vec3<u32>(global1.a.x, var_1.a.x, var_0.b.x)))));
    var var_3 = global0[_wgslsmith_index_u32(arg_0.b.x, 6u)];
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global1 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(u_input.a, ~global1.c.x, abs(global1.c.x), u_input.a)), firstLeadingBit(u_input.c)), ~(~39639u), abs(func_1(Struct_1(global1.b.yx, abs(vec3<u32>(global1.b.x, global1.b.x, 9354u)), u_input.c.yx, global1.d, global1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-136f, 1185f, -587f) - vec3<f32>(757f, 947f, -339f)), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 6u)])), ~vec3<u32>(u_input.b, 1u, func_2(Struct_1(global1.e.yx, global1.b, vec2<i32>(u_input.c.x, 1i), vec3<bool>(global1.d.x, true, true), global1.b), 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 6u)], vec2<f32>(1631f, 489f)) & ~global1.b.x));
}

