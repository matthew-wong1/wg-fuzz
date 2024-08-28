struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(min(~(u_input.a.x & 15237u), reverseBits(~2503u)), u_input.c.x, 1u << (u_input.a.x % 32u)), 1u)];
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1047f, -244f, -176f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-928f, -1000f, -1262f))))));
    var var_2 = _wgslsmith_mod_i32(-2147483647i << (~(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) % 32u), i32(-1i) * -_wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, -10272i), 1i));
    return any(!(!select(vec4<bool>(global1.a.x, false, false, true), var_0.a, true)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-914f))))) * -1039f) + -985f);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, min(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.c.x), _wgslsmith_clamp_u32(u_input.a.x, ~u_input.b.x, u_input.a.x)), (15493u << (u_input.c.x % 32u)) | _wgslsmith_mod_u32(~u_input.b.x, 7626u))), 1u)];
    let var_2 = vec4<bool>(!var_1.a.x, true, !(!(!var_1.a.x)), false);
    let var_3 = Struct_1(vec4<bool>(false, func_3(), any(!var_2.yyx), all(var_2)));
    return Struct_1(!(!var_1.a));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = global1.a.zwz;
    global1 = arg_1;
    var var_1 = _wgslsmith_div_vec4_i32(max(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(max(2147483647i, 0i), _wgslsmith_clamp_i32(-26297i, 67568i, -2424i), _wgslsmith_mod_i32(-2147483647i, -1i), min(-2147483647i, -28285i))), -(~vec4<i32>(-22211i, -48600i, 12011i, 27095i))) & (select(vec4<i32>(_wgslsmith_mod_i32(1i, -31407i), 1i, min(-22157i, -2147483647i), ~(-24011i)), select(vec4<i32>(-2147483647i, 2147483647i, 40544i, 0i), vec4<i32>(1i, 1i, 1i, 1i), arg_1.a), arg_1.a) << (~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 4294967295u, arg_0)), u_input.b) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_add_i32(-_wgslsmith_sub_i32(var_1.x, _wgslsmith_clamp_i32(-11805i, _wgslsmith_add_i32(var_1.x, var_1.x), _wgslsmith_clamp_i32(var_1.x, 1i, var_1.x))), _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(36171i, 40655i, 35415i, 1i), countOneBits(vec4<i32>(var_1.x, 2147483647i, -65707i, -44517i))), reverseBits(var_1.x)));
    var var_3 = func_2();
    return Struct_1(select(global1.a, !vec4<bool>(global1.a.x, global1.a.x, var_3.a.x, var_0.x), func_2().a));
}

fn func_1(arg_0: bool, arg_1: i32) -> StorageBuffer {
    global0 = array<Struct_1, 1>();
    let var_0 = select(!global1.a, global1.a, false);
    global1 = func_4(71579u, func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1219f, 2080f)))))) + vec2<f32>(_wgslsmith_f_op_f32(round(-2135f)), _wgslsmith_f_op_f32(min(-514f, 1337f)))));
    var var_1 = arg_0;
    global1 = func_4(firstTrailingBit(u_input.c.x | u_input.b.x), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a.x, u_input.a.x), 1u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(516f, -501f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1314f, 840f), vec2<f32>(-125f, -1428f), var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-929f, 835f)))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -728f), -633f)));
    return StorageBuffer((select(vec4<u32>(59809u, u_input.b.x, 1u, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.b.x), u_input.b), select(var_0, vec4<bool>(true, global1.a.x, arg_0, false), var_0)) << (_wgslsmith_clamp_vec4_u32(firstLeadingBit(u_input.b), ~vec4<u32>(0u, u_input.a.x, u_input.b.x, 4294967295u), u_input.b) % vec4<u32>(32u))) >> (abs(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, 1u)) % vec4<u32>(32u)), 772f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(countOneBits(59237u), 1u)];
    global1 = global0[_wgslsmith_index_u32(~(~39477u), 1u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(778f))) - _wgslsmith_f_op_f32(1055f * -665f))));
    let var_2 = Struct_1(global1.a);
    global0 = array<Struct_1, 1>();
    let var_3 = ~(-45406i);
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_4 = -1i;
    let x = u_input.a;
    s_output = func_1(!(!var_2.a.x), 38407i);
}

