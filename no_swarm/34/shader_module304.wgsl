struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: u32;

var<private> global2: array<bool, 24> = array<bool, 24>(false, true, true, true, false, true, false, false, true, true, false, true, false, true, true, true, false, true, true, false, true, false, false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_clamp_i32(-38009i, 1i | _wgslsmith_sub_i32(arg_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-37715i, arg_0.c, arg_0.c, 2147483647i) >> (vec4<u32>(4294967295u, 25213u, u_input.a.x, 16207u) % vec4<u32>(32u)), ~vec4<i32>(-1i, -14450i, 2147483647i, -8273i))), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.c), max(vec2<i32>(arg_0.c, -26734i), vec2<i32>(arg_0.c, -16387i)))) ^ _wgslsmith_add_i32(arg_0.c, _wgslsmith_mult_i32(-arg_0.c, arg_0.c ^ -45521i)));
    let var_1 = false;
    var var_2 = select(select(select(vec4<bool>(arg_0.d.x, arg_0.d.x, all(arg_0.d.yx), true), vec4<bool>(arg_0.d.x | arg_0.d.x, all(vec2<bool>(var_1, global2[_wgslsmith_index_u32(68232u, 24u)])), global2[_wgslsmith_index_u32(u_input.a.x, 24u)], any(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 24u)], false, false))), !(!vec4<bool>(global2[_wgslsmith_index_u32(1774u, 24u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 24u)], true))), !(!(!vec4<bool>(false, arg_0.d.x, true, false))), all(select(select(vec4<bool>(arg_0.d.x, global2[_wgslsmith_index_u32(1u, 24u)], true, true), vec4<bool>(var_1, var_1, false, arg_0.d.x), vec4<bool>(true, true, var_1, arg_0.d.x)), vec4<bool>(var_1, false, false, false), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 24u)], arg_0.d.x, var_1), vec4<bool>(arg_0.d.x, global2[_wgslsmith_index_u32(56909u, 24u)], arg_0.d.x, arg_0.d.x), var_1)))), vec4<bool>(arg_0.d.x, false, all(vec4<bool>(arg_0.d.x, false, all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], var_1)), all(vec2<bool>(true, global2[_wgslsmith_index_u32(44414u, 24u)])))), !arg_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b * arg_0.b), _wgslsmith_f_op_f32(trunc(arg_0.b)))) != -452f);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b + arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-290f, arg_0.a) + _wgslsmith_f_op_f32(trunc(658f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b, -1051f)) * -697f));
    var var_4 = select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.a, ~vec3<u32>(83101u, u_input.a.x, u_input.a.x)), 0u, u_input.a.x), _wgslsmith_mult_vec3_u32(min(~vec3<u32>(u_input.a.x, 0u, u_input.a.x), u_input.a), firstLeadingBit(~vec3<u32>(u_input.a.x, u_input.a.x, 73563u)))), 24u)], !any(vec2<bool>(4294967295u > u_input.a.x, arg_0.c < -2147483647i)), _wgslsmith_div_u32(~(~0u), _wgslsmith_mod_u32(4294967295u << (u_input.a.x % 32u), ~u_input.a.x)) == 37643u);
    return u_input.a.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1.b;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2061f)))))), var_0.a, -2147483647i, select(!select(select(arg_1.b.d, vec3<bool>(var_0.d.x, var_0.d.x, true), vec3<bool>(arg_2.d.x, arg_1.b.d.x, false)), var_0.d, any(arg_1.b.d)), select(vec3<bool>(var_0.d.x, true, true), arg_1.b.d, false), var_0.d));
    var var_2 = select(false | (u_input.a.x <= u_input.a.x), (!arg_2.d.x && true) && !(var_1.d.x || true), any(!vec2<bool>(-2147483647i >= arg_0, true)));
    var var_3 = select(vec2<bool>(true, any(!(!vec2<bool>(true, arg_2.d.x)))), !vec2<bool>(var_1.d.x && all(vec4<bool>(var_0.d.x, var_1.d.x, var_1.d.x, false)), var_0.d.x), !any(vec4<bool>(var_1.d.x || false, select(true, true, true), !global2[_wgslsmith_index_u32(0u, 24u)], !var_0.d.x)));
    return _wgslsmith_f_op_f32(floor(var_1.b));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = ~vec4<u32>(34449u, ~u_input.a.x, _wgslsmith_mod_u32(countOneBits(~u_input.a.x), ~_wgslsmith_div_u32(4294967295u, 19106u)), u_input.a.x);
    let var_1 = vec2<bool>(global2[_wgslsmith_index_u32(~4294967295u, 24u)] | global2[_wgslsmith_index_u32(~var_0.x, 24u)], true);
    var var_2 = Struct_2(-2147483647i, Struct_1(arg_0.x, arg_0.x, -(~(-1i)), !(!vec3<bool>(false, var_1.x, true))));
    global0 = array<Struct_1, 15>();
    let var_3 = ~vec4<u32>(~max(1u, 10449u), 4294967295u, min((u_input.a.x ^ var_0.x) << (70152u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.a.x, 26858u), var_0.zwy) | 1u), 4294967295u);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_2.b.a))))), _wgslsmith_f_op_f32(func_4(var_2.b.c << (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u), Struct_2(-74658i, global0[_wgslsmith_index_u32(~func_3(global0[_wgslsmith_index_u32(var_3.x, 15u)]), 15u)]), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-204f, var_2.b.a)), arg_0.x, ~1i, !(!vec3<bool>(false, true, var_2.b.d.x))))), any(!vec4<bool>(false || global2[_wgslsmith_index_u32(u_input.a.x, 24u)], !var_2.b.d.x, true, all(var_2.b.d.zx)))));
}

fn func_1() -> vec2<u32> {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(139f, -1423f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) - vec2<f32>(995f, -1083f))), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]))), -312f), _wgslsmith_f_op_f32(min(-1712f, _wgslsmith_f_op_f32(-1000f + 1807f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-289f, 1623f)), _wgslsmith_f_op_f32(select(195f, 599f, global2[_wgslsmith_index_u32(4294967295u, 24u)])))), _wgslsmith_f_op_f32(ceil(-2051f)), true)) + _wgslsmith_f_op_f32(f32(-1f) * -1354f)));
    let var_1 = ~abs(u_input.a);
    let var_2 = Struct_2(-(~(-42499i)), Struct_1(_wgslsmith_f_op_f32(trunc(285f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), var_0.x), min(_wgslsmith_dot_vec3_i32(vec3<i32>(31615i, 0i, 27215i), vec3<i32>(-2147483647i, 1i, 0i)) & reverseBits(1i), _wgslsmith_add_i32(6076i, 1i)), select(select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 24u)]), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 24u)], false, false), true), vec3<bool>(any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_1.x, 24u)], global2[_wgslsmith_index_u32(0u, 24u)])), true, global2[_wgslsmith_index_u32(45556u, 24u)]), true)));
    return u_input.a.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~4294967295u);
    let var_1 = _wgslsmith_sub_vec2_u32(~(~func_1()) >> (vec2<u32>(1u, 51338u) % vec2<u32>(32u)), countOneBits(min(vec2<u32>(~12051u, ~4294967295u), vec2<u32>(u_input.a.x, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(1i), ~select(~2147483647i, i32(-1i) * -2147483647i, true)), firstTrailingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(14606u, 42356u, u_input.a.x, 14346u), vec4<u32>(select(0u, var_1.x, true), ~88477u, 1u, 22784u))), 8682u);
}

