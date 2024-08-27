struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(49729u, 81907u), vec2<u32>(1u, 4294967295u), vec2<u32>(4803u, 21290u), vec2<u32>(3993u, 1u), vec2<u32>(16835u, 33152u), vec2<u32>(31288u, 51776u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(22149u, 30318u), vec2<u32>(0u, 105514u), vec2<u32>(0u, 29793u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 48580u), vec2<u32>(30173u, 4294967295u), vec2<u32>(0u, 27447u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 51175u), vec2<u32>(37754u, 4294967295u), vec2<u32>(1u, 62264u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(7948u, 10620u), vec2<u32>(19813u, 37837u), vec2<u32>(12124u, 4294967295u));

var<private> global1: array<vec3<u32>, 5>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 0u, 4294967295u, 2443u);

var<private> global3: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(-20123i), Struct_5(1403i), Struct_5(-1i), Struct_5(-931i), Struct_5(25646i), Struct_5(58595i), Struct_5(1i), Struct_5(21566i), Struct_5(i32(-2147483648)), Struct_5(29522i), Struct_5(52401i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    global2 = ~min(firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(4294967295u, global2.x), ~20893u, 1u, ~u_input.c)), vec4<u32>(_wgslsmith_sub_u32(global2.x, 4294967295u), u_input.c, ~13060u, select(arg_0.a, 0u, false)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 35597u, 0u, arg_0.a), vec4<u32>(arg_0.a, u_input.c, 47725u, 72453u)) % vec4<u32>(32u)));
    let var_0 = Struct_1(4294967295u);
    global3 = array<Struct_5, 11>();
    let var_1 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(19603u, countOneBits(u_input.c)), vec2<u32>(var_0.a, _wgslsmith_dot_vec3_u32(global2.wyx, global2.xzy))));
    global0 = array<vec2<u32>, 23>();
    return ~(vec4<i32>(u_input.a, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-32154i, u_input.b), select(-4452i, -35009i, true)), _wgslsmith_add_i32(u_input.d.x, -1i), u_input.b) << (reverseBits(vec4<u32>(abs(global2.x), global2.x, 1u, var_0.a)) % vec4<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> Struct_3 {
    global0 = array<vec2<u32>, 23>();
    var var_0 = ~vec3<u32>(1u, 16302u, ~1u);
    let var_1 = true;
    var var_2 = ~u_input.c;
    let var_3 = func_3(Struct_2(~(~(~var_0.x))));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f + 474f))))), -714f, select(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), var_1), select(select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), vec2<bool>(false, true)), vec2<bool>(var_1, true), false && var_1), select(vec2<bool>(var_1, true), vec2<bool>(false, var_1), vec2<bool>(true, true))), select(select(vec2<bool>(var_1, var_1), !vec2<bool>(var_1, var_1), true), select(vec2<bool>(true, true), !vec2<bool>(var_1, var_1), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(true, false, var_1)), true)), true), Struct_2(4294967295u), Struct_1(var_0.x));
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    let var_0 = func_2(arg_0.x, global3[_wgslsmith_index_u32(4294967295u, 11u)]);
    global2 = select(min(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(4569u, 69153u, global2.x, global2.x) >> (vec4<u32>(global2.x, 0u, 1u, 62560u) % vec4<u32>(32u))), ~vec4<u32>(u_input.c, var_0.e.a, u_input.c, 1u), vec4<u32>(97821u, _wgslsmith_sub_u32(81171u, u_input.c), 1u, abs(25115u))), select(vec4<u32>(13365u, ~global2.x, u_input.c, ~var_0.d.a), vec4<u32>(~u_input.c, u_input.c >> (4294967295u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(12673u, global2.x), global2.xw), _wgslsmith_mod_u32(1u, 6484u)), select(vec4<bool>(true, var_0.c.x, true, var_0.c.x), vec4<bool>(true, var_0.c.x, true, true), select(vec4<bool>(var_0.c.x, var_0.c.x, false, true), vec4<bool>(false, false, var_0.c.x, false), true)))), _wgslsmith_sub_vec4_u32(~(vec4<u32>(var_0.d.a, u_input.c, 4294967295u, u_input.c) | _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 42758u, global2.x, global2.x), vec4<u32>(1u, 19054u, 10791u, 20260u))), firstTrailingBit(vec4<u32>(var_0.d.a, u_input.c, 17703u, 2204u))), vec4<bool>(true, _wgslsmith_mod_u32(u_input.c << (global2.x % 32u), firstLeadingBit(4294967295u)) < ~(~var_0.e.a), true, !var_0.c.x));
    global1 = array<vec3<u32>, 5>();
    global1 = array<vec3<u32>, 5>();
    global1 = array<vec3<u32>, 5>();
    return u_input.a | 1i;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    var var_0 = func_2(u_input.d.x, global3[_wgslsmith_index_u32(1045u, 11u)]).d;
    let var_1 = ~(~1u);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, 1000f, -721f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1301f, arg_1, -288f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -160f, -1532f) * vec3<f32>(966f, 1164f, -590f)))), arg_1 < arg_1)), ~_wgslsmith_mod_i32(u_input.d.x, -51402i));
    var var_3 = Struct_1(_wgslsmith_mod_u32(~(~4294967295u) >> (~var_1 % 32u), ~_wgslsmith_add_u32(var_1, global2.x)));
    global3 = array<Struct_5, 11>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1399f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - -810f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 5>();
    global0 = array<vec2<u32>, 23>();
    var var_0 = !(!select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), any(vec2<bool>(false, false))));
    global0 = array<vec2<u32>, 23>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1944f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2212f - -178f))) - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347f - 2119f)))));
    let var_2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(func_1(vec3<i32>(u_input.a, u_input.a, u_input.b)), u_input.b, ~(i32(-1i) * -24962i)), -(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, -38287i, u_input.d.x), vec3<i32>(1i, u_input.d.x, u_input.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(709f, 107f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-621f))))))));
    global2 = ~firstTrailingBit(abs(vec4<u32>(global2.x, _wgslsmith_dot_vec3_u32(global2.wzw, vec3<u32>(global2.x, global2.x, 4294967295u)), global2.x, ~4294967295u)));
    let var_3 = global3[_wgslsmith_index_u32(~1u, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 229f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(200f)), _wgslsmith_f_op_f32(select(507f, -594f, var_0.x)), _wgslsmith_f_op_f32(select(-926f, var_2, false)), _wgslsmith_f_op_f32(var_2 * -1202f)), vec4<f32>(func_2(var_3.a, global3[_wgslsmith_index_u32(0u, 11u)]).a, _wgslsmith_f_op_f32(-861f + 1533f), _wgslsmith_f_op_f32(-1643f + var_2), var_2))) + vec4<f32>(var_2, _wgslsmith_div_f32(var_2, var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2, 465f)) - _wgslsmith_f_op_f32(step(var_2, var_2))))), ~_wgslsmith_add_vec3_u32(global2.xwz, ~abs(vec3<u32>(u_input.c, u_input.c, 100223u))));
}

