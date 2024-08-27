struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 0i, 0i);

var<private> global1: array<Struct_2, 22>;

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_1 {
    let var_0 = -reverseBits(global0.yx);
    global1 = array<Struct_2, 22>();
    let var_1 = global1[_wgslsmith_index_u32(1u, 22u)];
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.x, 46126u), 22u)];
    let var_3 = 2399i & _wgslsmith_mult_i32(var_2.e.x, min(-7305i, global0.x ^ -25178i));
    return var_1.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_sub_vec3_i32(-(~_wgslsmith_mod_vec3_i32(-vec3<i32>(1i, 7862i, u_input.a), ~vec3<i32>(-13648i, u_input.a, u_input.a))), select(-vec3<i32>(-5203i, select(u_input.a, global0.x, true), -22890i), min(firstLeadingBit(vec3<i32>(-2147483647i, global0.x, u_input.a)), abs(vec3<i32>(global0.x, 1i, global0.x))) >> (vec3<u32>(arg_0.b.x >> (4294967295u % 32u), max(0u, 20724u), 4294967295u) % vec3<u32>(32u)), true));
    var var_0 = false;
    global1 = array<Struct_2, 22>();
    global3 = array<vec4<bool>, 29>();
    let var_1 = !select(select(vec3<bool>(true, arg_0.a, arg_1.a & false), vec3<bool>(!arg_1.a, any(vec4<bool>(arg_0.a, false, arg_1.a, arg_1.a)), arg_1.a || true), arg_1.a), !vec3<bool>(select(false, arg_1.a, arg_1.a), arg_0.a, any(vec4<bool>(true, arg_1.a, true, true))), select(any(vec2<bool>(false, arg_0.a)), false, true) & all(vec4<bool>(true, arg_1.a, false, arg_0.a)));
    return vec3<u32>(0u, u_input.c, _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, u_input.c), arg_1.b.x));
}

fn func_1(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = u_input.b;
    var var_1 = ~var_0.xx;
    global0 = ~(~arg_0.b.e >> (func_3(arg_0.b.a, func_2()) % vec3<u32>(32u)));
    global3 = array<vec4<bool>, 29>();
    var var_2 = arg_0.b.a.d.x;
    return select(var_0.yy, u_input.b.yz | (_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, u_input.c), vec2<u32>(33860u, var_1.x)) | u_input.b.xx), select(select(!select(vec2<bool>(arg_0.b.a.a, false), vec2<bool>(arg_0.b.a.a, arg_0.b.a.a), vec2<bool>(arg_0.b.a.a, false)), select(vec2<bool>(arg_0.b.a.a, arg_0.b.a.a), select(vec2<bool>(arg_0.b.a.a, false), vec2<bool>(arg_0.b.a.a, arg_0.b.a.a), arg_0.b.a.a), true), vec2<bool>(any(vec2<bool>(arg_0.b.a.a, arg_0.b.a.a)), select(false, arg_0.b.a.a, arg_0.b.a.a))), !select(select(vec2<bool>(arg_0.b.a.a, arg_0.b.a.a), vec2<bool>(false, true), true), !vec2<bool>(arg_0.b.a.a, arg_0.b.a.a), vec2<bool>(false, false)), arg_0.b.a.a));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> vec2<u32> {
    var var_0 = any(vec3<bool>(any(vec4<bool>(true, false, true, arg_1.b.a.a | arg_1.b.a.a)), func_2().a, arg_1.b.a.a));
    var var_1 = Struct_1(true, vec2<u32>(~_wgslsmith_add_u32(~4294967295u, countOneBits(global2.x)), _wgslsmith_clamp_u32(u_input.c, ~1u, ~(~25256u))), _wgslsmith_f_op_f32(-arg_1.b.a.d.x), _wgslsmith_f_op_vec2_f32(arg_1.b.b.zx * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.b.a.d - _wgslsmith_f_op_vec2_f32(-vec2<f32>(515f, arg_1.b.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.a.d) - _wgslsmith_f_op_vec2_f32(arg_1.b.b.xz + vec2<f32>(arg_1.b.a.d.x, arg_1.b.d.x))), !vec2<bool>(true, arg_1.b.a.a)))));
    var_0 = all(vec3<bool>(true, all(vec4<bool>(false, var_1.a, true, var_1.a)), arg_1.b.a.a)) || !arg_1.b.a.a;
    var var_2 = arg_1.b.a;
    global0 = firstTrailingBit(arg_1.b.e);
    return var_2.b << (select(~(~_wgslsmith_sub_vec2_u32(var_2.b, vec2<u32>(arg_1.a.x, 54658u))), u_input.b.yx, select(!(!vec2<bool>(true, var_1.a)), select(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_2.a, var_2.a), var_1.a), !vec2<bool>(var_2.a, var_2.a), all(vec4<bool>(arg_1.b.a.a, var_1.a, var_2.a, var_2.a))), vec2<bool>(true, true))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -232f;
    var var_1 = !global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~34039u & u_input.b.x, ~53432u) << (u_input.b.x % 32u), 29u)];
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-522f, -812f, 947f, 511f), vec4<f32>(var_0, 1050f, var_0, var_0), global3[_wgslsmith_index_u32(65232u, 29u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-340f, -156f, 845f, var_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -896f) - vec4<f32>(1188f, var_0, var_0, -145f))))));
    global0 = -vec3<i32>(2147483647i, ~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, 0i, -1i, u_input.a)), vec4<i32>(-8430i, -27245i, global0.x, global0.x)), 1750i << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(73738u, u_input.c, u_input.b.x, global2.x)), select(vec4<u32>(u_input.b.x, global2.x, u_input.b.x, u_input.c), vec4<u32>(51411u, 1u, 0u, 3023u), var_1.x)) % 32u));
    var var_4 = vec2<i32>(i32(-1i) * -14908i, -_wgslsmith_sub_i32(u_input.a, reverseBits(u_input.a)));
    global2 = ~(func_4(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 802i, global0.x), -vec3<i32>(var_4.x, var_4.x, -1i)), Struct_3(func_1(Struct_3(u_input.b.zz, global1[_wgslsmith_index_u32(0u, 22u)])), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.c), 22u)])) << (u_input.b.yy % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-52315i), ~((u_input.b.zy << (u_input.b.yx % vec2<u32>(32u))) ^ ~vec2<u32>(u_input.c, 1731u)) | _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, 24877u), func_2().b), reverseBits(~vec2<u32>(66414u, u_input.c))), var_0, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1155f, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.wx - vec2<f32>(-295f, 144f)))))), _wgslsmith_f_op_vec2_f32(-var_3.wz));
}

