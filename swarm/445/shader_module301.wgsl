struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
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

var<private> global0: vec2<bool>;

var<private> global1: vec2<i32>;

var<private> global2: u32 = 49666u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = vec3<u32>(49967u, 1u, 1u);
    let var_1 = _wgslsmith_mult_u32(max(var_0.x, var_0.x), 46018u) >> (95246u % 32u);
    var var_2 = vec2<i32>(abs(arg_1.a.c.x), 11880i);
    var_0 = firstTrailingBit(vec3<u32>(var_1, select(32026u, 4294967295u, arg_1.a.d) >> (abs(4294967295u) % 32u), abs(_wgslsmith_mult_u32(0u, 1u)))) >> (max(select(vec3<u32>(var_0.x, var_0.x, var_0.x), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, 39962u, 14402u), vec3<u32>(var_1, 1u, 1u))), vec3<bool>(arg_2, global0.x & true, 1i < u_input.a.x)), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 28115u, var_1), vec3<u32>(var_0.x, var_1, 13502u))) % vec3<u32>(32u));
    var_0 = vec3<u32>(var_0.x, 29225u, 9943u);
    return vec3<i32>(reverseBits(_wgslsmith_dot_vec4_i32(~u_input.a, vec4<i32>(~arg_3.x, ~(-1i), 18734i & global1.x, arg_3.x))), var_2.x, -1i >> ((~var_0.x | var_1) % 32u));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = true;
    global0 = select(vec2<bool>(!global0.x, true), vec2<bool>(all(!vec2<bool>(var_0, global0.x)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 0i), arg_0) != 4148i), select(!(!select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, false))), select(select(vec2<bool>(var_0, global0.x), vec2<bool>(var_0, var_0), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), false)), vec2<bool>(var_0, false), -1295f > _wgslsmith_f_op_f32(floor(811f))), vec2<bool>(true, true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(500f, 579f) * vec2<f32>(920f, -640f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-375f, 701f)))) - vec2<f32>(-1377f, _wgslsmith_f_op_f32(select(-202f, 174f, global0.x))))), select(arg_0, -(select(vec2<i32>(-31363i, -2147483647i), arg_0, vec2<bool>(false, global0.x)) >> (select(arg_1, arg_1, vec2<bool>(var_0, global0.x)) % vec2<u32>(32u))), true & all(!vec2<bool>(var_0, var_0))), u_input.a.yx & ~vec2<i32>(17376i, arg_0.x ^ u_input.a.x), select(true, !(~4294967295u == arg_1.x), true));
    global1 = vec2<i32>(var_1.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(func_3(vec3<f32>(var_1.a.x, 245f, var_1.a.x), Struct_2(Struct_1(var_1.a, vec2<i32>(6717i, u_input.a.x), var_1.c, global0.x), var_1.a), var_1.d, u_input.a.xy) ^ (u_input.a.xyw & vec3<i32>(-33183i, var_1.c.x, -29301i)), -vec3<i32>(arg_0.x, u_input.a.x, -1i)), ~min(vec3<i32>(-21209i, 41741i, 17201i), vec3<i32>(-59714i, var_1.b.x, u_input.a.x) & vec3<i32>(arg_0.x, -11216i, -1i))));
    global0 = vec2<bool>(true, any(select(!select(vec2<bool>(var_0, var_0), vec2<bool>(false, true), vec2<bool>(var_0, global0.x)), vec2<bool>(0i > global1.x, true), vec2<bool>(true, true))));
    return vec4<bool>(abs(var_1.b.x << (_wgslsmith_sub_u32(arg_1.x, arg_1.x) % 32u)) >= _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, 31135i, var_1.b.x), func_3(vec3<f32>(var_1.a.x, var_1.a.x, 763f), Struct_2(Struct_1(var_1.a, arg_0, vec2<i32>(2147483647i, 15172i), false), vec2<f32>(-188f, var_1.a.x)), false, var_1.c)), abs(u_input.a.zww) >> (vec3<u32>(68667u, arg_1.x, 26704u) % vec3<u32>(32u))), var_0, !(!(var_1.d | true) & any(select(vec3<bool>(false, global0.x, true), vec3<bool>(var_1.d, var_0, global0.x), vec3<bool>(false, false, var_1.d)))), !(_wgslsmith_sub_i32(global1.x, u_input.a.x & 2147483647i) > _wgslsmith_clamp_i32(~2147483647i, 2147483647i, 57507i)));
}

