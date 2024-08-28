struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31>;

var<private> global1: array<i32, 5>;

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<bool, 27> = array<bool, 27>(true, true, false, true, true, false, true, false, true, false, false, false, false, true, false, false, false, true, true, false, false, false, true, false, true, false, true);

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_sub_u32(67888u, max(_wgslsmith_div_u32(1898u, ~1u), u_input.d));
    var var_1 = _wgslsmith_mult_i32(reverseBits(-firstTrailingBit(-1i)), u_input.a.x);
    let var_2 = Struct_2(vec2<bool>(false, true), _wgslsmith_div_u32(~(~u_input.e), u_input.b), vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.a.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)), global3[_wgslsmith_index_u32(firstTrailingBit(global4.c.x ^ 77678u), 27u)]), 149f);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global4.a.x)), _wgslsmith_f_op_f32(-380f + 554f));
    let var_4 = var_2;
    return var_4.a.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    global3 = array<bool, 27>();
    var var_0 = Struct_2(global4.d.zz, global4.c.x, vec2<bool>(all(arg_1.d), !global4.e), -1434f);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(333f)), 1649f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.a.x))), _wgslsmith_f_op_f32(-var_0.d));
    global4 = global2[_wgslsmith_index_u32(23773u, 2u)];
    var var_2 = ~(~(~_wgslsmith_div_u32(reverseBits(4294967295u), _wgslsmith_sub_u32(0u, arg_1.b))));
    return ~31032u;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(484f, 347f, 2067f) * vec3<f32>(-724f, global4.a.x, global4.a.x))) + global4.a)), 58704u, ~(~global4.c), !vec3<bool>(global4.d.x, all(vec2<bool>(arg_0.x, true)), func_2(12696i)), any(select(!vec4<bool>(false, true, global4.d.x, arg_0.x), select(!vec4<bool>(global4.e, false, global3[_wgslsmith_index_u32(1u, 27u)], global4.d.x), vec4<bool>(false, true, arg_0.x, global3[_wgslsmith_index_u32(4294967295u, 27u)]), arg_0.x), vec4<bool>(arg_0.x & global4.d.x, u_input.a.x < global1[_wgslsmith_index_u32(global4.c.x, 5u)], true, u_input.c <= global4.c.x))));
    let var_0 = Struct_2(select(vec2<bool>(select(!global3[_wgslsmith_index_u32(global4.c.x, 27u)], !arg_0.x, any(vec3<bool>(global4.e, global3[_wgslsmith_index_u32(global4.c.x, 27u)], true))), global4.e), global4.d.xz, arg_0.x || !(!global4.d.x)), select(reverseBits(0u) << (global4.c.x % 32u), global4.c.x, !(!(!global4.d.x))), arg_0.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.a.x, global4.a.x)) + -2022f) + global4.a.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(global4.a)), abs(((u_input.b | u_input.c) | func_3(vec2<i32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(9270u, 5u)]), global2[_wgslsmith_index_u32(u_input.e, 2u)], global4.a)) | 16675u), firstLeadingBit(~global4.c), global4.d, any(select(vec2<bool>(any(vec4<bool>(var_0.c.x, true, false, true)), var_0.a.x & false), !select(vec2<bool>(true, var_0.c.x), arg_0.xx, global4.d.yy), any(vec4<bool>(global4.e, true, true, global3[_wgslsmith_index_u32(u_input.d, 27u)])) || true)));
    var var_2 = global2[_wgslsmith_index_u32(~(~(~var_1.b) & abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_1.c.x), vec3<u32>(1u, var_0.b, var_1.c.x)))), 2u)];
    let var_3 = !global3[_wgslsmith_index_u32(var_0.b, 27u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(321f, _wgslsmith_f_op_f32(306f + _wgslsmith_f_op_f32(max(global4.a.x, var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -373f))), _wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.x, -275f, 1401f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.x, var_1.a.x, var_1.a.x)))))), ~countOneBits(func_3(~vec2<i32>(global1[_wgslsmith_index_u32(var_1.c.x, 5u)], 0i), global2[_wgslsmith_index_u32(11364u, 2u)], _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1980f, 1394f, 1000f), var_2.a, vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 27u)], arg_0.x))))), var_2.c, select(select(!vec3<bool>(var_2.d.x, arg_0.x, arg_0.x), !var_1.d, global4.d), select(select(!var_2.d, vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(global4.e, var_0.a.x, var_1.e), var_1.d)), vec3<bool>(true, 4294967295u < global4.b, true), any(vec4<bool>(arg_0.x, global4.d.x, var_0.c.x, arg_0.x))), !arg_0), all(var_2.d.xz) & false);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(vec3<bool>(any(select(!vec3<bool>(global3[_wgslsmith_index_u32(60432u, 27u)], global4.d.x, global3[_wgslsmith_index_u32(108064u, 27u)]), select(global4.d, global4.d, global4.d), vec3<bool>(false, false, false))), global4.d.x | ((540f < global4.a.x) | any(vec4<bool>(true, global4.d.x, global3[_wgslsmith_index_u32(u_input.d, 27u)], true))), all(vec3<bool>(true, true, true))));
    let var_0 = global4.a.x;
    let var_1 = abs(vec4<u32>(50444u, ~_wgslsmith_mod_u32(~u_input.b, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.d, 31u)], global0[_wgslsmith_index_u32(global4.b, 31u)])), global4.c.x, global4.c.x));
    global0 = array<vec4<u32>, 31>();
    global0 = array<vec4<u32>, 31>();
    global2 = array<Struct_1, 2>();
    global0 = array<vec4<u32>, 31>();
    var var_2 = all(!global4.d.xy);
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(var_1, ~var_1) | global0[_wgslsmith_index_u32((global4.c.x << (4294967295u % 32u)) << (1u % 32u), 31u)]), ((~global1[_wgslsmith_index_u32(1u, 5u)] ^ global1[_wgslsmith_index_u32(5161u, 5u)]) & ~(-u_input.a.x)) ^ (-2147483647i | -countOneBits(u_input.a.x)));
}

