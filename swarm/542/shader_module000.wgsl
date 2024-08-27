struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: Struct_2;

var<private> global2: u32;

var<private> global3: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_5(Struct_2(Struct_1(countOneBits(4294967295u | arg_2.x), ~max(vec4<u32>(11884u, arg_2.x, arg_2.x, 1u), vec4<u32>(1u, global1.b.b.x, global0[_wgslsmith_index_u32(u_input.a, 29u)], 0u))), Struct_1(firstTrailingBit(25030u), ~global1.b.b), vec3<f32>(-473f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + global1.d.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.x, global1.d.x, global1.c.x, arg_1.b.x)), vec4<f32>(1000f, _wgslsmith_f_op_f32(645f * global1.c.x), _wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1662f)))), true));
    var var_1 = global1.a;
    global1 = var_0.a;
    var var_2 = Struct_3(arg_1.b, global1.b.a, _wgslsmith_f_op_vec3_f32(var_0.a.d.yyw * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.c - vec3<f32>(-1469f, -125f, 590f)))))));
    global1 = Struct_2(var_0.a.a, global1.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.b))), var_0.a.d, var_0.a.e);
    return 518f;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-global1.d);
    global2 = global1.a.b.x;
    var var_1 = Struct_2(global1.b, Struct_1(~((u_input.a & global0[_wgslsmith_index_u32(u_input.d, 29u)]) | global1.a.b.x), vec4<u32>(1u, ~(~25540u), 23317u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(63521u, 29u)], 0u), ~vec2<u32>(4294967295u, 4294967295u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.xwx))), vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.a.b.wy << (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u)), Struct_4(u_input.b, var_0.zzz, -1i, vec4<i32>(u_input.b.x, -41543i, u_input.b.x, -2147483647i), global1.d.zz), _wgslsmith_mod_vec3_u32(global1.a.b.yww, global1.a.b.wzz)))), _wgslsmith_f_op_f32(abs(global1.d.x)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), true);
    let var_2 = u_input.d;
    var var_3 = global1.b.b.wy;
    return Struct_2(var_1.a, Struct_1(global1.b.a, reverseBits(vec4<u32>(1u | var_1.b.a, _wgslsmith_dot_vec4_u32(var_1.a.b, vec4<u32>(44893u, 12729u, u_input.a, global1.a.a)), ~1u, firstLeadingBit(global1.a.a)))), _wgslsmith_f_op_vec3_f32(global1.c + var_0.wyz), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0), vec4<f32>(var_1.c.x, 2011f, 389f, -634f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(round(var_0)))))), false);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_5) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1130f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a.c.x), 1f, all(vec3<bool>(false, arg_2.a.e, arg_2.a.e)))))))), _wgslsmith_f_op_f32(f32(-1f) * -2488f));
    let var_1 = 2703i;
    var var_2 = abs(_wgslsmith_div_vec4_u32(~(~(~arg_2.a.b.b)), global1.b.b));
    var var_3 = -788f;
    let var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-_wgslsmith_clamp_i32(u_input.b.x, -1i, -2147483647i), ~arg_1.x), ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b.x, arg_1.x)), arg_1.xx >> (global1.b.b.yy % vec2<u32>(32u))), _wgslsmith_sub_i32(abs(min(-24319i, u_input.b.x)), -(~arg_1.x)), -1i), firstTrailingBit(vec4<i32>(-1i, ~var_1, -1i, ~(i32(-1i) * -14494i))));
    return Struct_1(~_wgslsmith_div_u32(min(~125963u, ~global1.a.a), ~(~var_2.x)), firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(18283u, 29u)], 123798u, 62884u, global0[_wgslsmith_index_u32(24089u, 29u)]), ~(arg_2.a.b.b >> (vec4<u32>(59968u, 0u, 1u, u_input.c) % vec4<u32>(32u))))));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    global3 = all(vec2<bool>(any(!vec4<bool>(true, false, true, global1.e)), !(!global1.e)));
    global3 = 0u < ~u_input.a;
    let var_0 = arg_1;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(floor(global1.c)), -(~(-u_input.b)), Struct_5(func_2()));
    let var_2 = var_1;
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(~u_input.d << (1u % 32u), 29u)], global1.b.b);
    var_0 = func_1(-1170f, -_wgslsmith_div_i32(-2147483647i, select(0i, _wgslsmith_div_i32(9466i, u_input.b.x), false)));
    let var_1 = Struct_5(Struct_2(global1.a, global1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -390f, -1000f) * _wgslsmith_div_vec3_f32(global1.d.wzz, global1.c)) * vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), -114f, global1.d.x)), vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(global1.d.x - 434f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-229f)) - func_2().c.x), -274f), true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.d.x - global1.c.x), _wgslsmith_div_f32(var_1.a.c.x, var_1.a.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1449f + global1.d.x))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d.x))))));
    let var_3 = global1.a.b.x;
    global1 = Struct_2(func_1(-136f, u_input.b.x), func_2().b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1484f, 897f, -2038f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1122f, 2856f))))), global1.d, any(select(select(vec3<bool>(true, global1.e, false), select(vec3<bool>(false, global1.e, global1.e), vec3<bool>(true, false, false), vec3<bool>(true, false, var_1.a.e)), select(vec3<bool>(var_1.a.e, global1.e, global1.e), vec3<bool>(var_1.a.e, var_1.a.e, var_1.a.e), true)), select(vec3<bool>(true, false, true), !vec3<bool>(global1.e, true, var_1.a.e), !vec3<bool>(var_1.a.e, true, false)), select(select(vec3<bool>(false, false, true), vec3<bool>(var_1.a.e, false, var_1.a.e), var_1.a.e), select(vec3<bool>(false, var_1.a.e, var_1.a.e), vec3<bool>(global1.e, false, true), vec3<bool>(global1.e, var_1.a.e, true)), vec3<bool>(global1.e, global1.e, true)))));
    var_0 = Struct_1(_wgslsmith_dot_vec4_u32(var_1.a.b.b, var_1.a.b.b), func_2().a.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yy, ~firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(0u, var_1.a.a.a), func_4(global1.d.xwy, u_input.b, var_1).a)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-u_input.b.zx, select(~vec2<i32>(u_input.b.x, u_input.b.x), -vec2<i32>(u_input.b.x, 16339i), vec2<bool>(global1.e, var_1.a.e))), u_input.b.x), vec4<i32>(-u_input.b.x ^ (reverseBits(u_input.b.x) | _wgslsmith_mult_i32(u_input.b.x, 33284i)), u_input.b.x, u_input.b.x, _wgslsmith_mult_i32(max(min(u_input.b.x, u_input.b.x), select(u_input.b.x, 0i, true)), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x))));
}

