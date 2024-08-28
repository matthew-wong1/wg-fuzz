struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_5;

var<private> global2: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(2448u, 49798u, 0u, 40995u), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 4119u, 33289u), vec4<u32>(14098u, 0u, 130004u, 42254u), vec4<u32>(58988u, 40252u, 1u, 4294967295u), vec4<u32>(4294967295u, 32881u, 0u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    let var_0 = global1.b.x;
    var var_1 = _wgslsmith_f_op_f32(-global1.b.x);
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(-global1.b.xwx);
    let var_4 = i32(-1i) * -1i;
    return _wgslsmith_dot_vec3_u32(arg_2.xyx, ~vec3<u32>(arg_2.x, 1u, 1u) & ~(vec3<u32>(35723u, 16479u, arg_2.x) ^ arg_2.zyz));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = u_input.e;
    let var_1 = ~(select(~vec2<u32>(1u, 69839u), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.a, 15761u), ~vec2<u32>(13411u, 58685u)), select(vec2<bool>(false, arg_2), !vec2<bool>(true, arg_2), !vec2<bool>(true, arg_2))) << (vec2<u32>(1u, ~_wgslsmith_add_u32(1u, 3226u)) % vec2<u32>(32u)));
    var var_2 = Struct_5(any(select(select(!vec3<bool>(arg_2, arg_2, false), !vec3<bool>(true, global1.d, arg_2), global1.c), !select(vec3<bool>(global1.a, global1.d, arg_2), vec3<bool>(false, false, global1.d), vec3<bool>(arg_2, false, arg_2)), vec3<bool>(global1.b.x < global1.b.x, global1.a, true))), _wgslsmith_f_op_vec4_f32(-global1.b), !(arg_2 | true) || true, true);
    var var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, var_1.x, u_input.b), vec3<u32>(var_1.x, arg_1.a, 4294967295u)), _wgslsmith_mult_u32(4294967295u, u_input.c), 20824u), (21396u << (0u % 32u)) >= reverseBits(var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.b.x)), _wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, -112f) + 1835f), false | !(1u >= arg_1.a)), vec4<f32>(_wgslsmith_f_op_f32(-960f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))), -1079f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -900f)), 1000f), arg_1, arg_1);
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_3.b, vec4<f32>(-731f, 1456f, var_3.b.x, _wgslsmith_div_f32(-232f, var_2.b.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_3.a.a.c)), _wgslsmith_f_op_f32(abs(329f)), var_2.b.x, var_2.b.x))), vec4<f32>(var_3.a.a.c, var_2.b.x, global1.b.x, var_3.a.b));
    return select(select(vec3<bool>(!(arg_2 && false), !global1.c && any(vec3<bool>(false, false, true)), !(!arg_2)), vec3<bool>(global1.c, true, all(vec3<bool>(true, true, true))), true), !select(select(vec3<bool>(var_3.a.c, var_3.a.c, arg_2), select(vec3<bool>(arg_2, var_2.c, var_2.a), vec3<bool>(var_2.a, true, false), vec3<bool>(global1.a, true, var_2.d)), false), !select(vec3<bool>(false, false, false), vec3<bool>(false, global1.c, false), vec3<bool>(true, false, true)), select(vec3<bool>(var_2.a, false, true), !vec3<bool>(global1.a, false, var_2.c), select(vec3<bool>(true, global1.d, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), !all(!select(vec4<bool>(true, global1.a, arg_2, true), vec4<bool>(true, var_3.a.c, var_3.a.c, true), true)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    var var_0 = select(select(select(func_3(vec4<i32>(7201i, u_input.a, u_input.e, u_input.e), Struct_2(4294967295u), global1.d, firstTrailingBit(u_input.d)), select(vec3<bool>(global1.a, global1.c, false), !vec3<bool>(global1.d, false, false), true), vec3<bool>(all(vec4<bool>(global1.d, true, global1.d, global1.c)), all(vec2<bool>(true, false)), true)), select(vec3<bool>(select(false, true, false), global1.c, global1.c), vec3<bool>(false, all(vec2<bool>(global1.c, global1.a)), select(true, global1.a, global1.d)), all(select(vec2<bool>(global1.c, false), vec2<bool>(global1.d, global1.a), vec2<bool>(global1.a, false)))), true), !vec3<bool>(false, true, all(vec3<bool>(false, true, false))), global1.d);
    var_0 = !select(select(vec3<bool>(true, global1.a, any(vec3<bool>(global1.a, var_0.x, global1.c))), !select(vec3<bool>(false, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x), global1.a), vec3<bool>(select(var_0.x, true, true), any(vec2<bool>(false, false)), any(vec3<bool>(true, false, false)))), !select(func_3(vec4<i32>(u_input.e, 0i, u_input.d.x, u_input.e), arg_0, var_0.x, vec2<i32>(u_input.a, -1i)), vec3<bool>(true, global1.a, true), true), false);
    var_0 = func_3(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.e, 27323i, u_input.e, u_input.a), firstLeadingBit(~vec4<i32>(u_input.a, u_input.a, 1i, u_input.e))), firstTrailingBit(vec4<i32>(-2147483647i, u_input.d.x ^ 25068i, max(-9877i, -7997i), reverseBits(-20103i))), -_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-1i, 16894i, u_input.e, u_input.d.x), vec4<i32>(u_input.a, -1i, u_input.d.x, 0i), true), vec4<i32>(-6035i, 0i, u_input.a, 6820i), vec4<i32>(34766i, u_input.d.x, u_input.d.x, 18794i) & vec4<i32>(u_input.e, 2147483647i, -1i, -2147483647i))), arg_0, true, min(~u_input.d & abs(vec2<i32>(-40530i, -11576i)), _wgslsmith_clamp_vec2_i32(u_input.d, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), u_input.d), u_input.d)) << (abs(vec2<u32>(arg_0.a, 72589u)) % vec2<u32>(32u)));
    var var_1 = Struct_5(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.b.x, 748f, global1.b.x, global1.b.x)))))))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) * 759f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))));
    var_0 = func_3(abs(-(firstTrailingBit(vec4<i32>(u_input.a, u_input.d.x, -2147483647i, 2147483647i)) << (vec4<u32>(arg_1.x, arg_1.x, 52501u, 4294967295u) % vec4<u32>(32u)))), arg_0, true, u_input.d);
    return firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, arg_0.a, select(_wgslsmith_div_u32(~u_input.b, select(arg_0.a, 1u, global1.a)), 1u, global1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~30217u);
    global2 = array<vec4<u32>, 6>();
    var var_0 = global2[_wgslsmith_index_u32(func_2(Struct_2(~u_input.b), vec4<u32>(_wgslsmith_mult_u32(func_1(~1i, true, min(vec4<u32>(u_input.c, u_input.c, 44385u, 0u), global2[_wgslsmith_index_u32(u_input.b, 6u)])), _wgslsmith_add_u32(0u, ~39256u)), 19488u, 4294967295u, 19682u)), 6u)];
    let var_1 = vec2<bool>(false, false);
    let x = u_input.a;
    s_output = StorageBuffer(1203f, _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_0.x, 54832u, u_input.c, var_0.x) >> (global2[_wgslsmith_index_u32(var_0.x, 6u)] % vec4<u32>(32u))), ~(vec4<u32>(u_input.b, var_0.x, var_0.x, 4294967295u) ^ vec4<u32>(0u, 1u, var_0.x, var_0.x)), select(select(vec4<u32>(u_input.c, u_input.b, u_input.b, var_0.x), global2[_wgslsmith_index_u32(1868u, 6u)], var_1.x), ~vec4<u32>(1u, u_input.b, var_0.x, 1u), true)) >> (global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(77625u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.x, 39205u, u_input.c), var_0.wzw, var_1.x), _wgslsmith_mod_vec3_u32(var_0.yww, var_0.xzw))), 6u)] % vec4<u32>(32u)), select(max(vec3<i32>(-1i, u_input.a, u_input.e), -vec3<i32>(u_input.d.x, u_input.e, 2147483647i)) | vec3<i32>(-2147483647i, u_input.e, firstTrailingBit(4395i)), ~vec3<i32>(u_input.e, u_input.e | -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(4643i, -10978i), vec2<i32>(1925i, 2147483647i))), vec3<bool>(var_1.x | (global1.c == var_1.x), func_3(vec4<i32>(u_input.e, u_input.a, u_input.d.x, u_input.d.x) & vec4<i32>(-2147483647i, u_input.e, 2377i, u_input.d.x), Struct_2(19900u), true, ~vec2<i32>(u_input.d.x, u_input.a)).x, var_1.x)), ~1689u);
}

