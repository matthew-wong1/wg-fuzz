struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32;

var<private> global2: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(1u, 0u, 1u), vec3<u32>(2986u, 55621u, 102769u), vec3<u32>(0u, 18288u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 0u, 9540u), vec3<u32>(41297u, 22029u, 0u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1813f, -1033f, arg_2.a.x, arg_2.d.a.b.x))) * vec4<f32>(312f, 1157f, arg_2.d.a.b.x, -1000f))) * vec4<f32>(arg_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -230f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.d.a.b.x)) * _wgslsmith_f_op_f32(select(1117f, 638f, arg_2.d.a.a.x))), _wgslsmith_f_op_f32(step(-622f, _wgslsmith_div_f32(772f, -2053f))))));
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.d, arg_1);
    global2 = array<vec3<u32>, 6>();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(132f + -1000f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.zy * vec2<f32>(arg_2.d.a.b.x, var_0.a.x)) - _wgslsmith_f_op_vec2_f32(var_0.b.yy + vec2<f32>(865f, arg_2.d.a.b.x))), vec2<f32>(arg_2.d.a.b.x, -401f), !select(arg_0.x, true, true))))));
    return select(!arg_2.d.a.a, !select(arg_2.d.a.a, select(select(vec4<bool>(arg_2.d.a.a.x, false, false, arg_2.d.a.a.x), vec4<bool>(false, false, false, false), arg_0.x), vec4<bool>(false, false, arg_2.d.a.a.x, arg_2.d.a.a.x), any(vec3<bool>(false, true, false))), any(!arg_2.d.a.a)), !arg_2.d.a.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = arg_0.a.zww;
    var var_1 = -u_input.c.xzx;
    global2 = array<vec3<u32>, 6>();
    global0 = (vec2<i32>(arg_0.d, _wgslsmith_dot_vec3_i32(u_input.d, u_input.c.zzx >> (arg_2.c.ywy % vec3<u32>(32u)))) << (~(~(vec2<u32>(1u, 4927u) >> (vec2<u32>(arg_2.b, 4294967295u) % vec2<u32>(32u)))) % vec2<u32>(32u))) ^ -var_1.xy;
    var_1 = u_input.c.zzx;
    return _wgslsmith_f_op_vec2_f32(arg_0.b + vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.b.x + -1132f), _wgslsmith_div_f32(arg_2.a.b.x, -508f)))), _wgslsmith_div_f32(arg_1.b.x, -839f)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global0 = reverseBits(reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(select(u_input.c, vec4<i32>(global0.x, arg_0.x, 2147483647i, 53322i), false), -vec4<i32>(u_input.d.x, -49203i, u_input.a, arg_0.x)), ~u_input.c.x >> (abs(1u) % 32u))));
    global2 = array<vec3<u32>, 6>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_3(vec3<bool>(true, false, true), max(vec3<i32>(0i, arg_0.x, global0.x), u_input.c.yyx), Struct_4(vec3<f32>(1689f, -377f, 1000f), 126279u, vec2<i32>(-1329i, -2147483647i), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(-713f, 694f), 21946u, global0.x), 7012u, vec4<u32>(30015u, 25374u, 25165u, 0u), vec2<i32>(43873i, arg_0.x)))), all(vec2<bool>(false, true))), vec2<f32>(1f, 1f), 19331u, abs(2505i)), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1465f, -118f), vec2<f32>(2335f, 308f)))), 1u, _wgslsmith_clamp_i32(abs(_wgslsmith_mult_i32(53914i, global0.x)), global0.x, _wgslsmith_div_i32(abs(50715i), max(-11202i, -29941i)))), Struct_2(Struct_1(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), true), vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), 444f), 25751u, 1i), _wgslsmith_sub_u32(~max(4294967295u, 0u), _wgslsmith_mod_u32(countOneBits(0u), 1u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(156981u, 28087u), vec2<u32>(1u, 1u)), firstTrailingBit(~4294967295u), 1u, 20633u), -max(abs(vec2<i32>(2147483647i, 18766i)), ~vec2<i32>(arg_0.x, u_input.a)))));
    global0 = vec2<i32>(-global0.x, -_wgslsmith_sub_i32(19144i, u_input.d.x));
    let var_1 = ~reverseBits(4294967295u);
    return Struct_1(!vec4<bool>(var_1 == min(44453u, var_1), true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), false), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x))), var_1, _wgslsmith_dot_vec3_i32(u_input.c.zww, _wgslsmith_add_vec3_i32(-u_input.d, _wgslsmith_mult_vec3_i32(u_input.c.ywz, vec3<i32>(-76020i, 0i, global0.x)))));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(func_2(u_input.d.zz), 0u, ~reverseBits(firstTrailingBit(abs(vec4<u32>(4294967295u, 1u, 1u, 45214u)))), countOneBits(u_input.d.zz));
    var var_1 = var_0.a.c;
    let var_2 = 85575u;
    var var_3 = Struct_1(vec4<bool>(true, true, !var_0.a.a.x, false), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(arg_1.b.x + -314f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.a.b)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.b.x, arg_1.b.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_1.a.x)), -1672f)), !var_0.a.a.x)), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_0.c.xz, var_0.c.yw) << ((_wgslsmith_dot_vec3_u32(var_0.c.zxz, global2[_wgslsmith_index_u32(var_2, 6u)]) ^ ~23218u) % 32u), 6u)], _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.c.x, _wgslsmith_div_u32(var_0.c.x, 1u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 53915u, var_0.a.c), vec3<u32>(var_0.b, var_0.a.c, var_0.a.c)))), _wgslsmith_mod_i32(abs(u_input.c.x), 2147483647i & _wgslsmith_div_i32(firstLeadingBit(1i), -1i | global0.x)));
    let var_4 = 385f;
    return Struct_2(Struct_1(vec4<bool>(true, true, false, !all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1.a.zx))), _wgslsmith_div_u32(max(_wgslsmith_sub_u32(9926u, var_3.c), countOneBits(0u)), var_0.a.c), global0.x), _wgslsmith_add_u32(0u, var_2), ~var_0.c, vec2<i32>(countOneBits(var_3.d << ((48224u << (var_3.c % 32u)) % 32u)), 48676i));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1907f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_vec2_f32(func_4(arg_1.a, arg_1.a, func_1(arg_2.x, arg_3))).x) * arg_2);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(func_2(~arg_1.d).b.x, 1566f, _wgslsmith_f_op_f32(-870f - _wgslsmith_f_op_f32(arg_2.x - 304f))))), vec4<f32>(_wgslsmith_f_op_f32(-317f + arg_2.x), var_0.x, _wgslsmith_f_op_f32(max(func_1(_wgslsmith_f_op_f32(913f - arg_1.a.b.x), Struct_3(arg_3.a, vec4<f32>(var_0.x, var_0.x, arg_2.x, arg_2.x))).a.b.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x))) - _wgslsmith_div_f32(-911f, func_2(vec2<i32>(-52816i, 2147483647i)).b.x))));
    var_1 = arg_3;
    var var_2 = arg_3;
    let var_3 = false;
    return func_2(vec2<i32>(abs(global0.x ^ u_input.c.x), select(arg_1.a.d << (arg_1.a.c % 32u), ~u_input.c.x, true)) & countOneBits(vec2<i32>(23947i, ~global0.x)));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = ~_wgslsmith_add_u32(~(0u >> (arg_1.x % 32u)), 0u) < 70336u;
    let var_1 = func_5(true, Struct_2(Struct_1(!arg_2.a, arg_2.b, func_1(arg_2.b.x, Struct_3(vec3<f32>(-947f, arg_2.b.x, 1000f), vec4<f32>(699f, arg_3.b.x, arg_3.b.x, -342f))).c.x >> (func_2(vec2<i32>(arg_2.d, global0.x)).c % 32u), i32(-1i) * -global0.x), _wgslsmith_dot_vec2_u32(arg_1, _wgslsmith_add_vec2_u32(arg_1, abs(vec2<u32>(81624u, arg_1.x)))), vec4<u32>(firstLeadingBit(4294967295u) >> (arg_1.x % 32u), 0u ^ arg_2.c, ~23457u >> (abs(arg_2.c) % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 17552u), vec2<u32>(arg_3.c, 41919u)), ~arg_1.x)), arg_0.yx >> (arg_1 % vec2<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.b.x))), -2650f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)), arg_3.b.x, true))), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3.b.x - -241f), -342f, 435f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.x, 789f, arg_3.b.x) - vec3<f32>(arg_2.b.x, arg_2.b.x, arg_3.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(arg_3.b.x + _wgslsmith_f_op_f32(276f + arg_3.b.x)), _wgslsmith_f_op_f32(-arg_3.b.x), 413f)));
    var var_2 = 21544i;
    var var_3 = false;
    var var_4 = min(vec4<u32>(~arg_1.x, 58930u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.c, var_1.c, 1017u) & global2[_wgslsmith_index_u32(func_5(true, Struct_2(var_1, 18976u, vec4<u32>(1u, arg_2.c, 0u, var_1.c), vec2<i32>(-27832i, global0.x)), vec3<f32>(arg_2.b.x, -363f, 1290f), Struct_3(vec3<f32>(var_1.b.x, 1000f, 645f), vec4<f32>(-664f, arg_2.b.x, 254f, arg_2.b.x))).c, 6u)], global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 8115u, arg_2.c), vec4<u32>(4294967295u, arg_2.c, arg_1.x, 54564u))), 6u)]), arg_1.x), ~(~abs(vec4<u32>(1u, arg_1.x, 46709u, 49242u))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.b.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1061f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1006f, -572f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2374f + 1081f)))) * _wgslsmith_f_op_f32(f32(-1f) * -539f));
    global2 = array<vec3<u32>, 6>();
    let var_1 = vec4<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(u_input.d, select(~vec2<u32>(1u, 0u), vec2<u32>(1u, 1u), vec2<bool>(false, true)), func_5(false, func_1(var_0, Struct_3(vec3<f32>(-1736f, 633f, -529f), vec4<f32>(var_0, -641f, var_0, 219f))), vec3<f32>(var_0, var_0, -1000f), Struct_3(vec3<f32>(-331f, var_0, var_0), vec4<f32>(var_0, var_0, 623f, var_0))), func_1(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(929f, var_0), 4294967295u, -10645i), Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(var_0, 956f), 4294967295u, -21495i), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(var_0, 2071f), 0u, u_input.a), 11904u, vec4<u32>(1u, 4294967295u, 77830u, 16211u), vec2<i32>(u_input.a, u_input.d.x)))).x, Struct_3(vec3<f32>(var_0, var_0, -1022f), vec4<f32>(var_0, 137f, var_0, var_0))).a)) * _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(var_0, -1611f), 0u, 0i), func_1(_wgslsmith_f_op_f32(func_6(u_input.d, vec2<u32>(66379u, 126386u), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(397f, 214f), 45048u, -1i), Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(var_0, 1609f), 14155u, 2147483647i))), Struct_3(vec3<f32>(2281f, 286f, var_0), vec4<f32>(623f, -1654f, var_0, 1614f))).a, func_1(_wgslsmith_f_op_f32(trunc(-138f)), Struct_3(vec3<f32>(-1045f, var_0, var_0), vec4<f32>(var_0, -938f, 1112f, 184f))))).x), _wgslsmith_f_op_f32(-525f * _wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1411f - 1272f) * -2221f))));
    var var_2 = true;
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-574f, 1229f))));
    var var_3 = !vec3<bool>(false || func_1(_wgslsmith_f_op_f32(-898f * 984f), Struct_3(vec3<f32>(-1463f, 468f, var_1.x), vec4<f32>(444f, -1107f, 525f, 436f))).a.a.x, any(vec3<bool>(true, func_1(var_1.x, Struct_3(vec3<f32>(501f, var_0, -1221f), var_1)).a.a.x, true)), select(func_5(true, Struct_2(Struct_1(vec4<bool>(true, false, true, true), var_1.zz, 1u, -2147483647i), 6503u, vec4<u32>(41046u, 4294967295u, 6737u, 57128u), vec2<i32>(global0.x, u_input.b)), var_1.yxy, Struct_3(var_1.yyx, vec4<f32>(471f, var_1.x, var_1.x, var_1.x))).a.x, true, !all(vec2<bool>(false, false))));
    let var_4 = Struct_2(Struct_1(vec4<bool>(!var_3.x, all(vec2<bool>(var_3.x, var_3.x)), all(func_2(vec2<i32>(-32366i, -50213i)).a.wwz), false), _wgslsmith_f_op_vec2_f32(var_1.yz - var_1.xy), abs(51030u), firstLeadingBit(~func_1(var_1.x, Struct_3(vec3<f32>(var_0, 1878f, var_0), var_1)).a.d)), max(~abs(func_2(u_input.c.xz).c), _wgslsmith_dot_vec3_u32(~(~global2[_wgslsmith_index_u32(2398u, 6u)]), vec3<u32>(~90792u, func_2(u_input.d.xy).c, 1u))), vec4<u32>(57199u, 1u, ~0u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, ~1u), ~func_5(true, Struct_2(Struct_1(vec4<bool>(true, false, var_3.x, true), var_1.xz, 1u, u_input.b), 4294967295u, vec4<u32>(33672u, 0u, 183u, 1u), vec2<i32>(0i, 2147483647i)), var_1.xwx, Struct_3(vec3<f32>(2179f, -448f, var_0), var_1)).c)), u_input.d.xy);
    var var_5 = Struct_2(Struct_1(vec4<bool>(!select(false, var_4.a.a.x, var_3.x), true, var_4.a.a.x, _wgslsmith_f_op_f32(var_4.a.b.x * var_0) > 979f), vec2<f32>(var_0, 532f), ~50028u, min(-_wgslsmith_add_i32(0i, 25219i), var_4.a.d)), var_4.b, vec4<u32>(_wgslsmith_clamp_u32(1u, 1u, min(var_4.a.c, _wgslsmith_mod_u32(90829u, var_4.b))), 11042u, ~(~101832u), 0u), ~func_1(_wgslsmith_f_op_f32(round(-1601f)), Struct_3(var_1.wzz, var_1)).d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, -416f, var_0, var_0))) - _wgslsmith_f_op_vec4_f32(var_1 - var_1))) + vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -214f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(var_5.a, var_4.a, Struct_2(Struct_1(var_5.a.a, vec2<f32>(var_0, var_1.x), var_4.c.x, -1i), var_5.c.x, vec4<u32>(45648u, 0u, var_5.b, 8718u), var_5.d))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))))), ~_wgslsmith_clamp_vec3_u32(min(_wgslsmith_div_vec3_u32(var_4.c.yyy, vec3<u32>(var_4.a.c, 1u, 1u)), vec3<u32>(43319u, var_4.c.x, var_4.a.c)), vec3<u32>(var_4.a.c, 16197u, var_4.a.c) & ~var_5.c.xwx, var_4.c.yyz ^ vec3<u32>(1u, 2730u, var_4.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0, var_0, var_5.a.b.x) + var_1) * var_1))) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 290f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(963f - var_1.x)))), vec3<u32>(_wgslsmith_sub_u32(57672u, var_4.a.c), ~0u, 1u), vec3<f32>(694f, var_0, var_5.a.b.x));
}

