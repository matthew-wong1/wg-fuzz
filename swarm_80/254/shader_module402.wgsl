struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 11> = array<i32, 11>(0i, 2147483647i, i32(-2147483648), 1i, -69030i, -56778i, 15778i, 4610i, -19487i, -29352i, 1245i);

var<private> global2: i32 = -10838i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> vec3<f32> {
    global1 = array<i32, 11>();
    global2 = -6834i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(-890f)), 1363f, _wgslsmith_f_op_f32(global0.c - global0.c)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-638f, -1032f)), 708f, -2646f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(-372f)), global0.c), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(arg_3))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.x + arg_2.x)))))), countOneBits(_wgslsmith_mult_vec4_u32(min(global0.d, global0.d), ~global0.d)));
    global1 = array<i32, 11>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, _wgslsmith_f_op_f32(-285f * arg_3)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) * vec2<f32>(var_0.a.x, -439f))), vec2<bool>(global0.b.x && all(vec2<bool>(var_0.b.x, var_0.b.x)), var_0.b.x), _wgslsmith_f_op_f32(-564f - _wgslsmith_div_f32(-710f, _wgslsmith_div_f32(1245f, arg_2.x))), ~(global0.d | vec4<u32>(arg_1, 44150u, arg_1, arg_1))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1074f + arg_3), -748f));
    var_0 = var_1.a;
    return var_1.a;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    return func_3(1u, 5481u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1050f, 1029f <= global0.c))));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    return vec3<bool>(!(!all(func_3(arg_0.d.x, 0u, vec3<f32>(arg_0.a.x, arg_0.c, 1590f), -266f).b)), all(global0.b), all(vec4<bool>(!arg_0.b.x, false, !global0.b.x, arg_0.b.x)) & any(!select(vec3<bool>(global0.b.x, false, arg_0.b.x), vec3<bool>(global0.b.x, true, arg_0.b.x), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(-firstTrailingBit(abs(0i)), global1[_wgslsmith_index_u32(global0.d.x, 11u)], -reverseBits(2147483647i));
    var var_1 = global0.d.yzy;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(447f, 1084f, -1672f));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, global0.c, 1196f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, var_2.x, 514f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1298f, -908f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, var_2.x, -771f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 360f, global0.c) + vec3<f32>(117f, global0.c, var_2.x)), vec3<f32>(-1833f, global0.c, -783f)))))));
    let var_3 = !(!(!func_4(func_1(Struct_2(Struct_1(global0.a, vec2<bool>(true, false), -2581f, vec4<u32>(global0.d.x, global0.d.x, var_1.x, global0.d.x)))))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a, global0.a)), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(363f, 289f, var_3.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2()).x, func_3(4294967295u, 0u, vec3<f32>(global0.c, global0.a.x, global0.a.x), 792f).a.x)), vec4<u32>(var_1.x, ~global0.d.x, 4294967295u, ~(1u & global0.d.x))));
    var var_5 = select(~global0.d.wwx, firstTrailingBit(~vec3<u32>(var_4.a.d.x, global0.d.x, var_1.x << (var_1.x % 32u))), func_4(func_3(_wgslsmith_div_u32(22605u, 107556u), _wgslsmith_add_u32(20485u, var_4.a.d.x), vec3<f32>(_wgslsmith_f_op_f32(step(-202f, var_4.a.c)), 1f, _wgslsmith_f_op_vec3_f32(func_2()).x), var_4.a.c)).x);
    global0 = var_4.a;
    var_2 = vec3<f32>(284f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_4.a.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, ~_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], -1i, -24967i), vec3<i32>(2147483647i, 2147483647i, u_input.a.x))), u_input.b), _wgslsmith_f_op_f32(var_2.x + global0.a.x));
}

