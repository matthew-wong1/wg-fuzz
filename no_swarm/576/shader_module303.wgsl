struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 21>();
    let var_0 = reverseBits(-global0[_wgslsmith_index_u32(1u, 21u)]);
    let var_1 = select(var_0, var_0, all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), true)));
    global0 = array<i32, 21>();
    let var_2 = Struct_4(Struct_3(Struct_2(countOneBits(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 21u)], 27744i, -1i)) & vec4<i32>(-2521i, global0[_wgslsmith_index_u32(4315u, 21u)], var_1, 1i), Struct_1(16458i, true), vec2<f32>(1f, 1f)), Struct_2((vec4<i32>(var_0, 44336i, global0[_wgslsmith_index_u32(114789u, 21u)], var_1) ^ vec4<i32>(-2147483647i, var_0, -1i, u_input.a.x)) & -vec4<i32>(var_1, 0i, global0[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a.x), Struct_1(-18497i, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-304f, -522f))), i32(-1i) * -_wgslsmith_div_i32(16252i, 2147483647i), firstLeadingBit(1i)));
    return var_2.a.b.b;
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = true;
    global0 = array<i32, 21>();
    var var_1 = Struct_3(Struct_2(vec4<i32>(-1i, arg_0, 1i, global0[_wgslsmith_index_u32(abs(max(1u, 3584u)), 21u)]), Struct_1(-2147483647i >> (0u % 32u), true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, _wgslsmith_f_op_f32(min(-276f, -513f)))))), Struct_2(vec4<i32>(~_wgslsmith_add_i32(2147483647i, global0[_wgslsmith_index_u32(25249u, 21u)]), -2147483647i, 0i, u_input.a.x), Struct_1(1i, func_2().b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-553f, 119f)))) * vec2<f32>(1f, 1f))), 17626i, _wgslsmith_mult_i32(-18895i, _wgslsmith_clamp_i32(1i, -global0[_wgslsmith_index_u32(0u, 21u)], arg_0)) ^ 1i);
    let var_2 = u_input.a.x;
    var var_3 = !select(vec2<bool>(var_1.a.b.b, var_1.b.b.b), !select(select(vec2<bool>(var_1.b.b.b, var_1.a.b.b), vec2<bool>(false, var_1.b.b.b), var_1.a.b.b), select(vec2<bool>(var_1.b.b.b, var_1.b.b.b), vec2<bool>(false, true), vec2<bool>(var_1.a.b.b, false)), vec2<bool>(false, var_1.a.b.b)), select(vec2<bool>(false, var_1.a.b.b), vec2<bool>(all(vec3<bool>(var_1.b.b.b, var_1.a.b.b, var_1.a.b.b)), var_1.a.b.b), var_1.a.b.b));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1() -> Struct_2 {
    global0 = array<i32, 21>();
    let var_0 = func_2();
    global0 = array<i32, 21>();
    return Struct_2(_wgslsmith_add_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(-1i, 25470i, global0[_wgslsmith_index_u32(0u, 21u)], u_input.a.x)), ~vec4<i32>(global0[_wgslsmith_index_u32(~15227u, 21u)], -89355i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(30009u, 21u)], u_input.a.x), 1i)), Struct_1(u_input.a.x, var_0.b), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1975f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(func_3(-global0[_wgslsmith_index_u32(57984u, 21u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(65861u, 4294967295u, 19454u, 41782u), abs(vec4<u32>(6257u, 55058u, 1u, 19044u))));
    global0 = array<i32, 21>();
    let var_1 = Struct_5(max(14128u, 55099u) < var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(189f)) + _wgslsmith_f_op_f32(-333f * -1431f)))), func_1(), vec4<u32>(~(~var_0), _wgslsmith_sub_u32(var_0, var_0) & var_0, ~var_0, var_0));
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    var var_2 = var_1.c.a;
    var var_3 = var_1.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_1.c.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f - 239f))), -1000f, -1880f, _wgslsmith_f_op_f32(ceil(var_1.b))), ~29054u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-529f, var_1.c.c.x, var_1.b, -539f)))))), global0[_wgslsmith_index_u32(var_1.d.x, 21u)]);
}

