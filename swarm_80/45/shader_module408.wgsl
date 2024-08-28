struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32;

var<private> global2: i32;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    var var_0 = Struct_3(vec3<i32>(u_input.d, -44346i, max(~(~u_input.d), max(u_input.d | u_input.d, u_input.b.x))), arg_1.b.a.zz);
    global2 = select(-2147483647i, 10280i, any(!arg_0));
    global4 = array<vec2<bool>, 6>();
    var var_1 = Struct_1(arg_1.b.a, reverseBits(u_input.d), 14368u, -805f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1.c.e))));
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(508f, arg_1.c.e.x)) * 197f);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec3<i32>) -> bool {
    return false;
}

fn func_1() -> Struct_1 {
    global1 = ~(~(-17647i)) ^ ~u_input.b.x;
    global2 = -17461i;
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -557f, global0.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, global3.x), Struct_2(u_input.b.xww, Struct_1(vec3<u32>(0u, 8902u, u_input.a), 10579i, 12421u, 133f, global0.ywx), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 24350u), u_input.b.x, u_input.c.x, global0.x, vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(614f, global0.x, global0.x, -2364f)))), _wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(func_2(!vec3<bool>(global3.x, true, global3.x), Struct_2(vec3<i32>(-1i, 60549i, -1i), Struct_1(u_input.c.xyz, 1i, 1353u, global0.x, vec3<f32>(1000f, 1660f, -425f)), Struct_1(u_input.c.zwx, u_input.d, 4294967295u, -839f, global0.xyy)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-158f, -143f, -812f, -694f) * vec4<f32>(global0.x, 151f, 441f, 628f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-225f - 1227f), 2392f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(187f, _wgslsmith_f_op_f32(global0.x - global0.x), 502f, 1f)), vec4<bool>(true, false, func_3(u_input.d, Struct_4(global3.x, Struct_3(u_input.b.xyy, vec2<u32>(u_input.c.x, u_input.a)), Struct_2(vec3<i32>(u_input.d, u_input.b.x, u_input.b.x), Struct_1(vec3<u32>(u_input.c.x, 0u, u_input.c.x), -2728i, 49333u, global0.x, vec3<f32>(global0.x, global0.x, global0.x)), Struct_1(u_input.c.wzy, -32752i, 1u, global0.x, global0.yzy)), global3.x, global0.wwx), !vec4<bool>(false, true, global3.x, global3.x), u_input.b.zww & vec3<i32>(u_input.b.x, -27465i, 0i)), !global3.x))));
    var var_0 = Struct_2(u_input.b.ywy | max(u_input.b.zyz, abs(vec3<i32>(u_input.d, u_input.d, u_input.d))), Struct_1(abs(vec3<u32>(~u_input.a, _wgslsmith_mod_u32(u_input.a, 29355u), 4294967295u)), ~25932i, ~u_input.a, 329f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1565f, -1581f, global0.x))))), Struct_1(u_input.c.yyx, ~(-_wgslsmith_mult_i32(u_input.d, u_input.b.x)), ~u_input.a, 1406f, vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 340f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1128f)) - _wgslsmith_f_op_f32(-global0.x)))));
    var var_1 = _wgslsmith_clamp_u32(47908u, _wgslsmith_mod_u32(var_0.b.c, abs(~(~18511u))), firstLeadingBit(var_0.c.a.x));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~(~_wgslsmith_sub_u32(var_0.c, var_0.c));
    var var_2 = Struct_2(-u_input.b.zww, Struct_1(vec3<u32>(_wgslsmith_mod_u32(~var_1, var_0.c), var_1, var_1), i32(-1i) * -2103i, func_1().c, -1015f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.wxz * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0.d, global0.x))))), func_1());
    let var_3 = vec4<i32>(countOneBits(2147483647i), firstTrailingBit((reverseBits(var_0.b) | ~3693i) ^ min(var_2.a.x ^ -2147483647i, ~(-2147483647i))), min(0i, reverseBits(-var_2.c.b)), var_2.c.b);
    var var_4 = ~(~(~min(~vec3<u32>(var_1, 4294967295u, u_input.c.x), var_0.a)));
    var var_5 = vec2<bool>(var_2.c.b <= u_input.b.x, global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(global0.x)));
}

