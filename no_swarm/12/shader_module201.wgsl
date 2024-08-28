struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_3,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(global1.c.zzw, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.xxy)))))), global1.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, global1.b, global1.c.x, -911f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, -1136f, 1459f, global1.b), vec4<f32>(-142f, global1.c.x, 179f, 2687f), false)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c - global1.c), vec4<f32>(-970f, global1.b, _wgslsmith_f_op_f32(global1.b - -1000f), -2608f))), ~(~vec4<u32>(~1u, ~global1.d.x, ~0u, ~78123u)), firstLeadingBit(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(global1.e, 1i, u_input.b.x), vec3<i32>(global1.e, 2147483647i, 1i))));
    var var_1 = -(~(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.yz, vec2<i32>(u_input.b.x, -2147483647i)), vec2<i32>(-2147483647i, u_input.b.x)) >> (vec2<u32>(58233u, _wgslsmith_clamp_u32(0u, var_0.d.x, 0u)) % vec2<u32>(32u))));
    let var_2 = select(select(vec4<bool>(true, arg_0, (true & global0[_wgslsmith_index_u32(global1.d.x, 15u)]) && (var_0.a.x > 130f), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(15188u, global1.d.x, global1.d.x), vec3<u32>(var_0.d.x, var_0.d.x, u_input.a.x))), 15u)]), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(19726u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], false, global0[_wgslsmith_index_u32(var_0.d.x, 15u)]))), (all(vec3<bool>(global0[_wgslsmith_index_u32(19384u, 15u)], true, global0[_wgslsmith_index_u32(global1.d.x, 15u)])) | (global0[_wgslsmith_index_u32(81504u, 15u)] && global0[_wgslsmith_index_u32(u_input.a.x, 15u)])) & select(select(false, false, false), global1.a.x < global1.b, !arg_0)), vec4<bool>(true, all(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 15u)], true, false)), any(!vec3<bool>(true, arg_0, true)), any(vec2<bool>(global0[_wgslsmith_index_u32(max(1u, u_input.a.x), 15u)], arg_0))), select(select(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 15u)], true, arg_0, all(vec4<bool>(false, arg_0, arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))), !(!vec4<bool>(global0[_wgslsmith_index_u32(global1.d.x, 15u)], false, true, false)), !global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec4<bool>(any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 15u)], true)), arg_0, !(!arg_0), !(false & global0[_wgslsmith_index_u32(59897u, 15u)])), vec4<bool>(global0[_wgslsmith_index_u32(reverseBits(global1.d.x), 15u)], true, arg_0 || true, all(vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(4294967295u, 15u)])))));
    let var_3 = Struct_3(var_0.b);
    var var_4 = firstTrailingBit(-global1.e);
    return _wgslsmith_clamp_i32(max(_wgslsmith_mod_i32(countOneBits(1i), -2147483647i), ~_wgslsmith_clamp_i32(var_0.e, u_input.b.x, 1i) & -2147483647i), select(_wgslsmith_div_i32(1i, -1i), -2147483647i, false), u_input.b.x);
}

