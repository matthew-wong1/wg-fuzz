struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 21>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_4(_wgslsmith_sub_i32(-max(-arg_0.x, 56i), _wgslsmith_dot_vec4_i32(vec4<i32>(~35479i, 11908i, reverseBits(5708i), -29402i), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, u_input.a.x, 1i, -2147483647i), vec4<i32>(1i, u_input.b.x, u_input.a.x, u_input.a.x)), select(vec4<i32>(u_input.a.x, -1i, 41582i, 0i), vec4<i32>(-6453i, -1i, arg_0.x, 1i), false), vec4<i32>(1i, -2147483647i, u_input.b.x, -11078i)))));
    var var_1 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(firstLeadingBit(~(~4294967295u))), 21u)]);
    var var_2 = vec2<u32>(arg_2, ~firstTrailingBit(51314u & (992u << (arg_2 % 32u))));
    var_2 = vec2<u32>(1u, 32333u);
    var_2 = vec2<u32>(_wgslsmith_mod_u32(28248u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_3.a.e, 19737u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_2, 4294967295u), vec3<u32>(45206u, 4294967295u, var_2.x), vec3<u32>(arg_3.a.e, 28164u, 52153u))), ~40449u), var_2.x & (arg_3.a.e | 36122u));
    return u_input.a.x;
}

