struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: f32) -> f32 {
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    var var_0 = _wgslsmith_div_u32(~(~(u_input.a.x << (18993u % 32u))), ~4294967295u) << (_wgslsmith_dot_vec3_u32(u_input.a.wzw ^ (vec3<u32>(0u, u_input.a.x, u_input.a.x) >> (u_input.a.zyw % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.a.xyx, vec3<u32>(56429u, 50373u, 13053u)), ~_wgslsmith_mod_vec3_u32(u_input.a.xxy, u_input.a.zxz))) % 32u);
    var var_1 = min(u_input.c.x, -60324i);
    global1 = 1925f;
    return _wgslsmith_f_op_f32(abs(arg_0));
}

fn func_3() -> bool {
    global0 = array<Struct_2, 2>();
    let var_0 = Struct_1(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false || all(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, true, true, true))), vec2<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false))), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true)))), select(true, all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))), !(any(vec3<bool>(true, false, false)) & any(vec2<bool>(true, true)))), select(reverseBits(-u_input.c), select(~u_input.c, _wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(-52233i, u_input.b.x, u_input.b.x, u_input.b.x)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false)) << (~firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 49207u, u_input.a.x)) % vec4<u32>(32u)), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, false, false), any(vec2<bool>(true, false)))), (u_input.c.x >= -(~u_input.c.x)) || true);
    var var_1 = var_0.c.x;
    var var_2 = var_0;
    let var_3 = vec2<i32>(~var_2.c.x, u_input.c.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -339f) * _wgslsmith_div_f32(557f, -1693f)) - 647f);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32, arg_3: bool) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), 926f, false)) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1.x)), 699f))), 2u)];
    let var_1 = 172f;
    let var_2 = Struct_1(!(!(!select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, false), vec2<bool>(arg_3, arg_3)))), arg_3 || true, _wgslsmith_add_vec4_i32(abs(u_input.c), firstLeadingBit(u_input.c)), arg_3);
    var var_3 = Struct_2(arg_0.a);
    var var_4 = Struct_2(6075i);
    return -321f;
}

fn func_1() -> StorageBuffer {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2438f, 2522f));
    var var_0 = u_input.b.zy;
    global0 = array<Struct_2, 2>();
    global1 = _wgslsmith_f_op_f32(-387f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-635f, 721f))) + _wgslsmith_f_op_f32(func_2(570f, _wgslsmith_f_op_f32(sign(-357f)))))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(677f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(182f + 342f))))));
    return StorageBuffer(_wgslsmith_f_op_f32(func_4(Struct_2(27946i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(758f, 1369f, -642f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-865f, 204f, 659f)))), vec3<bool>(true, false, true))), -1i, !func_3())));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

