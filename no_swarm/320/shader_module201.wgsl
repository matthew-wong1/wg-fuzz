struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, true, false, false, false, false, false, true, false, false, true, false, false, false, true, true, true, false, false);

var<private> global1: f32 = 760f;

var<private> global2: array<Struct_3, 16>;

var<private> global3: Struct_3;

var<private> global4: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec2<bool>(true, true), Struct_1(23206u)), Struct_3(vec2<bool>(true, true), Struct_1(17084u)), Struct_3(vec2<bool>(false, true), Struct_1(0u)), Struct_3(vec2<bool>(false, false), Struct_1(4294967295u)), Struct_3(vec2<bool>(true, false), Struct_1(1u)), Struct_3(vec2<bool>(true, true), Struct_1(23987u)), Struct_3(vec2<bool>(false, false), Struct_1(1u)), Struct_3(vec2<bool>(true, false), Struct_1(4294967295u)), Struct_3(vec2<bool>(false, true), Struct_1(15443u)), Struct_3(vec2<bool>(true, false), Struct_1(1u)), Struct_3(vec2<bool>(true, false), Struct_1(1u)), Struct_3(vec2<bool>(false, true), Struct_1(1u)), Struct_3(vec2<bool>(false, true), Struct_1(0u)), Struct_3(vec2<bool>(true, false), Struct_1(1u)), Struct_3(vec2<bool>(true, false), Struct_1(4294967295u)), Struct_3(vec2<bool>(false, true), Struct_1(84145u)), Struct_3(vec2<bool>(false, false), Struct_1(0u)), Struct_3(vec2<bool>(true, true), Struct_1(4294967295u)), Struct_3(vec2<bool>(false, true), Struct_1(1u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = abs(select(-2147483647i, -3695i, _wgslsmith_f_op_f32(-910f + 2125f) <= _wgslsmith_f_op_f32(ceil(arg_0.x)))) ^ -(~1i);
    return 380f;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> vec3<i32> {
    global2 = array<Struct_3, 16>();
    global0 = array<bool, 20>();
    let var_0 = i32(-1i) * -1i;
    global0 = array<bool, 20>();
    var var_1 = Struct_3(global3.a, arg_1.b);
    return vec3<i32>(var_0, -43374i, -var_0);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_i32(-1i, 1i);
    var var_1 = 9933u | u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)));
    let var_3 = global3.b;
    let var_4 = max(1269u << (firstLeadingBit(~1u) % 32u), arg_2.a);
    return -_wgslsmith_sub_vec3_i32(func_3((u_input.a ^ u_input.a) & u_input.a, Struct_2(~0i, arg_2, var_4 & arg_1, Struct_1(u_input.a.x), arg_0)), ~vec3<i32>(14450i << (arg_0.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 26504i), vec2<i32>(-9070i, 0i)), -18425i));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> u32 {
    global4 = array<Struct_3, 19>();
    global1 = -478f;
    global3 = global2[_wgslsmith_index_u32(arg_1, 16u)];
    var var_0 = Struct_3(global3.a, Struct_1(_wgslsmith_mult_u32((arg_1 ^ 0u) >> (4294967295u % 32u), ~(~global3.b.a))));
    global1 = _wgslsmith_f_op_f32(-216f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1069f)))));
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(302f * -1248f), -679f)))), _wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1830f, -1000f, 1089f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-373f, 411f) - -870f))));
    let var_0 = global4[_wgslsmith_index_u32(func_4(i32(-1i) * -2147483647i, global3.b.a, (vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(32778i, -2147483647i, 1i, -13106i), vec4<i32>(-2147483647i, 1i, 0i, -1i)), 1i) << (u_input.a.zxx % vec3<u32>(32u))) & _wgslsmith_div_vec3_i32(select(vec3<i32>(2147483647i, 0i, -39138i), func_2(Struct_1(4294967295u), global3.b.a, global3.b, vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), ~(vec3<i32>(2147483647i, 0i, -2147483647i) >> (u_input.a.zwy % vec3<u32>(32u))))), 19u)];
    let var_1 = var_0.b;
    let var_2 = Struct_1(~6073u);
    let var_3 = global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(u_input.a.x, max(var_1.a >> (var_2.a % 32u), 1u) << (_wgslsmith_mod_u32(1u, var_0.b.a) % 32u))), 19u)];
    let var_4 = -61970i;
    var var_5 = global4[_wgslsmith_index_u32(1u, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_4, -59438i), u_input.a);
}

