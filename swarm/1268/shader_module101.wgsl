struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<u32>, 1>;

var<private> global2: vec4<f32> = vec4<f32>(2509f, 1453f, -1605f, 1983f);

var<private> global3: i32 = 0i;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec3<f32> {
    var var_0 = global4.b.a;
    var var_1 = any(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))) | (firstTrailingBit(u_input.b) == _wgslsmith_add_i32((u_input.a.x ^ 1i) & 0i, global4.b.e.a >> ((global4.c << (global4.b.c.x % 32u)) % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1f, global4.b.a)));
    let var_3 = Struct_3(max(abs(-2147483647i), u_input.a.x), global4.b, _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(global4.c, global4.c, global4.c), u_input.b >= -1i) & vec3<u32>(~global4.c, ~global4.c, ~global4.c), _wgslsmith_mult_vec3_u32((vec3<u32>(global4.c, global4.b.c.x, 1u) | vec3<u32>(global4.c, global4.b.c.x, 4294967295u)) | ~vec3<u32>(1u, global4.b.c.x, 1022u), (vec3<u32>(1u, 24215u, global4.c) & vec3<u32>(1u, 0u, global4.c)) & ~vec3<u32>(42890u, global4.c, global4.b.c.x))));
    var_1 = max(global4.c ^ abs(var_3.b.c.x | global4.b.c.x), ~(global4.b.c.x | ~0u)) > ~(~(~56332u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1442f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-318f)), var_2.x, true)), _wgslsmith_f_op_f32(-var_3.b.a)) + global2.xyx) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f - global4.b.a)), -2039f)));
}

fn func_2() -> vec3<f32> {
    global1 = array<vec2<u32>, 1>();
    global0 = global4.b.a;
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-837f, global4.b.a, global2.x)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.zxx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1828f, 1384f, -1335f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.yyw, vec3<f32>(global4.b.a, -111f, -1088f), vec3<bool>(true, false, true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.a, 536f, -254f))))));
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_clamp_vec2_i32(reverseBits(countOneBits(vec2<i32>(65215i, global4.b.e.a) << (global1[_wgslsmith_index_u32(global4.c, 1u)] % vec2<u32>(32u)))), ((vec2<i32>(u_input.a.x, u_input.b) & vec2<i32>(45471i, -35325i)) | -vec2<i32>(2147483647i, global4.b.d.a)) | vec2<i32>(~u_input.a.x, u_input.a.x), ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 2147483647i), u_input.a.zx, vec2<i32>(-55254i, global4.a)) << (_wgslsmith_mult_vec2_u32(global4.b.c, global1[_wgslsmith_index_u32(global4.c, 1u)]) % vec2<u32>(32u)))) << (global1[_wgslsmith_index_u32(~(~4294967295u), 1u)] % vec2<u32>(32u));
    return var_0;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_3 {
    global0 = -1000f;
    let var_0 = Struct_3(max(-1i, -21026i), Struct_2(1888f, Struct_1(reverseBits(_wgslsmith_add_i32(-27691i, 20915i))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4014u, global4.b.c.x), global1[_wgslsmith_index_u32(45724u, 1u)], global4.b.c), global4.b.c), Struct_1(global4.a << (global4.b.c.x % 32u)), Struct_1(-25658i)), select(select(0u, max(~62211u, max(4294967295u, 8142u)), true), ~36582u, arg_2.b | (~arg_2.a == 4294967295u)));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec4<f32> {
    global4 = func_4(-arg_0.a, _wgslsmith_f_op_vec3_f32(func_2()), Struct_4(global4.b.c.x, !(!arg_1)));
    global0 = 431f;
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(global2.xyy - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1193f, global2.x, -1000f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), -1021f, var_0.x, 1000f))))));
    var var_2 = 1i;
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global4.b.a), _wgslsmith_f_op_f32(sign(-878f)), var_1.x, _wgslsmith_f_op_f32(max(-135f, -1250f))))), vec4<f32>(-754f, var_1.x, _wgslsmith_f_op_f32(-1f), -691f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_0.x, -2220f, var_1.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, global2.x, 1000f, -544f), vec4<f32>(-929f, var_1.x, global2.x, var_1.x), vec4<bool>(false, true, false, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.a, -818f, -1496f, var_0.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(697f, global2.x, var_0.x, global2.x), vec4<f32>(global4.b.a, var_1.x, global2.x, -347f))) + vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, global2.x, global4.b.a, global4.b.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(global4.a), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-775f, global4.b.a, 610f, global2.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1932f, global2.x, global2.x, global4.b.a), vec4<f32>(737f, global4.b.a, 239f, -137f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -279f, 862f, 650f))))));
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = -18225i;
    global2 = vec4<f32>(_wgslsmith_div_f32(200f, global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + 1000f))), -361f, !all(vec4<bool>(false, var_0.x, false, false)))) - _wgslsmith_f_op_f32(select(global2.x, global4.b.a, !(global2.x >= 2946f)))), global4.b.a);
    global3 = 1i;
    var var_2 = max(global4.c, _wgslsmith_dot_vec4_u32((max(vec4<u32>(4294967295u, global4.b.c.x, 0u, 1u), vec4<u32>(global4.c, global4.b.c.x, global4.c, 57170u)) >> (vec4<u32>(global4.c, 39631u, global4.c, 1u) % vec4<u32>(32u))) >> (max(vec4<u32>(0u, 2065u, global4.b.c.x, global4.c) >> (vec4<u32>(global4.b.c.x, 1u, global4.b.c.x, global4.b.c.x) % vec4<u32>(32u)), min(vec4<u32>(16345u, 63478u, 18116u, global4.c), vec4<u32>(1u, global4.b.c.x, 10977u, 43137u))) % vec4<u32>(32u)), ~vec4<u32>(max(4294967295u, global4.b.c.x), 4294967295u, 4294967295u, global4.b.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.a, global2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.zwx + global2.xxx))), -firstTrailingBit(global4.b.e.a), global2.wx, select(vec4<u32>(func_4(firstTrailingBit(u_input.b), global2.xxw, Struct_4(7136u, var_0.x)).b.c.x, ~(~4294967295u), 0u, firstLeadingBit(firstLeadingBit(4294967295u))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global4.b.c.x, global4.c, global4.b.c.x), vec4<u32>(global4.b.c.x, 54433u, 4294967295u, global4.c)), firstTrailingBit(vec4<u32>(global4.c, global4.c, 42464u, global4.b.c.x)), vec4<u32>(global4.c, 0u, global4.b.c.x, 4294967295u))), vec4<bool>(var_0.x, _wgslsmith_f_op_f32(trunc(161f)) < _wgslsmith_div_f32(global4.b.a, global2.x), false, true)));
}

