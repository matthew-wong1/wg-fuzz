struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec2<f32> {
    let var_0 = Struct_4(Struct_2(2147483647i, Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~_wgslsmith_div_i32(arg_0, arg_0), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, -11344i, -2147483647i), arg_0 & -25116i), 2147483647i < arg_0), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), true || all(vec2<bool>(true, true))), ((2147483647i ^ u_input.a) > arg_0) | false), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(326f, _wgslsmith_f_op_f32(f32(-1f) * -358f))), _wgslsmith_f_op_f32(-445f - _wgslsmith_div_f32(-531f, -1090f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1100f + 885f), 1820f)), _wgslsmith_f_op_f32(-816f * _wgslsmith_div_f32(-537f, -639f)))))), true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -360f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1806f)), _wgslsmith_f_op_f32(f32(-1f) * -2214f)), _wgslsmith_f_op_f32(select(797f, _wgslsmith_f_op_f32(-667f - 1000f), true)), !(-67385i != arg_0)))));
    let var_1 = var_0.c;
    global0 = array<u32, 29>();
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(~firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 27910i, arg_0, 1747i), vec4<i32>(2147483647i, u_input.a, -1i, arg_0))), firstTrailingBit(abs(vec4<i32>(u_input.b.x, u_input.c.x, 0i, -2147483647i))) & min(vec4<i32>(-2147483647i, arg_0, arg_0, u_input.b.x), abs(vec4<i32>(-1i, -7529i, u_input.a, -40603i)))), var_0.a.b.d);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.d, vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x * var_0.b), _wgslsmith_f_op_f32(-var_0.a.b.b))))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1001f))), var_0.a.b.b))));
    return _wgslsmith_div_vec2_f32(vec2<f32>(1f, var_0.a.b.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-477f, -1912f))), vec2<f32>(2280f, var_3.x)))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_4(Struct_2(countOneBits(abs(1i)), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1310f + -446f) - -187f), min(~0i, u_input.a), firstTrailingBit(u_input.a) ^ _wgslsmith_mod_i32(u_input.c.x, u_input.a), any(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, false), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), select(any(vec3<bool>(false, false, false)), any(vec4<bool>(false, true, true, true)), false)), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))), -520f, !any(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.c.x > u_input.b.x)), vec2<f32>(1f, 1f));
    var var_1 = !(!select(var_0.a.c.wyy, !vec3<bool>(false, var_0.a.d, var_0.a.b.a), !var_0.a.c.zyy));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(-948f, var_0.a.b.b)), _wgslsmith_f_op_vec2_f32(-var_0.d))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.d, var_0.d) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(842f, -2636f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.d.x, -998f)))))));
    let var_3 = var_0;
    var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1319f, var_3.d.x)), var_0.d.x, any(var_0.a.c) & true)), var_3.a.b.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(498f, var_0.a.b.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.c.x)) - var_3.d), var_0.d), !(!select(var_0.a.c.ww, vec2<bool>(var_0.a.c.x, false), var_0.a.b.e))))));
    return var_0.a;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: u32) -> f32 {
    let var_0 = Struct_4(func_2(~reverseBits(82777u)), 371f, false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1061f, vec3<bool>(true, true, true), ~3844u))), _wgslsmith_f_op_f32(abs(-544f)), any(func_2(_wgslsmith_mult_u32(57037u, global0[_wgslsmith_index_u32(u_input.d.x, 29u)])).c.yx))), Struct_2((i32(-1i) * -11408i) ^ u_input.b.x, Struct_1(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1050f + 923f), _wgslsmith_f_op_f32(floor(-1421f)))), u_input.c.x, ~u_input.b.x, any(vec2<bool>(true, true))), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 3299u, u_input.d.x, 1u), ~vec4<u32>(u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76915u, 29u)], 29u)], u_input.d.x, 27489u))).c, any(select(func_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)]).c.xx, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), func_2(1u).c.zw))));
    var var_1 = Struct_4(Struct_2(1i ^ _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, 51111i), _wgslsmith_mult_i32(0i, u_input.c.x)), func_2(_wgslsmith_dot_vec2_u32(u_input.d << (u_input.d % vec2<u32>(32u)), u_input.d >> (u_input.d % vec2<u32>(32u)))).b, vec4<bool>(true, !(u_input.d.x <= 1160u), ~(-1i) != reverseBits(var_0.b.b.d), all(var_0.b.c.yx)), var_0.b.b.e), _wgslsmith_f_op_f32(-412f * var_0.b.b.b), any(var_0.b.c.zz) || !func_2(59053u).b.e, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-945f - var_0.b.b.b))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(976f, var_0.b.b.b))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_0.a), vec2<f32>(var_0.a, -728f))))), var_0.b.c.yy)));
    let var_2 = Struct_4(var_0.b, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(var_0.b.b.b, _wgslsmith_f_op_f32(-1256f * _wgslsmith_f_op_f32(ceil(var_0.a))))), any(vec4<bool>(all(!vec4<bool>(true, true, var_1.c, var_1.a.d)), var_1.a.b.e, false, (var_0.b.b.c << (global0[_wgslsmith_index_u32(73968u, 29u)] % 32u)) != -u_input.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.d)) - var_1.d)) + var_1.d));
    var_1 = Struct_4(Struct_2(firstTrailingBit(-1i) << (global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(u_input.d.x, 845u)), 29u)] % 32u), var_0.b.b, !func_2(22742u << (0u % 32u)).c, false), 549f, !func_2(_wgslsmith_add_u32(u_input.d.x, 0u) ^ 4294967295u).c.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + var_1.d.x), var_2.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1623f, var_0.a)))))));
    var var_3 = vec4<u32>(~1u, firstLeadingBit(8309u), max(_wgslsmith_div_u32(_wgslsmith_sub_u32(78892u, u_input.d.x), 0u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11372u, 29u)], 29u)]) & ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44323u, 29u)], 29u)], 29u)], reverseBits(1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.d.x, 32673u, 25923u, u_input.d.x)), max(vec4<u32>(11629u, global0[_wgslsmith_index_u32(1u, 29u)], u_input.d.x, u_input.d.x), _wgslsmith_div_vec4_u32(vec4<u32>(119424u, u_input.d.x, 4294967295u, global0[_wgslsmith_index_u32(0u, 29u)]), vec4<u32>(u_input.d.x, 4294967295u, 23735u, u_input.d.x)))), ~abs(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.b.b.b), var_1.b, global0[_wgslsmith_index_u32(42278u, 29u)], min(((vec4<i32>(var_2.a.a, var_1.a.b.c, 0i, u_input.c.x) | vec4<i32>(var_1.a.a, var_2.a.a, 0i, 5118i)) & vec4<i32>(var_2.a.b.d, -53450i, u_input.b.x, -1i)) ^ vec4<i32>(~var_2.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-10556i, var_2.a.b.c, u_input.a, var_2.a.a), vec4<i32>(-2147483647i, var_0.b.a, var_0.b.a, var_2.a.b.c)), var_1.a.a, 0i), ~(vec4<i32>(0i, -1i, u_input.c.x, -1i) << (vec4<u32>(u_input.d.x, 5175u, 4294967295u, global0[_wgslsmith_index_u32(var_3.x, 29u)]) % vec4<u32>(32u))) ^ vec4<i32>(u_input.a, var_0.b.a >> (52409u % 32u), 1i, var_1.a.a)));
}

