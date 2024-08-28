struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, 149f, 1000f, -113f);

var<private> global1: u32;

var<private> global2: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(0u, 1u), vec2<u32>(18966u, 1u), vec2<u32>(0u, 75130u), vec2<u32>(31910u, 23167u), vec2<u32>(1u, 51735u), vec2<u32>(36501u, 52079u), vec2<u32>(10391u, 4294967295u), vec2<u32>(4294967295u, 31970u), vec2<u32>(26191u, 1u), vec2<u32>(1u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(793f * global0.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<i32>) -> u32 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), 321f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_1, -23646i, -44355i), vec4<i32>(867i, -2147483647i, 1i, 46537i)), ~(global2[_wgslsmith_index_u32(1u, 10u)] << (global2[_wgslsmith_index_u32(1u, 10u)] % vec2<u32>(32u))), 4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))) * global0.x));
    global2 = array<vec2<u32>, 10>();
    global2 = array<vec2<u32>, 10>();
    var var_0 = max(42414u, 1309u);
    var var_1 = ~global2[_wgslsmith_index_u32(~(~firstLeadingBit(~6528u)), 10u)];
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(floor(global0.x)));
    let var_0 = global2[_wgslsmith_index_u32(1u, 10u)];
    var var_1 = abs(-(_wgslsmith_add_vec3_i32(u_input.b | vec3<i32>(u_input.a, u_input.b.x, u_input.c), vec3<i32>(u_input.b.x, -1i, 1i)) >> (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u))));
    var_1 = abs(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(~vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), ~vec4<u32>(var_0.x, 6862u, var_0.x, var_0.x))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 83785u, 17736u, 12929u), vec4<u32>(var_0.x, var_0.x, 0u, var_0.x)), var_0.x, reverseBits(69890u), _wgslsmith_clamp_u32(var_0.x, 36810u, 1u)), vec4<u32>(2436u, func_1(u_input.b.xz, u_input.a, u_input.b), min(var_0.x, var_0.x), var_0.x >> (var_0.x % 32u)), vec4<u32>(81720u, 19452u, var_0.x, 72906u) << ((vec4<u32>(1u, 4294967295u, 26999u, 1u) << (vec4<u32>(61882u, var_0.x, 58672u, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.c, ~(~max(var_1.x, var_1.x) | abs(~1i)), global0.x, vec3<i32>(abs(u_input.a), u_input.c, select(var_1.x, -22615i, false)) | abs(reverseBits(vec3<i32>(14515i, var_1.x, u_input.b.x))));
}

