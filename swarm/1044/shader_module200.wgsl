struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(false, 328f), Struct_1(false, 326f), Struct_1(true, -297f), Struct_1(true, -466f), Struct_1(true, -742f), Struct_1(true, 424f), Struct_1(false, -230f), Struct_1(true, -1464f), Struct_1(true, 469f), Struct_1(false, 1000f), Struct_1(false, 1384f), Struct_1(true, 536f), Struct_1(true, 624f));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> i32 {
    let var_0 = abs(-(u_input.a & vec2<i32>(~arg_1, _wgslsmith_mult_i32(arg_1, 20455i))));
    global0 = array<Struct_1, 13>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, -1799f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))))))), _wgslsmith_f_op_f32(trunc(-1197f)));
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(0u), reverseBits(~(~45137u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), vec2<u32>(1u, 4487u) << (min(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 14668u)) % vec2<u32>(32u))), 0u), (vec4<u32>(1u, 1u, 1u, 1u) & firstTrailingBit(max(vec4<u32>(1u, 1u, 4294967295u, 35805u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u)))) ^ firstLeadingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 54090u, 1u, 1u), firstTrailingBit(vec4<u32>(4294967295u, 1u, 4294967295u, 1u)))));
    let var_3 = ~u_input.a.x;
    return -48578i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(ceil(722f)));
    var var_1 = var_0.b;
    let var_2 = firstTrailingBit(vec4<i32>(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b, -1210f)))), -2147483647i), _wgslsmith_mult_i32(1i, func_3(vec2<f32>(var_0.b, var_0.b), u_input.a.x)) >> (~4294967295u % 32u), 50471i, u_input.a.x));
    let var_3 = Struct_2(_wgslsmith_mod_vec2_u32(abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 54582u), _wgslsmith_clamp_vec2_u32(vec2<u32>(24203u, 44819u), vec2<u32>(102416u, 28567u), vec2<u32>(1u, 0u)))), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), !(!vec4<bool>(any(vec3<bool>(true, false, var_0.a)), var_0.a, var_0.a, true)), select(!vec3<bool>(1i != u_input.a.x, true, var_0.a), vec3<bool>(all(!vec3<bool>(var_0.a, var_0.a, true)), (var_2.x < 0i) & true, !any(vec3<bool>(false, true, var_0.a))), select(!vec3<bool>(true, var_0.a, var_0.a), !select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(true, var_0.a, var_0.a), true), true)));
    var var_4 = vec4<u32>(~4294967295u, _wgslsmith_add_u32(~36301u, 34787u), 4294967295u, 4294967295u);
    return Struct_1(false, var_0.b);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_2(~_wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_3), vec2<u32>(arg_3, arg_3)), vec2<u32>(1u, 1u)), !(!(!vec4<bool>(arg_2.x, arg_1.a, true, arg_1.a))), !(!(!select(vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), true))));
    var var_1 = Struct_1(true, -1597f);
    var var_2 = var_1.a;
    var var_3 = arg_3;
    var_2 = false;
    return func_2();
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = array<Struct_1, 13>();
    var var_0 = -vec2<i32>(~arg_2, 27281i);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * arg_0.x));
    global0 = array<Struct_1, 13>();
    var_0 = ~(-abs(vec2<i32>(~(-8164i), u_input.a.x)));
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-var_1.a)), func_2(), !(!select(vec2<bool>(arg_1.a, arg_1.a), !vec2<bool>(true, arg_1.a), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_1.a), arg_1.a))), ~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstTrailingBit(~vec4<i32>(~(-32597i), u_input.a.x >> (147499u % 32u), -41819i, u_input.a.x));
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-239f, 1247f, 1000f, -381f))))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(2133f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -717f) + _wgslsmith_f_op_f32(-900f - 580f)), _wgslsmith_f_op_f32(f32(-1f) * -362f))), global0[_wgslsmith_index_u32(31706u, 13u)], _wgslsmith_dot_vec2_i32((var_0.xw << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) ^ ~(~var_0.yw), vec2<i32>(1i, -reverseBits(1546i))));
    let var_2 = ~firstTrailingBit(abs(vec2<u32>(1u, ~0u)));
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(_wgslsmith_sub_u32(var_2.x | 74277u, _wgslsmith_dot_vec2_u32(var_2, vec2<u32>(var_2.x, 4294967295u))))), var_2, 1170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-702f + _wgslsmith_f_op_f32(max(var_1.b, func_2().b)))), ~2147483647i);
}

