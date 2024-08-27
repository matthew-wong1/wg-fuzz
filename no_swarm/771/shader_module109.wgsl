struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 22>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> vec3<f32> {
    global1 = array<Struct_2, 22>();
    global0 = Struct_1(~(~(~(~4294967295u))), _wgslsmith_f_op_vec3_f32(floor(global0.b)));
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -636f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-924f + -594f) * -1000f), _wgslsmith_f_op_f32(1135f - global0.b.x))))), _wgslsmith_f_op_f32(f32(-1f) * -758f));
}

fn func_3(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = 11157u;
    var var_1 = global1[_wgslsmith_index_u32(24230u, 22u)];
    var var_2 = vec2<f32>(var_1.c, -882f);
    var var_3 = -1081f;
    var var_4 = Struct_2(vec3<u32>(2772u, _wgslsmith_dot_vec4_u32(max(u_input.a, u_input.a), firstLeadingBit(vec4<u32>(1u, 4294967295u, u_input.a.x, 70860u))) & 11067u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(63187u, 1u ^ var_1.a.x), 0u ^ reverseBits(var_1.a.x), ~_wgslsmith_sub_u32(var_1.a.x, 34562u))), Struct_1(_wgslsmith_clamp_u32(~(global0.a << (39561u % 32u)), reverseBits(_wgslsmith_sub_u32(global0.a, u_input.b)), var_0), global0.b), _wgslsmith_f_op_f32(f32(-1f) * -3918f));
    return true;
}

fn func_1() -> i32 {
    global1 = array<Struct_2, 22>();
    var var_0 = select(!all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false)), any(!vec3<bool>(u_input.a.x < 25153u, true, all(vec4<bool>(true, true, true, false)))), false);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_2());
    let var_2 = func_3(0i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 881f) + _wgslsmith_f_op_f32(abs(var_1.x)))))));
    let var_3 = abs(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, select(u_input.a, vec4<u32>(44109u, u_input.a.x, 1u, 1u), vec4<bool>(true, true, var_2, false))), select(vec4<u32>(44559u, 0u, u_input.a.x, global0.a) ^ u_input.a, ~u_input.a, true)));
    return -(-1406i ^ firstTrailingBit(~u_input.c.x >> (reverseBits(var_3.x) % 32u)));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<i32>) -> Struct_1 {
    global1 = array<Struct_2, 22>();
    global0 = Struct_1(global0.a & ~(~(u_input.b | global0.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(global0.b, vec3<f32>(global0.b.x, 499f, global0.b.x)), global0.b)))));
    global1 = array<Struct_2, 22>();
    let var_0 = Struct_2(_wgslsmith_sub_vec3_u32(u_input.a.xxy, _wgslsmith_div_vec3_u32(~(~vec3<u32>(global0.a, 1u, u_input.a.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 1u, u_input.a.x, 9719u)), 15668u | global0.a, 1u))), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, arg_1.x))))), 1960f);
    global0 = Struct_1(~(~global0.a), var_0.b.b);
    return Struct_1(~_wgslsmith_clamp_u32(u_input.b, global0.a >> (~u_input.b % 32u), _wgslsmith_dot_vec2_u32(u_input.a.xw, u_input.a.zx)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(ceil(-2045f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(256f)))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -563f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))))) * global0.b.zy);
    var var_1 = global1[_wgslsmith_index_u32(arg_0.a, 22u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.c + -1013f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.x + arg_2.c), _wgslsmith_f_op_f32(floor(global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_0.b.x, var_1.b.b.x, _wgslsmith_f_op_f32(var_0.x + -1017f))))));
    var var_3 = Struct_2(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 0u, var_1.b.a) << (vec3<u32>(arg_2.a.x, 47922u, 70713u) % vec3<u32>(32u)), u_input.a.yzz, vec3<u32>(1u, 0u, 28351u))), arg_2.b, _wgslsmith_f_op_f32(var_0.x * -1781f));
    var var_4 = vec3<i32>(firstLeadingBit(16960i), select(0i, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(6478i, 0i, -29170i, u_input.c.x)), vec4<i32>(_wgslsmith_clamp_i32(-1i, 0i, u_input.c.x), -u_input.c.x, u_input.c.x, ~u_input.c.x)), ~(var_3.b.a >> (43455u % 32u)) <= ~(var_3.a.x ^ global0.a)), abs(firstTrailingBit(-81097i)));
    return StorageBuffer(1i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_3.b.b.xy, vec2<f32>(108f, arg_2.b.b.x), true)), vec2<f32>(-1744f, -202f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(_wgslsmith_sub_i32(13046i, u_input.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.b.x, 1126f), _wgslsmith_f_op_f32(-global0.b.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1332f, 811f) + global0.b.yz) + _wgslsmith_f_op_vec2_f32(trunc(global0.b.xx)))), firstLeadingBit(vec2<i32>(countOneBits(u_input.c.x), func_1()))), vec2<bool>(all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true)), !all(vec3<bool>(false, false, false))), global1[_wgslsmith_index_u32(4294967295u, 22u)], ~_wgslsmith_add_u32(max(u_input.a.x, 66986u), select(u_input.b, 0u, true)) > ~(~(~u_input.a.x)));
}

