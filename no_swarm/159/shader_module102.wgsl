struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 27>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(4294967295u, vec3<bool>(true, false, true), vec4<bool>(true, false, true, true), false), Struct_1(0u, vec3<bool>(false, false, true), vec4<bool>(false, true, false, true), true), Struct_1(4294967295u, vec3<bool>(false, true, false), vec4<bool>(true, false, true, false), false), Struct_1(39408u, vec3<bool>(true, true, true), vec4<bool>(true, false, false, true), true), Struct_1(1918u, vec3<bool>(true, true, true), vec4<bool>(false, true, false, false), true), Struct_1(0u, vec3<bool>(false, false, false), vec4<bool>(true, false, true, false), false), Struct_1(1u, vec3<bool>(true, true, false), vec4<bool>(true, true, false, true), true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_1(u_input.c.x, vec3<bool>(arg_1.d, !arg_2.x, all(vec3<bool>(false, false, arg_1.b.x)) == all(select(vec4<bool>(false, arg_1.c.x, arg_1.b.x, arg_2.x), arg_1.c, vec4<bool>(true, false, true, arg_1.b.x)))), arg_1.c, any(vec4<bool>(true, true, true, true)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_mult_vec2_i32(-(max(u_input.b, ~vec2<i32>(-2147483647i, u_input.d)) >> (~abs(vec2<u32>(var_0.a, 0u)) % vec2<u32>(32u))), u_input.b);
    let var_3 = 1u;
    global0 = u_input.b.x;
    return ~4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(min(arg_0.a, ~abs(_wgslsmith_div_u32(0u, u_input.c.x))), arg_0.c.yxx, vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1029f, -590f)))) < _wgslsmith_f_op_f32(round(-843f)), arg_0.c.x, false, arg_1.x < (reverseBits(arg_1.x) & (i32(-1i) * -3987i))), arg_0.b.x);
    global2 = 6844u;
    global0 = -19962i;
    global3 = array<Struct_1, 7>();
    var var_1 = select(_wgslsmith_mult_u32(~select(49731u, u_input.c.x, true), var_0.a) < 86918u, false, arg_0.d);
    return global3[_wgslsmith_index_u32((u_input.c.x ^ ~_wgslsmith_sub_u32(4294967295u, func_2(u_input.c, global3[_wgslsmith_index_u32(arg_0.a, 7u)], var_0.c.yz))) & ~(26568u << (_wgslsmith_dot_vec4_u32(min(vec4<u32>(16264u, u_input.c.x, 99983u, arg_0.a), u_input.c), select(vec4<u32>(u_input.c.x, 1u, 61488u, u_input.c.x), vec4<u32>(arg_0.a, 0u, u_input.c.x, u_input.c.x), var_0.c)) % 32u)), 7u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.wy, _wgslsmith_f_op_vec2_f32(arg_0.xx - vec2<f32>(arg_1.x, -1000f)), !vec2<bool>(arg_2.x, arg_2.x))))) + arg_1.xy);
    var var_1 = func_3(global1[_wgslsmith_index_u32(max(~_wgslsmith_add_u32(1u, u_input.c.x), func_2(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c), reverseBits(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 1u))), Struct_1(0u, !vec3<bool>(arg_2.x, false, true), !vec4<bool>(false, arg_2.x, false, true), true), select(select(arg_2.xy, vec2<bool>(arg_2.x, true), true), !vec2<bool>(arg_2.x, false), !arg_2.x))), 27u)], u_input.b);
    let var_2 = select(select(var_1.b.xx, !select(arg_2.yy, vec2<bool>(false, arg_2.x), vec2<bool>(true, false)), var_1.c.x), vec2<bool>(any(select(!vec4<bool>(true, true, var_1.d, true), var_1.c, select(vec4<bool>(false, var_1.d, false, false), var_1.c, vec4<bool>(var_1.d, false, arg_2.x, false)))), var_1.c.x), func_3(Struct_1(firstTrailingBit(min(u_input.c.x, 3356u)), !arg_2, !(!vec4<bool>(arg_2.x, var_1.c.x, true, var_1.b.x)), arg_2.x), select(abs(min(vec2<i32>(u_input.a, u_input.b.x), u_input.b)), vec2<i32>(-u_input.b.x, 71313i), true)).b.xz);
    var var_3 = Struct_1(countOneBits(func_2(~select(u_input.c, u_input.c, var_1.c), func_3(Struct_1(var_1.a, vec3<bool>(true, var_2.x, true), var_1.c, true), vec2<i32>(u_input.d, u_input.b.x)), func_3(func_3(Struct_1(u_input.c.x, vec3<bool>(true, arg_2.x, false), vec4<bool>(true, arg_2.x, false, true), var_2.x), vec2<i32>(2147483647i, 5577i)), -u_input.b).c.zx)), func_3(func_3(global3[_wgslsmith_index_u32(1u, 7u)], u_input.b), reverseBits(-u_input.b) & vec2<i32>(max(u_input.d, 35924i), -u_input.d)).b, !var_1.c, ~var_1.a == _wgslsmith_dot_vec3_u32(~(u_input.c.xzz >> (vec3<u32>(0u, var_1.a, u_input.c.x) % vec3<u32>(32u))), u_input.c.yxx));
    let var_4 = global1[_wgslsmith_index_u32(19479u, 27u)];
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, ~_wgslsmith_mult_u32(~(~u_input.c.x), min(u_input.c.x, _wgslsmith_mod_u32(1u, 52469u)))), 7u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-501f, -223f)))) + vec2<f32>(_wgslsmith_f_op_f32(step(263f, 1805f)), -1163f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1685f + -1518f), 2378f))));
    let var_2 = var_1.x;
    global0 = u_input.d;
    global1 = array<Struct_1, 27>();
    var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-234f, _wgslsmith_f_op_f32(var_1.x - var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1060i, firstLeadingBit(~abs(2147483647i)), -36015i, ~(_wgslsmith_mult_i32(u_input.a, u_input.a) << (min(4294967295u, 39154u) % 32u))), var_1.x, ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.d, func_1(vec4<f32>(var_1.x, var_1.x, -1266f, var_1.x), vec3<f32>(var_1.x, 979f, var_1.x), var_0.b), firstTrailingBit(u_input.d)), vec4<i32>(u_input.a, u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.b.x), select(0i, 2147483647i, var_0.c.x))));
}

