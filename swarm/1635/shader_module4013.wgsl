struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(true, false, vec3<i32>(13651i, 0i, 2147483647i)), Struct_1(true, false, vec3<i32>(-53049i, 2147483647i, 1i)), Struct_1(false, false, vec3<i32>(1i, -1i, 30280i)), Struct_1(true, false, vec3<i32>(23772i, -1i, 2147483647i)), Struct_1(true, false, vec3<i32>(0i, 0i, 2147483647i)), Struct_1(true, true, vec3<i32>(17791i, i32(-2147483648), -9360i)), Struct_1(true, true, vec3<i32>(2147483647i, 1i, -5303i)), Struct_1(true, true, vec3<i32>(2147483647i, i32(-2147483648), -36756i)), Struct_1(false, false, vec3<i32>(-20122i, -20712i, -23531i)), Struct_1(false, false, vec3<i32>(0i, 17830i, -28439i)), Struct_1(false, false, vec3<i32>(0i, 2147483647i, -10497i)), Struct_1(false, false, vec3<i32>(2147483647i, 2147483647i, -33091i)), Struct_1(true, true, vec3<i32>(4620i, -9503i, -56939i)), Struct_1(false, false, vec3<i32>(47040i, -19493i, -23204i)), Struct_1(true, true, vec3<i32>(-1i, 2354i, 2147483647i)), Struct_1(true, true, vec3<i32>(2147483647i, 17243i, i32(-2147483648))), Struct_1(false, false, vec3<i32>(8764i, 0i, 0i)), Struct_1(false, false, vec3<i32>(0i, 20122i, 129i)), Struct_1(false, true, vec3<i32>(0i, -57263i, 34492i)), Struct_1(false, false, vec3<i32>(12137i, 2147483647i, -9093i)), Struct_1(false, true, vec3<i32>(18008i, 1i, 0i)), Struct_1(true, true, vec3<i32>(1313i, 35659i, -36823i)), Struct_1(false, true, vec3<i32>(2273i, 0i, 1i)), Struct_1(true, true, vec3<i32>(i32(-2147483648), -5925i, 1i)));

var<private> global1: vec2<bool>;

var<private> global2: vec2<bool>;

var<private> global3: array<vec4<u32>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1264f));
    return vec2<bool>(any(select(!select(vec3<bool>(true, true, arg_1.b), vec3<bool>(true, global2.x, true), false), !select(vec3<bool>(false, arg_1.a, global1.x), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, true)), vec3<bool>(true, true, global2.x))), global2.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: bool) -> u32 {
    global1 = !(!func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1582f, arg_2.c.x))) * _wgslsmith_f_op_vec2_f32(-arg_2.c.wx)), arg_2.a));
    global3 = array<vec4<u32>, 2>();
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(arg_2.c));
    global2 = select(!(!select(vec2<bool>(global1.x, false), select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, true), vec2<bool>(true, arg_2.b.b)), true)), !vec2<bool>(!(!global2.x), !arg_3), all(vec4<bool>(true, true, any(select(vec4<bool>(global1.x, true, arg_3, global1.x), vec4<bool>(true, arg_2.b.b, global1.x, arg_3), vec4<bool>(false, arg_2.e, global2.x, false))), select(true, arg_0.x < 54089u, arg_3 && true))));
    var var_1 = !select(vec4<bool>(!any(vec3<bool>(global2.x, arg_2.d, true)), false, all(vec4<bool>(true, false, global2.x, false)), true), vec4<bool>(true, arg_3, false, any(select(vec2<bool>(arg_3, arg_3), vec2<bool>(global1.x, false), vec2<bool>(false, true)))), true);
    return 56188u;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_2(!(!(!select(vec2<bool>(global1.x, true), vec2<bool>(true, global2.x), global2.x))), min(-max(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.x, 1i), arg_1), vec2<i32>(arg_1.x, arg_1.x)), vec2<i32>(u_input.b, ~arg_1.x << (func_2(arg_0, vec3<u32>(1u, arg_0.x, arg_0.x), Struct_3(Struct_1(global1.x, global1.x, vec3<i32>(-1i, -2147483647i, u_input.b)), global0[_wgslsmith_index_u32(1u, 24u)], vec4<f32>(-768f, -421f, 1000f, 348f), false, false), global1.x) % 32u))), Struct_1(any(!select(vec3<bool>(true, false, global2.x), vec3<bool>(global1.x, global1.x, global1.x), false)), select(global1.x, select(false, true, -6693i != u_input.b), true), ~(-(~vec3<i32>(u_input.a, u_input.b, -2147483647i)))), arg_0.x);
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(651f, 1193f, -326f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-132f, -1775f, -465f) + vec3<f32>(-564f, 845f, 533f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(311f, -793f, -1806f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1508f, -337f, -1028f), vec3<f32>(818f, 1702f, -1188f)))))))), abs(~vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 38895i, 16228i), vec4<i32>(14733i, 81983i, arg_1.x, -2147483647i)), u_input.b, 24823i)));
    let var_2 = func_2(~vec2<u32>(arg_0.x, ~var_0.d), vec3<u32>(~0u, ~(~arg_0.x), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.d, 1u) << (_wgslsmith_div_u32(var_0.d, var_0.d) % 32u), abs(29407u | arg_0.x), abs(2875u))), Struct_3(Struct_1(true, global2.x, var_1.b.wzx), var_0.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1385f, var_1.a.x, var_1.a.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, var_1.a.x, -605f, var_1.a.x))))))), func_3(vec2<f32>(var_1.a.x, -543f), var_0.c).x, true), any(var_0.a));
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(var_0.d, 24u)], var_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1852f), _wgslsmith_f_op_f32(291f - _wgslsmith_f_op_f32(var_1.a.x - 242f)), var_1.a.x)), all(!(!select(vec3<bool>(false, var_0.c.a, true), vec3<bool>(true, global2.x, false), var_0.c.a))), false);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    global2 = func_1(vec2<u32>(3197u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), (~(vec2<i32>(u_input.a, 10566i) >> (vec2<u32>(1u, 74760u) % vec2<u32>(32u))) >> (vec2<u32>(1u, 3510u) % vec2<u32>(32u))) >> (select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 23866u, 1u), vec3<u32>(9934u, 5898u, 0u)), _wgslsmith_add_u32(4647u, 18970u)), min(vec2<u32>(51429u, 115136u), abs(vec2<u32>(1u, 4294967295u))), !select(vec2<bool>(false, true), vec2<bool>(false, global1.x), true)) % vec2<u32>(32u)));
    global2 = !vec2<bool>(false, func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-818f, -3398f), vec2<f32>(-922f, -304f), vec2<bool>(global2.x, global2.x))))), global0[_wgslsmith_index_u32(~11953u, 24u)]).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(611f))), vec2<i32>(i32(-1i) * -_wgslsmith_div_i32(u_input.a, u_input.b), i32(-1i) * -min(0i, -13956i)), -202f);
}

