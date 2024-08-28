struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: u32 = 27307u;

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

var<private> global4: array<vec2<u32>, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    global4 = array<vec2<u32>, 28>();
    global3 = vec3<bool>(global3.x, !global3.x, select(global3.x, true, global3.x));
    global0 = ~u_input.a.x;
    var var_0 = select(global3.x, any(vec4<bool>(true, true, true, true)) && all(vec2<bool>(global3.x & false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1969f - _wgslsmith_f_op_f32(trunc(-1000f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(398f - 282f), _wgslsmith_f_op_f32(-366f + -248f)))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-606f, 1335f))))));
    let var_1 = Struct_4(vec3<u32>(countOneBits(abs(~0u)), _wgslsmith_div_u32(1u, ~38318u), 0u), ~(reverseBits(vec4<i32>(-2147483647i, u_input.a.x, u_input.b, u_input.a.x) ^ vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.b)) << (select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(59668u, 14992u, 4294967295u, 4294967295u), select(vec4<bool>(global3.x, global3.x, true, true), vec4<bool>(false, true, false, false), true)) % vec4<u32>(32u))), Struct_2(Struct_1(vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -949f))), ~(~global4[_wgslsmith_index_u32(5772u, 28u)]), -1144f, -227f), u_input.a.x, !(!global3.x), vec2<bool>(global3.x, !global3.x), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(504f, 1265f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(450f))), firstLeadingBit(vec2<u32>(0u, 58332u)), -594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1282f))))));
    return var_1.c.e;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: u32) -> f32 {
    global0 = countOneBits(abs(arg_2.c.b) << (~abs(~arg_0.x) % 32u));
    global2 = 4294967295u;
    global1 = ~arg_3;
    let var_0 = arg_1.d.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(335f, arg_2.c.e.e)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-547f + arg_2.c.e.d) - arg_2.c.a.b)))));
    return arg_2.c.e.d;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    global3 = !select(arg_0, select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(arg_0.x, true, select(arg_0.x, false, global3.x)), arg_0), all(vec4<bool>(global3.x, true, select(false, global3.x, arg_0.x), any(vec3<bool>(arg_0.x, global3.x, false)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-854f, arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -747f), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(581f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(925f, 2533f)) * _wgslsmith_f_op_f32(629f - arg_1)))), vec2<u32>(33324u, 4294967295u), 779f, arg_1);
}

