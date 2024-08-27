struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: u32;

var<private> global2: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(-1770f * -241f);
    var var_2 = vec2<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-7955i, u_input.b, 0i), vec3<i32>(2147483647i, u_input.b, 60869i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -50840i, -17210i), vec3<i32>(2147483647i, u_input.a, u_input.b), vec3<i32>(1i, u_input.a, 2147483647i))), select(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), 28643i), 1i, global2.x)) ^ abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_clamp_i32(u_input.b, 13579i, u_input.b)), select(-vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(60496i, u_input.a), true)));
    var var_3 = var_1;
    let var_4 = global0[_wgslsmith_index_u32(min(1u, reverseBits(1u)), 2u)];
    return var_4.b.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.c, vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x)))))));
    var var_1 = true;
    var var_2 = u_input.c;
    global1 = func_3();
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.c.x * -473f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f * 954f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - arg_0.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -1171f)), _wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-101f + var_0.x), var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-717f)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1047f, 2558f, var_0.x, var_0.x))), vec4<f32>(_wgslsmith_div_f32(var_0.x, 1075f), var_0.x, var_0.x, _wgslsmith_f_op_f32(var_0.x + -432f)), select(!vec4<bool>(global2.x, global2.x, arg_0.a, global2.x), vec4<bool>(true, arg_0.a, true, global2.x), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -229f, 1004f, 645f))), true)));
    return arg_0.c.x;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1404f), _wgslsmith_f_op_f32(func_2(Struct_2(global2.x, u_input.c.x, vec2<f32>(-655f, 1693f), u_input.c.x, global2.x), u_input.a, 14107u)), -1409f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 163f, 243f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1077f, -1243f, -1088f))))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1034f, 119f, -1000f)))))));
    let var_1 = _wgslsmith_div_u32(~(~func_3()), select(~0u, ~firstTrailingBit(~u_input.d), all(vec2<bool>(true, true))));
    var var_2 = Struct_2(global2.x, _wgslsmith_mod_u32(u_input.c.x, 1u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_0.xz, var_0.yy, global2.x))))))), var_1, (!global2.x || any(!vec3<bool>(true, global2.x, global2.x))) & global2.x);
    let var_3 = Struct_2(var_2.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(3312u, 26726u, u_input.d)), firstLeadingBit(u_input.c)) << (~func_3() % 32u), _wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(~u_input.d, 11216u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -781f)))), _wgslsmith_f_op_f32(round(449f))), ~29167u, var_2.e);
    global0 = array<Struct_3, 2>();
    return Struct_1(~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.xy, vec2<u32>(var_2.b, 37310u)) & u_input.c.xy, ~_wgslsmith_mult_vec2_u32(u_input.c.zz, u_input.c.zz)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, ~(-2464i), -33171i), ~vec4<i32>(-u_input.b, ~u_input.a, -2147483647i, u_input.b)), -163f, ~(~(~(-vec2<i32>(u_input.b, u_input.b)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~1u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.c, arg_2.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(837f, arg_3.c)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.c, _wgslsmith_f_op_f32(ceil(-721f))))));
    global1 = 33959u;
    let var_2 = !vec2<bool>(true, arg_1 | (_wgslsmith_f_op_f32(-arg_3.c) != _wgslsmith_f_op_f32(sign(-601f))));
    global0 = array<Struct_3, 2>();
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, reverseBits(arg_1.b), arg_1.c, arg_1.b.yx);
    global2 = !vec3<bool>(arg_2, arg_2, select(global2.x, !global2.x, global2.x));
    let var_1 = Struct_2(global2.x, _wgslsmith_mult_u32(1u, func_3()), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.c)), _wgslsmith_f_op_f32(max(arg_1.c, 1819f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c, var_0.c), vec2<f32>(-174f, var_0.c))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 679f))))), 4294967295u, global2.x);
    var var_2 = var_1;
    var var_3 = !(!(!global2.zz));
    return func_4(countOneBits(vec3<i32>(1i, -abs(-41415i), u_input.b)), true, arg_1, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(0u, func_4(vec3<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, 1i), _wgslsmith_div_i32(u_input.b, u_input.a)) >> (vec3<u32>(~1387u, u_input.c.x, 0u) % vec3<u32>(32u)), false == !(!global2.x), func_1(), Struct_1(vec2<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, u_input.d)), ~vec4<i32>(u_input.b, 50713i, 0i, -4560i) & ~vec4<i32>(19796i, u_input.b, u_input.a, -1i), -1255f, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.b, u_input.a) & vec2<i32>(u_input.a, -17034i)))), !(!(13401u != _wgslsmith_mod_u32(2480u, u_input.d))));
    var var_1 = vec4<i32>(-((~1i << ((4294967295u << (var_0.a.x % 32u)) % 32u)) >> (~(~var_0.a.x) % 32u)), 1i, -reverseBits(var_0.d.x), u_input.a);
    var var_2 = !(!global2.xy);
    let var_3 = all(vec2<bool>(true & global2.x, any(select(!vec4<bool>(true, false, var_2.x, var_2.x), select(vec4<bool>(global2.x, true, var_2.x, true), vec4<bool>(var_2.x, false, true, false), vec4<bool>(global2.x, false, false, false)), all(vec4<bool>(true, false, true, true))))));
    var_1 = var_0.b;
    var var_4 = !vec4<bool>(true, global2.x, any(vec3<bool>(false, select(global2.x, false, var_3), false)), var_3);
    var var_5 = !(!(!vec3<bool>(any(var_4.xx), var_3, select(false, false, var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, 30728u, _wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(var_0.a.x) & var_0.a.x, _wgslsmith_add_u32(~0u, _wgslsmith_clamp_u32(u_input.d, var_0.a.x, u_input.d))), _wgslsmith_sub_vec2_u32(u_input.c.yx, vec2<u32>(25815u, 6145u) ^ reverseBits(u_input.c.xx)), u_input.c.yy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-594f, -878f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-702f - 932f) + _wgslsmith_f_op_f32(437f + var_0.c))), var_0.c));
}

