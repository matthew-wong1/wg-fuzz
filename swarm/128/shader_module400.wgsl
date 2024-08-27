struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2>;

var<private> global1: f32;

var<private> global2: vec3<bool>;

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<f32>(-486f, 862f), 1i, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(315f, 479f), 56752i, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(1341f, -613f), 61152i, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(-604f, 1864f), 1i, vec3<bool>(false, true, false)), Struct_1(vec2<f32>(1000f, 721f), 36219i, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(-990f, -1062f), 1i, vec3<bool>(true, false, false)), Struct_1(vec2<f32>(670f, 1000f), 0i, vec3<bool>(false, true, false)), Struct_1(vec2<f32>(1253f, -1266f), -21951i, vec3<bool>(true, true, false)), Struct_1(vec2<f32>(-1000f, -2816f), 0i, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-1000f, 176f), -1i, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(527f, 1085f), -1i, vec3<bool>(false, true, true)), Struct_1(vec2<f32>(888f, -828f), -1i, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-1520f, 717f), -1i, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-1476f, 809f), -19911i, vec3<bool>(false, true, true)), Struct_1(vec2<f32>(367f, 960f), 25152i, vec3<bool>(false, true, false)), Struct_1(vec2<f32>(-210f, -2334f), -42724i, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(1181f, 187f), 0i, vec3<bool>(true, true, false)), Struct_1(vec2<f32>(531f, 100f), 0i, vec3<bool>(true, false, false)), Struct_1(vec2<f32>(1000f, 470f), -1i, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(972f, -844f), -49039i, vec3<bool>(false, true, true)), Struct_1(vec2<f32>(178f, 227f), 0i, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(-582f, -622f), 0i, vec3<bool>(false, true, true)), Struct_1(vec2<f32>(-120f, 364f), -33822i, vec3<bool>(false, true, false)), Struct_1(vec2<f32>(353f, 772f), 2147483647i, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(539f, 663f), 30135i, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(321f, -786f), -3108i, vec3<bool>(false, true, false)), Struct_1(vec2<f32>(371f, 1337f), 13020i, vec3<bool>(true, true, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> f32 {
    var var_0 = arg_0;
    global4 = array<Struct_1, 27>();
    var var_1 = ~19184u;
    var var_2 = u_input.a.x;
    return 700f;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = ~_wgslsmith_mod_u32(59570u, reverseBits(select(~global3.a, global3.a, any(global2.yx))));
    var_0 = global3.a;
    var var_1 = ~(~arg_0.a);
    global1 = -1880f;
    global4 = array<Struct_1, 27>();
    return u_input.a.zzw;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_2) -> f32 {
    global2 = select(select(vec3<bool>(false, !(226f > arg_1.x), _wgslsmith_f_op_f32(abs(arg_1.x)) < _wgslsmith_f_op_f32(arg_1.x + 1050f)), select(!select(vec3<bool>(arg_2, true, true), vec3<bool>(true, false, true), global2.x), select(!vec3<bool>(global2.x, false, global2.x), !vec3<bool>(global2.x, arg_2, true), vec3<bool>(false, arg_2, true)), true), false), !(!vec3<bool>(false, arg_2 == false, true)), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, arg_2, true))), !(!vec3<bool>(true, true, global2.x)), vec3<bool>(arg_2, !any(vec3<bool>(arg_2, false, global2.x)), false)));
    global3 = Struct_2(~arg_0.x, 32714u);
    var var_0 = arg_3;
    global4 = array<Struct_1, 27>();
    global0 = array<vec2<f32>, 2>();
    return -2101f;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    global4 = array<Struct_1, 27>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~func_3(Struct_2(global3.a, global3.a), u_input.d, Struct_1(vec2<f32>(-523f, arg_0.a.x), -2147483647i, vec3<bool>(global2.x, true, arg_0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_0.a.x, arg_1, -632f) * vec4<f32>(-1891f, arg_0.a.x, arg_0.a.x, -592f))), all(select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(arg_0.c.x, false, true, true), true)), Struct_2(u_input.a.x, func_3(Struct_2(0u, global3.a), u_input.d, Struct_1(global0[_wgslsmith_index_u32(65503u, 2u)], 18320i, arg_0.c)).x))) + 1000f));
    global1 = _wgslsmith_f_op_f32(var_0.x * -1153f);
    global4 = array<Struct_1, 27>();
    global3 = Struct_2(min(1820u, ~(~0u)), _wgslsmith_dot_vec3_u32(u_input.a.xxw, ~vec3<u32>(33915u, global3.b << (u_input.a.x % 32u), ~0u)));
    return !arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(1702f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(186f, _wgslsmith_f_op_f32(372f * 695f), global2.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1040f, 425f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(265f, 564f)))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-761f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-451f)))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(u_input.b, u_input.a.x), u_input.a.yy)));
    let var_1 = func_2(global4[_wgslsmith_index_u32(45405u, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))));
    var var_2 = !any(var_1.zy) | (2147483647i >= -_wgslsmith_mult_i32(~14320i, -u_input.d.x));
    let var_3 = Struct_2(reverseBits(1u), 7189u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), u_input.d)) | abs(select(vec2<i32>(u_input.c, u_input.d.x), u_input.d, false)), -vec2<i32>(_wgslsmith_sub_i32(u_input.d.x, 2147483647i), select(12441i, -9556i, false))), ~u_input.a.x | _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(u_input.a.wx), u_input.a.yy), ~u_input.a.yz), 2147483647i);
}

