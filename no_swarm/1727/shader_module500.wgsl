struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, 772f, 1000f, 856f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1523f, 2588f, 1095f, 493f), vec4<f32>(-809f, -272f, 1288f, 1866f)))))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f - 1878f) + 1246f), 1518f, _wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(530f, -629f))), _wgslsmith_f_op_f32(f32(-1f) * -452f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-695f, 1141f, -1123f, -1155f)))));
    var var_1 = Struct_2(vec3<f32>(451f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f - _wgslsmith_f_op_f32(min(313f, var_0.x))))), Struct_1(~(~vec3<u32>(u_input.b.x, 1u, u_input.a.x)) & (~u_input.a.xwy | select(vec3<u32>(0u, u_input.c.x, u_input.b.x), vec3<u32>(26620u, u_input.a.x, 4294967295u), vec3<bool>(false, true, false))), reverseBits(u_input.b), 350f, _wgslsmith_dot_vec4_u32(u_input.a, ~(~vec4<u32>(u_input.c.x, u_input.b.x, 1u, u_input.c.x)))));
    var var_2 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)), true), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)) || true), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(any(vec2<bool>(true, true)), true), !any(vec4<bool>(true, false, false, false)) && !any(vec2<bool>(false, false))), true);
    var var_3 = !(!select(!(!vec3<bool>(var_2.x, var_2.x, var_2.x)), !vec3<bool>(var_2.x, var_2.x, var_2.x), false || !var_2.x));
    var_0 = vec4<f32>(var_0.x, var_1.a.x, -530f, -965f);
    return var_0.wyx;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), Struct_1(_wgslsmith_sub_vec3_u32(firstTrailingBit(u_input.a.zyw), select(u_input.b, vec3<u32>(0u, u_input.b.x, u_input.c.x), false) & vec3<u32>(68746u, 62799u, u_input.c.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x), firstTrailingBit(vec3<u32>(u_input.c.x, u_input.b.x, 1u)), ~vec3<u32>(31151u, 93954u, 1u)), ~firstTrailingBit(vec3<u32>(4294967295u, 13553u, 4294967295u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-125f)), arg_3.x)), 4294967295u));
    var var_1 = !all(vec3<bool>(all(vec3<bool>(false, false, true)), true, !all(vec3<bool>(true, true, true))));
    var_1 = true | (true && !all(vec4<bool>(true, true, true, true)));
    let var_2 = countOneBits(vec2<u32>(1u << (_wgslsmith_mod_u32(51417u, 1u) % 32u), 0u)) >> (~vec2<u32>(~abs(var_0.b.b.x), _wgslsmith_sub_u32(~80716u, firstLeadingBit(var_0.b.a.x))) % vec2<u32>(32u));
    var var_3 = firstTrailingBit(~var_0.b.b);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(241f * -935f))) * _wgslsmith_f_op_f32(-arg_3.x)), 364f, var_0.b.c));
}

