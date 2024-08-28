struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 32> = array<u32, 32>(0u, 4294967295u, 68831u, 26702u, 0u, 4294967295u, 1u, 0u, 1u, 21000u, 1u, 71135u, 4294967295u, 67824u, 0u, 40673u, 4294967295u, 4294967295u, 118057u, 1u, 1u, 88760u, 0u, 34067u, 4294967295u, 10751u, 16468u, 1u, 1u, 0u, 1u, 35939u);

var<private> global2: array<Struct_4, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.c + 156f), 532f, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-global0.c))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))), _wgslsmith_f_op_f32(-285f + -687f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(387f)), var_0.x)));
    global2 = array<Struct_4, 16>();
    let var_2 = _wgslsmith_add_i32(-1i, ~(~(-73632i))) < _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b.x, u_input.a), _wgslsmith_sub_i32(24691i, global0.b.d.x), -u_input.a), countOneBits(global0.b.d.x));
    let var_3 = global0.a.x;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(837f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 206f)))))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_1 {
    global1 = array<u32, 32>();
    let var_0 = ~vec3<i32>(1i, reverseBits(-2514i & global0.b.c.x), (2043i ^ arg_1.b) ^ _wgslsmith_add_i32(20571i, arg_1.b)) & vec3<i32>(2147483647i, _wgslsmith_sub_i32(arg_0.b, -arg_0.b), firstLeadingBit(~(~21327i)));
    global2 = array<Struct_4, 16>();
    global2 = array<Struct_4, 16>();
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, arg_3.x, _wgslsmith_f_op_f32(1308f + arg_0.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(floor(-377f)), _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(func_3(global0.b.b.x & global0.b.b.x)))));
    return global0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = global0.b.d;
    global2 = array<Struct_4, 16>();
    var var_1 = !any(!(!vec3<bool>(arg_0.a, true, arg_0.a)));
    let var_2 = vec4<bool>(-302f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1731f)), !all(!(!arg_1.b.b)), true, global0.b.a);
    return vec4<u32>(countOneBits(4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~abs(24690u), 1u, _wgslsmith_mult_u32(4294967295u, u_input.c.x)), ~(~(~36871u))), 32u)], ~(~(~global0.a.x)), global0.a.x);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    let var_0 = ~global0.b.d.yxz;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-107f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(global0.b.b.x)), -922f)), arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1579f, arg_0.d), arg_2.a, global0.b.b.x)) + _wgslsmith_f_op_f32(-arg_0.c.x))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-343f + 1790f))) * arg_0.a.x), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-855f * arg_0.c.x)) * global0.c)));
    let var_2 = 1u;
    global2 = array<Struct_4, 16>();
    global2 = array<Struct_4, 16>();
    return Struct_2(u_input.c, Struct_1((~u_input.c.x << (1u % 32u)) < ~0u, vec3<bool>(!(var_2 != 33479u), true, _wgslsmith_f_op_f32(var_1.x + global0.c) > 276f), min(max(_wgslsmith_add_vec2_i32(vec2<i32>(-30615i, 0i), vec2<i32>(22225i, -7635i)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(arg_3, -2147483647i))), abs(-vec2<i32>(2147483647i, var_0.x))), vec4<i32>(~(~(-1i)), ~_wgslsmith_div_i32(36129i, arg_3), arg_1.x, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(462f + _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(arg_0.a.x, -605f)))));
}

