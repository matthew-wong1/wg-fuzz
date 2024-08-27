struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    global0 = array<vec2<f32>, 28>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1509f * arg_0.a.a));
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    return arg_0;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_1 {
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f - _wgslsmith_f_op_f32(round(func_2(arg_1).a.a)))) * arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.a - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -966f)), _wgslsmith_f_op_f32(select(-610f, arg_1.a.a, true)) <= _wgslsmith_f_op_f32(f32(-1f) * -1843f))))), arg_1.a.a));
    return arg_1.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_2(arg_0, vec2<bool>(true, true));
    var var_1 = arg_2.zzx;
    var var_2 = Struct_2(func_3(_wgslsmith_f_op_vec3_f32(-arg_2.zzx), func_2(Struct_3(Struct_1(124f), var_0.b.x & true)), vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -21606i), vec4<i32>(83983i, 25788i, u_input.b, u_input.b) ^ vec4<i32>(-1i, u_input.b, u_input.b, u_input.b)), -23355i)), select(!select(var_0.b, select(var_0.b, var_0.b, var_0.b), var_0.b), !vec2<bool>(true, any(var_0.b)), select(any(!vec3<bool>(var_0.b.x, true, true)), u_input.b < (-30413i | u_input.b), true)));
    var_2 = Struct_2(func_3(_wgslsmith_f_op_vec3_f32(exp2(arg_2.zxy)), func_2(func_2(Struct_3(Struct_1(-220f), true))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, u_input.b), vec3<i32>(u_input.b, -21295i, 5605i)), _wgslsmith_mod_vec3_i32(vec3<i32>(26428i, u_input.b, 62287i), vec3<i32>(-2147483647i, u_input.b, -1i)), abs(vec3<i32>(-1i, -10391i, -1i))), vec3<i32>(u_input.b & 1i, -28210i, -u_input.b))), !select(select(vec2<bool>(var_0.b.x, var_0.b.x), select(vec2<bool>(var_0.b.x, var_2.b.x), vec2<bool>(var_2.b.x, var_2.b.x), true), select(var_2.b, vec2<bool>(true, false), vec2<bool>(true, true))), select(select(var_2.b, vec2<bool>(var_2.b.x, var_2.b.x), vec2<bool>(true, true)), !vec2<bool>(true, var_2.b.x), var_0.b.x), select(var_2.b, vec2<bool>(false, false), true)));
    global0 = array<vec2<f32>, 28>();
    return func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.wxz)), func_2(func_2(Struct_3(arg_0, var_2.b.x))), ~(-(vec3<i32>(2147483647i, 0i, 40353i) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 20086u, u_input.a), vec3<u32>(74682u, 1u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a)) % vec3<u32>(32u)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    let var_0 = !arg_0.b && true;
    let var_1 = i32(-1i) * -u_input.b;
    return Struct_1(_wgslsmith_f_op_f32(-arg_0.a.a));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.a, _wgslsmith_f_op_f32(-arg_0.a.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a - var_0.a) * 321f)));
    let var_2 = arg_0;
    let var_3 = -1i;
    var var_4 = true;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(747f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(func_4(Struct_3(func_1(Struct_1(-2422f), global0[_wgslsmith_index_u32(u_input.a, 28u)], vec4<f32>(-2007f, -581f, -293f, 864f), 464f), any(vec3<bool>(true, true, false))), all(vec4<bool>(true, true, true, true))), all(vec3<bool>(true, true, true))), ~(~select(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 72982u), true)) ^ ~vec2<u32>(u_input.a, u_input.a), ~vec2<i32>(-1874i, -32431i), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), true), true), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))))));
    let var_1 = max(vec2<i32>(reverseBits(0i), i32(-1i) * -1i), vec2<i32>(_wgslsmith_div_i32(-21016i, ~select(u_input.b, 0i, false)), i32(-1i) * -1716i));
    let var_2 = Struct_2(func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(912f, -1000f, var_0.a)))), func_2(func_2(func_2(Struct_3(var_0, true)))), vec3<i32>(-2147483647i, 1i, u_input.b << (u_input.a % 32u)) | firstLeadingBit(countOneBits(vec3<i32>(var_1.x, u_input.b, u_input.b)))), select(!vec2<bool>(true, select(true, true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), false));
    var var_3 = !(!select(select(!vec4<bool>(false, var_2.b.x, true, false), !vec4<bool>(var_2.b.x, var_2.b.x, false, var_2.b.x), !var_2.b.x), vec4<bool>(true, var_2.b.x, all(vec3<bool>(var_2.b.x, var_2.b.x, false)), var_2.b.x), 4294967295u >= ~u_input.a));
    let var_4 = max(_wgslsmith_add_u32(abs(u_input.a), 1u), ~u_input.a) & 16359u;
    global0 = array<vec2<f32>, 28>();
    var_3 = vec4<bool>(true, var_2.b.x, -1323f != _wgslsmith_f_op_f32(-var_2.a.a), true);
    let var_5 = var_1.x;
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1242f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(3619f))), var_3.x))));
}

