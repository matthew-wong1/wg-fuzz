struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31>;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<vec3<f32>, 1>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> f32 {
    global2 = array<vec3<f32>, 1>();
    let var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(793f, 985f, 1076f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(221f, -190f, -258f, 230f))), false), Struct_1(!(!(arg_1 < 0i)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f)), _wgslsmith_f_op_f32(floor(-970f)), -1000f), true), global0[_wgslsmith_index_u32(u_input.c, 31u)], !(!(!(arg_1 != arg_1))), global1[_wgslsmith_index_u32(u_input.c, 31u)]);
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -min(0i, -47617i), _wgslsmith_sub_i32(min(_wgslsmith_sub_i32(-1i, -2147483647i), -6695i), abs(select(u_input.b.x, arg_1, var_0.a.c))), arg_0.x), reverseBits(3895i), arg_1);
    let var_2 = var_0.a;
    var var_3 = 5063i;
    return 836f;
}

fn func_2() -> vec4<f32> {
    global1 = array<Struct_1, 31>();
    global2 = array<vec3<f32>, 1>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(~vec2<i32>(u_input.a.x, u_input.a.x), 1i)), _wgslsmith_div_f32(709f, 1099f), -153f, _wgslsmith_f_op_f32(-1435f * 1504f)) + vec4<f32>(600f, _wgslsmith_f_op_f32(f32(-1f) * -474f), -1213f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-650f, 337f)), _wgslsmith_f_op_f32(f32(-1f) * -1269f), true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1490f, -130f, -339f, -1000f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(562f, -260f, 523f, 800f) * vec4<f32>(2349f, 1653f, -443f, 832f))) - vec4<f32>(-1822f, _wgslsmith_f_op_f32(round(-242f)), _wgslsmith_f_op_f32(sign(-1170f)), _wgslsmith_f_op_f32(max(-1171f, -1183f))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())));
    let var_1 = _wgslsmith_mod_vec4_i32(abs(~_wgslsmith_add_vec4_i32(~global0[_wgslsmith_index_u32(u_input.c, 31u)], abs(global0[_wgslsmith_index_u32(4294967295u, 31u)]))), _wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(u_input.c, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)]));
    let var_2 = vec2<bool>(true, !(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, u_input.c)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 0u))) > 1u));
    global1 = array<Struct_1, 31>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 31>();
    global2 = array<vec3<f32>, 1>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_1()), 539f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(u_input.c, 31u)], Struct_1(true, vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, 1f)), var_0.x, -1097f), true), abs(countOneBits(vec4<i32>(-18946i, 2147483647i, u_input.a.x, u_input.a.x) >> (~vec4<u32>(u_input.c, 1u, u_input.c, u_input.c) % vec4<u32>(32u)))), false, global1[_wgslsmith_index_u32(u_input.c, 31u)]);
    var var_2 = vec2<bool>(true, true);
    let var_3 = false;
    global1 = array<Struct_1, 31>();
    var var_4 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(1102f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.x))))), -337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.x))));
}

