struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: f32 = -570f;

var<private> global2: array<u32, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_2(true, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(arg_0.b, 28303u, 0u, 18169u)), _wgslsmith_mult_vec4_u32(u_input.e, u_input.e)) >> (_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(33121u, global2[_wgslsmith_index_u32(u_input.e.x, 18u)], 4294967295u, 46809u)), ~u_input.e) % vec4<u32>(32u)), select(~vec4<u32>(1u, u_input.e.x, 1u, 7831u) ^ u_input.e, u_input.e, !arg_0.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-336f, arg_0.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))), arg_0, _wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec2_u32(u_input.e.zy, u_input.e.xw)) & _wgslsmith_dot_vec4_u32(~u_input.e, max(countOneBits(u_input.e), ~vec4<u32>(arg_0.b, 64249u, 4294967295u, arg_0.b))));
    var var_1 = _wgslsmith_mult_u32(~var_0.d.b, ~global2[_wgslsmith_index_u32(~(97964u << (var_0.d.b % 32u)) ^ ~_wgslsmith_div_u32(var_0.d.b, 4294967295u), 18u)]);
    var var_2 = ~vec4<u32>(max(~global2[_wgslsmith_index_u32(var_0.e, 18u)] >> (u_input.e.x % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.e.wwx, vec3<u32>(57712u, 17821u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)])), ~vec3<u32>(arg_0.b, global2[_wgslsmith_index_u32(arg_0.b, 18u)], 4294967295u))), ~(~23944u), 1u, 4294967295u);
    let var_3 = Struct_5(!(!(!select(var_0.d.a.yw, arg_0.a.zw, arg_0.a.x))));
    let var_4 = true;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(277f)));
}

fn func_2() -> vec4<bool> {
    var var_0 = !vec2<bool>(((u_input.c == u_input.d.x) || func_3(Struct_1(vec4<bool>(true, false, true, false), u_input.e.x, false, -440f))) && true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))));
    let var_1 = Struct_4(u_input.c, ~(~min(1i, abs(u_input.a))));
    var var_2 = Struct_5(vec2<bool>(var_0.x, any(vec3<bool>(false, !var_0.x, true))));
    let var_3 = Struct_1(!select(!vec4<bool>(var_0.x, var_0.x, false, var_2.a.x), select(vec4<bool>(false, false, var_0.x, true), select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_2.a.x, var_2.a.x, false, var_0.x), vec4<bool>(false, false, true, var_0.x)), false), vec4<bool>(true, !var_0.x, !var_0.x, var_2.a.x)), _wgslsmith_dot_vec2_u32(~(~u_input.e.ww << (vec2<u32>(global2[_wgslsmith_index_u32(89366u, 18u)], 3195u) % vec2<u32>(32u))), vec2<u32>(1u, u_input.e.x >> (1u % 32u))), all(vec4<bool>(!(global2[_wgslsmith_index_u32(u_input.e.x, 18u)] >= u_input.e.x), select(false, false, var_0.x) & any(vec2<bool>(var_2.a.x, var_0.x)), any(select(var_2.a, var_2.a, vec2<bool>(false, var_2.a.x))), true)), 1000f);
    let var_4 = Struct_1(select(!(!select(vec4<bool>(true, true, var_3.c, false), var_3.a, vec4<bool>(true, var_2.a.x, var_2.a.x, var_3.a.x))), !select(select(var_3.a, var_3.a, vec4<bool>(true, false, var_0.x, true)), select(var_3.a, vec4<bool>(var_3.a.x, var_2.a.x, var_3.a.x, false), var_2.a.x), false), select(select(!vec4<bool>(var_2.a.x, true, var_2.a.x, true), vec4<bool>(false, var_3.c, false, var_3.a.x), var_3.a), vec4<bool>(any(var_3.a.yz), true, true, all(vec3<bool>(false, true, var_3.a.x))), true)), _wgslsmith_div_u32(var_3.b << (max(~var_3.b, 1u) % 32u), 29618u), true, var_3.d);
    return !vec4<bool>(true && var_2.a.x, !func_3(var_4), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -162f)), ~var_1.b >= ~var_1.a);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_5 {
    var var_0 = func_2();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -393f), arg_3.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.d), 1205f)), arg_3.d);
    var_0 = arg_3.a;
    let var_2 = vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_sub_i32(abs(arg_1), ~(-2147483647i)), u_input.c);
    return Struct_5(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = select(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), vec3<bool>(true & any(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true)), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), vec3<bool>(true, true, true));
    global0 = u_input.d.x;
    var var_2 = vec3<f32>(-635f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-239f, 1422f)))), _wgslsmith_f_op_f32(ceil(-115f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1460f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1174f + 1143f)))));
    var var_3 = u_input.e.x | ~u_input.e.x;
    let var_4 = func_1(var_1.x, countOneBits(1i), 0u, Struct_1(vec4<bool>((-1i == u_input.c) & true, var_1.x, var_1.x, false), _wgslsmith_div_u32(~0u, 4132u), !var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f) + _wgslsmith_div_f32(2253f, var_2.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(652f * var_2.x))))));
    let var_5 = Struct_1(func_2(), max(global2[_wgslsmith_index_u32(u_input.e.x, 18u)], global2[_wgslsmith_index_u32(firstTrailingBit(17273u >> (u_input.e.x % 32u)), 18u)]), true & !(any(vec3<bool>(var_4.a.x, var_1.x, var_4.a.x)) && var_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(var_2.x * var_2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-337f)))));
    var_1 = var_5.a.zww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x - -584f))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.d + var_2.x)))), ~(~(~global2[_wgslsmith_index_u32(u_input.e.x, 18u)] << (27641u % 32u))));
}

