struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: vec3<u32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = ~vec2<u32>(global1.x, arg_0);
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_2() -> vec2<bool> {
    global0 = array<Struct_2, 5>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-39916i, -11451i, 18454i), vec3<i32>(1i, 0i, u_input.b.x), u_input.b)), u_input.c), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(928f, -921f, 2291f) + vec3<f32>(1611f, -1040f, 2217f))), _wgslsmith_div_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x) | vec3<u32>(1u, global1.x, global1.x), vec3<u32>(global1.x, global1.x, global1.x)), vec3<f32>(_wgslsmith_div_f32(-480f, 698f), _wgslsmith_f_op_f32(func_3(40354u, 1360f)), _wgslsmith_f_op_f32(f32(-1f) * -1562f)), -2147483647i, ~vec3<u32>(85131u, global1.x, global1.x))), vec3<bool>(-940f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-126f + 472f), _wgslsmith_f_op_f32(step(-612f, -1000f)))), all(vec2<bool>(true, true)), false));
    let var_1 = abs(max(u_input.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.a.x, -1i, u_input.c.x), -u_input.c, _wgslsmith_clamp_vec3_i32(u_input.c, var_0.a.a, var_0.a.a)))) & ((vec3<i32>(countOneBits(2147483647i), abs(-58049i), _wgslsmith_mult_i32(7505i, -23500i)) | (countOneBits(vec3<i32>(u_input.a, 2147483647i, var_0.a.a.x)) << (vec3<u32>(4294967295u, 6255u, var_0.a.b.b.x) % vec3<u32>(32u)))) & ~vec3<i32>(abs(-1i), -u_input.b.x, 2147483647i));
    return vec2<bool>(var_0.b.x, false);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    let var_0 = Struct_3(Struct_2(~(-vec3<i32>(-2147483647i, 39584i, u_input.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(625f, -833f, 2007f)))), vec3<u32>(80762u, firstLeadingBit(global1.x), _wgslsmith_mult_u32(0u, 4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(-390f * 427f), -1022f, _wgslsmith_f_op_f32(abs(-1435f))), 0i, select(~vec3<u32>(global1.x, 42758u, global1.x), min(vec3<u32>(global1.x, arg_0, global1.x), vec3<u32>(1u, global1.x, 69954u)), arg_1.x))), !vec3<bool>(func_2().x, any(vec4<bool>(true, false, arg_1.x, false)), false));
    global1 = firstLeadingBit(vec3<u32>(4294967295u, ~(~(9558u ^ global1.x)), abs(arg_0) & _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.a.b.e.x, 18453u), global1.x, ~arg_0)));
    global1 = countOneBits(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(global1.x, 0u), ~global1.x), ~(~43631u)), min(select(global1.x | 50081u, var_0.a.b.b.x, !var_0.b.x), 14668u), reverseBits(_wgslsmith_add_u32(var_0.a.b.e.x >> (1440u % 32u), global1.x))));
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    return _wgslsmith_f_op_f32(ceil(var_0.a.b.c.x));
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(407f * 1339f), _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(19193u, global1.x, global1.x, global1.x)), ~vec4<u32>(14312u, 0u, global1.x, 1u) ^ ~vec4<u32>(global1.x, global1.x, global1.x, 1u)), select(func_2(), vec2<bool>(true, true), all(vec4<bool>(true, false, false, false))))));
    var var_1 = Struct_2(u_input.c, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -908f, var_0), vec3<f32>(var_0, var_0, -1611f), false))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, -2336f, var_0)))), min(~_wgslsmith_mult_vec3_u32(vec3<u32>(73669u, 0u, 7671u), vec3<u32>(32117u, 11803u, global1.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 42294u, 0u), vec3<u32>(global1.x, 1u, global1.x), vec3<u32>(global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, -256f, var_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 2079f) + vec3<f32>(-1075f, -1235f, var_0))))), max(-30026i, min(_wgslsmith_clamp_i32(-36127i, arg_0.x, 1i), u_input.c.x | -2147483647i)), firstLeadingBit(vec3<u32>(~1u, ~0u, global1.x << (global1.x % 32u)))));
    var_1 = global0[_wgslsmith_index_u32(0u, 5u)];
    var var_2 = abs(global1.x << (firstLeadingBit(reverseBits(_wgslsmith_dot_vec2_u32(var_1.b.b.zz, var_1.b.e.yx))) % 32u));
    var_2 = _wgslsmith_dot_vec2_u32(var_1.b.e.zx, global1.yz);
    return (_wgslsmith_mult_u32(firstTrailingBit(0u) << (select(global1.x, 4294967295u, false) % 32u), ~0u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.x >> (var_1.b.e.x % 32u), 1u), ~vec3<u32>(var_1.b.b.x, 10105u, global1.x) ^ _wgslsmith_add_vec3_u32(vec3<u32>(1u, 2928u, 38064u), vec3<u32>(var_1.b.b.x, 36181u, 4294967295u))) % 32u)) >> (~_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(33159u, var_1.b.e.x), global1.x, countOneBits(abs(4294967295u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(global1.x, 5u)], select(!vec3<bool>(true, true, all(vec3<bool>(false, false, true))), vec3<bool>(true, true, all(vec4<bool>(true, true, false, true)) || true), !vec3<bool>(4294967295u == global1.x, true, any(vec4<bool>(true, false, false, false)))));
    let var_1 = global1.x;
    global1 = vec3<u32>(4294967295u, func_1(reverseBits(var_0.a.a.xy >> (global1.xy % vec2<u32>(32u)))), 0u);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-474f, var_0.a.b.c.x, var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-583f + var_0.a.b.c.x)), -1771f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(485f, var_0.a.b.c.x, var_0.a.b.c.x, 2088f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.a.x, var_0.a.b.c.x, var_0.a.b.a.x, 1856f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.a.x, var_0.a.b.a.x, 1000f, 1000f) * vec4<f32>(var_0.a.b.c.x, var_0.a.b.a.x, var_0.a.b.a.x, 472f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(219f, var_0.a.b.a.x, var_0.a.b.a.x, 2160f)), !vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x))), !(!vec4<bool>(var_0.b.x, false, false, false)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, var_0.a.b.c.x, var_0.a.b.c.x, -1759f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.b.a.x, var_0.a.b.c.x, 297f, 1714f))))))));
    global0 = array<Struct_2, 5>();
    global1 = vec3<u32>(abs(19585u), var_0.a.b.b.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.a.b.b.x, ~global1.x, 0u) >> (var_0.a.b.b.x % 32u), ~var_0.a.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, ~(~(vec4<u32>(var_0.a.b.e.x, global1.x, 4294967295u, 13663u) & countOneBits(vec4<u32>(12854u, var_0.a.b.b.x, 49114u, global1.x)))));
}

