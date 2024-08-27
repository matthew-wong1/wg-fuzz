struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1466u);

var<private> global1: u32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec4<u32> {
    let var_0 = Struct_3(Struct_1(select(vec3<bool>(true, !arg_0.a.x, select(arg_0.a.x, true, arg_1.x)), !vec3<bool>(arg_0.a.x, arg_0.a.x, true), vec3<bool>(true, arg_0.b.x, arg_0.d.x < -75213i)), !select(vec4<bool>(false, false, arg_0.b.x, true), select(vec4<bool>(arg_1.x, false, arg_1.x, false), arg_0.b, arg_0.a.x), select(arg_0.b, vec4<bool>(arg_0.a.x, arg_0.b.x, false, arg_0.a.x), arg_1.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0.c | arg_0.c, _wgslsmith_clamp_vec4_u32(arg_0.c, arg_0.c, arg_0.c)), arg_0.c), vec3<i32>(-57251i, -2147483647i, u_input.b.x) ^ vec3<i32>(-arg_0.d.x, ~arg_0.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(3277i, arg_0.d.x), arg_2))), Struct_1(vec3<bool>(countOneBits(arg_2.x) <= firstTrailingBit(1i), true, arg_0.b.x), arg_0.b, select(~vec4<u32>(4294967295u, global0.x, global0.x, arg_0.c.x), arg_0.c, select(!arg_0.b, arg_0.b, select(arg_0.b, arg_0.b, arg_0.b))), -((u_input.a | vec3<i32>(-15928i, arg_2.x, arg_0.d.x)) & _wgslsmith_add_vec3_i32(vec3<i32>(-49161i, arg_0.d.x, -1i), u_input.a))), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, global0.x), arg_0.c.zx), 4294967295u), ~countOneBits(vec2<u32>(arg_0.c.x, 32740u)), arg_0.c.yx), ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.c.yx, vec2<u32>(39845u, 1u), arg_0.c.xx), vec2<u32>(global0.x, 31547u))), vec3<f32>(-2233f, arg_3.x, _wgslsmith_f_op_f32(trunc(arg_3.x))), Struct_1(arg_0.a, select(select(select(arg_0.b, vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(true, arg_0.b.x, arg_1.x, false)), !arg_0.b, vec4<bool>(true, true, arg_0.b.x, arg_0.b.x)), arg_0.b, select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), select(vec4<bool>(true, true, true, arg_1.x), vec4<bool>(arg_1.x, false, true, true), true), vec4<bool>(arg_0.b.x, arg_1.x, true, arg_1.x))), abs(countOneBits(vec4<u32>(1u, arg_0.c.x, global0.x, 4294967295u))), firstLeadingBit(vec3<i32>(1i, -u_input.c, ~32395i))));
    var var_1 = vec4<i32>(0i, -23328i, ~abs(u_input.c), abs(-_wgslsmith_mod_i32(~u_input.b.x, abs(arg_0.d.x))));
    let var_2 = var_0.b.b;
    global1 = 0u;
    global0 = _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u), var_0.a.c.yx) | 1u, ~min(arg_0.c.x, 1u))), vec2<u32>(global0.x, ~42430u));
    return ~arg_0.c;
}

