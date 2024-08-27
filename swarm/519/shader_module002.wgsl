struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, false, true)));

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    global0 = array<Struct_3, 12>();
    var var_0 = 1000f;
    let var_1 = ~(~1u);
    let var_2 = ~(~var_1) & _wgslsmith_sub_u32(var_1, (var_1 & 18125u) | ~(~var_1));
    let var_3 = false & (!(_wgslsmith_mult_i32(u_input.a.x, 30966i) <= 2147483647i) || (true & global1.x));
    return !(!select(vec3<bool>(4294967295u >= var_1, all(global1.yx), global1.x), select(!vec3<bool>(global1.x, true, global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, var_3), vec3<bool>(true, false, global1.x)), vec3<bool>(false, false, global1.x)), global1.x));
}

fn func_2() -> bool {
    global1 = !func_3();
    var var_0 = 302f;
    let var_1 = ~_wgslsmith_mult_i32(-1i, select(min(u_input.a.x << (23537u % 32u), ~u_input.b), firstTrailingBit(u_input.b) >> (~4294967295u % 32u), all(vec2<bool>(true, global1.x))));
    let var_2 = Struct_1(1u, !any(vec3<bool>(all(vec4<bool>(global1.x, false, true, true)), global1.x, global1.x)), var_1, vec2<f32>(562f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-794f))))), 33040i);
    let var_3 = select(!(!(!(!vec3<bool>(true, false, global1.x)))), !vec3<bool>(all(!vec4<bool>(var_2.b, global1.x, false, false)), global1.x, var_2.b), var_2.b);
    return ~var_2.a >= _wgslsmith_add_u32(var_2.a, select(var_2.a, var_2.a, _wgslsmith_clamp_i32(13290i, u_input.a.x, -26937i) <= -u_input.a.x));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -712f))), 382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1234f))) - -190f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-275f + -226f))))));
    return Struct_1(0u, func_2() & global1.x, u_input.a.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-838f, var_0.x) + var_0.zy)))))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = 19482u;
    let var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~(~var_0.a), _wgslsmith_add_u32(var_0.a, _wgslsmith_sub_u32(var_0.a, var_0.a)), ~(~var_0.a), _wgslsmith_div_u32(_wgslsmith_add_u32(65622u, var_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(35196u, var_0.a, 1u, var_0.a), vec4<u32>(var_0.a, var_0.a, var_0.a, 23943u)))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, func_1().a, _wgslsmith_sub_u32(var_0.a, 52991u), ~39114u) << (vec4<u32>(var_0.a, 37089u, _wgslsmith_mod_u32(var_0.a, var_0.a), _wgslsmith_add_u32(var_0.a, 0u)) % vec4<u32>(32u)), vec4<u32>(18245u, _wgslsmith_mult_u32(min(var_0.a, 4294967295u), abs(0u)), 15955u, _wgslsmith_mod_u32(1u, var_0.a) >> (~4294967295u % 32u))));
    var var_3 = Struct_5(Struct_2(var_0, _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11221u, 16076u, var_0.a, var_2.x), var_2), 35427u, ~var_2.x, 29773u & var_2.x), vec4<u32>(_wgslsmith_sub_u32(var_2.x, var_0.a), var_0.a, 43080u, ~var_0.a))), select(func_3(), !vec3<bool>(false, !var_0.b, var_0.b), select(vec3<bool>(true, true, true), vec3<bool>(var_0.b, false, func_2()), false)), var_0, var_2);
    let var_4 = global0[_wgslsmith_index_u32(0u, 12u)];
    var_3 = Struct_5(Struct_2(func_1(), var_2), vec3<bool>(global1.x, all(!(!vec2<bool>(var_3.c.b, true))), all(vec3<bool>(var_3.c.c == 2147483647i, !var_3.a.a.b, var_4.a.x))), func_1(), reverseBits(vec4<u32>(4294967295u, var_0.a, _wgslsmith_add_u32(max(var_0.a, var_0.a), var_3.a.b.x), ~var_0.a)));
    var_3 = Struct_5(var_3.a, !(!var_3.b), Struct_1(var_3.c.a, !var_3.b.x, -109186i << ((var_2.x | ~var_2.x) % 32u), _wgslsmith_f_op_vec2_f32(ceil(var_3.a.a.d)), 3057i), ~vec4<u32>(var_0.a, var_2.x, ~(~var_0.a), ~(~24465u)));
    let var_5 = _wgslsmith_f_op_f32(1092f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-var_3.c.d.x)) + var_0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer((~vec3<u32>(41770u, 4294967295u, 26605u) >> (var_3.d.wzy % vec3<u32>(32u))) >> (var_3.d.zxy % vec3<u32>(32u)), countOneBits(max(~_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.b, -39124i, 1i), vec4<i32>(1i, u_input.a.x, var_0.e, 27626i)), ~(~vec4<i32>(18706i, -2147483647i, 2147483647i, var_0.c)))));
}

