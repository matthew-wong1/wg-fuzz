struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<f32>;

var<private> global2: vec2<i32> = vec2<i32>(3471i, 2147483647i);

var<private> global3: Struct_1 = Struct_1(vec4<f32>(696f, -357f, 1664f, 220f), 4523i);

var<private> global4: Struct_1 = Struct_1(vec4<f32>(303f, -1114f, 1258f, 303f), 20070i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> u32 {
    global4 = arg_1.b;
    global4 = arg_1.b;
    return 1u;
}

fn func_2() -> f32 {
    let var_0 = Struct_3(18450u, Struct_1(global4.a, global4.b));
    var var_1 = _wgslsmith_add_i32(u_input.a.x, -4476i);
    global3 = var_0.b;
    let var_2 = 2147483647i;
    let var_3 = vec3<u32>(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(u_input.c, var_0.a, ~u_input.c), u_input.b.x >> (var_0.a % 32u), func_3(any(vec4<bool>(false, true, true, true)), Struct_3(30937u, Struct_1(global3.a, var_2)))), max(func_3(!all(vec2<bool>(false, true)), var_0), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(10372u, 29719u))), u_input.b.wz)), func_3(true, Struct_3(u_input.c, var_0.b)));
    return _wgslsmith_f_op_f32(-global4.a.x);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1378f)), _wgslsmith_div_f32(277f, global4.a.x))), global3.a.x, _wgslsmith_f_op_f32(func_2()));
    var var_0 = ~arg_0;
    let var_1 = !select(!vec2<bool>(true, arg_1), vec2<bool>(max(global2.x, 2147483647i) <= countOneBits(-73559i), arg_1), all(vec4<bool>(true, all(vec3<bool>(arg_1, arg_1, arg_1)), arg_1, all(vec2<bool>(arg_1, true)))));
    var var_2 = _wgslsmith_mod_u32(~3860u, ~_wgslsmith_add_u32(1350u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_0, 73641u), vec3<u32>(arg_0, 1u, arg_0)))) & u_input.b.x;
    let var_3 = Struct_3(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(abs(u_input.b), ~u_input.b), u_input.b, ~vec4<u32>(67856u, 8678u, u_input.c, u_input.c))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(abs(global3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(588f)) + _wgslsmith_f_op_f32(abs(global4.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(ceil(global4.a.x))), _wgslsmith_mod_i32(0i, max(firstTrailingBit(34613i), ~2147483647i))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_3.b.a)), var_3.b.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    global2 = countOneBits(u_input.a.zz);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-169f, arg_0.a.x, _wgslsmith_f_op_f32(-arg_2.b.a.x), _wgslsmith_f_op_f32(-global3.a.x)), arg_1.b.a)), reverseBits(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, max(-40315i, arg_1.b.b)), countOneBits(~35945i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.a.x, _wgslsmith_f_op_f32(2371f - arg_1.b.a.x), _wgslsmith_f_op_f32(arg_1.b.a.x - var_0.a.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b.a.yyx), _wgslsmith_f_op_vec3_f32(arg_1.b.a.wzy + vec3<f32>(-1421f, arg_0.a.x, 1000f)))));
    global0 = _wgslsmith_add_u32(u_input.c, func_3(all(vec4<bool>(true, true, true, true)), Struct_3(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, arg_2.a), u_input.b.xzx), func_1(42777u, true, _wgslsmith_f_op_vec3_f32(-arg_0.a.wyy)))));
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(global4.a.zwz, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.x * arg_2.b.a.x) - _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(round(1090f)), 639f)))));
    return arg_1;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> i32 {
    let var_0 = 0i ^ ~min(0i, min(arg_2.b.b, -arg_1.a.b));
    var var_1 = _wgslsmith_add_vec3_i32(-firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-54175i, 1i, -2147483647i), u_input.a, vec3<i32>(-45265i, global3.b, -1i))), u_input.a);
    global0 = ~_wgslsmith_sub_u32(72903u, arg_3);
    var var_2 = !select(!(!(!vec4<bool>(true, arg_0.x, arg_0.x, true))), !(!vec4<bool>(true, arg_0.x, true, false)), !vec4<bool>(true, arg_0.x, false, !arg_0.x));
    let var_3 = 0u;
    return reverseBits(arg_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.b;
    var var_1 = min(0i, func_5(vec2<bool>(all(vec2<bool>(false, true)) | false, true), Struct_2(Struct_1(global3.a, 1i)), func_4(func_1(_wgslsmith_div_u32(u_input.b.x, 0u), false, _wgslsmith_f_op_vec3_f32(vec3<f32>(295f, global1.x, global4.a.x) * global3.a.yxx)), Struct_3(80548u, Struct_1(vec4<f32>(global1.x, global1.x, global4.a.x, 228f), 8877i)), Struct_3(1u, func_1(u_input.b.x, false, vec3<f32>(415f, 1000f, global1.x)))), reverseBits(u_input.b.x)));
    let var_2 = func_4(Struct_1(global4.a, -_wgslsmith_sub_i32(global3.b, 0i)), Struct_3(4294967295u, func_1(~4294967295u << (1u % 32u), true, vec3<f32>(_wgslsmith_div_f32(global4.a.x, global4.a.x), _wgslsmith_f_op_f32(abs(global3.a.x)), -1208f))), func_4(Struct_1(global4.a, u_input.a.x), Struct_3(~max(47161u, 1u), Struct_1(vec4<f32>(-807f, -127f, global1.x, -158f), global3.b)), Struct_3(34760u, func_4(Struct_1(vec4<f32>(global4.a.x, -901f, 1031f, global1.x), global2.x), Struct_3(4294967295u, Struct_1(global3.a, 10578i)), Struct_3(73858u, Struct_1(vec4<f32>(-1759f, 631f, 436f, global4.a.x), 0i))).b)));
    let var_3 = func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(247f, global3.a.x, false))), global1.x, _wgslsmith_f_op_f32(var_2.b.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1199f)), global3.a.x), func_5(vec2<bool>(true, global1.x >= 1000f), Struct_2(Struct_1(vec4<f32>(global4.a.x, 776f, 163f, var_2.b.a.x), 2147483647i)), func_4(func_4(Struct_1(global3.a, global2.x), var_2, Struct_3(var_2.a, var_2.b)).b, var_2, func_4(var_2.b, Struct_3(16943u, var_2.b), var_2)), firstLeadingBit(1u) & select(u_input.b.x, var_2.a, true))), Struct_3(abs(~var_2.a), func_1(24595u, countOneBits(var_2.a) < u_input.b.x, var_2.b.a.zyw)), Struct_3(1u, var_2.b));
    global3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(542f)) + var_3.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-866f * -454f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.a.x, global1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.a.x), -1130f), _wgslsmith_f_op_f32(f32(-1f) * -348f))), -296f), ~(~(-global3.b)));
    let var_4 = Struct_2(func_1(0u, !any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global3.a.yyw, global4.a.xwx)) * var_2.b.a.zxz)));
    let var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.a.wz)));
}

