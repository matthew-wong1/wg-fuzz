struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = 241f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(arg_0.c.d)))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(arg_0.c.d.x - global0.c.d.x));
    let var_3 = arg_0;
    let var_4 = var_2;
    return _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 0u, 85164u, 4294967295u), vec4<u32>(1u, 1u, var_0.c, global0.c.e)) >> (1u % 32u)), ~(~56664u));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    global0 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(~global0.c.c), ~(~arg_1.c.e)), 4294967295u), !vec3<bool>(select(true, true, all(vec3<bool>(true, true, global0.e.x))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, arg_1.e.x, global0.b.x), vec3<bool>(false, global0.b.x, true))), any(!vec3<bool>(false, global0.b.x, false))), arg_1.c, arg_1.d, select(vec3<bool>(arg_1.b.x & arg_1.b.x, true, true && !global0.b.x), select(global0.b, vec3<bool>(global0.e.x, arg_1.b.x, global0.e.x == arg_1.e.x), select(true, true, !arg_1.e.x)), select(global0.e, vec3<bool>(arg_1.c.c < 89867u, true, all(global0.b)), all(vec4<bool>(arg_1.b.x, true, arg_1.e.x, arg_1.b.x)))));
    global0 = arg_1;
    var var_0 = ~vec4<u32>(arg_1.d.x, _wgslsmith_div_u32(countOneBits(abs(arg_1.a)), firstTrailingBit(1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(1u, u_input.e)), global0.c.a), global0.c.a), arg_2);
    let var_1 = firstTrailingBit(-select(min(~global0.c.b, -vec4<i32>(arg_0.x, 36745i, 1i, 0i)), firstTrailingBit(arg_1.c.b), vec4<bool>(all(vec4<bool>(arg_1.e.x, global0.e.x, global0.e.x, false)), true, -1000f >= global0.c.d.x, !arg_1.b.x)));
    let var_2 = ~var_0.yw & global0.c.a;
    return 639f;
}

