struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, false, true, true, true, false, false, true, false, true, true, false, true, true, true);

var<private> global1: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global2: f32 = 462f;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    return -693f;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<i32>) -> f32 {
    global1 = max(arg_1.a.a.zx, reverseBits(_wgslsmith_mult_vec2_u32(~(~arg_1.a.a.xw), vec2<u32>(1u, ~global1.x))));
    return _wgslsmith_f_op_f32(min(arg_1.a.d.x, arg_1.a.d.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.c.b - -1022f);
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(301f, var_0) - vec2<f32>(var_0, 367f)))) - vec2<f32>(-305f, _wgslsmith_f_op_f32(trunc(1245f)))), _wgslsmith_dot_vec4_u32(select(min(arg_1.b.a, arg_1.e.a.a), arg_1.c.a.a, true), vec4<u32>(u_input.a, 1u, 25216u, 0u) << (_wgslsmith_sub_vec4_u32(arg_1.b.a, vec4<u32>(8810u, 1u, 0u, 19414u)) % vec4<u32>(32u))), !vec3<bool>(arg_1.c.a.b.x, select(true, global0[_wgslsmith_index_u32(global1.x, 15u)], arg_1.e.a.b.x), arg_1.e.a.b.x || arg_0.x)), arg_1.c.a, Struct_2(arg_1.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, arg_1.e.a.b.x, true), arg_1.e, vec4<i32>(arg_1.e.a.c.x, 0i, arg_1.e.a.c.x, arg_1.c.a.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1709f, 1547f)))), 869f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, arg_1.b.d.x))))), ~((0u & u_input.a) << (43722u % 32u))), vec2<u32>(global1.x, global1.x) << (vec2<u32>(global1.x, reverseBits(12623u)) % vec2<u32>(32u)), Struct_3(arg_1.c.a));
    var var_2 = countOneBits(~(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.e.a.a.x, arg_2.x, 9649u), vec3<u32>(4294967295u, global1.x, 4294967295u))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.c.a.a.yyx, arg_1.e.a.a.zyy), var_1.c.a.a.zxx & arg_1.c.a.a.xxw) % vec3<u32>(32u))));
    var_2 = arg_1.e.a.a.wyz;
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-144f, arg_1.b.d.x), vec2<f32>(arg_1.b.d.x, -1370f), global0[_wgslsmith_index_u32(arg_1.d.x | 1u, 15u)]))), arg_1.a.a)), 0u, select(vec3<bool>(false, true, all(arg_1.c.a.b)), vec3<bool>((global0[_wgslsmith_index_u32(arg_2.x, 15u)] && global0[_wgslsmith_index_u32(20819u, 15u)]) || true, var_1.c.a.b.x, arg_1.e.a.b.x), vec3<bool>(firstTrailingBit(1u) != (arg_1.c.a.a.x & arg_2.x), all(vec2<bool>(true, global0[_wgslsmith_index_u32(102210u, 15u)])) && !arg_0.x, global1.x <= u_input.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(var_3.a.x + _wgslsmith_f_op_f32(max(-1914f, -359f)))) - 1759f));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<bool>) -> StorageBuffer {
    let var_0 = -1285f;
    var var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 352f)), _wgslsmith_div_vec2_f32(arg_1.zx, vec2<f32>(var_0, -1126f))))), select(u_input.a, 1u, any(arg_3)), vec3<bool>(false, any(select(arg_3, vec2<bool>(false, false), global0[_wgslsmith_index_u32(56056u, 15u)])), all(!vec4<bool>(arg_3.x, false, true, false)))), Struct_1(~select(~vec4<u32>(arg_2, u_input.a, global1.x, 1u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), !global0[_wgslsmith_index_u32(u_input.a, 15u)]), !select(vec4<bool>(arg_3.x, false, true, global0[_wgslsmith_index_u32(global1.x, 15u)]), vec4<bool>(true, true, true, true), !arg_3.x), ~abs(u_input.b.yy) ^ vec2<i32>(reverseBits(-25385i), countOneBits(u_input.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1104f)), -135f)), Struct_2(Struct_1(~reverseBits(vec4<u32>(12171u, 68264u, 0u, 113237u)), vec4<bool>(global0[_wgslsmith_index_u32(38270u, 15u)], true, select(true, arg_3.x, true), global0[_wgslsmith_index_u32(0u, 15u)] || arg_3.x), reverseBits(u_input.b.zx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.zy)) - arg_1.wx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2205f - _wgslsmith_div_f32(var_0, -239f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, arg_3.x), Struct_3(Struct_1(vec4<u32>(39504u, arg_2, 7401u, 28189u), vec4<bool>(false, arg_3.x, false, true), vec2<i32>(29656i, u_input.b.x), vec2<f32>(var_0, 182f))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, u_input.b.x, arg_0, -21305i), vec4<i32>(0i, -1i, u_input.b.x, -2147483647i), vec4<i32>(18034i, arg_0, u_input.b.x, u_input.b.x))))), _wgslsmith_f_op_vec2_f32(arg_1.wy + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1.xw), _wgslsmith_f_op_vec2_f32(arg_1.zw + vec2<f32>(arg_1.x, 412f))))), global1.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(abs(1u), arg_2), vec2<u32>(select(19660u, 25557u, arg_3.x), _wgslsmith_div_u32(0u, _wgslsmith_div_u32(global1.x, global1.x))), vec2<u32>(~arg_2, abs(_wgslsmith_div_u32(22115u, global1.x)))), Struct_3(Struct_1(~countOneBits(vec4<u32>(14738u, 4294967295u, 49801u, arg_2)), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.a, 15u)]), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(17612u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)]), vec4<bool>(true, false, true, arg_3.x), global0[_wgslsmith_index_u32(0u, 15u)])), -(~vec2<i32>(1i, arg_0)), _wgslsmith_f_op_vec2_f32(-arg_1.yz))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, -255f, true)))))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.e.a.d), _wgslsmith_f_op_vec2_f32(-arg_1.wx))))))), countOneBits(2195u), select(!vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2, global1.x), 15u)], any(var_1.b.b), !arg_3.x), vec3<bool>(var_2 >= _wgslsmith_f_op_f32(sign(var_2)), arg_3.x || true, all(vec2<bool>(arg_3.x, true)) | false), global0[_wgslsmith_index_u32(arg_2, 15u)]));
    let var_4 = Struct_5(var_1.a, Struct_1(_wgslsmith_clamp_vec4_u32(abs(~var_1.e.a.a), var_1.e.a.a, vec4<u32>(1u, 4294967295u >> (var_3.b % 32u), u_input.a, ~20618u)), vec4<bool>(any(select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)], arg_3.x), var_1.a.c, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], arg_3.x, var_3.c.x))), any(select(vec3<bool>(var_1.b.b.x, var_1.c.a.b.x, false), var_1.a.c, var_1.e.a.b.x)), !var_3.c.x, false), u_input.b.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 275f)))), Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_2, var_3.b, 0u, var_1.b.a.x), var_1.c.a.a, true), _wgslsmith_add_vec4_u32(var_1.c.a.a, vec4<u32>(26008u, 1u, var_1.b.a.x, 21748u))), vec4<bool>(arg_0 < arg_0, var_3.c.x != true, arg_3.x, all(var_1.e.a.b)), vec2<i32>(reverseBits(u_input.b.x), 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.yy)) - arg_1.zw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -530f))), _wgslsmith_f_op_f32(func_2(var_3.c.zy, Struct_5(var_1.a, var_1.c.a, var_1.c, _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.b, 1u), vec2<u32>(43246u, 0u)), Struct_3(Struct_1(vec4<u32>(432u, 67470u, 22918u, 1u), vec4<bool>(var_3.c.x, var_3.c.x, var_3.c.x, true), vec2<i32>(0i, 2147483647i), arg_1.wy))), var_1.e.a.a.wxw)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_3.a.x)))), _wgslsmith_div_u32(~var_3.b, var_3.b)), _wgslsmith_mult_vec2_u32(max(var_1.c.a.a.wz, select(vec2<u32>(var_3.b, 38558u) >> (var_1.b.a.xx % vec2<u32>(32u)), vec2<u32>(18455u, arg_2) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), false | arg_3.x)), _wgslsmith_mod_vec2_u32(var_1.d, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, var_3.b), vec2<u32>(27231u, 0u)), abs(vec2<u32>(var_1.c.a.a.x, u_input.a))))), var_1.e);
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -970f)) - var_0) * var_2), var_1.c.b, var_4.e.a.a.xwx, select(vec3<i32>(min(-14024i, 1i), 0i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, 81840i, 6496i, 28827i), vec4<i32>(-2147483647i, var_1.c.a.c.x, 16024i, u_input.b.x), var_4.e.a.b), _wgslsmith_add_vec4_i32(vec4<i32>(-18205i, u_input.b.x, -30667i, 36420i), vec4<i32>(-21941i, 35934i, var_4.c.a.c.x, u_input.b.x)))), _wgslsmith_mult_vec3_i32(vec3<i32>(min(var_1.e.a.c.x, u_input.b.x), -1i, var_1.c.a.c.x), _wgslsmith_mod_vec3_i32(u_input.b >> (var_4.b.a.yxz % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(u_input.b, u_input.b))), !(!vec3<bool>(true, var_3.c.x, global0[_wgslsmith_index_u32(var_4.b.a.x, 15u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(-1702f));
    let var_1 = ~1u;
    let var_2 = select(~(~((vec4<u32>(4294967295u, var_1, 0u, global1.x) & vec4<u32>(u_input.a, 78386u, 4294967295u, global1.x)) >> (firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 33173u, 39314u)) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(48368u, u_input.a), vec2<u32>(21186u, 0u)), u_input.a), var_1, global1.x, select(~56807u, 1u, global0[_wgslsmith_index_u32(19805u, 15u)] | global0[_wgslsmith_index_u32(global1.x, 15u)])), ~(~(vec4<u32>(3541u, 71912u, global1.x, var_1) | vec4<u32>(0u, 1u, 0u, u_input.a))), _wgslsmith_div_vec4_u32(~select(vec4<u32>(global1.x, 4294967295u, u_input.a, 1u), vec4<u32>(4294967295u, 1u, u_input.a, 0u), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(global1.x, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)])), vec4<u32>(~61204u, ~98283u, ~4294967295u, _wgslsmith_mod_u32(global1.x, var_1)))), vec4<bool>(true, false, false, true));
    var var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, var_1) ^ (var_2.xwz ^ min(var_2.yyw, var_2.yxx)), ~var_2.yxz) & ((~(u_input.a ^ 57466u) ^ var_2.x) | ~_wgslsmith_sub_u32(~96825u, 0u));
    global0 = array<bool, 15>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1468f)), 1000f) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(1u, 0u), u_input.b.x, vec2<i32>(u_input.b.x, u_input.b.x), false))))));
    var var_4 = countOneBits(_wgslsmith_add_i32(abs((u_input.b.x << (u_input.a % 32u)) ^ max(u_input.b.x, 1i)), u_input.b.x));
    let x = u_input.a;
    s_output = func_4(u_input.b.x, vec4<f32>(-1000f, _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-1200f, _wgslsmith_f_op_f32(func_2(vec2<bool>(global0[_wgslsmith_index_u32(33336u, 15u)], false), Struct_5(Struct_4(vec2<f32>(-495f, 858f), 1u, vec3<bool>(global0[_wgslsmith_index_u32(39716u, 15u)], false, global0[_wgslsmith_index_u32(51955u, 15u)])), Struct_1(var_2, vec4<bool>(global0[_wgslsmith_index_u32(var_2.x, 15u)], true, global0[_wgslsmith_index_u32(global1.x, 15u)], global0[_wgslsmith_index_u32(global1.x, 15u)]), u_input.b.zz, vec2<f32>(270f, -1000f)), Struct_2(Struct_1(vec4<u32>(1u, u_input.a, 4294967295u, 69479u), vec4<bool>(global0[_wgslsmith_index_u32(var_1, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], true, false), u_input.b.zy, vec2<f32>(-588f, -620f)), 1088f, -1595f, vec2<f32>(950f, -1063f), global1.x), var_2.wy, Struct_3(Struct_1(vec4<u32>(var_1, global1.x, 18881u, var_1), vec4<bool>(false, global0[_wgslsmith_index_u32(98263u, 15u)], false, false), u_input.b.yz, vec2<f32>(-650f, 800f)))), var_2.xzw)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(953f - 465f), 1380f) + _wgslsmith_f_op_f32(func_2(select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(27664u, 15u)], true), global0[_wgslsmith_index_u32(52635u, 15u)]), Struct_5(Struct_4(vec2<f32>(1649f, -661f), 0u, vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], true, false)), Struct_1(var_2, vec4<bool>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(var_1, 15u)], true, global0[_wgslsmith_index_u32(10912u, 15u)]), vec2<i32>(2147483647i, u_input.b.x), vec2<f32>(-181f, -367f)), Struct_2(Struct_1(vec4<u32>(u_input.a, var_1, u_input.a, 40917u), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], true), u_input.b.xx, vec2<f32>(995f, -100f)), -706f, -132f, vec2<f32>(1260f, -1773f), global1.x), var_2.ww, Struct_3(Struct_1(var_2, vec4<bool>(true, global0[_wgslsmith_index_u32(40499u, 15u)], false, true), vec2<i32>(u_input.b.x, -1i), vec2<f32>(-421f, -1151f)))), ~vec3<u32>(u_input.a, global1.x, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -1522f), _wgslsmith_f_op_f32(-341f + -670f)) * _wgslsmith_f_op_f32(trunc(-1000f)))), 64027u, select(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 15u)], !(!global0[_wgslsmith_index_u32(4294967295u, 15u)])), select(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_1, 15u)]), !vec2<bool>(global0[_wgslsmith_index_u32(var_1, 15u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(var_1, 15u)], true)), select(vec2<bool>(global0[_wgslsmith_index_u32(97822u, 15u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(var_2.x, 15u)]), select(true, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(19872u, 15u)])), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], false)), select(select(vec2<bool>(global0[_wgslsmith_index_u32(60442u, 15u)], global0[_wgslsmith_index_u32(32637u, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(20731u, 15u)], global0[_wgslsmith_index_u32(18156u, 15u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, 4294967295u, var_1), vec4<u32>(global1.x, var_1, var_2.x, var_1)), 15u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), all(vec2<bool>(global0[_wgslsmith_index_u32(23316u, 15u)], true))), all(vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 15u)], global0[_wgslsmith_index_u32(var_1, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)])))));
}

