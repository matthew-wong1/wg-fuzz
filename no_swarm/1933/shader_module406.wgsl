struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, true, false, true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: u32) -> vec3<u32> {
    var var_0 = Struct_2(max(~(~1i), countOneBits(1i) | ~_wgslsmith_clamp_i32(-2147483647i, 35761i, -27842i)));
    var var_1 = Struct_1(vec3<i32>(~(i32(-1i) * -var_0.a), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-13504i, -12593i), -vec2<i32>(var_0.a, -7311i)), ~var_0.a), ~(_wgslsmith_div_i32(2147483647i, -1i) << (~u_input.a.x % 32u))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.x, 445f, arg_0)), arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-100f, -517f))))), arg_1, arg_1.zz);
    return ~u_input.a;
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> Struct_1 {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let var_0 = -712f;
    let var_1 = Struct_2(~firstTrailingBit(arg_1));
    let var_2 = Struct_1(~(~(vec3<i32>(var_1.a, arg_0.x, 2147483647i) << (vec3<u32>(u_input.a.x, 9149u, 95691u) % vec3<u32>(32u))) ^ firstTrailingBit(reverseBits(arg_0))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1000f) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0, -608f), vec2<f32>(var_0, var_0))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, var_0))) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_0), vec2<f32>(-1381f, 1185f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, 509f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -426f, 555f, -571f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 306f, 540f) + vec4<f32>(1000f, var_0, -1192f, -933f)))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(431f, var_0))), vec2<f32>(var_0, _wgslsmith_f_op_f32(round(166f)))))));
    return var_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_2 {
    global0 = array<bool, 6>();
    let var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = !((_wgslsmith_div_f32(-1065f, _wgslsmith_f_op_f32(-arg_0.x)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(816f))))) & global0[_wgslsmith_index_u32(u_input.a.x, 6u)]);
    var var_3 = func_3(~(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, -27483i, 1i), vec3<i32>(-1i, -51378i, 7010i), vec3<i32>(var_0.a, 1i, var_0.a)), ~vec3<i32>(arg_1.a, -273i, var_0.a)) >> (~func_2(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], vec4<f32>(arg_0.x, 1212f, 1805f, -182f), u_input.a.x) % vec3<u32>(32u))), -1i);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let var_0 = arg_3.c.zwx;
    let var_1 = -100f;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 6>();
    let var_0 = func_4(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(-11558i), firstLeadingBit(-52786i), ~(-1i)), firstTrailingBit(min(vec3<i32>(-33631i, 1i, -1i), vec3<i32>(2147483647i, 293i, -40907i))), vec3<i32>(2147483647i, firstLeadingBit(-49583i), _wgslsmith_dot_vec2_i32(vec2<i32>(14272i, 70663i), vec2<i32>(48849i, 33377i)))), _wgslsmith_div_vec2_f32(vec2<f32>(222f, -1106f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1572f, 666f), vec2<f32>(1288f, -870f))))), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-166f, -677f)))))), func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-494f, -920f, 819f) - vec3<f32>(1f, 1f, 1f)))), Struct_2((-1i >> (u_input.a.x % 32u)) | ~16545i)), func_3(abs(func_3(~vec3<i32>(27939i, -2147483647i, 12602i), _wgslsmith_div_i32(29666i, 4254i)).a), abs(func_3(firstLeadingBit(vec3<i32>(-12656i, 43133i, 1i)), ~(-8616i)).a.x)), Struct_1(~(vec3<i32>(-1i) * -vec3<i32>(0i, -11066i, 34716i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-815f, 415f, true)), -1150f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 547f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1317f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(553f - -1227f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1034f + -482f) + _wgslsmith_f_op_f32(ceil(782f)))), vec2<f32>(870f, _wgslsmith_div_f32(-652f, 419f))));
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.a);
}

