struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec2<bool>;

var<private> global2: array<u32, 13>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>) -> bool {
    global2 = array<u32, 13>();
    global2 = array<u32, 13>();
    var var_0 = 200f;
    let var_1 = !all(!(!select(vec3<bool>(false, true, global1.x), vec3<bool>(false, true, global1.x), vec3<bool>(true, true, true))));
    global0 = array<Struct_1, 11>();
    return all(!select(vec2<bool>(global3.a.a, !global3.a.a), select(!vec2<bool>(var_1, true), !vec2<bool>(true, arg_0.a.a), true), !select(vec2<bool>(false, arg_0.a.a), vec2<bool>(var_1, false), vec2<bool>(arg_0.a.a, global1.x))));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = -vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.a), vec4<i32>(u_input.b.x, 0i, u_input.a, 31833i), select(vec4<bool>(global1.x, true, true, global3.a.a), vec4<bool>(arg_0.a.a, false, true, true), vec4<bool>(arg_0.a.a, true, global3.a.a, false))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.a, -15386i) ^ vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.b.x, -2147483647i, 34657i, 1i))), u_input.b.x & 1i);
    global2 = array<u32, 13>();
    return vec2<bool>(all(!(!vec2<bool>(global1.x, global1.x))), func_3(arg_0, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.a.c, arg_0.a.c))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.c, 445f))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: u32) -> vec2<bool> {
    var var_0 = !select(select(func_2(arg_1), func_2(Struct_2(arg_1.a)), select(all(vec3<bool>(global3.a.a, global3.a.a, true)), true, true)), vec2<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_2.x), u_input.b) < 6966i), vec2<bool>(false && global3.a.a, func_2(Struct_2(Struct_1(true, arg_1.a.b, arg_1.a.c))).x));
    let var_1 = arg_1;
    var var_2 = var_1.a.c;
    global1 = vec2<bool>(var_0.x & all(select(vec3<bool>(arg_1.a.a, global1.x, false), select(vec3<bool>(false, false, true), vec3<bool>(var_0.x, true, global3.a.a), true), global1.x != true)), all(vec2<bool>(true, _wgslsmith_dot_vec2_u32(var_1.a.b.xw, vec2<u32>(arg_0.x, global3.a.b.x)) >= max(var_1.a.b.x, arg_1.a.b.x))));
    let var_3 = ~15556u;
    return vec2<bool>(arg_1.a.a, var_0.x && (all(!vec4<bool>(true, true, true, arg_1.a.a)) || true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(select(!(!vec2<bool>(true, global1.x)), select(vec2<bool>(all(vec2<bool>(global3.a.a, global1.x)), global1.x), !func_1(vec4<u32>(4294967295u, 0u, u_input.e, 23166u), Struct_2(global3.a), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -55979i), 43057u), select(select(vec2<bool>(true, true), vec2<bool>(true, global3.a.a), false), !vec2<bool>(global1.x, global3.a.a), !vec2<bool>(global1.x, global1.x))), select(select(func_2(Struct_2(global3.a)), !vec2<bool>(global3.a.a, global1.x), all(vec3<bool>(true, global1.x, global1.x))), func_2(Struct_2(global0[_wgslsmith_index_u32(58585u, 11u)])), all(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global3.a.a, global3.a.a), false)))), vec2<bool>(!(!global3.a.a), global3.a.a), !func_2(Struct_2(Struct_1(true, global3.a.b, global3.a.c))).x && any(select(vec3<bool>(false, global3.a.a, true), !vec3<bool>(global3.a.a, global1.x, true), global3.a.a)));
    global3 = Struct_2(Struct_1(all(!select(vec4<bool>(global3.a.a, false, global1.x, false), vec4<bool>(global3.a.a, false, global1.x, global1.x), vec4<bool>(global3.a.a, global3.a.a, true, false))), vec4<u32>(_wgslsmith_div_u32(4294967295u, 55632u) ^ firstTrailingBit(47789u), _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.c), u_input.c), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.d, 1u), countOneBits(u_input.c.x)), 1u), -787f));
    let var_0 = 1121f;
    let var_1 = min(-vec3<i32>(2493i, firstLeadingBit(max(-1985i, u_input.a)), _wgslsmith_mod_i32(max(u_input.a, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-79919i, 3642i, 16568i, u_input.b.x), vec4<i32>(u_input.a, u_input.b.x, 2147483647i, -1i)))), abs(~(vec3<i32>(u_input.a, -23774i, 21010i) >> (global3.a.b.yxy % vec3<u32>(32u)))) >> (countOneBits(vec3<u32>(max(global3.a.b.x, u_input.d), min(global2[_wgslsmith_index_u32(0u, 13u)], global3.a.b.x), u_input.d)) % vec3<u32>(32u)));
    global0 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(1360f * global3.a.c));
}

