struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<Struct_3, 15>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> vec4<i32> {
    global0 = array<f32, 22>();
    var var_0 = arg_0.a.a.wxy;
    var_0 = min(-countOneBits(vec3<i32>(arg_0.a.a.x, -u_input.b, _wgslsmith_mult_i32(-2147483647i, u_input.b))), vec3<i32>(_wgslsmith_add_i32(var_0.x, min(reverseBits(arg_0.a.a.x), firstLeadingBit(arg_0.a.a.x))), firstLeadingBit(u_input.b), arg_0.a.a.x));
    var var_1 = vec4<bool>(true, !all(vec3<bool>(!arg_0.a.c.x, true, arg_0.a.c.x)), ~0i != u_input.d, any(!vec4<bool>(false, arg_0.a.c.x, true, true | arg_0.a.c.x)));
    let var_2 = Struct_2(Struct_1(select(~(vec4<i32>(-2147483647i, -2147483647i, var_0.x, -35110i) | arg_0.a.a), reverseBits(-arg_0.a.a), vec4<bool>(true, true, arg_0.a.c.x, true)), vec3<f32>(_wgslsmith_div_f32(arg_0.a.b.x, -990f), arg_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.b.x)) * 1257f)), select(vec3<bool>(var_1.x, false, any(vec4<bool>(arg_1, false, arg_1, false))), select(vec3<bool>(true, arg_0.a.c.x, false), vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), arg_0.a.c, vec3<bool>(arg_0.a.c.x, arg_1, false))), vec3<bool>(arg_0.a.c.x, true, arg_0.a.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-943f + _wgslsmith_f_op_f32(f32(-1f) * -685f)), -494f, global0[_wgslsmith_index_u32(arg_2, 22u)])));
    return _wgslsmith_sub_vec4_i32(-firstTrailingBit(_wgslsmith_add_vec4_i32(-arg_0.a.a, var_2.a.a)), -(~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2162i, var_2.a.a.x, var_2.a.a.x, 2477i), var_2.a.a), -vec4<i32>(var_2.a.a.x, var_0.x, u_input.d, -1i))));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_3, 15>();
    global1 = array<Struct_3, 15>();
    global0 = array<f32, 22>();
    var var_0 = (~(~_wgslsmith_sub_u32(u_input.c, u_input.a)) > 1u) == true;
    global1 = array<Struct_3, 15>();
    return Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(43838i >> (0u % 32u)), ~u_input.b, _wgslsmith_add_i32(2147483647i ^ u_input.b, 0i), 2147483647i), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -2307i, u_input.d, -1i), vec4<i32>(u_input.d, -1i, -40977i, u_input.b)), func_3(Struct_2(Struct_1(vec4<i32>(u_input.b, u_input.d, u_input.b, u_input.d), vec3<f32>(-631f, -1075f, 914f), vec3<bool>(true, true, true), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 22u)], -1708f, 213f))), false, 0u), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -7304i, u_input.b, u_input.b), vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.b))), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-26305i, 1i, u_input.d, u_input.d), vec4<i32>(-2147483647i, u_input.d, u_input.b, u_input.b))), select(-vec4<i32>(1i, u_input.d, u_input.b, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(16373i, 37973i, -26737i, 1i), vec4<i32>(u_input.d, 0i, 0i, u_input.b)), vec4<bool>(true, true, true, true)))), vec3<f32>(-313f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, 0u | u_input.a), ~vec2<u32>(40708u, 82531u) & firstLeadingBit(vec2<u32>(1u, u_input.c))), 22u)], -413f), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, u_input.a < u_input.a), vec3<bool>(true, true, all(vec3<bool>(true, false, true))), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 22u)])))), global0[_wgslsmith_index_u32(u_input.c, 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global1 = array<Struct_3, 15>();
    var var_0 = arg_0.a.b.x;
    var_0 = _wgslsmith_f_op_f32(round(arg_0.a.b.x));
    let var_1 = arg_0.a.d;
    var var_2 = arg_0.a.a.zzw;
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u ^ (u_input.c ^ _wgslsmith_clamp_u32(6281u, 37711u, u_input.a)), 0u), _wgslsmith_mult_u32(1u, ~u_input.a));
}

