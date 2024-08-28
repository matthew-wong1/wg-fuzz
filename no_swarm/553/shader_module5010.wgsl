struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<bool>(false, true, true), 1i), Struct_1(vec3<bool>(true, true, true), -15621i), Struct_1(vec3<bool>(true, true, true), 1i), Struct_1(vec3<bool>(true, true, false), -1i), Struct_1(vec3<bool>(true, true, false), -21097i), Struct_1(vec3<bool>(false, false, false), 1i), Struct_1(vec3<bool>(false, true, true), 4883i), Struct_1(vec3<bool>(true, false, false), 61768i), Struct_1(vec3<bool>(true, true, false), 2147483647i));

var<private> global1: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 9u)];
    var_0 = Struct_1(var_0.a, select(_wgslsmith_sub_i32(~var_0.b, u_input.b.x ^ 1i) << (4294967295u % 32u), u_input.b.x, true));
    var var_1 = u_input.b.x;
    var_0 = global0[_wgslsmith_index_u32(75557u, 9u)];
    global1 = false;
    return -(~u_input.b.x) >> (abs(u_input.a) % 32u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = any(select(!select(select(vec4<bool>(false, arg_2.a.x, arg_0.a.x, false), vec4<bool>(false, true, true, false), true), vec4<bool>(arg_0.a.x, false, arg_2.a.x, false), false), !vec4<bool>(-1i != arg_1, true, !arg_0.a.x, true), select(!(!vec4<bool>(arg_0.a.x, true, arg_0.a.x, false)), vec4<bool>(true, any(arg_2.a), true, select(arg_2.a.x, false, arg_2.a.x)), any(arg_2.a.zy))));
    global0 = array<Struct_1, 9>();
    var var_0 = false || !arg_0.a.x;
    global0 = array<Struct_1, 9>();
    var var_1 = arg_2;
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(true, true, true), u_input.b.x);
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_1 = func_3(global0[_wgslsmith_index_u32(1u, 9u)], min(-u_input.b.x, i32(-1i) * -var_0.b), Struct_1(vec3<bool>(all(select(var_0.a, vec3<bool>(false, var_0.a.x, var_0.a.x), var_0.a)), false, !(var_0.a.x & var_0.a.x)), -func_2(vec4<bool>(var_0.a.x, true, false, var_0.a.x)) | -3333i));
    var var_2 = global0[_wgslsmith_index_u32(~(~min(~(~0u), u_input.a)), 9u)];
    return func_3(global0[_wgslsmith_index_u32(0u, 9u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_mod_i32(-13200i, -1i), -_wgslsmith_clamp_i32(u_input.b.x, var_1.b, 0i), ~0i, min(var_2.b, 0i)), ~(~vec4<i32>(var_1.b, var_0.b, -6282i, 1i))), func_3(func_3(Struct_1(select(vec3<bool>(true, true, var_2.a.x), var_1.a, var_0.a), min(var_2.b, var_1.b)), ~func_3(global0[_wgslsmith_index_u32(0u, 9u)], u_input.b.x, Struct_1(vec3<bool>(var_2.a.x, var_0.a.x, var_2.a.x), u_input.b.x)).b, Struct_1(!vec3<bool>(var_0.a.x, true, false), 0i)), -_wgslsmith_mult_i32(var_0.b, var_1.b) >> (u_input.a % 32u), func_3(Struct_1(!vec3<bool>(var_0.a.x, var_1.a.x, var_0.a.x), var_0.b), u_input.b.x & ~0i, global0[_wgslsmith_index_u32(~reverseBits(4294967295u), 9u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(775f - -818f);
    var var_1 = ~vec3<i32>(3251i, u_input.b.x, -u_input.b.x);
    global0 = array<Struct_1, 9>();
    var_1 = ~(-(~vec3<i32>(-56217i, u_input.b.x, u_input.b.x) >> (vec3<u32>(~u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(936f, var_0)));
    let var_3 = func_1();
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(1f + var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_2.x) + _wgslsmith_f_op_f32(abs(var_0))) * _wgslsmith_f_op_f32(round(638f))), var_0) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, var_2.x, var_2.x, var_0)) * vec4<f32>(var_0, 1277f, var_0, var_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 1976f, var_2.x, 1000f), vec4<f32>(var_0, -1141f, var_2.x, -118f)))))));
    var var_5 = Struct_1(var_3.a, -u_input.b.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 53784u) & ~vec2<u32>(u_input.a, 97711u), vec2<u32>(_wgslsmith_sub_u32(60770u, u_input.a), 24828u)) % 32u));
    var_1 = vec3<i32>(-1i) * -select(vec3<i32>(u_input.b.x, var_1.x, u_input.b.x & 2147483647i), u_input.b, var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(65010u), u_input.a, !any(select(var_5.a.xy, var_3.a.zx, var_3.a.x))), ~u_input.a);
}

