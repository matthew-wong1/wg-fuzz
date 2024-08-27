struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: Struct_3;

var<private> global3: array<vec3<u32>, 1>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global1.a)), global1.a)));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_mod_u32(u_input.a & _wgslsmith_mult_u32(u_input.a, 58615u), global2.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(global1.a)))) + _wgslsmith_f_op_vec2_f32(select(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -759f)))).a, global1.a, vec2<bool>(!global0.b.x, !(22689i < global2.d.x)))));
    var_0 = abs(1u);
    return select(select(!vec2<bool>(any(vec4<bool>(global0.b.x, global2.c, global2.c, false)), true), select(select(vec2<bool>(true, global0.b.x), global0.a, global0.a), !select(global0.a, global0.a, vec2<bool>(global0.a.x, true)), !(!global0.b)), !(!global0.b)), select(select(global0.a, vec2<bool>(true, true), true), select(global0.a, vec2<bool>(!global0.a.x, true), !select(vec2<bool>(global0.b.x, global0.a.x), global0.a, vec2<bool>(global2.c, global2.c))), select(global0.b, !vec2<bool>(global2.c, global2.c), !global0.b.x & !global2.c)), vec2<bool>(all(!global0.b), any(!select(vec2<bool>(global0.b.x, global2.c), vec2<bool>(global0.b.x, global2.c), global0.b))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: u32) -> i32 {
    var var_0 = global2.b;
    global1 = func_1(-147f);
    let var_1 = all(select(select(vec4<bool>(!arg_1.x, global2.c, -795f != global2.b.a.x, all(vec4<bool>(false, true, arg_1.x, arg_1.x))), select(!arg_1, vec4<bool>(global2.c, true, arg_1.x, arg_0.x), vec4<bool>(false, global0.b.x, arg_1.x, true)), arg_1), !arg_1, true));
    let var_2 = u_input.a;
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2428f)) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global1.a.x))), global2.b.a.x));
    return -6186i;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(~firstLeadingBit(u_input.b << (vec4<u32>(30621u, global2.e.x, 47779u, arg_0.x) % vec4<u32>(32u))), u_input.b) < _wgslsmith_div_i32(func_4(func_3(), !vec4<bool>(false, true, global2.c, false), 0u), arg_3.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(449f * _wgslsmith_f_op_f32(select(global1.a.x, _wgslsmith_f_op_f32(max(606f, global2.b.a.x)), false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.b.a.x, -1047f)) - _wgslsmith_f_op_f32(round(global2.b.a.x))), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-149f))))).a.x, 1751f);
    var_0 = true;
    global2 = Struct_3(~vec2<u32>(_wgslsmith_mult_u32(arg_2, arg_0.x) ^ countOneBits(11551u), arg_2), func_1(_wgslsmith_f_op_f32(-var_1.x)), global0.b.x, ~(~vec2<i32>(1i, -1i)) << (arg_0.yw % vec2<u32>(32u)), select(global2.e, vec3<u32>(arg_0.x, ~global2.a.x, global2.e.x), -20306i >= global2.d.x));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(global2.a.x, arg_2, u_input.a, ~30438u), arg_0);
    return !vec3<bool>(all(vec4<bool>(false, global0.b.x, true, global2.c)) || (_wgslsmith_add_u32(global2.a.x, 43296u) != _wgslsmith_mult_u32(arg_0.x, arg_0.x)), false, true);
}

fn func_5(arg_0: vec3<bool>) -> Struct_3 {
    global1 = func_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(947f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1.a.x, 907f)), _wgslsmith_f_op_f32(-1463f * -235f)))), 668f)));
    let var_0 = reverseBits(-(~u_input.d) & u_input.b);
    var var_1 = select(_wgslsmith_div_u32(firstLeadingBit(~(~66569u)), _wgslsmith_add_u32(global2.e.x, 1u)), 1u, true);
    return Struct_3(global2.a ^ global2.e.xz, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -753f)) * _wgslsmith_f_op_f32(trunc(func_1(global2.b.a.x).a.x)))), !arg_0.x, firstTrailingBit(firstLeadingBit(u_input.b.wx)), _wgslsmith_mult_vec3_u32(vec3<u32>(~reverseBits(global2.a.x), 1u, global2.e.x), _wgslsmith_mod_vec3_u32(select(global2.e, ~vec3<u32>(18091u, 1u, global2.a.x), vec3<bool>(arg_0.x, true, global0.b.x)), _wgslsmith_clamp_vec3_u32(global2.e, vec3<u32>(global2.e.x, 76425u, 0u), global2.e) | ~vec3<u32>(global2.a.x, global2.e.x, 85768u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 1>();
    global1 = func_1(_wgslsmith_div_f32(-1960f, _wgslsmith_f_op_f32(step(-2266f, -136f))));
    global3 = array<vec3<u32>, 1>();
    global0 = Struct_2(select(vec2<bool>(true, global2.c), !vec2<bool>(!global2.c, global2.c || false), select(!global0.b, vec2<bool>(global0.a.x, global0.b.x), global0.b.x)), global0.a);
    global2 = func_5(func_2(~vec4<u32>(19867u ^ u_input.a, ~4294967295u, 1u, global2.a.x), u_input.b.yww, ~112221u, countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.d.x, -16776i), u_input.d.wy))));
    var var_0 = Struct_2(vec2<bool>(!(!(true || global0.b.x)), any(!vec4<bool>(true, global0.a.x, global2.c, global0.a.x))), select(global0.b, global0.b, _wgslsmith_mult_i32(-49078i, _wgslsmith_mult_i32(-17180i, global2.d.x)) == -1i));
    var_0 = Struct_2(!vec2<bool>(select(u_input.d.x > 20635i, var_0.a.x, func_3().x), false), var_0.a);
    let var_1 = vec4<bool>(!(!func_5(!vec3<bool>(true, var_0.b.x, true)).c), func_2(_wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 21879u, u_input.a, 4294967295u), vec4<u32>(60975u, 4294967295u, 89820u, u_input.a), vec4<bool>(true, global2.c, true, true)), abs(vec4<u32>(global2.a.x, u_input.a, 0u, 287u))) << (~abs(vec4<u32>(global2.e.x, u_input.a, global2.a.x, 49730u)) % vec4<u32>(32u)), vec3<i32>(global2.d.x, -_wgslsmith_sub_i32(global2.d.x, 1i), u_input.c), select(u_input.a | 10162u, u_input.a, func_3().x), -(~global2.d << (global2.e.zx % vec2<u32>(32u)))).x, !(!global2.c), true);
    var_0 = Struct_2(vec2<bool>(!(_wgslsmith_f_op_f32(1000f - global1.a.x) <= _wgslsmith_f_op_f32(-global2.b.a.x)), !(func_2(vec4<u32>(u_input.a, 1525u, global2.e.x, global2.e.x), vec3<i32>(45889i, u_input.b.x, global2.d.x), 24528u, vec2<i32>(-2147483647i, u_input.d.x)).x && true)), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, global2.b.a.x, 64711u, 185f);
}

