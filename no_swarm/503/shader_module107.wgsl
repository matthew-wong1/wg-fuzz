struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(-10134i), Struct_1(42626i), Struct_1(-1i), Struct_1(-1i), Struct_1(28347i), Struct_1(-18377i), Struct_1(1i), Struct_1(1i), Struct_1(14780i), Struct_1(-1i), Struct_1(1i), Struct_1(70869i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(-16251i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(1i), Struct_1(1i), Struct_1(-2790i), Struct_1(2147483647i), Struct_1(0i), Struct_1(27231i), Struct_1(-1i));

var<private> global1: f32 = 1068f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global1 = -447f;
    var var_0 = Struct_1(_wgslsmith_sub_i32(~(~(~(-1i))), -u_input.b));
    global0 = array<Struct_1, 27>();
    let var_1 = firstTrailingBit(-38280i);
    global1 = _wgslsmith_f_op_f32(step(arg_0.x, -484f));
    return ~abs(0u);
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(35099u, 5795u, 22036u, 34156u), vec4<u32>(0u, 4532u, 0u, 4294967295u), vec4<bool>(true, true, true, true))), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 28364u, 57552u, 51565u)), vec4<u32>(38377u, func_3(vec2<f32>(163f, 601f)), 59556u, ~78100u))) | (firstLeadingBit(118428u) | ~firstTrailingBit(1u)), 27u)];
    var_0 = Struct_1(arg_0);
    var var_1 = ~1u;
    var var_2 = -(~0i);
    let var_3 = Struct_1(-var_0.a);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-658f)))) + 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1497f))))))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(i32(-1i) * -1i);
    global0 = array<Struct_1, 27>();
    let var_1 = vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.a, u_input.b, arg_0.a), vec3<i32>(2546i, 29058i, var_0.a))))));
    var var_2 = select(true, !all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)) == select(true == all(vec3<bool>(true, true, true)), true, true), all(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, false, false), true), false)));
    let var_3 = Struct_1(_wgslsmith_div_i32(-(u_input.b << (~71250u % 32u)), 0i));
    return var_1.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(floor(-219f)), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(3484u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u)))), 1u), _wgslsmith_div_u32(~max(~18550u, firstLeadingBit(1u)), ~(~1u))), 27u)];
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f)))) + _wgslsmith_f_op_f32(f32(-1f) * -280f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(var_0.a))), _wgslsmith_f_op_f32(sign(-137f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2109f), _wgslsmith_div_f32(1851f, 938f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-386f - -1813f), _wgslsmith_f_op_f32(trunc(842f)))))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -14544i, var_0.a, u_input.b), vec4<i32>(9676i, 25440i, -24864i, -2147483647i)), i32(-1i) * -1i, var_0.a) | ~firstLeadingBit(select(vec3<i32>(0i, -4626i, 24106i), vec3<i32>(u_input.a, 4451i, -2147483647i), true))));
    var var_2 = 16007u;
    let var_3 = global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_1)), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -974f), true))) << (min(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u >> (0u % 32u), 0u), _wgslsmith_mod_u32(min(4294967295u, 0u), 1u)), 88755u) % 32u), 27u)];
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~10263u, 4294967295u), 27u)];
    let var_5 = Struct_1(-reverseBits(u_input.b));
    global1 = _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-695f + var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), 543f)));
}

