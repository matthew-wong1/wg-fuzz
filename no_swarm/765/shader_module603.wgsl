struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(i32(-2147483648), -1i, i32(-2147483648), 1i);

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 14>;

var<private> global3: vec4<f32> = vec4<f32>(-155f, 1597f, -772f, 838f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1169f, -1072f)) + 872f), 347f), global3.zw), !(!vec4<bool>(false, arg_1, !arg_1, 390f >= global3.x)), 2147483647i, Struct_1(1u), firstLeadingBit(firstTrailingBit(global1.a)));
    global1 = var_0.d;
    global1 = var_0.d;
    var var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 14u)];
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1302f - -444f), -1439f), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_0.a.x)))))), !var_0.b, -(abs(~(-1i)) | _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_0), max(vec2<i32>(34717i, -1i), vec2<i32>(global0[_wgslsmith_index_u32(48125u, 4u)], var_0.c)))), var_0.d, var_0.e);
    return 1249f;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: f32) -> f32 {
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(2147483647i, false, 40141u)))) * _wgslsmith_f_op_f32(arg_3 + _wgslsmith_div_f32(arg_3, -531f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f))), _wgslsmith_f_op_f32(721f + _wgslsmith_f_op_f32(f32(-1f) * -320f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-881f, -333f, 1815f, -234f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, arg_3, arg_2, -916f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(157f)), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * -178f) - arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * arg_2) - _wgslsmith_f_op_f32(select(arg_2, arg_2, true)))))));
    let var_0 = Struct_1(38468u);
    global3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))), -632f, _wgslsmith_f_op_f32(select(arg_2, arg_2, false)), 1000f))));
    var var_1 = vec3<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-arg_2)) == _wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_2(_wgslsmith_div_vec2_f32(global3.yz, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global3.wz * vec2<f32>(global3.x, global3.x))))), select(!(!vec4<bool>(false, false, true, var_1.x)), select(vec4<bool>(var_1.x || var_1.x, 10152i != global0[_wgslsmith_index_u32(var_0.a, 4u)], var_1.x, false), !(!vec4<bool>(var_1.x, true, true, true)), any(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, false), var_1.zy))), select(vec4<bool>(!var_1.x, !var_1.x, var_1.x, var_1.x), select(!vec4<bool>(var_1.x, var_1.x, true, false), !vec4<bool>(var_1.x, false, var_1.x, false), false), any(select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true))))), max(2147483647i, 12404i), var_0, 80034u);
    return global3.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    global2 = array<vec3<f32>, 14>();
    global2 = array<vec3<f32>, 14>();
    let var_0 = arg_1;
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_2.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global1.a, u_input.a.x, arg_2.a.x, global3.x)) + _wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_f32(func_2(~4294967295u, max(arg_2.d.a, arg_1.a), _wgslsmith_f_op_f32(2331f * -720f), _wgslsmith_f_op_f32(-global3.x))), -685f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1087f, global3.x, 1000f, global3.x) * vec4<f32>(global3.x, -252f, 987f, arg_2.a.x))))));
    var var_1 = any(vec4<bool>(false, arg_2.b.x || all(vec4<bool>(true, true, arg_0.x, arg_2.b.x)), any(vec3<bool>(arg_2.b.x, !arg_0.x, arg_2.b.x)), !select(false, arg_2.b.x, true)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(abs(~1u));
    global2 = array<vec3<f32>, 14>();
    let var_0 = select(select(vec3<bool>(any(vec3<bool>(true, true, true)), (0u <= u_input.a.x) || true, false), vec3<bool>(!(6280i < global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), false, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))))), vec3<bool>(!any(vec3<bool>(true, true, true)), select(true, func_1(vec3<bool>(true, false, false), Struct_1(0u), Struct_2(vec2<f32>(global3.x, global3.x), vec4<bool>(false, true, true, true), -25982i, Struct_1(13122u), 23586u)) && any(vec3<bool>(true, false, true)), true), -374f >= _wgslsmith_f_op_f32(global3.x * -490f)), vec3<bool>(true | (abs(global1.a) > _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(12559u, u_input.a.x, 0u, u_input.a.x))), true, !all(vec2<bool>(false, false)) & (_wgslsmith_f_op_f32(floor(global3.x)) >= _wgslsmith_f_op_f32(global3.x + -355f))));
    var var_1 = -(~firstLeadingBit(-select(vec4<i32>(1i, 2147483647i, 2147483647i, global0[_wgslsmith_index_u32(global1.a, 4u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], -1i, global0[_wgslsmith_index_u32(global1.a, 4u)]), var_0.x)));
    var var_2 = select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x & var_0.x), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.x, true, false), var_0.x), select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, true, false, var_0.x)), !vec4<bool>(true, false, false, var_0.x), true)), !(!(!select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x)))), !select(select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false)), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), var_0.x), vec4<bool>(true, false, var_0.x, var_0.x)), vec4<bool>(var_0.x, true, true, all(var_0.xy)), vec4<bool>(false, true, var_0.x, true)));
    global0 = array<i32, 4>();
    var_1 = ~firstLeadingBit(vec4<i32>(countOneBits(var_1.x) >> (~17167u % 32u), min(_wgslsmith_add_i32(1i, var_1.x), var_1.x), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, 8104i, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec4<i32>(41119i, var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), -2147483647i), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(32513u, 4u)], var_1.x, -6892i, var_1.x)), vec4<i32>(var_1.x, -16885i, var_1.x, 2147483647i))));
    var_1 = -abs(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), 4u)], -2147483647i, select(var_1.x, var_1.x, var_2.x), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wy, _wgslsmith_mult_i32(-_wgslsmith_mod_i32(-var_1.x, 1i), ~(~(global0[_wgslsmith_index_u32(u_input.a.x, 4u)] << (global1.a % 32u)))), _wgslsmith_mod_u32(74166u, global1.a), vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(select(u_input.a.wwx, u_input.a.zwy, var_0.x)), ~(u_input.a.zww >> (vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(48704u, 59241u, countOneBits(70255u)), vec3<u32>(~global1.a, firstLeadingBit(12857u), global1.a)), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(40219u, 33825u), u_input.a.xx | vec2<u32>(u_input.a.x, 0u))), u_input.a.x), 977f);
}

