struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<f32>, 24>;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> vec2<bool> {
    var var_0 = vec2<bool>(any(select(vec2<bool>(false, !global0.x), global0.xz, !select(global0.xx, global0.yz, true))), !global0.x);
    global1 = array<vec3<f32>, 24>();
    global1 = array<vec3<f32>, 24>();
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(abs(~u_input.a)), ~vec3<u32>(u_input.a.x, countOneBits(u_input.c.x), _wgslsmith_add_u32(4294967295u, u_input.d))), u_input.a | ~((u_input.b | vec3<u32>(18811u, u_input.c.x, 9249u)) | select(vec3<u32>(4294967295u, u_input.d, 1u), u_input.a, global0.x)));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 24u)];
    return global0.zz;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = false;
    var var_1 = Struct_2(u_input.e);
    let var_2 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(max(i32(-1i) * -2147483647i, -6667i), ~(-var_1.a), -2147483647i), vec3<i32>(global2.a, u_input.e, u_input.e));
    var var_3 = Struct_2(1i);
    var var_4 = arg_2;
    return vec3<bool>(false, var_0, !((-700f < arg_0) && (true && func_2(vec4<i32>(1i, 19515i, var_2.x, 0i), 2147483647i).x)));
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = !(!(!(!vec3<bool>(global0.x, false, true))));
    let var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(1164u << (arg_0.a.x % 32u), arg_0.a.x), ~u_input.a.x);
    let var_1 = -192f;
    global0 = !(!vec3<bool>(true, any(func_2(vec4<i32>(u_input.e, u_input.e, 55760i, -2147483647i), global2.a)), !global0.x));
    global0 = select(!(!vec3<bool>(false, select(global0.x, true, true), any(vec3<bool>(global0.x, global0.x, global0.x)))), vec3<bool>(true, func_2(~vec4<i32>(u_input.e, u_input.e, u_input.e, 841i), u_input.e).x, false), any(select(vec3<bool>(!global0.x, 1i != u_input.e, true), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~arg_0.a.x, Struct_1(arg_0.a, 10151u)), true)));
    return global0.x;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    global2 = Struct_2(0i);
    let var_0 = reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(37814i, global2.a), vec2<i32>(-297i, 1i)), u_input.e, global2.a, -2147483647i)) | -(vec4<i32>(select(-8132i, u_input.e, arg_1), ~global2.a, 1i, firstTrailingBit(u_input.e)) ^ min(vec4<i32>(9551i, u_input.e, -1i, u_input.e) | vec4<i32>(20485i, 0i, u_input.e, -2147483647i), vec4<i32>(u_input.e, 16335i, global2.a, 0i)));
    let var_1 = Struct_1(~firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(u_input.c.x, 1u), 0u)), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a.x, arg_2.b, u_input.a.x) >> (vec3<u32>(arg_0, arg_2.a.x, 1u) % vec3<u32>(32u))), ~vec3<u32>(1382u, u_input.d, arg_2.b))));
    var var_2 = u_input.d;
    let var_3 = global0.x;
    return select(select(select(vec3<bool>(global0.x, true, false || arg_1), vec3<bool>(!global0.x, any(vec4<bool>(true, arg_1, true, true)), true), select(func_3(-148f, 44792u, Struct_1(vec2<u32>(u_input.d, var_1.a.x), 0u)), !vec3<bool>(true, global0.x, true), global0.x)), vec3<bool>(global0.x, arg_1 != func_3(157f, u_input.a.x, var_1).x, arg_1), true), func_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1615f)), _wgslsmith_div_f32(-507f, 174f)), -948f, (global0.x | arg_1) && global0.x)), 0u, Struct_1(~(~vec2<u32>(u_input.a.x, 81481u)), var_1.b)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(2147483647i);
    var var_1 = ~(~_wgslsmith_mult_vec3_i32(firstTrailingBit(select(vec3<i32>(global2.a, u_input.e, u_input.e), vec3<i32>(global2.a, -28942i, global2.a), true)), -vec3<i32>(-4254i, var_0.a, 0i)));
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(157f * 1664f)))) >= _wgslsmith_f_op_f32(exp2(1f)), all(func_4(firstTrailingBit(1u) << (firstLeadingBit(4294967295u) % 32u), func_1(Struct_1(u_input.c, 67779u)), Struct_1(reverseBits(vec2<u32>(1u, u_input.c.x)), min(0u, u_input.d)))), !global0.x, !((func_4(u_input.a.x, global0.x, Struct_1(vec2<u32>(61281u, 40166u), u_input.b.x)).x | true) && global0.x));
    global0 = vec3<bool>(global0.x, false, var_2.x);
    global1 = array<vec3<f32>, 24>();
    let var_3 = ~_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 13038u, u_input.b.x), ~vec3<u32>(0u, 9913u, 43742u)), u_input.a));
    let var_4 = var_3;
    var_2 = vec4<bool>(true, ~var_4 == 29833u, !(!(!(!var_2.x))), func_1(Struct_1(u_input.b.xz, firstLeadingBit(11655u) << (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-1448f, global2.a ^ firstLeadingBit(global2.a), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b, abs(u_input.a)), u_input.a ^ ~(~vec3<u32>(u_input.a.x, var_3, 32941u))));
}

