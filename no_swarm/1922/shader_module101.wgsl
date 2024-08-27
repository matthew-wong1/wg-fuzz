struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 5>;

var<private> global2: bool = false;

var<private> global3: array<vec3<u32>, 29>;

var<private> global4: array<u32, 4>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<i32>) -> Struct_2 {
    global4 = array<u32, 4>();
    global3 = array<vec3<u32>, 29>();
    global4 = array<u32, 4>();
    var var_0 = -31739i;
    global4 = array<u32, 4>();
    return Struct_2(Struct_1(global0.x), Struct_1(arg_0), u_input.b.x, vec3<bool>(true, 0i >= arg_2.x, !select(all(vec2<bool>(true, true)), true, all(vec3<bool>(false, true, true)))));
}

fn func_3() -> vec4<i32> {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x + 820f))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(min(1f, 372f)))));
    var var_3 = vec2<u32>(countOneBits(_wgslsmith_mod_u32(45836u, 34693u)) << (global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(17579u, u_input.b.x, 4294967295u)), vec3<u32>(0u, u_input.b.x, var_0)), 4u)] % 32u), 67722u) ^ u_input.b.xy;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -582f));
    return -vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, u_input.a, 31057i, 9214i)), vec4<i32>(u_input.c ^ -1i, u_input.a, u_input.c, abs(4680i))), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.c, u_input.c)), abs(-vec2<i32>(-2147483647i, -32121i))), -_wgslsmith_mult_i32(-53767i ^ u_input.a, ~u_input.a), -u_input.c ^ (u_input.c | u_input.c));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-634f - _wgslsmith_f_op_f32(arg_1.a + -1000f))), u_input.b.x, countOneBits(vec2<i32>(firstLeadingBit(30841i), _wgslsmith_mult_i32(select(u_input.c, u_input.a, false), 2147483647i))));
    var var_1 = abs(_wgslsmith_mod_vec4_i32(~(-min(vec4<i32>(u_input.a, 1i, 0i, -7282i), vec4<i32>(u_input.c, -1i, u_input.a, 10362i))), min(func_3() >> (~vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 4u)], 67800u, 0u, 25173u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, u_input.a, u_input.c, -7110i), vec4<i32>(0i, -1i, u_input.a, u_input.c)))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.b.a, 1178f, all(select(vec4<bool>(false, true, var_0.d.x, true), vec4<bool>(var_0.d.x, false, var_0.d.x, var_0.d.x), true)))), 885f, arg_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.b.a))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(1526f, global0.x), all(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(f32(-1f) * -418f), global0.x));
    var var_2 = abs(reverseBits(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -28192i), vec3<i32>(var_1.x, -1i, 23606i)), abs(-24173i)), var_1.x, -19225i)));
    var var_3 = _wgslsmith_div_vec2_f32(global0.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, 1432f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.ww))), var_0.d.yy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, var_0.a.a)) * global0.yx)));
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> Struct_4 {
    global3 = array<vec3<u32>, 29>();
    let var_0 = true & !((true && all(vec4<bool>(false, true, false, true))) || any(vec2<bool>(true, true)));
    var var_1 = Struct_4(~(~abs(~vec4<u32>(15736u, global4[_wgslsmith_index_u32(6511u, 4u)], 2183u, u_input.b.x))), Struct_1(_wgslsmith_f_op_f32(max(-148f, global0.x))), var_0);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.b.a));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -805f), -494f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1388f))));
    return Struct_4(var_1.a, Struct_1(arg_0.a), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 4>();
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), countOneBits(func_1(901f, Struct_1(global0.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1114f)), _wgslsmith_f_op_f32(-global0.x)), ~global4[_wgslsmith_index_u32(u_input.b.x >> (1u % 32u), 4u)]);
    let var_1 = u_input.b.x;
    let var_2 = Struct_1(-133f);
    global1 = array<Struct_2, 5>();
    var var_3 = Struct_4(vec4<u32>(_wgslsmith_mod_u32(var_1, 43763u), _wgslsmith_mod_u32(1u, abs(~var_1)), 4294967295u, 4294967295u), var_2, ~((global4[_wgslsmith_index_u32(4294967295u, 4u)] ^ global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)]) >> (4294967295u % 32u)) != u_input.b.x);
    var var_4 = -352f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1331f - var_3.b.a), global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b.a, 294f)) * -2621f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1008f - -1630f)))), -1439f, _wgslsmith_f_op_f32(round(func_4(func_2(303f, var_0.a.x, vec2<i32>(-57243i, u_input.c)).b, u_input.a, global0.wx, 0u ^ var_3.a.x).b.a))), ~vec4<u32>(24928u, reverseBits(4294967295u), 17618u, max(global4[_wgslsmith_index_u32(var_0.a.x, 4u)], var_0.a.x) >> (min(var_1, 4294967295u) % 32u)), 939f, _wgslsmith_f_op_vec3_f32(-global0.zzx), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(select(var_3.b.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_3.b.a, -1675f)), _wgslsmith_div_f32(var_3.b.a, 384f))), true)), var_0.b.a, _wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a)))));
}

