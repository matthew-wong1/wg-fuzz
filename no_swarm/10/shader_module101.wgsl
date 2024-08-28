struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: vec2<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(28426u, 1117u, 37574u, 1u, 29831u, 32402u, 9852u, 41148u, 10692u, 0u, 65216u);

var<private> global1: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global1 = u_input.b;
    global1 = u_input.a.x;
    global0 = array<u32, 11>();
    global1 = abs(u_input.a.x);
    let var_0 = !(1u > u_input.d);
    return select(vec3<bool>(var_0, !var_0, !(!all(vec4<bool>(false, false, var_0, false)))), !select(select(vec3<bool>(var_0, true, true), vec3<bool>(true, var_0, var_0), select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, false, var_0), vec3<bool>(false, true, false))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, var_0, false), vec3<bool>(true, var_0, var_0)), select(vec3<bool>(var_0, true, false), vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, false)), select(vec3<bool>(true, var_0, var_0), vec3<bool>(false, true, true), vec3<bool>(false, true, var_0))), true), true);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: f32, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_2(false, vec4<bool>(!(!all(arg_0.zxw)), !arg_0.x, false, any(select(arg_0.wwx, arg_0.zxz, func_3(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)])))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 11u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 11u)]), 1u), u_input.d) | (firstTrailingBit(abs(u_input.d)) & _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.d, 33665u, 4294967295u, 30438u), vec4<u32>(4294967295u, 0u, 1u, 0u)), min(vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 11u)], 0u, u_input.d), vec4<u32>(global0[_wgslsmith_index_u32(7593u, 11u)], u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], global0[_wgslsmith_index_u32(u_input.d, 11u)])))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -531f), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, global0[_wgslsmith_index_u32(1u, 11u)]), vec4<u32>(1u, u_input.d, 18323u, u_input.d)), _wgslsmith_dot_vec2_u32(~vec2<u32>(41915u, u_input.d), ~vec2<u32>(4294967295u, u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), -482f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))))), arg_0.x));
    let var_1 = vec2<bool>(all(vec3<bool>(false, select(any(arg_0.yzz), arg_0.x, all(arg_0)), true)), all(select(select(vec4<bool>(true, true, true, arg_0.x), vec4<bool>(true, arg_0.x, false, true), var_0.b), select(!vec4<bool>(false, arg_0.x, var_0.d.e, false), select(arg_0, arg_0, vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x)), select(vec4<bool>(arg_0.x, arg_0.x, var_0.d.e, var_0.a), vec4<bool>(false, false, false, true), arg_0)), false)));
    let var_2 = var_0;
    global1 = 1i;
    let var_3 = Struct_2(true, select(var_0.b, select(select(select(vec4<bool>(var_0.b.x, true, false, true), vec4<bool>(false, var_0.d.e, var_0.b.x, arg_0.x), arg_0), vec4<bool>(false, false, var_2.a, true), select(vec4<bool>(false, false, false, var_0.b.x), vec4<bool>(false, var_1.x, false, var_2.a), arg_0.x)), arg_0, select(select(arg_0, vec4<bool>(false, true, true, false), var_0.b), select(var_0.b, vec4<bool>(false, true, var_0.a, var_2.d.e), vec4<bool>(arg_0.x, true, false, var_0.a)), true)), var_2.b.x), global0[_wgslsmith_index_u32(var_0.d.b.x, 11u)] & 1u, var_2.d);
    return vec3<bool>(true, !var_3.b.x, any(vec3<bool>(true, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_0.c, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]) >= 22526u, var_3.b.x)));
}

fn func_1(arg_0: vec2<f32>) -> bool {
    let var_0 = all(select(!select(func_2(vec4<bool>(false, false, true, true), u_input.b, arg_0.x, vec3<f32>(-620f, arg_0.x, arg_0.x)), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), !func_3(abs(u_input.d)), vec3<bool>((arg_0.x < 392f) || true, global0[_wgslsmith_index_u32(u_input.d, 11u)] == 9736u, _wgslsmith_dot_vec3_i32(u_input.a.xzz, u_input.a.xyx) == 28581i)));
    var var_1 = ~(u_input.d >> (~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 65360u, u_input.d, 0u)), firstLeadingBit(vec4<u32>(u_input.d, 23400u, u_input.d, 1u))) % 32u));
    let var_2 = Struct_2(var_0, vec4<bool>(all(select(!vec3<bool>(var_0, var_0, var_0), func_2(vec4<bool>(var_0, true, var_0, true), u_input.b, -488f, vec3<f32>(167f, arg_0.x, -1000f)), !vec3<bool>(true, true, var_0))), var_0, var_0, _wgslsmith_f_op_f32(ceil(arg_0.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)))), global0[_wgslsmith_index_u32(u_input.d, 11u)], Struct_1(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 11u)], 11u)], 31224u)), vec2<u32>(u_input.d, _wgslsmith_mult_u32(65037u, 46639u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1574f, -601f, false))), arg_0.x, any(select(!vec2<bool>(var_0, true), func_3(1u).yy, vec2<bool>(var_0, false)))));
    global0 = array<u32, 11>();
    let var_3 = var_2.b.zyz;
    return var_2.d.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(select(!(u_input.a.x == (i32(-1i) * -14029i)), !func_1(vec2<f32>(-1521f, 670f)) & true, false), _wgslsmith_dot_vec2_u32((vec2<u32>(global0[_wgslsmith_index_u32(0u, 11u)], u_input.d) >> (vec2<u32>(4294967295u, 69825u) % vec2<u32>(32u))) ^ ~vec2<u32>(global0[_wgslsmith_index_u32(38220u, 11u)], u_input.d), ~vec2<u32>(1u, 11776u) & countOneBits(vec2<u32>(0u, global0[_wgslsmith_index_u32(u_input.d, 11u)]))) <= abs(abs(~u_input.d)));
    global1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c.x, select(2147483647i, u_input.a.x, false)) >> (~80801u % 32u), _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.b, -33908i, u_input.c.x, 1i), vec4<i32>(1i, u_input.b, u_input.a.x, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, 23683i, u_input.c.x), u_input.a))), u_input.c.x) ^ _wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(u_input.b | u_input.b, _wgslsmith_sub_i32(-27948i, 13239i)));
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    var var_1 = _wgslsmith_f_op_f32(-1196f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(f32(-1f) * -1089f), var_0.x)) - 488f), true)));
    var var_2 = vec2<bool>(!var_0.x, true && var_0.x);
    var_0 = select(select(select(select(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), vec2<bool>(true, var_2.x)), vec2<bool>(var_0.x, var_0.x), var_0.x), vec2<bool>(true, true), !select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true))), func_2(vec4<bool>(0u != u_input.d, var_2.x, true, var_0.x), -9716i, _wgslsmith_f_op_f32(max(-1012f, _wgslsmith_f_op_f32(-906f - -1597f))), vec3<f32>(826f, _wgslsmith_f_op_f32(f32(-1f) * -1678f), _wgslsmith_f_op_f32(382f * -1065f))).xx, false), !vec2<bool>(true, var_0.x), ~countOneBits(25394u) > u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(577f, 272f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(523f - _wgslsmith_f_op_f32(-1679f + 505f)))), countOneBits(u_input.c.x), 0i);
}