fn func_2() -> u32 {
    let var_0 = vec4<i32>(~reverseBits(-(u_input.b.x ^ u_input.a.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.a.zx, vec2<i32>(-2147483647i, 2147483647i)), u_input.a.yy), -u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-func_3(u_input.a, vec2<f32>(global1[_wgslsmith_index_u32(8859u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), 6354u, Struct_3(Struct_2(global1[_wgslsmith_index_u32(49225u, 21u)], vec4<f32>(global1[_wgslsmith_index_u32(133359u, 21u)], -255f, global1[_wgslsmith_index_u32(2572u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), 730f, vec3<f32>(-1000f, -721f, 1173f), 23252u), true)), -19261i, -1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2944i, u_input.a.x, u_input.b.x), vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x))), ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, u_input.a.x, 1i, u_input.a.x), vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), ~vec4<i32>(50609i, 16598i, u_input.a.x, u_input.b.x))), i32(-1i) * -26650i);
    var var_1 = vec4<bool>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u))) <= _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5721u, 0u, 1u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), ~firstLeadingBit(6382u)), global0.x, global0.x, global0.x);
    let var_2 = Struct_2(-1767f, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(1u, 21u)])), 985f, var_1.x || false)), global1[_wgslsmith_index_u32(abs(50728u), 21u)], 704f, global1[_wgslsmith_index_u32(abs(firstTrailingBit(4294967295u) >> (~60886u % 32u)), 21u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(6480u, 21u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 44744u), vec2<u32>(42432u, 4294967295u), vec2<u32>(30771u, 0u)), ~vec2<u32>(71412u, 4294967295u)), 21u)], global1[_wgslsmith_index_u32(max(1u, 1u), 21u)], -588f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1440f, 1233f, global1[_wgslsmith_index_u32(1u, 21u)])))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-294f, 1627f, 1026f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1861f, -540f, global1[_wgslsmith_index_u32(53018u, 21u)]) + vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], -549f, global1[_wgslsmith_index_u32(53243u, 21u)])))))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(51300u, 4294967295u), reverseBits(vec2<u32>(32923u, 77120u))), ~vec2<u32>(63584u, 1u)));
    var_1 = !(!select(!vec4<bool>(false, global0.x, true, var_1.x), !(!vec4<bool>(true, true, global0.x, var_1.x)), select(vec4<bool>(var_1.x, true, global0.x, true), vec4<bool>(true, global0.x, var_1.x, false), select(vec4<bool>(true, true, false, global0.x), vec4<bool>(false, var_1.x, true, global0.x), true))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1448f);
    return var_2.e;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = func_2() << (_wgslsmith_add_u32(arg_0.c.x, arg_0.c.x) % 32u);
    let var_1 = select(select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, arg_0.a, false), arg_1.a), vec3<bool>(true, true, global0.x), !vec3<bool>(global0.x, false, arg_0.a)), select(vec3<bool>(false, true, true), select(vec3<bool>(false, arg_0.a, false), vec3<bool>(false, true, arg_0.a), true), vec3<bool>(false, false, global0.x)), true && global0.x), vec3<bool>(arg_0.a, false, 12605i == -arg_0.d.x), !(!select(vec3<bool>(global0.x, true, true), vec3<bool>(arg_0.a, true, false), vec3<bool>(false, arg_0.a, arg_1.a)))), select(!vec3<bool>(arg_1.a, true | global0.x, any(vec4<bool>(arg_1.a, true, true, arg_0.a))), vec3<bool>(arg_1.a, true, true), select(!select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(false, false, true), vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(all(vec3<bool>(true, false, arg_0.a)), true, arg_0.a), arg_1.a)), all(!select(vec2<bool>(false, arg_0.a), select(vec2<bool>(true, false), global0.yz, arg_1.a), arg_0.a)));
    let var_2 = !select(!(firstTrailingBit(4294967295u) >= _wgslsmith_div_u32(108315u, arg_1.c.x)), false, false);
    var var_3 = true;
    var var_4 = arg_1.b.x;
    return !(!vec3<bool>(true, true, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!select(select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), true), select(func_1(Struct_1(global0.x, vec4<f32>(660f, 322f, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(44541u, 21u)]), vec3<u32>(10692u, 4294967295u, 4294967295u), vec2<i32>(u_input.a.x, 0i)), Struct_1(false, vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], 786f, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<u32>(1u, 70947u, 4294967295u), vec2<i32>(u_input.b.x, u_input.b.x)), vec2<f32>(global1[_wgslsmith_index_u32(21288u, 21u)], 725f)), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x), false), select(true, false, global0.x)));
    global1 = array<f32, 21>();
    global0 = !func_1(Struct_1(select(true, global0.x, global0.x) & !global0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(949f, 1870f, global1[_wgslsmith_index_u32(77078u, 21u)], global1[_wgslsmith_index_u32(7594u, 21u)])) + vec4<f32>(633f, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)])), ~vec3<u32>(4294967295u, 4294967295u, 0u), u_input.a.xz), Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(41015u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], -759f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1153f, global1[_wgslsmith_index_u32(18311u, 21u)], global1[_wgslsmith_index_u32(20064u, 21u)], global1[_wgslsmith_index_u32(68350u, 21u)]))), abs(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 46725u, 4294967295u), vec3<u32>(82105u, 444u, 4294967295u))), u_input.a.yz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(0u, 21u)], 590f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(3878u, 21u)], -1215f), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(70019u, 21u)]))))));
    global0 = vec3<bool>(!all(!select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, global0.x, false, false))), (_wgslsmith_sub_u32(~1u, ~1u) >> (0u % 32u)) <= _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 0u, 56245u, 0u), ~vec4<u32>(4294967295u, 32700u, 4294967295u, 9720u)), vec4<u32>(1u, 0u, ~9280u, 1u)), global0.x);
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-533f * _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(37553u, 7930u), vec2<u32>(1u, 0u)), 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(815f)))))));
    let var_2 = (u_input.b.x << (_wgslsmith_div_u32(func_2(), 4294967295u) % 32u)) ^ 11690i;
    var var_3 = vec3<i32>(0i | max(u_input.a.x, max(u_input.b.x, -var_2)), func_3(vec3<i32>(u_input.a.x, -25335i, var_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-451f, global1[_wgslsmith_index_u32(39284u, 21u)]) + vec2<f32>(-102f, global1[_wgslsmith_index_u32(10080u, 21u)]))))), _wgslsmith_mod_u32(_wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(17178u, 0u, 4294967295u), vec3<u32>(9139u, 39856u, 72559u))), firstTrailingBit(~103107u)), Struct_3(Struct_2(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(26725u, 21u)])), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(279f, global1[_wgslsmith_index_u32(33136u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], -1089f))), _wgslsmith_f_op_f32(max(-787f, -283f)), vec3<f32>(1608f, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), min(4294967295u, 17633u)), global0.x)), countOneBits(~(-abs(0i))));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, abs(_wgslsmith_mult_vec3_i32(max(u_input.a, u_input.a), vec3<i32>(u_input.a.x, var_2, 15843i)))));
}

