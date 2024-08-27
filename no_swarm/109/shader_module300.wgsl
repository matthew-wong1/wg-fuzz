struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(1i, Struct_1(0i, vec4<u32>(4294967295u, 0u, 12274u, 4294967295u), -1000f, -12034i, 1u), true, false), Struct_2(15522i, Struct_1(i32(-2147483648), vec4<u32>(29325u, 46872u, 76275u, 1u), -1611f, 70100i, 88913u), true, true), Struct_2(-6800i, Struct_1(-8094i, vec4<u32>(63703u, 15005u, 30196u, 1u), 447f, 2147483647i, 36550u), false, true));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    global0 = array<Struct_2, 3>();
    var var_0 = min(_wgslsmith_div_vec4_u32(max(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 31463u)), ~(~vec4<u32>(6021u, 20742u, u_input.a, u_input.a))), abs(reverseBits(vec4<u32>(0u, u_input.a, u_input.a, 14367u)) & (vec4<u32>(4294967295u, u_input.b, 60126u, u_input.b) >> (vec4<u32>(1u, u_input.a, u_input.a, u_input.b) % vec4<u32>(32u))))), _wgslsmith_mult_vec4_u32(min(select(vec4<u32>(u_input.a, 41105u, 1u, 2062u) | vec4<u32>(4294967295u, 4294967295u, u_input.b, 59593u), vec4<u32>(70253u, 48616u, u_input.b, 1u), select(false, arg_0.x, false)), reverseBits(~vec4<u32>(u_input.b, u_input.b, 24388u, 2502u))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a, u_input.b, 5159u, u_input.b)), select(~vec4<u32>(3291u, u_input.b, 764u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.b, u_input.b), select(arg_0, arg_0, vec4<bool>(arg_0.x, true, true, arg_0.x))))));
    var var_1 = !(!(!select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.zxy, all(vec2<bool>(arg_0.x, arg_0.x)))));
    var var_2 = vec3<i32>(~u_input.c, min(u_input.c, -countOneBits(_wgslsmith_sub_i32(u_input.c, u_input.c))), u_input.c);
    var_1 = vec3<bool>(true == !arg_0.x, false, true);
    return 8255i;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    var var_0 = Struct_2(65272i, Struct_1(func_3(vec4<bool>(true, arg_0.x, arg_0.x & true, arg_0.x)), ~max(abs(vec4<u32>(39444u, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), 839f, u_input.c >> (1u % 32u), u_input.a), arg_0.x, arg_0.x);
    let var_1 = Struct_2(u_input.c, var_0.b, false, var_0.b.d > ~reverseBits(u_input.c));
    let var_2 = vec4<u32>(~(~(~u_input.a >> (~0u % 32u))), reverseBits(~(~1u)) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b.x, u_input.a, 4294967295u, 0u), min(vec4<u32>(4294967295u, u_input.a, var_1.b.b.x, var_0.b.e), vec4<u32>(u_input.a, 4294967295u, 4533u, u_input.a))), 1u, _wgslsmith_div_u32(~1u, ~76708u));
    var var_3 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~63072u, abs(34519u), var_0.b.b.x), vec3<u32>(~(u_input.b | u_input.b), ~u_input.b, abs(~var_1.b.b.x))) >> (firstTrailingBit(~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.e, 44334u, 14852u), vec3<u32>(4294967295u, 25087u, 0u)), ~var_0.b.b.wzx)) % vec3<u32>(32u));
    let var_4 = global0[_wgslsmith_index_u32(var_0.b.e, 3u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c + _wgslsmith_f_op_f32(-1466f * 1070f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1737f)), var_4.b.c, true))));
}

fn func_1(arg_0: f32) -> f32 {
    global0 = array<Struct_2, 3>();
    var var_0 = _wgslsmith_f_op_f32(round(arg_0));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, -1647f))), arg_0, _wgslsmith_f_op_f32(floor(arg_0)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, false), -582f)), -1000f) - -1445f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(312f));
    global0 = array<Struct_2, 3>();
    var var_1 = 0u;
    var_1 = u_input.b;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-923f - 1037f) - _wgslsmith_f_op_f32(sign(-654f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-417f + 371f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.b, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x))), _wgslsmith_f_op_f32(func_2(vec3<bool>(true, any(vec2<bool>(true, true)), true), var_2.x)), var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)))), var_2.x, -1250f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-260f, 699f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 237f) * vec2<f32>(235f, -524f)), vec2<f32>(var_2.x, var_2.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -762f)))));
}

