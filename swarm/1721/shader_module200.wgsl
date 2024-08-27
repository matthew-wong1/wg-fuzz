struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3 = Struct_3(vec3<f32>(-1000f, 624f, 305f), -473f);

var<private> global2: array<Struct_2, 26>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> f32 {
    var var_0 = reverseBits(-(vec2<i32>(0i, global0.a.a) ^ u_input.d.xz));
    let var_1 = _wgslsmith_f_op_f32(-arg_1);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -324f);
    let var_3 = select(vec3<u32>(global0.c.d.x, min(0u, _wgslsmith_add_u32(firstTrailingBit(global0.b.x), global0.b.x)), 8778u), firstLeadingBit(~_wgslsmith_add_vec3_u32(firstTrailingBit(u_input.c.wxw), _wgslsmith_sub_vec3_u32(global0.c.d, vec3<u32>(0u, global0.a.d.x, global0.b.x)))), global0.a.b);
    let var_4 = true;
    return var_1;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> Struct_5 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1247f, 719f, -631f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(~global0.c.a, 1i, -15654i, -u_input.b), -936f)) * -135f));
    var var_1 = -(~firstLeadingBit(-max(5102i, -2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2010f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a.x - 1146f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-973f)))) + var_0.b);
    let var_3 = Struct_5(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)), Struct_4(global0.c, ~(vec2<u32>(58532u, global0.b.x) ^ select(u_input.c.xy, vec2<u32>(global0.b.x, global0.c.d.x), global0.a.c))), all(!select(select(vec4<bool>(global0.a.c.x, global0.a.c.x, true, global0.c.c.x), vec4<bool>(false, global0.c.b, false, global0.a.b), false), select(vec4<bool>(global0.c.b, global0.c.c.x, false, true), vec4<bool>(global0.c.c.x, global0.a.b, global0.a.c.x, false), vec4<bool>(true, global0.c.c.x, global0.c.c.x, true)), false)), !(!vec3<bool>(true && global0.a.c.x, global0.c.b, global0.c.b)), ~firstTrailingBit(_wgslsmith_clamp_u32(~global0.a.d.x, 1u, abs(u_input.c.x))));
    return var_3;
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    global2 = array<Struct_2, 26>();
    global2 = array<Struct_2, 26>();
    global0 = global2[_wgslsmith_index_u32(54894u, 26u)];
    global2 = array<Struct_2, 26>();
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global0.d.wwx, _wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(global0.d.x, arg_0.a, global1.b)), !arg_2.c.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -234f, 218f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(453f, -380f, true)))))), -712f));
    return Struct_2(Struct_1(_wgslsmith_add_i32(countOneBits(firstTrailingBit(2147483647i)), -global0.c.a), global0.c.c.x, vec2<bool>(true, false), select(firstLeadingBit(arg_0.b.a.d), arg_0.b.a.d, min(global0.c.a, arg_0.b.a.a) < min(arg_2.a, u_input.b))), ~reverseBits(~vec4<u32>(u_input.c.x, 39216u, u_input.c.x, arg_0.b.b.x)) << (min(global0.b ^ vec4<u32>(arg_2.d.x, global0.a.d.x, 363u, arg_2.d.x), global0.b) % vec4<u32>(32u)), arg_0.b.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, -1019f, global0.d.x, global1.b)) * _wgslsmith_f_op_vec4_f32(select(global0.d, vec4<f32>(global0.d.x, global0.d.x, 1208f, 1000f), vec4<bool>(global0.c.b, true, true, arg_0.d.x)))))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = !(!(global0.c.c.x && false));
    let var_1 = vec2<i32>(-firstTrailingBit(-arg_0), ~0i >> (~global0.b.x % 32u));
    let var_2 = Struct_3(global0.d.wxx, global1.b);
    var var_3 = reverseBits(-_wgslsmith_div_vec3_i32(select(~u_input.e.zww, vec3<i32>(-26896i, global0.c.a, var_1.x), global0.c.c.x), ~u_input.e.xwz));
    global0 = func_4(func_2(~u_input.e | vec4<i32>(min(u_input.d.x, -1i), -18359i, 1i, _wgslsmith_div_i32(global0.c.a, arg_0)), global0.c.d.x << (global0.c.d.x % 32u), global0.c.a), arg_0, func_2(u_input.d, ~_wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(global0.a.d.x, global0.c.d.x)), 2147483647i).b.a);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_1(u_input.e.x << (u_input.a % 32u));
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.a.x * var_1.a.x), _wgslsmith_f_op_f32(var_1.b + global0.d.x), -719f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a - vec3<f32>(134f, var_1.a.x, var_1.a.x)), global1.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.b * 1294f), -1000f, var_1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(911f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))))));
    global2 = array<Struct_2, 26>();
    global1 = Struct_3(vec3<f32>(-691f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) * 427f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d.x)))), 150f), global0.d.x);
    let var_2 = func_2(vec4<i32>(global0.c.a, ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, global0.a.a), -vec2<i32>(15848i, u_input.d.x)), _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(11934i, global0.a.a, -2147483647i, -28257i), vec4<i32>(u_input.b, global0.c.a, -14559i, global0.c.a)), u_input.d), ~min(-4862i, -u_input.e.x)), global0.c.d.x, abs(_wgslsmith_mult_i32(961i, u_input.d.x))).b;
    var var_3 = -581f;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -143f);
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1086f + 1313f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(~8946i).a.yy - vec2<f32>(_wgslsmith_f_op_f32(abs(var_4)), _wgslsmith_div_f32(var_4, var_1.b))) + var_1.a.xx), _wgslsmith_dot_vec3_u32(func_2(u_input.d, _wgslsmith_add_u32(7571u, firstLeadingBit(8105u)), _wgslsmith_sub_i32(-var_2.a.a, 1i)).b.a.d, select(vec3<u32>(u_input.a, ~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1408u, var_2.b.x, global0.b.x, 1u), global0.b)), ~u_input.c.xxz ^ vec3<u32>(1u, u_input.c.x, var_2.b.x), global0.a.c.x)), global0.c.d.x, -u_input.d.yy);
}

