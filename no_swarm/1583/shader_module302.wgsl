struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: i32;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec3<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = abs(arg_0.d);
    global2 = u_input.d.wxw;
    let var_1 = Struct_2(arg_0.a, global2.x);
    global2 = abs((~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c, arg_0.c, arg_0.c), u_input.d.xzw) >> (~vec3<u32>(u_input.d.x, u_input.d.x, var_1.b) % vec3<u32>(32u))) << (u_input.d.wyw % vec3<u32>(32u)));
    let var_2 = !vec3<bool>(all(arg_0.b.yx), false, arg_0.b.x);
    return -153f;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-1239f - _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-37160i, arg_1.x, 2147483647i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, -2147483647i, 1i, 2147483647i), arg_0)), !vec3<bool>(arg_2, arg_2, arg_2), u_input.d.x, 2147483647i))));
    let var_1 = _wgslsmith_dot_vec3_i32(abs(arg_0.yzw), ~(-(~vec3<i32>(arg_0.x, arg_0.x, 3462i) >> (u_input.d.yxx % vec3<u32>(32u)))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(274f - _wgslsmith_div_f32(-1903f, 961f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-321f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2082f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(vec4<i32>(u_input.b.x, ~firstTrailingBit(i32(-1i) * -20104i), u_input.b.x, 61966i), vec3<bool>(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(func_2(vec4<i32>(-4877i, 1i, u_input.a, -48236i), vec2<i32>(u_input.c, u_input.b.x), true))) < _wgslsmith_f_op_f32(-213f + _wgslsmith_f_op_f32(trunc(1081f))), _wgslsmith_f_op_f32(-arg_1.x) <= -719f, !(~43333u <= _wgslsmith_dot_vec4_u32(vec4<u32>(21937u, 50883u, 43435u, global2.x), u_input.d))), 29189u, 2147483647i);
    var var_1 = !(!select(!vec2<bool>(true, var_0.b.x), !(!vec2<bool>(var_0.b.x, var_0.b.x)), var_0.b.xy));
    let var_2 = 130f;
    let var_3 = select(~u_input.d, u_input.d, !(!select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), !vec4<bool>(true, var_0.b.x, true, var_1.x), all(var_0.b.xy))));
    var var_4 = abs(abs((vec2<i32>(-1i) * -vec2<i32>(var_0.d, u_input.c)) | _wgslsmith_mod_vec2_i32(u_input.b.xx, u_input.b.yy)));
    return Struct_2(var_0.a, ~max(u_input.d.x >> (_wgslsmith_dot_vec3_u32(u_input.d.zwz, u_input.d.yyz) % 32u), ~23051u >> (var_3.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1453f));
    var var_1 = func_1(global2.zy, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(761f * -1000f)) + -450f), 1037f));
    var var_2 = vec2<bool>(any(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true))), true);
    let var_3 = var_2.x;
    var_1 = Struct_2(var_1.a, countOneBits(reverseBits(var_1.b >> (var_1.b % 32u))) & countOneBits(max(13814u, global2.x)));
    var var_4 = u_input.c;
    var var_5 = select(select(select(!(!vec2<bool>(var_2.x, true)), !(!vec2<bool>(true, var_2.x)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(var_2.x, false)), vec2<bool>(true, var_2.x), !var_2.x)), select(vec2<bool>(false, true), select(!vec2<bool>(var_2.x, true), vec2<bool>(true, true), true), vec2<bool>(var_2.x, any(vec3<bool>(true, var_2.x, true)))), !vec2<bool>(true, var_1.b <= 0u)), !(!select(vec2<bool>(true, true), vec2<bool>(var_2.x, false), true)), select(!vec2<bool>(all(vec2<bool>(var_2.x, false)), any(vec2<bool>(var_2.x, true))), vec2<bool>(true, any(vec4<bool>(var_2.x, true, true, var_2.x))), true));
    var var_6 = Struct_1(var_1.a, !select(vec3<bool>(true, true, var_2.x), vec3<bool>(var_2.x, !var_2.x, var_2.x), select(vec3<bool>(true, var_5.x, var_2.x), vec3<bool>(var_5.x, var_5.x, var_5.x), select(vec3<bool>(true, false, true), vec3<bool>(false, var_2.x, true), var_5.x))), ~u_input.d.x << (var_1.b % 32u), i32(-1i) * -reverseBits(26855i & var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 52215u);
}

