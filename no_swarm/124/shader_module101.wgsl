struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<bool>(true, true, true), 434f), Struct_1(vec3<bool>(true, true, false), -549f), Struct_1(vec3<bool>(true, true, true), 1612f), Struct_1(vec3<bool>(false, true, true), -1000f), Struct_1(vec3<bool>(false, true, false), -1561f), Struct_1(vec3<bool>(false, false, false), 1082f));

var<private> global1: array<Struct_2, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.a;
    var_0 = !(!select(vec3<bool>(arg_0.a.x, arg_0.a.x & arg_0.a.x, 29641i < u_input.c.x), select(vec3<bool>(true, var_0.x, arg_0.a.x), arg_0.a, 49451u <= u_input.a), !select(true, false, var_0.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * 1025f) - _wgslsmith_div_f32(arg_0.b, -652f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), arg_0.b, _wgslsmith_f_op_f32(-737f + arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, arg_0.b, arg_0.a.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -308f, arg_0.b, -1000f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, arg_0.b, -1031f, arg_0.b), vec4<f32>(156f, arg_0.b, arg_0.b, -174f), var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, 775f), vec4<f32>(225f, arg_0.b, -583f, 816f), true)) - vec4<f32>(arg_0.b, -487f, arg_0.b, -1730f))), vec4<f32>(arg_0.b, arg_0.b, 325f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(682f * -1437f))))), true));
    var var_2 = vec4<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), all(arg_0.a)), var_0.xy, true)), arg_0.a.x & true, false, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.b.x, u_input.a), u_input.b.xzw >> (u_input.b.yzx % vec3<u32>(32u))), ~(~61923u)) >= firstTrailingBit(1u));
    var_2 = select(vec4<bool>(all(var_2.yz), ~u_input.c.x == ~(~2332i), true, var_2.x), select(select(!select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(true, arg_0.a.x, var_2.x, false), vec4<bool>(arg_0.a.x, true, true, var_2.x)), !vec4<bool>(var_0.x, false, true, var_2.x), !arg_0.a.x), !(!(!vec4<bool>(false, var_2.x, true, var_0.x))), true), !vec4<bool>(var_0.x, true, false, any(vec4<bool>(arg_0.a.x, var_0.x, true, false)) & arg_0.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1196f * arg_0.b)))), arg_0.b)));
}

fn func_2() -> f32 {
    global1 = array<Struct_2, 15>();
    var var_0 = Struct_1(vec3<bool>(true, false, abs(_wgslsmith_mod_i32(u_input.d.x, 29778i)) == (u_input.d.x & ~u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~(~0u), 6u)])) + 730f));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b, -1000f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b)))) + var_0.b);
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(~u_input.b.x, ~(u_input.b.x ^ ~1u)), u_input.e.x | _wgslsmith_div_u32(u_input.b.x, 47318u), ~71961u, 33538u);
    return -291f;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(151f * _wgslsmith_f_op_f32(ceil(1471f))), _wgslsmith_f_op_f32(-arg_3.c.b), -1372f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(804f, -708f, 115f, -2276f) + vec4<f32>(arg_3.a.x, 1028f, arg_0.b, arg_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, 3389f, -417f, arg_3.a.x)), select(!vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(true, false, arg_3.c.a.x, arg_0.a.x), select(vec4<bool>(arg_3.c.a.x, true, arg_2, arg_0.a.x), vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_3.c.a.x), vec4<bool>(arg_1, arg_2, false, false))))), false)));
    global0 = array<Struct_1, 6>();
    let var_1 = 4294967295u;
    let var_2 = arg_3;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.b, arg_3.a.x, -1115f, arg_0.b) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-257f, arg_3.a.x, arg_3.a.x, 813f)))), vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(arg_3.c.b - 415f), _wgslsmith_f_op_f32(floor(-1104f)), -1000f)) + vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-900f)) * arg_0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_3.c.b)))), _wgslsmith_f_op_f32(trunc(1000f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b, -1383f, arg_0.b, arg_3.c.b))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, var_2.a.x, 1803f, arg_3.c.b))))))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_3.c.b + 1260f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1476f))))), true, !any(vec2<bool>(false, false)), global1[_wgslsmith_index_u32(reverseBits(~u_input.e.x), 15u)])));
    global0 = array<Struct_1, 6>();
    let var_1 = Struct_1(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), var_0);
    let var_2 = global1[_wgslsmith_index_u32(~abs(abs(_wgslsmith_dot_vec3_u32(u_input.b.wwz, vec3<u32>(u_input.b.x, 1u, 43464u)))), 15u)];
    global1 = array<Struct_2, 15>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, var_1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(677f - -483f), -1411f), -117f, _wgslsmith_f_op_f32(var_0 * -747f))));
    global0 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2()), 1u, var_3.x, _wgslsmith_div_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(var_2.b.x, u_input.d.x, 23866i, var_2.b.x) & vec4<i32>(u_input.d.x, var_2.b.x, u_input.c.x, u_input.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.b.x, -36201i, -1787i, var_2.b.x), vec4<i32>(34575i, u_input.c.x, u_input.d.x, 1i))), vec4<i32>(var_2.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 1i, var_2.b.x, 2147483647i), vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 2147483647i)), 0i, _wgslsmith_add_i32(u_input.d.x, -13034i)) | countOneBits(~vec4<i32>(-1i, u_input.c.x, var_2.b.x, u_input.d.x))));
}

