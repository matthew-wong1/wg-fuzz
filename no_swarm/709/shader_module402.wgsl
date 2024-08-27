struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(Struct_1(25359u), vec4<i32>(0i, 2147483647i, -12978i, -18063i), Struct_1(15046u), vec4<bool>(true, false, true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    let var_0 = u_input.c.x;
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * 193f), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), -1334f);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -800f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, 117f, -2058f, arg_0)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f)), arg_0, arg_0, arg_0) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1261f, arg_0, arg_0, arg_0)))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1626f, 616f, arg_0), vec4<f32>(arg_0, arg_0, arg_0, arg_0)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    global1 = -1684f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_0.x));
    var var_0 = arg_0.yy;
    var var_1 = i32(-1i) * -1i;
    let var_2 = arg_0.yy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -207f)) + 511f);
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_3(-654f)), -2074f, Struct_1(global2.c.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-552f, -800f) + _wgslsmith_f_op_f32(max(-1453f, 1220f))) + -146f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-391f - -237f)))));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-690f)) + 232f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(870f)).x)))));
    var var_1 = vec3<u32>(abs(0u | arg_0), ~firstLeadingBit(_wgslsmith_mult_u32(arg_0, 0u)), u_input.b & 0u) ^ ~vec3<u32>(9550u, 0u, u_input.b);
    var var_2 = ~select(reverseBits(~vec3<u32>(arg_0, u_input.b, var_1.x)) | (_wgslsmith_add_vec3_u32(vec3<u32>(53352u, 24287u, u_input.b), vec3<u32>(0u, u_input.b, var_1.x)) | ~vec3<u32>(13092u, 0u, global2.c.a)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 17624u, 1u), vec3<u32>(19527u, 6181u, global2.a.a))), global2.d.zzy);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-556f, _wgslsmith_f_op_f32(1411f * var_0.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-804f, 1147f), vec2<f32>(336f, var_0.x), false)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-540f, 1000f), vec2<f32>(-607f, 758f)))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(651f, -359f))))));
    return Struct_2(Struct_1(min(u_input.b, 2407u & u_input.b)), ~(select(global2.b, vec4<i32>(u_input.a, global2.b.x, global2.b.x, global2.b.x), any(global2.d)) >> ((abs(vec4<u32>(arg_0, 4294967295u, 0u, arg_0)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 48571u, 147185u, var_2.x), vec4<u32>(arg_0, 47840u, 51473u, 11771u)) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(_wgslsmith_sub_u32(max(firstTrailingBit(var_1.x), u_input.b), ~4294967295u)), select(select(global2.d, global2.d, vec4<bool>(!arg_1, arg_1 | true, global2.d.x, global2.d.x)), global2.d, any(!global2.d)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.b & ~(~((global2.a.a | 36270u) & 1u));
    let var_1 = reverseBits(~abs(vec4<u32>(u_input.b, ~1u, abs(u_input.b), 4294967295u)));
    global2 = func_2(var_1.x, true);
    let var_2 = Struct_3(func_2(_wgslsmith_dot_vec2_u32(var_1.ww, vec2<u32>(_wgslsmith_sub_u32(var_1.x, 1u), _wgslsmith_dot_vec2_u32(var_1.zz, var_1.yw))), true & !(!arg_0)).a, select(global2.d.wy, vec2<bool>(true, global2.d.x), true), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(ceil(-132f)))).xw)), func_2(_wgslsmith_add_u32(abs(30392u), 0u), arg_0));
    let var_3 = func_2(34771u, true).c;
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b >= (20887u << (u_input.b % 32u));
    global1 = 339f;
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -881f);
    var_0 = any(select(!select(select(global2.d.wy, vec2<bool>(global2.d.x, global2.d.x), global2.d.x), !global2.d.ww, global2.d.zz), vec2<bool>(u_input.b > abs(u_input.b), global0.x), global0.x));
    var var_1 = func_1(true, -global2.b.zx);
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(84793u, ~var_1.a), 43086u);
    var_1 = global2.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1871f, -229f, -363f), vec4<f32>(-1272f, 2607f, 871f, 897f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.zz, u_input.c.x & (global2.b.x << (~(~u_input.b) % 32u)), ~(-47326i));
}

