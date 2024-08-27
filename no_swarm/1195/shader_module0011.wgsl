struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: vec2<i32> = vec2<i32>(-640i, 2147483647i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> vec3<u32> {
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    var var_0 = vec2<i32>(global1.x, 24648i);
    var var_1 = arg_3.d;
    var_1 = arg_3.d;
    return arg_3.e.b;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = arg_0.a;
    var_0 = arg_0.a;
    var var_1 = Struct_1(0u, _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.d.b.x, 4294967295u, arg_0.c.b.x), vec3<u32>(~arg_0.d.a, var_0.a.x, 60518u)) & _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(0u, arg_0.a.b, var_0.b)), arg_0.d.b));
    var var_2 = func_3(Struct_2(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 0u, 1u), _wgslsmith_sub_u32(0u, 0u)), ~var_1.b.x), 0u, u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1 - vec2<f32>(arg_0.a.d.x, 540f)), var_0.d, u_input.a <= 1i)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-518f, -576f), vec2<f32>(var_0.d.x, arg_1.x))))))), arg_0, _wgslsmith_f_op_f32(round(arg_0.a.d.x)), arg_0);
    var var_3 = global0[_wgslsmith_index_u32(0u, 9u)];
    return vec3<bool>(!arg_0.b && true, all(!vec4<bool>(!arg_0.b, true, any(vec4<bool>(var_3.b, false, true, false)), true)), false);
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    let var_0 = global1.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -593f);
    global1 = select(vec2<i32>(1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(2147483647i, 2147483647i))) | reverseBits(vec2<i32>(i32(-1i) * -1i, global1.x)), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(-50261i, u_input.a) ^ vec2<i32>(global1.x, u_input.a)) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(24738u, 67085u, 1u, 42129u)), ~0u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1)))) < _wgslsmith_f_op_f32(step(435f, var_1)));
    global1 = select((firstTrailingBit(vec2<i32>(2147483647i, 0i)) << (max(min(vec2<u32>(36342u, 4294967295u), vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, 23515u)) % vec2<u32>(32u))) & vec2<i32>(7677i, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, u_input.a, u_input.a, global1.x), ~vec4<i32>(-4561i, u_input.a, u_input.a, u_input.a))), ~firstLeadingBit(select(vec2<i32>(u_input.a, global1.x), vec2<i32>(u_input.a, global1.x), true) | -vec2<i32>(global1.x, -1i)), arg_0.x);
    return ~_wgslsmith_clamp_i32(u_input.a, ~u_input.a | (i32(-1i) * -5787i), -u_input.a);
}

fn func_1() -> vec2<i32> {
    let var_0 = select(vec3<bool>((~global1.x << (1u % 32u)) != 15849i, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true));
    return vec2<i32>(~global1.x, -_wgslsmith_clamp_i32(func_4(func_2(global0[_wgslsmith_index_u32(9242u, 9u)], vec2<f32>(-2019f, 1000f))), i32(-1i) * -9343i, ~1095i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(func_1(), vec2<i32>(global1.x, _wgslsmith_sub_i32(global1.x, _wgslsmith_clamp_i32(25503i, 2147483647i, 7079i))), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, false, false, false)), false))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u));
    let var_0 = ~func_3(Struct_2(vec2<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), 52084u), firstTrailingBit(45294u) << (_wgslsmith_clamp_u32(0u, 0u, 1u) % 32u), firstTrailingBit(-2962i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(743f, -673f))), Struct_3(Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(60892u, 22879u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u)), max(0u, 4294967295u), global1.x, vec2<f32>(-362f, 1477f)), 101093u < firstTrailingBit(0u), Struct_1(1u, ~vec3<u32>(0u, 40968u, 1u)), Struct_1(_wgslsmith_mod_u32(35343u, 4294967295u), vec3<u32>(1u, 1u, 1u)), Struct_1(15888u, vec3<u32>(4294967295u, 1u, 28231u))), -1014f, global0[_wgslsmith_index_u32(~109825u, 9u)]).x;
    global0 = array<Struct_3, 9>();
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-857f, 360f)))), _wgslsmith_f_op_f32(-682f + 1475f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(1798f - _wgslsmith_f_op_f32(sign(-992f))), _wgslsmith_f_op_f32(-1981f - -321f), -794f)))));
    global1 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(abs(reverseBits(vec2<i32>(u_input.a, global1.x))), vec2<i32>(~(-2147483647i ^ u_input.a), global1.x)), select(~(~(-vec2<i32>(global1.x, global1.x))), firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.a, 2841i)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, global1.x), vec2<i32>(u_input.a, 0i))), vec2<bool>(true, true)));
    var var_2 = vec4<bool>(false, ~reverseBits(var_0) >= _wgslsmith_mult_u32(firstTrailingBit(var_0), 14000u << (var_0 % 32u)), true, any(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))));
    var var_3 = !(!vec2<bool>(var_2.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-457f * _wgslsmith_f_op_f32(f32(-1f) * -2087f)), 395f, vec4<u32>(var_0, var_0, 4294967295u, _wgslsmith_clamp_u32(var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0, 0u), ~vec3<u32>(38474u, 1u, 1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, 8785u, 4294967295u, var_0), vec4<u32>(1u, var_0, 4294967295u, var_0), vec4<u32>(10840u, 4294967295u, 0u, 0u)), vec4<u32>(var_0, var_0, 1u, var_0)))), -223f);
}

