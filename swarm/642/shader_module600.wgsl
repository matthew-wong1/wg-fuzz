struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: f32 = -436f;

var<private> global2: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(2147483647i, -1i, 2147483647i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(1f, 1f, 1f));
    let var_1 = 1i;
    global1 = var_0.a.x;
    global2 = array<vec3<i32>, 1>();
    global0 = array<u32, 30>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(min(var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1189f, var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1518f, 1325f, var_0.a.x) + var_0.a)), var_0.a))));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_2 {
    return Struct_2(vec2<i32>(_wgslsmith_clamp_i32(~u_input.b, _wgslsmith_sub_i32(34712i, 1i), firstLeadingBit(abs(78406i))), u_input.a.x), ~(~u_input.c.x), arg_2);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = func_3(false, _wgslsmith_clamp_vec2_u32(countOneBits(u_input.d.zy), max(u_input.d.xy & vec2<u32>(1u, 1u), firstLeadingBit(u_input.d.zz)), u_input.d.yz), arg_0.c);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1409f, -2449f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - var_1.c.a.x))))));
    let var_3 = !select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, any(vec2<bool>(true, true))));
    let var_4 = -17122i;
    return var_1.c;
}

fn func_1(arg_0: vec2<bool>) -> vec3<f32> {
    global1 = -1400f;
    let var_0 = func_4(func_3(select(true, arg_0.x, false), u_input.d.zx, func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * -1193f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f)), -1000f))), vec2<i32>(0i, -22143i) << ((u_input.d.yx << (countOneBits(u_input.d.xy) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global2 = array<vec3<i32>, 1>();
    global0 = array<u32, 30>();
    let var_1 = vec4<bool>(any(vec2<bool>(true, true)), false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) <= _wgslsmith_f_op_f32(ceil(863f)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(abs(var_0.a.x)))), var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)) - _wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.a, vec3<bool>(arg_0.x, arg_0.x, var_1.x))) - func_3(arg_0.x, vec2<u32>(global0[_wgslsmith_index_u32(39022u, 30u)], u_input.d.x), Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, -816f))).c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = ~global0[_wgslsmith_index_u32(22267u, 30u)];
    global0 = array<u32, 30>();
    global2 = array<vec3<i32>, 1>();
    var var_2 = Struct_2(vec2<i32>(u_input.e, u_input.a.x), abs(max(u_input.b, -31765i)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(false, false))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1494f, 526f, -678f) * vec3<f32>(1656f, -1509f, -519f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(321f, -379f, 981f))))));
    var var_3 = var_2.c;
    var_0 = !any(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    var_2 = func_3(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !any(vec3<bool>(false, true, true)))), u_input.d.xz, var_2.c);
    var_3 = func_4(func_3(true, u_input.d.xx, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c.a - var_2.c.a) - _wgslsmith_f_op_vec3_f32(sign(var_3.a))))), _wgslsmith_f_op_f32(sign(980f)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.a.x & -2147483647i, firstTrailingBit(abs(u_input.e))), vec2<i32>(u_input.a.x, countOneBits(1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), 1162f, vec4<i32>(~29468i, _wgslsmith_dot_vec2_i32(countOneBits(var_2.a), _wgslsmith_div_vec2_i32(var_2.a, u_input.a.xz) << (u_input.d.zy % vec2<u32>(32u))), u_input.e, -2147483647i | -u_input.e), _wgslsmith_f_op_f32(804f * func_3(true, vec2<u32>(1u, 0u), Struct_1(var_3.a)).c.a.x));
}

