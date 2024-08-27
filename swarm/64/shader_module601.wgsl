struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: array<f32, 21> = array<f32, 21>(1161f, 1079f, 1480f, -462f, 133f, -206f, 2041f, -800f, -3117f, -1000f, -1000f, -602f, -1225f, -1000f, -266f, -486f, 598f, 363f, 931f, 336f, 1000f);

var<private> global2: array<i32, 26> = array<i32, 26>(-47262i, 0i, -30520i, -1i, 30389i, 1i, 50791i, 1i, 2147483647i, 1i, 1260i, 15286i, -39672i, -23033i, 2147483647i, 5210i, 1i, -1i, 2147483647i, -11803i, 1565i, i32(-2147483648), 1i, 1i, 13738i, 2147483647i);

var<private> global3: Struct_2 = Struct_2(1522f, vec2<f32>(-1536f, -251f), vec2<bool>(true, false), Struct_1(1255f, vec4<i32>(0i, i32(-2147483648), 0i, 12973i), false, -342f), 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1() -> u32 {
    global0 = array<Struct_2, 30>();
    var var_0 = -745i;
    global1 = array<f32, 21>();
    var_0 = -firstTrailingBit(u_input.a.x);
    let var_1 = !(!(!(!(!vec4<bool>(true, global3.d.c, global3.c.x, global3.d.c)))));
    return u_input.b | _wgslsmith_div_u32(~52744u, abs(u_input.b));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b)))));
    global2 = array<i32, 26>();
    global3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1489f * global3.b.x) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x))))), vec2<f32>(-119f, global3.a), select(global3.c, select(global3.c, vec2<bool>(true, true), select(vec2<bool>(arg_1.c, arg_1.c), select(global3.c, vec2<bool>(arg_1.c, true), false), vec2<bool>(arg_1.c, arg_1.c))), !all(vec3<bool>(false, global3.c.x, true))), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 21u)], abs(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(6263i, global2[_wgslsmith_index_u32(arg_0, 26u)], -56690i, -2402i), vec4<i32>(global3.d.b.x, arg_1.b.x, 24789i, arg_1.b.x)), vec4<i32>(37937i, 2147483647i, global3.d.b.x, 11659i))), !(!(arg_1.c || global3.d.c)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 4294967295u);
    global3 = Struct_2(-1000f, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.d + -1433f), var_0.x)), 1254f), vec2<bool>(!global3.d.c, true), arg_1, ~4294967295u);
    global2 = array<i32, 26>();
    return abs(firstTrailingBit(_wgslsmith_div_vec4_i32(global3.d.b >> (firstLeadingBit(vec4<u32>(global3.e, 1u, u_input.b, global3.e)) % vec4<u32>(32u)), reverseBits(countOneBits(global3.d.b)))));
}

