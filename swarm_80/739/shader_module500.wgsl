struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-20252i, 0i, 27247i, -41786i), vec2<f32>(777f, -1001f), 1075f, 0i, vec4<u32>(4294967295u, 4294967295u, 0u, 42822u));

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-9882i, i32(-2147483648), 1i, 13588i), vec2<f32>(-592f, 127f), 1000f, -11877i, vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u));

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -60630i), vec2<f32>(367f, -1094f), -410f, i32(-2147483648), vec4<u32>(86290u, 1u, 0u, 1u));

var<private> global4: vec3<u32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = ~max(~abs(~global3.a.x), i32(-1i) * -57627i);
    global1 = Struct_1(vec4<i32>(1i, ~2147483647i, -2147483647i, 40173i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(-407f * 993f)))), global0.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1249f)))), ~select(1i, ~global1.a.x, true) & -2147483647i, ~vec4<u32>(global3.e.x, ~global4.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.e.zw, global3.e.wx, global1.e.zy), vec2<u32>(u_input.a.x, 33291u)), ~_wgslsmith_div_u32(51590u, 64228u)));
    let var_1 = -1896f;
    global4 = _wgslsmith_div_vec3_u32(~max(global3.e.zxw, global2.e.zxy), vec3<u32>(global4.x, 47371u, global3.e.x));
    var var_2 = -375f;
    return global1.e.wzw;
}

