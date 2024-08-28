struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<i32, 5> = array<i32, 5>(64837i, -1i, i32(-2147483648), 25076i, 28273i);

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-1145f, 685f, -851f, 1004f), false, vec4<bool>(true, true, true, true), false, -1i);

var<private> global4: u32 = 55451u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<f32> {
    global4 = ~53177u;
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(884f, global3.a.x, global3.a.x, global1.a.x)))))), false, vec4<bool>(true, false, !any(select(global3.c.xy, vec2<bool>(global3.c.x, true), vec2<bool>(false, false))), true), false, _wgslsmith_mod_i32(1i, global2[_wgslsmith_index_u32(1u, 5u)]));
    var var_0 = all(global1.c.wz);
    let var_1 = Struct_1(global3.a, !(!global3.c.x), global3.c, any(vec3<bool>(true, !all(global1.c.zy), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1.e, global2[_wgslsmith_index_u32(0u, 5u)]), vec3<i32>(global1.e, -13964i, 30732i)) >= -2147483647i)), abs(firstLeadingBit(global1.e)) << (abs(~_wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u)) % 32u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, 298f) - -700f))), all(select(select(global3.c.zz, vec2<bool>(var_1.b, global1.b), true), vec2<bool>(false, true), false)))), _wgslsmith_f_op_f32(select(2001f, global3.a.x, !var_1.c.x)), global3.a.x);
    return var_1.a.zwz;
}

fn func_4(arg_0: vec3<f32>) -> bool {
    var var_0 = 394f;
    global4 = ~firstTrailingBit(41293u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -367f, _wgslsmith_f_op_f32(round(165f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, -1233f))), global1.a.x, _wgslsmith_div_f32(264f, _wgslsmith_f_op_f32(global3.a.x * arg_0.x)), _wgslsmith_f_op_f32(ceil(arg_0.x)))), reverseBits(global1.e) < ~firstTrailingBit(~global2[_wgslsmith_index_u32(21386u, 5u)]), !(!select(!vec4<bool>(global3.d, true, global1.c.x, global3.d), !global3.c, true)), u_input.a < _wgslsmith_div_i32(~global2[_wgslsmith_index_u32(4294967295u, 5u)] ^ -26491i, -global1.e), countOneBits(reverseBits(max(3949i, firstLeadingBit(global3.e)))));
    let var_2 = Struct_1(global1.a, true, var_1.c, !(!any(select(vec3<bool>(true, global3.d, true), var_1.c.wzx, global3.d))), _wgslsmith_clamp_i32(i32(-1i) * -global3.e, _wgslsmith_dot_vec4_i32(~min(vec4<i32>(15345i, global2[_wgslsmith_index_u32(67125u, 5u)], global1.e, global1.e), vec4<i32>(-1i, 1i, 2147483647i, global3.e)), max(abs(vec4<i32>(2147483647i, 6092i, -2147483647i, global3.e)), reverseBits(vec4<i32>(var_1.e, global1.e, var_1.e, global2[_wgslsmith_index_u32(0u, 5u)])))), i32(-1i) * -2147483647i));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3()).xx)));
    return true;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec3<u32> {
    global1 = arg_1;
    global2 = array<i32, 5>();
    var var_0 = vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.x, 40191u), _wgslsmith_mult_u32(arg_0.x, arg_0.x)), ~arg_0.x << (0u % 32u), 4294967295u, 2095u) ^ (~max(~vec4<u32>(54755u, 0u, arg_0.x, arg_0.x), ~vec4<u32>(45212u, 1u, 27110u, 32064u)) << (max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 53827u, arg_0.x, 41402u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) | vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u) & vec4<u32>(16895u, arg_0.x, 4294967295u, 4294967295u)), ~reverseBits(vec4<u32>(arg_0.x, 1u, arg_0.x, 4294967295u))) % vec4<u32>(32u)));
    global2 = array<i32, 5>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(global3.a)), _wgslsmith_f_op_vec4_f32(-arg_1.a), select(vec4<bool>(global1.d, global1.c.x, true, arg_1.d), global3.c, true))))), any(!(!select(vec3<bool>(arg_1.c.x, global1.b, global1.c.x), global1.c.xyx, arg_1.c.xwy))), arg_1.c, global1.b, -2147483647i);
    return max(max(~(vec3<u32>(arg_0.x, arg_0.x, 45651u) ^ var_0.wzw), var_0.xzx), vec3<u32>(4294967295u, firstTrailingBit(1u), 8359u)) & countOneBits(~vec3<u32>(_wgslsmith_mod_u32(arg_0.x, var_0.x), 1u, _wgslsmith_sub_u32(var_0.x, arg_0.x)));
}