fn func_2() -> Struct_3 {
    var var_0 = 25404i;
    let var_1 = Struct_5(Struct_3(Struct_1(global3.a, vec4<i32>(u_input.a.x, 22777i, 41585i, global3.d.b.x) << (~vec4<u32>(u_input.c.x, global3.e, global3.e, 1u) % vec4<u32>(32u)), true && global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1006f))), global0[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_div_u32(4294967295u, global3.e)), 30u)]), func_3(4294967295u, global3.d, abs(abs(vec2<u32>(u_input.c.x, 1u)))), ~((~global3.e << (global3.e % 32u)) ^ ((u_input.b & 1u) | abs(41462u))), max(abs(~u_input.c << (_wgslsmith_sub_vec2_u32(u_input.c, u_input.c) % vec2<u32>(32u))), ~vec2<u32>(~u_input.c.x, ~110960u)), global3.d);
    let var_2 = global3.d;
    global3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(404f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -799f)))) * _wgslsmith_f_op_f32(max(-229f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3820f - 471f) * 1112f)))), vec2<f32>(940f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u >> (global3.e % 32u), ~71155u), 21u)] * 2240f)), select(select(select(select(vec2<bool>(true, false), var_1.a.b.c, true), select(var_1.a.b.c, global3.c, global3.c), select(global3.c, vec2<bool>(var_2.c, global3.d.c), vec2<bool>(global3.c.x, var_2.c))), var_1.a.b.c, !(!vec2<bool>(global3.d.c, var_1.e.c))), select(vec2<bool>(false, true), select(vec2<bool>(var_1.e.c, var_1.a.b.d.c), var_1.a.b.c, select(global3.c.x, true, global3.d.c)), vec2<bool>(true, global3.c.x)), select(!global3.c, global3.c, vec2<bool>(global3.d.c, any(vec2<bool>(false, true))))), Struct_1(var_2.a, reverseBits(global3.d.b), any(!vec4<bool>(false, true, false, global3.c.x)), _wgslsmith_f_op_f32(-global3.a)), 0u << (u_input.c.x % 32u));
    var var_3 = Struct_3(var_1.e, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a.b.b, global3.b)) * vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-var_2.a))), select(select(vec2<bool>(var_2.c, false), var_1.a.b.c, select(var_1.a.b.c, var_1.a.b.c, true)), vec2<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(global3.d.c, var_1.a.a.c, global3.d.c, false))), all(!global3.c)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.x, global2[_wgslsmith_index_u32(global3.e, 26u)]), var_1.b.xz), select(u_input.a.x, -9831i, false), -global2[_wgslsmith_index_u32(global3.e, 26u)], global3.d.b.x), var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.e.d)) - global1[_wgslsmith_index_u32(var_1.d.x, 21u)])), ~(~reverseBits(u_input.b))));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(var_2.a - -1465f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_3.a.a)), _wgslsmith_f_op_f32(max(2023f, var_2.d)), var_1.a.a.c)))), u_input.a, global3.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global3.e, 21u)], 392f)), var_1.e.a)), global0[_wgslsmith_index_u32(max(~var_1.d.x, var_1.c), 30u)]);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = arg_0.a.a;
    let var_2 = vec3<u32>(arg_1.b.e, u_input.c.x, ~(~global3.e));
    let var_3 = select(vec4<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, global3.d.c), vec3<bool>(global3.d.c, var_0.a.b.d.c, false), vec3<bool>(global3.d.c, global3.c.x, true)), true)), !arg_0.e.c, true, true), vec4<bool>(!(!var_1.c) || arg_0.a.b.d.c, true == (arg_0.a.b.c.x != false), func_2().b.d.c, true), any(!var_0.a.b.c));
    global1 = array<f32, 21>();
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(0u, u_input.b);
    let var_1 = min(_wgslsmith_mult_u32(func_1(), 4294967295u) >> (func_1() % 32u), u_input.c.x);
    global2 = array<i32, 26>();
    var_0 = ~firstLeadingBit(var_1);
    var var_2 = Struct_3(global3.d, func_4(Struct_5(func_2(), vec4<i32>(1i, 1i, -global2[_wgslsmith_index_u32(4294967295u, 26u)], global3.d.b.x), _wgslsmith_sub_u32(~99604u, func_2().b.e), vec2<u32>(1u, ~1u), Struct_1(_wgslsmith_f_op_f32(-1391f - -401f), vec4<i32>(global2[_wgslsmith_index_u32(var_1, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], 1i), false, _wgslsmith_f_op_f32(-1661f + global1[_wgslsmith_index_u32(global3.e, 21u)]))), Struct_3(Struct_1(1000f, ~vec4<i32>(global2[_wgslsmith_index_u32(60802u, 26u)], -15178i, -15475i, 17047i), true, _wgslsmith_f_op_f32(global3.b.x - global1[_wgslsmith_index_u32(22332u, 21u)])), Struct_2(_wgslsmith_f_op_f32(ceil(-1178f)), _wgslsmith_f_op_vec2_f32(select(global3.b, global3.b, vec2<bool>(global3.d.c, global3.c.x))), global3.c, func_2().b.d, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().b.d.b.xx >> (~countOneBits(u_input.c) % vec2<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1228f, global3.a))))), ~reverseBits(~(-global3.d.b)));
}

