struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<f32>) -> f32 {
    let var_0 = Struct_5(Struct_2(vec2<i32>(abs(1i), -56103i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 - 304f))), _wgslsmith_f_op_f32(round(arg_2))), false), Struct_4(Struct_1(~u_input.e, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(step(476f, arg_2))), _wgslsmith_div_f32(1033f, _wgslsmith_f_op_f32(exp2(arg_3.x))), vec4<u32>(~u_input.a << ((0u & u_input.a) % 32u), reverseBits(u_input.e), 1u, 4294967295u)));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = Struct_2(var_1.a.a, _wgslsmith_f_op_f32(select(1213f, var_1.a.b, select(false, true, true))), (u_input.b.x > 40312i) || !(all(vec4<bool>(true, var_1.b.a.b.x, true, var_1.a.c)) & select(false, false, var_1.b.a.b.x)));
    var_1 = var_0;
    return _wgslsmith_f_op_f32(var_2.b + var_0.b.a.c);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = u_input.b.x;
    var var_1 = u_input.d.x;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-u_input.d.x, _wgslsmith_div_vec2_i32(-u_input.d.yx, -u_input.b.yx), -111f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(381f, 1000f)))))))));
    var_1 = select(u_input.d.x, ~(~u_input.d.x), all(!select(vec3<bool>(arg_1.x, arg_3.x, arg_3.x), vec3<bool>(true, arg_3.x, arg_1.x), !vec3<bool>(arg_1.x, arg_3.x, false))));
    let var_3 = Struct_3(u_input.b.yx, u_input.c.xx >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)));
    return Struct_4(Struct_1(21852u, !select(vec4<bool>(false, arg_3.x, true, true), !vec4<bool>(arg_1.x, arg_3.x, arg_1.x, arg_3.x), !vec4<bool>(true, arg_3.x, false, true)), 1084f), _wgslsmith_f_op_f32(f32(-1f) * -485f), vec4<u32>(countOneBits(1u), arg_2.x, 4294967295u | _wgslsmith_dot_vec2_u32(arg_2.zz ^ vec2<u32>(1u, arg_0.x), reverseBits(vec2<u32>(arg_0.x, var_3.b.x))), max(~u_input.c.x, var_3.b.x | _wgslsmith_sub_u32(24528u, u_input.a))));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: vec2<i32>) -> f32 {
    var var_0 = arg_1.a.b;
    var_0 = arg_1.b.a.c;
    let var_1 = arg_1.b.c;
    var var_2 = arg_1.b.a;
    let var_3 = Struct_5(arg_1.a, arg_1.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1589f + _wgslsmith_div_f32(arg_0, -339f)) * arg_1.a.b) - arg_0);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = arg_2.b.x;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_1.c))))) + _wgslsmith_f_op_f32(func_4(-869f, Struct_5(Struct_2(vec2<i32>(-46803i, -40619i), arg_1.c, arg_3.x), func_2(u_input.c.zx, vec3<bool>(true, true, false), u_input.c, arg_1.b.xy)), ~reverseBits(u_input.d.xz))))));
    var_1 = 1995f;
    var_1 = arg_1.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.c))), _wgslsmith_f_op_f32(arg_1.c + arg_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1059f, arg_1.c, arg_1.b.x)) - _wgslsmith_f_op_f32(arg_1.c - arg_1.c))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(arg_1.c - arg_1.c)), _wgslsmith_f_op_f32(-375f * -339f)), select(func_2(reverseBits(u_input.c.zy), arg_1.b.zyx, ~u_input.c, vec2<bool>(false, arg_3.x)).a.b.xzw, !arg_1.b.zwz, false)))));
    return func_2(~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a, 571u, u_input.c.x), u_input.c), countOneBits(u_input.c)), u_input.a), vec3<bool>(true, true, any(select(vec3<bool>(arg_2.b.x, arg_1.b.x, var_0), arg_2.b.xzw, select(vec3<bool>(true, arg_3.x, true), vec3<bool>(true, false, arg_2.b.x), arg_2.b.x)))), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a, ~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(arg_1.a, 1u, 4294967295u)), ~arg_1.a >> (arg_2.a % 32u)), u_input.c), select(arg_3.xx, select(func_2(u_input.c.zz, arg_2.b.zwx, vec3<u32>(arg_2.a, 0u, 1u), select(arg_1.b.zz, arg_1.b.zw, false)).a.b.yy, vec2<bool>(39175u == arg_1.a, true & arg_1.b.x), vec2<bool>(any(arg_2.b.xx), true)), all(select(select(vec4<bool>(true, false, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, var_0, false, var_0), vec4<bool>(arg_1.b.x, arg_3.x, var_0, true)), !arg_3, arg_3.x))));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> vec3<u32> {
    let var_0 = Struct_5(Struct_2(abs(arg_2.a >> (~arg_0.c.yw % vec2<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -803f), false), func_2(arg_2.b, !vec3<bool>(arg_0.a.c > 1103f, true, true), ~vec3<u32>(select(arg_3, arg_2.b.x, true), ~40130u, 1u), vec2<bool>(true, true)));
    let var_1 = ~firstLeadingBit(9981i);
    let var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1302f))), 596f, 271f), vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-601f)))), _wgslsmith_f_op_f32(select(-1476f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.b, -1037f))), select(!arg_0.a.b.x, !var_0.a.c, false))), _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(select(var_0.b.b, _wgslsmith_f_op_f32(arg_0.b + 217f), var_1 >= arg_2.a.x))))));
    let var_3 = arg_2;
    var var_4 = 1u;
    return ~func_1(~abs(u_input.b), arg_0.a, func_2(vec2<u32>(var_3.b.x, arg_3), vec3<bool>(true, all(var_0.b.a.b), false), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.a, arg_0.a.a, arg_3), vec3<u32>(1u, 1u, 13841u) << (vec3<u32>(31884u, arg_0.c.x, 8658u) % vec3<u32>(32u))), vec2<bool>(var_0.b.a.b.x & var_0.a.c, true)).a, select(select(!vec4<bool>(arg_0.a.b.x, var_0.b.a.b.x, arg_0.a.b.x, false), arg_0.a.b, func_1(u_input.d, Struct_1(65802u, arg_0.a.b, var_0.b.b), arg_0.a, vec4<bool>(false, var_0.a.c, arg_0.a.b.x, false)).a.b), !select(var_0.b.a.b, vec4<bool>(false, true, arg_0.a.b.x, false), vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, false, true)), vec4<bool>(true, arg_0.a.b.x, !arg_0.a.b.x, var_0.a.c))).c.zzw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1433f, -1671f, 656f), vec3<f32>(1725f, -1000f, 405f), vec3<bool>(false, true, false))), vec3<f32>(-1000f, -1554f, -864f))))));
    var var_1 = var_0.x;
    let var_2 = firstLeadingBit(u_input.c) << (_wgslsmith_mod_vec3_u32(~func_5(func_1(u_input.b, Struct_1(1u, vec4<bool>(false, true, false, false), 1004f), Struct_1(u_input.a, vec4<bool>(false, false, false, false), var_0.x), vec4<bool>(false, true, true, false)), _wgslsmith_clamp_i32(u_input.d.x, 1i, u_input.b.x), Struct_3(u_input.b.zz, u_input.c.yz), u_input.e >> (0u % 32u)), vec3<u32>(u_input.c.x, u_input.e, 0u)) % vec3<u32>(32u));
    var var_3 = Struct_4(Struct_1(_wgslsmith_dot_vec2_u32(~(~var_2.xx), func_2(countOneBits(u_input.c.zx), vec3<bool>(false, true, false), _wgslsmith_mod_vec3_u32(var_2, u_input.c), select(vec2<bool>(true, true), vec2<bool>(true, true), false)).c.wx), !func_2(u_input.c.zx, vec3<bool>(true, true, true), _wgslsmith_sub_vec3_u32(vec3<u32>(8535u, var_2.x, u_input.c.x), vec3<u32>(1u, 81209u, 49201u)), vec2<bool>(false, true)).a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(var_2.xy, vec3<bool>(true, true, false), vec3<u32>(var_2.x, u_input.e, var_2.x), vec2<bool>(true, false)).a.c))), 101f, ~vec4<u32>(~var_2.x | firstTrailingBit(u_input.a), select(~var_2.x, func_1(vec3<i32>(u_input.d.x, -1i, u_input.d.x), Struct_1(u_input.e, vec4<bool>(true, true, false, false), 1000f), Struct_1(u_input.c.x, vec4<bool>(false, false, false, true), 871f), vec4<bool>(true, false, false, true)).a.a, true), ~var_2.x, var_2.x));
    var var_4 = _wgslsmith_mod_vec2_u32(u_input.c.xz, vec2<u32>(reverseBits(_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(0u, 95836u))), _wgslsmith_div_u32(24210u, func_1(~u_input.d, Struct_1(0u, vec4<bool>(var_3.a.b.x, true, true, var_3.a.b.x), -1272f), var_3.a, vec4<bool>(true, false, var_3.a.b.x, var_3.a.b.x)).a.a)));
    var_4 = ~u_input.c.xy;
    var var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b.zy >> (var_2.zx % vec2<u32>(32u))), vec4<f32>(-542f, var_0.x, _wgslsmith_f_op_f32(-var_3.a.c), var_3.a.c));
}

