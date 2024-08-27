struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(true));

var<private> global1: u32;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, true, false));

var<private> global4: Struct_3 = Struct_3(vec4<i32>(0i, 1i, 11906i, 19236i), vec3<bool>(true, false, true), vec3<bool>(false, true, false), true, Struct_2(Struct_1(false)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<bool>) -> u32 {
    var var_0 = abs(vec4<u32>(reverseBits(~arg_0.x), u_input.a, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.x, 35634u), vec4<u32>(arg_0.x, arg_0.x, 0u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(14854u, arg_0.x, arg_0.x, 0u), vec4<u32>(1u, 17349u, arg_0.x, arg_0.x))), arg_0.x));
    let var_1 = arg_0.x;
    let var_2 = global4.a.yw;
    global1 = reverseBits(firstTrailingBit(~(40513u | arg_0.x))) | arg_0.x;
    return ~min(1081u, _wgslsmith_sub_u32(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(51284u, arg_0.x, var_0.x, u_input.a), vec4<u32>(59819u, 0u, arg_0.x, 29557u))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> vec3<i32> {
    var var_0 = global0[_wgslsmith_index_u32(1584u, 1u)];
    global3 = array<vec3<bool>, 1>();
    var var_1 = _wgslsmith_clamp_vec2_u32(countOneBits(~(~select(vec2<u32>(arg_1.x, 42030u), arg_1.zy, true))), vec2<u32>(1u, func_3(vec2<u32>(2177u, ~41535u), 1i, select(!vec4<bool>(var_0.a, true, global2.x, global2.x), !vec4<bool>(arg_2.x, global4.e.a.a, global2.x, true), select(vec4<bool>(false, true, arg_2.x, global4.c.x), vec4<bool>(var_0.a, false, global4.c.x, arg_2.x), true)), vec3<bool>(global2.x, global4.b.x && var_0.a, any(vec3<bool>(global4.c.x, false, global4.b.x))))), arg_1.xy);
    let var_2 = global4.e.a;
    global0 = array<Struct_1, 1>();
    return firstTrailingBit(-abs(-global4.a.ywy));
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    return vec3<i32>(global4.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(func_2(vec3<f32>(-571f, 1634f, -499f), vec4<u32>(u_input.a, 6425u, u_input.a, u_input.a), global4.b), select(vec3<i32>(global4.a.x, global4.a.x, -2147483647i), vec3<i32>(-21669i, -4943i, global4.a.x), false)), vec3<i32>(global4.a.x, -global4.a.x, abs(35342i))), ~49290i) >> (abs(~(~(~vec3<u32>(u_input.a, 1u, u_input.a)))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(global4.d));
    global1 = u_input.a;
    var var_1 = Struct_1(global2.x);
    global2 = global4.c;
    let var_2 = global4.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f));
}

