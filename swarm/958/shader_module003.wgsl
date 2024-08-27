struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: array<Struct_4, 4>;

var<private> global2: u32 = 22305u;

var<private> global3: vec3<f32>;

var<private> global4: array<bool, 31> = array<bool, 31>(false, true, true, false, false, true, true, true, false, false, false, false, false, false, true, false, false, true, false, true, true, true, true, true, true, true, false, false, false, false, false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    global4 = array<bool, 31>();
    global4 = array<bool, 31>();
    let var_0 = arg_1.a.x >> (_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(max(_wgslsmith_mult_u32(1u, 10355u), _wgslsmith_dot_vec3_u32(arg_1.a, vec3<u32>(arg_1.a.x, arg_0.c, 25857u))), arg_2.a.x, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c.x, 18893u), 0u))) % 32u);
    var var_1 = arg_1;
    global4 = array<bool, 31>();
    return arg_1;
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec3<i32>) -> u32 {
    let var_0 = firstLeadingBit(22200u);
    var var_1 = Struct_3(vec3<u32>(4294967295u, arg_2.a.x, _wgslsmith_mod_u32(1u, ~arg_2.a.x)) ^ vec3<u32>(0u, 0u, _wgslsmith_sub_u32(28503u, 9004u)));
    var var_2 = true;
    let var_3 = true;
    global4 = array<bool, 31>();
    return countOneBits((_wgslsmith_add_u32(98885u >> (var_0 % 32u), 90316u) >> (arg_2.a.x % 32u)) & ~(~var_1.a.x));
}

fn func_1() -> u32 {
    global0 = array<Struct_2, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, 1000f)) + _wgslsmith_f_op_f32(sign(global3.x)))));
    global4 = array<bool, 31>();
    var var_1 = vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~0u);
    var var_2 = _wgslsmith_clamp_u32(~func_3(func_2(Struct_2(vec2<i32>(u_input.b.x, u_input.b.x), u_input.a, u_input.c.x, Struct_1(var_1.yy, var_1.x, u_input.d)), Struct_3(vec3<u32>(var_1.x, var_1.x, var_1.x)), Struct_1(var_1.xx, 0u, u_input.d)), true, Struct_3(vec3<u32>(1u, 26291u, var_1.x)), -u_input.a.zzx) << (4294967295u % 32u), u_input.c.x, var_1.x);
    return _wgslsmith_add_u32(~var_1.x ^ _wgslsmith_mult_u32(~(~44458u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_1.x, 24858u), u_input.c.x << (u_input.c.x % 32u))), var_1.x);
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    global1 = array<Struct_4, 4>();
    var var_0 = u_input.a.zzw;
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1492f, 1471f, global3.x), vec3<f32>(2205f, -294f, -109f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, 906f) - vec3<f32>(global3.x, global3.x, 1081f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), -2829f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(693f, global3.x)), -166f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 177f) + _wgslsmith_f_op_f32(f32(-1f) * -2274f)), global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global3.x)))));
    var var_1 = u_input.a.wwx;
    var var_2 = Struct_3(~(~vec3<u32>(1u, ~arg_3.a.x, min(u_input.c.x, 1u))));
    return Struct_1(u_input.c, ~arg_3.a.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(_wgslsmith_add_u32(43401u, 0u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 40940u, 13053u, 1u), abs(vec4<u32>(u_input.c.x, 28367u, u_input.c.x, 33539u)))), 31u)] & global4[_wgslsmith_index_u32(func_1(), 31u)], ~((vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) | ~vec3<u32>(81942u, u_input.c.x, 1u)) >> (reverseBits(abs(vec3<u32>(22263u, u_input.c.x, 1u))) % vec3<u32>(32u))), func_2(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], Struct_3(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 66029u)))), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c) & vec2<u32>(134261u, 1u), 99843u, ~u_input.d)), func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c.x, 14387u, 0u, 0u)), ~vec4<u32>(75334u, u_input.c.x, u_input.c.x, 1u)), ~(vec4<u32>(u_input.c.x, u_input.c.x, 21280u, 22974u) ^ vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), 1u)], func_2(Struct_2(select(u_input.a.yx, u_input.b, global4[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec4<i32>(u_input.b.x, 42227i, -2147483647i, u_input.b.x), abs(8338u), Struct_1(u_input.c, u_input.c.x, u_input.b.x)), Struct_3(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), Struct_1(vec2<u32>(u_input.c.x, 4294967295u), ~u_input.c.x, u_input.a.x | u_input.a.x)), Struct_1(vec2<u32>(1u, 0u) >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), u_input.c.x, -(~u_input.d))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global3.x)), global3.x) - global3.yx) - vec2<f32>(global3.x, global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, 2165f))), 1089f)), max(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.c.x, var_0.a.x) << (vec3<u32>(var_0.a.x, var_0.b, 4626u) % vec3<u32>(32u)), vec3<u32>(var_0.a.x, 0u, var_0.b) | countOneBits(vec3<u32>(7094u, u_input.c.x, 1u))), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.x, 65082u, 4294967295u), vec3<u32>(53337u, 0u, var_0.b)) >> (firstTrailingBit(vec3<u32>(u_input.c.x, 0u, u_input.c.x)) % vec3<u32>(32u)), abs(vec3<u32>(u_input.c.x, u_input.c.x, 4563u)))));
}

