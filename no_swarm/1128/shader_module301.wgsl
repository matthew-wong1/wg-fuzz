struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_2, 13>;

var<private> global3: vec4<i32>;

var<private> global4: vec3<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<u32> {
    global3 = vec4<i32>(~global3.x, abs(abs(u_input.c.x)), arg_1.b.x, ~(_wgslsmith_clamp_i32(-49996i, 17496i, 36750i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_1.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-1i, u_input.e)))));
    let var_0 = Struct_1(select(abs(-(vec4<i32>(-2147483647i, 61662i, -30625i, -2147483647i) << (vec4<u32>(u_input.b.x, 1u, 0u, u_input.d) % vec4<u32>(32u)))), vec4<i32>(-countOneBits(2147483647i), arg_1.c.x, -(23233i ^ arg_1.c.x), global3.x), arg_0.x), any(vec2<bool>(select(all(vec2<bool>(global4.x, arg_0.x)), true, !arg_0.x), select(arg_0.x, true, false) & (arg_1.d.x < global1.x))), ~(~arg_1.d.x));
    var var_1 = vec4<u32>(firstLeadingBit(abs(~1u) << (((var_0.c & 1u) << (_wgslsmith_div_u32(arg_1.d.x, u_input.b.x) % 32u)) % 32u)), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(32273u, 33474u, global1.x), u_input.b) ^ 42007u) >> (~firstTrailingBit(~var_0.c) % 32u), 0u, 27896u);
    global1 = ~vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c, var_1.x, var_0.c), global1.wzz), select(u_input.b, vec3<u32>(global1.x, u_input.b.x, 1u), arg_0.x)), ~max(_wgslsmith_add_u32(1u, arg_1.d.x), var_0.c), 4294967295u >> (firstTrailingBit(~global1.x) % 32u), 55182u);
    let var_2 = arg_1;
    return firstTrailingBit((~countOneBits(vec4<u32>(var_0.c, 53649u, 7984u, 15769u)) ^ (_wgslsmith_clamp_vec4_u32(vec4<u32>(49632u, u_input.d, var_1.x, 610u), vec4<u32>(31802u, var_0.c, global1.x, 1u), vec4<u32>(8116u, 71842u, u_input.b.x, global1.x)) << (vec4<u32>(var_1.x, 4294967295u, 26348u, 4294967295u) % vec4<u32>(32u)))) >> ((vec4<u32>(~26439u, ~26333u, 0u << (u_input.d % 32u), u_input.d) & vec4<u32>(8276u, _wgslsmith_mod_u32(u_input.b.x, 12027u), var_1.x, ~var_1.x)) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> vec4<bool> {
    let var_0 = abs(reverseBits(~0u));
    global1 = _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, firstTrailingBit(_wgslsmith_mult_u32(global1.x, 63867u)), 102737u, ~(~max(arg_0.c, var_0))), max(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, var_0, arg_0.c), vec4<u32>(global1.x, 34788u, 0u, var_0), vec4<u32>(4294967295u, 4462u, 6133u, 0u)) & ~vec4<u32>(35132u, u_input.b.x, u_input.d, 29819u), vec4<u32>(19614u, u_input.d, 59711u, 0u) | func_3(vec4<bool>(true, true, false, arg_0.b), global2[_wgslsmith_index_u32(51254u, 13u)])), vec4<u32>(abs(var_0), u_input.b.x, ~(u_input.b.x << (51176u % 32u)), countOneBits(19186u << (u_input.d % 32u)))));
    global1 = vec4<u32>(~(~1u), arg_0.c, global1.x ^ _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global1.x, u_input.b.x)), select(global1.xw, ~u_input.b.zy, !arg_1)), 4294967295u);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-183f, 422f, 688f, -607f) - vec4<f32>(arg_2, arg_2, arg_2, arg_2)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, -1759f, arg_2, -1588f))))))), countOneBits(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(11217i, global3.x, arg_0.a.x) & arg_0.a.xyz), -_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.x, u_input.e, -1i), global3.wxz, vec3<i32>(2656i, u_input.a, -2147483647i)))), vec2<i32>(countOneBits(global3.x), u_input.a), abs(firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(1u, var_0), _wgslsmith_div_u32(4294967295u, var_0)))));
    var var_2 = u_input.c;
    return select(select(!(!select(vec4<bool>(true, true, false, global4.x), vec4<bool>(global4.x, arg_0.b, arg_1, false), false)), select(select(!vec4<bool>(arg_1, arg_1, arg_1, arg_1), select(vec4<bool>(arg_0.b, global4.x, global4.x, true), vec4<bool>(true, false, true, false), global4.x), global4.x), select(vec4<bool>(true, global4.x, true, false), vec4<bool>(global4.x, true, false, true), false), all(vec4<bool>(arg_1, true, false, false))), all(select(select(vec3<bool>(arg_0.b, arg_1, true), vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(12773u, 20u)]), select(vec3<bool>(false, global4.x, true), vec3<bool>(false, false, arg_1), true), global4.x == arg_1))), vec4<bool>(arg_1, false, _wgslsmith_mod_u32(countOneBits(u_input.b.x), global1.x) <= u_input.b.x, all(select(!global4.zy, !global4.xx, true))), vec4<bool>(global4.x, global4.x, !((global4.x && arg_0.b) || true), !arg_1));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32) -> vec4<f32> {
    var var_0 = arg_1.a;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(var_0.x, arg_1.a.x, var_0.x, 1883f))))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(842f - arg_1.a.x)) - 260f), _wgslsmith_div_f32(-494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + _wgslsmith_f_op_f32(-arg_1.a.x))), -413f, var_0.x));
    var var_1 = -1262f;
    var_0 = _wgslsmith_f_op_vec4_f32(arg_1.a + arg_1.a);
    var var_2 = vec4<bool>(select(global1.x, arg_1.d.x, true) <= global1.x, any(!arg_0.xx), false, all(!(!select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, false)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_1.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-975f, -228f, 2648f, 420f))), arg_1.a, func_2(Struct_1(vec4<i32>(arg_2, arg_2, global3.x, arg_1.b.x), var_2.x, 4294967295u), global4.x, _wgslsmith_f_op_f32(step(-323f, arg_1.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(trunc(-408f))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(arg_1.a.x - var_0.x)))));
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    global1 = select(countOneBits(func_3(!(!vec4<bool>(global4.x, global4.x, global4.x, true)), arg_0)), ~(~select(~vec4<u32>(78494u, 11792u, u_input.b.x, 0u), vec4<u32>(u_input.d, arg_0.d.x, arg_0.d.x, 0u), true)), !(!select(select(vec4<bool>(global4.x, global4.x, global4.x, false), vec4<bool>(true, true, global4.x, global4.x), vec4<bool>(global4.x, global4.x, false, true)), !vec4<bool>(false, global4.x, global4.x, global4.x), !vec4<bool>(true, global4.x, global4.x, true))));
    let var_0 = 1u;
    var var_1 = !(!(!(!(!vec4<bool>(false, true, false, global4.x)))));
    let var_2 = false;
    var_1 = vec4<bool>(any(vec4<bool>(true, _wgslsmith_f_op_f32(ceil(arg_0.a.x)) >= _wgslsmith_f_op_f32(round(1758f)), false, var_2)), global4.x, var_1.x, any(!vec4<bool>(arg_0.b.x < u_input.a, true, false, 1416f >= arg_0.a.x)));
    return StorageBuffer(~reverseBits(global1.yx), arg_0.b.x, vec3<i32>(reverseBits(global3.x), -1i, 31357i), global1.yxx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(func_1(!select(global0[_wgslsmith_index_u32(48099u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1394f, -1000f, -1177f, -723f) - vec4<f32>(2595f, -1033f, -1234f, -111f)), -vec3<i32>(u_input.e, 2147483647i, global3.x), -global3.zx, firstLeadingBit(u_input.b.xy)), ~u_input.c.x)), abs(min(global3.yxw, firstTrailingBit(global3.wzx))), global3.wx, ~(~vec2<u32>(0u, 91060u))));
}

