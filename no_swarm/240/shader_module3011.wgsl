struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: array<Struct_2, 15>;

var<private> global2: array<u32, 15>;

var<private> global3: Struct_1;

var<private> global4: array<vec4<u32>, 20>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    var var_0 = arg_1;
    var var_1 = Struct_1(~(~firstTrailingBit(global2[_wgslsmith_index_u32(~1u, 15u)])), var_0.x, 1600f);
    let var_2 = u_input.a;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.xz), _wgslsmith_mod_i32(arg_0, 0i << (global2[_wgslsmith_index_u32(global3.a, 15u)] % 32u)));
    global2 = array<u32, 15>();
    return ~28660u;
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: i32, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(~20674u, 15u)], u_input.d.x), 15u)];
    var var_1 = max(abs(vec4<i32>(2147483647i, min(_wgslsmith_clamp_i32(1i, arg_2, 1i), -arg_2), ~arg_2, 1i)), abs(_wgslsmith_sub_vec4_i32(-(~u_input.c), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c), u_input.c))));
    let var_2 = ~_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a, u_input.b.zwx) << (u_input.a % vec3<u32>(32u)), ~vec3<u32>(~40022u, 1u, global2[_wgslsmith_index_u32(0u, 15u)] | u_input.a.x));
    var var_3 = _wgslsmith_f_op_f32(abs(534f));
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)))))));
    return vec4<bool>(true, !(!all(!vec2<bool>(false, arg_1))), any(select(!vec3<bool>(arg_1, false, true), vec3<bool>(true, var_0.a, false), vec3<bool>(true, !var_0.a, !var_0.a))), any(vec3<bool>(false, arg_1, false)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = all(select(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1453f, global3.c)), all(vec3<bool>(true, true, false)), 6684i, _wgslsmith_f_op_vec3_f32(vec3<f32>(652f, arg_0.b, 476f) * vec3<f32>(812f, global3.c, global3.b))), vec4<bool>(true, true, false, true), any(vec3<bool>(true, true, true)))) | all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), any(vec3<bool>(true, true, false)) | any(vec2<bool>(false, true))));
    var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(exp2(arg_0.b));
    let var_2 = max(u_input.c & abs(-(~u_input.c)), ~(-firstTrailingBit(-u_input.c)));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 1u), 15u)];
    return var_3.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global3.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1000f)))), any(vec4<bool>(true, false, true, true))))), 586f));
    var var_1 = Struct_1(abs(func_1(-u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, 1000f, 1898f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, var_0, var_0), vec3<f32>(global3.b, 490f, global3.c)))))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1012f)) - _wgslsmith_f_op_f32(func_2(Struct_1(4294967295u, 2097f, -691f)))))));
    var var_2 = Struct_1(u_input.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(617f * _wgslsmith_div_f32(848f, -660f)))), global3.b)), global3.c);
    global0 = array<vec2<u32>, 6>();
    let var_3 = Struct_1(~global3.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, -1868f, true))) * 2444f))), _wgslsmith_f_op_f32(func_2(Struct_1(var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(998f - var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global3.b, var_2.c)), 1177f)))));
    var_1 = var_3;
    let var_4 = u_input.c.xzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c, var_3.c))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.c, var_2.b))), vec2<f32>(-601f, -519f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(464f, -1000f), vec2<f32>(761f, var_2.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-349f, 1000f) * vec2<f32>(-1587f, -827f)))), ~0u <= ~abs(var_1.a))), abs(var_2.a), reverseBits(vec3<i32>(u_input.c.x, 52557i, -(i32(-1i) * -52661i))));
}