fn func_1() -> Struct_2 {
    global1 = array<u32, 32>();
    global2 = array<Struct_4, 16>();
    return func_5(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_4(func_2(global2[_wgslsmith_index_u32(~global0.a.x, 16u)], Struct_4(vec3<f32>(-495f, -157f, global0.c), 2147483647i, vec2<f32>(global0.c, 658f), global0.c), Struct_3(-1589f, 45683u, 1u), vec2<f32>(global0.c, global0.c)), Struct_2(_wgslsmith_mult_vec4_u32(global0.a, global0.a), global0.b, _wgslsmith_f_op_f32(global0.c * 572f))), vec4<u32>(global0.a.x, global0.a.x, select(firstTrailingBit(4294967295u), 20708u, global0.b.b.x), abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), global0.a.ww), 32u)]))), 16u)], global0.b.d.wzw, Struct_3(global0.c, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.a.x, 4294967295u) & max(global1[_wgslsmith_index_u32(18973u, 32u)], u_input.c.x), ~33123u, ~_wgslsmith_div_u32(u_input.c.x, 17210u)), 32u)], 28575u), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 16>();
    global2 = array<Struct_4, 16>();
    global0 = Struct_2(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.c.x, 22247u, 0u, global0.a.x ^ global1[_wgslsmith_index_u32(4294967295u, 32u)])), u_input.c), Struct_1(true, vec3<bool>(global0.b.b.x, true, !global0.b.a), ~(-(vec2<i32>(u_input.a, global0.b.d.x) ^ global0.b.d.yy)), vec4<i32>(u_input.a, ~8186i, -2147483647i, i32(-1i) * -2147483647i) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(43440i, 48914i, -44844i, -8477i), vec4<i32>(1i, 9121i, u_input.b.x, 12148i)), vec4<i32>(u_input.b.x, global0.b.c.x, global0.b.d.x, -2147483647i) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(2147483647i, u_input.a, 1i, global0.b.c.x) ^ global0.b.d)), _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.c)))), global0.c))));
    global0 = func_1();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(197f, global0.c), -1307f)), global0.a.x, 1u);
    global1 = array<u32, 32>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c))), -1697f, _wgslsmith_f_op_f32(abs(var_0.a))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.c)), _wgslsmith_f_op_f32(930f - 1f), -1000f)), func_2(Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(840f, -252f, -854f) * vec3<f32>(-243f, global0.c, global0.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1797f, global0.c, 207f) * vec3<f32>(var_0.a, -1453f, global0.c))), min(~(-1i), i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.c) + vec2<f32>(global0.c, -1374f))), _wgslsmith_f_op_f32(-global0.c)), Struct_4(vec3<f32>(_wgslsmith_f_op_f32(ceil(-223f)), _wgslsmith_f_op_f32(var_0.a - 196f), _wgslsmith_f_op_f32(-global0.c)), -func_1().b.d.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.c, -125f))), var_0.a), Struct_3(var_0.a, ~133474u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1324f, 2617f), vec2<f32>(global0.c, -517f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.c, var_0.a))) * vec2<f32>(687f, -616f)))).d.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.c - -1333f), _wgslsmith_f_op_f32(abs(global0.c)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, 224f) * -877f));
    global2 = array<Struct_4, 16>();
    let var_2 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, _wgslsmith_div_f32(_wgslsmith_div_f32(-1312f, 862f), _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), 1616f, var_0.a), _wgslsmith_f_op_vec3_f32(min(var_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, 1517f, var_0.a)))), select(func_2(Struct_4(var_1.a, u_input.b.x, vec2<f32>(global0.c, global0.c), var_0.a), Struct_4(vec3<f32>(1989f, -355f, 656f), 19620i, var_1.c, var_0.a), Struct_3(global0.c, 1u, 32666u), var_1.a.zz).a, true, global0.b.b.x && var_2.a)))), var_1.a, vec3<u32>(firstLeadingBit(var_0.c & 4294967295u) << (func_5(Struct_4(vec3<f32>(global0.c, global0.c, -1000f), -61802i, var_1.c, -256f), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b.x, var_1.b), vec3<i32>(-2147483647i, 18267i, u_input.a)), Struct_3(var_0.a, 25753u, global0.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.b.d.x), vec2<i32>(0i, var_1.b))).a.x % 32u), 4294967295u, 36339u | global1[_wgslsmith_index_u32(abs(u_input.c.x) ^ firstTrailingBit(0u), 32u)]), var_1.d);
}

