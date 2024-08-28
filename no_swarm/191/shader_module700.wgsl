struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<u32> {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + 363f), -421f);
    return ~vec4<u32>(firstLeadingBit(0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(73560u, 13727u, 4294967295u), reverseBits(vec3<u32>(9342u, 0u, 4294967295u))) ^ 1u, reverseBits(_wgslsmith_add_u32(_wgslsmith_clamp_u32(44016u, 1u, 10722u), 0u)), 4294967295u);
}

fn func_2() -> vec4<u32> {
    var var_0 = ~min(vec4<u32>(reverseBits(~23035u), 4294967295u, 37561u, 17829u), max(func_3(u_input.a.x, -494f), select(vec4<u32>(4294967295u, 9750u, 13763u, 4294967295u), vec4<u32>(942u, 1u, 24653u, 37882u), all(vec4<bool>(false, true, true, true)))));
    let var_1 = true;
    var var_2 = false;
    var_2 = true;
    let var_3 = Struct_3(~firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(var_0.x, 1u), 39241u >> (var_0.x % 32u), 0u, ~4294967295u)));
    return _wgslsmith_mod_vec4_u32(var_3.a, var_3.a);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2) -> f32 {
    var var_0 = 7357i;
    let var_1 = Struct_3(~func_2());
    let var_2 = vec4<bool>(false, !(802f < _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(260f + arg_1.x))), abs(~(-u_input.a.x)) <= u_input.a.x, true);
    let var_3 = _wgslsmith_dot_vec2_i32(min(-_wgslsmith_mult_vec2_i32(~vec2<i32>(-736i, u_input.a.x), u_input.a), _wgslsmith_mult_vec2_i32(select(u_input.a, vec2<i32>(u_input.a.x, -32506i) | vec2<i32>(u_input.a.x, u_input.a.x), select(vec2<bool>(var_2.x, var_2.x), var_2.yy, var_2.x)), vec2<i32>(u_input.a.x, u_input.a.x) & u_input.a)), u_input.a);
    let var_4 = -u_input.a | u_input.a;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.x, 999f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.a.x, arg_1.x)), arg_1.x))), _wgslsmith_f_op_f32(1368f + arg_1.x)));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_4 {
    global0 = arg_1.x;
    global0 = _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(step(1246f, _wgslsmith_f_op_f32(f32(-1f) * -1421f))));
    var var_0 = !select(select(vec2<bool>(true, true), select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), true), vec2<bool>(arg_0, true), vec2<bool>(true, true)), all(!vec2<bool>(arg_0, arg_0))), vec2<bool>(true, arg_0), !vec2<bool>(arg_0, all(vec4<bool>(arg_0, arg_0, arg_0, false))));
    global0 = _wgslsmith_f_op_f32(-998f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(min(-410f, _wgslsmith_f_op_f32(-arg_1.x))))));
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 33729u, ~abs(47565u), min(abs(_wgslsmith_div_u32(0u, 1u)), 0u)), ~vec4<u32>(~1u, _wgslsmith_add_u32(0u, _wgslsmith_div_u32(8212u, 33781u)), _wgslsmith_dot_vec4_u32(vec4<u32>(42797u, 62838u, 0u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(32919u, 1u, 1565u, 21546u), vec4<u32>(4294967295u, 1u, 8651u, 14285u))), _wgslsmith_div_u32(5480u, 4294967295u) >> (1u % 32u)));
    return Struct_4(Struct_1(select(select(vec3<bool>(var_0.x, var_0.x, arg_0), !vec3<bool>(arg_0, var_0.x, var_0.x), vec3<bool>(arg_0, true, var_0.x)), select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, true, var_0.x)), !(!vec3<bool>(arg_0, arg_0, true))), true, (abs(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)) & select(vec3<i32>(44292i, -63444i, -1i), vec3<i32>(u_input.a.x, 16728i, u_input.a.x), vec3<bool>(arg_0, var_0.x, true))) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(20069u, 1588u, var_1.x), var_1.zww) % vec3<u32>(32u))), _wgslsmith_dot_vec2_i32(abs(u_input.a), max(_wgslsmith_div_vec2_i32(u_input.a << (var_1.yx % vec2<u32>(32u)), ~u_input.a), vec2<i32>(~u_input.a.x, u_input.a.x))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(626f - 631f))), _wgslsmith_f_op_f32(arg_1.x + arg_3.x), -394f, arg_1.x)), var_1.ywx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~(~(~vec4<u32>(1u, 1u, 1u, 1u))));
    var_0 = Struct_3(~(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.a.x, 0u, var_0.a.x), var_0.a ^ var_0.a) | _wgslsmith_sub_vec4_u32(var_0.a, _wgslsmith_add_vec4_u32(vec4<u32>(84597u, 0u, 73054u, 37020u), var_0.a))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-921f)) - 1f))));
    global0 = _wgslsmith_f_op_f32(-388f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f), _wgslsmith_f_op_f32(floor(-554f))));
    let var_1 = func_4(!(_wgslsmith_f_op_f32(trunc(-689f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(886f + 1160f) * 919f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-122f, 740f, 704f), vec3<f32>(-1000f, 575f, 1000f), vec3<bool>(false, false, true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-196f, 1906f, 1536f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(var_0.a.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -191f, -183f, 924f))), Struct_2(vec4<f32>(531f, -428f, -171f, 1809f)))), 2957f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1511f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-752f, 185f)))), -1567f));
    var var_2 = -425f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_1.c.a.x + 874f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.c.a.x, 1680f, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.a.x)))))), min(~vec3<u32>(~4294967295u, 20945u, var_0.a.x), func_2().wxx), var_1.c.a.x);
}

