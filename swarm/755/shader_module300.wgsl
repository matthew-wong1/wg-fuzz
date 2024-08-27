struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<i32, 8> = array<i32, 8>(i32(-2147483648), -18041i, -1151i, 31284i, -1i, 0i, 1i, 41179i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> Struct_1 {
    var var_0 = global0.x == ~_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, 3558u), vec4<u32>(1u, 0u, global0.x, global0.x)), vec4<u32>(global0.x, 10618u, 21001u, 0u) << (max(vec4<u32>(0u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 3611u, 4294967295u, global0.x)) % vec4<u32>(32u)));
    global2 = array<i32, 8>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1739f, 429f), 341f) * vec2<f32>(1792f, _wgslsmith_div_f32(492f, 196f)))));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) + _wgslsmith_f_op_f32(-170f - -1000f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f * -1330f)), -487f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1697f, _wgslsmith_f_op_f32(max(var_1.x, 394f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1241f)))))));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_5, arg_3: u32) -> vec2<u32> {
    var var_0 = arg_0.a;
    var var_1 = var_0.d.x;
    var_1 = 1533f;
    global1 = array<Struct_1, 28>();
    global2 = array<i32, 8>();
    return vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_add_u32(firstTrailingBit(~arg_0.a.c.x & _wgslsmith_mod_u32(arg_0.a.c.x, 59525u)), global0.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = Struct_4(Struct_2(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), 0u < global0.x), vec2<bool>(true, true), vec2<bool>(true, true)), min(u_input.a, ~global2[_wgslsmith_index_u32(~global0.x, 8u)]), ~func_3(Struct_4(Struct_2(vec2<bool>(true, true), u_input.a, vec2<u32>(42934u, 31658u), arg_1.b)), _wgslsmith_f_op_f32(-arg_1.b.x), Struct_5(arg_1.b.x, Struct_3(global1[_wgslsmith_index_u32(0u, 28u)], vec4<f32>(arg_1.b.x, arg_1.a, arg_1.a, arg_1.a)), arg_0.zzz, arg_0.xz), select(1u, 27030u, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1206f, 899f) * arg_1.b), vec2<bool>(true, true))) + arg_1.b)));
    let var_1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(-(u_input.a << (arg_0.x % 32u)), 0i, _wgslsmith_add_i32(var_0.a.b ^ -1i, i32(-1i) * -552i), abs(var_0.a.b)), firstLeadingBit(vec4<i32>(1i, -u_input.a, var_0.a.b, _wgslsmith_mult_i32(6337i, -1i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + arg_1.b.x)), arg_1.b.x)));
    var var_3 = global2[_wgslsmith_index_u32(countOneBits(global0.x ^ ~min(global0.x >> (61113u % 32u), arg_0.x)), 8u)];
    var var_4 = ~(~reverseBits(vec2<u32>(0u, arg_0.x)));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, arg_1.b.x, arg_1.b.x), vec4<f32>(1786f, 2154f, -1485f, -756f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-563f)), _wgslsmith_f_op_f32(sign(-542f)), arg_1.a, _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(var_0.a.d.x + -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(abs(vec4<u32>(global0.x, global0.x, global0.x, global0.x)), Struct_1(538f, vec2<f32>(2101f, 706f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, abs(global2[_wgslsmith_index_u32(global0.x, 8u)]), ~vec3<u32>(0u, 4294967295u, ~global0.x), _wgslsmith_add_i32(u_input.a, global2[_wgslsmith_index_u32(firstTrailingBit(92328u >> (global0.x % 32u)), 8u)] >> (4294967295u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-168f, var_0.a.a) - -562f));
}