fn func_2() -> vec2<f32> {
    let var_0 = global2.a.x;
    global4 = reverseBits(~(~global3.e.yxy)) >> (func_3(min(~(~u_input.c), firstTrailingBit(92116u))) % vec3<u32>(32u));
    global4 = vec3<u32>(global2.e.x, ~global4.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global4.x, global3.e.x, global1.e.x, global0.e.x), vec4<u32>(global0.e.x, u_input.a.x, global4.x, 22199u) ^ vec4<u32>(4294967295u, global3.e.x, global1.e.x, u_input.c)));
    let var_1 = abs(reverseBits(_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(1u, 4294967295u)), select(~vec2<u32>(0u, u_input.a.x), global3.e.zx >> (vec2<u32>(global0.e.x, 1u) % vec2<u32>(32u)), global3.a.x > u_input.b.x))));
    let var_2 = !vec3<bool>(select(select(false, false, true) & true, false, ~global0.e.x >= ~0u), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))) || (_wgslsmith_f_op_f32(sign(global1.b.x)) >= _wgslsmith_div_f32(global2.c, global3.c)), ~global4.x >= max(func_3(40190u).x, ~4294967295u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-783f, global3.b.x) * global1.b) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(533f, _wgslsmith_f_op_f32(-global0.b.x))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = select(vec4<bool>(!(!(1124f <= arg_1.b.x)), arg_0.x, all(arg_0), select(false, all(vec3<bool>(arg_3, true, true)) == arg_0.x, !arg_3)), vec4<bool>(all(arg_0), any(!select(arg_0, vec2<bool>(arg_0.x, arg_3), arg_0.x)), arg_2.a.x > 1i, any(!vec2<bool>(arg_3, arg_3))), select(vec4<bool>(true, arg_3, (-1736f <= global0.b.x) & false, arg_0.x || !arg_0.x), select(select(!vec4<bool>(arg_0.x, true, true, arg_3), select(vec4<bool>(true, arg_0.x, arg_3, true), vec4<bool>(arg_3, arg_3, arg_3, false), vec4<bool>(arg_0.x, true, arg_0.x, false)), arg_1.b.x <= 210f), !select(vec4<bool>(arg_0.x, true, arg_3, true), vec4<bool>(false, false, false, true), arg_3), select(vec4<bool>(arg_0.x, arg_3, false, false), vec4<bool>(false, arg_0.x, arg_3, arg_0.x), any(vec2<bool>(true, arg_3)))), !select(select(vec4<bool>(arg_3, arg_0.x, false, false), vec4<bool>(true, false, arg_3, arg_3), arg_3), vec4<bool>(arg_3, arg_0.x, false, false), 1375f > global1.b.x)));
    global3 = Struct_1(vec4<i32>(abs(select(_wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(global3.a.x, global1.a.x)), 2147483647i, false)), global1.a.x & ~global2.d, (u_input.b.x & global1.a.x) ^ -24237i, i32(-1i) * -52854i), vec2<f32>(global3.c, 137f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c * 457f) - -1264f), -countOneBits(u_input.b.x) | abs(_wgslsmith_add_i32(min(18382i, global3.a.x), _wgslsmith_clamp_i32(-15431i, -35291i, 16119i))), countOneBits(~global3.e));
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.a.x, -32305i, global2.a.x), firstLeadingBit(vec3<i32>(0i, firstTrailingBit(0i), global1.a.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.d, _wgslsmith_dot_vec3_i32(vec3<i32>(73623i, global1.d, global1.d), vec3<i32>(arg_2.d, arg_1.d, 1i)), global2.a.x), ~_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_1.a.x, 16543i, global1.a.x), vec3<i32>(arg_1.d, global3.a.x, 6978i)), ~vec3<i32>(~global0.a.x, ~u_input.b.x, ~arg_2.a.x)));
    let var_2 = 4294967295u;
    let var_3 = ~(-47936i);
    return arg_2;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global3 = func_4(!vec2<bool>(all(vec4<bool>(true, true, true, true)), !any(vec4<bool>(false, true, false, true))), Struct_1(~global1.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2()))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(901f)), _wgslsmith_f_op_f32(ceil(global3.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) * global3.b.x))), global3.d, vec4<u32>(~44837u, global2.e.x, max(1u, 0u), 1u) >> (vec4<u32>(firstLeadingBit(global3.e.x), ~global0.e.x, 1u, ~global3.e.x) % vec4<u32>(32u))), Struct_1(max(_wgslsmith_sub_vec4_i32(-global3.a, countOneBits(vec4<i32>(-7250i, global1.d, global0.d, global1.d))), _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, u_input.b.x, -3824i, u_input.b.x), _wgslsmith_add_vec4_i32(global0.a, vec4<i32>(global1.a.x, global2.d, -23899i, global0.a.x)))), arg_0, 1660f, global3.d, global0.e), false);
    let var_0 = func_4(vec2<bool>((_wgslsmith_mult_u32(global0.e.x, 1u) | 1u) < _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global1.e.wzw, global2.e.xyy), 22059u), _wgslsmith_div_u32(~global3.e.x, 53350u) <= min(global4.x, 50018u)), Struct_1(vec4<i32>(global3.a.x, -global1.a.x, -17990i, -u_input.b.x), _wgslsmith_f_op_vec2_f32(-func_4(vec2<bool>(false, true), func_4(vec2<bool>(true, false), Struct_1(global0.a, global2.b, -462f, -51061i, global1.e), Struct_1(vec4<i32>(1i, global3.d, 0i, global3.a.x), arg_0, global3.c, u_input.b.x, vec4<u32>(global1.e.x, 1u, 38639u, 42433u)), false), Struct_1(vec4<i32>(global1.d, u_input.b.x, global2.a.x, -2147483647i), vec2<f32>(global0.c, -763f), -1546f, 1i, global3.e), true).b), global2.b.x, min(func_4(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), func_4(vec2<bool>(false, false), Struct_1(global0.a, vec2<f32>(global3.b.x, arg_0.x), 251f, global1.d, global3.e), Struct_1(vec4<i32>(20295i, global2.a.x, global3.d, global2.a.x), vec2<f32>(-631f, arg_0.x), 485f, global1.d, global1.e), false), func_4(vec2<bool>(false, true), Struct_1(global2.a, vec2<f32>(global3.c, -1156f), global3.c, 1i, vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), Struct_1(vec4<i32>(59836i, global0.a.x, global2.a.x, 0i), vec2<f32>(1055f, global3.c), -1000f, -1i, vec4<u32>(global4.x, 64966u, 47493u, global4.x)), true), true).d, global1.a.x), global0.e), func_4(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), func_4(vec2<bool>(true, true), Struct_1(~vec4<i32>(u_input.b.x, 0i, global0.a.x, global0.d), _wgslsmith_f_op_vec2_f32(abs(arg_0)), _wgslsmith_f_op_f32(floor(-629f)), 1i, vec4<u32>(u_input.a.x, global2.e.x, 9825u, 1u)), func_4(select(vec2<bool>(false, false), vec2<bool>(true, false), false), func_4(vec2<bool>(false, false), Struct_1(vec4<i32>(0i, -2147483647i, global1.d, -1i), global3.b, -2329f, global0.a.x, vec4<u32>(global1.e.x, 22135u, global3.e.x, u_input.a.x)), Struct_1(global3.a, global0.b, global1.c, 2147483647i, global1.e), true), func_4(vec2<bool>(true, true), Struct_1(vec4<i32>(70036i, 2147483647i, global2.a.x, u_input.b.x), vec2<f32>(918f, 482f), 185f, 0i, vec4<u32>(global0.e.x, 21605u, global3.e.x, 1u)), Struct_1(global0.a, vec2<f32>(arg_0.x, 489f), global3.c, 2147483647i, vec4<u32>(1u, 4294967295u, global0.e.x, global3.e.x)), true), true), true), Struct_1(vec4<i32>(-1i) * -vec4<i32>(global0.a.x, -88812i, 37200i, 0i), global1.b, global3.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global3.a, vec4<i32>(2147483647i, -25400i, -1i, -26941i), global1.a), ~global0.a), vec4<u32>(global0.e.x, global0.e.x ^ 56843u, max(4294967295u, global2.e.x), reverseBits(2436u))), true), -28872i <= _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global2.d, 0i), vec3<i32>(0i, 1i, u_input.b.x)) & 36186i, u_input.b.x)).b;
    global4 = global1.e.xzx;
    global2 = Struct_1(-vec4<i32>(-2147483647i, _wgslsmith_div_i32(global3.d, global0.d), _wgslsmith_clamp_i32(u_input.b.x ^ global0.a.x, 1i, -global1.a.x), 0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(444f)), global0.c)) - _wgslsmith_f_op_vec2_f32(-func_4(vec2<bool>(true, true), func_4(vec2<bool>(false, true), Struct_1(global3.a, vec2<f32>(var_0.x, 2628f), 2467f, -48230i, global0.e), Struct_1(vec4<i32>(11822i, global2.a.x, 10778i, 13854i), global3.b, global2.c, 41169i, vec4<u32>(4294967295u, global1.e.x, global4.x, global2.e.x)), false), func_4(vec2<bool>(true, false), Struct_1(vec4<i32>(-2147483647i, global1.d, -1i, 14872i), vec2<f32>(arg_0.x, -480f), arg_0.x, 3763i, vec4<u32>(4294967295u, 65476u, global2.e.x, 61359u)), Struct_1(vec4<i32>(global0.a.x, u_input.b.x, -2147483647i, global2.a.x), arg_0, var_0.x, -27541i, global2.e), false), true).b)), -1488f, -14324i, vec4<u32>(_wgslsmith_mod_u32(abs(u_input.a.x), ~u_input.c), ~0u, abs(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global3.e.x, u_input.c), vec2<u32>(1u, 0u), global1.e.xx), global3.e.wx)), 94055u));
    global1 = Struct_1(vec4<i32>(~(~1i), _wgslsmith_sub_i32(~reverseBits(global1.a.x), -1i << (1u % 32u)), select(~(-2147483647i), ~1i, false), -18253i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(731f, 1002f), arg_0))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(844f * global3.b.x)), global3.d, reverseBits(vec4<u32>(~(~global1.e.x), min(_wgslsmith_dot_vec2_u32(vec2<u32>(9556u, global0.e.x), vec2<u32>(global3.e.x, u_input.c)), _wgslsmith_clamp_u32(48268u, global0.e.x, 93277u)), firstTrailingBit(~19896u), ~global0.e.x)));
    return Struct_1(vec4<i32>(-60659i, ~(-firstLeadingBit(global0.d)), _wgslsmith_mult_i32(_wgslsmith_add_i32(global0.a.x | global3.d, global2.d), (1i ^ global2.a.x) << (global0.e.x % 32u)), -global1.d), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), _wgslsmith_div_vec2_f32(vec2<f32>(global3.b.x, 1145f), _wgslsmith_f_op_vec2_f32(-arg_0)), vec2<bool>(true, true)))), arg_0.x, 1888i, global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec2_f32(-global1.b));
    var var_0 = func_4(select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), vec2<bool>(true, true), false), Struct_1(~(~abs(vec4<i32>(-1i, global3.a.x, 0i, -4150i))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(global1.b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b.x, 822f))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())))), _wgslsmith_f_op_f32(step(global1.b.x, _wgslsmith_f_op_f32(-554f * _wgslsmith_f_op_f32(global1.b.x + -407f)))), max(-1i, -global0.d) & 2147483647i, global2.e), Struct_1(_wgslsmith_add_vec4_i32((vec4<i32>(-3675i, -1i, -50251i, global1.d) << (global0.e % vec4<u32>(32u))) >> (global2.e % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, global3.d, 6785i, global1.a.x), ~global2.a)), global1.b, _wgslsmith_f_op_f32(round(1121f)), _wgslsmith_dot_vec3_i32(vec3<i32>(714i, global2.d, -32060i) << (vec3<u32>(20574u, 1u, global4.x) % vec3<u32>(32u)), vec3<i32>(-1i, global0.a.x, global0.d)), (~global1.e | ~vec4<u32>(global1.e.x, 1u, global0.e.x, 1u)) | select(abs(vec4<u32>(49448u, 4294967295u, u_input.c, global0.e.x)), global3.e, true)), true);
    global4 = func_4(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), true), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.b, vec2<f32>(-207f, -1114f), vec2<bool>(true, true))) * vec2<f32>(var_0.c, 594f)) + global2.b)), Struct_1(abs(reverseBits(global0.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), global3.b.x), _wgslsmith_f_op_f32(621f + global3.c), var_0.a.x, global1.e & _wgslsmith_add_vec4_u32(global3.e, ~global0.e)), true).e.xyz;
    let var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2284f)), global3.b.x)));
    let var_2 = _wgslsmith_div_i32(var_0.d, global3.d) >> (76060u % 32u);
    var var_3 = any(vec4<bool>(select(all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), false, !all(vec2<bool>(false, true))), true, true, false));
    var var_4 = 815f;
    global1 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(func_1(_wgslsmith_f_op_vec2_f32(func_2())).c, _wgslsmith_f_op_f32(step(-259f, var_0.c))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) * vec2<f32>(_wgslsmith_div_f32(167f, var_0.b.x), func_1(vec2<f32>(global0.b.x, var_0.c)).c))));
    let var_5 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.d, 0u, firstTrailingBit(var_0.e));
}

