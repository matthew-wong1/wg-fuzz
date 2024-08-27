struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, arg_3, 1563f), vec3<f32>(global0.x, global0.x, global0.x), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1186f, arg_3, 594f) - vec3<f32>(-316f, -315f, arg_2.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(670f, 392f, arg_3)))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1250f, global0.x)), _wgslsmith_f_op_f32(global0.x * -1000f)), arg_3, 223f)));
    global0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3, -528f, arg_3)));
    var var_0 = arg_2.a.wyx;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(-645f)), 112f, _wgslsmith_f_op_f32(global0.x * -345f), arg_3);
    let var_2 = 2147483647i;
    return _wgslsmith_mult_i32(arg_1.x, var_2);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = arg_2;
    let var_1 = Struct_1(var_0.a, var_0.b, _wgslsmith_clamp_i32(min(1i, -1i), min(~(-var_0.c), 32738i), _wgslsmith_clamp_i32(max(func_3(-1i, vec2<i32>(var_0.c, arg_2.c), arg_1, 404f), arg_1.c), arg_0.c | 1i, arg_0.c)));
    var_0 = arg_1;
    var_0 = Struct_1(~(~(~vec4<u32>(var_0.a.x, 11412u, arg_1.a.x, arg_1.a.x) >> ((vec4<u32>(83637u, u_input.a, arg_0.a.x, arg_2.a.x) >> (arg_2.a % vec4<u32>(32u))) % vec4<u32>(32u)))), arg_2.b, reverseBits(~select(1i, 0i, true)));
    var var_2 = Struct_1(~vec4<u32>(22763u, arg_1.a.x, _wgslsmith_div_u32(arg_0.a.x, arg_2.a.x), _wgslsmith_clamp_u32(~arg_0.a.x, _wgslsmith_mult_u32(var_0.a.x, 1u), 12574u)), _wgslsmith_f_op_f32(f32(-1f) * -1164f), 1i);
    return vec4<u32>(~1u, _wgslsmith_sub_u32(~35685u, 28064u), abs(arg_0.a.x) << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1.a, vec4<u32>(u_input.a, 4294967295u, arg_2.a.x, arg_0.a.x), vec4<u32>(var_0.a.x, var_1.a.x, 1u, 36541u)), max(vec4<u32>(44502u, var_0.a.x, u_input.a, 0u), var_1.a)), ~(~0u)) % 32u), countOneBits(var_1.a.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = Struct_1(func_2(Struct_1(~arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 2507f, true)) + _wgslsmith_f_op_f32(-626f * -665f)), ~(-30815i & arg_0.x)), Struct_1(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1252f), ~(-arg_0.x)), Struct_1(firstTrailingBit(~arg_1), global0.x, ~_wgslsmith_dot_vec2_i32(arg_0.xx, arg_0.zx))), 1000f, firstLeadingBit(arg_0.x));
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(240f - 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, global0.x)) * _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0.b, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -764f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, 1315f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - 381f) + -222f), _wgslsmith_f_op_f32(-987f + _wgslsmith_div_f32(944f, 512f)))));
    var var_1 = var_0;
    let var_2 = vec4<bool>(true, !(!(var_1.b <= _wgslsmith_f_op_f32(trunc(var_1.b)))), true, false);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 607f, var_0.b, -300f), vec4<f32>(var_0.b, global0.x, -590f, global0.x)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 582f, global0.x, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(313f, 1000f, -1708f, var_1.b) + vec4<f32>(-1136f, -162f, -985f, 2346f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.b * var_0.b), _wgslsmith_f_op_f32(sign(431f)), _wgslsmith_f_op_f32(-1816f * -303f), _wgslsmith_f_op_f32(var_1.b * var_1.b)))));
    return StorageBuffer(global0.xz, 20261u, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1062f)) + _wgslsmith_f_op_f32(-var_1.b)))), vec3<u32>(~_wgslsmith_add_u32(var_0.a.x, ~arg_1.x), (8415u >> (var_1.a.x % 32u)) & ~u_input.a, _wgslsmith_sub_u32(var_0.a.x, 6289u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-770i, -15183i, 240i), vec3<i32>(2147483647i, -1i, -1i)) & reverseBits(vec3<i32>(29191i, 63481i, -3542i))), firstLeadingBit(~(~vec4<u32>(4294967295u, 4294967295u, u_input.a, 25449u)) >> (_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(56858u, 20860u, 70563u, u_input.a)), max(vec4<u32>(u_input.a, 6750u, u_input.a, 32041u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))) % vec4<u32>(32u))));
}

