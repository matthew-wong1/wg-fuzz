struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<bool>, 14>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    global1 = array<vec2<bool>, 14>();
    global1 = array<vec2<bool>, 14>();
    return ~(countOneBits(global0.x) & u_input.c);
}

fn func_3() -> f32 {
    global1 = array<vec2<bool>, 14>();
    var var_0 = !all(global1[_wgslsmith_index_u32(~u_input.e.x, 14u)]);
    var_0 = ~_wgslsmith_mod_u32(countOneBits(381u), firstTrailingBit(u_input.e.x)) > _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(18432u, 21641u)), _wgslsmith_add_vec2_u32(u_input.b.yx, u_input.b.wx), vec2<u32>(0u, 1u) >> (u_input.e.yz % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(~u_input.e.yz, ~abs(u_input.e.xx), u_input.b.zx));
    let var_1 = Struct_1(u_input.d.zx);
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(34415i, global0.x) & vec2<i32>(2147483647i, -2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a.x, 1596i), ~vec2<i32>(var_1.a.x, 100632i))), ~var_1.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-274f + -1687f), -982f, true))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = arg_2;
    var var_1 = arg_2;
    let var_2 = u_input.e.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1602f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), 245f))));
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-547f, -250f, var_3) + vec3<f32>(1038f, 442f, var_3))))))));
    return vec2<u32>(firstLeadingBit(~60451u), ~1u);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: bool) -> vec4<i32> {
    global0 = _wgslsmith_mod_vec4_i32(-vec4<i32>(select(2147483647i, _wgslsmith_add_i32(6996i, global0.x), true), ~u_input.a, -2147483647i, _wgslsmith_dot_vec2_i32(~global0.zy, arg_0.xx & vec2<i32>(-2147483647i, arg_0.x))), -_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.x, 1i, global0.x, u_input.c), firstLeadingBit(vec4<i32>(arg_0.x, -13919i, -2147483647i, -18983i))), vec4<i32>(10301i, -48412i, _wgslsmith_mult_i32(arg_0.x, 2147483647i), global0.x & u_input.c)));
    var var_0 = arg_1.x;
    let var_1 = Struct_1(~(arg_0.yy ^ _wgslsmith_sub_vec2_i32(min(vec2<i32>(global0.x, u_input.c), vec2<i32>(1i, 23941i)), u_input.d.yx)));
    global1 = array<vec2<bool>, 14>();
    let var_2 = vec4<i32>(min(max(max(-2147483647i, global0.x), 2147483647i), u_input.a) | _wgslsmith_sub_i32(global0.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, -776i, arg_0.x, global0.x)), vec4<i32>(42375i, global0.x, 2147483647i, 1i) ^ vec4<i32>(0i, global0.x, var_1.a.x, -3511i))), -(arg_0.x >> (arg_2.x % 32u)), u_input.a, -2147483647i);
    return abs(firstTrailingBit(~vec4<i32>(abs(var_1.a.x), 42063i, u_input.c, 2147483647i & global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~3834u;
    global1 = array<vec2<bool>, 14>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(200f + -727f) + _wgslsmith_f_op_f32(max(302f, -562f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, 305f), _wgslsmith_div_f32(1079f, 1248f)))))));
    global0 = max(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(~0i, func_1(u_input.e, false, var_1.xz)), 3173i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -2147483647i, global0.x), u_input.d) >> ((var_0 & u_input.e.x) % 32u)), ~vec4<i32>(~(-38895i), _wgslsmith_dot_vec3_i32(vec3<i32>(-25075i, -24185i, global0.x), vec3<i32>(u_input.c, 1i, u_input.c)), _wgslsmith_mult_i32(-1i, global0.x), _wgslsmith_dot_vec2_i32(u_input.d.xy, global0.xw))), func_4(global0.ywx, vec2<bool>(true, any(vec4<bool>(true, true, true, true))), abs(select(func_2(Struct_1(u_input.d.yy), vec4<bool>(true, true, true, true), Struct_1(vec2<i32>(-22312i, global0.x))), min(vec2<u32>(var_0, 1u), u_input.e.yz), any(global1[_wgslsmith_index_u32(1u, 14u)]))), true));
    global0 = vec4<i32>(-_wgslsmith_mult_i32(-global0.x & abs(1i), u_input.a), -u_input.d.x, 1i, global0.x);
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, _wgslsmith_div_i32(~11678i, func_4(u_input.d, global1[_wgslsmith_index_u32(55622u, 14u)], u_input.e.yz, false).x)), select(vec2<i32>(global0.x, 2147483647i), ~global0.wz ^ abs(u_input.d.zz), select(global1[_wgslsmith_index_u32(u_input.b.x, 14u)], vec2<bool>(true, true), select(global1[_wgslsmith_index_u32(12019u, 14u)], global1[_wgslsmith_index_u32(u_input.e.x, 14u)], false))), _wgslsmith_mod_vec2_i32(u_input.d.zx, u_input.d.xy) | firstLeadingBit(u_input.d.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -899i);
}

