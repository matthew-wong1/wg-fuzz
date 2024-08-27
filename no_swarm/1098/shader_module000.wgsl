struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-508f, -448f, 2127f), vec3<f32>(538f, -507f, -465f), vec3<f32>(677f, -400f, -885f), vec3<f32>(-381f, 281f, -1048f), vec3<f32>(-286f, -758f, -552f), vec3<f32>(221f, 428f, -569f));

var<private> global2: vec3<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32, arg_1: i32) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-271f)) - _wgslsmith_f_op_f32(ceil(-1817f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1385f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(653f, -456f) * _wgslsmith_div_f32(646f, -1330f))) - _wgslsmith_f_op_f32(-766f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1304f, 1147f)))), -140f);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) * var_0.x)) * -374f)));
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = arg_0.x;
    global1 = array<vec3<f32>, 6>();
    var var_1 = Struct_3(Struct_1(global2.x, any(select(vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, false), false)) || (_wgslsmith_div_f32(arg_0.x, var_0) <= -1134f), max(~abs(vec3<u32>(u_input.b, 15065u, 53663u)), (vec3<u32>(44014u, 12524u, u_input.c) >> (vec3<u32>(u_input.b, 52213u, 0u) % vec3<u32>(32u))) >> (max(vec3<u32>(27105u, 14148u, 1u), vec3<u32>(u_input.c, 15558u, 0u)) % vec3<u32>(32u))), ~_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(u_input.b, u_input.c)), max(vec2<u32>(41277u, 0u), vec2<u32>(0u, u_input.b))), vec2<u32>(_wgslsmith_mod_u32(u_input.c ^ u_input.c, 12601u), 29330u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f))), vec3<i32>(countOneBits(0i), firstLeadingBit(-35678i) | -select(1i, -70415i, true), u_input.d.x));
    global2 = select(vec3<bool>(!(min(4294967295u, u_input.b) >= ~var_1.a.c.x), !(u_input.d.x == (17003i | global0[_wgslsmith_index_u32(64939u, 16u)])), any(select(!vec4<bool>(true, var_1.a.b, false, false), vec4<bool>(global2.x, var_1.a.a, false, var_1.a.a), select(vec4<bool>(false, global2.x, global2.x, true), vec4<bool>(global2.x, var_1.a.a, global2.x, var_1.a.a), vec4<bool>(false, global2.x, false, global2.x))))), select(!(!vec3<bool>(global2.x, true, true)), vec3<bool>(global2.x && any(vec4<bool>(var_1.a.a, global2.x, global2.x, var_1.a.a)), !var_1.a.a, true), false), select(vec3<bool>(global2.x, global2.x, any(select(vec2<bool>(var_1.a.b, var_1.a.a), global2.zx, vec2<bool>(var_1.a.a, var_1.a.b)))), select(vec3<bool>(true, global2.x, true), select(vec3<bool>(global2.x, false, true), !vec3<bool>(var_1.a.b, var_1.a.a, true), var_1.a.b), true), any(global2.yz)));
    let var_2 = Struct_3(Struct_1(all(global2.zy), select(all(!vec3<bool>(global2.x, false, var_1.a.a)), false || (true | var_1.a.a), global2.x | global2.x), ~var_1.a.c, var_1.a.c.xx, ~(~(~var_1.a.c.zy))), -1065f, ~_wgslsmith_clamp_vec3_i32(var_1.c, _wgslsmith_mult_vec3_i32(abs(var_1.c), reverseBits(var_1.c)), var_1.c));
    return vec3<u32>(countOneBits(countOneBits(firstTrailingBit(var_1.a.d.x) | u_input.b)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.b >> (1u % 32u), u_input.c, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.d.x, var_2.a.e.x, var_2.a.d.x, var_1.a.e.x), vec4<u32>(u_input.b, var_1.a.c.x, 0u, 4294967295u)))), var_2.a.e.x), 4294967295u);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>) -> vec4<u32> {
    global1 = array<vec3<f32>, 6>();
    let var_0 = vec4<bool>(select(true, !global2.x && true, arg_0.a.a), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.c.x, 20638u, 27509u, 0u) ^ vec4<u32>(arg_0.a.d.x, arg_0.a.e.x, arg_0.a.c.x, arg_0.a.c.x), ~reverseBits(vec4<u32>(arg_0.a.e.x, u_input.c, 78320u, u_input.c))) <= ~1u, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - 766f))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-52697i, 22738i))), -685f)));
    let var_1 = u_input.b;
    let var_2 = func_3(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + -1195f)), _wgslsmith_div_f32(-842f, _wgslsmith_f_op_f32(round(arg_0.b))))) & arg_0.a.c;
    var var_3 = Struct_2(-1306f, Struct_1(true, false, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.a.c, vec3<u32>(var_1, 4294967295u, 11406u)), 0u, u_input.b), var_2), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, firstLeadingBit(var_1)), ~_wgslsmith_div_vec2_u32(var_2.xx, vec2<u32>(var_2.x, 4294967295u))), ~vec2<u32>(4294967295u, 64015u) | vec2<u32>(40133u, var_1 << (var_2.x % 32u))));
    return ~(~(select(~vec4<u32>(var_2.x, 2440u, var_2.x, 1u), ~vec4<u32>(var_2.x, 4294967295u, 1u, 4294967295u), all(vec2<bool>(var_0.x, true))) & vec4<u32>(firstLeadingBit(54171u), _wgslsmith_dot_vec3_u32(vec3<u32>(19050u, 1u, 39280u), vec3<u32>(var_2.x, var_2.x, var_3.b.e.x)), var_2.x, var_3.b.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<bool>(any(!(!select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(false, global2.x, false), global2.x))), 1f <= _wgslsmith_f_op_f32(ceil(-1071f)), global2.x);
    global1 = array<vec3<f32>, 6>();
    var var_0 = vec3<i32>(firstTrailingBit(29211i), 1i, u_input.a);
    var var_1 = ~(~_wgslsmith_sub_vec4_u32(func_1(Struct_3(Struct_1(true, false, vec3<u32>(u_input.c, 16840u, 1u), vec2<u32>(u_input.b, 4294967295u), vec2<u32>(1u, 0u)), 856f, vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)], -16535i)), u_input.a, vec4<i32>(var_0.x, 31027i, global0[_wgslsmith_index_u32(0u, 16u)], var_0.x)) >> (vec4<u32>(u_input.c, 4294967295u, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<u32>(15770u, u_input.c, u_input.b, 38248u) & ~vec4<u32>(58436u, 20571u, u_input.c, 13793u)));
    var var_2 = vec4<i32>(var_0.x, reverseBits(4823i), -select(u_input.d.x, _wgslsmith_div_i32(-9126i, 10313i), true), -1i);
    let var_3 = abs(max(vec2<u32>(_wgslsmith_dot_vec2_u32(min(var_1.yz, vec2<u32>(0u, 4294967295u)), firstTrailingBit(var_1.yy)), 1u), vec2<u32>(~var_1.x, firstLeadingBit(u_input.c)) << ((~var_1.xz << (~var_1.wx % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_4 = 1969f;
    var var_5 = Struct_2(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(304f, -2523f) - _wgslsmith_f_op_f32(max(-1723f, -1529f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(475f, 782f)) + _wgslsmith_f_op_f32(max(-3289f, 1543f))))), Struct_1(any(select(vec3<bool>(true, global2.x, false), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, false, global2.x), vec3<bool>(true, global2.x, false)), select(vec3<bool>(false, true, false), vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, true, true)))), false, vec3<u32>(u_input.b, firstTrailingBit(0u), abs(1u)), vec2<u32>(~61170u, var_1.x), _wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(var_3, vec2<u32>(var_3.x, 9848u)), vec2<u32>(11716u, ~u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_vec2_u32(var_5.b.d, firstLeadingBit(~vec2<u32>(1u, u_input.b))), vec2<u32>(69697u, var_1.x)));
}

