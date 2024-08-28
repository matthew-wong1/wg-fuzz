struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(4294967295u, 4294967295u, 13186u, 4294967295u), vec4<u32>(76323u, 1u, 20615u, 43792u), vec4<u32>(14623u, 43168u, 1u, 1u), vec4<u32>(1u, 59955u, 4716u, 31531u), vec4<u32>(4294967295u, 40690u, 4294967295u, 0u), vec4<u32>(31149u, 0u, 38266u, 15481u), vec4<u32>(52642u, 4294967295u, 1u, 55742u), vec4<u32>(41453u, 4294967295u, 4294967295u, 1u), vec4<u32>(77614u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 1u, 80038u, 0u), vec4<u32>(8444u, 1u, 20186u, 0u), vec4<u32>(58095u, 1u, 1u, 4294967295u), vec4<u32>(112192u, 0u, 4294967295u, 64498u), vec4<u32>(4294967295u, 4294967295u, 19910u, 74193u), vec4<u32>(45817u, 1u, 23158u, 0u), vec4<u32>(0u, 4294967295u, 13004u, 58203u), vec4<u32>(114343u, 0u, 12489u, 4294967295u), vec4<u32>(0u, 102657u, 4294967295u, 46741u), vec4<u32>(10861u, 55514u, 0u, 0u), vec4<u32>(52742u, 4294967295u, 53521u, 61685u), vec4<u32>(59899u, 1u, 685u, 4294967295u), vec4<u32>(18141u, 38028u, 35878u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_3) -> u32 {
    let var_0 = ~(~(min(arg_1, arg_1) ^ 39290u));
    global0 = array<vec4<u32>, 22>();
    global0 = array<vec4<u32>, 22>();
    var var_1 = abs(arg_3.d.zy);
    var_1 = _wgslsmith_sub_vec2_i32(abs(arg_3.d.yz >> ((vec2<u32>(arg_1, var_0) & u_input.a.zw) % vec2<u32>(32u))), vec2<i32>(~(~var_1.x), var_1.x)) >> (u_input.a.zy % vec2<u32>(32u));
    return arg_1;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_2(arg_0);
    global0 = array<vec4<u32>, 22>();
    var var_1 = Struct_1(-10455i);
    global0 = array<vec4<u32>, 22>();
    var_1 = Struct_1(_wgslsmith_mod_i32(-19081i, ~1i));
    return -189f;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: vec4<u32>) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(232f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-30655i, vec3<i32>(24247i, 2147483647i, 1i)))) + _wgslsmith_f_op_f32(step(452f, -490f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(319f * 711f))), 1225f) * -407f));
    let var_1 = -587f;
    var var_2 = Struct_3(Struct_1(5244i), true, vec4<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_1)), -152f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_0.x))), abs(vec4<i32>(1i, 1i, 1i, 1i)));
    let var_3 = vec2<u32>(select(1u, ~(~36560u), var_2.b), ~firstLeadingBit(~89209u)) | vec2<u32>(arg_1, func_1(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 166f), _wgslsmith_f_op_f32(-457f - var_1)), ~(~arg_2), select(select(vec3<bool>(var_2.b, var_2.b, var_2.b), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), var_2.b), Struct_3(Struct_1(var_2.a.a), all(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_vec4_f32(-var_2.c), vec4<i32>(var_2.d.x, var_2.a.a, var_2.a.a, 2037i))));
    let var_4 = var_2.d.yxy;
    return var_4.x;
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    return StorageBuffer(606f, _wgslsmith_f_op_f32(round(955f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-163f - 218f), -310f)))))), ~firstLeadingBit(32227i), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 22>();
    global0 = array<vec4<u32>, 22>();
    global0 = array<vec4<u32>, 22>();
    var var_0 = -1i;
    var var_1 = -1i;
    var var_2 = ~(~vec3<u32>(1u, 14029u, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1707f), min(u_input.a.x, 4294967295u), vec3<bool>(false, false, true), Struct_3(Struct_1(1i), true, vec4<f32>(736f, -907f, 1674f, 413f), vec4<i32>(-1i, 2147483647i, -18439i, 1i)))));
    let x = u_input.a;
    s_output = func_4(Struct_2(_wgslsmith_sub_i32(firstLeadingBit(func_2(4294967295u, 4294967295u, var_2.x, vec4<u32>(4294967295u, 1u, 1u, u_input.a.x))), -17799i)));
}

