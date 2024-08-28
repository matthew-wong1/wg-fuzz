struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -14342i;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: f32 = -1457f;

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: bool) -> i32 {
    global1 = _wgslsmith_mult_i32(select(abs(~u_input.d.x << (0u % 32u)), ~8469i, true), global2.c);
    global3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b, _wgslsmith_f_op_f32(-1433f * -563f), any(vec2<bool>(false, false))))))));
    let var_0 = all(vec4<bool>(~u_input.c >= (8901u | (u_input.c & 1u)), !(!any(vec2<bool>(arg_2, true))), true, select(arg_0.x, arg_2 && true, true | !arg_2)));
    let var_1 = -428f;
    let var_2 = Struct_3(~vec4<u32>(~4294967295u, 9856u, ~global2.d, max(0u, 1u)) & ~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.b, 0u, arg_1.a.x)), vec4<u32>(arg_1.a.x, u_input.c, global2.d, 12425u) & vec4<u32>(54637u, 0u, arg_1.a.x, 9383u)));
    return 42759i;
}

fn func_2() -> Struct_2 {
    var var_0 = -func_3(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), Struct_3((vec4<u32>(3303u, u_input.c, 33033u, global2.a.x) & vec4<u32>(921u, u_input.b, u_input.c, u_input.b)) & ~vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, global2.d)), false);
    let var_1 = Struct_4(!any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, false, false), true)), global4[_wgslsmith_index_u32(147148u, 9u)], _wgslsmith_f_op_f32(916f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_f_op_f32(sign(global2.b)))));
    let var_2 = 0i;
    var var_3 = select(vec2<bool>((var_2 << (_wgslsmith_mod_u32(var_1.b.c.d, 122324u) % 32u)) != reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-29447i, 1i), vec2<i32>(-3929i, 0i))), any(select(select(vec4<bool>(var_1.a, true, false, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), false), select(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(false, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, true, var_1.a)), !vec4<bool>(true, var_1.a, true, false)))), vec2<bool>(false, (i32(-1i) * -40855i) < var_1.b.a.c), !(!vec2<bool>(any(vec3<bool>(var_1.a, false, var_1.a)), all(vec2<bool>(true, false)))));
    var var_4 = Struct_3(~(~vec4<u32>(5735u, u_input.b, 16844u, 0u) ^ ~vec4<u32>(global2.d, 329u, u_input.c, var_1.b.a.d)) ^ ~vec4<u32>(global2.a.x, u_input.b, ~u_input.b, global2.a.x));
    return var_1.b;
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = func_2();
    var_0 = global4[_wgslsmith_index_u32(~(~abs(1u)), 9u)];
    var var_1 = Struct_3(firstLeadingBit(vec4<u32>(var_0.c.d, u_input.c | 0u, max(4294967295u, 26286u), arg_0.a.d) >> ((countOneBits(vec4<u32>(0u, var_0.c.a.x, global2.d, 33734u)) & vec4<u32>(global2.a.x, global2.d, 4294967295u, var_0.c.d)) % vec4<u32>(32u))));
    let var_2 = Struct_3((_wgslsmith_sub_vec4_u32(var_1.a, abs(var_1.a)) >> (var_1.a % vec4<u32>(32u))) & var_1.a);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(2098f, 729f) * _wgslsmith_f_op_f32(trunc(902f)));
    return -2147483647i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<u32>) -> bool {
    global3 = global2.b;
    var var_0 = ~94561u;
    global4 = array<Struct_2, 9>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.c.b)));
    var_0 = _wgslsmith_mod_u32(arg_1.a.x, 0u | (global2.d << (arg_2.a.d % 32u)));
    return !(1u >= select(u_input.b, ~_wgslsmith_add_u32(arg_1.a.x, u_input.a.x), all(vec2<bool>(true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!all(vec2<bool>(global2.d <= global2.a.x, 0u <= global2.d)), func_4(vec4<i32>(-54986i, 1i, 2147483647i, func_1(Struct_2(Struct_1(global2.a, global2.b, 2147483647i, 4294967295u), vec4<f32>(global2.b, -173f, 374f, global2.b), Struct_1(vec3<u32>(0u, 1u, 19802u), -867f, u_input.e.x, 34243u)))) >> (vec4<u32>(~global2.d, 1u, 4294967295u, u_input.a.x) % vec4<u32>(32u)), Struct_3(~vec4<u32>(7122u, u_input.a.x, u_input.b, 4294967295u)), Struct_2(Struct_1(global2.a, -1269f, _wgslsmith_mult_i32(u_input.d.x, global2.c), ~0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.b, global2.b, -551f, 630f)))), func_2().c), global2.a), !any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)));
    global3 = _wgslsmith_f_op_f32(global2.b + global2.b);
    var var_1 = Struct_3(~_wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(global2.d, 1u, 1u, global2.a.x), vec4<u32>(global2.d, 70004u, 71063u, global2.d)), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global2.a.x, global2.a.x, u_input.b), vec4<u32>(global2.d, u_input.b, global2.d, 4294967295u)) & vec4<u32>(u_input.a.x, global2.d, 22010u, u_input.c)));
    global0 = func_2().c.c;
    var var_2 = func_2().a.a;
    var var_3 = Struct_2(func_2().c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-133f, 974f, false))))), global2.b, _wgslsmith_f_op_f32(floor(1000f)), 719f), func_2().a);
    let var_4 = Struct_4(var_0.x, Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(~var_3.c.a, _wgslsmith_div_vec3_u32(global2.a, var_3.c.a)), global2.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -11933i, var_3.a.c), vec3<i32>(7287i, 26389i, 23910i)), 87523u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_3.a.b + global2.b), _wgslsmith_f_op_f32(1179f + global2.b), _wgslsmith_f_op_f32(-1000f + global2.b), _wgslsmith_f_op_f32(1834f - -1451f)) + _wgslsmith_f_op_vec4_f32(var_3.b - func_2().b)), var_3.a), 752f);
    var_2 = vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_add_u32(max(global2.a.x, var_3.c.d), ~var_2.x), _wgslsmith_sub_u32(var_4.b.a.a.x, max(~var_1.a.x, select(var_4.b.a.a.x, u_input.a.x, var_0.x)))), u_input.a.x, var_4.b.a.d);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.b.x, var_4.c, var_3.a.b, var_3.a.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b.c.b, 1077f, _wgslsmith_f_op_f32(sign(-513f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_5.x)), _wgslsmith_f_op_f32(205f - var_5.x)), _wgslsmith_div_f32(438f, _wgslsmith_f_op_f32(2181f * var_3.c.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3.b.yy, var_3.b.yx, vec2<bool>(true, var_0.x)))))), var_4.b.a.c, firstLeadingBit(-vec3<i32>(global2.c, u_input.e.x, 2147483647i) ^ u_input.d.zwx), -836f, var_4.b.b.wy);
}

