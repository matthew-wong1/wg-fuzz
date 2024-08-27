struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = Struct_2(u_input.c <= ~u_input.c, !(!select(!arg_1.a.yzx, arg_1.a.zwz, select(arg_1.a.xzx, arg_1.a.zyy, arg_0))), arg_1);
    let var_1 = i32(-1i) * -var_0.c.b.x;
    global0 = array<vec4<bool>, 24>();
    let var_2 = vec4<i32>(12601i, var_0.c.b.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, var_1, var_0.c.b.x) >> (vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(-2147483647i, i32(-1i) * -32914i, var_0.c.b.x, -1834i)), 0i);
    let var_3 = Struct_2(select(any(!(!arg_1.a)), !(!arg_1.a.x), min(u_input.c, 45997u) > select(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x), u_input.b), any(vec3<bool>(true, false, var_0.b.x)))), select(var_0.c.a.yxx, var_0.b, !arg_0), arg_1);
    return min(vec2<i32>(arg_1.b.x, var_2.x), abs(abs(~arg_1.b)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = all(select(vec2<bool>(true, any(vec3<bool>(true, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), select(any(vec2<bool>(true, true)), u_input.c >= abs(6778u), !any(vec3<bool>(true, true, false)))));
    global0 = array<vec4<bool>, 24>();
    var var_1 = Struct_1(global0[_wgslsmith_index_u32((~min(4294967295u, u_input.c) >> ((_wgslsmith_div_u32(54625u, 35399u) >> (~u_input.b.x % 32u)) % 32u)) ^ arg_0.x, 24u)], _wgslsmith_div_vec2_i32(func_3(true, Struct_1(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), global0[_wgslsmith_index_u32(2568u, 24u)]), _wgslsmith_clamp_vec2_i32(u_input.d.zy, vec2<i32>(-2147483647i, 0i), vec2<i32>(-1i, 0i)))), vec2<i32>(u_input.d.x, u_input.e)));
    var var_2 = var_1.a.wyy;
    var_2 = select(select(select(var_1.a.xzz, select(select(vec3<bool>(var_1.a.x, var_2.x, false), vec3<bool>(false, var_1.a.x, var_2.x), var_1.a.x), !var_1.a.zyz, vec3<bool>(true, var_1.a.x, var_2.x)), !var_2.x), var_1.a.yzw, vec3<bool>(~52024u >= _wgslsmith_add_u32(arg_0.x, arg_0.x), all(vec3<bool>(false, true, var_2.x)), true)), vec3<bool>(-1760f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(682f * -1088f), _wgslsmith_f_op_f32(sign(-1696f)))), var_2.x, true), !vec3<bool>(true, var_2.x, any(select(vec2<bool>(var_1.a.x, var_1.a.x), var_1.a.xw, var_1.a.x))));
    return Struct_2(var_2.x, !(!select(var_1.a.zww, var_1.a.zzw, select(vec3<bool>(false, var_1.a.x, true), vec3<bool>(var_2.x, true, false), vec3<bool>(var_2.x, false, var_2.x)))), Struct_1(select(!vec4<bool>(var_1.a.x, var_2.x, true, true), global0[_wgslsmith_index_u32(arg_0.x, 24u)], !any(vec4<bool>(var_1.a.x, false, var_2.x, var_1.a.x))), abs(var_1.b)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    let var_0 = -663f;
    global0 = array<vec4<bool>, 24>();
    let var_1 = Struct_2(true, !arg_1.b, Struct_1(vec4<bool>(true, false, arg_1.c.a.x, (0u > arg_2) != arg_1.c.a.x), ~arg_1.c.b));
    var var_2 = Struct_2(all(vec3<bool>(1u >= select(0u, arg_2, true), var_1.a, true == select(arg_1.b.x, true, true))), vec3<bool>(any(arg_1.b.xz), true, var_1.c.a.x), arg_1.c);
    return _wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_2, max(4294967295u, u_input.b.x)), arg_3 >> (firstLeadingBit(arg_3) % vec2<u32>(32u)))) & u_input.b.x;
}

fn func_1(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = -vec2<i32>(-(~(~u_input.e)), max(-12357i, ~55466i));
    var var_1 = select(vec4<bool>(true, all(global0[_wgslsmith_index_u32(4294967295u | u_input.c, 24u)]) || true, !all(!global0[_wgslsmith_index_u32(63432u, 24u)]), all(select(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], vec4<bool>(false, true, false, false), false)) && !any(global0[_wgslsmith_index_u32(u_input.c, 24u)])), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_4(vec2<i32>(-558i, _wgslsmith_mod_i32(var_0.x, 36880i)), func_2(vec2<u32>(u_input.c, u_input.b.x)), ~u_input.b.x, min(~vec2<u32>(u_input.b.x, u_input.b.x), ~u_input.b.xz)), u_input.b.x), 24u)], all(select(global0[_wgslsmith_index_u32(~u_input.b.x, 24u)], vec4<bool>(true, true, any(global0[_wgslsmith_index_u32(u_input.c, 24u)]), true), vec4<bool>(true, true, true, true))));
    var_1 = global0[_wgslsmith_index_u32(0u, 24u)];
    var var_2 = vec2<bool>(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false))), _wgslsmith_f_op_f32(-250f + 915f))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_3 = func_2(min(u_input.b.wx, u_input.b.yy)).c;
    return !(!select(select(!var_1.xzx, vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_2.x, false)), select(func_2(vec2<u32>(0u, u_input.b.x)).b, vec3<bool>(var_2.x, true, false), !vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x)), !func_2(vec2<u32>(u_input.c, u_input.b.x)).b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), func_1(vec4<f32>(-398f, 116f, 288f, 240f)))) || !(true | func_2(u_input.b.zy).c.a.x);
    let var_1 = func_3(any(vec2<bool>(true, true)), Struct_1(global0[_wgslsmith_index_u32(countOneBits(~(~1u)), 24u)], reverseBits(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, u_input.e)), reverseBits(vec2<i32>(u_input.e, -57828i))))));
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -2095f, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1685f + 1381f) * -533f)) - _wgslsmith_div_f32(-1065f, _wgslsmith_f_op_f32(-774f + -449f))), var_1.x, 30222i, _wgslsmith_add_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.b.x, u_input.c, u_input.c), countOneBits(1u)), _wgslsmith_clamp_u32(8637u, 4294967295u << (u_input.b.x % 32u), ~(~0u))));
}

