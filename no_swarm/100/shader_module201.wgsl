struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(31938u, vec2<bool>(false, false), vec2<u32>(43998u, 792u)), Struct_4(0u, vec2<bool>(false, true), vec2<u32>(135442u, 4294967295u)), Struct_4(71399u, vec2<bool>(true, true), vec2<u32>(28136u, 135206u)), Struct_4(6464u, vec2<bool>(false, true), vec2<u32>(41762u, 31931u)), Struct_4(4294967295u, vec2<bool>(false, true), vec2<u32>(1u, 78678u)), Struct_4(1u, vec2<bool>(false, true), vec2<u32>(1u, 4294967295u)), Struct_4(4294967295u, vec2<bool>(true, false), vec2<u32>(121023u, 4294967295u)), Struct_4(0u, vec2<bool>(false, true), vec2<u32>(1u, 1u)), Struct_4(23181u, vec2<bool>(false, true), vec2<u32>(1u, 4294967295u)), Struct_4(43440u, vec2<bool>(true, true), vec2<u32>(3138u, 35929u)), Struct_4(1u, vec2<bool>(false, false), vec2<u32>(0u, 47417u)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec4<u32>) -> u32 {
    let var_0 = arg_2.b.x;
    let var_1 = 107f;
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    return _wgslsmith_mult_u32(countOneBits(22861u), ~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(arg_2.c.x, 31346u), arg_3.x));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    var var_0 = arg_0;
    let var_1 = abs(vec2<i32>(arg_0, abs(arg_0 & max(-1i, 2147483647i))));
    global0 = array<Struct_4, 11>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1858f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f - 1000f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(173f, 1000f, -616f, -1797f)))))), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(396f, 734f, -204f, 1143f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -687f, -933f, 493f), vec4<f32>(-900f, -1474f, 1852f, 678f)))), select(~vec4<i32>(var_1.x, -1i, -26467i, 18229i), vec4<i32>(50314i, arg_0, arg_0, arg_0), vec4<bool>(arg_1.x, arg_1.x, true, true)), Struct_4(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), !vec2<bool>(arg_1.x, arg_1.x), vec2<u32>(16791u, 47585u)), abs(~vec4<u32>(u_input.a.x, 4294967295u, u_input.b, 64982u))) & ~(~(~17814u)), 1044f);
    let var_3 = Struct_3(firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.a.zxw ^ (u_input.c | u_input.a.wxw), ~abs(u_input.a.wzw))));
    return var_3.a.x;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<bool> {
    global0 = array<Struct_4, 11>();
    var var_0 = arg_2.c ^ ~arg_1.a.x;
    let var_1 = Struct_2(1502f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(arg_2.b, vec4<f32>(arg_2.a, -664f, arg_2.a, 385f), true))))))), func_2(-1i, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(-arg_2.b.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(var_1.b.xw, var_1.b.zy));
    var var_3 = arg_1;
    return vec2<bool>(all(vec3<bool>(arg_0 != -29742i, select(true, true, true), true)) && select(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true), any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), select(false, false, false))) & all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_mod_i32(-11159i, 2147483647i);
    var_0 = !all(func_1(1i, Struct_3(~vec3<u32>(8768u, u_input.a.x, u_input.b)), Struct_2(-1793f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 372f, 734f, 1816f))), u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -613f)), vec4<u32>(~69753u, select(109084u, 0u, false), 1u, _wgslsmith_sub_u32(u_input.c.x, 4294967295u))));
    var var_2 = reverseBits(1i);
    let var_3 = Struct_2(-1000f, vec4<f32>(-1984f, _wgslsmith_f_op_f32(round(-1097f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1704f)), _wgslsmith_f_op_f32(141f - 814f), true))), 1744f), ~max(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 9489u, 1u) ^ vec3<u32>(u_input.b, u_input.b, 1u), u_input.a.yxx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1425f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -539f)) * _wgslsmith_f_op_f32(f32(-1f) * -258f))));
    let var_4 = reverseBits(func_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(var_3.b)))), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, -2147483647i, -1i, -4832i) | vec4<i32>(-48301i, var_1, 15384i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(var_1, 15486i, -2147483647i, var_1), vec4<i32>(var_1, -52300i, var_1, -18554i)))), global0[_wgslsmith_index_u32(72049u, 11u)], ~u_input.a));
    var var_5 = _wgslsmith_add_i32(-var_1, -2147483647i);
    var var_6 = Struct_4(_wgslsmith_div_u32(0u, u_input.b), vec2<bool>(true, true), _wgslsmith_add_vec2_u32(vec2<u32>(~0u << (select(4294967295u, var_4, true) % 32u), 1u), u_input.c.zx));
    var var_7 = 992f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_3.c, ~min(4294967295u, 0u ^ var_6.c.x)), max(_wgslsmith_add_vec3_i32(-(~vec3<i32>(-2147483647i, var_1, -55667i)), vec3<i32>(0i, var_1, var_1)), ~firstTrailingBit(abs(vec3<i32>(0i, -561i, var_1)))), var_1, u_input.a.wxx, ~abs(u_input.a));
}

