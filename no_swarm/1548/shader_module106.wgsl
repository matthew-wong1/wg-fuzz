struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 10884i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1() -> f32 {
    var var_0 = select(global1.x, -1i, any(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
    global0 = _wgslsmith_f_op_f32(1423f - 885f);
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec3_u32(u_input.a.yyx, countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, u_input.b.x), max(vec3<u32>(20577u, 0u, 4294967295u), vec3<u32>(u_input.a.x, u_input.b.x, 29005u))))));
    let var_2 = u_input.a.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * _wgslsmith_f_op_f32(round(1f))))) + -1521f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + 1000f));
}

fn func_3() -> bool {
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    let var_0 = -1011f;
    global0 = arg_2.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1)));
    var var_1 = func_3();
    let var_2 = global1.x <= global1.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = _wgslsmith_sub_i32(global1.x, firstLeadingBit(countOneBits(global1.x) & 1i) << (u_input.b.x % 32u));
    var_1 = -global1.x << (~(~_wgslsmith_dot_vec3_u32(~u_input.a.ywx, _wgslsmith_add_vec3_u32(vec3<u32>(29166u, 17938u, 0u), u_input.a.zxx))) % 32u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1966f - -464f))))), 298f);
    let var_3 = select(select(select(vec3<bool>(true, func_2(Struct_1(var_2.x, vec4<bool>(true, true, true, true)), var_2.x, vec2<f32>(var_2.x, -462f), Struct_2(Struct_1(481f, vec4<bool>(true, false, false, false)))), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), _wgslsmith_mod_u32(0u, 1u) <= _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), any(vec2<bool>(true, true))), vec3<bool>(false, false, true), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), vec3<bool>(any(vec2<bool>(true, true)), !func_2(Struct_1(var_2.x, vec4<bool>(false, false, false, true)), var_2.x, vec2<f32>(var_2.x, var_2.x), Struct_2(Struct_1(var_2.x, vec4<bool>(true, false, true, true)))), max(global1.x, 32143i) > max(global1.x, -2147483647i)), func_3()));
    var_0 = ~u_input.b.x >> (_wgslsmith_clamp_u32(u_input.b.x, ~(4294967295u >> (u_input.b.x % 32u)) | u_input.a.x, ~1u ^ ((1u ^ u_input.a.x) | reverseBits(u_input.a.x))) % 32u);
    var var_4 = select(select(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1.x, 0i), vec2<i32>(1i, global1.x)), -vec2<i32>(55792i, -12145i)), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.x, global1.x), min(vec2<i32>(9522i, 25229i), vec2<i32>(global1.x, -1i)))), firstTrailingBit(~(vec2<i32>(1i, 44627i) | vec2<i32>(global1.x, -176i))), vec2<bool>(all(select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, true, true), var_3.x)), !var_3.x)), -(~firstTrailingBit(~vec2<i32>(2634i, -2147483647i))), !var_3.x);
    let var_5 = var_3;
    let var_6 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(min(-888f, var_2.x)), -1287f, var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, var_2.x, var_2.x, -2326f))))))), min(1i, var_4.x), 0u, global1.x << ((1u ^ ~max(100585u, u_input.b.x)) % 32u));
}