fn func_1() -> f32 {
    let var_0 = func_4(!(!(!vec3<bool>(global3.x, false, global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(1u, 1u, 1u, 1u), Struct_2(func_2(), 1i, false, vec2<bool>(true, false), Struct_1(vec2<f32>(520f, 1000f), -1333f, global4[_wgslsmith_index_u32(4294967295u, 28u)], -152f, -921f)), Struct_4(~vec3<u32>(0u, 13903u, 1u), vec4<i32>(15357i, 28172i, -1i, -5049i) & vec4<i32>(u_input.a.x, -2147483647i, u_input.b, -1i), Struct_2(Struct_1(vec2<f32>(-260f, -318f), 569f, vec2<u32>(4294967295u, 15545u), 639f, -839f), -2147483647i, false, vec2<bool>(global3.x, global3.x), Struct_1(vec2<f32>(-956f, 1033f), 1335f, global4[_wgslsmith_index_u32(2686u, 28u)], -561f, 1875f))), 1u)) + _wgslsmith_f_op_f32(f32(-1f) * -1948f)));
    var var_1 = _wgslsmith_div_vec3_i32(~(-u_input.a), vec3<i32>((u_input.b << (~0u % 32u)) >> (var_0.c.x % 32u), _wgslsmith_add_i32(_wgslsmith_mod_i32(26584i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, 0i))), _wgslsmith_div_i32(u_input.b, ~(~u_input.a.x))));
    let var_2 = false;
    var var_3 = any(select(global3.xz, global3.xz, !vec2<bool>(any(vec4<bool>(false, var_2, true, false)), true)));
    let var_4 = _wgslsmith_dot_vec3_i32(min(~(~u_input.a & u_input.a), min(vec3<i32>(_wgslsmith_mult_i32(u_input.b, 15154i), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(24091i, 28658i, var_1.x)), 2147483647i), firstTrailingBit(vec3<i32>(var_1.x, 0i, 1i)))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, i32(-1i) * -52107i, abs(u_input.a.x)), ~(-u_input.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-353f + var_0.e), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-852f - var_0.b) + -2125f), any(vec3<bool>(true, true, var_2)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1575f)), -197f)) - -1200f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-648f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2274f * -747f)))))));
    let var_1 = func_4(select(select(select(select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(global3.x, true, global3.x), select(vec3<bool>(global3.x, true, true), vec3<bool>(true, false, global3.x), vec3<bool>(global3.x, true, global3.x))), !(!vec3<bool>(true, true, global3.x)), !select(vec3<bool>(false, false, global3.x), vec3<bool>(false, global3.x, global3.x), true)), select(!(!vec3<bool>(global3.x, false, false)), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, global3.x, global3.x, global3.x)), global3.x, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), var_0.x)) <= var_0.x), -822f);
    global1 = ~var_1.c.x;
    let var_2 = -1797i;
    let var_3 = any(!(!vec2<bool>(global3.x && global3.x, false)));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-883f, var_1.b, !global3.x)))), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f - var_0.x) - var_0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-948f, -1727f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-425f, var_0.x)))), -270f, vec2<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(var_1.c.x, 17550u), 4294967295u), countOneBits(~28800u)), _wgslsmith_f_op_f32(f32(-1f) * -1263f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f)))));
    global0 = -2147483647i;
    let var_5 = select(select(!(!vec4<bool>(false, false, global3.x, true)), select(!select(vec4<bool>(true, global3.x, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, global3.x, global3.x)), select(!vec4<bool>(false, true, var_3, true), vec4<bool>(global3.x, false, false, global3.x), all(vec3<bool>(true, global3.x, false))), select(select(vec4<bool>(global3.x, false, false, true), vec4<bool>(global3.x, var_3, false, global3.x), global3.x), !vec4<bool>(var_3, true, var_3, false), vec4<bool>(false, var_3, var_3, false))), !(!select(vec4<bool>(var_3, true, global3.x, global3.x), vec4<bool>(var_3, global3.x, false, global3.x), var_3))), vec4<bool>(all(vec3<bool>(true, all(vec2<bool>(var_3, var_3)), var_3)), !all(vec2<bool>(global3.x, global3.x)), !(!any(vec2<bool>(global3.x, true))), all(global3.zx)), any(vec3<bool>(!var_3, !global3.x & !global3.x, !var_3)));
    var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f - _wgslsmith_f_op_f32(-var_4.a)))), u_input.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_4.c, 1387f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c) - 1110f), var_0.x)), var_3)), Struct_1(vec2<f32>(var_0.x, var_4.d.a.x), -741f, var_1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - var_4.c), var_1.e, select(false, var_3, global3.x))), _wgslsmith_div_f32(var_1.d, 308f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 104745u, var_1.c.x, 1u), vec4<u32>(1u, var_1.c.x, var_1.c.x, 10154u), false), vec4<u32>(1u, var_4.d.c.x, 1u, var_1.c.x)), select(vec4<u32>(var_4.d.c.x, var_4.d.c.x, 107932u, var_4.d.c.x) >> (vec4<u32>(var_4.d.c.x, var_4.d.c.x, 0u, var_4.d.c.x) % vec4<u32>(32u)), (vec4<u32>(6446u, 112569u, var_1.c.x, 23528u) & vec4<u32>(var_4.d.c.x, 6632u, var_4.d.c.x, var_4.d.c.x)) >> (~vec4<u32>(115956u, var_4.d.c.x, 1u, 43691u) % vec4<u32>(32u)), true)), var_1.a, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-40576i, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(-43493i, -1i, u_input.b, u_input.b)), 1i) >> (1u % 32u));
}

