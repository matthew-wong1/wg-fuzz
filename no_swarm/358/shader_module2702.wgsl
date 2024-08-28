struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(4294967295u);

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec4<bool>(true, true, true, false)), Struct_4(vec4<bool>(true, true, true, true)), Struct_4(vec4<bool>(false, true, true, true)), Struct_4(vec4<bool>(true, false, true, false)), Struct_4(vec4<bool>(true, false, false, true)), Struct_4(vec4<bool>(true, true, false, true)), Struct_4(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(false, true, false, true)), Struct_4(vec4<bool>(false, true, false, true)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_sub_vec4_u32(firstLeadingBit(firstTrailingBit(vec4<u32>(max(global0.a, global0.a), 47654u, global0.a & u_input.a.x, 44594u))), ~u_input.a);
    var var_1 = u_input.a;
    var_1 = countOneBits(~(~u_input.a));
    var var_2 = arg_0;
    var_2 = global1[_wgslsmith_index_u32(global0.a << (var_1.x % 32u), 9u)];
    return !(!vec4<bool>(_wgslsmith_f_op_f32(arg_2.a.x - 893f) >= arg_2.a.x, all(var_2.a.zx), var_2.a.x, !(u_input.c < u_input.b.x)));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_4(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), all(vec3<bool>(true, true, true))), vec4<bool>(any(vec2<bool>(false, true)), true, true, true), func_3(Struct_4(vec4<bool>(true, true, true, false)), _wgslsmith_div_f32(301f, 883f), Struct_2(vec4<f32>(750f, 1249f, 1891f, 1000f)))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-622f + -1212f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f + -973f)))), _wgslsmith_f_op_f32(-593f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1355f, _wgslsmith_f_op_f32(f32(-1f) * -456f)))))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(-664f, 1113f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -210f), -982f)));
    global0 = Struct_3(~(~_wgslsmith_mod_u32(10509u & u_input.a.x, global0.a >> (u_input.d.x % 32u))));
    global1 = array<Struct_4, 9>();
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(1u << (_wgslsmith_div_u32(4294967295u, global0.a >> (u_input.a.x % 32u)) % 32u), ~(32005u ^ global0.a) & ~u_input.d.x, _wgslsmith_f_op_f32(round(-1000f)) < _wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(var_1.x, var_1.x))), u_input.a.x), 9u)];
    return global0.a;
}

fn func_1() -> bool {
    var var_0 = u_input.d.xz;
    var_0 = vec2<u32>(global0.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global0.a, global0.a, var_0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, var_0.x), vec3<u32>(u_input.d.x, u_input.a.x, global0.a))), _wgslsmith_sub_u32(~4294967295u, func_2(-12879i)))) >> (u_input.a.xx % vec2<u32>(32u));
    var var_1 = 5843i;
    let var_2 = global1[_wgslsmith_index_u32(global0.a, 9u)];
    var_1 = _wgslsmith_add_i32(u_input.b.x, 2147483647i);
    return all(select(vec2<bool>(any(vec3<bool>(var_2.a.x, var_2.a.x, false)), _wgslsmith_div_u32(26291u, var_0.x) < abs(4294967295u)), vec2<bool>(select(!var_2.a.x, false, var_2.a.x), false), var_2.a.x));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    global0 = arg_3;
    var var_0 = min(_wgslsmith_sub_vec3_i32(abs(~vec3<i32>(u_input.b.x, 15252i, u_input.b.x)), countOneBits(u_input.b.yxw & vec3<i32>(u_input.b.x, u_input.b.x, u_input.e.x))), _wgslsmith_sub_vec3_i32(u_input.b.zxz, ~_wgslsmith_mult_vec3_i32(u_input.b.ywx, u_input.b.xxy))) & _wgslsmith_div_vec3_i32(u_input.b.yzx, select(vec3<i32>(30821i, u_input.c, _wgslsmith_dot_vec2_i32(u_input.e, u_input.e)), countOneBits(vec3<i32>(14569i, -58398i, u_input.b.x)), !vec3<bool>(arg_2, true, arg_2)));
    var var_1 = !(!(!func_3(global1[_wgslsmith_index_u32(~46u, 9u)], 1949f, arg_1).zz));
    var_0 = vec3<i32>(i32(-1i) * -_wgslsmith_mod_i32(55493i, u_input.e.x), -1i, reverseBits(1i)) ^ vec3<i32>(u_input.c, u_input.c ^ -_wgslsmith_mod_i32(-2147483647i, u_input.b.x), -9603i);
    let var_2 = arg_1;
    return Struct_2(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(u_input.d.x);
    var var_0 = _wgslsmith_div_i32(u_input.e.x, -1i) << (countOneBits(~u_input.d.x) % 32u);
    var var_1 = func_4(abs(u_input.d.x), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1115f, -779f, -1000f, 223f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1303f, -636f, 1190f, -121f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1796f, 215f, -497f, 702f) - vec4<f32>(-287f, -323f, 1000f, 719f))))), !func_1(), Struct_3(_wgslsmith_div_u32(4294967295u, (u_input.d.x & global0.a) >> (global0.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1.a))), _wgslsmith_f_op_vec4_f32(ceil(var_1.a)))))), -select(1i, u_input.e.x, func_3(global1[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_f_op_f32(-var_1.a.x), func_4(0u, Struct_2(var_1.a), false, Struct_3(u_input.a.x))).x), 1165f);
}

