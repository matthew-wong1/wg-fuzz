struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-9270i, -15433i, 11865i);

var<private> global1: Struct_1;

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<f32>(560f, 902f, 604f, 111f), vec4<bool>(false, true, false, true), 1436f, vec3<u32>(22849u, 4294967295u, 29858u), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<f32>(936f, -841f, -1049f, -129f), vec4<bool>(true, true, true, false), 502f, vec3<u32>(32744u, 28099u, 0u), vec2<u32>(16826u, 0u)), Struct_1(vec4<f32>(643f, -620f, -1423f, 1283f), vec4<bool>(false, false, true, false), -823f, vec3<u32>(34402u, 4294967295u, 46150u), vec2<u32>(0u, 4294967295u)), Struct_1(vec4<f32>(615f, -162f, 320f, -1900f), vec4<bool>(false, true, false, true), -1635f, vec3<u32>(74466u, 35989u, 15367u), vec2<u32>(0u, 12138u)), Struct_1(vec4<f32>(1000f, -354f, -309f, -1272f), vec4<bool>(false, false, false, false), 1762f, vec3<u32>(32433u, 1u, 1u), vec2<u32>(1u, 56782u)), Struct_1(vec4<f32>(-834f, 159f, -1110f, -1219f), vec4<bool>(false, true, false, false), 1215f, vec3<u32>(4294967295u, 0u, 40827u), vec2<u32>(89057u, 75494u)));

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32) -> i32 {
    let var_0 = 1000f;
    global1 = Struct_1(global1.a, vec4<bool>(all(!select(arg_0.b.b, vec4<bool>(true, global1.b.x, arg_0.b.b.x, arg_0.b.b.x), global1.b)), select(false, any(!vec3<bool>(global1.b.x, true, false)), !any(vec4<bool>(true, arg_0.d.b.x, false, true))), !any(vec4<bool>(global1.b.x, global1.b.x, true, true)), arg_0.b.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.d.a.x))), (select(_wgslsmith_sub_vec3_u32(arg_0.d.d, vec3<u32>(arg_2, 0u, arg_0.d.e.x)), vec3<u32>(0u, arg_2, 62050u), vec3<bool>(true, arg_0.d.b.x, arg_0.b.b.x)) >> (select(global1.d | arg_0.b.d, vec3<u32>(1u, 4294967295u, arg_0.c) << (arg_1 % vec3<u32>(32u)), select(global1.b.wzw, vec3<bool>(global1.b.x, arg_0.b.b.x, true), arg_0.d.b.x)) % vec3<u32>(32u))) & global1.d, vec2<u32>(_wgslsmith_div_u32(10853u, u_input.a), _wgslsmith_mult_u32(1u, arg_1.x)));
    global4 = u_input.c.x;
    global0 = u_input.b.yzx;
    var var_1 = _wgslsmith_dot_vec2_i32(min(~(~(-global0.yx)), ~global0.yz), ~_wgslsmith_div_vec2_i32(~u_input.b.yz, -u_input.d.wx) >> (_wgslsmith_div_vec2_u32(countOneBits(~global1.d.yy), vec2<u32>(_wgslsmith_add_u32(arg_0.b.e.x, global1.e.x), ~global1.d.x)) % vec2<u32>(32u)));
    return firstLeadingBit(1i);
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<i32>) -> f32 {
    global4 = func_3(Struct_2(337f, Struct_1(global1.a, vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), _wgslsmith_f_op_f32(arg_2 * global1.c), vec3<u32>(34701u, 1u, u_input.a), vec2<u32>(4294967295u, u_input.a)), 4596u, global3[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global1.d.x) | global1.d, global1.d), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global1.d, global1.d), u_input.a)) << (global1.e.x % 32u);
    global3 = array<Struct_1, 6>();
    let var_0 = all(!global1.b.yz);
    global3 = array<Struct_1, 6>();
    var var_1 = countOneBits(~(~(~global1.e.x) & _wgslsmith_clamp_u32(countOneBits(u_input.a), 1u, 4294967295u & u_input.a)));
    return _wgslsmith_f_op_f32(step(global1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-1304f * global1.a.x))), 643f, any(!vec2<bool>(arg_1.x, var_0))))));
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_mod_vec2_i32(u_input.d.yy, reverseBits(vec2<i32>(_wgslsmith_clamp_i32(0i, u_input.c.x, 1i), 28682i)) & _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.d.x, -1i), firstTrailingBit(u_input.c)));
    global3 = array<Struct_1, 6>();
    let var_1 = vec4<bool>(true, false, true, arg_0.b.b.x);
    var var_2 = select(select(var_1.wyx, arg_0.b.b.yxw, !vec3<bool>(true, all(vec2<bool>(false, false)), true || arg_0.b.b.x)), arg_0.b.b.xxz, global1.b.ywz);
    global1 = arg_0.b;
    return abs(_wgslsmith_sub_vec4_u32(reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global1.e.x, u_input.a, 52149u), vec4<u32>(12839u, 0u, arg_0.d.e.x, u_input.a))), ~vec4<u32>(_wgslsmith_mult_u32(arg_0.c, u_input.a), u_input.a, ~4294967295u, _wgslsmith_add_u32(4294967295u, u_input.a))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(26760i, vec2<bool>(true, false), -1487f, vec3<i32>(1i, -14024i, global0.x))) * 300f) * _wgslsmith_div_f32(global1.c, 843f)), Struct_1(global1.a, !vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x), -502f, ~vec3<u32>(u_input.a, 63562u, 24161u) ^ global1.d, vec2<u32>(u_input.a & 75347u, 1u)), 0u | _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(global1.d.x, global1.d.x)), global3[_wgslsmith_index_u32(~u_input.a, 6u)]));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(min(1170f, global1.c)), global3[_wgslsmith_index_u32(var_0.x, 6u)], 31156u & u_input.a, Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.x, -256f, global1.c, global1.c))))))), select(select(select(vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), global1.b, vec4<bool>(global1.b.x, global1.b.x, true, true)), vec4<bool>(global1.b.x, global1.b.x, true, global1.b.x), true), vec4<bool>(global1.b.x || false, true, global1.b.x, all(global1.b.wz)), global1.b.x), _wgslsmith_f_op_f32(-global1.a.x), var_0.zzz, max(vec2<u32>(reverseBits(48637u), ~82088u), firstLeadingBit(vec2<u32>(19766u, global1.d.x)))));
    var var_2 = Struct_2(-1000f, global3[_wgslsmith_index_u32(49883u, 6u)], _wgslsmith_add_u32(u_input.a, ~abs(var_1.c)) | ~(max(u_input.a, u_input.a) | _wgslsmith_mult_u32(1u, global1.e.x)), global3[_wgslsmith_index_u32(global1.e.x >> (var_0.x % 32u), 6u)]);
    var_0 = (~(~(~vec4<u32>(25591u, u_input.a, 64101u, var_2.b.e.x))) ^ vec4<u32>(~(var_1.d.d.x >> (var_0.x % 32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(1u, 1u)), 1u), global1.e.x, 1u)) << (vec4<u32>(~4294967295u, 1u, max(var_2.d.d.x, u_input.a), 4860u) % vec4<u32>(32u));
    return Struct_2(-424f, var_2.b, ~var_1.c, var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = true;
    global3 = array<Struct_1, 6>();
    global0 = abs(vec3<i32>(6412i, select(~u_input.b.x << (var_0.b.d.x % 32u), -27368i, all(!vec3<bool>(true, global1.b.x, global1.b.x))), -global0.x));
    let var_2 = !var_0.b.b.xy;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, vec4<u32>(1u, _wgslsmith_mult_u32(select(4294967295u >> (var_0.b.e.x % 32u), min(global1.d.x, 868u), global1.b.x), countOneBits(var_0.c) ^ 77055u), 0u, firstLeadingBit(~(~var_0.d.e.x))));
}

