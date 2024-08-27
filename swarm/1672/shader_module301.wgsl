struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = arg_1;
    global0 = Struct_1(vec4<u32>(global0.c.x, ~global0.b.x, global0.b.x, 1u ^ (_wgslsmith_sub_u32(var_0.a.x, 0u) ^ (3270u ^ global0.b.x))), _wgslsmith_sub_vec2_u32(~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.a.x), global0.c.zx)), reverseBits(max(vec2<u32>(var_0.c.x, var_0.a.x), vec2<u32>(arg_1.c.x, var_0.a.x)))), ~arg_1.a.zyw, var_0.d);
    let var_1 = 1i;
    var var_2 = 1000f;
    var_2 = _wgslsmith_f_op_f32(-arg_1.d.x);
    return vec3<u32>(~global0.c.x, var_0.c.x, 5271u);
}

fn func_2() -> vec3<u32> {
    global0 = Struct_1(vec4<u32>(~_wgslsmith_sub_u32(global0.c.x, 12107u), global0.b.x & firstLeadingBit(_wgslsmith_dot_vec2_u32(global0.a.zx, vec2<u32>(global0.b.x, global0.c.x))), global0.b.x, 4294967295u), global0.c.yy, ~firstTrailingBit(func_3(vec3<i32>(u_input.c, 2147483647i, u_input.a) >> (global0.c % vec3<u32>(32u)), Struct_1(global0.a, global0.c.zz, vec3<u32>(87036u, global0.a.x, 4294967295u), vec3<f32>(global0.d.x, global0.d.x, 1529f)))), global0.d);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.d.x))))))));
    global0 = Struct_1(abs(vec4<u32>(~_wgslsmith_sub_u32(3846u, global0.c.x), ~(~1u), 4294967295u, _wgslsmith_mult_u32(0u, 4294967295u) << (global0.c.x % 32u))), global0.c.zx, vec3<u32>(_wgslsmith_add_u32(4294967295u, 0u), ~4294967295u, global0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-654f + global0.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(var_0 + 555f)))) - global0.d));
    global0 = Struct_1(global0.a, vec2<u32>(~(~9135u | global0.a.x), _wgslsmith_div_u32(min(~4294967295u, ~global0.a.x), abs(global0.a.x | global0.c.x))), min(global0.c, global0.c) ^ _wgslsmith_div_vec3_u32(global0.c, select(global0.a.wwz, firstLeadingBit(global0.a.yzw), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false))), global0.d);
    var var_1 = ~firstTrailingBit(global0.c.yz);
    return _wgslsmith_sub_vec3_u32(~global0.a.yzz, global0.c);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(global0.a, vec2<u32>(~(~max(4773u, global0.c.x)), global0.b.x), (max(global0.c, vec3<u32>(global0.c.x, global0.a.x, 11007u)) & func_2()) ^ global0.a.wxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(abs(global0.d.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.d, global0.d) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, global0.d.x, global0.d.x) + vec3<f32>(1672f, global0.d.x, global0.d.x))))));
    global0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(countOneBits(global0.a.x)), func_2().x, ~max(global0.c.x, global0.a.x), global0.b.x), _wgslsmith_div_vec4_u32(~vec4<u32>(6498u, global0.c.x, 105138u, global0.c.x) ^ vec4<u32>(global0.a.x, global0.c.x, global0.c.x, 25617u), global0.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.x, _wgslsmith_mult_u32(34683u, countOneBits(global0.a.x))), global0.b), _wgslsmith_mult_vec3_u32(global0.a.yzz, vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~global0.a.zxy, ~global0.c), ~0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1280f, 1f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(abs(-2171f)))))));
    global0 = Struct_1(~vec4<u32>(12817u, _wgslsmith_mult_u32(reverseBits(global0.b.x), ~global0.c.x), 0u, global0.b.x), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(22776u, 0u) << (firstTrailingBit(global0.c.yy) % vec2<u32>(32u))), abs(~(~vec2<u32>(global0.c.x, global0.a.x)))), select(global0.a.yzx, vec3<u32>(11839u, _wgslsmith_mult_u32(0u, global0.c.x), 15053u), _wgslsmith_dot_vec3_u32(global0.a.xxz, vec3<u32>(4294967295u, 4294967295u, global0.a.x)) < firstLeadingBit(4294967295u)) & _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~global0.c, global0.c), select(firstLeadingBit(vec3<u32>(54688u, 68605u, 3630u)), abs(vec3<u32>(74006u, global0.a.x, global0.a.x)), false)), global0.d);
    var var_0 = global0.c;
    let var_1 = vec3<bool>(!all(vec3<bool>(true, true, true)), !(all(vec3<bool>(true, true, true)) | true), any(vec2<bool>(true, true)) & true);
    return Struct_1(~(~global0.a), ~var_0.yz >> (min(vec2<u32>(var_0.x | 0u, ~global0.a.x), reverseBits(_wgslsmith_sub_vec2_u32(var_0.zz, vec2<u32>(2441u, 0u)))) % vec2<u32>(32u)), firstTrailingBit(vec3<u32>(abs(global0.c.x), reverseBits(global0.b.x), global0.c.x)) << (vec3<u32>((global0.b.x << (1u % 32u)) ^ 1u, _wgslsmith_mod_u32(global0.b.x, var_0.x ^ 4294967295u), global0.b.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -461f, global0.d.x) - vec3<f32>(global0.d.x, global0.d.x, -1074f)), _wgslsmith_f_op_vec3_f32(-global0.d), !var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global0.d)), global0.d, !(!vec3<bool>(all(vec2<bool>(false, false)), true, any(vec4<bool>(true, true, true, false))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.x + 428f))))));
    global0 = var_0;
    let var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(6701i, ~u_input.a)));
}

