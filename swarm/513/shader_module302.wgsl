struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

var<private> global1: vec4<f32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    global0 = array<Struct_4, 13>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1059f, arg_3)) - global1.x));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b << (1u % 32u), -2147483647i, _wgslsmith_add_i32(2147483647i << (arg_0.a.x % 32u), 24536i), arg_2.c), ~(vec4<i32>(-arg_2.c, u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2.c), vec2<i32>(arg_2.c, 1i)), arg_1.x) ^ vec4<i32>(-13453i, arg_2.c, 0i, arg_0.c)));
    var var_2 = ~7411u;
    return _wgslsmith_add_i32(-1i, var_1) & -1i;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: i32) -> vec3<i32> {
    global0 = array<Struct_4, 13>();
    var var_0 = false;
    let var_1 = abs(max(-(~vec2<i32>(arg_2.d.c, arg_3)), _wgslsmith_sub_vec2_i32(~vec2<i32>(-5087i, 300i), _wgslsmith_mult_vec2_i32(vec2<i32>(3440i, arg_2.d.c), vec2<i32>(-2147483647i, -2147483647i))))) | vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-u_input.b, arg_2.d.c ^ u_input.b), u_input.b), ~(~func_2(Struct_2(arg_2.d.a.zz, vec2<bool>(arg_2.b.x, arg_2.d.b.x), -2147483647i, Struct_1(arg_2.d.a, arg_2.d.b, arg_3)), vec2<i32>(arg_3, 15722i), Struct_1(arg_2.d.a, vec4<bool>(false, true, arg_2.d.b.x, false), 62481i), 2179f)));
    var_0 = _wgslsmith_dot_vec3_u32(((arg_2.d.a | arg_2.d.a) | vec3<u32>(21525u, 21227u, arg_2.d.a.x)) >> (~arg_2.d.a % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(select(~vec3<u32>(0u, 2127u, u_input.a), _wgslsmith_mod_vec3_u32(arg_2.d.a, vec3<u32>(arg_2.d.a.x, arg_2.d.a.x, u_input.a)), !arg_2.c), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(7038u, u_input.a, arg_2.d.a.x)), ~vec3<u32>(u_input.a, u_input.a, u_input.a), firstTrailingBit(vec3<u32>(u_input.a, 19015u, u_input.a))))) >= (~(~(~u_input.a)) & _wgslsmith_dot_vec3_u32(~arg_2.d.a, vec3<u32>(4294967295u, 0u, ~1u)));
    global0 = array<Struct_4, 13>();
    return abs(-vec3<i32>(0i, ~var_1.x, -8973i) & firstTrailingBit(firstTrailingBit(-vec3<i32>(-4605i, 7542i, arg_2.d.c))));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = select(firstTrailingBit(~(~vec4<u32>(u_input.a, 0u, 12086u, u_input.a))), abs(countOneBits(min(abs(vec4<u32>(u_input.a, 14685u, 30208u, 14590u)), min(vec4<u32>(u_input.a, 49210u, u_input.a, 1u), vec4<u32>(68527u, 0u, 72095u, 78283u))))), vec4<bool>(true, !all(vec3<bool>(false, false, true)), false, _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)), vec2<bool>(!select(true, false, true), 0u >= abs(var_0.x)), select(!vec3<bool>(true, select(false, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(all(vec2<bool>(false, true)), false, true), vec3<bool>(true, 8550u >= var_0.x, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), Struct_1(reverseBits(_wgslsmith_mod_vec3_u32(var_0.xzx ^ vec3<u32>(u_input.a, 21728u, 4294967295u), var_0.zzy)), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), select(u_input.b, _wgslsmith_div_i32(select(2147483647i, u_input.b, true), ~u_input.b), any(vec3<bool>(false, false, true)))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(643f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * var_1.a.x)), -418f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-203f, -701f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(478f, 2232f, var_1.a.x, var_1.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1601f, var_1.a.x, -527f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.x, -329f, 1000f, -1754f)))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(965f, -1000f, var_1.a.x, var_1.a.x))))));
    let var_2 = global0[_wgslsmith_index_u32(var_1.d.a.x, 13u)];
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(267f, 141f)), var_2.c.xy, var_2.c, Struct_1(abs(vec3<u32>(var_1.d.a.x, var_1.d.a.x, 1u) & var_0.xwy) | var_1.d.a, var_1.d.b, 2147483647i));
    return select(var_1.d.b.yw, !vec2<bool>(var_1.b.x, var_2.b), all(vec4<bool>(true, !(!var_2.d), any(var_1.c) || var_2.b, _wgslsmith_f_op_f32(-var_2.a) == _wgslsmith_f_op_f32(-112f * var_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 13>();
    let var_0 = ~countOneBits(func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-290f, -581f, global1.x, global1.x) - vec4<f32>(-1430f, 1332f, 1000f, global1.x))), Struct_3(global1.zy, vec2<bool>(true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<bool>(false, true, false, false), u_input.b)), u_input.b | 2147483647i));
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(663f, -389f, _wgslsmith_f_op_f32(-global1.x), global1.x) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, global1.x, -757f, global1.x))))))));
    global0 = array<Struct_4, 13>();
    let var_1 = Struct_4(global1.x, all(func_3(_wgslsmith_f_op_vec2_f32(-global1.zx))) || !(all(vec2<bool>(true, true)) && false), vec3<bool>(true, false, false), true);
    let x = u_input.a;
    s_output = StorageBuffer(39370u, select(~(~(~vec4<u32>(0u, u_input.a, 16902u, u_input.a))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) >> (vec4<u32>(4294967295u, u_input.a, 32496u, u_input.a) % vec4<u32>(32u)), select(vec4<u32>(14120u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<bool>(var_1.b, true, var_1.d, var_1.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 58917u, 68112u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))), abs(abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, 50884u)))), _wgslsmith_f_op_f32(135f * -833f) < _wgslsmith_f_op_f32(step(246f, global1.x))), vec4<f32>(var_1.a, 313f, _wgslsmith_f_op_f32(max(463f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(446f, -1000f)), _wgslsmith_f_op_f32(trunc(-846f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-748f + -110f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-567f - 698f))))), (vec3<u32>(~u_input.a, _wgslsmith_mod_u32(14732u, 1u), 59985u) << (abs(firstTrailingBit(vec3<u32>(4294967295u, 0u, u_input.a))) % vec3<u32>(32u))) << (~vec3<u32>(_wgslsmith_add_u32(16943u, 0u), countOneBits(0u), ~u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a, -485f, global1.x)))))), global1.wxw)));
}