fn func_2() -> vec4<bool> {
    global1 = ~global0.x;
    let var_0 = ~(~global0.x);
    let var_1 = select(!select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), !any(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)));
    let var_2 = 1499f;
    var var_3 = Struct_3(Struct_1(!var_1, vec4<bool>(var_1.x, all(vec4<bool>(true, true, true, true)), !var_1.x, true), func_3(Struct_1(vec3<bool>(true, false, var_1.x), select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, true, true), false), max(vec4<u32>(146u, 20491u, 0u, 46526u), vec4<u32>(var_0, 57511u, var_0, 83935u)), -u_input.a), select(!vec2<bool>(true, var_1.x), select(var_1.yz, var_1.zx, vec2<bool>(false, var_1.x)), !var_1.xz), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(63758i, u_input.d.x, 17315i, 20975i), vec4<i32>(1i, u_input.a.x, 0i, u_input.a.x)), _wgslsmith_sub_i32(u_input.d.x, 2147483647i)), vec4<f32>(_wgslsmith_f_op_f32(var_2 + var_2), var_2, _wgslsmith_f_op_f32(step(var_2, var_2)), 476f)), u_input.a), Struct_1(var_1, select(!select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x)), vec4<bool>(38533u != var_0, var_1.x, var_0 < var_0, var_1.x), var_1.x), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(76421u, global0.x), vec2<u32>(75u, var_0)), global0.x << (var_0 % 32u)), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 4294967295u), vec2<u32>(0u, global0.x))), 4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, var_0), ~vec2<u32>(global0.x, global0.x))), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-2147483647i, u_input.b.x, -1i)), vec3<i32>(-1i, -1i, 24607i) | ~vec3<i32>(u_input.b.x, 2147483647i, -14649i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(var_0, global0.x, 25978u) % vec3<u32>(32u)), ~vec3<i32>(u_input.b.x, 50813i, 6597i)))), select(~vec2<u32>(firstTrailingBit(var_0), abs(0u)), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(var_0, var_0), vec2<u32>(0u, 1u))), select(var_1.xx, vec2<bool>(var_1.x, !var_1.x), vec2<bool>(var_1.x, !var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-505f, 177f, -1666f)), vec3<f32>(512f, var_2, var_2))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-207f, var_2, -469f))))), Struct_1(!var_1, vec4<bool>(all(select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true), true)), !(!var_1.x), select(var_1.x || var_1.x, all(vec3<bool>(true, var_1.x, true)), true), any(select(vec2<bool>(var_1.x, false), var_1.zx, true))), vec4<u32>(firstTrailingBit(0u), var_0, ~_wgslsmith_mult_u32(53433u, global0.x), abs(4294967295u >> (global0.x % 32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(max(u_input.b.x, u_input.c), u_input.b.x, i32(-1i) * -1i), u_input.a)));
    return vec4<bool>(!select(true, any(!vec2<bool>(false, var_3.b.a.x)), all(!vec3<bool>(var_3.a.a.x, true, var_1.x))), !var_3.b.b.x, true, false);
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    global1 = ~4294967295u;
    var var_0 = arg_0.c >> (~vec4<u32>(59308u, firstLeadingBit(~global0.x), _wgslsmith_mult_u32(~arg_0.c.x, _wgslsmith_mult_u32(4294967295u, global0.x)), 1u) % vec4<u32>(32u));
    global1 = _wgslsmith_add_u32(0u << (abs(1u) % 32u), _wgslsmith_dot_vec3_u32(firstLeadingBit(var_0.zxz), vec3<u32>(global0.x, ~0u, ~0u))) | 1u;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-641f)), -254f))) - 1841f)));
    global1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.c.x, var_0.x) | global0.x, 1u);
    return countOneBits(_wgslsmith_mod_vec2_u32(~(~arg_0.c.yy), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, var_0.x), 27951u), firstLeadingBit(vec2<u32>(4294967295u, arg_0.c.x)))));
}