fn func_2() -> Struct_2 {
    var var_0 = -u_input.b.x;
    let var_1 = Struct_2(u_input.b);
    var_0 = func_3(!(true || (global0[_wgslsmith_index_u32(657u >> (global1.d.x % 32u), 15u)] & true)));
    global0 = array<bool, 15>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c.x))) - _wgslsmith_f_op_f32(min(global1.b, -515f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global1.c.x, global1.b)))), -1053f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f)), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(max(global1.c.x, 180f)))) * vec4<f32>(-608f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1299f + -1053f))), _wgslsmith_f_op_f32(round(-2883f)))), ~(~(global1.d ^ vec4<u32>(69082u, u_input.a.x, global1.d.x, u_input.a.x)) ^ global1.d), 9328i);
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> i32 {
    global1 = arg_1;
    let var_0 = u_input.b;
    global0 = array<bool, 15>();
    var var_1 = arg_2;
    var_1 = arg_2;
    return firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(1i, abs(arg_1.e)), 1i), select(_wgslsmith_clamp_vec2_i32(reverseBits(arg_0.a.xz), -var_0.xx, ~var_0.zx), var_0.zy, _wgslsmith_f_op_f32(round(arg_1.b)) >= _wgslsmith_f_op_f32(-arg_1.c.x))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = global1.c.yy;
    var var_1 = _wgslsmith_div_u32(global1.d.x, reverseBits(~_wgslsmith_mult_u32(59034u, firstLeadingBit(u_input.a.x))));
    let var_2 = -1000f;
    var var_3 = -(select(-global1.e, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, 21809i)), global0[_wgslsmith_index_u32(abs(global1.d.x), 15u)]) ^ func_4(func_2(), Struct_1(vec3<f32>(-590f, 1100f, -590f), -842f, global1.c, vec4<u32>(u_input.a.x, 50517u, u_input.a.x, u_input.a.x), global1.e), global0[_wgslsmith_index_u32(u_input.a.x, 15u)])) | -(2147483647i >> (~_wgslsmith_mod_u32(4294967295u, u_input.a.x) % 32u));
    let var_4 = _wgslsmith_div_vec2_u32(~reverseBits(~vec2<u32>(global1.d.x, global1.d.x) << (u_input.a.yx % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(18067u, u_input.a.x), global1.d.yw & global1.d.yy), countOneBits(global1.d.zx)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-542f)))))))), _wgslsmith_f_op_f32(round(369f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1068f;
    var var_1 = select(select(vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 15u)], !(-540f <= global1.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)], all(vec3<bool>(true, true, true))), !select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 15u)], false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(48444u, 15u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(38676u, 15u)], true, global0[_wgslsmith_index_u32(4294967295u, 15u)])), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], true, global0[_wgslsmith_index_u32(1u, 15u)]), !vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(8166u, 15u)])), vec4<bool>(true | any(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(func_1(Struct_3(226f))) <= -111f, false, global0[_wgslsmith_index_u32(global1.d.x, 15u)] | global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 15u)])), select(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 15u)], true, true), vec4<bool>(all(vec2<bool>(false, false)), 1867f >= var_0, global0[_wgslsmith_index_u32(u_input.a.x & global1.d.x, 15u)], global0[_wgslsmith_index_u32(55847u, 15u)]), !any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(39367u, 15u)]))), vec4<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(global1.d.x, 15u)], global0[_wgslsmith_index_u32(12982u, 15u)])), true, true, true), vec4<bool>(all(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(global1.d.x, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(global1.d.x, 15u)], false), vec2<bool>(global0[_wgslsmith_index_u32(6659u, 15u)], false))), global0[_wgslsmith_index_u32(~countOneBits(global1.d.x), 15u)], (448f > global1.b) || all(vec3<bool>(global0[_wgslsmith_index_u32(50075u, 15u)], false, false)), false)), select(_wgslsmith_mod_i32(func_2().a.x, countOneBits(2147483647i)) >= u_input.b.x, true, (1u >> (abs(u_input.a.x) % 32u)) != firstLeadingBit(~1u)));
    let var_2 = !vec2<bool>(!(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(43188u, u_input.a.x), 15u)]), true);
    var var_3 = Struct_3(953f);
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c.xww + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1.a), global1.a)))), var_1.xy, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_sub_i32(u_input.b.x, global1.e), global1.d.zxz);
    var var_5 = var_4.c;
    let var_6 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_4.a - global1.a))) + global1.a) + _wgslsmith_f_op_vec3_f32(-global1.c.xzz)), 1181f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global1.c), global1.c)), _wgslsmith_div_vec4_u32(global1.d, abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.e.x, var_4.e.x), vec2<u32>(1u, 60556u)), u_input.a.x << (u_input.a.x % 32u), var_4.e.x, u_input.a.x))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(946f, _wgslsmith_f_op_f32(214f * _wgslsmith_f_op_f32(f32(-1f) * -1685f)), 372f), vec3<f32>(_wgslsmith_f_op_f32(-var_5.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c.a) - 1340f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-224f + -585f), _wgslsmith_f_op_f32(f32(-1f) * -470f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a.x - var_5.a), _wgslsmith_f_op_f32(-var_5.a)) * _wgslsmith_f_op_f32(func_1(Struct_3(-710f))))), var_4.a, u_input.b.yx, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1173f)))));
}

