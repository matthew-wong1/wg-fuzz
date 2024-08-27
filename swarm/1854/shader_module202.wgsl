struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(2147483647i);

var<private> global1: array<vec3<f32>, 13>;

var<private> global2: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(32526u, 4294967295u, 1u), vec3<u32>(39576u, 4294967295u, 37180u), vec3<u32>(4294967295u, 5336u, 72934u), vec3<u32>(52253u, 0u, 30911u), vec3<u32>(71974u, 0u, 4432u), vec3<u32>(4294967295u, 4294967295u, 53612u), vec3<u32>(4294967295u, 4294967295u, 27072u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(14270u, 85448u, 0u));

var<private> global3: f32 = -428f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: bool) -> u32 {
    var var_0 = Struct_1(0u);
    var var_1 = vec3<i32>(-arg_0.x, ~(~reverseBits(~global0[_wgslsmith_index_u32(47087u, 1u)])), _wgslsmith_div_i32(arg_0.x >> (select(_wgslsmith_clamp_u32(1u, 4294967295u, var_0.a), 15519u, 1u >= var_0.a) % 32u), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(-4022i, 4694i, 1i, -20990i), u_input.c), firstLeadingBit(u_input.c))));
    var var_2 = _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-177f * arg_1.x) + _wgslsmith_f_op_f32(1000f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))))));
    var_1 = u_input.c.zzw;
    var_2 = 238f;
    return abs(var_0.a);
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    global3 = _wgslsmith_f_op_f32(trunc(arg_0));
    let var_0 = Struct_1(0u);
    let var_1 = reverseBits(-28092i);
    let var_2 = Struct_1(~(func_3(-vec2<i32>(-1322i, -25355i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, arg_0), true)), arg_0 >= arg_0) | 18138u));
    global0 = array<i32, 1>();
    return 45750u;
}

fn func_1() -> u32 {
    let var_0 = firstLeadingBit(u_input.b.x);
    let var_1 = Struct_1(reverseBits(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2123f)), false)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-2238f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-614f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1253f, -554f))))), 170f);
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global3 = 200f;
    return 25025u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 13>();
    var var_0 = min(vec3<u32>(u_input.e, u_input.b.x, 4294967295u), vec3<u32>(~1u, ~u_input.b.x, func_1()));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(736f - 1238f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) * 652f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1049f, 252f) + vec2<f32>(756f, -398f)))), vec2<f32>(651f, -1308f), any(vec4<bool>(true, true, true, true)))))));
    var var_2 = var_0.xx >> (vec2<u32>(43231u, var_0.x) % vec2<u32>(32u));
    var var_3 = (all(vec3<bool>(any(vec2<bool>(true, false)), true, false)) || true) || all(vec3<bool>(false, all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(u_input.d, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_0.zz, vec2<u32>(u_input.b.x, var_2.x)) << (u_input.d % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(countOneBits(u_input.d), ~u_input.d))));
}

