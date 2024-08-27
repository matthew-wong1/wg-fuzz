struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1000f);

var<private> global1: Struct_1;

var<private> global2: i32 = 2147483647i;

var<private> global3: vec3<u32>;

var<private> global4: vec3<u32> = vec3<u32>(17341u, 1u, 4294967295u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    global3 = vec3<u32>(0u, global3.x, ~min(~global4.x << (abs(arg_0) % 32u), firstTrailingBit(~u_input.d)));
    global4 = vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, _wgslsmith_mod_u32(u_input.d, 1u), global3.x), firstLeadingBit(~vec3<u32>(global4.x, 18596u, 42224u))), ~_wgslsmith_mult_u32(~8479u, _wgslsmith_clamp_u32(30017u, arg_0, u_input.d))) >> (~(~min(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 16690u, 4294967295u), vec3<u32>(arg_0, 4294967295u, 7568u)), vec3<u32>(global4.x, global3.x, global4.x))) % vec3<u32>(32u));
    global4 = select(vec3<u32>(~_wgslsmith_clamp_u32(global4.x, u_input.b.x, 4294967295u), 18324u, _wgslsmith_sub_u32(~global3.x, 0u)) << (_wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(global3.x, 0u, global3.x), vec3<u32>(u_input.b.x, global4.x, global3.x)), select(~vec3<u32>(4294967295u, 64686u, u_input.d), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0, global4.x, 0u), vec3<u32>(12612u, u_input.b.x, 5417u)), vec3<bool>(true, true, true))) % vec3<u32>(32u)), countOneBits(firstLeadingBit(abs(vec3<u32>(global4.x, 4294967295u, 3251u)))) >> (_wgslsmith_add_vec3_u32(abs(vec3<u32>(4294967295u, arg_0, 4294967295u) >> (vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) % vec3<u32>(32u))), ~(~vec3<u32>(global4.x, 4294967295u, global3.x))) % vec3<u32>(32u)), select(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))), true, 0u < arg_0) || all(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)));
    global0 = Struct_1(global1.a);
    global0 = Struct_1(2202f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + 877f), _wgslsmith_f_op_f32(floor(global1.a))))) + _wgslsmith_f_op_f32(-global1.a));
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(87073u, global1.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~646u, _wgslsmith_f_op_f32(f32(-1f) * -452f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-423f, global1.a)))))));
    let var_0 = !any(select(vec4<bool>(-278f == global1.a, true, false, true), vec4<bool>(true, true, true, true), !(-3735f < global1.a)));
    let var_1 = u_input.b.x;
    var var_2 = vec3<bool>(!(~u_input.d == 1u), !(global0.a <= global1.a), 0i < _wgslsmith_mult_i32(2147483647i, min(2147483647i, u_input.c.x)));
    var var_3 = vec3<u32>(countOneBits(1229u), _wgslsmith_clamp_u32(var_1, ~global3.x >> (4294967295u % 32u), global4.x), ~(~(~_wgslsmith_add_u32(u_input.d, global4.x))));
    return Struct_1(-1025f);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.c.www;
    let var_1 = max(_wgslsmith_add_vec4_i32(u_input.c, select(vec4<i32>(var_0.x, -9796i, 2578i, u_input.c.x), _wgslsmith_add_vec4_i32(u_input.c, u_input.c), vec4<bool>(true, true, true, true)) << (abs(~vec4<u32>(1u, 0u, 14374u, global4.x)) % vec4<u32>(32u))), reverseBits(u_input.c));
    var var_2 = global0.a;
    var var_3 = arg_0;
    var var_4 = vec4<u32>(~global4.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~u_input.d, ~global4.x, u_input.b.x), _wgslsmith_mult_u32(42884u, global4.x) >> (20457u % 32u)), global3.x, ~(~_wgslsmith_mod_u32(37620u, ~global4.x)));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> vec4<bool> {
    global4 = vec3<u32>(global4.x, ~3985u, u_input.d);
    var var_0 = vec2<i32>(34490i, abs((u_input.c.x ^ 34421i) & 9721i));
    let var_1 = u_input.a.x;
    var var_2 = func_4(arg_0);
    global2 = 1i;
    return vec4<bool>(true, true, true, true);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = u_input.c;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(934f - _wgslsmith_f_op_f32(trunc(global1.a))), global0.a)));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)));
    let var_2 = _wgslsmith_f_op_f32(-global1.a);
    let var_3 = select(vec4<bool>(true, arg_0.x, arg_0.x, !all(select(vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), true))), select(!vec4<bool>(global3.x > 10873u, 8733i != var_0.x, false, global1.a > var_1.a), vec4<bool>(arg_0.x, !all(vec2<bool>(true, false)), false, arg_0.x && false), func_5(func_4(func_2()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 1706f, var_2)))))), !(~_wgslsmith_clamp_u32(arg_1.x, global4.x, 28895u) <= 82162u));
    return func_2();
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_add_i32(-1i & u_input.c.x, u_input.c.x);
    let var_1 = 9024u;
    var var_2 = abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_0, global4.x), _wgslsmith_add_vec3_u32(vec3<u32>(3237u, 4294967295u, u_input.d), max(vec3<u32>(4294967295u, u_input.d, arg_0), vec3<u32>(15224u, global4.x, u_input.d))))) <= var_1;
    let var_3 = !(!vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(51236i, 2147483647i), vec2<i32>(u_input.c.x, u_input.c.x)) <= abs(-31112i), (var_1 < 10747u) || true));
    global3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~arg_0, reverseBits(firstTrailingBit(1u << (1u % 32u))), abs(_wgslsmith_div_u32(global4.x, 120782u) | _wgslsmith_clamp_u32(1u, 4294967295u, var_1))), countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, var_1, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.d, arg_0), vec3<u32>(12039u, var_1, var_1))), vec3<u32>(~u_input.b.x, ~arg_0, _wgslsmith_add_u32(8471u, var_1)))), ~vec3<u32>(global3.x, var_1, global3.x) | vec3<u32>(abs(abs(var_1)), abs(91248u) ^ u_input.b.x, 0u));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(-385f + _wgslsmith_f_op_f32(step(global0.a, global1.a))));
    var var_0 = func_6(global3.x, func_1(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), ~(max(vec3<u32>(global4.x, 52982u, u_input.b.x), vec3<u32>(u_input.d, 1u, 4103u)) | vec3<u32>(0u, 4294967295u, u_input.d))));
    global2 = select(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.c.x, 2147483647i, u_input.a.x, 1i)), vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, -53754i) >> (~vec4<u32>(4294967295u, 0u, u_input.d, global3.x) % vec4<u32>(32u))), countOneBits(abs(-15635i)), false);
    global4 = firstTrailingBit(~(vec3<u32>(global4.x, u_input.d, global4.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.b.x), vec3<u32>(u_input.b.x, 0u, global3.x)) % vec3<u32>(32u)))) ^ firstLeadingBit(vec3<u32>(1u, u_input.d, ~1u));
    var_0 = select(func_5(func_1(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(true, true), select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_add_vec3_u32(vec3<u32>(global4.x, 4294967295u, global3.x) >> (vec3<u32>(u_input.b.x, 22527u, global4.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, u_input.b.x, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1387f, -452f, global0.a)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1453f, -165f, 261f))))).zw, vec2<bool>(true, true), select(func_6(global3.x, Struct_1(_wgslsmith_f_op_f32(step(global0.a, global1.a)))), !(!func_5(Struct_1(328f), vec3<f32>(926f, global1.a, global0.a)).zw), vec2<bool>(!var_0.x, !(!var_0.x))));
    global2 = (((-u_input.c.x >> (_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u) % 32u)) ^ reverseBits(_wgslsmith_mult_i32(u_input.a.x, -1i))) ^ u_input.a.x) << (4294967295u % 32u);
    let var_1 = func_2();
    let var_2 = Struct_1(_wgslsmith_div_f32(global1.a, -189f));
    let x = u_input.a;
    s_output = StorageBuffer(114953u | (35264u >> (global3.x % 32u)), ~(~23463u), 2266i);
}

