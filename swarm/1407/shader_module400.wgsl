struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(535f, true, Struct_1(4294967295u));

var<private> global2: Struct_4 = Struct_4(vec2<i32>(4537i, 25541i));

var<private> global3: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = true;
    let var_1 = global1.c.a;
    var var_2 = global2.a;
    global1 = Struct_2(-2584f, global0.b, global1.c);
    global1 = Struct_2(-712f, any(select(!vec3<bool>(false, global0.b, global1.b), vec3<bool>(global0.b | var_0, any(vec3<bool>(true, false, true)), var_0), vec3<bool>(global1.a <= 821f, all(vec2<bool>(true, true)), all(vec4<bool>(true, global1.b, global0.b, global1.b))))), Struct_1(~global0.c.a));
    return !select(vec2<bool>(~u_input.c <= _wgslsmith_mult_i32(global2.a.x, 1i), select(var_0, false, false) == (global1.b == global1.b)), vec2<bool>(true, any(select(vec2<bool>(global1.b, true), vec2<bool>(false, true), global0.b))), !select(!vec2<bool>(var_0, true), select(vec2<bool>(global0.b, global1.b), vec2<bool>(false, global1.b), global1.b), select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0)));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: i32) -> Struct_1 {
    global0 = Struct_2(749f, global0.b, global0.c);
    let var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xy, vec2<u32>(~global0.c.a, 1u)), select(vec2<u32>(39728u, 4294967295u), arg_2.yy, func_3()) >> (~u_input.a.zx % vec2<u32>(32u)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(-1000f)), !any(vec3<bool>(true, global1.b | true, global0.b)), global1.c);
    var var_2 = Struct_3(var_1.c.a, _wgslsmith_mult_vec2_i32(global2.a, (-global2.a | firstLeadingBit(global2.a)) << (vec2<u32>(~global1.c.a, global0.c.a) % vec2<u32>(32u))), 26500u, any(vec3<bool>(var_1.b, false | global1.b, global1.b)));
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1070f, 623f, global1.a, 1389f))) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.a, 945f, 1873f, 250f), vec4<f32>(-980f, var_1.a, global1.a, 276f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-970f, -1000f, global1.a, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(541f, -677f, global1.a, global1.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -676f, 1336f, global1.a)), vec4<f32>(-2870f, global1.a, 2230f, -289f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a, global0.a, -216f, 731f), vec4<f32>(global1.a, -384f, global0.a, var_1.a))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, -935f, -679f, var_1.a), vec4<f32>(global1.a, 1326f, var_1.a, 277f), false)))))));
    return Struct_1(~1u);
}

fn func_4(arg_0: Struct_2) -> u32 {
    global1 = Struct_2(global1.a, all(!select(vec4<bool>(true, true, arg_0.b, global1.b), select(vec4<bool>(arg_0.b, arg_0.b, global1.b, true), vec4<bool>(global0.b, global0.b, arg_0.b, true), true), select(vec4<bool>(global0.b, true, true, false), vec4<bool>(global0.b, global1.b, false, global1.b), true))), Struct_1(_wgslsmith_mult_u32(u_input.a.x, ~34908u)));
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2119f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1527f)) + 668f)) - arg_0.a), global0.b, global1.c);
    global0 = Struct_2(1203f, false, func_2(!vec3<bool>(false, global1.b, any(vec2<bool>(global0.b, global0.b))), abs(_wgslsmith_mod_i32(~(-31499i), 26472i)), vec3<u32>(func_2(select(vec3<bool>(arg_0.b, true, false), vec3<bool>(true, true, global0.b), true), _wgslsmith_dot_vec2_i32(global2.a, global2.a), ~u_input.a, abs(u_input.b)).a, abs(_wgslsmith_clamp_u32(22756u, 29055u, 62648u)), ~(~global0.c.a)), -65152i));
    var var_0 = abs(select(~_wgslsmith_clamp_vec3_i32(vec3<i32>(35975i, global2.a.x, 0i), vec3<i32>(-74935i, -2147483647i, 0i), reverseBits(vec3<i32>(global2.a.x, u_input.b, -2147483647i))), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.a.x, u_input.c, u_input.b) | vec3<i32>(u_input.b, -32146i, 0i), firstTrailingBit(vec3<i32>(2147483647i, u_input.c, u_input.b))) >> (firstLeadingBit(~vec3<u32>(1u, 4294967295u, 0u)) % vec3<u32>(32u)), func_3().x));
    var var_1 = -_wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, global2.a.x, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, var_0.x, -1i), vec3<i32>(1i, -19900i, global2.a.x)))), ~vec3<i32>(-var_0.x, abs(u_input.b), 0i), vec3<i32>(_wgslsmith_sub_i32(-1i, -6077i), -38396i ^ firstLeadingBit(global2.a.x), _wgslsmith_mod_i32(1i, -40372i)));
    return _wgslsmith_mod_u32(abs(4294967295u) & (arg_0.c.a | 4294967295u), u_input.a.x);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = 74561u;
    var_0 = ~global1.c.a;
    let var_1 = max(_wgslsmith_div_u32(abs(~46816u) >> ((_wgslsmith_mult_u32(global0.c.a, 4294967295u) >> (global0.c.a % 32u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.xy, ~vec2<u32>(u_input.a.x, 4294967295u)), u_input.a.x)), ~0u);
    let var_2 = -_wgslsmith_mod_vec3_i32((vec3<i32>(arg_0, -2147483647i, 0i) ^ vec3<i32>(-1i, -52052i, -2619i)) | firstLeadingBit(vec3<i32>(1i, global2.a.x, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -38864i, 2147483647i) ^ vec3<i32>(global2.a.x, u_input.b, -13087i), reverseBits(vec3<i32>(u_input.b, 0i, u_input.b)))) >> (vec3<u32>(func_4(Struct_2(961f, !global0.b, func_2(vec3<bool>(global0.b, true, global0.b), arg_0, u_input.a, global2.a.x))), _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.c.a, 48296u) << (10094u % 32u), 0u), 0u) % vec3<u32>(32u));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))));
    return Struct_1(122925u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(645f * -1045f));
    let var_1 = ~(~_wgslsmith_add_i32(1i, 20055i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1456f)) + _wgslsmith_div_f32(global0.a, -717f))), !all(!vec2<bool>(global1.b, false)))) * _wgslsmith_f_op_f32(min(global0.a, 762f)));
    let var_3 = func_1(_wgslsmith_mult_i32(countOneBits(-1i), 1i));
    var var_4 = Struct_3(~(~_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))), -global2.a, 0u, !global1.b);
    let var_5 = Struct_4(firstLeadingBit(select(reverseBits(max(global2.a, vec2<i32>(-1222i, -2147483647i))), -select(vec2<i32>(var_4.b.x, 15386i), vec2<i32>(global2.a.x, 0i), global0.b), any(vec3<bool>(var_4.d, true, var_4.d)))));
    let var_6 = 191f;
    var_0 = 1723f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, var_2, _wgslsmith_f_op_f32(-var_2), var_2), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-329f + var_2))), 700f, _wgslsmith_f_op_f32(abs(var_6)), _wgslsmith_f_op_f32(-var_2)), var_4.d)), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(var_3.a, var_3.a, 9085u, var_4.a)), ~firstLeadingBit(vec4<u32>(38707u, 104320u, 94787u, var_4.c))), _wgslsmith_f_op_f32(f32(-1f) * -850f));
}

