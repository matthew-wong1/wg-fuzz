struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(425f);
    let var_1 = u_input.b.x;
    var_0 = global0[_wgslsmith_index_u32(3229u, 6u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(round(-938f)))), _wgslsmith_div_vec2_f32(vec2<f32>(-1134f, _wgslsmith_f_op_f32(abs(var_0.a))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 1320f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(256f, -828f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1272f, var_0.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(var_0.a, var_0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(var_0.a, -294f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(436f, 636f), vec2<f32>(var_0.a, var_0.a))))))));
    let var_3 = global0[_wgslsmith_index_u32(u_input.d, 6u)];
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_0.a) * -1069f));
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    let var_0 = abs(~(~arg_0.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1332f, _wgslsmith_f_op_f32(-359f - 292f)))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -970f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * -281f)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_1.a));
    let var_4 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.zyz, -(~vec3<i32>(1i, -28615i, 2147483647i)) ^ u_input.b.zyz), vec3<i32>(-1i, 49631i, _wgslsmith_dot_vec4_i32(~(vec4<i32>(10284i, u_input.b.x, u_input.b.x, u_input.c.x) | u_input.b), vec4<i32>(abs(-1i), ~u_input.e.x, abs(u_input.e.x), countOneBits(u_input.c.x)))));
    return u_input.b;
}

fn func_1() -> vec2<f32> {
    let var_0 = 0u;
    let var_1 = func_2();
    let var_2 = 1f;
    var var_3 = !(!(!vec4<bool>(true, var_0 != 1u, true, true)));
    var var_4 = _wgslsmith_dot_vec4_i32(firstLeadingBit(-func_3(vec4<u32>(19796u, u_input.d, 121951u, var_0))), u_input.b);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(532f, -269f), vec2<f32>(var_2, -2981f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1189f, -1268f), vec2<f32>(-1317f, -551f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 6>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f), 1283f));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1085f) - _wgslsmith_f_op_f32(-var_0)), 470f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 271f) + vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(func_1())))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2800f))));
    global0 = array<Struct_2, 6>();
    var var_3 = _wgslsmith_clamp_vec2_i32(~(-max(min(u_input.c, vec2<i32>(-1i, u_input.e.x)), vec2<i32>(u_input.e.x, u_input.e.x))), vec2<i32>(reverseBits(-1i), u_input.b.x), vec2<i32>(-53385i, min(u_input.c.x, -u_input.c.x)) ^ (_wgslsmith_sub_vec2_i32(u_input.b.wx, _wgslsmith_clamp_vec2_i32(u_input.c, u_input.e, vec2<i32>(2147483647i, u_input.c.x))) >> ((_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.a.x, u_input.a.x)) >> (u_input.a.zw % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x), _wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(-var_2.a), 990f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -712f, 1494f, -1542f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(func_3(vec4<u32>(u_input.d, u_input.d, 0u, 104939u)).x) | -40172i, 0u, u_input.a);
}

