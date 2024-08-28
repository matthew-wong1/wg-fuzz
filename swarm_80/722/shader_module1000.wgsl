struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = ~(~max(2760u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, global0.d.x, 46449u), vec4<u32>(global0.d.x, global0.d.x, 1u, 0u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -711f))))));
    var var_2 = Struct_1(global0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.x * -1610f))) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2134f)) * _wgslsmith_f_op_f32(round(-2067f))), max(vec2<u32>(~(var_0 ^ 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, 1u, var_0, 31740u), vec4<u32>(var_0, global0.d.x, 13258u, 37796u) & vec4<u32>(0u, var_0, var_0, 1u))), global1[_wgslsmith_index_u32(1785u, 13u)]), countOneBits(~(~global0.d)) >> (_wgslsmith_sub_vec4_u32(countOneBits(~global0.d), vec4<u32>(min(var_0, 33371u), 59293u, min(1u, global0.c.x), var_0)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(min(var_1.x, 1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.a.x)), -1587f))));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1699f + var_1.x)), _wgslsmith_f_op_f32(-1505f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(floor(global0.e.x)))), var_1.x, -349f), all(vec3<bool>(any(vec2<bool>(global0.b, true)), select(true, var_2.b, var_2.b), global0.d.x <= 52295u)) == false, global1[_wgslsmith_index_u32(var_2.d.x, 13u)], _wgslsmith_add_vec4_u32(select(~_wgslsmith_clamp_vec4_u32(global0.d, vec4<u32>(var_2.d.x, 1468u, 19465u, 4294967295u), vec4<u32>(26474u, 4294967295u, 2159u, 1u)), _wgslsmith_sub_vec4_u32(~var_2.d, _wgslsmith_div_vec4_u32(global0.d, global0.d)), vec4<bool>(global0.d.x >= var_0, true, true, global0.b)), countOneBits(countOneBits(_wgslsmith_mod_vec4_u32(global0.d, var_2.d)))), global0.a.xz);
    global0 = Struct_1(global0.a, true, global0.d.zz, var_3.d, global0.a.zx);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_3.a)))), !(!select(vec4<bool>(global0.b, global0.b, true, false), vec4<bool>(false, true, var_3.b, global0.b), vec4<bool>(false, global0.b, var_3.b, true))))) + global0.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<f32> {
    var var_0 = arg_2;
    var var_1 = select(!(!vec2<bool>(!arg_1.a.x, select(false, false, false))), select(vec2<bool>(abs(4294967295u) > (var_0.c.x | 53275u), !all(vec4<bool>(arg_2.b, true, global0.b, true))), !arg_1.a.xz, true), !arg_1.a.zz);
    var var_2 = _wgslsmith_div_i32(u_input.a.x, 2147483647i);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.a)));
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(select(~arg_0.c.b.d.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.c.x, arg_0.c.b.d.x), global0.c), vec2<bool>(true, true)), Struct_3(vec3<bool>(arg_0.b, arg_0.b, global0.b), global0.a.x, arg_0.c), Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), true, ~vec2<u32>(arg_0.c.b.c.x, arg_0.c.b.c.x), _wgslsmith_mod_vec4_u32(global0.d, arg_0.c.b.d), vec2<f32>(arg_0.c.b.a.x, -222f)), min(~arg_0.c.b.d.ww, arg_0.c.b.d.yy)))), true, arg_0.c.a.d.zx, ~vec4<u32>(_wgslsmith_mod_u32(arg_0.c.a.c.x, global0.d.x), 4294967295u, min(arg_0.c.a.c.x >> (arg_0.c.a.d.x % 32u), _wgslsmith_sub_u32(4294967295u, global0.c.x)), _wgslsmith_sub_u32(86378u, arg_0.c.a.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.b.a.x + _wgslsmith_f_op_f32(global0.a.x - arg_0.c.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c.b.e.x, 131f)) * _wgslsmith_f_op_f32(round(-1716f))))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), any(!select(vec3<bool>(true, true, global0.b), vec3<bool>(arg_0.b, arg_0.c.b.b, true), vec3<bool>(true, arg_0.b, global0.b))) || global0.b, _wgslsmith_add_vec2_u32(vec2<u32>(~firstLeadingBit(arg_0.c.a.c.x), _wgslsmith_mult_u32(1u, 0u)), firstTrailingBit(_wgslsmith_sub_vec2_u32(~global0.d.xz, global0.c))), ~(((vec4<u32>(global0.c.x, 73537u, global0.d.x, arg_0.c.a.c.x) ^ arg_0.c.b.d) | arg_0.c.a.d) >> (countOneBits(~vec4<u32>(global0.d.x, 4294967295u, 8612u, 0u)) % vec4<u32>(32u))), vec2<f32>(global0.e.x, _wgslsmith_f_op_vec4_f32(func_4(global0.d.xx, Struct_3(select(vec3<bool>(false, true, arg_0.c.b.b), vec3<bool>(true, false, true), arg_0.b), _wgslsmith_f_op_f32(-global0.a.x), Struct_2(Struct_1(arg_0.c.b.a, false, global1[_wgslsmith_index_u32(global0.c.x, 13u)], vec4<u32>(arg_0.c.b.c.x, global0.d.x, arg_0.c.b.c.x, arg_0.c.a.d.x), arg_0.c.a.a.zy), arg_0.c.a)), Struct_1(global0.a, global0.e.x < arg_0.c.b.a.x, abs(global1[_wgslsmith_index_u32(93667u, 13u)]), vec4<u32>(arg_0.c.b.c.x, 0u, 90254u, 0u), _wgslsmith_f_op_vec4_f32(func_3()).ww), firstLeadingBit(vec2<u32>(4184u, 1u)) ^ vec2<u32>(global0.c.x, global0.d.x))).x));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(abs(var_0.c), Struct_3(vec3<bool>(false, var_0.b, var_0.b), 713f, Struct_2(arg_0.c.b, arg_0.c.b)), Struct_1(global0.a, true, arg_0.c.b.c, vec4<u32>(1u, var_0.c.x, arg_0.c.a.c.x, global0.d.x), vec2<f32>(663f, var_0.a.x)), select(var_0.d.zx, global1[_wgslsmith_index_u32(var_0.d.x, 13u)], var_0.b)))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(273f)), 451f, _wgslsmith_f_op_f32(sign(arg_0.c.b.a.x)), _wgslsmith_f_op_vec4_f32(func_4(global0.d.yy, Struct_3(vec3<bool>(false, true, var_0.b), 1000f, Struct_2(Struct_1(vec4<f32>(arg_0.c.b.a.x, -701f, global0.a.x, global0.e.x), var_0.b, vec2<u32>(var_0.c.x, var_0.d.x), vec4<u32>(1u, 1u, 0u, var_0.c.x), vec2<f32>(var_0.a.x, arg_0.c.b.e.x)), arg_0.c.a)), Struct_1(vec4<f32>(-797f, -772f, 275f, var_0.a.x), var_0.b, vec2<u32>(0u, 1u), global0.d, vec2<f32>(131f, global0.a.x)), var_0.d.wx)).x)))), all(vec4<bool>(global0.b, all(select(vec3<bool>(false, false, arg_0.b), vec3<bool>(true, global0.b, var_0.b), vec3<bool>(true, var_0.b, global0.b))), all(vec2<bool>(true, true)), arg_0.b)), ~(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(global0.d.zz, vec2<u32>(21723u, 32096u)), vec2<u32>(global0.c.x, 3821u)) << (vec2<u32>(abs(1u), var_0.d.x) % vec2<u32>(32u))), vec4<u32>(max(~26514u, var_0.c.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 86131u, 54371u, arg_0.c.b.c.x), _wgslsmith_mult_vec4_u32(arg_0.c.a.d, var_0.d)), _wgslsmith_mod_vec4_u32(arg_0.c.b.d, _wgslsmith_clamp_vec4_u32(global0.d, global0.d, arg_0.c.b.d))), _wgslsmith_div_u32(~(global0.c.x & 0u), reverseBits(var_0.d.x)), ~(~56695u)), _wgslsmith_f_op_vec2_f32(trunc(var_0.a.wx)));
    var var_1 = arg_0.a.x;
    var var_2 = Struct_3(vec3<bool>(arg_0.c.b.b, false, ((arg_0.c.a.c.x ^ global0.d.x) & _wgslsmith_sub_u32(arg_0.c.a.d.x, global0.c.x)) != ~global0.d.x), _wgslsmith_f_op_f32(global0.a.x - var_0.e.x), arg_0.c);
    return Struct_3(vec3<bool>(select(!global0.b | !global0.b, true, !(!arg_0.c.b.b)), true, all(select(select(vec4<bool>(false, true, true, var_2.c.b.b), vec4<bool>(false, true, false, var_0.b), var_0.b), select(vec4<bool>(global0.b, false, true, arg_0.b), vec4<bool>(global0.b, true, false, var_2.a.x), false), var_2.a.x && var_2.a.x))), 1828f, var_2.c);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = abs(4294967295u);
    global0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1701f)) * _wgslsmith_div_f32(726f, -686f)), _wgslsmith_f_op_f32(-arg_1.b), -907f, 405f), vec4<f32>(-1857f, 1f, _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-arg_1.b)), arg_1.b)), arg_1.a.x, arg_1.c.a.c, arg_3.c.b.d, arg_1.c.a.a.zz);
    var var_1 = arg_3;
    var var_2 = -839f;
    global0 = arg_3.c.b;
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    global1 = array<vec2<u32>, 13>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, global0.a.x, -636f, 509f)), func_2(Struct_4(u_input.a.yx, false, arg_0)).c.b.a), _wgslsmith_f_op_vec4_f32(sign(arg_2.c.b.a))))) - global0.a);
    var var_1 = arg_2.a;
    var var_2 = -27446i;
    let var_3 = _wgslsmith_f_op_f32(-476f * 1000f);
    return func_2(Struct_4(~(~abs(u_input.a.xz)), false, arg_0)).c.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: vec3<u32>) -> Struct_1 {
    global1 = array<vec2<u32>, 13>();
    let var_0 = Struct_4(-u_input.a.xx, arg_0.x, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), all(select(vec3<bool>(true, false, arg_0.x), arg_2.xxx, true)), ~vec2<u32>(global0.c.x, 3771u), ~countOneBits(global0.d), global0.a.xw), func_6(Struct_2(Struct_1(global0.a, arg_0.x, vec2<u32>(32285u, arg_3.x), global0.d, vec2<f32>(global0.e.x, global0.a.x)), Struct_1(global0.a, arg_2.x, global0.c, global0.d, global0.a.xw)), func_5(~vec4<i32>(-31432i, 0i, u_input.a.x, 1524i), Struct_3(arg_2.yxw, global0.e.x, Struct_2(Struct_1(vec4<f32>(-2026f, global0.a.x, global0.a.x, global0.a.x), global0.b, vec2<u32>(arg_3.x, 4294967295u), global0.d, vec2<f32>(global0.e.x, 744f)), Struct_1(global0.a, false, vec2<u32>(4294967295u, 58405u), vec4<u32>(arg_3.x, arg_3.x, 0u, 108368u), vec2<f32>(global0.a.x, global0.a.x)))), ~u_input.a, func_2(Struct_4(vec2<i32>(1i, arg_1.x), arg_0.x, Struct_2(Struct_1(vec4<f32>(1764f, 520f, global0.a.x, global0.e.x), arg_0.x, vec2<u32>(52639u, 4294967295u), vec4<u32>(29019u, global0.d.x, arg_3.x, 0u), vec2<f32>(global0.a.x, -887f)), Struct_1(global0.a, true, vec2<u32>(global0.c.x, arg_3.x), vec4<u32>(global0.c.x, 4294967295u, 5161u, 1u), vec2<f32>(159f, global0.e.x)))))), Struct_3(!vec3<bool>(arg_0.x, true, arg_0.x), global0.a.x, Struct_2(Struct_1(global0.a, false, arg_3.zz, vec4<u32>(4294967295u, 0u, arg_3.x, 126u), vec2<f32>(2299f, 1289f)), Struct_1(global0.a, arg_2.x, global1[_wgslsmith_index_u32(global0.c.x, 13u)], vec4<u32>(4294967295u, arg_3.x, global0.d.x, 83448u), vec2<f32>(global0.a.x, -911f)))), _wgslsmith_f_op_f32(step(global0.a.x, global0.a.x)))));
    let var_1 = var_0.a.x == (-11216i >> (func_2(var_0).c.a.c.x % 32u));
    var var_2 = var_0;
    var var_3 = (true & any(vec2<bool>(true, true))) & ((255f == _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.e.x, -1798f)))) != !(!var_2.c.b.b));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.a.e.x - var_2.c.b.a.x)), _wgslsmith_f_op_f32(func_5(vec4<i32>(var_0.a.x, 55648i, arg_1.x, -16195i), Struct_3(arg_2.zwz, global0.e.x, var_0.c), arg_1, Struct_3(vec3<bool>(true, true, arg_2.x), var_0.c.b.e.x, var_0.c)).b - _wgslsmith_f_op_f32(-var_0.c.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.b.a.x, 1047f)))), true, var_0.c.a.c, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.c.a.d, vec4<u32>(1u, var_0.c.a.c.x, 4294967295u, 0u)) ^ global0.d, ~vec4<u32>(37036u, 0u, global0.c.x, arg_3.x)), min(vec4<u32>(min(0u, global0.d.x), 4294967295u, global0.d.x, ~var_2.c.a.d.x), firstLeadingBit(~global0.d))), func_2(var_0).c.b.a.zx);
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    var var_0 = -1635f;
    let var_1 = arg_0.a;
    var_0 = _wgslsmith_f_op_vec4_f32(func_3()).x;
    global1 = array<vec2<u32>, 13>();
    global1 = array<vec2<u32>, 13>();
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 13>();
    var var_0 = func_7(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -498f, global0.e.x, global0.a.x) * vec4<f32>(global0.e.x, -653f, global0.a.x, -550f)), any(vec2<bool>(false, true)) | global0.b, global0.c, _wgslsmith_mod_vec4_u32(global0.d, global0.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(681f, global0.a.x), vec2<f32>(global0.e.x, -1880f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-548f, 587f)))), Struct_1(global0.a, !global0.b, global0.d.wy ^ max(vec2<u32>(global0.c.x, 0u), vec2<u32>(global0.d.x, 4294967295u)), _wgslsmith_div_vec4_u32(global0.d << (global0.d % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(global0.d, global0.d, vec4<u32>(global0.c.x, global0.c.x, 4294967295u, global0.d.x))), _wgslsmith_f_op_vec2_f32(-global0.e))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global0.d.x, global0.c.x, 4294967295u), global0.d), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.d.x, 103632u, 4294967295u, global0.c.x), ~vec4<u32>(global0.c.x, global0.d.x, global0.c.x, 14982u))), Struct_3(select(vec3<bool>(global0.b | global0.b, global0.b, global0.b), !(!vec3<bool>(global0.b, global0.b, true)), all(select(vec3<bool>(true, global0.b, global0.b), vec3<bool>(false, false, global0.b), vec3<bool>(false, false, global0.b)))), -1000f, Struct_2(func_1(!vec2<bool>(true, global0.b), u_input.a, select(vec4<bool>(global0.b, global0.b, false, false), vec4<bool>(false, true, true, false), global0.b), vec3<u32>(3683u, global0.c.x, global0.d.x)), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1045f, 981f, 265f, global0.a.x), global0.a), all(vec4<bool>(true, false, false, global0.b)), _wgslsmith_mult_vec2_u32(global0.d.yw, vec2<u32>(48561u, global0.c.x)), vec4<u32>(0u, 72574u, 8658u, global0.c.x), vec2<f32>(261f, 593f)))), 21276u);
    let var_1 = func_5(~u_input.a, Struct_3(!vec3<bool>(u_input.a.x == 14594i, false, true), _wgslsmith_f_op_vec4_f32(func_3()).x, Struct_2(var_0.a, func_5(~u_input.a, Struct_3(vec3<bool>(false, var_0.b.b, var_0.a.b), var_0.b.e.x, Struct_2(var_0.a, var_0.a)), _wgslsmith_mod_vec4_i32(u_input.a, u_input.a), Struct_3(vec3<bool>(false, true, false), global0.e.x, Struct_2(var_0.b, var_0.b))).c.b)), ~max(vec4<i32>(~(-23381i), ~u_input.a.x, -u_input.a.x, -1226i), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), i32(-1i) * -2147483647i, min(-2147483647i, u_input.a.x), u_input.a.x)), func_2(Struct_4(-vec2<i32>(u_input.a.x, 1i) >> (vec2<u32>(var_0.b.c.x, global0.d.x) % vec2<u32>(32u)), true, Struct_2(var_0.a, func_5(u_input.a, Struct_3(vec3<bool>(var_0.a.b, true, global0.b), 1514f, Struct_2(var_0.a, var_0.b)), vec4<i32>(u_input.a.x, 1i, 2147483647i, 1i), Struct_3(vec3<bool>(false, true, true), var_0.a.e.x, Struct_2(var_0.a, Struct_1(vec4<f32>(-950f, -106f, global0.e.x, -1000f), global0.b, vec2<u32>(var_0.b.c.x, var_0.a.d.x), var_0.a.d, var_0.b.a.zz)))).c.a)))).c;
    var_0 = func_5(vec4<i32>(~u_input.a.x, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, u_input.a.x, 0i, u_input.a.x), max(u_input.a, u_input.a)), u_input.a), u_input.a.x, -21581i), func_5(_wgslsmith_sub_vec4_i32(firstLeadingBit(u_input.a), vec4<i32>(u_input.a.x, firstTrailingBit(34118i), _wgslsmith_mod_i32(2147483647i, u_input.a.x), 0i)), func_5(~u_input.a << (_wgslsmith_div_vec4_u32(vec4<u32>(59926u, 4294967295u, 30696u, 26004u), var_1.b.d) % vec4<u32>(32u)), func_2(Struct_4(u_input.a.xx, true, Struct_2(var_1.a, Struct_1(var_1.b.a, global0.b, vec2<u32>(34499u, 0u), vec4<u32>(var_1.a.d.x, var_1.b.c.x, var_0.a.d.x, var_0.b.c.x), vec2<f32>(-1000f, -1000f))))), u_input.a, func_5(vec4<i32>(u_input.a.x, u_input.a.x, -28397i, 2147483647i), Struct_3(vec3<bool>(true, false, true), var_0.b.e.x, var_1), u_input.a, Struct_3(vec3<bool>(global0.b, true, var_0.b.b), var_1.a.a.x, var_1))), ~u_input.a & (-u_input.a | select(u_input.a, vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec4<bool>(global0.b, var_0.a.b, false, false))), Struct_3(vec3<bool>(!var_0.b.b, global0.b || false, true), 160f, Struct_2(Struct_1(var_0.b.a, false, vec2<u32>(14441u, 0u), vec4<u32>(global0.c.x, global0.c.x, 4294967295u, var_1.a.c.x), var_1.b.a.xw), var_1.b))), (abs(-vec4<i32>(u_input.a.x, 24233i, u_input.a.x, u_input.a.x)) | min(vec4<i32>(-11497i, u_input.a.x, 57175i, u_input.a.x), -u_input.a)) >> (func_7(Struct_2(Struct_1(var_0.a.a, true, global1[_wgslsmith_index_u32(510u, 13u)], vec4<u32>(0u, var_0.b.d.x, 77555u, 9156u), var_0.b.e), var_1.b), 4294967295u, func_2(Struct_4(vec2<i32>(u_input.a.x, u_input.a.x), true, var_1)), var_0.b.c.x).a.d % vec4<u32>(32u)), func_2(Struct_4(vec2<i32>(~1i, -1i), any(!vec3<bool>(global0.b, global0.b, true)), Struct_2(var_1.b, func_6(Struct_2(Struct_1(vec4<f32>(var_0.b.a.x, 1546f, var_0.a.e.x, var_1.b.a.x), global0.b, global0.c, var_1.b.d, var_0.a.e), Struct_1(vec4<f32>(global0.a.x, 296f, var_1.b.e.x, 1161f), var_0.b.b, global1[_wgslsmith_index_u32(var_0.b.d.x, 13u)], var_0.b.d, var_1.b.e)), Struct_3(vec3<bool>(false, false, var_1.a.b), 749f, Struct_2(var_0.a, var_1.a)), Struct_3(vec3<bool>(false, var_1.a.b, true), -842f, Struct_2(Struct_1(vec4<f32>(global0.e.x, var_1.b.e.x, var_0.b.e.x, -208f), var_1.a.b, vec2<u32>(global0.d.x, var_0.b.d.x), var_0.a.d, vec2<f32>(var_1.b.e.x, 282f)), Struct_1(vec4<f32>(1159f, var_1.b.a.x, var_0.b.e.x, var_1.b.e.x), var_0.a.b, vec2<u32>(global0.c.x, 4294967295u), global0.d, vec2<f32>(-1262f, 1291f)))), global0.a.x))))).c;
    var var_2 = Struct_4(~(-select(_wgslsmith_mod_vec2_i32(u_input.a.wy, vec2<i32>(-12081i, 2147483647i)), ~u_input.a.zx, any(vec3<bool>(global0.b, var_1.b.b, false)))), all(select(vec3<bool>(false, var_1.a.b & var_0.a.b, true | var_0.b.b), !select(vec3<bool>(true, global0.b, global0.b), vec3<bool>(var_0.a.b, var_1.b.b, false), true), select(vec3<bool>(true, global0.b, true), !vec3<bool>(false, var_0.b.b, var_1.a.b), func_5(vec4<i32>(u_input.a.x, -2147483647i, -1i, u_input.a.x), Struct_3(vec3<bool>(var_1.b.b, true, var_0.a.b), var_1.a.e.x, Struct_2(Struct_1(vec4<f32>(573f, global0.a.x, var_1.a.e.x, 1344f), global0.b, vec2<u32>(23938u, var_0.b.c.x), global0.d, global0.e), var_1.a)), vec4<i32>(32623i, 54907i, u_input.a.x, 1i), Struct_3(vec3<bool>(true, var_1.a.b, false), var_0.a.a.x, var_1)).c.a.b))), func_5(-(u_input.a ^ u_input.a), func_5(~(~u_input.a), Struct_3(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-var_1.a.a.x), var_1), u_input.a, Struct_3(vec3<bool>(var_0.a.b, true, var_1.b.b), var_1.a.a.x, Struct_2(var_0.b, var_1.b))), -(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a) << (~vec4<u32>(22830u, var_1.b.d.x, var_0.b.c.x, global0.d.x) % vec4<u32>(32u))), func_5(u_input.a, Struct_3(vec3<bool>(true, true, global0.b), _wgslsmith_f_op_f32(-710f - var_1.b.a.x), func_2(Struct_4(vec2<i32>(u_input.a.x, u_input.a.x), false, Struct_2(var_0.b, var_1.b))).c), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -51313i, -38027i, -10945i), u_input.a), func_5(u_input.a << (vec4<u32>(0u, var_1.b.d.x, var_0.a.c.x, 1u) % vec4<u32>(32u)), func_2(Struct_4(vec2<i32>(63794i, 24850i), false, Struct_2(var_1.a, var_0.a))), -vec4<i32>(u_input.a.x, -43526i, u_input.a.x, u_input.a.x), func_2(Struct_4(vec2<i32>(-15423i, u_input.a.x), var_0.b.b, var_1))))).c);
    let var_3 = -_wgslsmith_mod_vec4_i32(u_input.a << (~vec4<u32>(1u, global0.d.x, 1u, global0.d.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(26756i, var_2.a.x, var_2.a.x, var_2.a.x), u_input.a >> (global0.d % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, ~vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x))));
    global1 = array<vec2<u32>, 13>();
    global1 = array<vec2<u32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_6(Struct_2(Struct_1(global0.a, false, global0.d.yz, var_0.a.d, vec2<f32>(1079f, var_0.a.a.x)), var_2.c.b), func_5(vec4<i32>(20471i, u_input.a.x, var_3.x, var_3.x), Struct_3(vec3<bool>(var_0.a.b, var_2.c.b.b, global0.b), var_1.a.a.x, Struct_2(Struct_1(vec4<f32>(-1558f, -428f, var_0.b.a.x, 225f), var_2.c.b.b, vec2<u32>(9878u, global0.c.x), global0.d, var_1.b.e), var_0.b)), u_input.a, Struct_3(vec3<bool>(var_0.b.b, true, var_1.b.b), -980f, var_2.c)), func_2(Struct_4(var_2.a, global0.b, var_1)), -167f).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x * var_0.a.a.x)))), vec2<u32>(1u, _wgslsmith_sub_u32(4294967295u, var_1.a.d.x)) << (reverseBits(global1[_wgslsmith_index_u32(~(~1u), 13u)]) % vec2<u32>(32u)));
}

