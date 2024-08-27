struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-424f, -589f, arg_0.a)), -276f)))), _wgslsmith_f_op_f32(select(1185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1259f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-348f + -141f), 346f, all(vec2<bool>(arg_0.a, arg_0.a)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -657f, -393f, -1136f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1246f, -2525f, -1122f, -351f))))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-101f, -642f, -1066f, 587f))))))));
    return var_0.x;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(u_input.a.x, vec3<i32>(1i, firstTrailingBit(select(u_input.a.x, _wgslsmith_sub_i32(-28090i, u_input.a.x), any(vec4<bool>(true, true, false, false)))), i32(-1i) * -2147483647i));
    let var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(abs(var_0.b.x) >> (1u % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, 1237i), vec2<i32>(u_input.a.x, -11112i)), -39528i, u_input.a.x), vec4<i32>(-56183i, -2147483647i, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, -u_input.a.x)), 2147483647i));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-748f, -1000f) - _wgslsmith_f_op_f32(-1863f * -2489f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1340f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, 1021f)))))), _wgslsmith_f_op_f32(func_3(Struct_3(all(vec4<bool>(true, true, true, true))))));
    var var_3 = Struct_5(Struct_4(Struct_3(false), ~1u, _wgslsmith_f_op_vec2_f32(-var_2.zy), Struct_2(vec4<bool>(true, true, true, true), -2379i)));
    var_0 = Struct_1(16646i, var_0.b);
    return Struct_3(true);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: u32) -> vec2<i32> {
    let var_0 = func_2();
    let var_1 = Struct_5(Struct_4(func_2(), select(~4377u, ~62825u << (arg_3 % 32u), false), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1000f, -520f)), 835f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-698f)))), Struct_2(select(arg_0, select(vec4<bool>(arg_0.x, false, false, false), arg_0, vec4<bool>(true, arg_2.x, var_0.a, arg_2.x)), -13433i == u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -15080i), vec3<i32>(3305i, u_input.a.x, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
    var var_2 = var_1.a.d.a;
    let var_3 = Struct_5(var_1.a);
    let var_4 = var_2.x;
    return u_input.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = false;
    var var_1 = 1u;
    var_0 = true;
    var_0 = _wgslsmith_f_op_f32(arg_1.a.c.x * _wgslsmith_f_op_f32(-arg_1.a.c.x)) < arg_1.a.c.x;
    var_0 = all(arg_1.a.d.a.xzz);
    return Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.zyx, vec3<i32>(arg_0.x, arg_1.a.d.b, -1i)), arg_0.wzx >> (vec3<u32>(arg_1.a.b, 1u, 4294967295u) % vec3<u32>(32u))), -vec3<i32>(-1i, arg_1.a.d.b, 42589i) | countOneBits(vec3<i32>(21534i, arg_2.x, arg_2.x) ^ vec3<i32>(-1i, u_input.a.x, arg_1.a.d.b))), -(~arg_0.zzz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, !(reverseBits(88001u) >= _wgslsmith_dot_vec2_u32(vec2<u32>(24858u, 0u), ~vec2<u32>(106549u, 0u))));
    let var_1 = func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, u_input.a) | func_1(vec4<bool>(var_0.x, false, false, true), var_0, vec4<bool>(true, false, false, var_0.x), 4294967295u), _wgslsmith_mod_vec2_i32(vec2<i32>(63031i, 47727i), vec2<i32>(-27869i, u_input.a.x))), _wgslsmith_dot_vec2_i32(reverseBits(-u_input.a), u_input.a), u_input.a.x, u_input.a.x), Struct_5(Struct_4(func_2(), 1u, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1342f, -707f))), Struct_2(!vec4<bool>(var_0.x, true, false, var_0.x), 8433i))), func_1(!select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !vec4<bool>(var_0.x, true, true, var_0.x)), vec2<bool>(true, var_0.x), select(!vec4<bool>(true, var_0.x, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.x, var_0.x, true), !vec4<bool>(true, var_0.x, var_0.x, var_0.x)), _wgslsmith_add_i32(u_input.a.x, 1490i) == -1i), max(1u, select(reverseBits(20532u), ~38484u, false || var_0.x))));
    let var_2 = Struct_4(Struct_3(false), ~1u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1746f)) + _wgslsmith_f_op_f32(f32(-1f) * -1493f))), _wgslsmith_f_op_f32(step(2761f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -192f) - 496f)))), Struct_2(vec4<bool>(true, var_0.x, var_0.x & true, true), u_input.a.x));
    let var_3 = var_1.b.yy;
    var var_4 = Struct_5(var_2);
    var var_5 = func_4(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.b, vec3<i32>(var_3.x, var_1.a, var_3.x), var_1.b), reverseBits(var_1.b)), abs(_wgslsmith_dot_vec2_i32(var_1.b.xy, vec2<i32>(u_input.a.x, 40743i))), firstLeadingBit(var_4.a.d.b), select(1i, func_1(var_4.a.d.a, !vec2<bool>(var_2.a.a, var_2.d.a.x), select(var_2.d.a, vec4<bool>(true, var_4.a.d.a.x, false, var_0.x), var_2.d.a), 32655u).x, var_0.x)), Struct_5(Struct_4(Struct_3(var_2.c.x >= 111f), 79825u, var_4.a.c, var_2.d)), var_1.b.xy);
    let var_6 = Struct_5(Struct_4(func_2(), reverseBits(~var_2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2070f, var_4.a.c.x) + vec2<f32>(1112f, var_4.a.c.x))) + vec2<f32>(var_4.a.c.x, _wgslsmith_f_op_f32(step(var_2.c.x, 372f)))), var_4.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(10138i, -u_input.a.x, u_input.a ^ ~reverseBits(var_1.b.yx), var_5.b.x);
}

