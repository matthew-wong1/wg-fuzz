struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<bool>(true, false, true, true)), true);

var<private> global2: Struct_1;

var<private> global3: array<u32, 13>;

var<private> global4: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(551f), Struct_1(769f), Struct_1(1487f), Struct_1(-674f), Struct_1(-500f), Struct_1(-1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = true | (((1u ^ (u_input.a.x << (u_input.a.x % 32u))) << (max(global3[_wgslsmith_index_u32(4294967295u, 13u)], firstLeadingBit(39064u)) % 32u)) <= (1u & global3[_wgslsmith_index_u32(~31518u, 13u)]));
    let var_1 = global2.a;
    global3 = array<u32, 13>();
    let var_2 = !vec3<bool>(!(!any(vec2<bool>(global1.a.a.x, global1.b))), any(global1.a.a.xx), true);
    let var_3 = Struct_3(global1.a, true);
    return vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-661f, _wgslsmith_f_op_f32(global2.a - global2.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a)))), _wgslsmith_f_op_f32(exp2(arg_0.a)))), arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(exp2(arg_0.a))), global2.a), _wgslsmith_f_op_f32(-945f + -1295f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_f32(arg_0.a * -554f))));
    let var_1 = Struct_1(1498f);
    var var_2 = Struct_2(!select(!(!arg_1.a), arg_1.a, all(vec3<bool>(arg_1.a.x, false, false))));
    let var_3 = -u_input.c.x;
    var var_4 = any(select(vec3<bool>(arg_1.a.x, any(vec3<bool>(false, global1.a.a.x, global1.b)), true), vec3<bool>(var_1.a < _wgslsmith_f_op_f32(round(global2.a)), all(!global1.a.a), min(2147483647i, var_3) == _wgslsmith_dot_vec4_i32(vec4<i32>(38182i, -2147483647i, 4196i, u_input.b), vec4<i32>(-2147483647i, var_3, -2147483647i, 2147483647i))), all(!arg_1.a)));
    return Struct_3(Struct_2(!(!var_2.a)), global1.a.a.x | any(vec3<bool>(var_3 <= var_3, var_3 == var_3, global1.b)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> vec2<f32> {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, u_input.b, -(i32(-1i) * -36525i)));
    var var_1 = arg_0.a;
    var var_2 = -_wgslsmith_mult_i32(-u_input.c.x, u_input.b) << (_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~u_input.a.x, 13u)], 13u)] | select(min(u_input.a.x, u_input.a.x), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 13u)], 13u)] | 770u, global1.a.a.x || false), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(firstTrailingBit(abs(0u)), 13u)], 0u)) % 32u);
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(arg_1)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1)) * arg_1));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_1(-926f), global1.a, u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(1366f)), _wgslsmith_f_op_f32(global2.a * global2.a)))))));
    let var_1 = Struct_3(func_2(global4[_wgslsmith_index_u32(4294967295u, 6u)], Struct_2(select(!vec4<bool>(true, global1.a.a.x, global1.b, global1.b), !vec4<bool>(true, global1.b, true, false), false)), u_input.a).a, all(!func_2(Struct_1(global2.a), global1.a, vec4<u32>(4294967295u, 85589u, 27649u, u_input.a.x)).a.a.zx));
    let var_2 = _wgslsmith_f_op_f32(1095f - _wgslsmith_f_op_f32(f32(-1f) * -286f));
    let var_3 = reverseBits(vec3<u32>(firstTrailingBit(reverseBits(73821u)) >> (4294967295u % 32u), ~(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], global3[_wgslsmith_index_u32(50905u, 13u)]) ^ u_input.a.x), max(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 58609u), 13u)], 13u)], _wgslsmith_add_u32(~1u, select(global3[_wgslsmith_index_u32(12588u, 13u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 13u)], 13u)], true)))));
    var var_4 = u_input.c;
    return abs(~arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global2.a, global2.a)), global2.a))), ~vec3<u32>(u_input.a.x, ~global3[_wgslsmith_index_u32(69676u, 13u)], ~1u), u_input.c.x, -(u_input.c.yx ^ -vec2<i32>(-11647i, u_input.c.x)), vec4<i32>(-41503i, func_1(_wgslsmith_div_i32(countOneBits(1i), 17747i)), firstLeadingBit(~countOneBits(u_input.b)), u_input.b));
}

