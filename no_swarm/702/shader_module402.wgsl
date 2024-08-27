struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(1u, 59106u, 31097u), vec3<u32>(37776u, 0u, 61316u), vec3<u32>(17576u, 0u, 24353u), vec3<u32>(51300u, 29927u, 0u), vec3<u32>(27066u, 3414u, 1540u), vec3<u32>(869u, 0u, 1u), vec3<u32>(0u, 40874u, 4294967295u));

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global2: Struct_4 = Struct_4(11388u, Struct_2(Struct_1(vec4<i32>(0i, 52041i, 4467i, 5611i), vec2<f32>(-590f, -1000f), -1649f, vec4<u32>(6199u, 44311u, 4294967295u, 1u)), -1529f, vec4<i32>(1i, 2147483647i, -4892i, 0i)), vec2<i32>(1i, 32310i), vec4<bool>(true, true, false, false), -449f);

var<private> global3: f32 = 651f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> vec4<f32> {
    global0 = array<vec3<u32>, 7>();
    global1 = arg_0.d;
    var var_0 = arg_1;
    global2 = arg_0;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b.a.c)))))), global2.b.a.b.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e, _wgslsmith_f_op_f32(ceil(-668f)), _wgslsmith_f_op_f32(round(-958f)), _wgslsmith_f_op_f32(global2.e * 579f)) - vec4<f32>(_wgslsmith_f_op_f32(step(global2.e, global2.b.a.c)), _wgslsmith_f_op_f32(ceil(arg_0.b.a.c)), -393f, _wgslsmith_f_op_f32(-arg_0.e))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e) * -122f), _wgslsmith_f_op_f32(sign(-1033f))), global2.b.b, _wgslsmith_f_op_f32(-arg_0.b.a.b.x), 238f));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_4 {
    var var_0 = vec2<u32>(22827u, ~(~(~max(0u, global2.a))));
    var var_1 = Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), abs(reverseBits(-arg_0.a.yw))));
    global0 = array<vec3<u32>, 7>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1994f, -363f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(arg_1, _wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(124259u, global2.b, arg_0.a.zx, vec4<bool>(false, global1.x, global1.x, global2.d.x), arg_1.x), Struct_3(arg_0.a.ww))))), arg_1)))));
    return Struct_4(var_0.x, global2.b, ~((global2.b.a.a.yw ^ min(arg_0.a.zy, vec2<i32>(arg_0.a.x, -1i))) | select(vec2<i32>(-1i, arg_0.a.x), select(arg_0.a.zz, vec2<i32>(var_1.a.x, -10143i), global1.x), true)), vec4<bool>(all(!global1.zww), all(vec3<bool>(true, true && global2.d.x, true)), true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-646f - _wgslsmith_f_op_f32(select(-253f, arg_1.x, true)))));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> i32 {
    var var_0 = func_2(global2.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.c, arg_1.a.b.x, 3093f, -1560f))));
    var var_1 = func_2(func_2(global2.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b.x, -1065f, -491f, arg_1.a.b.x) + vec4<f32>(-1210f, arg_1.b, -369f, arg_1.a.b.x)) * vec4<f32>(arg_1.a.c, arg_1.a.c, var_0.b.a.b.x, arg_1.b)))).b.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.c, -1511f, var_0.b.a.b.x, var_0.b.a.c))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(571f - global2.b.a.b.x), 1025f, global2.e, 541f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.c, -535f, 638f, 664f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, -605f, var_0.b.b, -1117f) - vec4<f32>(1000f, 908f, var_0.e, 1612f)), select(false, global1.x, global1.x)))), select(select(vec4<bool>(global1.x, false, var_0.d.x, global1.x), vec4<bool>(false, global2.d.x, false, true), global2.d.x), !var_0.d, true)))).b.a;
    global0 = array<vec3<u32>, 7>();
    global0 = array<vec3<u32>, 7>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.b.x));
    return 26542i | ~func_2(var_0.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.a.c, -1326f, var_0.b.b, 377f))))).c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(abs(global2.b.c.zwy), -(~(global2.b.a.a.zzy << ((vec3<u32>(1u, 4294967295u, global2.a) | vec3<u32>(global2.b.a.d.x, 0u, 4294967295u)) % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, countOneBits(func_1(0u, Struct_2(Struct_1(vec4<i32>(52563i, global2.b.a.a.x, 2147483647i, global2.b.c.x), vec2<f32>(global2.b.b, 568f), global2.e, vec4<u32>(4294967295u, 9689u, 45972u, 4294967295u)), -952f, global2.b.c))), -31343i), vec3<i32>(countOneBits(_wgslsmith_sub_i32(u_input.a, ~var_0.x)), -1i, u_input.a));
    var var_2 = func_2(func_2(global2.b.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(370f, 2325f, _wgslsmith_f_op_f32(-global2.e), 802f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.a.c, 316f, -617f, -856f) - vec4<f32>(global2.e, 287f, 3164f, global2.b.a.b.x)))))).b.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e, global2.b.a.c, 1000f, global2.e))).b.a;
    var var_3 = vec2<bool>(true, !global2.d.x);
    var var_4 = global2.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(global2.b.a.d.zxz, global0[_wgslsmith_index_u32(var_2.d.x, 7u)]), reverseBits(0u), ~1u)), ~(~max(var_2.d.zyz, global2.b.a.d.wzy))), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u & _wgslsmith_clamp_u32(var_2.d.x, 53810u, 4294967295u), var_2.d.x), ~(~_wgslsmith_mod_vec3_u32(var_2.d.ywz, vec3<u32>(4294967295u, global2.b.a.d.x, 33149u)))));
}

