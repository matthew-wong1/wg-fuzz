struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 73231u;

var<private> global1: array<vec3<f32>, 19>;

var<private> global2: array<vec2<bool>, 1>;

var<private> global3: array<vec2<u32>, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    global2 = array<vec2<bool>, 1>();
    let var_0 = !(!arg_0);
    global3 = array<vec2<u32>, 19>();
    var var_1 = vec4<bool>(min(_wgslsmith_sub_u32(abs(4294967295u), 4294967295u), _wgslsmith_clamp_u32(~u_input.c.x, 0u, 4294967295u)) <= 55302u, 332f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1420f)) * 792f) * _wgslsmith_f_op_f32(-537f + 626f)), !arg_0, var_0);
    var_1 = select(select(!select(!vec4<bool>(false, var_0, false, var_1.x), !vec4<bool>(var_1.x, false, false, true), !vec4<bool>(arg_0, true, arg_0, false)), vec4<bool>(arg_0, !(arg_0 || arg_0), false, !var_1.x), vec4<bool>(true, false, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x) != abs(19324u), true)), select(vec4<bool>((arg_0 | var_1.x) | (false || var_0), all(vec3<bool>(false, arg_0, false)), true, var_0), vec4<bool>(true, all(!vec4<bool>(false, true, true, var_1.x)), select(var_0, all(vec3<bool>(true, true, var_0)), var_1.x), true || !var_1.x), select(select(!vec4<bool>(arg_0, var_1.x, var_0, false), vec4<bool>(true, var_1.x, false, true), select(vec4<bool>(var_1.x, arg_0, true, arg_0), vec4<bool>(arg_0, var_0, false, true), var_0)), !select(vec4<bool>(arg_0, false, var_0, false), vec4<bool>(true, arg_0, arg_0, false), var_1.x), any(!vec4<bool>(true, var_1.x, false, arg_0)))), vec4<bool>(var_0, var_0 || true, !all(vec4<bool>(true, true, arg_0, true)) & true, all(vec4<bool>(arg_0 && var_0, all(vec2<bool>(var_0, false)), var_0, any(vec4<bool>(false, var_0, true, var_0))))));
    return ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c, countOneBits(vec3<u32>(1u, 78905u, 1u))), abs(~u_input.c)));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = select(true, true, ~_wgslsmith_add_u32(1u & arg_0.x, u_input.c.x) != 4294967295u);
    var var_1 = Struct_4(~vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), u_input.c.x, _wgslsmith_add_u32(1860u, 0u), func_3(false)), select(min(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_add_i32(u_input.d, -2147483647i)), -55743i, var_0) & -32920i, vec4<bool>(true, !select(true, !var_0, any(vec3<bool>(var_0, true, var_0))), false, true), (u_input.e << (countOneBits(arg_0.x) % 32u)) >> (~firstTrailingBit(_wgslsmith_clamp_u32(arg_0.x, 70267u, u_input.c.x)) % 32u), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(1876f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(108f, -1387f)), _wgslsmith_f_op_f32(-1085f * 1000f)))), Struct_1(abs(~u_input.c.x), var_0), _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0.x, 4294967295u) & ~arg_0.x, arg_0.x), Struct_1(0u, !var_0)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(326f - var_1.e.a.x))))), 272f, var_1.e.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.a.x + -125f)))));
    var_1 = Struct_4(~countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1.a.x, var_1.a.x, u_input.c.x), vec4<u32>(arg_0.x, arg_0.x, 27901u, 14322u)) << (~var_1.a % vec4<u32>(32u))), -u_input.a.x, !(!var_1.c), -4574i, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -544f), var_2.x)), var_1.e.d, 26498u, Struct_1(u_input.c.x, (var_0 != var_1.e.d.b) && !var_0)));
    let var_3 = var_1.a.x;
    return 429f;
}

fn func_1() -> vec3<f32> {
    let var_0 = firstTrailingBit(select(abs(~4294967295u), ~(~0u), _wgslsmith_f_op_f32(f32(-1f) * -681f) > _wgslsmith_f_op_f32(func_2(~global3[_wgslsmith_index_u32(0u, 19u)]))));
    global3 = array<vec2<u32>, 19>();
    global0 = var_0;
    global3 = array<vec2<u32>, 19>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-785f, 691f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1558f, -877f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 470f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -707f), -197f))), vec2<bool>(true, true))), Struct_1(20836u, true), firstLeadingBit(~var_0), Struct_1(var_0, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-574f))) - -228f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-501f, _wgslsmith_f_op_f32(abs(var_1.a.x)), !var_1.d.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(548f - var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>) -> Struct_4 {
    global1 = array<vec3<f32>, 19>();
    var var_0 = reverseBits(u_input.c.x);
    let var_1 = ~(~(~(~u_input.b.xzy)));
    let var_2 = Struct_3(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x + arg_0.x))) + 328f)), u_input.d, false);
    var_0 = reverseBits(~u_input.c.x);
    return Struct_4(vec4<u32>(~(~u_input.c.x), var_2.a, u_input.c.x, var_2.a) & (~(vec4<u32>(1u, 64481u, 1u, u_input.c.x) << (vec4<u32>(var_2.a, u_input.c.x, 4294967295u, 4294967295u) % vec4<u32>(32u))) << (select(min(vec4<u32>(u_input.c.x, 105915u, u_input.c.x, var_2.a), vec4<u32>(var_2.a, u_input.c.x, u_input.c.x, var_2.a)), ~vec4<u32>(0u, 6340u, 63070u, 0u), false) % vec4<u32>(32u))), _wgslsmith_mod_i32(var_2.c, min(~_wgslsmith_add_i32(19575i, var_1.x), ~_wgslsmith_clamp_i32(u_input.d, u_input.b.x, -19659i))), !select(!(!vec4<bool>(var_2.d, var_2.d, true, false)), vec4<bool>(true, -47301i > var_1.x, !var_2.d, any(vec4<bool>(true, false, var_2.d, var_2.d))), select(vec4<bool>(true, var_2.d, true, var_2.d), vec4<bool>(true, var_2.d, var_2.d, true), true)), ~_wgslsmith_mult_i32(-31620i, var_2.c) >> (reverseBits(var_2.a) % 32u), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xz) * arg_1.zx), Struct_1(~var_2.a >> (4294967295u % 32u), var_2.d), 1u, Struct_1(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.a), vec2<u32>(var_2.a, 1u))), (u_input.a.x | 1i) != -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(func_1()));
    var var_1 = var_0.e.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x ^ ~30740u, 17326u, ~_wgslsmith_div_vec3_u32(u_input.c, var_0.a.yzz) >> (~var_0.a.yyw % vec3<u32>(32u)), 538f);
}

