struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: Struct_3,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(true, abs(4294967295u), vec4<f32>(-308f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(713f, 601f, false)))))), _wgslsmith_add_vec4_u32(vec4<u32>(80458u, _wgslsmith_div_u32(u_input.c, ~1u), _wgslsmith_mod_u32(~48125u, u_input.b.x >> (75607u % 32u)), u_input.b.x), ~vec4<u32>(u_input.c & 56418u, u_input.b.x, ~10822u, u_input.b.x)), u_input.b.x);
    var var_1 = Struct_1(all(select(vec4<bool>(false, true, true, var_0.a), !(!vec4<bool>(true, var_0.a, false, var_0.a)), select(!vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.a, true, var_0.a)))), var_0.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x - 1425f), _wgslsmith_f_op_f32(max(849f, var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -320f), var_0.c.x) * var_0.c) + _wgslsmith_f_op_vec4_f32(floor(var_0.c))), var_0.d, 63211u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-216f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-2671f)))), 1104f, -594f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.c, var_1.c)) * vec4<f32>(940f, 1975f, var_0.c.x, 1632f)), _wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(var_0.c.x, -720f, -425f, var_0.c.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) + _wgslsmith_div_vec4_f32(var_0.c, var_0.c)))));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = arg_0.b.zxx;
    var var_1 = arg_3;
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(-13015i, u_input.a.x, u_input.a.x), u_input.a.xxw);
    let var_3 = -662i;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_3.d.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(select(-412f, var_1.d.b.c.x, true))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_4, arg_2.c.x, -415f, arg_3.a), vec4<f32>(var_4, var_4, arg_2.c.x, 373f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, -1390f, 462f, arg_2.c.x))))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_5) -> bool {
    var var_0 = arg_2.b.xxx;
    var_0 = -arg_2.b.ywx;
    var_0 = ~u_input.a.yxx;
    let var_1 = arg_1.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-698f - 1512f), 1378f))), _wgslsmith_f_op_f32(step(-1560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(752f * 802f)))), _wgslsmith_f_op_f32(-1f), 724f), _wgslsmith_div_vec4_f32(vec4<f32>(724f, _wgslsmith_f_op_f32(min(-214f, -822f)), -1698f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-286f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-979f, -170f, -588f, -328f), vec4<f32>(448f, 616f, 657f, 912f)), _wgslsmith_f_op_vec4_f32(func_2(arg_2, Struct_2(vec2<bool>(arg_2.d.a.x, arg_2.d.a.x)), Struct_1(arg_2.a.x, 7011u, vec4<f32>(1000f, 974f, -582f, 936f), vec4<u32>(4294967295u, 0u, 1u, arg_1.x), 0u), Struct_4(487f, vec4<u32>(44103u, u_input.c, 6578u, u_input.c), arg_1.x, Struct_3(var_1, Struct_1(false, 0u, vec4<f32>(-520f, -730f, 455f, 513f), vec4<u32>(24267u, 21916u, 68784u, 5814u), u_input.c), arg_2.d, var_0.x), vec4<bool>(false, false, false, false)))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, 591f, 1009f, 1000f)) + vec4<f32>(1f, 1f, 1f, 1f)), arg_2.c.x))), vec4<bool>(arg_0.a.x, all(arg_2.a.zzw), any(arg_2.d.a), arg_2.a.x)));
    return select(firstTrailingBit(~arg_2.b.x) >= -10132i, true, !arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, !all(vec4<bool>(true, false, false, false))), !func_1(Struct_2(vec2<bool>(true, true)), vec4<u32>(u_input.b.x, 0u, 0u, 101217u), Struct_5(vec4<bool>(true, false, true, false), vec4<i32>(-1i, u_input.a.x, u_input.a.x, 40423i), vec4<bool>(false, false, false, true), Struct_2(vec2<bool>(true, true)))) || true));
    let var_1 = Struct_3(u_input.b.x, Struct_1(any(!(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), ~_wgslsmith_add_u32(u_input.b.x << (u_input.c % 32u), select(4294967295u, 0u, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-624f, -1683f, -504f, 227f) * vec4<f32>(422f, -317f, -1433f, -1068f))))), ~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c, 487u, 18481u), vec4<u32>(3250u, u_input.c, 0u, 0u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b.x, 0u, u_input.c), vec4<u32>(1u, 1u, 47595u, 0u), vec4<u32>(1382u, 13542u, 4856u, 36509u)) % vec4<u32>(32u))), 7449u), Struct_2(select(var_0.a, var_0.a, any(!vec4<bool>(var_0.a.x, true, false, var_0.a.x)))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, countOneBits(u_input.a.x)), _wgslsmith_clamp_i32(max(abs(u_input.a.x), u_input.a.x), ~(u_input.a.x >> (u_input.c % 32u)), countOneBits(u_input.a.x) & _wgslsmith_dot_vec3_i32(u_input.a.wwy, u_input.a.yzw))));
    var var_2 = Struct_3(~u_input.b.x, Struct_1(any(select(vec3<bool>(var_1.c.a.x, var_1.c.a.x, false), !vec3<bool>(true, var_1.c.a.x, true), !vec3<bool>(var_1.b.a, true, false))), ~u_input.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.c) * _wgslsmith_f_op_vec4_f32(var_1.b.c + vec4<f32>(var_1.b.c.x, -551f, var_1.b.c.x, var_1.b.c.x))))), _wgslsmith_add_vec4_u32(var_1.b.d, var_1.b.d | var_1.b.d) ^ var_1.b.d, ~u_input.c), var_1.c, abs(i32(-1i) * -var_1.d));
    var var_3 = Struct_5(vec4<bool>(var_0.a.x, var_2.b.a, var_1.b.a, var_1.c.a.x), ~u_input.a, !(!select(!vec4<bool>(true, var_0.a.x, var_1.c.a.x, true), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_1.c.a.x, var_2.c.a.x, var_0.a.x, var_2.b.a), vec4<bool>(false, var_2.b.a, true, false)), var_0.a.x)), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.zzx, vec2<u32>(~(~u_input.c), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, var_1.a, var_2.b.b), min(vec3<u32>(1u, u_input.c, 11471u), var_1.b.d.xwy) << (firstTrailingBit(vec3<u32>(36611u, var_1.a, var_2.a)) % vec3<u32>(32u)))), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(u_input.a.zyy, var_3.b.xxx | vec3<i32>(1i, -1i, u_input.a.x)), var_2.b.c.zw);
}

