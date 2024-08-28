struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    global0 = array<Struct_1, 25>();
    let var_0 = ~max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 0i, _wgslsmith_div_i32(u_input.a, u_input.a), u_input.a), vec4<i32>(u_input.a, abs(0i), -46214i, _wgslsmith_mult_i32(1i, u_input.a))), _wgslsmith_mod_vec4_i32(vec4<i32>(36043i, u_input.a, u_input.a, u_input.a), countOneBits(vec4<i32>(u_input.a, 1952i, -2147483647i, u_input.a))) & ((vec4<i32>(u_input.a, u_input.a, 53357i, u_input.a) | vec4<i32>(u_input.a, u_input.a, 0i, -34395i)) << (vec4<u32>(4294967295u, 1u, 63670u, 122532u) % vec4<u32>(32u))));
    let var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(true | any(vec2<bool>(false, true)), true, true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    var var_2 = firstTrailingBit(~u_input.b.x);
    var_2 = ~(u_input.b.x | ~_wgslsmith_mod_u32(abs(1u), u_input.b.x ^ u_input.b.x));
    return -var_0.x;
}

fn func_2() -> vec4<bool> {
    global0 = array<Struct_1, 25>();
    var var_0 = func_3();
    global0 = array<Struct_1, 25>();
    var var_1 = _wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.b.x, u_input.b.x, ~reverseBits(u_input.b.x), _wgslsmith_sub_u32(~0u, _wgslsmith_add_u32(49304u, u_input.b.x))), abs(firstTrailingBit(~vec4<u32>(u_input.b.x, 1229u, u_input.b.x, 24536u)))), _wgslsmith_sub_vec4_u32(vec4<u32>(~(u_input.b.x | u_input.b.x), ~(~66155u), ~(u_input.b.x | 0u), 4294967295u), vec4<u32>(u_input.b.x, ~1u, 53153u, 19931u)));
    let var_2 = !(!(!(any(vec4<bool>(false, true, false, true)) || true)));
    return !select(select(vec4<bool>(true, select(var_2, true, var_2), var_2 || var_2, true), vec4<bool>(var_2, false, true, any(vec4<bool>(var_2, false, var_2, var_2))), select(vec4<bool>(var_2, var_2, var_2, false), vec4<bool>(var_2, true, false, var_2), select(vec4<bool>(true, true, var_2, var_2), vec4<bool>(false, var_2, true, true), false))), !select(!vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(true, true, true, true), true), !(!select(vec4<bool>(var_2, true, false, var_2), vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(true, var_2, var_2, true))));
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_1, 25>();
    var var_0 = vec4<bool>(abs(-27222i) >= u_input.a, all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), any(select(vec4<bool>(true, false, true, true), func_2(), func_2())), false);
    var var_1 = Struct_1(vec3<u32>(countOneBits(~4294967295u), reverseBits(_wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(4294967295u, 42411u, 1u))), abs(~20731u)), _wgslsmith_dot_vec2_u32(u_input.b.xx, max(_wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(0u, 44503u)) | abs(vec2<u32>(u_input.b.x, 67747u)), _wgslsmith_sub_vec2_u32(vec2<u32>(3414u, 0u), vec2<u32>(u_input.b.x, u_input.b.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1058f, 222f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(858f, -1174f))))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-450f, -2318f), vec2<f32>(-1078f, 1000f), true))))))));
    var_0 = select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, !(u_input.b.x < 1u), all(!func_2().yx), !any(!var_0.wwz)), !any(!select(var_0.zw, var_0.wz, vec2<bool>(true, var_0.x))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-939f, 1445f, -702f, -127f), vec4<f32>(1754f, var_2.x, -1287f, -163f)))))))), u_input.b, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(100379i, -u_input.a), u_input.a), -u_input.a), -_wgslsmith_clamp_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, 30729i, 0i, 8192i)), ~(~vec4<i32>(u_input.a, -1i, 0i, u_input.a)), vec4<i32>(28100i, _wgslsmith_mult_i32(u_input.a, 7748i), -23599i, -u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(76094u, 25u)];
    let var_1 = _wgslsmith_mult_vec3_i32(firstTrailingBit(max(~vec3<i32>(u_input.a, u_input.a, 1i) >> (_wgslsmith_add_vec3_u32(var_0.a, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), vec3<i32>(min(-2147483647i, 0i), u_input.a, u_input.a & u_input.a))), vec3<i32>(-1i) * -((vec3<i32>(u_input.a, u_input.a, 46898i) | vec3<i32>(u_input.a, u_input.a, 54133i)) & vec3<i32>(u_input.a, 0i, u_input.a)));
    let var_2 = global0[_wgslsmith_index_u32(select(4294967295u, u_input.b.x, !any(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), false)))), 25u)];
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = func_1();
}

