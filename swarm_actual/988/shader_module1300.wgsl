struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(2896i, 2147483647i, 20834i, 2147483647i, 41480i, 1i, -44294i, 36916i, i32(-2147483648), 1094i, 27821i, -1i, 1i, -1i, 12394i, 62663i, -1i);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = -743f;
    global1 = !vec2<bool>(all(vec4<bool>(true, any(vec3<bool>(global1.x, true, global1.x)), !global1.x, global1.x)), global1.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1490f, true))), _wgslsmith_f_op_f32(round(-768f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1115f))) - _wgslsmith_f_op_f32(f32(-1f) * -1638f));
    let var_1 = 50664u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -968f)), _wgslsmith_f_op_f32(f32(-1f) * -666f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1393f + 1813f), -1327f), -202f)));
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec2<bool>) -> u32 {
    global1 = vec2<bool>(arg_1.b.a | global1.x, arg_1.b.a && true);
    let var_0 = !(!func_3() || (all(!arg_3) || !all(vec4<bool>(false, arg_3.x, false, true))));
    let var_1 = arg_1.c.b;
    var var_2 = Struct_2(arg_3.x, Struct_1(countOneBits((arg_1.b.b.a >> (4294967295u % 32u)) << (43457u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-2541f, 2128f)))))));
    var var_3 = Struct_3(reverseBits(1u), arg_2.zxw, vec3<bool>(true, true, true), Struct_1(-(arg_1.b.b.a << (reverseBits(4725u) % 32u)), 958f));
    return ~46141u;
}

fn func_1() -> u32 {
    var var_0 = Struct_2(false, Struct_1(~_wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(30288u, 17u)], 16063i), -1154f));
    global1 = vec2<bool>(var_0.a, all(vec3<bool>(true, -330f != _wgslsmith_f_op_f32(max(var_0.b.b, 894f)), all(select(vec3<bool>(var_0.a, false, false), vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, false, var_0.a))))));
    let var_1 = !(!global1.x);
    global0 = array<i32, 17>();
    global1 = vec2<bool>(4294967295u <= _wgslsmith_sub_u32(func_2(var_0.b.a, Struct_4(vec4<f32>(128f, var_0.b.b, var_0.b.b, var_0.b.b), Struct_2(false, Struct_1(-2147483647i, var_0.b.b)), Struct_2(false, Struct_1(u_input.a, -750f))), -vec4<i32>(-59372i, -2147483647i, u_input.a, global0[_wgslsmith_index_u32(0u, 17u)]), !vec2<bool>(var_0.a, var_1)), _wgslsmith_mod_u32(abs(0u), ~0u)), true);
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(select(!(!vec2<bool>(false, global1.x)), !vec2<bool>(global1.x, true), select(vec2<bool>(true, global1.x), vec2<bool>(false, true), vec2<bool>(global1.x, true))), vec2<bool>(false, select(true, select(global1.x, false, false), any(vec4<bool>(global1.x, true, true, false)))), !(!select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(908f, 1f, false)) + 828f) - _wgslsmith_f_op_f32(floor(1000f)));
    var_0 = 669f;
    let var_1 = vec4<u32>(4294967295u, ~1u, countOneBits(func_1()), 0u);
    let var_2 = 2147483647i;
    var var_3 = !select(vec2<bool>(global1.x, !global1.x), vec2<bool>(any(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, true), global1.x)), false), func_3());
    var var_4 = Struct_1(u_input.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(2081f, 2109f, global1.x)), _wgslsmith_f_op_f32(trunc(1000f)))));
    var var_5 = all(vec3<bool>(all(!(!vec4<bool>(var_3.x, global1.x, false, false))), select(global1.x, all(vec3<bool>(global1.x, var_3.x, global1.x)), true), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, 26087i, -33545i, 56664i), vec4<i32>(2147483647i, u_input.a, 0i, var_4.a)) ^ reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 17u)], 1i, 1i, global0[_wgslsmith_index_u32(0u, 17u)]) | vec4<i32>(-1i, 0i, 2147483647i, 0i)), select(~vec4<i32>(u_input.a, var_2, 1i, var_4.a), vec4<i32>(abs(var_2), var_2 & -9292i, -var_2, -1i | var_2), global1.x)), vec3<f32>(var_4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b + _wgslsmith_f_op_f32(step(var_4.b, -1135f))) * 1000f), -900f), _wgslsmith_mult_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(12984i, var_2, -1i), vec3<i32>(var_2, global0[_wgslsmith_index_u32(51136u, 17u)], var_2)), ~vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 17u)], var_2, -2147483647i) >> (vec3<u32>(71988u, 4294967295u, var_1.x) % vec3<u32>(32u))) >> (var_1.yzx % vec3<u32>(32u)), ~_wgslsmith_clamp_u32(~17132u, var_1.x, 23655u) << (firstLeadingBit(~(~var_1.x)) % 32u));
}

