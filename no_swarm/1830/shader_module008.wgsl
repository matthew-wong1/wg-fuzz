struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> i32 {
    var var_0 = ~(((firstLeadingBit(u_input.c) >> (1u % 32u)) << (reverseBits(u_input.b.x) % 32u)) >> (0u % 32u));
    var_0 = 3398u;
    var_0 = 50250u;
    var var_1 = arg_0.b.a;
    let var_2 = vec3<i32>(_wgslsmith_clamp_i32(-8601i, 1722i, 59826i << ((_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) << (1u % 32u)) % 32u)), arg_0.d.x, ~arg_0.b.b.x);
    return i32(-1i) * -7948i;
}

fn func_2() -> bool {
    global0 = array<Struct_2, 12>();
    var var_0 = false;
    var_0 = (func_3(global0[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.d.x, -6414i, u_input.e.x), vec4<i32>(u_input.d.x, 79522i, -2147483647i, u_input.e.x)), vec4<i32>(u_input.e.x, u_input.e.x, 2147483647i, 16425i))) >> ((_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.c, 4294967295u, u_input.a.x, 1u)) ^ 37271u) % 32u)) != -u_input.d.x;
    var var_1 = vec4<i32>(15811i, _wgslsmith_mod_i32(min(u_input.e.x, 0i), -1088i), _wgslsmith_add_i32(_wgslsmith_mult_i32(i32(-1i) * -30465i, _wgslsmith_div_i32(func_3(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], vec4<i32>(u_input.e.x, u_input.d.x, u_input.d.x, -1i)), _wgslsmith_mult_i32(u_input.e.x, 1i))), ~u_input.d.x), -1i ^ -select(u_input.d.x, 1i, true));
    global0 = array<Struct_2, 12>();
    return true & (abs(firstTrailingBit(~u_input.e.x)) < abs(~var_1.x));
}

