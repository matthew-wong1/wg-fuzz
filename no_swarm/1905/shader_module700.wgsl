struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<vec3<u32>, 31>;

var<private> global2: array<Struct_3, 1>;

var<private> global3: Struct_5 = Struct_5(Struct_4(Struct_2(8476u), Struct_3(72820i, Struct_2(32617u)), vec4<f32>(-1041f, -634f, -155f, 598f), Struct_3(i32(-2147483648), Struct_2(26507u)), 1000f), Struct_1(133f, vec2<u32>(70243u, 0u), vec2<u32>(1u, 4294967295u)), Struct_4(Struct_2(72917u), Struct_3(2147483647i, Struct_2(0u)), vec4<f32>(-1873f, 307f, -275f, 2028f), Struct_3(-70022i, Struct_2(18551u)), -241f), 2147483647i);

var<private> global4: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_0, global3.a.a.a & _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.a, 0u), u_input.b), vec2<u32>(_wgslsmith_clamp_u32(56951u, 7667u, 18392u), _wgslsmith_clamp_u32(global3.a.a.a, 0u, 11925u)))), 18u)], 1u)];
    var var_1 = u_input.c.zwy & -_wgslsmith_add_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(u_input.c.zzw, vec3<i32>(var_0.a, 1i, u_input.c.x))), vec3<i32>(_wgslsmith_div_i32(var_0.a, var_0.a), _wgslsmith_div_i32(global3.c.b.a, var_0.a), -u_input.d.x));
    var var_2 = ~(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(global0[_wgslsmith_index_u32(1915u, 18u)], 4294967295u, 13615u, 19885u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 63594u, global3.c.b.b.a, u_input.b.x), ~vec4<u32>(1u, u_input.b.x, 0u, 314u))));
    let var_3 = _wgslsmith_div_u32(var_2.x, u_input.b.x);
    var var_4 = global3.b;
    return ~global3.c.a.a;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = min(1u, _wgslsmith_clamp_u32(~21656u, 7037u, (arg_3.c.x ^ 0u) ^ 1u));
    global0 = array<u32, 18>();
    global2 = array<Struct_3, 1>();
    let var_1 = firstTrailingBit(var_0);
    var var_2 = arg_0;
    return _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~448i, -35723i << (~global0[_wgslsmith_index_u32(57499u, 18u)] % 32u)), ~(~firstLeadingBit(vec2<i32>(arg_1.x, arg_1.x)))), -41544i);
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(abs(u_input.b.x), ~global0[_wgslsmith_index_u32(func_2(global3.a.d.b.a, global3.c.a), 18u)], abs(firstLeadingBit(1u))), reverseBits(vec3<u32>(0u, ~1u, 4294967295u))) ^ global1[_wgslsmith_index_u32(23062u, 31u)];
    global4 = 1u;
    global4 = 1u;
    let var_1 = vec4<f32>(_wgslsmith_div_f32(763f, global3.a.e), global3.c.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -2385f)))), -310f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.e)), _wgslsmith_f_op_f32(-global3.b.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1574f * _wgslsmith_div_f32(356f, -1039f)) - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(851f + global3.c.e)))));
    global3 = Struct_5(Struct_4(global3.c.d.b, Struct_3(global3.c.b.a, global3.c.a), var_1, Struct_3(-1i, global3.a.a), -601f), global3.b, global3.c, -2147483647i ^ ((func_3(vec2<f32>(var_1.x, 1000f), vec2<i32>(global3.a.d.a, 2147483647i), vec4<bool>(true, true, false, true), Struct_1(1463f, global3.b.c, var_0.yx)) >> (49605u % 32u)) << (~var_0.x % 32u)));
    return Struct_5(Struct_4(global3.a.a, Struct_3(reverseBits(-global3.d), global3.c.d.b), global3.c.c, global3.a.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 490f))), global3.b, global3.a, -(~(-_wgslsmith_add_i32(2147483647i, u_input.c.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> vec3<i32> {
    global3 = Struct_5(Struct_4(arg_1.a.a, Struct_3(-(2147483647i & global3.a.d.a), arg_1.a.b.b), arg_1.c.c, global3.a.b, -1438f), func_1().b, Struct_4(func_1().a.b.b, Struct_3(select(global3.c.b.a, -2147483647i, false) | -2147483647i, global3.a.b.b), arg_1.c.c, Struct_3(i32(-1i) * -24462i, Struct_2(4294967295u)), _wgslsmith_f_op_f32(select(-1082f, _wgslsmith_div_f32(-423f, _wgslsmith_f_op_f32(-302f - 1460f)), 1u < global0[_wgslsmith_index_u32(0u, 18u)]))), -arg_1.c.d.a);
    var var_0 = func_1().a.d;
    var var_1 = Struct_5(Struct_4(Struct_2(17584u), func_1().c.d, _wgslsmith_f_op_vec4_f32(-global3.a.c), arg_1.c.b, 1008f), arg_1.b, Struct_4(Struct_2(~(~global3.a.b.b.a)), Struct_3(-u_input.a, arg_1.a.b.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.a, arg_1.b.a, -1387f, arg_1.b.a) + arg_1.a.c))), Struct_3((global3.a.b.a | arg_1.a.d.a) << (~4294967295u % 32u), func_1().a.a), -1735f), countOneBits(~_wgslsmith_clamp_i32(var_0.a & 35007i, abs(37840i), _wgslsmith_mult_i32(-23084i, u_input.d.x))));
    global1 = array<vec3<u32>, 31>();
    global1 = array<vec3<u32>, 31>();
    return _wgslsmith_div_vec3_i32(u_input.c.zzx, -vec3<i32>(~(i32(-1i) * -6951i), (global3.a.d.a << (arg_0 % 32u)) << (1u % 32u), u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.xxy;
    var_0 = -_wgslsmith_mod_vec3_i32(func_4(global3.a.b.b.a & 1u, func_1()), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.a, 2147483647i), 17789i, select(-29848i, -51232i, false)), -(~vec3<i32>(-11264i, var_0.x, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-680f, 1112f)) * vec2<f32>(global3.c.e, global3.a.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.a + -1177f)), global3.c.e), true)), abs(vec4<u32>(~(~global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), 22220u, 33632u, 55966u)), u_input.b.x, ~70547u ^ _wgslsmith_clamp_u32(global3.b.b.x, ~(~u_input.b.x), ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), var_0.x);
}

