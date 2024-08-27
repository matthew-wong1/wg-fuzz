struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26>;

var<private> global1: array<i32, 29> = array<i32, 29>(34200i, -1038i, -28446i, -5931i, 20031i, -1i, 0i, 2147483647i, -11759i, 1080i, -1i, 101162i, 0i, 2147483647i, i32(-2147483648), 25326i, -1i, 36657i, -7812i, -44121i, -1i, 15781i, i32(-2147483648), -1i, -28483i, -1i, -23487i, -14858i, 257i);

var<private> global2: Struct_1;

var<private> global3: array<Struct_3, 23>;

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_4) -> f32 {
    let var_0 = select(true, _wgslsmith_sub_i32(81721i, -(~u_input.e)) <= u_input.e, arg_1.d.x);
    let var_1 = -1i;
    let var_2 = any(vec2<bool>(-19483i > (i32(-1i) * -u_input.e), true));
    let var_3 = global0[_wgslsmith_index_u32(100468u, 26u)];
    let var_4 = global4[_wgslsmith_index_u32(u_input.a, 22u)];
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.e.a.x), arg_2.e.a.x, arg_2.b.x));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), Struct_3(Struct_2(2147483647i), Struct_2(1i), global2.b.yx, vec3<bool>(global2.c, global2.c, global2.b.x)), Struct_4(vec4<bool>(false, false, global2.c, global2.b.x), vec3<bool>(global2.c, global2.b.x, global2.c), vec3<u32>(global2.d.x, 0u, 36911u), 1u, Struct_1(global2.a, vec3<bool>(global2.b.x, global2.c, true), global2.c, vec2<u32>(1u, 3439u))))), _wgslsmith_f_op_f32(trunc(arg_0)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + global2.a.x), arg_0, global2.a.x))));
    let var_1 = Struct_2(countOneBits(-2147483647i));
    global3 = array<Struct_3, 23>();
    var var_2 = i32(-1i) * -2147483647i;
    let var_3 = ~(~(~vec4<u32>(global2.d.x, ~u_input.b.x, 1u, 1u)));
    return 2147483647i;
}

fn func_1() -> i32 {
    var var_0 = countOneBits(vec2<i32>(-14831i, func_2(global2.a.x)));
    global4 = array<Struct_1, 22>();
    let var_1 = Struct_2(~(-51832i));
    let var_2 = Struct_2(1i);
    global3 = array<Struct_3, 23>();
    return 2147483647i;
}

fn func_4(arg_0: i32) -> Struct_4 {
    global3 = array<Struct_3, 23>();
    global2 = global4[_wgslsmith_index_u32(global2.d.x, 22u)];
    var var_0 = -1583i;
    var var_1 = Struct_4(vec4<bool>(global2.c, !global2.c, !(!global2.b.x) != global2.c, true), !vec3<bool>(true, !global2.c, all(select(global2.b.yy, global2.b.zy, false))), u_input.b.xxw, _wgslsmith_add_u32(0u, ~countOneBits(global2.d.x)), global4[_wgslsmith_index_u32(~(~(~global2.d.x ^ _wgslsmith_add_u32(21611u, global2.d.x))), 22u)]);
    let var_2 = ~vec3<u32>(abs(global2.d.x), _wgslsmith_mult_u32(1u, 27617u ^ var_1.d) | ~(~global2.d.x), abs(52300u));
    return Struct_4(select(var_1.a, select(!vec4<bool>(var_1.a.x, false, var_1.b.x, false), select(vec4<bool>(false, var_1.b.x, global2.c, true), vec4<bool>(global2.c, false, false, true), var_1.a), var_1.a), select(select(select(var_1.a, vec4<bool>(var_1.e.b.x, global2.c, true, true), var_1.a), !vec4<bool>(var_1.e.b.x, true, var_1.e.b.x, true), !vec4<bool>(var_1.a.x, false, var_1.e.b.x, global2.c)), vec4<bool>(!global2.c, true, !global2.c, true), select(global2.c, all(vec2<bool>(false, true)), !global2.c))), !global2.b, vec3<u32>(0u, max(43281u, 1u), global2.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(4294967295u << (0u % 32u)), ~55141u, var_1.d), vec3<u32>(~6041u, abs(countOneBits(var_2.x)), abs(global2.d.x))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.e.a.x, 162f), vec2<f32>(119f, -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.a, var_1.e.a) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-601f, global2.a.x), var_1.e.a)))), vec3<bool>(true, false, true), var_1.e.b.x, countOneBits(_wgslsmith_sub_vec2_u32(var_1.c.xx, ~vec2<u32>(global2.d.x, var_1.c.x)))));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.e.a.x)));
    global3 = array<Struct_3, 23>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.a.x, arg_1.e.a.x))), vec3<bool>(global2.c, false, true), true, _wgslsmith_add_vec2_u32(vec2<u32>(global2.d.x & arg_1.d, abs(u_input.b.x) ^ global2.d.x), ~vec2<u32>(arg_1.e.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e.d.x, u_input.b.x, 1u), arg_1.c))));
    var var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.x)));
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 23>();
    var var_0 = countOneBits(u_input.b.zx);
    global2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.a)) + global2.a), vec2<f32>(_wgslsmith_div_f32(-967f, global2.a.x), global2.a.x)), func_5(true, func_4(func_1()), true && global2.b.x), !(!all(vec2<bool>(false, global2.b.x))), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(abs(global2.d), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, u_input.a), global2.d)), vec2<u32>(4294967295u, u_input.a), vec2<u32>((u_input.b.x | 33935u) << (abs(global2.d.x) % 32u), ~70042u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.a, global2.a, true)))), vec3<bool>(select(u_input.d, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 29u)], -4575i), select(true, global2.b.x, global2.c)) >= u_input.d, true, global2.b.x), global2.c, vec2<u32>(_wgslsmith_clamp_u32(~2379u, reverseBits(u_input.b.x), select(0u, global2.d.x, global2.c)), global2.d.x) | vec2<u32>(~global2.d.x, _wgslsmith_mult_u32(49916u, 14599u)));
    var var_2 = vec2<i32>(-2147483647i, -41117i & -u_input.d);
    global0 = array<vec4<i32>, 26>();
    let var_3 = global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~(~(~u_input.b.x)), ~(~_wgslsmith_sub_u32(var_1.d.x, 21265u)))), 23u)];
    global4 = array<Struct_1, 22>();
    var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-42391i, abs(-20065i)) | min(firstLeadingBit(u_input.c.yy) >> (vec2<u32>(39264u, 27043u) % vec2<u32>(32u)), vec2<i32>(-43034i, -2147483647i) << ((global2.d >> (vec2<u32>(u_input.b.x, 46318u) % vec2<u32>(32u))) % vec2<u32>(32u))), u_input.c.zz);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global2.a.x)))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d.x, ~11335u, reverseBits(_wgslsmith_dot_vec3_u32(u_input.b.www, vec3<u32>(1u, var_1.d.x, var_0.x))), firstLeadingBit(_wgslsmith_sub_u32(var_1.d.x, global2.d.x))), _wgslsmith_sub_vec4_u32(select(~u_input.b, _wgslsmith_div_vec4_u32(u_input.b, u_input.b), select(vec4<bool>(var_3.d.x, global2.b.x, false, global2.c), vec4<bool>(true, false, var_1.c, false), false)), min(vec4<u32>(var_1.d.x, var_0.x, 0u, 0u), u_input.b))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.a.x, -430f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, 238f) * var_1.a) - _wgslsmith_f_op_vec2_f32(-global2.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(143f, 1709f) * var_1.a))))))), ~var_0.x);
}

