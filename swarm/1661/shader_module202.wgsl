struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec3<i32>, 22>;

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global0.b, 968f, global0.a)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), 565f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, var_0, global4.b)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1392f, 2089f, -2824f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-800f, global0.b, global4.b) + vec3<f32>(1000f, var_0, -886f)), any(vec4<bool>(true, false, true, true))))))));
    let var_2 = _wgslsmith_f_op_f32(-global4.b);
    let var_3 = Struct_1(!global4.a, _wgslsmith_f_op_f32(601f + 1970f), u_input.a.ww);
    var var_4 = var_3;
    return ~(~(~max(var_4.c.x, _wgslsmith_mod_u32(4294967295u, arg_2.x))));
}

fn func_3(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-9806i, -15032i), vec2<i32>(-4346i, 0i)), countOneBits(-2147483647i)), 1i, ~(-_wgslsmith_sub_i32(~(-4599i), ~(-16746i))));
    global2 = array<vec3<i32>, 22>();
    var var_1 = Struct_1(!any(!select(vec4<bool>(global3.a, global0.a, global3.a, global0.a), vec4<bool>(true, global0.a, true, global0.a), false)), global3.b, reverseBits(firstTrailingBit(reverseBits(~vec2<u32>(1u, arg_0)))));
    global0 = Struct_1(!(!(!var_1.a)), _wgslsmith_f_op_f32(min(global3.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-823f + global3.b)), -120f)))), global0.c);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-467f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b, global4.b)) * _wgslsmith_f_op_f32(f32(-1f) * -2095f))));
    return Struct_1(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1308f, global0.b)))))), u_input.a.xy);
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(false & all(!vec4<bool>(false, true, global4.a, global3.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec2<u32>(u_input.a.x, 1u));
    let var_1 = func_3(~func_2(abs(vec4<i32>(7347i, -21606i, 0i, -2147483647i)), u_input.a, u_input.a.zz, ~(-vec2<i32>(2147483647i, -4014i))));
    global1 = abs(_wgslsmith_add_u32(global0.c.x, 118387u));
    global3 = Struct_1(true, var_0.b, var_0.c);
    var var_2 = u_input.a.zyy;
    return vec3<bool>(false, global0.c.x == _wgslsmith_dot_vec2_u32(~select(global4.c, global4.c, global0.a), vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_0.c.x), 4294967295u)), global4.a);
}

fn func_4(arg_0: bool) -> Struct_1 {
    global0 = func_3(func_3(4294967295u).c.x);
    let var_0 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -855f) - global4.b), ~(~(vec2<u32>(global0.c.x, 1u) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), global4.c) % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2026f + 173f), _wgslsmith_f_op_f32(-231f + global0.b), global3.b), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1152f), 1062f, _wgslsmith_f_op_f32(floor(global0.b))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, global3.b, -817f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -171f, 2582f))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(2776f)), _wgslsmith_f_op_f32(-global4.b), _wgslsmith_f_op_f32(max(-466f, -404f))))));
    let var_2 = select(select(vec3<bool>(var_0.a, global3.a, any(select(vec2<bool>(true, global4.a), vec2<bool>(true, arg_0), global4.a))), vec3<bool>(func_1().x, global3.a, func_3(1u >> (0u % 32u)).a), vec3<bool>(true || var_0.a, true, _wgslsmith_dot_vec2_i32(vec2<i32>(58827i, 27151i), vec2<i32>(1i, -2147483647i)) >= select(0i, 2147483647i, true))), vec3<bool>(_wgslsmith_mult_i32(select(-20600i, 1i, false), -1i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(4955i, -1i, 0i), ~vec3<i32>(1i, -2147483647i, 30608i)), select(func_3(_wgslsmith_add_u32(u_input.a.x, global0.c.x)).a, true, global0.a), all(vec4<bool>(false, select(true, var_0.a, true), var_0.a | global0.a, select(arg_0, global3.a, true)))), _wgslsmith_add_i32(-(i32(-1i) * -2147483647i), select(_wgslsmith_div_i32(-10813i, 2147483647i), ~2147483647i, 1000f < global4.b)) < _wgslsmith_clamp_i32(-(-1i >> (global0.c.x % 32u)), (-2147483647i >> (1u % 32u)) & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 12181i, 0i, -2033i), vec4<i32>(9554i, -47879i, -16490i, 10072i)), -4869i));
    let var_3 = var_0;
    return func_3((select(~global4.c.x, _wgslsmith_add_u32(19496u, 0u), false) << (u_input.a.x % 32u)) << ((var_0.c.x >> (73930u % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(any(select(select(vec3<bool>(true, global4.a, false), func_1(), select(vec3<bool>(global4.a, false, global0.a), vec3<bool>(global4.a, true, global3.a), vec3<bool>(false, false, global4.a))), select(vec3<bool>(global3.a, true, true), !vec3<bool>(false, global0.a, false), global0.a), !global3.a)));
    global4 = func_4(global0.a);
    global2 = array<vec3<i32>, 22>();
    let var_1 = select(select(vec4<bool>(!all(vec3<bool>(global3.a, true, false)), true, true, !global4.a), !vec4<bool>(false & global3.a, any(vec4<bool>(false, global0.a, var_0.a, var_0.a)), !global3.a, true), true || (!global3.a & true)), select(!(!select(vec4<bool>(false, global4.a, global0.a, true), vec4<bool>(true, global3.a, global3.a, false), vec4<bool>(global4.a, false, false, global0.a))), vec4<bool>(any(!vec4<bool>(var_0.a, global0.a, var_0.a, true)), !(global0.a & global0.a), any(select(vec2<bool>(global0.a, false), vec2<bool>(global4.a, true), var_0.a)), true), !vec4<bool>(true, global4.a, all(vec4<bool>(global3.a, global0.a, global3.a, false)), false)), false);
    global1 = ~(~(~(max(40692u, u_input.a.x) >> (u_input.a.x % 32u))));
    var var_2 = func_4(!global3.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(828f, global0.b, 1024f, -885f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, 216f, 1265f, var_0.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, 1771f, global4.b, -853f) - vec4<f32>(1300f, 1363f, global4.b, global3.b))), vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, 839f)), var_0.b, -1914f, _wgslsmith_f_op_f32(max(global4.b, 1000f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-230f, 1000f, 344f, _wgslsmith_f_op_f32(1000f + global3.b))));
    let var_4 = vec4<i32>(86826i, abs(_wgslsmith_div_i32(min(firstLeadingBit(-11001i), 2147483647i), firstLeadingBit(0i))), select(-2147483647i, -(~(-1i)), global3.a), -1i);
    global4 = func_4(any(select(vec4<bool>(!global0.a, global4.a, var_2.a, var_0.a), !var_1, select(!vec4<bool>(true, var_0.a, false, global4.a), !vec4<bool>(false, true, true, global4.a), global4.a || var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yyy, -506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-959f)) + global0.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b * 1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -587f))), var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)) * _wgslsmith_f_op_f32(-global0.b)));
}