fn func_1() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u) ^ func_4(Struct_2(func_2()), Struct_2(func_2())), ~u_input.c), 15u)];
    global0 = array<f32, 22>();
    global1 = array<Struct_3, 15>();
    var var_1 = Struct_2(Struct_1(var_0.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1188f, var_0.c.b.x, global0[_wgslsmith_index_u32(var_0.a.x, 22u)]) + vec3<f32>(262f, var_0.c.b.x, 896f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-992f, -1671f, var_0.c.b.x), var_0.c.b))))), func_2().c, var_0.c.d));
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.a.x, ~u_input.d, var_0.c.a.x, ~1i), func_3(Struct_2(Struct_1(var_1.a.a, var_0.c.d, var_0.b, vec3<f32>(-718f, 1278f, var_0.c.b.x))), false, _wgslsmith_sub_u32(4294967295u, 81172u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.b + _wgslsmith_f_op_vec3_f32(floor(var_0.c.d)))), vec3<bool>(select(false & var_1.a.c.x, false & var_1.a.c.x, !var_0.b.x), select(false, !var_1.a.c.x, var_1.a.c.x || var_1.a.c.x), var_1.a.c.x), vec3<f32>(_wgslsmith_f_op_f32(step(var_0.c.b.x, var_1.a.b.x)), 1563f, var_1.a.d.x)));
    return Struct_1(~vec4<i32>(1i, var_0.c.a.x, 52651i, 19266i), _wgslsmith_f_op_vec3_f32(var_1.a.b + vec3<f32>(-973f, var_0.c.d.x, func_2().b.x)), select(var_0.b, vec3<bool>(true, true, true), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1099f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.d.x, var_0.c.d.x)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    global0 = array<f32, 22>();
    let var_0 = true;
    global0 = array<f32, 22>();
    let var_1 = -2924f;
    let var_2 = Struct_1(arg_2.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(arg_2.b, arg_2.d))) * arg_1.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(arg_2.d)), arg_2.b)) + _wgslsmith_f_op_vec3_f32(arg_1.b + arg_1.d))), !arg_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.d + arg_1.b) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.b.x, 1581f, arg_3))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_2.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(480f, arg_1.b.x, -745f))))));
    return global1[_wgslsmith_index_u32(4294967295u, 15u)];
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    let var_0 = 1u;
    global0 = array<f32, 22>();
    let var_1 = Struct_1(-arg_2.c.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 1046f) * 600f), func_5(!(!vec2<bool>(arg_3.a.c.x, arg_0.c.x)), arg_2.c, Struct_1(_wgslsmith_sub_vec4_i32(arg_2.c.a, arg_3.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, arg_0.d.x, arg_1) - vec3<f32>(268f, 1775f, arg_1)), !vec3<bool>(true, arg_0.c.x, arg_3.a.c.x), _wgslsmith_f_op_vec3_f32(arg_2.c.d - vec3<f32>(arg_2.c.b.x, arg_2.c.d.x, -326f))), -1000f).c.d.x, func_1().b.x), !arg_0.c, arg_2.c.b);
    var var_2 = func_1().c.zx;
    var var_3 = arg_0.b.x;
    return -(~(-61473i) & _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_2.c.a.x, 17608i) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, arg_0.a.x, 2147483647i), var_1.a.yxw), _wgslsmith_div_i32(select(2147483647i, u_input.d, true), arg_3.a.a.x), var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(253f, -648f, -107f, global0[_wgslsmith_index_u32(4294967295u, 22u)])))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(67962u, 22u)], 1140f, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(u_input.c, 22u)])) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(60863u, 22u)], -1350f, global0[_wgslsmith_index_u32(47663u, 22u)])))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_0.x - 412f)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1752f))), _wgslsmith_f_op_f32(step(-675f, var_0.x))))));
    let var_2 = select(func_6(Struct_1(vec4<i32>(-2147483647i, u_input.d, 13457i, u_input.b), vec3<f32>(var_0.x, -417f, 354f), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), _wgslsmith_f_op_vec3_f32(-var_1.zxy)), var_0.x, func_5(vec2<bool>(true, true), Struct_1(vec4<i32>(-1i, u_input.b, u_input.d, u_input.d), var_0.xyz, vec3<bool>(false, true, false), vec3<f32>(-314f, -878f, var_0.x)), func_1(), -302f), Struct_2(Struct_1(vec4<i32>(-11668i, u_input.b, u_input.d, u_input.b), var_1.wwy, vec3<bool>(true, false, false), vec3<f32>(-636f, 319f, var_1.x)))), -u_input.b, func_2().c.x) <= max(_wgslsmith_mult_i32(u_input.b, u_input.d), -4244i);
    let var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(select(u_input.a, 21735u, var_2), min(u_input.a, 24158u) ^ _wgslsmith_add_u32(15008u, u_input.c)) >> (min(select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.a, u_input.c) >> (vec2<u32>(u_input.c, u_input.a) % vec2<u32>(32u)), func_1().c.xy), countOneBits(vec2<u32>(u_input.c, 1u) | vec2<u32>(2037u, u_input.c))) % vec2<u32>(32u)), select(max(~vec2<u32>(1u, 54401u), vec2<u32>(304u, 1u)), vec2<u32>(~firstTrailingBit(0u), abs(_wgslsmith_div_u32(4294967295u, u_input.a))), select(vec2<bool>(var_2, false), !vec2<bool>(var_2, false), all(!vec4<bool>(false, false, false, var_2)))));
    global1 = array<Struct_3, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-889f, -1659f)) * vec2<f32>(_wgslsmith_f_op_f32(-422f + var_1.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.x, 22u)]))) + var_1.wx), var_1.x);
}

