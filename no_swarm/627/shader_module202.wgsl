struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22>;

var<private> global1: array<vec2<i32>, 11>;

var<private> global2: vec3<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = reverseBits(_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u) << (vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(8474u, 4895u, 67534u), vec3<u32>(0u, 10506u, 70704u)), ~34849u, ~4294967295u) % vec4<u32>(32u))));
    global0 = array<vec4<i32>, 22>();
    global1 = array<vec2<i32>, 11>();
    var var_1 = -1803f;
    let var_2 = 17614u;
    return vec3<bool>(false, select(all(vec2<bool>(any(vec4<bool>(global2.x, global2.x, true, false)), select(global2.x, true, global2.x))), var_2 >= var_2, false), !(!all(!vec3<bool>(true, global2.x, global2.x))));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_4 {
    global2 = func_3();
    global0 = array<vec4<i32>, 22>();
    let var_0 = Struct_4(Struct_3(1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(610f))))), !(!(!vec4<bool>(arg_0, false, arg_1, arg_0))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -488f), 590f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.b - _wgslsmith_f_op_f32(-var_0.a.b)), _wgslsmith_f_op_f32(-301f * _wgslsmith_f_op_f32(var_0.a.b + var_0.a.b))))));
    let var_2 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~firstLeadingBit(vec2<u32>(0u, var_0.a.a)), reverseBits(vec2<u32>(99705u, 1u) & vec2<u32>(var_0.a.a, var_0.a.a))), _wgslsmith_div_vec2_u32(~(vec2<u32>(4294967295u, 4078u) | vec2<u32>(46879u, var_0.a.a)), vec2<u32>(var_0.a.a, var_0.a.a)));
    return var_0;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_5 {
    var var_0 = ~select(vec3<u32>(func_2(arg_0.b.x, arg_1.a.a.x).a.a, ~abs(arg_1.c), 10721u), select(~vec3<u32>(arg_0.a.a, arg_0.a.a, 1u) ^ max(vec3<u32>(0u, arg_0.a.a, arg_0.a.a), vec3<u32>(21704u, 4294967295u, 2495u)), ~vec3<u32>(arg_1.a.c, 0u, 1u), arg_1.a.a), arg_1.b.a.x | true);
    let var_1 = Struct_5(Struct_2(arg_1.b, arg_1.a, ~max(arg_1.c, arg_0.a.a) >> (16341u % 32u)), ~arg_0.a.a > 1u, vec3<i32>(abs(firstLeadingBit(arg_1.a.d.x << (arg_0.a.a % 32u))), -_wgslsmith_div_i32(15722i, select(u_input.d, -2147483647i, false)), u_input.d));
    var var_2 = Struct_5(var_1.a, global2.x, _wgslsmith_clamp_vec3_i32(u_input.c, -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, var_1.a.b.d.x, 0i), vec4<i32>(var_1.c.x, var_1.a.a.d.x, -3637i, var_1.c.x)), 1i, u_input.a.x ^ var_1.c.x), ~countOneBits(u_input.c)));
    global2 = var_1.a.a.a;
    global1 = array<vec2<i32>, 11>();
    return var_1;
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: f32) -> Struct_5 {
    global1 = array<vec2<i32>, 11>();
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(arg_2 + -573f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1973f) * _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-720f, -285f, arg_1.a.b.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1272f, -1229f, arg_1.a.b.b)))))))));
    var var_1 = func_2(global2.x, func_2(arg_1.b, any(vec4<bool>(false, false, false, false)) != all(select(vec4<bool>(false, global2.x, arg_1.b, false), vec4<bool>(global2.x, arg_1.b, arg_1.a.a.a.x, arg_1.b), vec4<bool>(arg_1.b, false, false, global2.x)))).b.x).a;
    global0 = array<vec4<i32>, 22>();
    let var_2 = ~((vec3<u32>(_wgslsmith_div_u32(1u, var_1.a), func_4(Struct_4(Struct_3(61310u, arg_2), vec4<bool>(arg_1.b, false, true, true)), Struct_2(arg_1.a.a, arg_1.a.a, arg_0)).a.a.c, 4294967295u) | vec3<u32>(0u, 26730u, ~51063u)) >> (((select(vec3<u32>(var_1.a, arg_1.a.c, arg_0), vec3<u32>(83470u, 4294967295u, arg_1.a.a.c), true) >> (vec3<u32>(1312u, 4294967295u, 4294967295u) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, arg_1.a.a.c), vec3<u32>(40493u, arg_0, arg_0)), firstLeadingBit(vec3<u32>(70125u, 0u, 63803u)), ~vec3<u32>(1u, arg_0, var_1.a))) % vec3<u32>(32u)));
    return Struct_5(Struct_2(arg_1.a.b, func_4(func_2(func_2(true, true).b.x, true), arg_1.a).a.a, _wgslsmith_mult_u32(4294967295u, arg_0) | _wgslsmith_dot_vec3_u32(abs(var_2), abs(vec3<u32>(0u, 4294967295u, 0u)))), any(func_2((arg_1.a.b.d.x >= 9734i) == arg_1.a.b.a.x, true).b), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(-2147483647i, u_input.c.x, 16592i), u_input.c), _wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 1i, -10378i))), -(~arg_1.c.x), 170i), _wgslsmith_mod_vec3_i32(min(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(u_input.b.x, -19035i, -1i)), -vec3<i32>(0i, 1i, 0i)), arg_1.c)));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_5 {
    global1 = array<vec2<i32>, 11>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2127f, 143f, 424f, 657f) - vec4<f32>(-374f, 111f, 647f, 1472f))))));
    global0 = array<vec4<i32>, 22>();
    var var_1 = func_5(firstLeadingBit(4294967295u), func_4(func_2(all(vec4<bool>(true, true, true, true)), global2.x), Struct_2(Struct_1(vec3<bool>(true, true, true), -471f, reverseBits(0u), -global1[_wgslsmith_index_u32(56297u, 11u)]), Struct_1(func_3(), -1514f, _wgslsmith_add_u32(20637u, 80995u), select(vec2<i32>(u_input.c.x, 0i), global1[_wgslsmith_index_u32(4294967295u, 11u)], true)), 32325u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-1952f - 459f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(!var_1.b, 1000f > var_0.x).a.b, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-211f, -122f))))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * var_1.a.b.b))), -164f, var_1.a.b.a.x)), 1711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(851f + var_0.x) * _wgslsmith_f_op_f32(var_1.a.a.b + 1662f)))));
    return func_4(func_2(var_1.b, select(select(false, arg_1 || var_1.b, false), global2.x, !all(vec2<bool>(true, true)))), Struct_2(func_4(Struct_4(func_2(var_1.a.b.a.x, false).a, func_2(var_1.a.b.a.x, false).b), var_1.a).a.b, func_5(50609u, func_4(func_2(true, global2.x), Struct_2(Struct_1(var_1.a.b.a, 3902f, 0u, vec2<i32>(-1i, 11546i)), Struct_1(vec3<bool>(global2.x, false, true), var_2.x, 45684u, vec2<i32>(2147483647i, 1i)), var_1.a.a.c)), _wgslsmith_f_op_f32(round(var_2.x))).a.a, _wgslsmith_div_u32(~var_1.a.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(55821u, 2458u, 4294967295u, var_1.a.c), vec4<u32>(7063u, 56257u, 0u, var_1.a.b.c)) % 32u), var_1.a.a.c)));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec4<i32>) -> Struct_1 {
    global1 = array<vec2<i32>, 11>();
    var var_0 = !(false && arg_1.a.b.a.x);
    var var_1 = Struct_1(vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.b.b), 1f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.b * arg_1.a.b.b)), true, true), _wgslsmith_f_op_f32(-882f + 2372f), _wgslsmith_dot_vec3_u32(~abs(select(vec3<u32>(1u, arg_1.a.a.c, 4294967295u), vec3<u32>(arg_1.a.b.c, arg_1.a.b.c, 0u), arg_1.a.a.a)), _wgslsmith_mod_vec3_u32(min(~vec3<u32>(14583u, 31615u, 1u), abs(vec3<u32>(arg_1.a.c, arg_1.a.b.c, 11931u))), vec3<u32>(1u & arg_1.a.c, _wgslsmith_mod_u32(arg_1.a.a.c, arg_1.a.b.c), 1u))), func_4(func_2(global2.x, true), Struct_2(Struct_1(!arg_1.a.b.a, _wgslsmith_f_op_f32(-arg_1.a.b.b), arg_1.a.a.c, vec2<i32>(arg_2.x, 0i)), Struct_1(vec3<bool>(arg_1.a.b.a.x, false, arg_1.a.a.a.x), arg_1.a.a.b, 0u, vec2<i32>(arg_2.x, -14480i)), 9938u)).c.xy);
    global0 = array<vec4<i32>, 22>();
    global1 = array<vec2<i32>, 11>();
    return func_4(Struct_4(func_2(all(vec4<bool>(global2.x, false, var_1.a.x, false)), false).a, vec4<bool>(arg_1.a.a.a.x, true, var_1.a.x, func_2(true, true).b.x)), arg_1.a).a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 22>();
    global1 = array<vec2<i32>, 11>();
    var var_0 = func_6(~max(-(vec3<i32>(1i, u_input.c.x, u_input.c.x) >> (vec3<u32>(27914u, 1u, 1u) % vec3<u32>(32u))), -(vec3<i32>(u_input.c.x, u_input.d, u_input.d) << (vec3<u32>(0u, 32448u, 1u) % vec3<u32>(32u)))), func_1(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, 1u), ~50439u)), 22u)], all(select(!vec2<bool>(true, global2.x), !global2.yx, vec2<bool>(true, false)))), global0[_wgslsmith_index_u32(func_2(0i == _wgslsmith_mult_i32(u_input.d, u_input.d | 2147483647i), true).a.a, 22u)]);
    var var_1 = Struct_5(Struct_2(Struct_1(var_0.a, var_0.b, 0u, vec2<i32>(-1i) * -vec2<i32>(var_0.d.x, 1i)), func_4(func_2(true, any(vec3<bool>(true, global2.x, global2.x))), func_5(1u, Struct_5(Struct_2(Struct_1(vec3<bool>(global2.x, var_0.a.x, false), 1747f, 0u, vec2<i32>(var_0.d.x, 2147483647i)), Struct_1(var_0.a, 615f, var_0.c, global1[_wgslsmith_index_u32(1u, 11u)]), var_0.c), var_0.a.x, vec3<i32>(764i, 35055i, u_input.a.x)), _wgslsmith_f_op_f32(-var_0.b)).a).a.a, var_0.c), var_0.a.x, u_input.c);
    var var_2 = !func_3();
    var var_3 = Struct_4(Struct_3(~var_1.a.c, _wgslsmith_f_op_f32(-var_0.b)), select(vec4<bool>(1i < ~u_input.a.x, func_2(false, select(var_2.x, true, var_0.a.x)).b.x, true || (8306u > var_0.c), true), select(vec4<bool>(var_0.a.x, var_0.c > var_1.a.c, func_4(Struct_4(Struct_3(var_0.c, var_0.b), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(var_1.a.a.a, var_1.a.b.b, var_1.a.a.c, vec2<i32>(-2147483647i, var_0.d.x)), Struct_1(var_0.a, var_0.b, 1u, vec2<i32>(u_input.a.x, 2147483647i)), 19001u)).a.b.a.x, any(vec4<bool>(var_2.x, var_0.a.x, false, var_2.x))), !func_2(var_2.x, var_1.b).b, vec4<bool>(var_0.a.x, true, var_0.a.x, any(vec2<bool>(true, global2.x)))), true));
    var_2 = vec3<bool>(!(!(!var_0.a.x)), var_0.a.x, func_1(~vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.d, var_0.d), _wgslsmith_add_i32(56254i, var_1.c.x), reverseBits(var_0.d.x), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-18400i, 2147483647i, 2147483647i))), false).a.b.a.x);
    global1 = array<vec2<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(firstTrailingBit(vec4<u32>(16713u, var_0.c, 4294967295u, 31081u)) ^ max(vec4<u32>(var_0.c, 20493u, 36804u, var_3.a.a), vec4<u32>(40627u, 18808u, var_0.c, 4294967295u)))), ~3990i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_1.a.b.b, var_0.b, var_3.a.b)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, var_3.a.b, -948f, -980f)))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(848f + 342f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, var_0.b))), var_0.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.b.b, 987f, _wgslsmith_f_op_f32(-var_1.a.b.b)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.b, var_1.a.b.b, -1955f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.b.b, var_0.b, var_3.a.b), vec3<f32>(var_3.a.b, var_3.a.b, -250f)))))), abs(~(-vec2<i32>(var_0.d.x, var_0.d.x) & var_1.c.xy)));
}