fn func_1() -> Struct_1 {
    let var_0 = ~u_input.c.x >> (~(u_input.c.x | ((0u ^ u_input.a.x) >> (_wgslsmith_dot_vec3_u32(u_input.a.wzy, u_input.a.xxx) % 32u))) % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1416f, -269f, 547f) * vec3<f32>(299f, -2013f, -984f)), _wgslsmith_f_op_vec3_f32(func_2(13912i, 187f, vec2<i32>(7607i, 63540i), vec2<f32>(1000f, -757f))))) + vec3<f32>(_wgslsmith_f_op_f32(max(721f, -584f)), _wgslsmith_f_op_f32(-1011f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_2 = Struct_2(vec3<f32>(var_1.x, _wgslsmith_f_op_vec3_f32(func_2(-firstLeadingBit(15290i), _wgslsmith_f_op_f32(ceil(-1028f)), -(vec2<i32>(-2147483647i, 2248i) << (u_input.b.xz % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(func_2(i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(step(-801f, -350f)), select(vec2<i32>(2147483647i, 43481i), vec2<i32>(-1i, -47549i), true), _wgslsmith_f_op_vec2_f32(var_1.xy + var_1.zy))).yz)).x, -2118f), Struct_1(u_input.c.yyy, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zwx, u_input.c.zzy), ~u_input.b.x, ~var_0) ^ u_input.a.yyz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 772f)), var_1.x)), countOneBits(_wgslsmith_dot_vec3_u32(max(u_input.a.xwz, u_input.a.ywz), reverseBits(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))));
    var var_3 = var_1.x;
    return Struct_1(max(max(reverseBits(~u_input.b), u_input.b), vec3<u32>(u_input.b.x, abs(~22321u), u_input.b.x >> (var_0 % 32u))), vec3<u32>(1u, ~_wgslsmith_add_u32(~1u, var_0), ~81093u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1099f) * _wgslsmith_f_op_f32(-1097f * var_1.x)) - _wgslsmith_f_op_f32(sign(-1383f))), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1.x)))))), ~var_0);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a - vec3<f32>(arg_2, 283f, -1000f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a.x, arg_1.a.x, -263f))))))), func_1());
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_1().c;
    let var_1 = vec4<bool>(select(true, false, all(vec4<bool>(true, true, all(vec2<bool>(true, false)), all(vec3<bool>(false, true, true))))), (1u < _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(23995u, arg_0.b.b.x), arg_0.b.a.zz), firstLeadingBit(arg_0.b.a.yx))) || true, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(all(vec2<bool>(true, false)), true), vec2<bool>(true, true))), all(vec2<bool>(true, true)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -863f), arg_0.a.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_2 = arg_0.b;
    return func_4(all(vec4<bool>(any(var_1.xy), !var_1.x, all(var_1.zy), true)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) * _wgslsmith_f_op_f32(floor(855f)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = ~firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 3621i, 41119i) << ((vec3<u32>(u_input.a.x, u_input.a.x, 0u) >> (u_input.a.zxz % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)));
    var var_2 = func_5(func_4(false, Struct_2(vec3<f32>(1f, 1f, 1f), func_1()), _wgslsmith_div_f32(651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f)))));
    let var_3 = Struct_1(max(vec3<u32>(u_input.b.x, u_input.a.x, ~func_1().b.x), _wgslsmith_div_vec3_u32(var_2.b, ~vec3<u32>(67647u, u_input.a.x, 4294967295u))), abs(~(_wgslsmith_mult_vec3_u32(var_2.b, vec3<u32>(var_2.b.x, 0u, 10859u)) | func_4(false, Struct_2(vec3<f32>(1836f, var_2.c, var_2.c), Struct_1(vec3<u32>(u_input.c.x, u_input.a.x, 1u), var_2.b, -1000f, var_2.b.x)), var_2.c).b.a)), _wgslsmith_f_op_f32(-func_5(func_4(var_0, func_4(false, Struct_2(vec3<f32>(595f, -134f, 100f), Struct_1(vec3<u32>(var_2.a.x, var_2.d, 20690u), var_2.a, var_2.c, 30801u)), var_2.c), _wgslsmith_f_op_f32(-1200f - var_2.c))).c), _wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(var_2.a.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 37735u, u_input.a.x), u_input.c.xxy), 71866u), ~1u));
    let var_4 = all(!select(select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), var_0), !vec2<bool>(var_0, var_0), vec2<bool>(true, var_0)), !vec2<bool>(false, var_0), !(!vec2<bool>(var_0, true))));
    let var_5 = _wgslsmith_mult_vec3_i32(var_1, vec3<i32>(_wgslsmith_sub_i32(abs(var_1.x), abs(var_1.x)) | reverseBits(-37210i), -14197i, ~var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c, 1790f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, var_3.c) + vec2<f32>(var_3.c, var_2.c)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(302f, var_3.c) * vec2<f32>(1000f, var_3.c))), any(!vec4<bool>(var_0, var_4, false, var_4))))), 0i, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -946f), var_2.c, _wgslsmith_f_op_f32(337f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))), var_5.x);
}

