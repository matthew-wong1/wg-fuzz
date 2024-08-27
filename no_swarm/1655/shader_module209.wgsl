struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(true));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true), 1i, 361f, 0i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_1.a;
    let var_1 = _wgslsmith_f_op_f32(arg_3.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1222f * _wgslsmith_div_f32(733f, arg_0))))));
    return ~0i;
}

fn func_3(arg_0: i32) -> vec4<u32> {
    var var_0 = select(vec2<bool>(true, true), select(select(!vec2<bool>(global1.a.x, global1.a.x), select(select(global1.a.xz, vec2<bool>(false, true), vec2<bool>(global1.a.x, global1.a.x)), global1.a.xx, vec2<bool>(global1.a.x, global1.a.x)), select(global1.a.xx, select(global1.a.yz, vec2<bool>(true, true), vec2<bool>(true, global1.a.x)), true)), global1.a.xz, vec2<bool>(any(vec4<bool>(global1.a.x, false, true, true)), true)), vec2<bool>(any(vec4<bool>(true, global1.a.x, all(vec4<bool>(global1.a.x, true, false, global1.a.x)), !global1.a.x)), any(select(!global1.a.xy, !global1.a.yz, global1.a.xy))));
    global0 = array<Struct_5, 4>();
    var_0 = !select(vec2<bool>(var_0.x && (29043i > u_input.c), all(select(vec3<bool>(global1.a.x, global1.a.x, var_0.x), vec3<bool>(true, global1.a.x, false), global1.a.x))), !select(select(global1.a.zz, vec2<bool>(true, true), global1.a.xz), vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, false)), select(!select(vec2<bool>(true, false), global1.a.xz, global1.a.x), select(vec2<bool>(true, true), select(global1.a.yz, global1.a.xx, vec2<bool>(global1.a.x, var_0.x)), vec2<bool>(true, false)), global1.a.zy));
    var var_1 = Struct_2(Struct_1(!vec3<bool>(true, true, any(global1.a)), reverseBits(min(firstLeadingBit(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1.b, -11127i), vec3<i32>(u_input.c, global1.d, global1.d)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-238f, 935f), _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(min(global1.c, 1013f)))), arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global1.c)))) - _wgslsmith_f_op_f32(global1.c + 1357f)))), Struct_1(!(!global1.a), reverseBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 2147483647i, u_input.c), vec3<i32>(arg_0, arg_0, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1048f + global1.c) - 1000f), min((i32(-1i) * -20501i) | arg_0, u_input.c)), Struct_1(select(global1.a, global1.a, select(vec3<bool>(false, true, global1.a.x), !global1.a, !vec3<bool>(false, global1.a.x, false))), _wgslsmith_clamp_i32(2147483647i, firstLeadingBit(~2147483647i), _wgslsmith_mult_i32(u_input.c, arg_0) | 12422i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-global1.c))), -758f)), _wgslsmith_mult_i32(~(arg_0 >> (1u % 32u)), u_input.c)), true);
    var var_2 = all(vec3<bool>(any(select(!vec3<bool>(true, var_1.d.a.x, var_0.x), vec3<bool>(var_0.x, false, false), false)), !select(true, true, var_0.x && var_0.x), any(var_1.c.a.zy)));
    return _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, 39940u, 1u, u_input.b.x >> (52490u % 32u)), vec4<u32>(89846u, u_input.b.x, u_input.a, 1u), !select(vec4<bool>(var_1.e, true, false, false), vec4<bool>(global1.a.x, global1.a.x, var_0.x, true), var_1.e)), vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(2842u, 52629u)), _wgslsmith_add_u32(u_input.b.x << (0u % 32u), ~37717u), ~reverseBits(0u), ~0u)), u_input.b);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_div_vec4_u32(u_input.b, func_3(global1.b) ^ reverseBits(vec4<u32>(_wgslsmith_mult_u32(0u, u_input.a), ~u_input.a, 1u, ~u_input.a)));
    let var_1 = Struct_1(vec3<bool>(!global1.a.x, select(!all(vec3<bool>(false, global1.a.x, global1.a.x)), global1.a.x, true), !select(true, any(global1.a), global1.a.x)), ~1i, global1.c, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(5093i, 0i)), vec2<i32>(global1.d | -1i, ~(-9577i))), 18391i));
    var var_2 = vec3<bool>(-334f <= _wgslsmith_f_op_f32(ceil(-357f)), true, global1.a.x);
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -715f, -1092f)), !select(var_1.a.x, var_2.x, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(var_1.c, global1.c, 1000f, -256f), vec4<bool>(false, global1.a.x, var_1.a.x, true))) + _wgslsmith_f_op_vec4_f32(round(arg_0))))))), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(trunc(1000f))), 326f))), u_input.b.x >> (_wgslsmith_dot_vec2_u32(~var_0.zy, _wgslsmith_mod_vec2_u32(~u_input.b.zy, firstLeadingBit(u_input.b.zz))) % 32u), vec4<bool>(true, global1.a.x, true, all(vec2<bool>(all(vec4<bool>(true, true, false, false)), true))), Struct_2(Struct_1(select(global1.a, vec3<bool>(false, false, false), true), 2147483647i, 1082f, firstTrailingBit(arg_2.x)), global1.c, Struct_1(var_1.a, 10982i, -161f, ~0i), var_1, true));
    global0 = array<Struct_5, 4>();
    return any(!(!var_3.e.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(global1.a.xy, !(!global1.a.yx), -2147483647i != u_input.c), vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 6657i), vec2<i32>(global1.b, 3280i)) <= (-4010i << (u_input.b.x % 32u)), false), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-645f, 597f, global1.c, global1.c) + vec4<f32>(1414f, global1.c, 692f, 1406f))), vec2<i32>(1i, -28026i), vec4<i32>(abs(-10498i), u_input.c ^ u_input.c, global1.b, -1i), abs(func_1(global1.c, Struct_1(vec3<bool>(true, global1.a.x, global1.a.x), u_input.c, 1517f, -1i), 4294967295u, Struct_1(vec3<bool>(global1.a.x, global1.a.x, false), global1.d, 1655f, -13489i)))));
    var_0 = global1.a.xx;
    var var_1 = Struct_3(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.d, 18343i, -1i), firstTrailingBit(vec3<i32>(u_input.c, global1.b, -2147483647i) >> (vec3<u32>(u_input.a, u_input.b.x, 9246u) % vec3<u32>(32u)))), global1.d), -267f);
    var_1 = Struct_3(~_wgslsmith_sub_vec2_i32(var_1.a, vec2<i32>(firstLeadingBit(u_input.c), 15677i)), 130f);
    var var_2 = Struct_1(!vec3<bool>(all(select(vec2<bool>(global1.a.x, var_0.x), vec2<bool>(true, global1.a.x), true)), true, global1.a.x), abs(_wgslsmith_mod_i32(-51033i << (_wgslsmith_add_u32(4227u, u_input.b.x) % 32u), -_wgslsmith_sub_i32(var_1.a.x, 35193i))), _wgslsmith_f_op_f32(-global1.c), ~14944i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xwz, u_input.b.x, max(countOneBits(70017u), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(u_input.a, u_input.b.x), ~(u_input.a | 1001u), ~firstTrailingBit(u_input.a))), 12450u & (~_wgslsmith_mod_u32(u_input.b.x, u_input.a) | _wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(u_input.b.x, u_input.a))));
}

