struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: f32) -> vec2<bool> {
    let var_0 = global0.d.a;
    global0 = Struct_2(_wgslsmith_sub_i32((global0.a ^ countOneBits(-28649i)) >> (arg_1.x % 32u), -11969i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + -268f), global0.b.x, 1433f, _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(-arg_2), global0.d.b.x)))), ~0u, global0.d, _wgslsmith_div_vec3_u32(vec3<u32>(~0u, min(u_input.a, global0.e.x), global0.c) ^ vec3<u32>(~11070u, ~4294967295u, u_input.a), max(_wgslsmith_mod_vec3_u32(countOneBits(global0.e), select(vec3<u32>(1u, arg_1.x, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<bool>(true, false, true))), ~vec3<u32>(0u, u_input.a, 4294967295u) << (vec3<u32>(global0.e.x, u_input.a, u_input.a) % vec3<u32>(32u)))));
    let var_1 = Struct_1(~(~(~global0.a) << (((u_input.a & arg_1.x) | ~4294967295u) % 32u)), select(vec2<bool>(true, false), global0.d.b, !global0.d.b.x));
    global0 = Struct_2(-1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, 437f, -1232f)))) + vec4<f32>(_wgslsmith_f_op_f32(arg_2 - global0.b.x), _wgslsmith_f_op_f32(select(1292f, -1220f, any(var_1.b))), _wgslsmith_f_op_f32(-396f + 293f), arg_2)), abs(_wgslsmith_sub_u32(arg_1.x, ~arg_1.x)), Struct_1(u_input.b, !vec2<bool>(any(vec3<bool>(true, false, false)), var_1.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~global0.c << (0u % 32u), countOneBits(firstTrailingBit(0u)), 4294967295u), firstLeadingBit(select(global0.e, _wgslsmith_mult_vec3_u32(vec3<u32>(global0.e.x, 0u, arg_1.x), vec3<u32>(13297u, 30066u, u_input.a)), !vec3<bool>(false, var_1.b.x, true))), arg_1));
    global0 = Struct_2(-abs(2147483647i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -676f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -170f))))), arg_1.x, var_1, ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a, 27801u, global0.e.x)), _wgslsmith_mult_vec3_u32(arg_1, global0.e)));
    return vec2<bool>(all(!(!var_1.b)), !(!(global0.c > (u_input.a & 1u))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(min(-1i >> (global0.e.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 39733i, global0.a, -2147483647i), vec4<i32>(global0.a, 3923i, -2147483647i, u_input.c.x))), ~(global0.a >> (global0.c % 32u))), _wgslsmith_sub_i32(u_input.c.x, global0.d.a)), global0.d.b);
    global0 = Struct_2(13393i, arg_1, countOneBits(global0.c >> (u_input.a % 32u)), Struct_1(~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 11265i, -654i, u_input.c.x), vec4<i32>(-2147483647i, global0.d.a, u_input.b, 1i) ^ vec4<i32>(var_0.a, 0i, -37185i, global0.d.a)), !select(func_3(arg_1.ywx, global0.e, global0.b.x), var_0.b, 8557i != global0.d.a)), global0.e);
    var var_1 = ~firstLeadingBit(global0.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1722f * global0.b.x))))), _wgslsmith_f_op_f32(ceil(-934f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(round(global0.b.yy)), true)) - vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + -289f), _wgslsmith_f_op_f32(arg_0.x * 195f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.zz))) + global0.b.ww)), vec2<bool>((~global0.e.x > 4294967295u) | false, false)));
    var var_3 = Struct_2(_wgslsmith_sub_i32(-(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global0.d.a), vec2<i32>(var_0.a, var_0.a)) >> (max(1u, u_input.a) % 32u)), ~global0.d.a), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-303f - _wgslsmith_f_op_f32(-arg_2)))), -1506f, _wgslsmith_f_op_f32(abs(751f)), 627f), global0.e.x, var_0, vec3<u32>(~_wgslsmith_add_u32(global0.e.x, 0u) >> (1u % 32u), ~(_wgslsmith_dot_vec2_u32(global0.e.xz, global0.e.xz) >> (75043u % 32u)), ~(~0u & _wgslsmith_mod_u32(global0.c, 42034u))));
    return Struct_2(firstLeadingBit(firstLeadingBit(u_input.b)) ^ -firstTrailingBit(-global0.a), _wgslsmith_f_op_vec4_f32(-global0.b), 0u, Struct_1(1i, vec2<bool>(all(vec2<bool>(global0.d.b.x, true)) && any(vec3<bool>(true, global0.d.b.x, true)), var_0.b.x)), min(countOneBits(abs(vec3<u32>(var_3.c, u_input.a, var_3.c) ^ var_3.e)), ~select(vec3<u32>(70821u, 0u, var_3.c), ~global0.e, all(vec4<bool>(global0.d.b.x, false, true, false)))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(global0.b.zy, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1869f, -1800f, global0.b.x, global0.b.x) - global0.b))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(658f, global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + -1336f) + -2762f), 312f, -173f), global0.d.b.x)), _wgslsmith_f_op_f32(round(global0.b.x)));
    var var_1 = 1344f;
    var_1 = global0.b.x;
    var_1 = var_0.b.x;
    let var_2 = select(_wgslsmith_mult_vec2_i32(-((u_input.c ^ u_input.c) >> (~vec2<u32>(0u, 0u) % vec2<u32>(32u))), vec2<i32>(0i, var_0.a) | -vec2<i32>(global0.a, 0i)), u_input.c, vec2<bool>(!((u_input.a | 1u) == ~0u), func_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.b.x)), _wgslsmith_f_op_f32(select(582f, global0.b.x, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, var_0.b.x, var_0.b.x, global0.b.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - -2001f), global0.b.x, !var_0.d.b.x))).d.b.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(i32(-1i) * -2147483647i, global0.b, u_input.a, Struct_1(22885i, vec2<bool>(global0.d.b.x, global0.d.b.x)), _wgslsmith_sub_vec3_u32(select(~(vec3<u32>(global0.c, 18313u, global0.c) >> (global0.e % vec3<u32>(32u))), ~min(vec3<u32>(11992u, global0.c, 4294967295u), vec3<u32>(global0.e.x, u_input.a, 4294967295u)), true), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(31241u, global0.e.x, global0.e.x), _wgslsmith_sub_vec3_u32(global0.e, vec3<u32>(1u, 0u, 31520u)))));
    let var_1 = u_input.c;
    global0 = func_1();
    var var_2 = ~0u << (~max(~(global0.e.x >> (global0.e.x % 32u)), u_input.a) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c), _wgslsmith_f_op_f32(-global0.b.x), min(~vec3<u32>(~u_input.a, select(var_0.c, u_input.a, true), 39341u), ~(~countOneBits(vec3<u32>(32046u, 4294967295u, 0u)))), ~countOneBits(~select(vec2<u32>(0u, 26958u), vec2<u32>(57991u, var_0.e.x), vec2<bool>(true, true))));
}

