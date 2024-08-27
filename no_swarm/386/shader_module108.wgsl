struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8>;

var<private> global1: array<Struct_2, 3>;

var<private> global2: array<u32, 30> = array<u32, 30>(4294967295u, 0u, 3680u, 1u, 27084u, 12240u, 0u, 53978u, 1u, 1u, 16813u, 4294967295u, 4294967295u, 52964u, 4294967295u, 7432u, 4294967295u, 4294967295u, 1u, 7655u, 1u, 411u, 52715u, 81188u, 0u, 0u, 1u, 0u, 0u, 10130u);

var<private> global3: array<vec4<bool>, 29>;

var<private> global4: vec4<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_3 {
    global1 = array<Struct_2, 3>();
    global3 = array<vec4<bool>, 29>();
    let var_0 = firstLeadingBit(global2[_wgslsmith_index_u32(arg_0, 30u)]);
    global2 = array<u32, 30>();
    return Struct_3(arg_2.wwz);
}

fn func_3() -> u32 {
    var var_0 = ~(-(~_wgslsmith_div_i32(global4.x, global4.x))) | -1i;
    let var_1 = all(!vec3<bool>(false, any(global3[_wgslsmith_index_u32(0u, 29u)]), 13083i != u_input.b.x)) | all(global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(select(12157u, global2[_wgslsmith_index_u32(u_input.a.x, 30u)], true), ~4294967295u)), 29u)]);
    var_0 = u_input.c.x;
    global0 = array<vec4<i32>, 8>();
    let var_2 = Struct_4(u_input.a.zx);
    return 3849u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> bool {
    var var_0 = u_input.a;
    let var_1 = !any(arg_2.a);
    let var_2 = global2[_wgslsmith_index_u32(func_3(), 30u)] <= ~_wgslsmith_add_u32(firstTrailingBit(4294967295u), firstTrailingBit(~1u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(964f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(311f + -1000f))) + _wgslsmith_f_op_f32(f32(-1f) * -620f)));
    global0 = array<vec4<i32>, 8>();
    return all(select(select(vec4<bool>(u_input.a.x <= 1u, arg_0.x, var_0.x > global2[_wgslsmith_index_u32(arg_1.a.e.x, 30u)], arg_3 && false), global3[_wgslsmith_index_u32(4294967295u, 29u)], all(select(vec4<bool>(arg_2.a.x, var_1, true, false), vec4<bool>(true, arg_1.a.b, arg_3, false), vec4<bool>(false, true, false, arg_1.a.c)))), !vec4<bool>(false | var_1, global4.x <= 29097i, true, true), !arg_3));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> Struct_3 {
    global2 = array<u32, 30>();
    var var_0 = Struct_4(u_input.a.zx);
    let var_1 = vec3<u32>(~(~(~9396u)), u_input.a.x, global2[_wgslsmith_index_u32(~0u, 30u)]);
    var var_2 = vec3<bool>(true, arg_1.x, func_1(1u, Struct_1(-1i, arg_1.x, arg_1.x, arg_1.zy, var_1.xz), !(!(!global3[_wgslsmith_index_u32(68363u, 29u)])), Struct_1(_wgslsmith_add_i32(countOneBits(-21473i), countOneBits(global4.x)), !arg_1.x, true, vec2<bool>(arg_1.x, true), _wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], var_1.x), vec2<u32>(var_1.x, 0u)) & firstTrailingBit(vec2<u32>(0u, 4294967295u)))).a.x);
    let var_3 = vec2<bool>(arg_1.x, true);
    return Struct_3(vec3<bool>((u_input.c.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(112815u, 37535u), vec2<u32>(var_1.x, 4294967295u)) % 32u)) <= 6906i, !(!(u_input.c.x <= 1i)), any(arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-1341f, vec3<bool>(select(any(vec4<bool>(true, true, true, true)), true && (u_input.c.x >= global4.x), func_2(select(vec2<bool>(false, false), vec2<bool>(false, true), true), Struct_2(Struct_1(0i, true, true, vec2<bool>(false, true), u_input.a.zx), u_input.a, global2[_wgslsmith_index_u32(1u, 30u)], u_input.b.x, u_input.c.x), func_1(0u, Struct_1(2147483647i, true, true, vec2<bool>(false, true), vec2<u32>(15297u, 4294967295u)), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 29u)], Struct_1(-41970i, true, true, vec2<bool>(false, false), u_input.a.yx)), true)), ~u_input.a.x <= (4294967295u | u_input.a.x), func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 30u)], 3u)], Struct_3(vec3<bool>(false, false, false)), true) | (true && (0i <= u_input.c.x))));
    global0 = array<vec4<i32>, 8>();
    var var_1 = 16498u;
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    global3 = array<vec4<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(0u >> (abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)]) % 32u), func_3()) >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(), ~u_input.a.x, ~1u, 0u), (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 161106u) ^ vec4<u32>(u_input.a.x, 40004u, 30535u, 0u)) ^ ~vec4<u32>(88201u, 25892u, 0u, 13571u)), 30u)], 30u)] % 32u), u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-951f, -552f))))))));
}

