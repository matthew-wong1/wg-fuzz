struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
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

var<private> global0: array<Struct_2, 6>;

var<private> global1: f32 = 1000f;

var<private> global2: Struct_3 = Struct_3(Struct_2(vec3<f32>(-460f, -591f, 250f)), 71424u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: f32) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(global2.a.a)));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(global2.a.a + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_3)), _wgslsmith_f_op_f32(arg_3 - -1052f), -1047f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global2.a.a))))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-877f, arg_2.x, -421f)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))) * _wgslsmith_f_op_vec3_f32(-global2.a.a))), arg_1.x);
    var var_2 = max(14812i, ~(i32(-1i) * -(~6351i)));
    var_0 = Struct_2(var_0.a);
    return _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(max(11792u, min(var_1.b, global2.b)), ~arg_0.x), arg_0), _wgslsmith_add_vec2_u32(arg_1.zy, _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(arg_1.x, 1u)), arg_1.zw, _wgslsmith_mod_vec2_u32(arg_0, firstTrailingBit(vec2<u32>(61267u, global2.b))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: bool) -> vec2<u32> {
    let var_0 = ~abs(arg_2.x);
    var var_1 = vec3<bool>(arg_3, arg_3, var_0 < _wgslsmith_div_u32(arg_2.x, _wgslsmith_div_u32(arg_2.x, 94516u)));
    let var_2 = !(!select(select(select(vec4<bool>(true, false, arg_3, arg_3), vec4<bool>(false, false, arg_3, arg_3), true), vec4<bool>(var_1.x, true, var_1.x, false), true), !vec4<bool>(false, var_1.x, arg_3, arg_3), vec4<bool>(var_1.x, true, var_1.x, any(vec3<bool>(true, false, true)))));
    let var_3 = Struct_1(11301u, global2.a.a.x, global2.b);
    let var_4 = vec3<f32>(1850f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f - arg_1.a.x)))), _wgslsmith_f_op_f32(-var_3.b));
    return ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, arg_2.x) << (~vec2<u32>(var_3.c, 17455u) % vec2<u32>(32u)), ~vec2<u32>(13126u, global2.b)));
}

fn func_2(arg_0: vec2<bool>) -> vec3<f32> {
    var var_0 = global2.b;
    global0 = array<Struct_2, 6>();
    var var_1 = -785f;
    global0 = array<Struct_2, 6>();
    let var_2 = func_4(-13890i, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1345f, global2.a.a.x, 1000f)))), max(vec3<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, global2.b), func_3(vec2<u32>(global2.b, 0u), vec4<u32>(global2.b, global2.b, global2.b, global2.b), global2.a.a.xx, -816f)), 39791u & _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 5043u, global2.b, 55437u), vec4<u32>(global2.b, global2.b, 6184u, 126962u))), countOneBits(~vec3<u32>(global2.b, 0u, 0u))), firstTrailingBit(select(_wgslsmith_add_i32(u_input.b.x, -16447i), u_input.b.x, arg_0.x)) > u_input.a.x);
    return vec3<f32>(_wgslsmith_f_op_f32(-957f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -431f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)))), _wgslsmith_f_op_f32(global2.a.a.x + _wgslsmith_f_op_f32(-311f - _wgslsmith_f_op_f32(f32(-1f) * -1238f))));
}

fn func_1() -> Struct_3 {
    let var_0 = true;
    global2 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(1706f)), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(ceil(global2.a.a.x)))), ~global2.b);
    global0 = array<Struct_2, 6>();
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(4294967295u & global2.b, 6u)], global2.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(var_1.a.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(var_0, var_0)))))) * vec3<f32>(var_1.a.a.x, 695f, _wgslsmith_f_op_f32(step(-137f, _wgslsmith_f_op_f32(f32(-1f) * -151f)))));
    return Struct_3(global2.a, ~(~_wgslsmith_div_u32(~64619u, ~6622u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(Struct_2(global2.a.a), global2.b);
    global2 = func_1();
    global0 = array<Struct_2, 6>();
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(~min(vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(-24031i, 1i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-16019i, u_input.a.x, u_input.a.x), u_input.a.xyx), u_input.b.x), vec2<bool>(true, true)), vec2<i32>(reverseBits(-2147483647i), select(u_input.a.x, -1i, any(vec3<bool>(true, true, false))))), u_input.b.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(1i), 17539i, -var_0) & u_input.b, countOneBits(vec3<i32>(var_0, var_0, 0i))));
}