fn func_1(arg_0: vec4<u32>) -> Struct_4 {
    var var_0 = vec2<bool>(any(vec3<bool>(false, func_2(), any(vec4<bool>(true, false, true, false)))), false);
    let var_1 = Struct_3(u_input.e.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1927f, -617f, -651f), vec3<f32>(-723f, -2030f, 1579f))))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.d.x, u_input.d.x, u_input.e.x), reverseBits(vec4<i32>(u_input.d.x, 12738i, u_input.d.x, -1i))))), min(vec4<i32>(u_input.d.x, -7623i, u_input.e.x, u_input.d.x), vec4<i32>(-51131i, 3442i, u_input.e.x, 11355i)) << ((vec4<u32>(0u, 47888u, ~u_input.b.x, _wgslsmith_dot_vec4_u32(arg_0, u_input.a)) | u_input.a) % vec4<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-114f * _wgslsmith_f_op_f32(f32(-1f) * -567f))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1225f * 1000f), _wgslsmith_f_op_f32(abs(1052f)), -988f), select(_wgslsmith_add_vec4_i32(vec4<i32>(6210i, 40921i, -26058i, 2147483647i), vec4<i32>(u_input.d.x, u_input.e.x, 85979i, -28748i)), ~vec4<i32>(37629i, u_input.d.x, u_input.d.x, u_input.e.x), true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-886f, -1966f, -2018f))), vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, 21020i, u_input.e.x, u_input.e.x)), u_input.d));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(select(var_1.d.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-973f, var_1.d.c.a.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.a.x)))), select(true, var_0.x, var_0.x))), var_1.d.b.b.wyx, vec4<i32>(firstTrailingBit(max(-75i, u_input.e.x)), 0i, firstLeadingBit(-(~(-57678i))), var_1.c.x), select(vec2<bool>(select(!var_0.x, any(vec3<bool>(false, true, var_0.x)), var_0.x), true), vec2<bool>(var_0.x, all(vec2<bool>(var_0.x, var_0.x))), vec2<bool>(false, _wgslsmith_clamp_i32(-1i, -28845i, 23622i) > min(0i, var_1.d.c.b.x))));
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u << (arg_0.x % 32u), min(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 15043u), vec2<u32>(8606u, arg_0.x)))), u_input.a.x, arg_0.x, 4294967295u), ~(~vec4<u32>(~arg_0.x, arg_0.x | arg_0.x, _wgslsmith_dot_vec4_u32(arg_0, arg_0), u_input.b.x & arg_0.x)));
    let var_4 = _wgslsmith_div_f32(-872f, var_2.a);
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1983f) + _wgslsmith_f_op_f32(abs(1000f))), -var_1.b.b.xzy, var_1.d.b.b, select(var_2.d, var_2.d, vec2<bool>(var_0.x, 164f != var_2.a)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = vec4<bool>(arg_0.d.x, !arg_0.d.x, any(vec4<bool>(true, arg_2.a <= arg_2.b.a.x, !any(vec3<bool>(false, arg_0.d.x, true)), true)), !((arg_0.a == _wgslsmith_div_f32(arg_2.c.a.x, arg_2.c.a.x)) | true));
    var var_1 = select(_wgslsmith_mod_i32(-1i, arg_2.d.x), _wgslsmith_clamp_i32(func_1(max(u_input.a, u_input.a)).c.x, -_wgslsmith_mod_i32(u_input.e.x, arg_0.c.x), arg_1.x) & abs(1i), true);
    let var_2 = ~(~(~u_input.a));
    let var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a))))), _wgslsmith_f_op_f32(f32(-1f) * -1195f)), arg_2.b, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(365f, _wgslsmith_f_op_f32(1016f - -109f), _wgslsmith_f_op_f32(arg_0.a * -1125f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_2.b.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_2.c.a.x, arg_0.a)))), arg_0.c), _wgslsmith_mod_vec2_i32(arg_1.xz, arg_0.b.yz));
    let var_4 = global0[_wgslsmith_index_u32(1u, 12u)];
    return Struct_3(var_3.d.x, arg_2.b, max(var_4.c.b, arg_0.c), Struct_2(_wgslsmith_f_op_f32(func_1(vec4<u32>(50584u, 1u, 0u, 1u) & u_input.a).a * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(347f, arg_0.a), _wgslsmith_f_op_f32(2130f - -206f)))), var_3.b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -359f), var_4.a, _wgslsmith_f_op_f32(-var_3.a)), func_1(vec4<u32>(4294967295u, var_2.x, 0u, 77468u)).c >> ((vec4<u32>(0u, 1u, u_input.a.x, var_2.x) & vec4<u32>(13923u, u_input.c, var_2.x, 60965u)) % vec4<u32>(32u))), -_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 0i) & arg_1.yz, vec2<i32>(arg_0.b.x, arg_0.c.x))));
}

