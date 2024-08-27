struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(481f, 843f), vec4<u32>(0u, 1u, 4294967295u, 0u), vec3<bool>(true, true, false), 484f, vec3<i32>(-65179i, -80229i, i32(-2147483648)));

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-540f, -1000f), vec4<u32>(50490u, 0u, 33894u, 4294967295u), vec3<bool>(false, false, false), 1000f, vec3<i32>(1i, i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    global0 = select(!(!vec4<bool>(false & global2.c.x, arg_2.a.x >= global1.d, true, !global2.c.x)), vec4<bool>(true, true, global0.x, global2.c.x), any(global2.c));
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1318f, _wgslsmith_f_op_f32(select(global2.d, 943f, true)))), _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(-global2.a.x))), arg_2.b, arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-760f - -1868f))), -max(~global2.e, arg_2.e));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(global1.a + arg_0.zw), _wgslsmith_sub_vec4_u32(~countOneBits(firstTrailingBit(arg_2.b)), abs(vec4<u32>(global1.b.x, _wgslsmith_add_u32(56196u, u_input.c.x), firstLeadingBit(55459u), arg_2.b.x))), vec3<bool>(arg_1, true, false), _wgslsmith_f_op_f32(round(global1.d)), -global2.e);
    var var_1 = false;
    let var_2 = !(!select(select(global0.xy, select(arg_2.c.yx, global0.zy, global1.c.x), global1.c.zy), var_0.c.yz, !select(vec2<bool>(false, global2.c.x), vec2<bool>(true, global0.x), arg_2.c.zy)));
    return select(global1.b.x, ~48842u, !(var_0.a.x <= _wgslsmith_f_op_f32(1296f * _wgslsmith_div_f32(1906f, arg_2.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = global1.e.x;
    let var_1 = arg_0;
    var var_2 = global1.e.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(451f, _wgslsmith_f_op_f32(-443f + _wgslsmith_f_op_f32(f32(-1f) * -435f)))), ~(~_wgslsmith_add_vec4_u32(arg_0.b, ~global1.b)), select(!select(select(arg_0.c, global1.c, false), select(global1.c, arg_3.c, true), arg_3.c.x), !select(global1.c, global1.c, global0.x), select(select(select(arg_0.c, vec3<bool>(true, global1.c.x, true), global1.c.x), select(global2.c, arg_3.c, global0.x), global0.x), global0.xwz, global1.c.x)), _wgslsmith_f_op_f32(round(-123f)), vec3<i32>(var_1.e.x, ~(~(-59564i)), _wgslsmith_div_i32(-10801i | var_1.e.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, global1.e.x, global2.e.x, arg_3.e.x), ~vec4<i32>(-1i, global1.e.x, global2.e.x, 1i)))));
    let var_4 = !arg_0.c.x && any(vec3<bool>(any(vec3<bool>(false, arg_3.c.x, true)), arg_1, !(var_1.c.x & global2.c.x)));
    return _wgslsmith_clamp_i32(reverseBits(i32(-1i) * -2147483647i), ~46234i, ~0i) ^ _wgslsmith_mod_i32((i32(-1i) * -arg_3.e.x) & (-1i << (var_1.b.x % 32u)), ~(-_wgslsmith_dot_vec2_i32(global1.e.zz, vec2<i32>(global1.e.x, arg_3.e.x))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = abs(u_input.d);
    var var_1 = vec3<u32>(~u_input.c.x, global1.b.x, ~min(1u, ~33958u));
    global0 = !(!select(vec4<bool>(global0.x && global0.x, arg_3, true, true), !select(vec4<bool>(arg_3, true, true, true), vec4<bool>(true, false, true, global1.c.x), vec4<bool>(global2.c.x, global2.c.x, global0.x, global1.c.x)), _wgslsmith_f_op_f32(abs(global2.d)) > global1.d));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -121f)), arg_0), _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(~global2.b.x), _wgslsmith_dot_vec2_u32(max(vec2<u32>(var_1.x, u_input.c.x), vec2<u32>(4294967295u, 0u)), vec2<u32>(0u, u_input.c.x)), 1u, ~4294967295u), ~u_input.c), vec3<bool>(true, true, all(select(global2.c, select(vec3<bool>(false, arg_3, true), global0.xzx, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-578f + -437f) * _wgslsmith_f_op_f32(-1000f * arg_0))))), vec3<i32>(var_0, -1i, -(~(-8785i))));
    var var_3 = vec4<f32>(arg_1, -567f, _wgslsmith_f_op_f32(397f + arg_0), 949f);
    return firstTrailingBit(~(reverseBits(var_2.e.x) << (u_input.c.x % 32u)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32) -> vec4<i32> {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -475f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1405f * global2.d)), func_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global2.d)), vec4<u32>(~global1.b.x, 0u, u_input.c.x, func_3(vec4<f32>(global1.a.x, global1.a.x, 745f, global1.a.x), false, Struct_1(global2.a, vec4<u32>(global2.b.x, 0u, 16254u, arg_2), global0.xzw, global2.a.x, vec3<i32>(-10038i, 1i, u_input.b.x)))), !(!global1.c), global1.d, -_wgslsmith_mod_vec3_i32(vec3<i32>(22182i, 1i, -2000i), global2.e)), any(!select(vec4<bool>(false, global1.c.x, true, global2.c.x), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(false, true, arg_1, false))), 4294967295u, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(select(-871f, global2.a.x, arg_1))), ~global2.b, global1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global2.d)), _wgslsmith_f_op_f32(f32(-1f) * -683f), !global0.x)), global2.e)), select(!all(!vec4<bool>(arg_1, arg_1, arg_1, false)), true, any(select(vec2<bool>(false, true), global2.c.xz, global0.x)) & ((global1.d == -153f) || (global1.d == global1.a.x))));
    var var_1 = ~_wgslsmith_div_i32(-1i, select(i32(-1i) * -37598i, global1.e.x, 1000f >= global1.a.x) >> (global1.b.x % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-806f, 400f))) * global1.a), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(global2.b, firstTrailingBit(global1.b)), vec4<u32>(4294967295u >> (min(global2.b.x, global2.b.x) % 32u), u_input.c.x, 25259u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, 30843u, 4294967295u), ~vec4<u32>(1u, u_input.c.x, u_input.c.x, arg_0)))), select(vec3<bool>(_wgslsmith_f_op_f32(trunc(global2.a.x)) > _wgslsmith_f_op_f32(round(-942f)), true, all(!vec4<bool>(true, arg_1, false, true))), vec3<bool>(true, arg_1 & false, !global2.c.x & true), 1u <= ~(~u_input.c.x)), _wgslsmith_div_f32(1126f, global2.a.x), vec3<i32>(-1i) * -vec3<i32>(select(-30370i, 0i, true), 5114i, 2147483647i));
    var var_3 = min(min(~(~vec3<u32>(1u, 34949u, u_input.c.x)), ~global1.b.zwy), var_2.b.yyw << (_wgslsmith_mult_vec3_u32(abs(global2.b.wxx) << (firstLeadingBit(global1.b.yzy) % vec3<u32>(32u)), ~vec3<u32>(global2.b.x, 0u, 3021u) >> (vec3<u32>(global2.b.x, arg_0, 9718u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global2 = Struct_1(global2.a, ~vec4<u32>(~arg_2, 0u & (var_2.b.x & 39867u), _wgslsmith_mod_u32(abs(72534u), countOneBits(var_2.b.x)), ~_wgslsmith_sub_u32(1u, 0u)), var_2.c, global1.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(-18715i, u_input.d, u_input.d), abs(var_2.e), -(~abs(vec3<i32>(-1i, var_0, 0i)))));
    return abs(vec4<i32>(_wgslsmith_mult_i32(select(~(-1333i), global2.e.x, !global2.c.x), var_0), -(~_wgslsmith_mult_i32(var_0, u_input.b.x)), 51726i, _wgslsmith_add_i32(global1.e.x, var_0)));
}

fn func_6(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = vec4<bool>(true, false, !any(!select(vec4<bool>(true, false, false, global2.c.x), vec4<bool>(true, global1.c.x, true, global0.x), false)), false);
    var_0 = !select(vec4<bool>(!all(vec2<bool>(global2.c.x, false)), false, global1.c.x, global2.c.x), select(!vec4<bool>(true, global0.x, true, false), select(vec4<bool>(false, true, global1.c.x, true), select(vec4<bool>(global2.c.x, var_0.x, true, false), vec4<bool>(true, global2.c.x, true, global0.x), vec4<bool>(false, true, true, false)), false), !vec4<bool>(var_0.x, global1.c.x, var_0.x, false)), vec4<bool>(global1.c.x, all(var_0.wxw), 993f <= global2.a.x, true | var_0.x));
    let var_1 = 22268i;
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.d), 408f)), _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_sub_vec4_u32(global1.b, global2.b), vec3<bool>(true, all(select(vec3<bool>(false, false, global0.x), vec3<bool>(false, false, true), false)), all(!vec3<bool>(global0.x, global0.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - global1.d), -arg_0.zyz);
    let var_2 = -843f;
    return Struct_1(global1.a, ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 8567u, global1.b.x, u_input.c.x), min(u_input.c, global2.b))), global2.c, 1123f, ~vec3<i32>(64785i, reverseBits(-34618i) << (_wgslsmith_mult_u32(global1.b.x, global1.b.x) % 32u), -1i));
}

