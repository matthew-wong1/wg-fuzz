struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_3 = Struct_3(1031f, 3374u, Struct_1(vec2<u32>(62583u, 4294967295u), 7740i), Struct_2(vec3<bool>(false, false, false), vec4<i32>(2147483647i, 1i, 2147483647i, -31669i)), vec3<u32>(12431u, 304u, 10412u));

var<private> global2: bool;

var<private> global3: f32;

var<private> global4: vec4<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)));
    var var_1 = any(vec3<bool>((_wgslsmith_f_op_f32(sign(1078f)) <= _wgslsmith_f_op_f32(-1076f + global1.a)) | true, global1.d.a.x, global1.d.a.x));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1261f);
    global0 = arg_1.a.x;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-830f, arg_0)), _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))))), ~global1.b, Struct_1(~_wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, 54514u)), arg_1.a), 0i), global1.d, _wgslsmith_mult_vec3_u32(abs(global1.e), global1.e));
    return var_3.d.b.xy;
}

fn func_2() -> Struct_3 {
    var var_0 = firstLeadingBit(global1.e.xz);
    var var_1 = -204f;
    var var_2 = ~vec4<u32>(1u, var_0.x, ~(~reverseBits(0u)), ~var_0.x);
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(-global1.d.b.zw ^ global1.d.b.wx), func_3(global1.a, global1.c)), _wgslsmith_mult_vec2_i32(countOneBits(~u_input.b.yx), global4.zy));
    let var_4 = global1.d.a.x;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(340f * 1030f), _wgslsmith_f_op_f32(round(global1.a)), true)), global1.a))), _wgslsmith_clamp_u32(u_input.d, firstLeadingBit(u_input.d), var_0.x), Struct_1(~global1.c.a, ~(-(~global1.d.b.x))), global1.d, vec3<u32>(14194u, ~firstLeadingBit(~global1.b), abs(_wgslsmith_mult_u32(reverseBits(var_2.x), ~u_input.c))));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global3 = _wgslsmith_f_op_f32(792f * -1119f);
    global3 = _wgslsmith_f_op_f32(ceil(global1.a));
    global1 = func_2();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 1117f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(global1.a, -1579f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a - 655f), _wgslsmith_f_op_f32(207f - 1697f)), _wgslsmith_div_f32(1488f, _wgslsmith_f_op_f32(global1.a * global1.a))))));
    var var_1 = ~(~abs(global4.x));
    return select(vec4<bool>(false || func_2().d.a.x, all(!(!vec4<bool>(global1.d.a.x, true, global1.d.a.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -834f) == var_0.x, func_2().d.a.x), select(!vec4<bool>(true, !global1.d.a.x, 21720u != arg_0.a.x, true), !select(select(vec4<bool>(false, global1.d.a.x, global1.d.a.x, global1.d.a.x), vec4<bool>(false, global1.d.a.x, global1.d.a.x, true), global1.d.a.x), select(vec4<bool>(false, true, global1.d.a.x, true), vec4<bool>(false, false, global1.d.a.x, true), global1.d.a.x), true), vec4<bool>(select(!global1.d.a.x, any(global1.d.a), !global1.d.a.x), func_2().d.a.x, global1.d.a.x, global1.d.a.x)), !global1.d.a.x && true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1(Struct_1(~global1.e.xz, 1i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-495f, _wgslsmith_f_op_f32(round(global1.a)), !var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a)))));
    let var_2 = global1.d.b;
    global2 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(min(~reverseBits(vec4<u32>(global1.e.x, global1.c.a.x, 0u, u_input.d)), vec4<u32>(~u_input.d, abs(u_input.d), 31206u, ~4294967295u)), vec4<u32>(~_wgslsmith_mod_u32(0u, u_input.c), func_2().b, max(select(u_input.d, 1u, global1.d.a.x), u_input.d), _wgslsmith_clamp_u32(~0u, u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d), global1.e.xx)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1417f)), _wgslsmith_mod_vec2_i32(max(select(vec2<i32>(var_2.x, global1.c.b), vec2<i32>(52190i, 15365i), true), vec2<i32>(-52784i, 5859i) ^ global1.d.b.xy), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, var_2.x), global1.d.b.wx)) | global4.xw, u_input.d);
}

