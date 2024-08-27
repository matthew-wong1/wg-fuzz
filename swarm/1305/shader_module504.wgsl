struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: f32;

var<private> global3: u32 = 49526u;

var<private> global4: array<vec2<i32>, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = ~reverseBits(vec2<u32>(~(~arg_0), 100616u));
    let var_1 = abs(vec3<u32>(~arg_0, countOneBits(var_0.x), select(_wgslsmith_add_u32(u_input.b, 4294967295u), countOneBits(u_input.c), true)));
    let var_2 = 3922u;
    global0 = array<i32, 17>();
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(846f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_f_op_f32(-1911f * 1569f)))))))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - -648f))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = Struct_1(arg_2.a, vec2<u32>(firstTrailingBit(u_input.b), ~arg_2.b.x));
    let var_1 = Struct_1(vec2<bool>(all(vec2<bool>(!var_0.a.x, var_0.a.x)), false), var_0.b);
    let var_2 = Struct_1(arg_1.zz, abs(select(vec2<u32>(6979u, ~64973u), arg_2.b, false)));
    let var_3 = Struct_1(!select(var_1.a, vec2<bool>(all(vec2<bool>(true, true)), true & arg_1.x), arg_2.a), ~vec2<u32>(reverseBits(arg_2.b.x), var_2.b.x));
    global0 = array<i32, 17>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(821f + -780f))), 464f)), -1795f));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = array<i32, 17>();
    global1 = array<Struct_1, 14>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1198f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.c, u_input.a, u_input.c), vec3<bool>(arg_0.a.x, arg_0.a.x, true), global1[_wgslsmith_index_u32(4294967295u, 14u)], arg_0.a.x))))))));
    var var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, var_0.x <= var_0.x), !(!vec3<bool>(arg_0.a.x, arg_0.a.x, true))), vec3<bool>(true, true, true), !select(!vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(true, arg_0.a.x, arg_0.a.x))), !select(vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(arg_0.a.x, any(vec4<bool>(false, arg_0.a.x, true, arg_0.a.x)), arg_0.a.x || arg_0.a.x), !(arg_0.b.x < 4294967295u)), select(!vec3<bool>(arg_0.a.x, all(arg_0.a), select(true, arg_0.a.x, arg_0.a.x)), vec3<bool>(true, !(true && arg_0.a.x), !select(false, true, arg_0.a.x)), vec3<bool>(arg_0.a.x, !arg_0.a.x, all(select(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x))))));
    global4 = array<vec2<i32>, 3>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1654f);
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(7015u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(20659u, 14u)])), _wgslsmith_f_op_f32(ceil(-1000f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(325f, -157f), vec2<f32>(-1427f, -142f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1152f, 1000f), vec2<f32>(-511f, 1147f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(647f, 184f) * vec2<f32>(-923f, 953f)) - vec2<f32>(-1117f, 463f)))));
    let var_1 = Struct_1(select(select(vec2<bool>(true, any(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(any(vec3<bool>(true, true, false)), false)), vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(all(vec2<bool>(true, true)), true)), ~vec2<u32>(firstTrailingBit(u_input.a), 40411u) << (countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.c, 1u))) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_mult_i32(~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, max(134952i, -2147483647i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.d.x, u_input.d.x, global0[_wgslsmith_index_u32(0u, 17u)]), vec4<i32>(2147483647i, 0i, u_input.d.x, u_input.d.x))), max(_wgslsmith_clamp_i32(u_input.d.x, global0[_wgslsmith_index_u32(var_1.b.x, 17u)], 56927i), 32216i >> (u_input.c % 32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(select(4294967295u, var_1.b.x, false), 17u)], _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d.x), vec2<i32>(2016i, u_input.d.x)), -u_input.d.x, global0[_wgslsmith_index_u32(var_1.b.x, 17u)] ^ u_input.d.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(12259u, 17u)], 56341i, u_input.d.x) ^ vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(var_1.b.x, 17u)], -26258i, u_input.d.x), min(vec4<i32>(-10045i, 0i, 2147483647i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, -1333i, u_input.d.x)), vec4<i32>(-2147483647i, u_input.d.x, 0i, global0[_wgslsmith_index_u32(u_input.b, 17u)])))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(177f, var_0.x), vec2<f32>(var_0.x, -465f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(424f, var_0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(845f, 658f), vec2<f32>(var_0.x, -2379f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1630f, 302f) - vec2<f32>(848f, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1583f, 733f), select(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(var_1.b.x, 1u, u_input.a) >> (vec3<u32>(1u, var_1.b.x, 4294967295u) % vec3<u32>(32u))), vec3<u32>(firstTrailingBit(71933u), countOneBits(var_1.b.x), _wgslsmith_div_u32(var_1.b.x, 18354u))), countOneBits(countOneBits(abs(vec3<u32>(u_input.b, u_input.a, u_input.b)))), 13809u <= min(_wgslsmith_mod_u32(var_1.b.x, u_input.a), u_input.a)), 19844u, vec3<i32>(-1i) * -countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(var_1.b.x, 17u)], u_input.d.x)));
}

