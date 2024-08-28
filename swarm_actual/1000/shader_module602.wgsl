struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

var<private> global1: i32;

var<private> global2: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global3: bool = false;

var<private> global4: array<i32, 5> = array<i32, 5>(0i, 2147483647i, -1i, 2147483647i, -51039i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> vec2<bool> {
    var var_0 = vec3<i32>(countOneBits(1i), 1i, i32(-1i) * -13900i);
    let var_1 = ~_wgslsmith_sub_vec4_i32(countOneBits(select(vec4<i32>(39078i, 1i, global4[_wgslsmith_index_u32(10165u, 5u)], global4[_wgslsmith_index_u32(u_input.e.x, 5u)]), vec4<i32>(66953i, global4[_wgslsmith_index_u32(16156u, 5u)], global4[_wgslsmith_index_u32(u_input.a, 5u)], arg_1), false)), vec4<i32>(1i, 0i, -var_0.x, ~arg_1)) | countOneBits(abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, 16904i, arg_1), vec4<i32>(u_input.b.x, 0i, 30723i, 27925i))));
    let var_2 = -var_1;
    global4 = array<i32, 5>();
    var_0 = countOneBits(var_1.yww) << (~(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, 44161u), abs(vec3<u32>(43700u, u_input.c, 0u))) >> (~(vec3<u32>(34473u, 1u, u_input.d.x) << (vec3<u32>(25148u, u_input.e.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    global4 = array<i32, 5>();
    let var_0 = select(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), false), select(!func_3(vec2<f32>(784f, arg_3.x), 6782i), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(arg_0 <= arg_3.x, true, any(vec2<bool>(false, true)))), vec2<bool>(~2147483647i < -u_input.b.x, true)), vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !any(vec2<bool>(true, true))), vec2<bool>(false, false));
    var var_1 = countOneBits(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(11643i, _wgslsmith_div_i32(arg_1.x, arg_1.x), _wgslsmith_mult_i32(u_input.b.x, global4[_wgslsmith_index_u32(arg_2, 5u)]))), -_wgslsmith_clamp_vec3_i32(u_input.b, abs(arg_1), vec3<i32>(-19810i, u_input.b.x, -34411i))));
    let var_2 = Struct_2(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.yy, u_input.b.yx, vec2<i32>(u_input.b.x, global4[_wgslsmith_index_u32(1u, 5u)])), ~u_input.b.zx), i32(-1i) * -2147483647i), _wgslsmith_div_i32(~reverseBits(arg_1.x), firstLeadingBit(-u_input.b.x)), min(~902i, _wgslsmith_add_i32(-1i, ~u_input.b.x)), _wgslsmith_add_i32(arg_1.x, 11745i)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, arg_3.x) + _wgslsmith_f_op_vec2_f32(max(arg_3.yy, vec2<f32>(arg_0, 923f)))), vec2<f32>(-418f, 1712f), !(!var_0.x)))), Struct_1(arg_3.zx), _wgslsmith_sub_i32(-arg_1.x, -67017i), select(select(vec4<bool>(var_0.x, !var_0.x, true, true), !(!vec4<bool>(var_0.x, true, true, false)), select(select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), true), select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, true, true, true)), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), !(!(!vec4<bool>(false, var_0.x, var_0.x, false))), select(false, true, true)));
    let var_3 = global0[_wgslsmith_index_u32(arg_2, 22u)];
    return arg_2;
}

fn func_4(arg_0: u32) -> Struct_1 {
    let var_0 = -u_input.b.zz;
    let var_1 = global0[_wgslsmith_index_u32(arg_0, 22u)];
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(1403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-749f))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_2(abs(abs(arg_2.a)), func_4(_wgslsmith_add_u32(arg_0.x, _wgslsmith_mod_u32(4294967295u << (arg_0.x % 32u), func_2(-312f, u_input.b, 27913u, vec4<f32>(907f, -1522f, arg_2.c.a.x, arg_2.c.a.x))))), func_4(abs(~arg_0.x)), firstTrailingBit(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global4[_wgslsmith_index_u32(11634u, 5u)], u_input.b.x, 0i)), _wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 5u)], global4[_wgslsmith_index_u32(0u, 5u)], -1i)))) ^ (global4[_wgslsmith_index_u32(u_input.d.x, 5u)] << (~arg_0.x % 32u)), !(!(!(!arg_1))));
    var var_1 = func_4(80735u);
    global0 = array<Struct_3, 22>();
    global2 = array<vec3<bool>, 12>();
    let var_2 = var_0.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-536f, var_0.b.a.x))) * _wgslsmith_f_op_f32(f32(-1f) * -2031f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))) * vec3<f32>(-182f, _wgslsmith_f_op_f32(-656f + _wgslsmith_f_op_f32(100f + 1061f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-720f - 1734f), _wgslsmith_f_op_f32(func_1(~vec3<u32>(0u, 0u, 30374u), vec4<bool>(true, true, true, true), Struct_2(vec4<i32>(u_input.b.x, 84665i, -2147483647i, global4[_wgslsmith_index_u32(0u, 5u)]), Struct_1(vec2<f32>(333f, -1235f)), Struct_1(vec2<f32>(-1025f, -1095f)), 0i, vec4<bool>(true, false, false, false)))))));
    global3 = any(!select(vec4<bool>(true, all(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false)));
    var var_1 = select(!global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], true);
    var var_2 = var_0.x;
    global3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(-vec4<i32>(-u_input.b.x, 1i, ~u_input.b.x, i32(-1i) * -1i), -vec4<i32>(select(1i, -28062i, true), i32(-1i) * -20416i, -19778i, u_input.b.x)));
}

