struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<bool, 7> = array<bool, 7>(true, false, true, true, true, false, true);

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(567f, 461f, 1477f)), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(767f, 556f, 457f)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-119f, 819f, 386f)), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(-620f, 1447f, 873f)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-1000f, 1000f, -462f)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(783f, -1722f, 921f)), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(193f, -1094f, -889f)), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(1764f, 608f, -328f)), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(-174f, -875f, -780f)));

var<private> global3: vec3<bool>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> bool {
    global1 = array<bool, 7>();
    return any(vec4<bool>(!any(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), global3.xx, global3.zx)), true, global1[_wgslsmith_index_u32(arg_1.x, 7u)], !any(!vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 7u)], global3.x, global1[_wgslsmith_index_u32(1u, 7u)]))));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-145f, _wgslsmith_f_op_f32(min(869f, 1000f))))) + 126f));
    global1 = array<bool, 7>();
    var var_1 = -(~min(u_input.c.wx, vec2<i32>(9558i, u_input.c.x)) | -_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-76491i, 2147483647i), vec2<i32>(-1i, -2147483647i)));
    var_1 = _wgslsmith_sub_vec2_i32(min(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 51786i), vec2<i32>(2147483647i, u_input.c.x)), min(vec2<i32>(var_1.x, 1i), vec2<i32>(-2147483647i, var_1.x)) | -u_input.c.wz), u_input.c.wz), _wgslsmith_sub_vec2_i32(-abs(~u_input.c.zx), u_input.c.wz));
    let var_2 = u_input.a;
    return func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), 1f, _wgslsmith_f_op_f32(abs(532f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), -824f, _wgslsmith_f_op_f32(-1f)))), (~(~vec4<u32>(21497u, 4294967295u, u_input.b.x, 0u)) ^ firstTrailingBit(~vec4<u32>(4294967295u, 11008u, var_2.x, var_2.x))) << (firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(17945u, 26399u), var_2.x, var_2.x, ~4294967295u)) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> StorageBuffer {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(-arg_2.zyx), ~((_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, arg_1.x), vec4<u32>(u_input.a.x, 5134u, arg_1.x, arg_1.x)) << (~vec4<u32>(arg_1.x, 1u, 1u, 54231u) % vec4<u32>(32u))) >> (~min(vec4<u32>(arg_1.x, 4294967295u, arg_1.x, u_input.d), vec4<u32>(arg_0, 29757u, arg_1.x, 25932u)) % vec4<u32>(32u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(366f + arg_2.x));
    global2 = array<Struct_1, 9>();
    let var_2 = -_wgslsmith_div_i32(firstLeadingBit(-49821i), 1633i);
    global3 = !vec3<bool>(true, func_2(arg_2.xwz, _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a.x, arg_1.x, 12118u, 3143u), vec4<u32>(20653u, 0u, 1u, 1u)), min(vec4<u32>(arg_1.x, 1u, arg_0, 1u), vec4<u32>(arg_1.x, arg_0, 61665u, arg_1.x)))), func_3());
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(floor(-616f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1143f, arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -247f)))), arg_2.x)), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-458f, _wgslsmith_div_f32(-178f, -1248f))))))));
    let var_1 = firstLeadingBit(vec3<u32>(min(25546u, 4294967295u), 4294967295u, 1614u));
    var_0 = -126f;
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 41002u, 1u) | var_1, vec3<u32>(u_input.b.x, 4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b, var_1.zy), _wgslsmith_mod_u32(1u, var_1.x)))), 8u)];
    global1 = array<bool, 7>();
    global1 = array<bool, 7>();
    let x = u_input.a;
    s_output = func_1((~20718u ^ u_input.a.x) << (u_input.a.x % 32u), var_1.yx, _wgslsmith_f_op_vec4_f32(var_2.d * var_2.d), u_input.c.zx);
}

