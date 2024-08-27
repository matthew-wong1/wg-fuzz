struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    let var_0 = false;
    let var_1 = var_0;
    var var_2 = Struct_1(vec2<i32>(486i, 35601i), u_input.b, !select(vec2<bool>(false, any(vec2<bool>(var_0, true))), !(!vec2<bool>(var_0, var_0)), !(!vec2<bool>(var_1, var_1))), ~_wgslsmith_div_vec2_u32(~u_input.a, vec2<u32>(reverseBits(0u), u_input.c)));
    var var_3 = select(-18103i, 2147483647i, false);
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1360f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f))), 585f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-368f + 862f), _wgslsmith_f_op_f32(max(-199f, -294f))))))));
    return firstLeadingBit(1u ^ abs(~firstTrailingBit(6142u)));
}

fn func_2(arg_0: Struct_4) -> u32 {
    global0 = array<Struct_2, 10>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-arg_0.a), arg_0.c.e.a.x, Struct_2(arg_0.d.x, -firstTrailingBit(firstLeadingBit(2147483647i)), true, select(_wgslsmith_clamp_vec3_i32(arg_0.c.d, arg_0.c.d, arg_0.c.d) << (u_input.b.xyw % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-46914i, arg_0.b, 2147483647i) >> (u_input.b.wzx % vec3<u32>(32u)), arg_0.c.d), vec3<bool>(arg_0.d.x, !arg_0.c.e.c.x, false)), arg_0.c.e), arg_0.d);
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    return _wgslsmith_div_u32(select(_wgslsmith_clamp_u32(0u, ~arg_0.c.e.b.x, u_input.c ^ func_3()), ~37690u, false), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~38390u, ~(~var_0.c.e.d.x)), _wgslsmith_mult_u32(0u, ~var_0.c.e.d.x << (arg_0.c.e.b.x % 32u))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, _wgslsmith_clamp_i32(2147483647i, -1i, _wgslsmith_add_i32(-2147483647i, arg_0)) | 1i, abs(arg_0)), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(arg_0, -7221i, arg_0)), firstLeadingBit(vec3<i32>(arg_0, arg_0, arg_0))));
    let var_1 = abs(u_input.b.ww);
    let var_2 = ~firstTrailingBit(vec4<u32>(countOneBits(func_2(Struct_4(1219f, -3980i, global0[_wgslsmith_index_u32(4294967295u, 10u)], vec4<bool>(false, false, false, true)))), 4294967295u, abs(u_input.b.x), 4294967295u));
    var var_3 = Struct_2(false, var_0.x | (~(-arg_0) << (_wgslsmith_mult_u32(abs(0u), abs(1531u)) % 32u)), true, ~reverseBits(~vec3<i32>(arg_0, 0i, 119846i) << (vec3<u32>(31376u, 5078u, 5598u) % vec3<u32>(32u))), Struct_1(var_0.xz & ~(-vec2<i32>(var_0.x, arg_0)), vec4<u32>(~u_input.a.x, 0u, ~1u, 26842u), vec2<bool>(true, true), min(countOneBits(reverseBits(vec2<u32>(var_1.x, var_2.x))), ~min(u_input.a, var_1))));
    var var_4 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_3.b, var_3.e.a.x, var_0.x) | vec4<i32>(14869i, var_0.x, var_0.x, -14915i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, -2147483647i, -25500i, 0i), vec4<i32>(0i, var_3.d.x, arg_0, -1i))), ~14115i), 22829i), ~vec4<u32>(29470u, ~52940u, select(~var_2.x, 93145u, any(vec4<bool>(false, var_3.e.c.x, true, false))), var_3.e.d.x), var_3.e.c, select(u_input.b.yy, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 90332u), ~(vec2<u32>(u_input.c, var_3.e.b.x) | var_3.e.b.zw)), var_3.e.c));
    return Struct_3(var_3.e, any(!select(!vec4<bool>(true, false, var_3.c, var_3.e.c.x), !vec4<bool>(var_4.c.x, true, true, false), !vec4<bool>(var_3.e.c.x, var_3.e.c.x, true, var_4.c.x))), var_3.e, Struct_2(any(select(!vec4<bool>(true, true, var_4.c.x, var_3.c), vec4<bool>(var_4.c.x, var_3.a, var_4.c.x, false), !vec4<bool>(true, var_4.c.x, var_4.c.x, var_3.c))), var_4.a.x, var_3.a, var_3.d, var_3.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    let var_0 = func_1(14028i);
    global0 = array<Struct_2, 10>();
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(~(var_0.c.a.x << (4294967295u % 32u)) << (55111u % 32u), _wgslsmith_div_i32(~0i, -2147483647i)), _wgslsmith_mod_i32(var_0.c.a.x, var_0.a.a.x), abs(_wgslsmith_add_i32(abs(var_0.d.e.a.x), _wgslsmith_div_i32(~(-1i), firstLeadingBit(-1i)))), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(1u, countOneBits(~(~vec2<u32>(37326u, 0u) & ~vec2<u32>(4294967295u, var_0.a.b.x))), vec2<i32>(-1i) * -(~var_1.zz), var_1.x);
}

