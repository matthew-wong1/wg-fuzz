struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<f32>) -> f32 {
    let var_0 = !(u_input.b.x == ~(-2147483647i));
    let var_1 = arg_3.x != -507f;
    return -2722f;
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = ~(~(~(~u_input.a)));
    let var_1 = arg_0.b;
    let var_2 = u_input.a;
    var var_3 = u_input.a;
    var_3 = firstTrailingBit(~(reverseBits(0u) << (abs(~var_2) % 32u)));
    return arg_0.b.b.x > -1985f;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    var var_0 = arg_0.b;
    let var_1 = select(select(arg_0.b.a, vec2<bool>(false, func_3(arg_0, -7444i)), any(vec4<bool>(true, u_input.a > 35908u, !var_0.d, all(vec2<bool>(var_0.a.x, true))))), arg_1.zz, vec2<bool>(var_0.b.x >= arg_2, false));
    var_0 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(!var_1.x, !arg_0.c), true), select(vec2<bool>(!arg_0.c, false), !vec2<bool>(var_0.a.x, false), arg_0.c), !vec2<bool>(arg_0.c || var_0.a.x, arg_0.c)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(2117f, var_0.b.x, var_0.b.x))), vec3<f32>(-806f, 2488f, arg_0.b.b.x)))), vec3<i32>(-1i) * -(var_0.c | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, arg_0.b.c.x, 2147483647i), vec3<i32>(var_0.c.x, -38318i, var_0.c.x))), true);
    let var_2 = Struct_4(true);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-792f, arg_0.a.x, var_0.b.x, _wgslsmith_f_op_f32(trunc(arg_2))))), arg_0.b, !all(select(!vec4<bool>(true, true, true, var_1.x), select(vec4<bool>(false, true, arg_1.x, var_0.a.x), vec4<bool>(arg_0.c, true, true, false), vec4<bool>(true, arg_1.x, var_1.x, arg_0.b.a.x)), false)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(round(-699f)))))) - var_3.a.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -250f) + -217f))), arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<f32>(-161f, -348f, 1359f, -1000f), Struct_1(vec2<bool>(true, false), vec3<f32>(-752f, 1746f, -1666f), vec3<i32>(u_input.b.x, 0i, 2981i), true), true), false, vec2<bool>(true, true), vec4<f32>(-1425f, 898f, -726f, -109f))) - -996f) != _wgslsmith_f_op_f32(f32(-1f) * -1000f), true), vec2<bool>(true, true), any(vec2<bool>(true, all(vec3<bool>(true, false, false)))) & true);
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1097f, 318f, -589f, -114f) - vec4<f32>(589f, -540f, -127f, -944f))) + vec4<f32>(_wgslsmith_f_op_f32(-1143f * -515f), -1639f, 1602f, _wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(-359f, 714f, 1246f, 666f), Struct_1(vec2<bool>(var_0.x, var_0.x), vec3<f32>(-1067f, -639f, -708f), vec3<i32>(u_input.b.x, -2147483647i, -16339i), var_0.x), true), vec3<bool>(false, false, var_0.x), -285f)))), Struct_1(select(!vec2<bool>(false, var_0.x), vec2<bool>(false, true), vec2<bool>(var_0.x, true)), vec3<f32>(-791f, -1179f, -1828f), vec3<i32>(-1i) * -vec3<i32>(-3203i, -7231i, -2147483647i), all(select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), true))), var_0.x), select(select(vec4<bool>(all(vec2<bool>(true, false)), !var_0.x, all(vec3<bool>(var_0.x, var_0.x, false)), true), !vec4<bool>(true, var_0.x, false, true), !var_0.x), select(!select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(!vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, true, true, true)), true || var_0.x), any(!vec3<bool>(true, false, var_0.x))), ~abs(firstTrailingBit(1i ^ u_input.b.x)), Struct_1(!vec2<bool>(false, var_0.x), vec3<f32>(1f, 1f, 1f), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 40990i, u_input.b.x), vec3<i32>(-40221i, 16492i, 0i)), true));
    var var_2 = vec2<u32>(u_input.a, _wgslsmith_mod_u32(~(_wgslsmith_mult_u32(u_input.a, u_input.a) << (37080u % 32u)), select(~93372u, 1u, true) >> (1u % 32u)));
    var_2 = (_wgslsmith_clamp_vec2_u32(vec2<u32>(25209u, ~796u), firstLeadingBit(vec2<u32>(1u, u_input.a)), ~vec2<u32>(1u, 1u)) ^ ~_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 28172u)), ~vec2<u32>(1u, 1u))) << (abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, var_2.x) << (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), ~(~vec2<u32>(u_input.a, 29969u)))) % vec2<u32>(32u));
    var var_3 = ~(~abs(1i) & (i32(-1i) * -(u_input.b.x ^ -32160i)));
    let var_4 = max(var_1.d.c.x, u_input.b.x);
    var_3 = ~_wgslsmith_div_i32(~0i, 72113i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, i32(-1i) * -var_1.d.c.x, ~vec2<u32>(~93719u, u_input.a), vec2<u32>(0u, ~(~var_2.x)));
}

