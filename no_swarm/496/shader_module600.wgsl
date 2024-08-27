struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(true, -161f, false, vec2<u32>(1u, 0u), -16757i), Struct_1(true, -1052f, false, vec2<u32>(1u, 35911u), 12479i), Struct_1(true, 374f, false, vec2<u32>(4294967295u, 22466u), 51607i), Struct_1(false, 304f, true, vec2<u32>(13599u, 0u), 19401i), Struct_1(false, -1000f, true, vec2<u32>(0u, 118177u), 0i), Struct_1(true, -833f, true, vec2<u32>(0u, 1u), 2147483647i), Struct_1(true, 1560f, true, vec2<u32>(4142u, 83064u), -12679i), Struct_1(false, 130f, false, vec2<u32>(4294967295u, 31445u), 9846i), Struct_1(false, 409f, false, vec2<u32>(48879u, 0u), 73896i), Struct_1(false, 752f, false, vec2<u32>(0u, 20591u), -1i), Struct_1(false, -1874f, false, vec2<u32>(16057u, 6619u), 0i), Struct_1(false, 668f, false, vec2<u32>(4294967295u, 4294967295u), 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: bool) -> u32 {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    return ~_wgslsmith_div_u32(~(4294967295u >> (1u % 32u)), 1u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-798f * 233f) + 373f);
    return global0[_wgslsmith_index_u32(35195u, 12u)];
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    var var_0 = func_2();
    let var_1 = 1000f;
    var_0 = Struct_1(arg_2.x && all(!select(vec4<bool>(arg_1.a, arg_0, true, true), vec4<bool>(arg_2.x, arg_0, arg_0, arg_2.x), vec4<bool>(false, true, false, arg_1.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b, _wgslsmith_f_op_f32(sign(arg_1.b)), !arg_2.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1745f)))), true, select(~arg_1.d, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.d, vec2<u32>(25333u, 29910u)), vec2<u32>(u_input.b, 21164u)), (~1u << (_wgslsmith_add_u32(0u, u_input.b) % 32u)) != ~func_1(arg_1.c)), -1571i);
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    return var_0.d.x != abs(~var_0.d.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = vec2<i32>((u_input.c.x & 7740i) >> (u_input.b % 32u), ~7750i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1467f), -1606f) - arg_3.x)), arg_3.x, arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1196f));
    global0 = array<Struct_1, 12>();
    var_0 = ~(-(vec2<i32>(_wgslsmith_clamp_i32(var_0.x, 20109i, 63255i), -34096i) << (~(~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))));
    var var_2 = all(arg_1.xzy);
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(319f, arg_3.x, var_1.x), arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 12u)];
    let var_1 = 1u < ((func_1(var_0.a) << (u_input.b % 32u)) | ~(~_wgslsmith_div_u32(u_input.b, var_0.d.x)));
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(true, firstTrailingBit(-443i) < func_2().e), vec4<bool>(var_1, all(select(vec2<bool>(var_1, var_0.c), vec2<bool>(true, true), var_1)), true, func_3(var_1, global0[_wgslsmith_index_u32(var_2.d.x, 12u)], select(vec2<bool>(false, true), vec2<bool>(var_0.c, var_0.a), var_1))), func_2().c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, var_2.b, var_0.b), vec3<f32>(var_2.b, var_0.b, var_0.b), var_0.a)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, 122f))))))) - vec3<f32>(-1953f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1207f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1484f) - _wgslsmith_f_op_f32(-var_0.b)) + _wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(var_0.b + -132f)))));
    var_3 = vec3<f32>(_wgslsmith_div_f32(1931f, _wgslsmith_f_op_f32(min(-498f, func_2().b))), _wgslsmith_f_op_f32(select(-803f, var_0.b, true)), var_0.b);
    var_3 = vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-var_3.x), var_2.b);
    var var_4 = Struct_1(var_0.a, _wgslsmith_f_op_f32(floor(695f)), !any(!select(vec4<bool>(var_0.c, var_1, var_1, false), vec4<bool>(var_1, var_0.a, var_0.a, false), true)), func_2().d, i32(-1i) * -2147483647i);
    var_2 = Struct_1(false, -364f, true, (_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_2.d.x), vec2<u32>(1u, 1u)) | var_4.d) >> (~var_0.d % vec2<u32>(32u)), _wgslsmith_add_i32(1527i, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -7773i);
}

