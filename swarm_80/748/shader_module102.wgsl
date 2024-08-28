struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: vec2<bool>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b))), _wgslsmith_f_op_f32(-379f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-261f + arg_0.b)), _wgslsmith_f_op_f32(-arg_2), all(!vec3<bool>(global2.x, false, global2.x))))));
    let var_1 = -arg_0.a.zw;
    let var_2 = _wgslsmith_add_u32(abs(u_input.b), ~(~40340u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(0u, 14u)]);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1547f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -877f))))));
    return vec4<u32>(arg_0.c, min(arg_0.c, ~(944u & arg_0.c)), ~48852u, 25470u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> vec4<i32> {
    global1 = array<Struct_1, 9>();
    return vec4<i32>(u_input.d.x, _wgslsmith_mult_i32(u_input.d.x, 1i), 0i, -u_input.d.x);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = array<vec2<f32>, 14>();
    var var_0 = reverseBits(_wgslsmith_sub_u32(firstLeadingBit(88638u), u_input.a << (u_input.b % 32u)));
    var var_1 = min(func_4(abs(countOneBits(func_3(Struct_3(vec4<i32>(-2147483647i, 71130i, u_input.d.x, 2147483647i), 1000f, u_input.b, global2.x), vec3<i32>(-1i, u_input.d.x, u_input.d.x), 330f))), Struct_3(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, _wgslsmith_div_i32(-1i, -1i)), -389f, u_input.b, true), ~max(u_input.d.x, u_input.d.x), arg_0), ~vec4<i32>(-(~65698i), _wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_clamp_vec3_i32(u_input.d, u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, 12549i))), -2147483647i, -u_input.d.x));
    let var_2 = _wgslsmith_div_i32(u_input.d.x >> (u_input.b % 32u), var_1.x);
    let var_3 = vec2<u32>(0u, 1u);
    return Struct_1(true);
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = u_input.c.xzw;
    global2 = vec2<bool>(all(!vec4<bool>(!arg_1.a.a, true, global2.x, !global2.x)), global2.x);
    let var_1 = u_input.a;
    let var_2 = func_2(Struct_2(arg_1.a));
    let var_3 = abs(vec2<u32>(2792u, u_input.a));
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: u32, arg_3: vec2<f32>) -> bool {
    var var_0 = select(vec4<bool>(all(select(vec3<bool>(global2.x, true, arg_1.b.a.a), vec3<bool>(true, true, false), select(vec3<bool>(arg_1.b.a.a, arg_1.b.a.a, false), vec3<bool>(global2.x, false, true), vec3<bool>(false, true, arg_1.b.a.a)))), !any(!vec3<bool>(global2.x, arg_1.b.a.a, true)), func_2(func_1(_wgslsmith_f_op_f32(trunc(708f)), arg_1.b)).a, global2.x), select(vec4<bool>(func_1(_wgslsmith_f_op_f32(trunc(-1589f)), func_1(-1000f, Struct_2(Struct_1(global2.x)))).a.a, (arg_0 == -280f) || true, select(true, func_2(Struct_2(Struct_1(arg_1.b.a.a))).a, true), any(vec4<bool>(arg_1.b.a.a, global2.x, true, arg_1.b.a.a))), select(select(vec4<bool>(true, global2.x, arg_1.b.a.a, arg_1.b.a.a), vec4<bool>(global2.x, arg_1.b.a.a, global2.x, false), func_2(Struct_2(global1[_wgslsmith_index_u32(40599u, 9u)])).a), !(!vec4<bool>(arg_1.b.a.a, false, global2.x, true)), true), (arg_1.b.a.a | false) | true), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(34633u, 80223u, 4294967295u), vec3<u32>(arg_2, u_input.c.x, arg_2)) != ~firstTrailingBit(countOneBits(u_input.b)));
    global0 = array<vec2<f32>, 14>();
    var var_1 = Struct_1(func_2(arg_1.b).a);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -780f), _wgslsmith_div_f32(arg_1.c, 670f)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_3.x, 296f), _wgslsmith_f_op_vec2_f32(-arg_3))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(57568u, 14u)])) * global0[_wgslsmith_index_u32(~u_input.a, 14u)]), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(arg_0))))));
    let var_3 = Struct_3(_wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.d.x, 32306i, 0i, 0i)), vec4<i32>(1i, -6663i, firstTrailingBit(u_input.d.x), abs(u_input.d.x))) | ~(vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, arg_1.a.x, arg_1.a.x, u_input.d.x)), _wgslsmith_f_op_f32(-arg_3.x), reverseBits(_wgslsmith_clamp_u32(1u, arg_2 << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, u_input.c.x), u_input.c.zwy)) & u_input.a), all(vec2<bool>(any(vec4<bool>(true, true, true, true)), all(var_0.wzy))));
    return 1i <= _wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_3.a.x) & var_3.a.zy, firstLeadingBit(vec2<i32>(-59250i, arg_1.a.x))) >> (~(~40479u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec4_u32(~(~_wgslsmith_div_vec4_u32(u_input.c, u_input.c)), u_input.c);
    var var_1 = u_input.d.x ^ select(firstLeadingBit(-u_input.d.x), max(min(_wgslsmith_dot_vec2_i32(u_input.d.xz, u_input.d.xz), -1i), ~max(u_input.d.x, u_input.d.x)), func_5(1372f, Struct_4(vec2<i32>(u_input.d.x, u_input.d.x), func_1(-807f, Struct_2(Struct_1(false))), 570f), _wgslsmith_mod_u32(u_input.b, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-424f, 376f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 723f) - vec2<f32>(972f, -713f)))));
    global0 = array<vec2<f32>, 14>();
    global0 = array<vec2<f32>, 14>();
    var_1 = firstTrailingBit(abs(u_input.d.x | u_input.d.x));
    var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(var_0.x, 0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 45280u, var_0.x, 13110u), u_input.c), firstTrailingBit(6856u), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.a, 71272u, var_0.x), u_input.c))));
    let var_2 = ~1u;
    let var_3 = vec4<f32>(-834f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * 190f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-974f, -519f, global2.x)) + 904f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1237f, -358f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f - -171f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-804f - 848f))))), _wgslsmith_f_op_f32(floor(-920f)));
    global1 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(595f, countOneBits(_wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, u_input.d.x), -2147483647i)), countOneBits(_wgslsmith_mult_i32(u_input.d.x, _wgslsmith_div_i32(22988i, firstTrailingBit(-1i)))), vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, 636f) - 1008f), 1417f)), vec3<u32>(~var_0.x, var_0.x, ~_wgslsmith_sub_u32(var_2, var_0.x) & 4294967295u));
}

