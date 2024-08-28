struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<i32, 32> = array<i32, 32>(47518i, 0i, i32(-2147483648), -1i, 1i, 2147483647i, -13213i, -45160i, -60566i, -1i, -1i, 20110i, 27855i, 17493i, 1i, -1i, 0i, -39052i, -30083i, 2147483647i, -51173i, -2263i, -22702i, -1i, 9916i, 40365i, 0i, 1i, -39247i, -10493i, 11667i, 83078i);

var<private> global2: f32 = 538f;

var<private> global3: Struct_1 = Struct_1(7370i, -522f, vec4<i32>(1i, 2147483647i, i32(-2147483648), -11131i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-577f, 2009f, -153f, 787f) + vec4<f32>(global3.b, global3.b, -212f, global3.b))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1511f, global3.b))), -260f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global3.b, global3.b, false)))), global3.b))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(max(1373f, -332f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global3.b)))))), 1442f, _wgslsmith_f_op_f32(f32(-1f) * -328f)));
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(635f - -713f), _wgslsmith_div_f32(global3.b, var_0.x)))))));
    var var_1 = vec4<bool>(all(vec3<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true)), true, any(vec3<bool>(all(vec2<bool>(true, true)), true, all(vec4<bool>(true, false, true, true)))) & false, true);
    let var_2 = u_input.e.xyy;
    var_1 = !(!(!vec4<bool>(var_1.x & var_1.x, true, any(vec3<bool>(var_1.x, var_1.x, false)), var_1.x)));
    return 4096u;
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(arg_0.x, 1u, func_3(), countOneBits(38257u))), vec4<u32>(~(~(~4294967295u)), abs(~_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(arg_0.x, 0u))), arg_0.x ^ 0u, firstTrailingBit(abs(arg_0.x)))), 6u)];
    var var_1 = ~(~_wgslsmith_sub_vec2_i32(vec2<i32>(~global1[_wgslsmith_index_u32(arg_0.x, 32u)], 2147483647i), countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.c.x, 1i), global3.c.ww))));
    let var_2 = Struct_3(-1i, Struct_1(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1127f)))), max(-vec4<i32>(var_1.x, global1[_wgslsmith_index_u32(0u, 32u)], -1i, -26911i), vec4<i32>(var_1.x >> (arg_0.x % 32u), ~var_0.c.x, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(arg_0.x, 32u)], -9869i), ~global1[_wgslsmith_index_u32(18455u, 32u)]))), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(max(global3.b, _wgslsmith_f_op_f32(abs(232f)))), _wgslsmith_f_op_f32(f32(-1f) * -504f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.b, global3.b, 653f))))))));
    let var_3 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, ~2147483647i, _wgslsmith_mod_i32(firstLeadingBit(10304i), -2147483647i)), var_2.b.c.zxw);
    var_1 = ~_wgslsmith_sub_vec2_i32(vec2<i32>((var_0.c.x & var_2.b.a) << (_wgslsmith_mod_u32(arg_0.x, arg_0.x) % 32u), max(1i, ~global1[_wgslsmith_index_u32(0u, 32u)])), -_wgslsmith_clamp_vec2_i32(~var_2.b.c.zy, var_0.c.xz, firstLeadingBit(var_2.b.c.xz)));
    return _wgslsmith_mod_vec3_i32(var_2.b.c.xww, ~(~vec3<i32>(reverseBits(-51178i), -16024i, ~0i)));
}

fn func_1() -> Struct_2 {
    global2 = -247f;
    global0 = array<Struct_1, 6>();
    var var_0 = 1u;
    var_0 = 4294967295u;
    return Struct_2(global3.a, func_2(~vec2<u32>(616u, ~88729u)), u_input.e.zzw, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -567f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.b))) - 764f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, 1889f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, global3.b) + vec2<f32>(-234f, global3.b)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, -596f))))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = Struct_2(global3.a | -arg_0, select(arg_1.c, _wgslsmith_div_vec3_i32(~(-vec3<i32>(27945i, global3.a, 44921i)), ~vec3<i32>(18964i, -1327i, 2147483647i)), select(vec3<bool>(true, false, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, false))), !(-7065i <= arg_0))), u_input.e.ywy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.d - vec2<f32>(426f, -348f)) * _wgslsmith_f_op_vec2_f32(ceil(arg_1.d))))), _wgslsmith_div_vec2_f32(arg_1.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.d))))));
    var_0 = arg_1;
    var var_1 = ~vec2<u32>(_wgslsmith_mod_u32(66351u, ~abs(1u)), select(abs(24411u), ~abs(8872u), true == all(vec2<bool>(false, false))));
    let var_2 = true;
    var var_3 = var_2;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(523f + _wgslsmith_div_f32(global3.b, global3.b)))), _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b), global3.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.b, 1f)));
    let var_1 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.c.x, select(global1[_wgslsmith_index_u32(~1u, 32u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 32u)], false), -6175i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 32u)], global3.a), vec2<i32>(global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]) ^ u_input.e.xz)), global3.c), global0[_wgslsmith_index_u32(2180u, 6u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(1i, func_1()))));
    var var_2 = abs(~_wgslsmith_mult_vec4_i32(var_1.b.c, select(_wgslsmith_mod_vec4_i32(global3.c, var_1.b.c), vec4<i32>(-408i, -1i, global3.a, 5056i), vec4<bool>(false, var_0, false, var_0))));
    let var_3 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(~1u, firstLeadingBit(42541u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(26413u, 0u, 39933u), vec3<u32>(39866u, 1u, 58429u)), vec3<u32>(1u, 1u, 1u)))), ~(~(vec3<u32>(1u, 1u, 1u) & firstTrailingBit(vec3<u32>(4294967295u, 0u, 17699u)))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~0u, 1u, 1u), vec3<u32>(40774u, _wgslsmith_div_u32(0u, 8385u), _wgslsmith_dot_vec2_u32(vec2<u32>(35475u, 89945u), vec2<u32>(58774u, 86118u)))), ~abs(vec3<u32>(1u, 1u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(84357u, reverseBits(_wgslsmith_sub_vec3_i32(u_input.e.yzx & -var_2.zzz, var_2.wzz)));
}

