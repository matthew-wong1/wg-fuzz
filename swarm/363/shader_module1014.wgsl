struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(-139f, 4294967295u), -22765i, Struct_1(-571f, 1u), 0u), Struct_2(Struct_1(140f, 47622u), 7200i, Struct_1(-286f, 1u), 30018u), Struct_2(Struct_1(-1009f, 0u), -12542i, Struct_1(192f, 0u), 35583u), Struct_2(Struct_1(896f, 0u), -59438i, Struct_1(-1567f, 1u), 36465u), Struct_2(Struct_1(955f, 0u), 0i, Struct_1(-547f, 4294967295u), 0u), Struct_2(Struct_1(132f, 4294967295u), 27348i, Struct_1(-1239f, 23783u), 16055u), Struct_2(Struct_1(-647f, 4294967295u), 3864i, Struct_1(-1000f, 1u), 1u), Struct_2(Struct_1(-159f, 11427u), 1i, Struct_1(-192f, 42615u), 4294967295u), Struct_2(Struct_1(-181f, 4294967295u), 1i, Struct_1(1824f, 0u), 11128u), Struct_2(Struct_1(-352f, 45976u), -18525i, Struct_1(389f, 1743u), 0u), Struct_2(Struct_1(-593f, 8097u), -1i, Struct_1(484f, 1u), 1u), Struct_2(Struct_1(352f, 45116u), -26223i, Struct_1(-1000f, 28353u), 20947u), Struct_2(Struct_1(-1305f, 4294967295u), -17697i, Struct_1(-532f, 0u), 1u));

var<private> global1: Struct_2;

var<private> global2: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-801f, 1632f, -584f, 1914f), vec4<f32>(1000f, 376f, 1234f, -1000f), vec4<f32>(-1218f, 1000f, 1262f, -811f), vec4<f32>(-1513f, -489f, 1474f, -563f), vec4<f32>(1320f, -335f, -915f, -414f));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = any(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_div_u32(~global1.c.b, abs(1u)), global1.a.b ^ global1.c.b);
    global2 = array<vec4<f32>, 5>();
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global1.a.a, global1.c.a, false)))))), global1.d), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 25620i | (u_input.a >> (4294967295u % 32u)), -select(global1.b, u_input.a, false)), ~_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-71316i, -20199i, -1i)), vec3<i32>(1i, 0i, global1.b))), Struct_1(_wgslsmith_f_op_f32(-302f + _wgslsmith_f_op_f32(-1f)), ~var_1), 29783u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a.a - _wgslsmith_f_op_f32(1627f - _wgslsmith_f_op_f32(-global1.c.a))))));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(644f, _wgslsmith_f_op_f32(min(var_2, 476f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + var_2))))));
}

fn func_2(arg_0: f32) -> u32 {
    global0 = array<Struct_2, 13>();
    global2 = array<vec4<f32>, 5>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, _wgslsmith_f_op_f32(195f * arg_0)), _wgslsmith_f_op_vec2_f32(func_3()))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 418f)) * _wgslsmith_div_f32(global1.c.a, global1.c.a)), _wgslsmith_f_op_vec2_f32(func_3()).x)));
    var var_1 = countOneBits(vec3<i32>(countOneBits(select(_wgslsmith_mult_i32(u_input.a, 35752i), -1i, false)), _wgslsmith_sub_i32(-3055i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1i, global1.b, 2147483647i), vec4<i32>(global1.b, 2147483647i, 18478i, u_input.a)), vec4<i32>(u_input.a, global1.b, -2147483647i, 34333i) ^ vec4<i32>(global1.b, u_input.a, global1.b, global1.b))), countOneBits((i32(-1i) * -2147483647i) << (global1.c.b % 32u))));
    let var_2 = global0[_wgslsmith_index_u32(((global1.a.b << ((~14748u << (global1.c.b % 32u)) % 32u)) >> (global1.d % 32u)) >> (4294967295u % 32u), 13u)];
    return 30489u;
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(exp2(global1.a.a));
    let var_1 = var_0;
    var var_2 = -14254i;
    var var_3 = ~(~global1.c.b);
    global1 = global0[_wgslsmith_index_u32(~func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a + var_1)))), 13u)];
    return vec2<bool>(false, !(!any(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(3023u, min(global1.c.b, 1865u)), 1169u), vec2<u32>(select(1u, 4294967295u, false) >> ((global1.d & global1.c.b) % 32u), global1.a.b) & min(vec2<u32>(_wgslsmith_add_u32(8876u, 1u), 289u), reverseBits(vec2<u32>(global1.d, global1.c.b))), vec2<u32>(select(_wgslsmith_add_u32(global1.d, global1.a.b), ~(~44674u), true), global1.a.b));
    let var_1 = true;
    var var_2 = !func_1(reverseBits(max(vec2<i32>(2147483647i, global1.b) >> (var_0 % vec2<u32>(32u)), ~vec2<i32>(1i, u_input.a))));
    var var_3 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(857f, 2348f, global1.c.a) - vec3<f32>(global1.c.a, -965f, global1.c.a)))))), vec3<f32>(global1.a.a, 1284f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-247f + -826f) * _wgslsmith_f_op_f32(-global1.a.a))))), ~(~(vec2<i32>(global1.b, -2147483647i) & abs(vec2<i32>(global1.b, -2147483647i)))), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.b, _wgslsmith_mod_u32(~24560u, _wgslsmith_sub_u32(var_3.b, global1.d)), ~var_3.b, global1.d), ~(~vec4<u32>(36668u, 48774u, 5429u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3()).x * 546f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1413f * global1.c.a)))) + _wgslsmith_f_op_f32(-var_3.a)), vec2<i32>(~(-global1.b), ~(-_wgslsmith_clamp_i32(1i, u_input.a, u_input.a))));
}