fn func_2(arg_0: f32, arg_1: f32) -> bool {
    var var_0 = func_5(vec2<u32>(firstTrailingBit(1u), 1u), Struct_1(global1.a, !func_4(_wgslsmith_f_op_vec3_f32(func_3())), select(global3.c, global3.c, global1.c), _wgslsmith_f_op_f32(-global1.a.x) <= _wgslsmith_f_op_f32(select(-818f, 2525f, true)), _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(61190u, 8601u), 5u)], _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(22600u, 5u)], u_input.a)), select(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(40880i, global3.e), global1.b)), min(_wgslsmith_clamp_i32(-2147483647i, global3.e, global3.e), global2[_wgslsmith_index_u32(1u, 5u)] ^ -1i))), -229f, _wgslsmith_clamp_i32(16903i, global1.e, _wgslsmith_dot_vec2_i32(vec2<i32>(max(-16174i, 1i), -u_input.a), select(vec2<i32>(global1.e, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(global1.e, 16489i)), vec2<bool>(global1.c.x, global1.d)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(step(global1.a.x, global1.a.x)), _wgslsmith_f_op_f32(206f - arg_0)))), any(vec4<bool>(_wgslsmith_f_op_f32(-global1.a.x) <= -995f, global3.c.x, global3.d, var_0.x != _wgslsmith_add_u32(var_0.x, var_0.x))), !global3.c, global1.c.x, 28602i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(654f)))) - _wgslsmith_f_op_f32(min(-234f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, arg_0))))) > global1.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(func_3()).xx;
    let var_4 = _wgslsmith_f_op_vec2_f32(-global3.a.xz);
    return var_1.c.x;
}

fn func_1(arg_0: i32) -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.a), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.a.x, global3.a.x, -1070f)))), true)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), 1239f), global1.a.x), select(!select(!global1.c, global1.c, select(vec4<bool>(false, global3.c.x, false, global3.b), global1.c, false)), !global1.c, global1.c), global3.d, global1.e);
    var var_0 = countOneBits(vec3<i32>(~_wgslsmith_mod_i32(2147483647i, global2[_wgslsmith_index_u32(1u, 5u)] << (712u % 32u)), countOneBits(-global3.e | global1.e), ~1i));
    var var_1 = 1i;
    var var_2 = max(global3.e, _wgslsmith_dot_vec3_i32(reverseBits(select(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], -1i, 2147483647i), vec3<i32>(18306i, global1.e, -20443i), false)), _wgslsmith_mod_vec3_i32(~vec3<i32>(54641i, 1i, -1i), -vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(9258u, 5u)], global1.e)))) << (4294967295u % 32u);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global3.a))), global1.c.x, global1.c, ~global1.e > global3.e, -2147483647i);
    return _wgslsmith_dot_vec2_u32(~(~reverseBits(vec2<u32>(12193u, 42612u))), _wgslsmith_mult_vec2_u32(~reverseBits(select(vec2<u32>(4294967295u, 1747u), vec2<u32>(66274u, 18913u), global1.c.yz)), vec2<u32>(firstTrailingBit(~15216u), ~abs(25424u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 44068i;
    global2 = array<i32, 5>();
    global0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-(~(-vec4<i32>(global1.e, 13478i, 0i, global1.e))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 32633i, global2[_wgslsmith_index_u32(1u, 5u)], global3.e), vec4<i32>(global1.e, 0i, u_input.a, global3.e)) << (vec4<u32>(max(91969u, 1u), func_1(global2[_wgslsmith_index_u32(74924u, 5u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(13882u, 4878u, 64299u), vec3<u32>(0u, 13403u, 4294967295u)), 93847u) % vec4<u32>(32u))), ~(~firstTrailingBit(select(-1i, global2[_wgslsmith_index_u32(1u, 5u)], global3.b))));
    var var_0 = _wgslsmith_sub_i32(-24008i ^ (u_input.a & ~(~(-1i))), ~(-global1.e));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(1u, 1u));
}

