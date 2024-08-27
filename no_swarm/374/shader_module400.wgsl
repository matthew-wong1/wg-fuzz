struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(2147483647i, -20343i, i32(-2147483648));

var<private> global1: array<Struct_4, 12>;

var<private> global2: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    global0 = array<i32, 3>();
    global1 = array<Struct_4, 12>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a, 809f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a, 1118f)))), vec2<f32>(-1315f, global2.a.a), select(vec2<bool>(!global2.b.b, false), !(!vec2<bool>(global2.d.b, true)), global2.d.b))), select(vec4<bool>(!global2.b.b, false, all(vec2<bool>(true, false)), false), vec4<bool>(all(select(vec3<bool>(true, global2.b.b, true), vec3<bool>(false, global2.b.b, global2.b.b), false)), !global2.d.b, true, global2.b.b), !select(vec4<bool>(global2.a.b, true, global2.b.b, true), !vec4<bool>(false, global2.a.b, true, false), any(vec4<bool>(global2.a.b, true, false, global2.b.b)))));
    global2 = Struct_2(global2.b, Struct_1(global2.b.a, !(!global2.a.b) || true, _wgslsmith_mod_i32(-1i << (1u % 32u), 49075i)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~_wgslsmith_mod_u32(4294967295u, ~u_input.a.x)), 3u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2366f * var_0.a.x)), any(vec4<bool>(true, true, global2.a.b, true)), firstLeadingBit(54911i)));
    var var_1 = u_input.c;
    return select(-global2.c | _wgslsmith_dot_vec4_i32(-(vec4<i32>(global0[_wgslsmith_index_u32(3506u, 3u)], u_input.c, -2147483647i, -2147483647i) >> (u_input.a % vec4<u32>(32u))), ~select(vec4<i32>(-29240i, -13573i, u_input.b, -495i), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], -19087i, u_input.c), vec4<bool>(true, var_0.b.x, global2.d.b, false))), _wgslsmith_mult_i32(global2.a.c ^ _wgslsmith_mod_i32(u_input.c, -28340i), reverseBits(1i)), all(select(!var_0.b.zw, var_0.b.xx, vec2<bool>(true, true))) || all(select(select(var_0.b, vec4<bool>(global2.b.b, global2.a.b, var_0.b.x, true), true), vec4<bool>(true, true, true, global2.d.b), true)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -3161f);
    global2 = Struct_2(Struct_1(global2.b.a, global2.b.b && true, i32(-1i) * -func_3()), global2.b, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, global2.c, -2147483647i), ~(-vec3<i32>(global2.b.c, -3921i, -2147483647i))), global2.b);
    let var_1 = 129639u;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(972f, var_0, var_0, var_0))) + vec4<f32>(_wgslsmith_f_op_f32(global2.d.a + -2290f), -547f, 1812f, var_0)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(510f - global2.a.a))), var_0, _wgslsmith_f_op_f32(max(global2.d.a, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(abs(1165f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1839f, global2.d.a, 1023f, var_0), vec4<f32>(var_0, global2.d.a, global2.b.a, global2.d.a), vec4<bool>(true, global2.a.b, false, global2.a.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 109f, -529f, -347f) + vec4<f32>(var_0, global2.a.a, 2238f, -900f))) * _wgslsmith_div_vec4_f32(vec4<f32>(1355f, global2.d.a, 1109f, var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1432f, var_0, global2.b.a, -1610f) - vec4<f32>(var_0, global2.b.a, var_0, var_0)))) - vec4<f32>(1f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.a)))));
    let var_3 = -global2.d.c;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)), global2.d.b, -(~(-1i << (u_input.a.x % 32u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-488f, -523f))), all(vec4<bool>(select(true, global2.a.b, global2.a.b), global2.d.b, true, true)), i32(-1i) * -1i), _wgslsmith_sub_i32(abs(-abs(2642i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.yyy, ~u_input.a.www), 3u)]), global2.d);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    var var_0 = func_2();
    var var_1 = ~264i;
    var_0 = func_2();
    var_1 = -_wgslsmith_add_i32(var_0.b.c, _wgslsmith_dot_vec4_i32(select(-vec4<i32>(u_input.b, 34775i, 0i, var_0.c), ~vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(3624u, 3u)], -26001i, 20114i), -1443f > arg_1.a), -firstLeadingBit(vec4<i32>(-1i, 1i, -2147483647i, arg_1.c))));
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) + _wgslsmith_f_op_f32(-var_0.d.a)) * var_0.d.a), true, ~abs(global0[_wgslsmith_index_u32(arg_0.e.a, 3u)]) >> (firstTrailingBit(max(0u, 51572u)) % 32u)), Struct_1(arg_0.d, !(arg_0.e.a >= ~arg_0.e.a), 1i), func_3(), var_0.a);
    return -vec3<i32>(~func_3(), -global2.c, global0[_wgslsmith_index_u32(17136u, 3u)]);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.d)), _wgslsmith_f_op_f32(round(-996f)));
    global0 = array<i32, 3>();
    var var_1 = firstLeadingBit(arg_0.x);
    var var_2 = reverseBits(-vec3<i32>(-2147483647i, i32(-1i) * -global0[_wgslsmith_index_u32(arg_1.e.a, 3u)], global2.a.c >> ((u_input.a.x ^ u_input.a.x) % 32u)));
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a, var_0)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-413f, arg_1.d)))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, arg_1.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a, arg_1.d)))))), !(!select(vec4<bool>(false, false, false, false), !vec4<bool>(arg_1.b.x, arg_1.c, arg_1.c, global2.d.b), select(vec4<bool>(false, global2.b.b, false, false), vec4<bool>(global2.d.b, arg_1.c, true, arg_1.c), global2.b.b))));
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a.x, u_input.a.x, 36232u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), ~u_input.a.yzz) | ~vec3<u32>(33682u, 62109u, u_input.a.x)), _wgslsmith_sub_u32(u_input.a.x, ~(~(1u >> (arg_1.e.a % 32u)))), 76159u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    global1 = array<Struct_4, 12>();
    let var_1 = reverseBits(func_4(countOneBits(func_1(global1[_wgslsmith_index_u32(0u ^ u_input.a.x, 12u)], global2.a, _wgslsmith_f_op_f32(f32(-1f) * -432f))), global1[_wgslsmith_index_u32(66901u, 12u)]));
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1542f, -1359f) + vec2<f32>(302f, 1547f))) - vec2<f32>(-1101f, _wgslsmith_f_op_f32(step(814f, global2.d.a))))), vec4<bool>(global2.d.b, func_2().d.b, true, true));
    global1 = array<Struct_4, 12>();
    var var_3 = ~(~((select(vec3<i32>(u_input.b, -2147483647i, -15862i), vec3<i32>(global2.c, -1i, -37776i), vec3<bool>(var_2.b.x, false, true)) | min(vec3<i32>(u_input.c, global2.a.c, u_input.c), vec3<i32>(-4457i, global0[_wgslsmith_index_u32(var_1, 3u)], 2779i))) >> (~(~u_input.a.xzw) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, func_3(), vec4<i32>(-(~(-4609i)), ~func_3(), -1i, 25989i) & (~(~vec4<i32>(14743i, var_3.x, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(var_1, 3u)])) << (u_input.a % vec4<u32>(32u))));
}

