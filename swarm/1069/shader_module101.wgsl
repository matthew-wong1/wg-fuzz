struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec3<f32>(1804f, -712f, -748f)), Struct_2(vec3<f32>(597f, 248f, -1156f)), Struct_2(vec3<f32>(-1000f, -1000f, 825f)), Struct_2(vec3<f32>(-995f, -1020f, -416f)), Struct_2(vec3<f32>(1000f, 1000f, 297f)), Struct_2(vec3<f32>(247f, 556f, 535f)), Struct_2(vec3<f32>(687f, -1000f, 1106f)), Struct_2(vec3<f32>(1057f, -3252f, -522f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec4<i32>(-u_input.c.x, -reverseBits(-1i), u_input.c.x, reverseBits(~u_input.c.x));
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    var var_1 = true;
    return select(select(!vec4<bool>(all(vec2<bool>(false, true)), false, u_input.a >= u_input.b, true), !select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), true), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)))), select(vec4<bool>(any(vec4<bool>(false, true, false, true)), select(all(vec3<bool>(true, false, false)), u_input.a < 539u, true), true & select(true, true, true), true), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, false, true), u_input.b > 19700u), ~u_input.b != abs(u_input.a))), vec4<bool>(true, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(43848u, u_input.a)), vec2<u32>(u_input.a, u_input.b) >> (vec2<u32>(0u, 10227u) % vec2<u32>(32u))) != 1u, select(true, true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), all(vec4<bool>(true, true, true, true)) | true));
}

fn func_4(arg_0: vec4<bool>) -> vec3<f32> {
    global0 = array<Struct_2, 8>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 8u)];
    global0 = array<Struct_2, 8>();
    let var_1 = all(!select(!(!vec3<bool>(false, arg_0.x, arg_0.x)), arg_0.wzw, arg_0.x | (arg_0.x & arg_0.x)));
    let var_2 = any(arg_0);
    return _wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2063f, -1000f, 1205f), var_0.a)) - var_0.a) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, 1281f, -1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a - var_0.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 140f, var_0.a.x))))), !arg_0.x));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(-2363f, 436f));
    var var_1 = u_input.b;
    let var_2 = global0[_wgslsmith_index_u32(u_input.b, 8u)];
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(func_4(func_3())));
    let var_4 = !vec2<bool>(all(vec3<bool>(true, true, true)) | true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(508f, var_3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -800f)) == _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(var_0 - var_0)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(var_4.x, false, var_4.x, var_4.x))).x + _wgslsmith_f_op_f32(f32(-1f) * -1246f))) <= var_0);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_2, 8>();
    let var_0 = vec2<u32>(0u, _wgslsmith_clamp_u32(~u_input.a, ~(_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a) << (u_input.a % 32u)), 25888u));
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) * _wgslsmith_f_op_f32(-arg_1.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f * 193f)));
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + 579f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1338f), _wgslsmith_f_op_f32(var_2 * arg_1.a.x)), _wgslsmith_f_op_f32(sign(296f))))));
    return arg_1;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec3<u32> {
    let var_0 = ~reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_add_u32(u_input.a, arg_0.x), ~arg_0.x, u_input.b), max(~vec4<u32>(arg_0.x, u_input.b, arg_0.x, u_input.a), ~vec4<u32>(38657u, u_input.a, 4712u, arg_0.x))));
    global0 = array<Struct_2, 8>();
    var var_1 = func_1(Struct_1(false), func_1(Struct_1(func_3().x), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b & _wgslsmith_mod_u32(var_0.x, u_input.a), _wgslsmith_add_u32(arg_0.x, u_input.b)), 8u)], vec4<u32>(~u_input.b, 36057u, var_0.x, arg_0.x)), max(~(~vec4<u32>(u_input.b, 67318u, 20624u, arg_0.x)), min(max(var_0, vec4<u32>(31582u, 29167u, 1u, 0u)), var_0)) << (vec4<u32>(102684u, 4294967295u, arg_0.x, var_0.x) % vec4<u32>(32u)));
    var var_2 = Struct_1(arg_2.a.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.x * 1262f)))));
    var var_3 = !vec2<bool>(any(!func_3().zw), true);
    return ~_wgslsmith_mult_vec3_u32(arg_0, abs(_wgslsmith_mult_vec3_u32(arg_0, var_0.wzy)) & firstLeadingBit(vec3<u32>(69701u, 70073u, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = Struct_1(true);
    let var_2 = ~(~(func_5(vec3<u32>(u_input.a, 4294967295u, 13903u) | vec3<u32>(0u, 13492u, 4294967295u), func_1(var_1, global0[_wgslsmith_index_u32(u_input.b, 8u)], vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), Struct_2(vec3<f32>(1318f, -181f, -683f)), -u_input.c.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), ~vec3<u32>(u_input.a, 39458u, u_input.a)) % vec3<u32>(32u))));
    let var_3 = var_1.a;
    var_0 = var_3;
    let var_4 = global0[_wgslsmith_index_u32(7425u, 8u)];
    var var_5 = _wgslsmith_dot_vec4_u32(~(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(52199u, 1u, var_2.x, 95647u), vec4<u32>(u_input.a, 63715u, 1u, 1u))) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 55375u, 9019u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 21887u, 80872u, u_input.b), vec4<u32>(u_input.a, var_2.x, 1u, u_input.a), vec4<u32>(var_2.x, 1u, var_2.x, var_2.x)))), ~vec4<u32>(var_2.x, _wgslsmith_div_u32(1u, 1u), u_input.a, max(var_2.x, 0u) | var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(step(var_4.a.x, -866f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_4(!vec4<bool>(false, var_1.a, true, false))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-869f, _wgslsmith_f_op_f32(exp2(var_4.a.x)))) + func_1(func_2(), Struct_2(vec3<f32>(-189f, var_4.a.x, 221f)), vec4<u32>(u_input.b, 79160u, 99326u, var_2.x)).a.x), _wgslsmith_f_op_f32(exp2(var_4.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.x * var_4.a.x)));
}

