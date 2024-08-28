struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 12>;

var<private> global2: vec3<bool>;

var<private> global3: vec3<f32> = vec3<f32>(-450f, 1000f, -471f);

var<private> global4: array<vec3<i32>, 27>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32) -> u32 {
    global4 = array<vec3<i32>, 27>();
    let var_0 = _wgslsmith_f_op_f32(-global3.x);
    global1 = array<Struct_1, 12>();
    return ~9690u;
}

fn func_3() -> u32 {
    return ~(~(~37989u));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~1u, func_2(~arg_1), func_2(_wgslsmith_div_i32(global0.a.x, -global0.a.x)), func_3()), vec4<u32>(53562u, ~83562u, ~1u, ~(~1u)) << (~(~select(vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(0u, 4294967295u, 1u, 65179u), true)) % vec4<u32>(32u)));
    var var_1 = true;
    let var_2 = vec2<bool>(any(arg_2), false);
    var var_3 = ~vec4<u32>(~func_3(), 4294967295u, var_0.x | firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 18237u, var_0.x, 20567u), vec4<u32>(var_0.x, 1u, var_0.x, 1u))), var_0.x);
    var var_4 = global1[_wgslsmith_index_u32(var_3.x, 12u)];
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, 743f)))))));
    let var_1 = _wgslsmith_clamp_i32(countOneBits(abs(_wgslsmith_sub_i32(func_1(vec4<i32>(-34136i, -20008i, 1196i, global0.a.x), -2147483647i, vec4<bool>(global0.b, global2.x, global0.b, global2.x), Struct_2(Struct_1(global0.a, global2.x), vec3<bool>(true, global2.x, global0.b), global1[_wgslsmith_index_u32(9214u, 12u)], global0.b, global0.b)), firstLeadingBit(global0.a.x)))), u_input.a | (_wgslsmith_mult_i32(global0.a.x, global0.a.x) | _wgslsmith_clamp_i32(-35359i, global0.a.x, i32(-1i) * -2670i)), global0.a.x);
    global2 = !(!(!(!(!vec3<bool>(false, global2.x, global2.x)))));
    let var_2 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_mod_u32(56928u, 1u)), ~select(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 119111u), vec2<bool>(false, global0.b))), abs(~(~vec2<u32>(5726u, 33531u))));
    let var_3 = global2.yx;
    let x = u_input.a;
    s_output = StorageBuffer(256f);
}

