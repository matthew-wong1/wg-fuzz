struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32 = -215f;

var<private> global2: vec2<f32> = vec2<f32>(1569f, -928f);

var<private> global3: Struct_1 = Struct_1(1429f);

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, global0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f)))));
    let var_1 = Struct_2(u_input.b.x, Struct_1(1301f), var_0.a, !all(vec4<bool>(true, select(true, global4.x, global4.x), true, false & global4.x)));
    let var_2 = arg_0.wy;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-1f));
    var var_4 = false;
    return _wgslsmith_mult_vec3_u32((select(vec3<u32>(u_input.a, 1u, 72565u), arg_0.yww, true) & vec3<u32>(u_input.a, countOneBits(u_input.a), 43991u)) & ~vec3<u32>(abs(1u), arg_0.x >> (4294967295u % 32u), 65934u & var_2.x), ~arg_0.wxw);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(select(0i, min(~firstTrailingBit(-15860i), u_input.b.x), !all(select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, false), global4.x))), Struct_1(1298f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.a * global2.x), global0.x)) - global2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(-global0.x)), global3.a))), max(-u_input.b.x, u_input.b.x) > _wgslsmith_div_i32(-1995i, _wgslsmith_add_i32(_wgslsmith_add_i32(64436i, u_input.b.x), max(u_input.b.x, 34016i))));
    let var_1 = 1301f;
    return var_1;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = -2439f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a)));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yx)) + vec2<f32>(1f, -1042f)));
    var var_1 = vec2<f32>(244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a)))));
    var var_2 = func_2(~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(32697u, 0u, arg_0, arg_0), vec4<u32>(4294967295u, 71269u, 83200u, arg_0)) | abs(vec4<u32>(u_input.a, u_input.a, arg_0, 34358u)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1788f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(814f - -663f) - _wgslsmith_f_op_f32(-global2.x)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1382f) + global3.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(487f * var_1.x), _wgslsmith_f_op_f32(global0.x + global3.a), -1000f, global3.a) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global2.x, global3.a, -339f))))), true)), vec4<i32>(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 0i << (arg_0 % 32u)) << ((arg_0 | (u_input.a << (0u % 32u))) % 32u), 0i >> ((~arg_0 | ~4294967295u) % 32u), 1i));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(-2069f, 1172f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(global3.a))), vec4<f32>(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-362f))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())))), -1899f));
    return _wgslsmith_dot_vec3_u32(abs(~func_2(vec4<u32>(0u, 38508u, 1u, 1u), vec4<f32>(-1173f, global2.x, -271f, -2195f), ~vec4<i32>(-21765i, 2147483647i, u_input.b.x, u_input.b.x))), ~(~abs(vec3<u32>(4294967295u, u_input.a, 19169u))) & ~vec3<u32>(u_input.a, ~4294967295u, abs(53873u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mult_u32(u_input.a, 14372u));
    var var_1 = Struct_2(-386i, Struct_1(_wgslsmith_f_op_f32(round(387f))), global3.a, false);
    global1 = 1860f;
    global2 = vec2<f32>(var_1.b.a, 311f);
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)));
    let var_2 = Struct_4(var_1.b, Struct_1(1000f), u_input.b, ~vec4<u32>(~u_input.a, var_0, ~4636u, u_input.a), min(-u_input.b.xy, firstLeadingBit(firstTrailingBit(u_input.b.yx)) << (vec2<u32>(u_input.a ^ u_input.a, var_0) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.a, var_2.c);
}

