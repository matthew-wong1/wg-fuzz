struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global0 = ~2147483647i;
    var var_0 = ~(~(~arg_1.a.a.x));
    var var_1 = Struct_3(-u_input.e.xw, true, arg_0.c);
    let var_2 = Struct_4(all(var_1.c.a.b), Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(arg_0.c.a.a >> (arg_2.a.a % vec4<u32>(32u)), arg_2.b.a), select(arg_0.c.a.b, var_1.c.a.b, arg_0.c.b.b.x), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(1000f * arg_0.c.b.d), 18391i), Struct_1(_wgslsmith_sub_vec4_u32(firstTrailingBit(arg_2.b.a), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 36124u, arg_2.a.a.x, 0u), vec4<u32>(u_input.c, u_input.c, 0u, 40325u))), select(vec2<bool>(false, false), !arg_2.b.b, arg_2.b.b), all(select(vec3<bool>(var_1.b, arg_2.b.c, arg_0.c.a.b.x), vec3<bool>(arg_2.a.c, true, arg_2.a.b.x), vec3<bool>(var_1.c.a.b.x, true, var_1.c.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1158f)) * -530f), countOneBits(1i))), vec2<i32>(_wgslsmith_dot_vec2_i32(-var_1.a, firstLeadingBit(vec2<i32>(15511i, -10445i))), 8152i), _wgslsmith_div_vec4_i32(u_input.b, u_input.d | u_input.b), Struct_1(countOneBits(arg_0.c.b.a) << (~vec4<u32>(arg_0.c.a.a.x, arg_2.b.a.x, arg_0.c.b.a.x, arg_1.b.a.x) % vec4<u32>(32u)), select(arg_1.a.b, arg_2.b.b, true || any(vec3<bool>(true, true, arg_0.c.a.b.x))), all(vec2<bool>(false, arg_0.b)), arg_2.a.d, 0i));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.b.d, 1052f, var_2.b.b.d)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c.a.d, arg_0.c.a.d, 1254f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.d, arg_2.a.d, var_2.e.d), vec3<f32>(arg_2.a.d, 1179f, arg_0.c.a.d))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.c.b.d, 144f, arg_2.b.d))))))));
    return true;
}