fn func_1() -> Struct_1 {
    var var_0 = ~select(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, 58207u, 13348u, 0u)), firstLeadingBit(vec4<u32>(1u, 66992u, 20266u, 1u))), ~(~vec4<u32>(34340u, 4294967295u, 4294967295u, 4294967295u)), func_2(u_input.a.xy, vec2<u32>(1u, 1u)));
    var var_1 = global1.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2643f, -3163f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(702f, 336f) * _wgslsmith_div_vec2_f32(vec2<f32>(1667f, 502f), vec2<f32>(616f, 1177f))))), firstTrailingBit(vec2<i32>(-29123i, 1i)), abs(vec2<i32>(u_input.a.x ^ global1.x, global1.x)), u_input.a.x < (30363i & -global1.x)), vec2<f32>(_wgslsmith_f_op_f32(-1552f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(100f)), _wgslsmith_f_op_f32(min(-616f, 1477f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(786f * -676f)))));
    var_1 = global1.x << (var_0.x % 32u);
    var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), vec4<u32>(0u, 1u, 0u, 35064u)), ~vec4<u32>(36892u, var_0.x, var_0.x, 15581u)) >> (0u % 32u), var_0.x, ~(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, var_0.x), ~14050u) << (var_0.x % 32u)), ~(~var_0.x | ~(~var_0.x)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 1597f)) + _wgslsmith_f_op_f32(-1000f + var_2.a.a.x)), _wgslsmith_f_op_f32(sign(var_2.b.x)))), countOneBits(vec2<i32>(abs(var_2.a.b.x), firstTrailingBit(~(-1i)))), func_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a.x, var_2.b.x, var_2.a.a.x) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-976f, var_2.a.a.x, 264f), vec3<f32>(-691f, var_2.b.x, var_2.a.a.x), global0.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-159f, var_2.a.a.x, var_2.a.a.x))))), var_2, global0.x, _wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, 0i), u_input.a.xw | vec2<i32>(u_input.a.x, -9141i))).xy, global0.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(arg_2.a.x)), _wgslsmith_f_op_f32(arg_2.a.x - func_1().a.x));
    global2 = _wgslsmith_sub_u32(99519u, select(abs(1u), 1u, arg_0.x));
    var var_1 = ~(~(firstLeadingBit(4294967295u) >> (1u % 32u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(416u, 58624u, 1u))));
    var_1 = min(select(_wgslsmith_mult_u32(1u, 27252u), firstTrailingBit(88109u), any(arg_0)), 85105u);
    global0 = arg_0;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(select(!global0.x, global0.x || false, true), false);
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-247f, -582f) + vec2<f32>(-447f, 2194f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-863f, -237f) * vec2<f32>(2063f, -542f))))), ~vec2<i32>(1i, 9812i), u_input.a.yy, any(!vec3<bool>(true, false, global0.x))), vec2<f32>(-580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-845f, 394f)) - _wgslsmith_f_op_f32(-171f * -162f)) - _wgslsmith_f_op_f32(f32(-1f) * -558f))));
    let var_1 = func_4(!vec2<bool>(global0.x, any(!vec3<bool>(false, global0.x, global0.x))), var_0, func_1(), true || global0.x);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_0.b.x), vec2<f32>(-175f, -224f), select(vec2<bool>(false, var_1.a.d), vec2<bool>(false, false), vec2<bool>(true, global0.x))))), vec2<i32>(var_0.a.b.x, abs(1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a.b.x, reverseBits(var_1.a.b.x)), select(countOneBits(vec2<i32>(-1i, 2147483647i)), vec2<i32>(var_0.a.c.x, global1.x), select(vec2<bool>(var_0.a.d, false), vec2<bool>(var_1.a.d, var_0.a.d), vec2<bool>(false, global0.x)))), var_1.a.d), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~2147483647i, -select(-2147483647i, var_1.a.b.x >> (54432u % 32u), !var_0.a.d), ~var_2.a.b.x, max(~u_input.a.x | var_1.a.c.x, _wgslsmith_add_i32(-31228i, ~15133i))), vec3<i32>(-global1.x, var_2.a.c.x, var_0.a.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-874f, 1118f, var_2.a.a.x, var_2.a.a.x) + vec4<f32>(-1583f, var_1.b.x, -132f, -567f)))))), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, _wgslsmith_add_u32(1u, 70850u), reverseBits(1u)), vec3<u32>(~(1u << (0u % 32u)), 23017u >> (1u % 32u), 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.a.x * -759f), _wgslsmith_f_op_f32(var_2.b.x - 725f), _wgslsmith_f_op_f32(var_1.a.a.x - -1193f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, var_0.a.a.x, 568f)))))));
}