fn func_1() -> i32 {
    global0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(select(_wgslsmith_add_u32(global0.x, global0.x), 1u, true), global0.x), countOneBits(~(vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(4294967295u, global0.x))));
    global0 = func_4(Struct_1(vec3<bool>(true, true, true), func_2(), vec4<u32>(~1u, global0.x, ~0u, global0.x) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global0.x, 9887u, 49031u), max(vec4<u32>(global0.x, 0u, global0.x, 39905u), vec4<u32>(global0.x, global0.x, 44788u, global0.x)), vec4<u32>(global0.x, global0.x, 1u, 0u)), vec3<i32>(1i, reverseBits(u_input.b.x), -(~u_input.b.x))));
    global0 = ~(((~vec2<u32>(global0.x, global0.x) ^ vec2<u32>(global0.x, 0u)) >> (vec2<u32>(_wgslsmith_add_u32(global0.x, 4294967295u), global0.x) % vec2<u32>(32u))) >> (abs(~vec2<u32>(74019u, global0.x) >> (vec2<u32>(0u, global0.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_0 = Struct_4(Struct_3(Struct_1(vec3<bool>(true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0.x, global0.x, global0.x), vec4<u32>(0u, global0.x, 1450u, 4319u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 18246u, 0u), vec4<u32>(global0.x, 4294967295u, 9838u, 6830u)), false), vec3<i32>(~u_input.b.x, ~u_input.b.x, _wgslsmith_sub_i32(u_input.a.x, 7415i))), Struct_1(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec4<bool>(true, true, true, true), vec4<u32>(82596u, global0.x, 1u, global0.x), u_input.a ^ abs(vec3<i32>(36305i, u_input.b.x, -934i))), _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 0u)), vec2<u32>(0u, global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-357f, -1001f, 1982f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1400f, -329f, -136f))), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), firstLeadingBit(~vec4<u32>(global0.x, 29875u, 0u, global0.x)), u_input.a)), Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), func_2().yxx), select(func_2(), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), false), vec4<u32>(global0.x, ~(global0.x & global0.x), ~_wgslsmith_div_u32(4294967295u, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(88731u, 79192u, global0.x, 1u), vec4<u32>(global0.x, 18751u, global0.x, global0.x))), vec3<i32>(select(~33072i, _wgslsmith_clamp_i32(0i, 29989i, -2147483647i), all(vec3<bool>(false, true, true))), firstLeadingBit(_wgslsmith_div_i32(u_input.d.x, 71004i)), _wgslsmith_div_i32(u_input.c, reverseBits(u_input.a.x)))), u_input.a, vec4<u32>(~(~71514u >> (global0.x % 32u)), (min(1u, 1u) >> (_wgslsmith_mult_u32(0u, 1u) % 32u)) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 0u, 11935u), ~vec4<u32>(global0.x, global0.x, global0.x, global0.x)) % 32u), min(35772u, global0.x << (reverseBits(1u) % 32u)), ~func_4(Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, true, true), vec4<u32>(4294967295u, global0.x, 80587u, global0.x), u_input.a)).x));
    var var_1 = var_0.a;
    return -4821i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(func_1(), -1i);
    global1 = _wgslsmith_add_u32(_wgslsmith_add_u32(1u, ~max(~global0.x, ~global0.x)), min(~global0.x, 4294967295u));
    let var_1 = vec4<i32>(u_input.c, u_input.c, abs(-(~(-6005i))), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) | (vec4<i32>(~u_input.b.x, 0i, -2147483647i, u_input.d.x) << (vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(9629u, global0.x), 12132u), global0.x, global0.x, global0.x) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 602f, 1352f));
    var var_3 = Struct_1(select(vec3<bool>(all(vec4<bool>(false, true, false, true)), true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), vec3<bool>(any(vec4<bool>(false, true, true, false)), all(vec3<bool>(false, true, false)), false), select(false, true, true)), all(vec2<bool>(true, true))), select(!vec4<bool>(true, true, true, all(vec4<bool>(false, true, false, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), false), select(vec4<bool>(true, 1u >= global0.x, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), func_3(Struct_1(vec3<bool>(true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), ~(~vec4<u32>(global0.x, global0.x, 45642u, 4294967295u)), -vec3<i32>(var_1.x, u_input.a.x, 0i)), select(vec2<bool>(false, u_input.b.x > 28723i), vec2<bool>(true, true), func_2().wz), var_1.wy, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(var_2.x + var_2.x)), var_2.x, _wgslsmith_f_op_f32(step(var_2.x, var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -1000f)))), var_1.wzz);
    var_0 = var_3.d.x;
    var var_4 = Struct_2(true, var_3.a.x, -var_3.d.x, Struct_1(var_3.a, var_3.b, vec4<u32>(~global0.x, var_3.c.x, ~(~0u), _wgslsmith_mult_u32(25265u, _wgslsmith_dot_vec2_u32(var_3.c.yy, vec2<u32>(var_3.c.x, global0.x)))), _wgslsmith_mult_vec3_i32(-vec3<i32>(2147483647i, var_1.x, u_input.b.x), var_3.d)));
    var_3 = var_4.d;
    var_4 = Struct_2(true, var_4.a, var_1.x, Struct_1(vec3<bool>(!var_3.b.x, var_4.d.b.x & var_3.b.x, var_4.a), var_3.b, select(vec4<u32>(~85137u, ~global0.x, min(1u, 0u), 18501u), var_4.d.c, select(var_4.d.b, var_4.d.b, vec4<bool>(true, var_3.a.x, true, false))), ~vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, var_1.x, var_3.d.x), var_4.c, countOneBits(u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, var_2.x))))), ~_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(4294967295u, var_3.c.x, var_3.c.x)), vec3<u32>(1u & global0.x, func_3(Struct_1(var_4.d.b.yyw, vec4<bool>(false, var_4.a, false, var_3.a.x), vec4<u32>(37208u, global0.x, 43949u, var_3.c.x), vec3<i32>(var_4.c, var_1.x, var_3.d.x)), var_4.d.a.yy, u_input.d, vec4<f32>(-199f, var_2.x, var_2.x, -1815f)).x, 68270u)));
}