fn func_5(arg_0: Struct_3) -> u32 {
    let var_0 = func_4(func_1(vec4<u32>(~(~u_input.c), abs(89023u), u_input.b.x, u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(45766i), u_input.e.x, u_input.d.x), vec3<i32>(~_wgslsmith_mult_i32(15170i, u_input.d.x), u_input.d.x, 1139i)), global0[_wgslsmith_index_u32(abs(~u_input.c), 12u)]).d;
    var var_1 = func_4(Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1385f - 1000f))), vec3<i32>(-(u_input.e.x | u_input.d.x), _wgslsmith_div_i32(-var_0.c.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.b.x, u_input.d.x), vec2<i32>(u_input.d.x, u_input.d.x))), ~(~arg_0.d.c.b.x)), vec4<i32>(var_0.b.b.x, i32(-1i) * -2147483647i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.a), arg_0.b.b.yy), -482i), (var_0.c.b.x >> (0u % 32u)) >> (_wgslsmith_sub_u32(65710u, 1u) % 32u)), vec2<bool>(true, true)), _wgslsmith_clamp_vec3_i32(u_input.e, select(var_0.b.b.wyy, countOneBits(-arg_0.c.yyz), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), vec3<i32>(countOneBits(u_input.e.x), ~countOneBits(7349i), -981i)), Struct_2(func_4(func_1(vec4<u32>(u_input.c, u_input.b.x, 29921u, 12594u)), arg_0.d.b.b.wzx, arg_0.d).b.a.x, var_0.b, arg_0.b, u_input.d)).b;
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(abs(_wgslsmith_mod_i32(-47550i, -39845i)), 14954i, ~arg_0.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.d.b.b.x, abs(_wgslsmith_add_i32(-761i, arg_0.c.x)), u_input.e.x), _wgslsmith_div_vec3_i32(arg_0.b.b.yyw, vec3<i32>(2147483647i, 0i, func_3(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], vec4<i32>(23123i, arg_0.a, -12041i, 19438i)))), -vec3<i32>(var_1.b.x, -8562i, _wgslsmith_add_i32(var_0.b.b.x, 0i))));
    var var_3 = Struct_3(-23960i, func_4(Struct_4(var_1.a.x, arg_0.c.xwy, abs(-var_1.b), vec2<bool>(all(vec2<bool>(false, false)), true)), vec3<i32>(func_1(vec4<u32>(1u, 4294967295u, 4294967295u, u_input.c)).b.x, var_0.c.b.x, var_2.x), arg_0.d).b, select(min(arg_0.c, ~select(vec4<i32>(87908i, u_input.e.x, var_2.x, 2147483647i), vec4<i32>(arg_0.d.d.x, 2147483647i, 1i, var_1.b.x), vec4<bool>(true, true, false, false))), var_1.b, true), arg_0.d);
    return countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.a, select(u_input.a, vec4<u32>(u_input.c, 41692u, 10437u, u_input.b.x), vec4<bool>(true, false, true, true))), u_input.c), vec4<u32>(39094u, u_input.c, ~max(u_input.c, 21879u), ~(~43197u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(max(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 7562u, 1u, u_input.a.x), u_input.a)), _wgslsmith_div_u32(firstLeadingBit(u_input.b.x), ~(~54505u)), !(u_input.c > u_input.c) | !any(vec2<bool>(false, false))), min(func_5(func_4(func_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.d.x, u_input.e.x, u_input.e.x), Struct_2(-738f, Struct_1(vec3<f32>(-164f, -642f, 2435f), vec4<i32>(-1i, -2147483647i, u_input.e.x, 1i)), Struct_1(vec3<f32>(-656f, -329f, 1059f), vec4<i32>(-2147483647i, -1i, 2147483647i, u_input.d.x)), vec2<i32>(u_input.e.x, -25638i)))), u_input.a.x)), 12u)];
    global0 = array<Struct_2, 12>();
    var var_1 = true;
    var_1 = !((_wgslsmith_f_op_f32(-var_0.b.a.x) < func_1(~u_input.a).a) != (-701f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2090f * 741f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(172f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * 487f), var_0.c.a.x));
    let var_3 = func_4(func_1(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.c), ~1u, 1u), firstTrailingBit(reverseBits(67463u)), u_input.c, u_input.b.x & 4294967295u)), var_0.c.b.yyx, Struct_2(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1208f, 1447f)))), var_0.c, var_0.b, -(~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.d.x), vec2<i32>(u_input.e.x, 28842i)))));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a.x)), ~vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, var_0.b.b.x, var_3.d.d.x), vec3<i32>(0i, var_0.b.b.x, var_0.d.x), false), var_0.b.b.xwx >> (vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u))), abs(19019i | u_input.d.x), 10692i), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-27784i, -var_3.b.b.x), 2147483647i, abs(var_3.d.b.b.x) ^ -2147483647i, -47931i), var_3.d.c.b), vec2<bool>(any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true))), true));
    let var_5 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-616f, var_4.a, var_2.x, 428f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.a.x, -313f, var_5, -1134f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, 658f, var_5, var_0.b.a.x)))))));
}

