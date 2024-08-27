struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: Struct_3;

var<private> global2: array<u32, 24> = array<u32, 24>(4294967295u, 0u, 907u, 6190u, 1u, 4294967295u, 34435u, 0u, 89377u, 86902u, 9152u, 18940u, 30832u, 49730u, 0u, 86911u, 0u, 19901u, 0u, 0u, 0u, 1u, 14544u, 0u);

var<private> global3: array<i32, 32>;

var<private> global4: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> vec2<bool> {
    global4 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2)))), u_input.a, global1.a);
    let var_0 = ~(vec4<u32>(~1u, u_input.a, global1.b, 7810u) << (~(countOneBits(vec4<u32>(4294967295u, global1.b, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.b, 24u)], 24u)])) | firstLeadingBit(vec4<u32>(global4.b, global4.b, u_input.a, 0u))) % vec4<u32>(32u)));
    var var_1 = arg_0.a;
    let var_2 = countOneBits(abs(_wgslsmith_clamp_vec4_u32(var_0, vec4<u32>(20791u, 4294967295u, 0u, 0u), var_0)) ^ var_0) << (select(vec4<u32>(u_input.a, global4.b, _wgslsmith_mult_u32(select(var_0.x, 25377u, arg_0.a), 1u), abs(firstLeadingBit(global4.b))), var_0, !(!(!vec4<bool>(arg_0.a, arg_0.a, false, true)))) % vec4<u32>(32u));
    let var_3 = _wgslsmith_div_f32(-724f, 129f);
    return !select(!vec2<bool>(arg_0.a, true), vec2<bool>(true, arg_0.a), vec2<bool>(!arg_0.a & true, any(vec3<bool>(arg_0.a, arg_0.a, true))));
}

fn func_2() -> u32 {
    let var_0 = global1.c.a;
    global2 = array<u32, 24>();
    let var_1 = func_3(Struct_1(!(!all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1083f, _wgslsmith_div_f32(global1.a.a, _wgslsmith_f_op_f32(max(-2036f, -504f))), _wgslsmith_f_op_f32(f32(-1f) * -351f), global1.a.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1109f, global4.a.a, -1000f, 357f), vec4<f32>(global4.a.a, -2821f, -2338f, global4.c.a)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(850f, global1.c.a, 120f, -561f), vec4<f32>(1260f, global1.c.a, 1955f, -448f)))))), global4.a.a);
    let var_2 = Struct_1(any(!vec4<bool>(var_1.x, var_1.x, !var_1.x, true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], 51637u, 43774u, global1.b), vec4<u32>(global1.b, global2[_wgslsmith_index_u32(1u, 24u)], 0u, 69243u)), 18u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-986f, global1.a.a, -396f))), vec3<f32>(global4.c.a, 1729f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f)))));
    return _wgslsmith_mod_u32(~abs(global1.b), firstLeadingBit(~select(_wgslsmith_clamp_u32(global1.b, global1.b, 1u), global2[_wgslsmith_index_u32(global1.b, 24u)], all(vec4<bool>(true, var_2.a, true, true)))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    global1 = arg_0;
    let var_0 = vec3<u32>(global4.b, _wgslsmith_mod_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 69574u, 0u), vec3<u32>(4294967295u, 26753u, global4.b)), func_2()), 24u)], reverseBits(~global4.b)), global4.b & 0u), ~max(~(~1u), 54179u));
    let var_1 = arg_0;
    let var_2 = var_1;
    global4 = arg_0;
    return select(_wgslsmith_dot_vec3_u32(abs(var_0), var_0), ~(~((arg_0.b << (0u % 32u)) << (~u_input.a % 32u))), all(vec3<bool>(true, any(vec3<bool>(true, true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec3<u32>(global4.b, 3757u, _wgslsmith_mult_u32(func_1(Struct_3(global1.a, global1.b, global4.a), Struct_2(-1217f), vec3<f32>(-1623f, global1.c.a, global4.c.a), Struct_1(false)), reverseBits(global4.b))) | abs(vec3<u32>(1u, 39423u, global2[_wgslsmith_index_u32(51825u, 24u)] >> (u_input.a % 32u)))) >> (abs((~vec3<u32>(0u, 90448u, 1u) << (firstLeadingBit(vec3<u32>(u_input.a, global1.b, global4.b)) % vec3<u32>(32u))) | ~(vec3<u32>(global1.b, u_input.a, 1u) >> (vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], 4294967295u, 24062u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    global1 = Struct_3(global1.c, global1.b, global1.c);
    let var_1 = global1.c;
    let var_2 = _wgslsmith_div_u32(2221u, _wgslsmith_sub_u32(reverseBits(~global2[_wgslsmith_index_u32(25151u, 24u)]), ~min(35745u >> (global2[_wgslsmith_index_u32(32693u, 24u)] % 32u), 10515u)));
    var var_3 = vec2<i32>(global3[_wgslsmith_index_u32((min(_wgslsmith_mult_u32(global4.b, var_0.x), ~4294967295u) | _wgslsmith_clamp_u32(1u, 1u, ~11369u)) | firstLeadingBit(var_2 | _wgslsmith_clamp_u32(14252u, 64785u, 24677u)), 32u)], 43304i);
    let var_4 = -2147483647i;
    var var_5 = Struct_3(global1.a, abs(_wgslsmith_mod_u32(global1.b | u_input.a, 1u)), Struct_2(var_1.a));
    var_3 = -min(vec2<i32>(-2147483647i >> (0u % 32u), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(1u, 32u)], -1i)) | ~(vec2<i32>(global3[_wgslsmith_index_u32(global4.b, 32u)], -8569i) & vec2<i32>(0i, 2147483647i)), ~(~reverseBits(vec2<i32>(var_3.x, -25505i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs((u_input.a << (global4.b % 32u)) << (func_1(Struct_3(var_5.a, global1.b, Struct_2(global4.a.a)), Struct_2(var_5.c.a), global0[_wgslsmith_index_u32(2145u, 18u)], Struct_1(true)) % 32u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2112f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(837f * -109f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1296f, global1.c.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a.a, -1000f), vec2<f32>(global1.c.a, 411f)))), all(vec2<bool>(true, true)))), vec2<bool>(any(vec2<bool>(true, true)), false))));
}

