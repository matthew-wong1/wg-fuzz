struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(90265u, 13085u, 8498u, 4294967295u);

var<private> global1: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> f32 {
    let var_0 = select(!global1.c.zx, global1.c.xy, select(global1.c.yz, global1.c.xz, select(!vec2<bool>(global1.c.x, true), vec2<bool>(true, select(false, global1.d, global1.d)), select(select(vec2<bool>(global1.c.x, global1.d), vec2<bool>(true, false), arg_1.xy), vec2<bool>(global1.c.x, false), true))));
    return _wgslsmith_f_op_f32(step(-1000f, global1.a.d));
}

fn func_2(arg_0: vec2<f32>) -> vec3<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(global1.a.b * arg_0.x), _wgslsmith_f_op_f32(select(794f, arg_0.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0.x, global0.x, global1.a.c), _wgslsmith_div_vec4_u32(vec4<u32>(global1.b.a.c, global0.x, 4294967295u, 4294967295u), vec4<u32>(global1.a.c, 124060u, global1.a.c, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 14936u, 19481u, 7182u), vec4<u32>(40074u, 0u, global1.b.a.c, global0.x))), !vec4<bool>(true, global1.c.x, true, global1.c.x), ~(~u_input.a))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -185f)))), -672f);
    global0 = vec4<u32>(global0.x, global0.x, 1u, 53202u << ((global1.b.a.c >> (79390u % 32u)) % 32u));
    var var_1 = Struct_4(global1.a, Struct_3(global1.a, Struct_2(global1.b.a, var_0.xw, abs(29399i)), select(select(!global1.c, vec3<bool>(global1.e, global1.c.x, true), vec3<bool>(false, global1.d, global1.e)), vec3<bool>(any(global1.c.yx), global1.e, all(vec3<bool>(true, global1.c.x, false))), !vec3<bool>(global1.c.x, true, true)), any(select(vec3<bool>(global1.c.x, true, global1.d), global1.c, global1.c.x)), select(true, all(!vec2<bool>(global1.d, false)), all(vec3<bool>(global1.e, global1.d, global1.c.x)))), _wgslsmith_f_op_f32(abs(1000f)), min(firstLeadingBit(global0.xzz), vec3<u32>(1u, global1.a.c, global1.a.c)));
    let var_2 = -(~(~select(vec2<i32>(u_input.a.x, -1i), u_input.a.yx, global1.e))) << (((~vec2<u32>(global1.a.c, 0u) | var_1.d.xx) | var_1.d.xy) % vec2<u32>(32u));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_1.c, global1.b.a.d, var_1.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1262f, var_0.x, var_0.x, 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, arg_0.x, 1274f, arg_0.x), vec4<f32>(arg_0.x, -426f, var_0.x, arg_0.x)))))));
    return u_input.a;
}

fn func_1() -> StorageBuffer {
    var var_0 = select(~firstLeadingBit(func_2(vec2<f32>(-1000f, global1.a.b))), func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a.b + 449f)), -436f)), global1.e);
    var var_1 = global0.x;
    var_1 = _wgslsmith_mod_u32(global1.a.c, ~(countOneBits(firstTrailingBit(4742u)) ^ abs(81652u)));
    var var_2 = global1.b;
    var_0 = u_input.a;
    return StorageBuffer(-1000f, var_2.a.c, var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(global1.b.c);
    var var_1 = u_input.a.x;
    var var_2 = 26668i;
    let var_3 = u_input.a;
    let var_4 = min(44431u, ~_wgslsmith_mod_u32(43587u, ~1u));
    var var_5 = vec3<i32>(global1.b.c, ~u_input.a.x, _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(-2147483647i, u_input.a.x)) & u_input.a.x) | u_input.a;
    let x = u_input.a;
    s_output = func_1();
}