fn func_1() -> Struct_1 {
    var var_0 = global0.x;
    global0 = vec4<bool>(global1.c.x, any(select(global2.c, !vec3<bool>(global0.x, true, true), global0.wxz)), any(!(!select(global0.wyz, vec3<bool>(global0.x, global0.x, global1.c.x), global2.c.x))), any(!(!vec3<bool>(global0.x, false, true))));
    global2 = func_6(func_2(24243u, false, 4294967295u));
    global0 = !vec4<bool>(global1.c.x, global2.c.x, global1.c.x, all(vec3<bool>(any(global1.c), func_6(vec4<i32>(u_input.b.x, -37642i, 0i, -1i)).c.x, true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.d)))))), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.b.x, global1.b.x, 1u, 4294967295u), ~global2.b) & countOneBits(vec4<u32>(27661u, 0u, global1.b.x, u_input.c.x) | vec4<u32>(u_input.c.x, 8450u, global1.b.x, 3320u))), select(!(!(!global1.c)), func_6(_wgslsmith_clamp_vec4_i32(-vec4<i32>(39609i, 1i, global1.e.x, -2147483647i), ~vec4<i32>(u_input.a, -1i, global2.e.x, global1.e.x), vec4<i32>(global1.e.x, u_input.d, 8319i, u_input.a))).c, true), 1232f, -reverseBits(global2.e) | vec3<i32>(func_5(-118f, _wgslsmith_f_op_f32(-global1.d), u_input.d, false), u_input.a, select(2147483647i, 0i, func_6(vec4<i32>(global2.e.x, 0i, 2147483647i, 8973i)).c.x)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.a))), _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(17556u, 4294967295u, global2.b.x, 33064u))), abs(~firstLeadingBit(var_1.b))), vec3<bool>(!(u_input.c.x < 3681u), any(vec2<bool>(global0.x, true)), global2.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.d)) - _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(step(416f, var_1.d)))))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.e.x, global2.e.x) ^ vec2<i32>(global1.e.x, u_input.d), vec2<i32>(global1.e.x, var_1.e.x)), ~func_5(-1539f, -1112f, global2.e.x, global2.c.x), -global2.e.x), vec3<i32>(var_1.e.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.e.x, global2.e.x, var_1.e.x), var_1.e), firstLeadingBit(global1.e)), -9157i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = _wgslsmith_div_vec3_u32(func_1().b.wwy, ~vec3<u32>(global1.b.x & global2.b.x, func_1().b.x << (_wgslsmith_clamp_u32(0u, global1.b.x, 7753u) % 32u), u_input.c.x));
    var var_1 = func_1();
    let var_2 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(trunc(-1000f)))), -767f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d + var_1.a.x)), func_6(~vec4<i32>(global1.e.x, -1i, 0i, u_input.b.x)).a.x)), min(global2.e.xz, u_input.b), ~reverseBits(~select(u_input.c, var_1.b, true)), abs(firstTrailingBit(u_input.c)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(190f, -2448f, -1566f, 1997f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-918f, 586f, -369f, 2490f)), vec4<f32>(1572f, -114f, global1.a.x, -1000f))))));
}

