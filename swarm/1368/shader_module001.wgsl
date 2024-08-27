struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_2,
    d: vec2<f32>,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_4,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = vec2<i32>(~select(_wgslsmith_clamp_i32(63782i, global0.b.x, global0.c.d), _wgslsmith_div_i32(global0.b.x, -21372i), global0.a.b.x), global0.b.x) ^ firstLeadingBit(abs(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, -50884i, 1i, global0.c.d), vec4<i32>(91364i, global0.c.d, global0.b.x, 2147483647i)), global0.c.d | global0.c.d)));
    let var_1 = Struct_3(Struct_1(vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 4294967295u, 17888u, global0.a.a.a.x), vec4<u32>(22750u, 0u, 0u, 5284u))), ~(~global0.c.b)), true, _wgslsmith_f_op_f32(floor(global0.e)) >= _wgslsmith_f_op_f32(max(354f, global0.d.x)), !(!select(vec2<bool>(true, global0.c.c.d.x), global0.a.b, vec2<bool>(arg_0.c, true))), _wgslsmith_f_op_f32(ceil(arg_0.e))), !select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, false), arg_0.c || true), select(select(vec2<bool>(arg_0.c, false), arg_0.d, true), vec2<bool>(false, false), arg_0.d), any(!vec4<bool>(arg_0.c, arg_0.d.x, global0.a.c.d.x, arg_0.c))), arg_0);
    let var_2 = select(select(vec3<bool>(true, !any(vec4<bool>(true, var_1.c.d.x, false, true)), arg_0.d.x), select(vec3<bool>(var_1.b.x, arg_0.b, false), vec3<bool>(true, !var_1.c.b, false), select(!vec3<bool>(false, var_1.c.b, global0.c.c.d.x), !vec3<bool>(arg_0.b, false, false), vec3<bool>(true, var_1.a.b, global0.c.c.b))), all(select(select(global0.c.c.d, vec2<bool>(false, arg_0.d.x), true), var_1.a.d, !var_1.b))), select(!vec3<bool>(true, arg_0.b, global0.c.c.d.x), vec3<bool>(true, _wgslsmith_div_f32(-519f, 1000f) != arg_0.e, any(!vec4<bool>(arg_0.d.x, global0.a.a.c, global0.c.c.b, arg_0.d.x))), false & var_1.a.b), select(vec3<bool>(any(!vec4<bool>(var_1.a.c, true, false, var_1.c.d.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(54640i, global0.c.d, global0.b.x, 24834i), vec4<i32>(global0.b.x, var_0.x, var_0.x, 1i)) != firstTrailingBit(global0.c.d), all(!global0.a.a.d)), !vec3<bool>(var_1.a.a.x < var_1.a.a.x, all(vec3<bool>(global0.c.c.b, arg_0.c, true)), global0.c.c.b), 110842u != (arg_0.a.x | ~48568u)));
    let var_3 = Struct_4(global0.a, ~vec3<i32>(-15171i, _wgslsmith_add_i32(-16471i, _wgslsmith_sub_i32(-59979i, 20188i)), global0.b.x), global0.c, _wgslsmith_f_op_vec2_f32(global0.d * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.e, arg_0.e), _wgslsmith_f_op_f32(var_1.a.e + global0.c.c.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(448f, 718f, arg_0.d.x))))), _wgslsmith_f_op_f32(trunc(1476f)));
    global0 = Struct_4(Struct_3(var_3.a.a, select(select(var_3.c.c.d, !var_2.xz, !vec2<bool>(var_3.a.b.x, global0.a.c.b)), !var_3.a.a.d, !var_1.a.b & (true & var_1.a.d.x)), Struct_1(arg_0.a, _wgslsmith_f_op_f32(var_1.a.e + 1000f) >= _wgslsmith_f_op_f32(round(global0.d.x)), false, !(!var_1.b), _wgslsmith_f_op_f32(102f * _wgslsmith_f_op_f32(round(var_3.e))))), global0.b, Struct_2(select(6804u | _wgslsmith_dot_vec2_u32(arg_0.a, vec2<u32>(27438u, 29278u)), 1u, _wgslsmith_clamp_u32(8014u, arg_0.a.x, 1u) > abs(u_input.a)), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(var_1.a.a, vec2<u32>(4294967295u, 38049u)), vec2<u32>(_wgslsmith_add_u32(global0.c.e.x, 43360u), var_3.a.c.a.x)), Struct_1(~global0.a.a.a, true, all(vec3<bool>(global0.a.c.d.x, var_3.c.c.c, false)), var_2.zx, _wgslsmith_div_f32(arg_0.e, var_3.e)), select(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(14849i, var_0.x, -4915i, var_3.b.x), vec4<i32>(var_0.x, 13212i, 2147483647i, var_0.x)), var_3.c.d ^ -10514i), _wgslsmith_mult_i32(-var_0.x, 1i), !all(vec3<bool>(true, arg_0.c, false))), ~(~var_3.c.e)), vec2<f32>(global0.c.c.e, 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(188f, var_3.a.a.e)) - var_1.a.e)))));
    return _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, ~(~23625i)), ~(var_3.c.d >> (65770u % 32u)));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = global0.c.b >> (~reverseBits(4294967295u) % 32u);
    var var_1 = min(_wgslsmith_add_vec3_i32(vec3<i32>(-global0.b.x, arg_1.x, global0.b.x), vec3<i32>(2147483647i, func_3(global0.a.c), max(1i, _wgslsmith_mod_i32(global0.b.x, 56915i)))), vec3<i32>(-firstLeadingBit(-44369i), arg_1.x, 1i >> ((u_input.a ^ u_input.a) % 32u)) & arg_1);
    var var_2 = any(vec4<bool>(global0.c.c.b, !global0.a.b.x, all(!(!vec4<bool>(global0.a.c.c, true, global0.c.c.b, true))), !all(select(vec3<bool>(global0.a.c.b, global0.c.c.c, global0.c.c.c), vec3<bool>(global0.a.b.x, false, true), vec3<bool>(false, false, false)))));
    let var_3 = _wgslsmith_f_op_f32(-arg_0);
    var_1 = vec3<i32>(-11665i, ~(-2147483647i), ~(-abs(func_3(Struct_1(global0.c.e.xx, true, false, vec2<bool>(false, global0.a.a.b), var_3)))));
    return Struct_4(Struct_3(global0.c.c, vec2<bool>(any(select(global0.a.c.d, vec2<bool>(false, global0.c.c.d.x), global0.c.c.d)), true), global0.c.c), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(-2147483647i, var_1.x, global0.b.x)) ^ arg_1, select(-vec3<i32>(global0.b.x, 32015i, 1i), arg_1, vec3<bool>(!global0.c.c.d.x, true, global0.a.b.x)), global0.b), Struct_2(var_0, firstTrailingBit(reverseBits(var_0) << (79875u % 32u)), Struct_1(~(~vec2<u32>(7406u, 4294967295u)), !(true && global0.c.c.b), all(select(vec4<bool>(true, true, false, true), vec4<bool>(global0.a.b.x, false, false, global0.c.c.d.x), global0.a.a.b)), vec2<bool>(true & global0.a.a.d.x, all(global0.a.b)), _wgslsmith_f_op_f32(-arg_0)), 2147483647i, global0.c.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, arg_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e, global0.e)))))), var_3);
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(38166u, u_input.a, 27601u, 95277u), vec4<u32>(global0.a.a.a.x, u_input.a, arg_0, 2141u)), firstTrailingBit(vec4<u32>(189u, 45563u, 13286u, global0.c.e.x))) | ~countOneBits(select(vec4<u32>(4294967295u, 26944u, 4294967295u, 27013u), vec4<u32>(0u, u_input.a, 4294967295u, 1u), vec4<bool>(arg_1, true, global0.c.c.c, true))), vec4<u32>(4294967295u >> (~_wgslsmith_sub_u32(global0.c.b, 0u) % 32u), u_input.a, reverseBits(44931u), reverseBits(0u)));
    var_0 = 4294967295u;
    global0 = func_2(global0.c.c.e, global0.b);
    var var_1 = vec4<bool>(true, any(global0.a.c.d), true, true);
    let var_2 = !vec3<bool>(true, !(!global0.c.c.d.x == true), !any(vec4<bool>(true, true, arg_1, var_1.x)));
    return Struct_2(select(_wgslsmith_dot_vec4_u32(vec4<u32>(max(4294967295u, arg_0), _wgslsmith_add_u32(0u, global0.c.a), 4294967295u | arg_0, _wgslsmith_mult_u32(1u, arg_0)), vec4<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.e.x, 11634u, 1u, 0u), vec4<u32>(11934u, global0.c.b, u_input.a, global0.a.c.a.x)), ~0u, firstLeadingBit(1u))), 19802u, var_1.x), arg_0, Struct_1(~abs(global0.a.a.a) << (global0.a.a.a % vec2<u32>(32u)), !(!any(vec4<bool>(false, arg_1, arg_1, false))), false, var_2.xy, 656f), 2147483647i, abs(func_2(_wgslsmith_f_op_f32(460f * _wgslsmith_f_op_f32(-global0.d.x)), ~(-vec3<i32>(974i, 10748i, -20991i))).c.e));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    let var_0 = arg_3.a.a;
    let var_1 = true;
    var var_2 = Struct_5(72803u, Struct_2(4294967295u, global0.a.c.a.x, Struct_1(~(~global0.a.a.a), global0.a.a.c, all(vec2<bool>(true, arg_2.c.d.x)), func_1(u_input.a << (4294967295u % 32u), true).c.d, -913f), reverseBits(abs(arg_2.d)), vec3<u32>(~78388u, arg_3.c.a.x, ~1u)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f))), vec3<i32>(global0.b.x, arg_0, -_wgslsmith_div_i32(29258i, -66501i))), vec3<i32>(firstTrailingBit(-(global0.c.d >> (57995u % 32u))), global0.b.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(49410i, arg_2.d, -1i, arg_2.d), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.d, 1i, arg_2.d, -38943i), vec4<i32>(arg_0, global0.c.d, 2147483647i, 2147483647i))), arg_0));
    var_2 = Struct_5(select(abs(arg_2.e.x), func_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(6661u, 13437u, 0u, 4294967295u), firstTrailingBit(vec4<u32>(4294967295u, arg_3.c.a.x, var_0.x, global0.a.c.a.x))), all(select(vec4<bool>(arg_3.b.x, false, arg_2.c.c, false), vec4<bool>(var_2.c.c.c.b, var_1, true, var_1), arg_3.a.b))).a, true), func_1(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.c.a.x, 34437u, var_2.c.c.c.a.x, global0.c.b), vec4<u32>(30501u, arg_2.a, arg_2.a, arg_3.c.a.x)), vec4<u32>(1u, 0u, 37406u, global0.a.c.a.x))), false), Struct_4(Struct_3(func_1(var_0.x, true).c, select(select(var_2.c.c.c.d, arg_2.c.d, arg_3.c.c), !arg_3.c.d, func_1(var_0.x, arg_3.a.c).c.d), global0.a.a), vec3<i32>(reverseBits(~(-37090i)), max(-var_2.b.d, func_3(Struct_1(arg_2.c.a, false, false, vec2<bool>(var_2.b.c.d.x, arg_3.c.b), global0.e))), 2147483647i), func_1(arg_2.a, true), _wgslsmith_f_op_vec2_f32(abs(arg_1)), 2546f), select(global0.b, reverseBits(abs(vec3<i32>(0i, global0.c.d, -17417i))), select(!(!vec3<bool>(false, var_2.b.c.d.x, var_1)), select(!vec3<bool>(false, true, global0.a.a.c), select(vec3<bool>(false, global0.a.c.c, global0.c.c.b), vec3<bool>(true, global0.c.c.c, arg_2.c.c), arg_2.c.c), vec3<bool>(true, var_1, false)), true)));
    let var_3 = arg_1.x;
    return func_2(-415f, ~vec3<i32>(var_2.c.c.d, _wgslsmith_add_i32(arg_0, arg_0 | arg_2.d), arg_0)).c.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.b.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c.c.e), 840f)));
    var_0 = func_4(~global0.b.x, _wgslsmith_f_op_vec2_f32(round(global0.d)), func_1(u_input.a, global0.a.a.d.x), func_2(_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(f32(-1f) * -1004f)), global0.b).a);
    global0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -521f), vec3<i32>(~max(global0.b.x ^ global0.c.d, global0.c.d << (u_input.a % 32u)), 30234i, firstLeadingBit(-global0.c.d) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, global0.b.x), abs(vec2<i32>(-37399i, global0.b.x)))));
    let var_2 = global0.c.c;
    var var_3 = Struct_3(global0.c.c, vec2<bool>(func_4(_wgslsmith_add_i32(-2147483647i, global0.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d)), global0.c, global0.a), var_2.d.x), func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -448f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.c.e + -2209f)))), -countOneBits(global0.b)).a.c);
    let var_4 = Struct_4(global0.a, global0.b, func_2(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_mult_vec3_i32(select(-vec3<i32>(2147483647i, global0.b.x, global0.b.x), reverseBits(global0.b), select(true, true, true)), _wgslsmith_mod_vec3_i32(select(global0.b, vec3<i32>(global0.b.x, 1i, -1i), vec3<bool>(var_2.c, false, var_3.a.d.x)), vec3<i32>(global0.b.x, 1i, -11592i) ^ vec3<i32>(global0.b.x, 0i, 11166i)))).c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.d - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1727f, -460f)), global0.d, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_2.e)), _wgslsmith_f_op_f32(-803f - -145f)) - _wgslsmith_f_op_vec2_f32(global0.d - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.e, 475f), vec2<f32>(var_2.e, -152f), false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e + _wgslsmith_f_op_f32(-var_3.a.e)) + var_3.a.e) - var_2.e));
    let var_5 = _wgslsmith_f_op_vec2_f32(trunc(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.e, var_4.d.x))))), ~(global0.b >> (~var_4.c.e % vec3<u32>(32u)))).d));
    var_3 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(global0.b), firstTrailingBit(_wgslsmith_mod_vec3_i32(var_4.b ^ vec3<i32>(global0.c.d, var_4.b.x, global0.b.x), vec3<i32>(2147483647i, -1i, global0.b.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_5.x, _wgslsmith_f_op_f32(var_3.a.e * var_5.x), _wgslsmith_div_f32(438f, -516f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(521f, var_5.x, global0.c.c.e)))), vec3<f32>(func_1(1u, var_3.b.x).c.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.a.e)) * _wgslsmith_f_op_f32(-var_2.e)), -485f), all(vec3<bool>(var_2.b, all(vec3<bool>(false, true, global0.a.a.b)), var_4.c.c.b)))), vec4<f32>(_wgslsmith_div_f32(681f, -330f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e + _wgslsmith_f_op_f32(1653f * var_3.c.e))), -1051f, _wgslsmith_f_op_f32(floor(806f))), vec2<f32>(_wgslsmith_f_op_f32(min(-367f, -167f)), 107f), 0u ^ ~(~(~var_2.a.x)));
}

