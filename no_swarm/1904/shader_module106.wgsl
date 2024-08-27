struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(false, 1u), Struct_2(false, 77038u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<i32> {
    let var_0 = select(!(!vec2<bool>(true, u_input.a < u_input.a)), !select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, false, false)), true), true), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, true), vec2<bool>(true, false))));
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    let var_1 = vec3<u32>(u_input.a, abs(~min(u_input.a, 46661u)), u_input.a);
    let var_2 = var_0.x;
    return firstTrailingBit(~(-max(vec4<i32>(u_input.b.x, u_input.b.x, -10430i, -34412i) | vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 4242i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -1i, 20395i, u_input.b.x), vec4<i32>(0i, 2147483647i, u_input.b.x, 7151i)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_2) -> bool {
    let var_0 = vec2<bool>(true, arg_3.a);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1004f - -389f)))))));
    var var_2 = arg_3;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1152f)) * _wgslsmith_f_op_f32(select(2411f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2087f, 566f))), arg_2.x))), false, Struct_2(arg_2.x, firstLeadingBit(arg_3.b)));
    let var_4 = var_3;
    return !(all(select(!vec2<bool>(arg_2.x, var_4.c.a), vec2<bool>(var_2.a, false), arg_2.x)) | true);
}

fn func_2() -> u32 {
    global0 = array<Struct_2, 2>();
    let var_0 = vec2<bool>(!func_4(func_3(), 0u, vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true))), Struct_2(all(vec3<bool>(false, true, false)), 52010u)), all(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))));
    let var_1 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(3327u, 19611u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 25620u, 0u)), select(vec3<u32>(u_input.a, 10334u, 4294967295u), vec3<u32>(u_input.a, 4294967295u, u_input.a), var_0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(firstLeadingBit(vec3<u32>(1978u, 116372u, 34364u)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-356f - 566f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1232f), _wgslsmith_f_op_f32(max(483f, -1726f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(774f * -105f), -370f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2397f)) + 626f))), !select(vec4<bool>(!var_0.x, all(vec4<bool>(true, var_0.x, true, true)), !var_0.x, var_0.x), select(!vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, true, false, true)), select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, false, false, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, true), false))), reverseBits(_wgslsmith_mult_vec2_u32((vec2<u32>(0u, var_1) ^ vec2<u32>(36445u, u_input.a)) & ~vec2<u32>(var_1, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(var_1, 0u), vec2<u32>(1u, 1u)) & ~vec2<u32>(var_1, 65779u))));
    var var_3 = var_0.x;
    return var_1;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = Struct_2(true, func_2());
    let var_1 = 6759i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(136f, -898f)))) * _wgslsmith_f_op_f32(min(-608f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-367f)) - _wgslsmith_f_op_f32(step(1373f, 1180f)))))), vec4<bool>(!(true | any(vec4<bool>(arg_0, false, true, var_0.a))), false, any(select(!vec2<bool>(false, arg_0), !vec2<bool>(var_0.a, arg_0), !vec2<bool>(arg_0, var_0.a))), !(!all(vec3<bool>(arg_0, var_0.a, false)))), max(vec2<u32>(firstLeadingBit(var_0.b), var_0.b), _wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(15530u, 0u)), max(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 42118u), vec2<u32>(0u, 56860u)), vec2<u32>(u_input.a, var_0.b) << (vec2<u32>(u_input.a, 57144u) % vec2<u32>(32u))), vec2<u32>(~1u, max(var_0.b, 0u)))));
    let var_3 = var_2;
    let var_4 = -1i;
    return _wgslsmith_clamp_i32(-43000i, select(_wgslsmith_mod_i32(u_input.b.x | var_4, ~(-28077i)), ~(~(~var_4)), func_4(-vec4<i32>(31669i, var_4, u_input.b.x, 11929i), var_3.c.x, var_3.b, global0[_wgslsmith_index_u32(reverseBits(4294967295u), 2u)])), reverseBits(max(1i, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1184f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(762f + 210f))), 499f, _wgslsmith_f_op_f32(sign(-726f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-799f, -399f, -825f, -452f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, 1000f, -1699f) * vec4<f32>(713f, -117f, -703f, -1767f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-407f, -992f, -1719f, 928f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-164f, 996f, 746f, 213f) + vec4<f32>(-370f, 984f, -362f, 572f))))));
    let var_1 = -vec3<i32>(_wgslsmith_mult_i32(~max(u_input.b.x, -2147483647i), ~u_input.b.x | func_1(true)), u_input.b.x ^ _wgslsmith_add_i32(-18522i, u_input.b.x ^ u_input.b.x), u_input.b.x | _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 57048i, -1i, -15609i), vec4<i32>(0i, u_input.b.x, u_input.b.x, 2147483647i)), -vec4<i32>(-2147483647i, -1i, u_input.b.x, u_input.b.x)));
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_f32(max(var_0.x, 281f)));
}

