struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: Struct_3,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = select(true, !(!(!any(vec2<bool>(true, true)))), select(select(true, false, true) != all(vec3<bool>(true, false, false)), true, !any(vec4<bool>(false, true, false, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1124f, 1465f) - _wgslsmith_f_op_f32(sign(-260f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(664f, -772f, var_0)) + _wgslsmith_f_op_f32(-640f + 830f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(292f * -843f)))));
    var var_2 = select(vec2<bool>(!(~u_input.e.x < u_input.e.x), var_0), vec2<bool>(all(select(vec2<bool>(var_0, true), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, var_0)), select(vec2<bool>(true, true), vec2<bool>(var_0, true), var_0))), var_0), false);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-998f, var_1.x, var_0)) - _wgslsmith_f_op_f32(sign(var_1.x)))))))));
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(191f, var_3, -759f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - 614f), _wgslsmith_f_op_f32(min(var_1.x, 1034f)), _wgslsmith_f_op_f32(f32(-1f) * -676f))))), Struct_1(vec4<bool>(true || var_2.x, true, var_2.x, true), _wgslsmith_div_vec4_u32(abs(min(vec4<u32>(0u, u_input.a, 4294967295u, 4294967295u), u_input.b)), ~select(u_input.b, vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.a), vec4<bool>(var_2.x, true, var_2.x, false)))), vec3<bool>(false, true, false), !(!vec3<bool>(var_0, var_2.x, !var_0)));
    return ~_wgslsmith_clamp_u32(1u, var_4.b.b.x, ~(~45786u));
}

fn func_2() -> vec3<i32> {
    var var_0 = -(global0[_wgslsmith_index_u32(func_3(global0[_wgslsmith_index_u32(u_input.a, 13u)]), 13u)] >> (_wgslsmith_mult_u32(u_input.e.x, ~_wgslsmith_mod_u32(4294967295u, u_input.b.x)) % 32u));
    var var_1 = Struct_1(vec4<bool>(true, all(vec4<bool>(true, any(vec2<bool>(true, true)), true, true)), false, false), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(~u_input.b.zww, u_input.b.xxy ^ u_input.b.wyx)), u_input.a, countOneBits(func_3(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.e.x), 13u)])), ~_wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(18060u, 20285u))));
    var_1 = Struct_1(vec4<bool>(all(!var_1.a), true, !all(!var_1.a.wyw), var_1.a.x & var_1.a.x), u_input.b);
    var var_2 = vec4<i32>(-31105i, u_input.c, countOneBits(~abs(global0[_wgslsmith_index_u32(0u, 13u)])), 6009i);
    var_2 = vec4<i32>(var_2.x, global0[_wgslsmith_index_u32(4294967295u, 13u)], 2147483647i, -16964i);
    return reverseBits(-select(var_2.xzy, -var_2.zyx, var_1.a.yxz));
}

fn func_1() -> Struct_4 {
    global0 = array<i32, 13>();
    var var_0 = global0[_wgslsmith_index_u32(countOneBits(0u), 13u)];
    var var_1 = ~2575u;
    let var_2 = ~_wgslsmith_add_vec3_i32(select(~func_2(), firstTrailingBit(-vec3<i32>(u_input.d.x, -17720i, u_input.d.x)), vec3<bool>(true, true, true)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, 24568i, -22777i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], 27825i), -vec3<i32>(u_input.c, -33645i, -1i)));
    let var_3 = true;
    return Struct_4(abs(u_input.e), var_3, Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-107f, 235f, -1000f), vec3<f32>(-1000f, -223f, -2178f), var_3)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1362f, -821f, -391f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-237f, 1292f, 267f), vec3<f32>(-1220f, -207f, -2569f)))))), Struct_1(vec4<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(false, false)), var_3, var_3), max(u_input.b, u_input.b) ^ vec4<u32>(76658u, 84254u, 1u, 0u)), select(!vec3<bool>(false, var_3, var_3), !(!vec3<bool>(true, true, var_3)), true), !(!(!vec3<bool>(var_3, true, var_3)))), ~abs(u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<i32, 13>();
    let var_1 = Struct_3(vec3<f32>(var_0.c.a.x, -658f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), Struct_1(var_0.c.b.a, vec4<u32>(_wgslsmith_add_u32(1u, u_input.e.x >> (8764u % 32u)), u_input.e.x, ~countOneBits(u_input.e.x), u_input.e.x)), vec3<bool>((~var_0.c.b.b.x << (9070u % 32u)) > _wgslsmith_add_u32(reverseBits(var_0.a.x), abs(4294967295u)), false, false), var_0.c.b.a.zzz);
    var var_2 = var_0.c.b;
    var var_3 = Struct_3(var_0.c.a, var_0.c.b, var_1.c, var_0.c.b.a.zzx);
    var var_4 = reverseBits(reverseBits(var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

