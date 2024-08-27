struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(79643u, 9634u, 32471u, 1u);

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(2779i, 0i, 5040i), vec3<i32>(0i, -19151i, 0i), vec3<i32>(5605i, 0i, 63681i));

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: array<bool, 19> = array<bool, 19>(true, false, false, true, true, true, false, true, false, true, false, true, false, true, true, true, true, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = vec2<bool>(any(vec2<bool>(any(!vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 19u)], true)), !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(0u, 8u)], vec2<u32>(10992u, u_input.a)), 19u)])), all(vec3<bool>(!all(vec3<bool>(true, true, true)), global3[_wgslsmith_index_u32(max(12477u, ~u_input.a), 19u)], true)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) - -1075f)) * -759f), _wgslsmith_f_op_f32(floor(1000f)));
    let var_2 = !(!(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), !vec2<bool>(var_0.x, true), !vec2<bool>(global3[_wgslsmith_index_u32(51219u, 19u)], var_0.x))));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(703f + 115f)) + 180f)))));
    let var_3 = select(!vec3<bool>(var_2.x, all(select(var_2, vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 19u)]), global3[_wgslsmith_index_u32(1u, 19u)])), !(global3[_wgslsmith_index_u32(u_input.a, 19u)] | var_2.x)), !select(vec3<bool>(false, any(vec3<bool>(true, var_2.x, false)), true), !vec3<bool>(var_2.x, var_0.x, var_2.x), select(!vec3<bool>(true, global3[_wgslsmith_index_u32(20658u, 19u)], global3[_wgslsmith_index_u32(54455u, 19u)]), vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 19u)], false, false))), !any(vec4<bool>(true, select(true, global3[_wgslsmith_index_u32(u_input.a, 19u)], var_0.x), true, false && var_0.x)));
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1925f * 1758f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-530f))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1718f + 1014f) * _wgslsmith_f_op_f32(abs(1543f))), _wgslsmith_f_op_f32(select(-252f, -206f, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-659f, 859f)) * 2027f)))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    global1 = array<vec3<i32>, 3>();
    let var_0 = arg_2.b;
    let var_1 = 0u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - arg_3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.x)))), -163f, _wgslsmith_f_op_f32(-arg_3.x)));
    var var_3 = !(select(~arg_2.c, ~min(u_input.b, 1i), !(!arg_1.x)) != ((i32(-1i) * -1i) | _wgslsmith_clamp_i32(min(1i, arg_2.c), u_input.b, -u_input.b)));
    return var_2.x;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = -750f;
    var var_1 = _wgslsmith_f_op_f32(496f - var_0);
    var var_2 = _wgslsmith_f_op_f32(func_4(false, !vec4<bool>(false, !(arg_1 < arg_1), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 19u)], all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 19u)], true, false)) | false), Struct_1(_wgslsmith_sub_u32(firstTrailingBit(0u), arg_1), global2[_wgslsmith_index_u32(40386u, 8u)], _wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(arg_2.c, arg_2.c, -28310i, arg_2.c)), vec4<i32>(2147483647i, arg_0, arg_2.c << (u_input.a % 32u), ~arg_0)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(14987u, 99285u, 4294967295u), u_input.a), 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3()))))));
    var_1 = 845f;
    var var_3 = ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1, arg_1, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(45093u, 4u)], 4294967295u, 89346u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 20847u, arg_1, arg_1), vec4<u32>(75368u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 4u)], 15190u))), _wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_1, 1u, 4294967295u, 0u), vec4<u32>(10454u, 0u, u_input.a, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(arg_1, 4u)]), vec4<u32>(4294967295u, 69910u, arg_1, global0[_wgslsmith_index_u32(1222u, 4u)]), vec4<u32>(u_input.a, 1u, global0[_wgslsmith_index_u32(26719u, 4u)], u_input.a))), ~(~arg_1)), 0u, global0[_wgslsmith_index_u32(1u, 4u)], firstTrailingBit(min(~arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(arg_1, arg_1, 0u)))));
    return select(vec2<bool>(any(vec2<bool>(false, select(arg_2.a, false, global3[_wgslsmith_index_u32(u_input.a, 19u)]))), any(select(vec4<bool>(false, false, false, false), vec4<bool>(global3[_wgslsmith_index_u32(59182u, 19u)], false, true, true), any(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 19u)], arg_2.a, true))))), select(vec2<bool>(any(select(vec3<bool>(arg_2.a, global3[_wgslsmith_index_u32(var_3.x, 19u)], true), vec3<bool>(arg_2.a, true, global3[_wgslsmith_index_u32(1u, 19u)]), false)), all(select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(1u, 19u)], false, false), vec4<bool>(arg_2.a, arg_2.a, global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 19u)]), vec4<bool>(true, arg_2.a, true, arg_2.a)))), vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(0i > ~u_input.b, true)), arg_2.a);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: bool) -> vec3<bool> {
    var var_0 = select(func_2(u_input.b, ~(~(u_input.a << (44142u % 32u))), Struct_3((-2147483647i ^ u_input.b) != u_input.b, -2614f, u_input.b)), !(!func_2(arg_1.x, 30536u, Struct_3(arg_2, -841f, 38959i))), true);
    var var_1 = ~arg_1.x;
    var var_2 = ~countOneBits(~arg_0.x);
    let var_3 = ~vec3<i32>(arg_1.x, arg_1.x, ~(~(-2147483647i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 4889u, u_input.a), vec4<u32>(31037u, 1u, 0u, 86943u)) % 32u)));
    var var_4 = Struct_5(Struct_1(~abs(arg_0.x ^ arg_0.x), arg_0.yx, var_3.x, abs(1u), ~(~u_input.a) << (~(1u << (1u % 32u)) % 32u)), 0u, _wgslsmith_f_op_f32(round(-270f)), !(!(!func_2(-29439i, 64496u, Struct_3(false, -768f, -22068i)))));
    return !(!select(vec3<bool>(var_3.x > -25730i, var_4.d.x, any(var_4.d)), !vec3<bool>(true, false, var_4.d.x), vec3<bool>(any(vec3<bool>(false, var_0.x, false)), !arg_2, global3[_wgslsmith_index_u32(~1u, 19u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    global1 = array<vec3<i32>, 3>();
    let var_1 = Struct_2(!(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), global3[_wgslsmith_index_u32(4294967295u, 19u)]), func_1(vec3<u32>(u_input.a, 13646u, global0[_wgslsmith_index_u32(1u, 4u)]), global1[_wgslsmith_index_u32(u_input.a, 3u)], global3[_wgslsmith_index_u32(4294967295u, 19u)]))));
    let var_2 = Struct_3(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(949f))) - 124f))), _wgslsmith_add_i32(~(-30907i), -5931i));
    global1 = array<vec3<i32>, 3>();
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~min(select(vec2<i32>(var_2.c, u_input.b) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<i32>(12101i, 2147483647i), var_1.a.yy), firstTrailingBit(vec2<i32>(u_input.b, 0i))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-abs(vec2<i32>(u_input.b, var_2.c)), vec2<i32>(countOneBits(31985i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -31542i, 22943i, 34543i), vec4<i32>(0i, -16261i, 2147483647i, 0i)))), vec2<i32>(39856i, var_2.c)));
}

