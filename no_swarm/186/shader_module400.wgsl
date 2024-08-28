struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec2<f32>(-446f, 1381f), 4294967295u, vec3<bool>(false, false, true));

var<private> global1: i32 = -9043i;

var<private> global2: vec3<f32> = vec3<f32>(138f, -355f, -107f);

var<private> global3: array<vec3<u32>, 9>;

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, vec2<f32>(582f, 314f), 10727u, vec3<bool>(true, false, false)), Struct_1(false, vec2<f32>(1089f, 1633f), 7261u, vec3<bool>(false, true, false)), Struct_1(false, vec2<f32>(-612f, 440f), 4294967295u, vec3<bool>(true, true, true)), Struct_1(false, vec2<f32>(-519f, -1025f), 8275u, vec3<bool>(false, true, true)), Struct_1(false, vec2<f32>(-779f, -1419f), 1u, vec3<bool>(false, true, true)), Struct_1(true, vec2<f32>(155f, 241f), 1u, vec3<bool>(true, true, false)), Struct_1(true, vec2<f32>(1573f, -1000f), 57471u, vec3<bool>(true, false, true)), Struct_1(true, vec2<f32>(1730f, -1547f), 0u, vec3<bool>(true, true, true)), Struct_1(true, vec2<f32>(473f, -777f), 85401u, vec3<bool>(true, false, false)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global2.x))))) - global2.x) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.x)))))));
    var_0 = 231f;
    var var_1 = select(firstLeadingBit(~firstLeadingBit(vec3<i32>(38906i, u_input.d, u_input.b))) >> (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u) ^ vec2<u32>(global0.c, global0.c), reverseBits(u_input.a.xz)), 9u)] % vec3<u32>(32u)), countOneBits(-select(~vec3<i32>(-28521i, u_input.c, 1i), abs(vec3<i32>(-28035i, u_input.c, 1i)), all(vec4<bool>(global0.a, true, global0.d.x, arg_0)))), global0.d);
    var var_2 = global2.x;
    var var_3 = global2.x;
    return _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(global0.c, ~(u_input.a.x | global0.c), 1u), ~(~min(global3[_wgslsmith_index_u32(u_input.a.x, 9u)] ^ u_input.a, abs(vec3<u32>(global0.c, global0.c, 85585u)))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-1i, u_input.c, u_input.b)), -(~vec3<i32>(u_input.c, -1i, u_input.d))) | (((vec3<i32>(24324i, -21165i, u_input.d) & vec3<i32>(5777i, u_input.b, u_input.c)) << (~vec3<u32>(arg_2.c, arg_2.c, arg_2.c) % vec3<u32>(32u))) >> (u_input.a % vec3<u32>(32u))), vec3<i32>(u_input.c, u_input.d, ~u_input.d));
    global3 = array<vec3<u32>, 9>();
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(~vec3<u32>(33445u, 5290u, u_input.a.x) & func_3(arg_0, false)), vec3<u32>(global0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c, u_input.a.x, 0u, arg_1.c), vec4<u32>(16777u, global0.c, arg_2.c, 36534u)), ~87182u) << (max(vec3<u32>(_wgslsmith_mod_u32(arg_1.c, global0.c), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c, 0u, 4294967295u, 0u), vec4<u32>(global0.c, 1u, arg_2.c, 55092u))), u_input.a) % vec3<u32>(32u))), 9u)];
    global4 = array<Struct_1, 9>();
    global0 = Struct_1(!all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(var_1.d.x, arg_2.d.x, arg_2.a, true), global0.a), select(vec4<bool>(false, arg_0, false, arg_1.d.x), vec4<bool>(false, arg_0, arg_0, var_1.d.x), arg_2.d.x), true)), vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -536f)), firstTrailingBit(0u), select(vec3<bool>(firstLeadingBit(53620u) < ~var_1.c, !all(arg_2.d.xy), false), arg_2.d, select(!vec3<bool>(global0.d.x, true, arg_0), vec3<bool>(14121u > global0.c, 0u == global0.c, !global0.d.x), var_1.d.x)));
    return _wgslsmith_f_op_f32(ceil(1f));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = 1u;
    let var_1 = arg_2.c;
    global1 = firstTrailingBit(-1i);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-global2.zz), global0.c, !select(select(arg_2.d, !global0.d, !global0.d), arg_2.d, arg_1));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x + -711f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_1, global4[_wgslsmith_index_u32(15499u, 9u)], global4[_wgslsmith_index_u32(u_input.a.x, 9u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global2.x)))))), arg_2.b.x);
    return ~(_wgslsmith_sub_u32(arg_0 | 1u, _wgslsmith_mult_u32(22855u, 19062u)) ^ 24236u) << (18089u % 32u);
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b.x, -1430f, true)) + _wgslsmith_f_op_f32(max(arg_0.x, global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b.x)) + -728f))), 360f));
    global1 = -32929i;
    return StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.a.zx >> (func_3(global0.a, global0.a).yz % vec2<u32>(32u)), firstLeadingBit(u_input.a.zx)), ~(~vec2<u32>(4294967295u, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_mod_u32(u_input.a.x >> (36972u % 32u), global0.c));
    let var_1 = 1000f;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.b)))), _wgslsmith_sub_u32(~func_1(global0.c, global0.d.x, Struct_1(global0.d.x, global2.zy, var_0, global0.d), 387f), _wgslsmith_mod_u32(var_0, 0u)) << (var_0 % 32u), ~func_3(!(true || global0.d.x), false).x);
}