fn func_2() -> vec2<i32> {
    global0 = u_input.d.x;
    global0 = 16125i;
    let var_0 = Struct_4(true, Struct_2(Struct_1(~vec4<u32>(26741u, u_input.c, u_input.c, 65497u) << ((vec4<u32>(1u, 4294967295u, u_input.c, u_input.c) << (vec4<u32>(u_input.c, 0u, 54238u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)), vec2<bool>(true, true), func_3(Struct_3(vec2<i32>(u_input.b.x, 1i), false, Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, u_input.c, u_input.c), vec2<bool>(false, false), true, -225f, -9454i), Struct_1(vec4<u32>(u_input.c, 3764u, u_input.c, 20738u), vec2<bool>(false, true), true, 188f, u_input.a.x))), Struct_2(Struct_1(vec4<u32>(39763u, 1u, u_input.c, 1u), vec2<bool>(false, false), true, -837f, 0i), Struct_1(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec2<bool>(false, true), false, 118f, u_input.b.x)), Struct_2(Struct_1(vec4<u32>(u_input.c, u_input.c, 41230u, u_input.c), vec2<bool>(false, false), false, 128f, -1i), Struct_1(vec4<u32>(u_input.c, 67790u, 50462u, u_input.c), vec2<bool>(false, true), true, -1111f, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(174f, -1000f))), u_input.b.x), Struct_1(~abs(vec4<u32>(63604u, u_input.c, u_input.c, u_input.c)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(true, false, true), -1000f, u_input.b.x)), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.a.x, u_input.b.x)) >> (vec2<u32>(u_input.c, 6079u) % vec2<u32>(32u)), vec2<i32>(1i, 2147483647i)), abs(abs(_wgslsmith_add_vec4_i32(-vec4<i32>(-37040i, 18814i, u_input.e.x, -2147483647i), -vec4<i32>(2147483647i, u_input.e.x, 2147483647i, u_input.e.x)))), Struct_1(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c, 0u, u_input.c), vec4<u32>(1u, u_input.c, 0u, u_input.c))), vec2<bool>(true, true), false, _wgslsmith_f_op_f32(-781f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f))), _wgslsmith_sub_i32(countOneBits(1i), ~u_input.a.x)));
    var var_1 = -countOneBits(abs(vec2<i32>(_wgslsmith_div_i32(var_0.d.x, 2147483647i), _wgslsmith_div_i32(u_input.d.x, u_input.b.x))));
    let var_2 = _wgslsmith_dot_vec3_i32(firstTrailingBit(~(vec3<i32>(-1i) * -vec3<i32>(22029i, u_input.e.x, 2147483647i))), u_input.d.zzx);
    return u_input.a.wx;
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    global0 = -2147483647i << (~(~59851u | u_input.c) % 32u);
    var var_0 = -u_input.a.wz;
    var_0 = select(_wgslsmith_sub_vec2_i32(u_input.e.yx, _wgslsmith_clamp_vec2_i32(u_input.a.wy, u_input.a.wy, u_input.d.xz)), func_2(), !arg_0.xz) ^ select(firstTrailingBit(u_input.a.xw), abs(-vec2<i32>(-1i, 0i)), !(!select(arg_0.yx, vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, true))));
    var_0 = vec2<i32>(~((-10944i ^ var_0.x) << (~10114u % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 511i, -27018i), u_input.d.zyz), firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.b ^ u_input.e, _wgslsmith_div_vec4_i32(vec4<i32>(1i, 10399i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.a.x, 1i, 15221i, -18500i))))));
    global0 = _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, var_0.x), _wgslsmith_mod_i32(2147483647i, 27727i)));
    return Struct_3((min(abs(vec2<i32>(31296i, -29582i)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, -2147483647i), vec2<i32>(1i, var_0.x))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))) << (firstLeadingBit(vec2<u32>(~u_input.c, 1u)) % vec2<u32>(32u)), arg_0.x, Struct_2(Struct_1(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 36744u, 4294967295u, 43609u), vec4<u32>(u_input.c, u_input.c, u_input.c, 4253u))), select(!arg_0.xy, !vec2<bool>(arg_0.x, true), vec2<bool>(true, true)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1610f), -_wgslsmith_mult_i32(2147483647i, var_0.x)), Struct_1(reverseBits(vec4<u32>(u_input.c, 14245u, 4294967295u, u_input.c)), !arg_0.zz, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-559f))), -u_input.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(u_input.e.ww);
    let var_1 = -1382f;
    global0 = _wgslsmith_add_i32(u_input.d.x, -4453i);
    global0 = _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(firstLeadingBit(0i), firstLeadingBit(1i)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.x, 1i, var_0.x), 42433i << (u_input.c % 32u))) ^ var_0.x);
    global0 = -53216i;
    var var_2 = func_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(vec2<bool>(false, true)) || false));
    let var_3 = Struct_3(vec2<i32>(-1i, -16408i), false, func_1(!(!select(vec3<bool>(true, var_2.c.a.c, var_2.b), vec3<bool>(true, var_2.b, var_2.c.b.c), vec3<bool>(true, true, var_2.b)))).c);
    var var_4 = func_1(vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1))) >= var_1, func_1(select(!vec3<bool>(false, var_2.c.a.b.x, var_2.c.a.b.x), vec3<bool>(false, var_3.b, var_2.c.b.c), vec3<bool>(var_2.b, var_2.b, true))).b, false)).c;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.a.a.x, firstTrailingBit(var_0.x), vec3<i32>(u_input.e.x, select(-36989i, var_0.x, var_4.a.c), ~var_4.b.e), 21186i);
}

