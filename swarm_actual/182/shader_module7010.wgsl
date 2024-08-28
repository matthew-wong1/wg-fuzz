struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_2;

var<private> global2: array<f32, 1> = array<f32, 1>(-623f);

var<private> global3: Struct_3;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.a.b, -775f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, global3.a) - vec2<f32>(-592f, -1590f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.a, global1.a.b))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1035f, 2723f) + vec2<f32>(global3.b.b, 278f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.b, global2[_wgslsmith_index_u32(7864u, 1u)]) + vec2<f32>(553f, global1.a.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 259f)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(724f, -583f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.b, global1.a.b)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))))));
    global2 = array<f32, 1>();
    global0 = _wgslsmith_div_u32(firstLeadingBit(abs(1u)), 4294967295u);
    let var_1 = select(vec2<u32>(~(~4294967295u), select(1u, 1u, true)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(~1u, 57494u), vec2<u32>(4294967295u, ~91206u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~vec2<u32>(~1379u, 20983u), vec2<u32>(~1u, ~6895u)), vec2<bool>(true, true));
    var var_2 = Struct_2(Struct_1(abs(2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(-global3.a)) * _wgslsmith_f_op_f32(-1002f - _wgslsmith_f_op_f32(187f + global2[_wgslsmith_index_u32(var_1.x, 1u)])))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_1.x, 1u)], 1000f)) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-1f))) + 1747f);
}

fn func_2() -> i32 {
    global0 = ~1u;
    let var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = u_input.b;
    var var_2 = global1.a;
    let var_3 = any(!vec2<bool>(true, all(vec4<bool>(true, true, true, true))));
    return ~(~max(global3.b.a, 0i));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_1(-8673i | ~(~(-arg_1)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(6269u, 1u)]) + _wgslsmith_div_f32(-315f, global1.a.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a.b)))))));
    let var_1 = Struct_1(~abs(~arg_1), _wgslsmith_f_op_f32(max(-195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-300f)))))));
    let var_2 = Struct_3(-396f, var_0);
    var var_3 = vec4<u32>(countOneBits(4294967295u), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 47951u, 37490u), vec3<u32>(34900u, 87606u, 1u))), 4294967295u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~(~4294967295u), 4294967295u), 1u), (_wgslsmith_dot_vec2_u32(min(vec2<u32>(8560u, 1u), vec2<u32>(0u, 0u)), firstTrailingBit(vec2<u32>(40254u, 0u))) & 0u) ^ 4294967295u);
    var var_4 = -max(-u_input.b.yx, abs(vec2<i32>(u_input.b.x, -48727i)));
    return var_2;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    global0 = 50978u;
    var var_0 = func_4(Struct_2(Struct_1(-22781i, 1208f)), firstLeadingBit(1i), func_2());
    let var_1 = arg_3.xx;
    global1 = Struct_2(func_4(Struct_2(Struct_1(_wgslsmith_clamp_i32(arg_1, -7588i, global3.b.a), _wgslsmith_f_op_f32(arg_2.b * -231f))), 2147483647i, u_input.b.x).b);
    var var_2 = false;
    return ~(-firstLeadingBit(62579i)) ^ -u_input.a.x;
}

fn func_5(arg_0: bool, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = firstLeadingBit(reverseBits(vec3<u32>(1u, 1u, 1u)));
    global0 = var_0.x;
    global3 = func_4(Struct_2(Struct_1(func_4(Struct_2(global3.b), 1i, 0i).b.a, -766f)), -func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b + 521f)), -_wgslsmith_mod_i32(1i, arg_1.x), Struct_1(countOneBits(arg_1.x), -919f), ~var_0 ^ _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.x), var_0)), arg_1.x);
    global2 = array<f32, 1>();
    global2 = array<f32, 1>();
    return func_4(Struct_2(Struct_1(~u_input.a.x & ~(-52668i), global3.b.b)), global1.a.a, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(true, _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global3.b.a, global3.b.a), 1i, u_input.b.x, func_1(global2[_wgslsmith_index_u32(1407u, 1u)], u_input.a.x, global3.b, vec3<u32>(38064u, 6593u, 4294967295u))), ~u_input.b) >> (countOneBits(max(~vec4<u32>(23476u, 99812u, 39059u, 18787u), ~vec4<u32>(0u, 22780u, 13391u, 10433u))) % vec4<u32>(32u)));
    global0 = 0u;
    let var_1 = global1.a;
    global0 = 0u;
    global0 = max(firstTrailingBit(2840u), 1u);
    var var_2 = (var_0.b.a | -global1.a.a) << (~4294967295u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(7718u, ~abs(select(~vec3<u32>(57728u, 65618u, 4294967295u), vec3<u32>(94194u, 4294967295u, 1u), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(round(437f))), var_1.b)));
}

