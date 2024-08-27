struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(1u, 67480u, 4294967295u, 0u), vec4<u32>(61404u, 4294967295u, 4963u, 0u), vec4<u32>(32522u, 4294967295u, 35619u, 0u), vec4<u32>(25972u, 41413u, 0u, 0u), vec4<u32>(1u, 1639u, 1u, 626u), vec4<u32>(70428u, 1u, 4294967295u, 83995u), vec4<u32>(1u, 7437u, 0u, 44412u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(64554u, 16817u, 69049u, 51415u), vec4<u32>(4294967295u, 77605u, 19295u, 41038u), vec4<u32>(0u, 12526u, 29717u, 1u), vec4<u32>(0u, 1u, 145210u, 4294967295u), vec4<u32>(23931u, 0u, 20664u, 4294967295u), vec4<u32>(36012u, 26604u, 0u, 1u), vec4<u32>(72792u, 68730u, 24203u, 0u), vec4<u32>(64535u, 8559u, 33194u, 0u), vec4<u32>(0u, 1u, 81235u, 4294967295u), vec4<u32>(4294967295u, 6107u, 34378u, 26569u));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: array<vec4<f32>, 24>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<i32>) -> bool {
    global0 = array<vec4<u32>, 18>();
    var var_0 = ~arg_2.x;
    global1 = vec4<bool>(any(vec2<bool>(true, arg_0.x)), global1.x, !(select(any(global1.zyx), any(global1.zxw), arg_0.x) && global1.x), false);
    let var_1 = -(~u_input.d);
    var var_2 = Struct_4(Struct_1(4294967295u, select(_wgslsmith_div_vec4_u32(~global0[_wgslsmith_index_u32(25934u, 18u)], global0[_wgslsmith_index_u32(~81839u, 18u)]), vec4<u32>(22172u << (u_input.b.x % 32u), arg_1.a.x, ~u_input.b.x, arg_1.a.x), !(arg_1.a.x < arg_1.a.x)), arg_1.a, !(!(!global1.yww)), !all(select(vec2<bool>(arg_0.x, global1.x), global1.yy, false))), Struct_2(Struct_1(~0u, global0[_wgslsmith_index_u32(arg_1.a.x, 18u)], arg_1.a, global1.xyz, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1022f)) - _wgslsmith_f_op_f32(-731f + 1000f))))), arg_0);
    return true;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-557f, -439f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(892f * -582f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -533f), -1000f, _wgslsmith_f_op_f32(select(200f, -637f, global1.x)), _wgslsmith_f_op_f32(sign(588f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1180f, 1474f, -942f, 1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(734f, 789f, -282f, -1578f), vec4<f32>(-1589f, -2102f, -1086f, -489f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global2[_wgslsmith_index_u32(72034u, 24u)])) * vec4<f32>(-1256f, 360f, 260f, 259f))) + vec4<f32>(-774f, -764f, _wgslsmith_f_op_f32(round(-578f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1725f * -1086f))))));
    var var_1 = u_input.e;
    let var_2 = _wgslsmith_div_vec2_f32(var_0.yw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 622f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-183f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1205f, var_2.x)), var_2.x), _wgslsmith_div_f32(var_2.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(846f, 129f, -615f, var_2.x))))));
    global0 = array<vec4<u32>, 18>();
    return all(!vec4<bool>(global1.x, global1.x, select(true, false, true), all(vec4<bool>(true, true, false, global1.x)))) || all(vec3<bool>(false, false, func_3(global1.xy, Struct_3(vec3<u32>(31724u, 4294967295u, 1u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.d, -68281i), vec3<i32>(u_input.d, 21634i, -56900i)))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global1 = !select(select(select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(true, global1.x, false, false), global1.x), vec4<bool>(u_input.c < u_input.c, func_2(), all(global1.yw), global1.x), !vec4<bool>(global1.x, false, global1.x, global1.x)), vec4<bool>(global1.x, all(vec2<bool>(global1.x, false)), all(vec3<bool>(true, true, true)), global1.x), vec4<bool>(1i >= (u_input.d ^ 25210i), (global1.x || global1.x) & (true == global1.x), false, global1.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.x, 641f, false)))))))));
    var var_1 = arg_0.x;
    let var_2 = Struct_3(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(u_input.a, 35989u, 12096u)), abs(vec3<u32>(65578u, u_input.e, 4294967295u)) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 42532u, 0u), vec3<u32>(26883u, u_input.c, u_input.b.x))), ~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 0u), vec3<u32>(u_input.b.x, 0u, u_input.b.x))), select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.a) | (vec3<u32>(u_input.b.x, 20121u, u_input.c) >> (vec3<u32>(87024u, u_input.e, u_input.e) % vec3<u32>(32u))), vec3<u32>(~2715u, 4294967295u, u_input.a), vec3<bool>(false, any(global1.yxw), global1.x))));
    let var_3 = var_0.x;
    return Struct_1(~4294967295u, select(countOneBits(vec4<u32>(11189u, 22871u, firstTrailingBit(4294967295u), u_input.b.x)), global0[_wgslsmith_index_u32(u_input.c, 18u)], select(!select(vec4<bool>(true, true, global1.x, false), vec4<bool>(true, global1.x, false, global1.x), global1.x), select(vec4<bool>(global1.x, global1.x, false, global1.x), select(vec4<bool>(true, global1.x, false, true), vec4<bool>(false, true, true, global1.x), false), vec4<bool>(global1.x, true, global1.x, true)), global1.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(55673u, countOneBits(58229u), 1u), ~var_2.a), vec3<bool>(any(vec2<bool>(true, func_3(vec2<bool>(global1.x, global1.x), Struct_3(vec3<u32>(var_2.a.x, 4294967295u, var_2.a.x)), vec3<i32>(20127i, u_input.d, u_input.d)))), all(select(!vec2<bool>(global1.x, global1.x), select(global1.yw, vec2<bool>(false, false), global1.x), global1.x || global1.x)), true & (!global1.x & !global1.x)), ((u_input.a ^ 1u) << (u_input.e % 32u)) <= _wgslsmith_clamp_u32(~(~u_input.c), var_2.a.x, ~_wgslsmith_add_u32(1u, var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-994f, -1114f, _wgslsmith_f_op_f32(min(-4546f, 150f)), -717f))));
    var var_1 = u_input.d;
    var var_2 = Struct_3(vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.b.x, 7663u) ^ _wgslsmith_div_u32(1u, var_0.c.x), 0u) & _wgslsmith_div_vec3_u32(vec3<u32>(max(var_0.a, u_input.e), _wgslsmith_clamp_u32(var_0.a, 99859u, 4294967295u), ~0u), ~select(vec3<u32>(u_input.b.x, 21597u, u_input.c), vec3<u32>(u_input.a, 12775u, 5656u), var_0.d.x)));
    let var_3 = Struct_1(var_2.a.x, var_0.b >> ((global0[_wgslsmith_index_u32(4987u, 18u)] >> (var_0.b % vec4<u32>(32u))) % vec4<u32>(32u)), vec3<u32>(~(~88461u), 4294967295u, abs(0u)) >> (var_2.a % vec3<u32>(32u)), !global1.xzw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f) + _wgslsmith_f_op_f32(sign(1377f)))) >= -125f);
    var var_4 = Struct_3(countOneBits(var_2.a | ~_wgslsmith_mult_vec3_u32(var_3.c, var_0.c)));
    var var_5 = Struct_3(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.d, u_input.d, u_input.d)), vec3<i32>(u_input.d, ~u_input.d, ~(-1i)))));
}

