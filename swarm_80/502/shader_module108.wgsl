struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<u32>(21410u, 25938u), vec4<u32>(2179u, 0u, 1u, 0u), vec3<f32>(1071f, 159f, 442f), -77045i), Struct_1(vec2<u32>(4294967295u, 1u), vec4<u32>(22812u, 4294967295u, 16029u, 25893u), vec3<f32>(957f, -678f, 1532f), -12858i), Struct_1(vec2<u32>(39279u, 0u), vec4<u32>(119286u, 0u, 4294967295u, 6801u), vec3<f32>(-717f, -1000f, 1243f), 0i), Struct_1(vec2<u32>(64039u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 4637u), vec3<f32>(610f, 260f, -1174f), 2147483647i), Struct_1(vec2<u32>(0u, 1u), vec4<u32>(42541u, 4294967295u, 36457u, 22172u), vec3<f32>(-1000f, -629f, 437f), -1i), Struct_1(vec2<u32>(10312u, 80143u), vec4<u32>(4294967295u, 2913u, 9984u, 0u), vec3<f32>(1000f, 399f, -1505f), 0i), Struct_1(vec2<u32>(45302u, 36016u), vec4<u32>(17047u, 43771u, 4294967295u, 1u), vec3<f32>(1273f, 1141f, -760f), 0i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = array<Struct_1, 7>();
    global0 = false;
    let var_0 = arg_0.c.x;
    let var_1 = ~(~arg_0.a.x);
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(abs(~_wgslsmith_div_i32(-36187i, 2147483647i)), u_input.b), 1i);
    return ~(~countOneBits(~1u & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 0u, arg_0.a.x), arg_0.b.zxw)));
}

fn func_2() -> f32 {
    var var_0 = vec4<u32>(0u, firstLeadingBit((_wgslsmith_dot_vec3_u32(vec3<u32>(3626u, 1u, 12887u), vec3<u32>(1u, 25353u, 0u)) & 3522u) | 1u), 6532u, 12917u);
    var_0 = abs(vec4<u32>(abs(var_0.x), 0u, 66667u, ~func_3(global1[_wgslsmith_index_u32(1u, 7u)])));
    let var_1 = select(!vec3<bool>(true, all(vec3<bool>(true, true, true)), true), select(!vec3<bool>(any(vec3<bool>(true, true, true)), var_0.x > var_0.x, true), vec3<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), true, true), vec3<bool>(false, all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)))), true);
    var var_2 = 4294967295u;
    var var_3 = Struct_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1153f, -214f, 1141f))), vec3<f32>(_wgslsmith_f_op_f32(-686f + 210f), _wgslsmith_f_op_f32(select(-333f, 1247f, false)), _wgslsmith_f_op_f32(trunc(-314f))), vec3<bool>(all(vec3<bool>(false, var_1.x, false)), any(vec2<bool>(false, false)), true)))), global1[_wgslsmith_index_u32(firstTrailingBit(~(~var_0.x)), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(767f + _wgslsmith_f_op_f32(select(-835f, _wgslsmith_f_op_f32(round(-444f)), var_1.x))) * _wgslsmith_f_op_f32(round(1f))), var_0.x);
    return _wgslsmith_f_op_f32(ceil(var_3.d));
}

fn func_1() -> u32 {
    global0 = true;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - 1000f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(200f, var_0)), var_0) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-667f, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-259f, 444f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-758f, -259f))))));
    global0 = _wgslsmith_clamp_i32(~u_input.b, 1i, firstTrailingBit(-1i)) < _wgslsmith_clamp_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, firstTrailingBit(-46723i), max(u_input.b, 43782i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 31757i, u_input.a), vec4<i32>(u_input.b, 2626i, -2147483647i, 0i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(14361u, 53175u, 22065u, 0u), vec4<u32>(1u, 24082u, 1u, 4294967295u), vec4<u32>(0u, 20948u, 1u, 4294967295u)) % vec4<u32>(32u))), reverseBits(u_input.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(min(-1000f, 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_1.x), var_0)), var_0));
    return _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(972u, abs(~6790u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 49737u, 0u), vec3<u32>(1u, 1u, 1u)), firstLeadingBit(abs(~73556u)));
    var var_1 = vec4<u32>(1u, max(func_1(), ~1u), 1u, ~max(reverseBits(39087u), ~1u) >> ((~(~49592u) << (_wgslsmith_mult_u32(abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(29632u, 4294967295u, 747u, 0u), vec4<u32>(126256u, 39288u, 1u, 0u))) % 32u)) % 32u));
    let var_2 = var_1.xz;
    global1 = array<Struct_1, 7>();
    var_1 = ~(~vec4<u32>(firstTrailingBit(abs(11437u)), var_2.x, var_2.x, 21426u));
    let var_3 = vec2<bool>(true, false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.xy), _wgslsmith_clamp_i32(302i, ~(-(u_input.a ^ u_input.a)), ~1i), vec4<i32>(-1i) * -vec4<i32>(-855i, u_input.b, u_input.a, 0i));
}

