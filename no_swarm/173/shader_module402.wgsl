struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_3, -116f, -1538f) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-571f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-792f * arg_2.b.a) + arg_2.b.a)), arg_0.x, 1144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b.a))))));
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(var_0, 1u), 4294967295u, ~26200u, _wgslsmith_mult_u32(55737u, 40504u ^ ~(var_0 | u_input.b.x)));
    global0 = array<i32, 21>();
    let var_3 = arg_2.b;
    return -1857i;
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = select(_wgslsmith_div_i32(~(-_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(16167u, 21u)])), 1i), abs(min(~_wgslsmith_mult_i32(-46110i, global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), reverseBits(-1i))), arg_1);
    var var_1 = _wgslsmith_div_u32(43674u, ~_wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(u_input.b.x, ~u_input.a.x, select(47161u, 4294967295u, true))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(-576f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-495f * 500f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f * 1f)))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_add_vec2_u32(~vec2<u32>(~1u, 0u), u_input.b)), 21u)];
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(~u_input.b.x, 21u)], reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)], -1380i, -47754i), vec4<i32>(-3195i, global0[_wgslsmith_index_u32(27621u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)]))), 1i), vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.b.x, 1u)), 21u)], global0[_wgslsmith_index_u32(~4294967295u, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.a.x), 21u)]) & reverseBits(vec3<i32>(42155i, 2147483647i, 2147483647i))) | _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(0u, 21u)], -72016i, global0[_wgslsmith_index_u32(u_input.b.x, 21u)])), ~(~vec3<i32>(-23072i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -1i))), ~(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(29842u, 21u)]), vec3<i32>(global0[_wgslsmith_index_u32(34322u, 21u)], 11620i, global0[_wgslsmith_index_u32(38326u, 21u)])) & select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 0i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], -36761i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), true)));
    return 1u;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = 12980i;
    var var_1 = u_input.a ^ u_input.a;
    var var_2 = ~vec3<u32>(select(arg_0 << ((arg_0 >> (var_1.x % 32u)) % 32u), _wgslsmith_div_u32(~64904u, u_input.a.x), select(global0[_wgslsmith_index_u32(23753u, 21u)], 0i, arg_2.a) > min(37350i, var_0)), ~5620u, _wgslsmith_add_u32(~46571u, 1328u));
    global0 = array<i32, 21>();
    var var_3 = ~reverseBits(~1i);
    return vec4<bool>(!(!((var_1.x << (u_input.b.x % 32u)) <= ~41557u)), !select(any(select(vec4<bool>(arg_2.a, arg_2.a, false, arg_2.a), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true), true)), !arg_2.a, true), true, !arg_2.a);
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_2(-(_wgslsmith_clamp_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 21u)], arg_0), func_2(arg_1.c, arg_1.a, Struct_2(0i, Struct_1(622f), vec2<u32>(33791u, 22674u), 1i, arg_1.a), arg_1.b.x), ~arg_0) & -(1i & arg_0)), Struct_1(-993f), ~firstLeadingBit(u_input.b), ~_wgslsmith_add_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.b.x, 21u)] & arg_0, -global0[_wgslsmith_index_u32(4294967295u, 21u)]), -global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(137f - arg_1.b.x), arg_1.b.x)) >= -561f);
    let var_1 = select(vec4<bool>(arg_1.a, arg_1.a, _wgslsmith_f_op_f32(-586f - 731f) == _wgslsmith_f_op_f32(-var_0.b.a), arg_1.a), !select(!vec4<bool>(arg_1.a, var_0.e, arg_1.a, arg_1.a), func_4(func_3(false, false), arg_1.c, Struct_3(var_0.e, arg_1.c.zz, arg_1.c)), !var_0.e), arg_1.a);
    let var_2 = vec3<u32>(var_0.c.x, var_0.c.x, u_input.b.x);
    let var_3 = ~vec3<u32>(~var_2.x, u_input.b.x, 0u);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(min(arg_1.b.x, _wgslsmith_f_op_f32(ceil(arg_1.c.x)))));
    return _wgslsmith_f_op_f32(var_0.b.a * var_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 21>();
    var var_0 = Struct_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1951f), _wgslsmith_f_op_f32(f32(-1f) * -1413f))))), vec3<f32>(-2176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(608f + -256f)) * _wgslsmith_f_op_f32(-468f + _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], Struct_3(false, vec2<f32>(1635f, -2110f), vec3<f32>(-368f, 969f, 2172f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1028f)));
    global0 = array<i32, 21>();
    let var_1 = firstLeadingBit((abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 21u)], -1i)) | _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], -18155i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 46504i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], -7286i, -3088i, 4112i))) << (vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 34565u), 73618u, _wgslsmith_add_u32(u_input.b.x, u_input.a.x), ~59558u) % vec4<u32>(32u))) | (select(select(-vec4<i32>(-29348i, -1i, global0[_wgslsmith_index_u32(50260u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), -vec4<i32>(4605i, 1i, 61730i, 2147483647i), var_0.a), firstTrailingBit(abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 1i, global0[_wgslsmith_index_u32(0u, 21u)], -5794i))), vec4<bool>(true, true, true, true)) << (~_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 38642u, u_input.b.x, u_input.b.x), ~vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 1u)) % vec4<u32>(32u)));
    var_0 = Struct_3(true, _wgslsmith_f_op_vec2_f32(-var_0.c.zz), var_0.c);
    var_0 = Struct_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b.x, var_0.c.x)))) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), var_0.c.x))), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~(~u_input.a.x)), 44759u));
}