fn func_2() -> Struct_2 {
    let var_0 = global0.c;
    global0 = Struct_2(~(~52659u), global0.b, global0.c, global0.d, vec3<bool>(global0.b.x, global0.b.x, global0.e.x != global0.e.x));
    let var_1 = !global0.b;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-global0.c.b.wz, Struct_2(func_3(Struct_2(global0.a, var_1, Struct_1(vec2<u32>(1u, u_input.d), var_0.b, 30808u, global0.c.d, var_0.e), global0.d, vec3<bool>(global0.e.x, global0.e.x, false))), vec3<bool>(var_0.d.x <= 503f, any(vec3<bool>(true, global0.e.x, true)), select(var_1.x, var_1.x, true)), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 29199u), vec2<u32>(40275u, var_0.e)), vec4<i32>(global0.c.b.x, 9684i, 1i, global0.c.b.x), 4294967295u, vec3<f32>(var_0.d.x, 445f, -764f), ~12931u), max(abs(vec3<u32>(global0.a, 30794u, 4294967295u)), global0.d), vec3<bool>(true, select(true, true, global0.e.x), false && var_1.x)), global0.c.a.x)));
    var var_2 = Struct_1(~vec2<u32>(~(~1u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.d, global0.c.e), vec2<u32>(u_input.c.x, u_input.e), vec2<bool>(true, false)), firstTrailingBit(global0.d.xx))), _wgslsmith_mult_vec4_i32(min(abs(global0.c.b), var_0.b), ~var_0.b), reverseBits(43068u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(global0.c.d, vec3<f32>(-322f, var_0.d.x, -496f), global0.e.x)), _wgslsmith_f_op_vec3_f32(global0.c.d + global0.c.d))), var_0.d), vec3<f32>(-280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c.d.x)) * 723f), 1000f))), countOneBits(4294967295u));
    return Struct_2(select(_wgslsmith_div_u32(0u, ~1u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(10395u, 1u), vec2<u32>(u_input.c.x, var_2.a.x))), false), select(vec3<bool>(_wgslsmith_clamp_i32(0i, var_2.b.x, global0.c.b.x) <= _wgslsmith_add_i32(u_input.a.x, 25763i), any(select(vec2<bool>(var_1.x, false), var_1.xy, true)), true && all(var_1)), select(var_1, !var_1, !var_1.x), vec3<bool>(_wgslsmith_f_op_f32(ceil(664f)) <= -831f, !var_1.x, true)), global0.c, abs(~global0.d), select(select(global0.e, !select(global0.e, vec3<bool>(global0.e.x, false, global0.e.x), vec3<bool>(var_1.x, true, true)), ~u_input.e <= var_0.a.x), !select(global0.b, !global0.e, var_1.x), true));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec2<i32>) -> f32 {
    global0 = func_2();
    let var_0 = Struct_2(u_input.c.x, global0.b, Struct_1(vec2<u32>(~(~14154u), u_input.e), vec4<i32>(1i, i32(-1i) * -1i, ~(-2147483647i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-21434i, -57544i, arg_1), vec3<i32>(2147483647i, global0.c.b.x, 10629i)), 21540i), ~20949u << (~(~global0.d.x) % 32u), vec3<f32>(_wgslsmith_f_op_f32(round(-305f)), arg_0.d.x, _wgslsmith_f_op_f32(-arg_0.d.x)), ~global0.d.x), _wgslsmith_sub_vec3_u32(global0.d, global0.d) >> (select(func_2().d << (~vec3<u32>(32104u, 1u, 87043u) % vec3<u32>(32u)), global0.d, any(!vec4<bool>(global0.b.x, false, global0.b.x, global0.e.x))) % vec3<u32>(32u)), func_2().b);
    var var_1 = min(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_2, 1i, -arg_0.b.x, -arg_2)), vec4<i32>(firstTrailingBit(i32(-1i) * -7418i), -1i, -11587i, 2147483647i)), i32(-1i) * -(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, var_0.c.b.x, arg_3.x, -2147483647i), vec4<i32>(global0.c.b.x, arg_0.b.x, -9867i, global0.c.b.x)) | _wgslsmith_add_i32(arg_2, -36051i)));
    var_1 = max(global0.c.b.x, -4480i);
    var var_2 = var_0.c.b.zwz | -(global0.c.b.xzw | arg_0.b.yww);
    return global0.c.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(451u, !(!vec3<bool>(all(vec4<bool>(false, global0.b.x, true, global0.b.x)), !global0.b.x, true)), global0.c, vec3<u32>(global0.a, ~u_input.e, global0.a), global0.b);
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-855f + 1402f)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.d.x));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_mult_vec2_u32(u_input.c >> (vec2<u32>(global0.d.x, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.d.x, 1u), global0.d.zy)), vec4<i32>(2147483647i, global0.c.b.x, -u_input.a.x, -global0.c.b.x), ~_wgslsmith_sub_u32(10691u, u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(391f, 478f, 296f))), max(u_input.e, 60297u)), u_input.b.x, global0.c.b.x, ~vec2<i32>(u_input.a.x, abs(u_input.a.x)))));
    let var_1 = vec4<i32>(u_input.b.x | 1i, 0i, _wgslsmith_div_i32(global0.c.b.x, u_input.b.x | u_input.a.x), _wgslsmith_div_i32(global0.c.b.x, global0.c.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(min(~(~vec4<u32>(4294967295u, 1u, global0.d.x, global0.a)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 20278u, global0.a, global0.c.e), vec4<u32>(global0.c.e, 126025u, 59046u, 5295u) << (vec4<u32>(73143u, global0.a, 4294967295u, global0.c.e) % vec4<u32>(32u)), vec4<u32>(26187u, u_input.c.x, 38379u, global0.a) & vec4<u32>(4294967295u, 14984u, 27877u, u_input.d))), ((vec4<u32>(global0.d.x, 24287u, 0u, 12177u) | vec4<u32>(u_input.c.x, global0.c.e, 0u, 1u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(28438u, u_input.d, global0.a, global0.d.x), vec4<u32>(global0.d.x, 0u, 1u, 27563u))) | (_wgslsmith_sub_vec4_u32(vec4<u32>(global0.d.x, 0u, global0.d.x, 4294967295u), vec4<u32>(u_input.e, 11052u, 0u, global0.a)) >> (vec4<u32>(global0.a, u_input.c.x, global0.d.x, global0.a) % vec4<u32>(32u)))), 1u, u_input.b, ~(global0.c.b.xw ^ abs(select(vec2<i32>(global0.c.b.x, u_input.a.x), var_1.zx, vec2<bool>(false, true)))));
}

