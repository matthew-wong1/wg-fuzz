struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: bool;

var<private> global2: vec3<f32> = vec3<f32>(-403f, 2376f, 304f);

var<private> global3: array<f32, 22> = array<f32, 22>(746f, -2539f, 833f, -497f, -1059f, 797f, -783f, -1529f, -632f, -602f, 391f, -528f, -337f, 812f, -1682f, -521f, 837f, -1501f, -1354f, 1000f, 211f, 729f);

var<private> global4: vec3<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(605f, _wgslsmith_div_f32(global2.x, global2.x), 690f)));
    let var_1 = max(~_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.c, 65408u, _wgslsmith_mult_u32(0u, 1u))), vec3<u32>(global4.x, u_input.c, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), global4.zz | global4.zz))));
    var var_2 = Struct_1(vec3<u32>(global4.x, u_input.c, 1u), -_wgslsmith_add_i32(abs(u_input.b), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d, -2147483647i), _wgslsmith_div_i32(0i, u_input.b))));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(global4.x, _wgslsmith_mult_u32(u_input.c, arg_0.a.x)), global4.x, ~(~0u)) >> (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, global4.x, 0u)), max(vec3<u32>(0u, u_input.c, 7350u), u_input.a)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global4.x), vec2<u32>(0u, global4.x)), 1u, abs(arg_0.a.x))) % vec3<u32>(32u)), 0i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(-1390f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1432f * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 22u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 22u)]))))));
    global4 = _wgslsmith_mult_vec3_u32(~(~(arg_0.a | _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.x, global4.x, u_input.c), u_input.a))), countOneBits(abs(~(~u_input.a))));
    var var_2 = select(vec4<bool>(!all(vec2<bool>(global0.x, global0.x)), global0.x, true, true && (_wgslsmith_f_op_f32(var_1.x - -313f) > _wgslsmith_f_op_f32(431f + -506f))), select(select(select(!vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, false, global0.x, global0.x)), vec4<bool>(global0.x, global0.x, true, !global0.x), vec4<bool>(true, global0.x && global0.x, false, global3[_wgslsmith_index_u32(u_input.c, 22u)] >= global3[_wgslsmith_index_u32(11610u, 22u)])), vec4<bool>(any(vec4<bool>(global0.x, global0.x, global0.x, false)), !any(vec2<bool>(false, true)), true, !(global0.x | global0.x)), select(select(!vec4<bool>(global0.x, true, true, global0.x), select(vec4<bool>(true, false, true, global0.x), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, global0.x)), true), select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, true, false)), true), true)), true);
    let var_3 = vec4<u32>(_wgslsmith_add_u32(~(~abs(5979u)), global4.x), _wgslsmith_div_u32(1u, 1u), max(11499u, ~arg_0.a.x), 0u);
    return select(!var_2.yz, var_2.xx, var_2.xw);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> f32 {
    let var_0 = firstTrailingBit(vec3<i32>(52626i, 0i, ~arg_0.b) >> (u_input.a % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 49194i), vec3<i32>(u_input.b, u_input.b, 1i)), -41244i), vec2<i32>(-32482i, 24261i)), 2147483647i | select(~1i, 1i, true), arg_0.b);
    global0 = func_4(Struct_1(vec3<u32>(arg_1.x, u_input.a.x, ~(~15730u)), ~((var_0.x << (86318u % 32u)) << (reverseBits(1u) % 32u))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), global2.xz));
    var var_1 = all(select(select(select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, global0.x)), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, false, true), false), !global0.x), !vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false | global0.x, arg_1.x != arg_0.a.x, true)), select(!select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, true), false), select(!vec3<bool>(global0.x, global0.x, false), !vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x)), select(select(vec3<bool>(false, global0.x, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, false)), vec3<bool>(global0.x, false, true), true)), vec3<bool>(true, true, true)));
    global2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(598f - 643f)), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -680f))), vec3<f32>(_wgslsmith_f_op_f32(551f * 532f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-1547f, 1435f))));
    var var_2 = _wgslsmith_f_op_f32(global2.x * 2184f);
    return _wgslsmith_f_op_f32(-global2.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    global1 = global0.x;
    global1 = (false | global0.x) || true;
    global1 = !(-1712f == _wgslsmith_f_op_f32(func_2(Struct_1(~vec3<u32>(4294967295u, global4.x, 17672u), arg_2.b), vec3<u32>(~0u, ~global4.x, ~arg_2.a.x), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), global4.zx)), 22u)])));
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_2.a), vec3<u32>(min(~0u, u_input.a.x), global4.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2.a.x, arg_1.x), 4294967295u))) >> ((~1u >> (~(_wgslsmith_add_u32(arg_1.x, 0u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, global4.x, arg_2.a.x, global4.x), vec4<u32>(0u, arg_2.a.x, arg_2.a.x, arg_1.x)) % 32u)) % 32u)) % 32u), 22u)];
    let var_1 = ~(~(~arg_2.a.x));
    return ~((arg_1.x >> (_wgslsmith_clamp_u32(arg_1.x, ~u_input.c, ~arg_2.a.x) % 32u)) | ~35116u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    let var_0 = Struct_1(vec3<u32>(global4.x, ~((global4.x | 1u) >> (global4.x % 32u)), reverseBits(35690u ^ func_1(vec4<i32>(-1i, u_input.d, -36317i, 2147483647i), vec2<u32>(15124u, u_input.a.x), Struct_1(u_input.a, -25444i)))), -(i32(-1i) * -2147483647i));
    global4 = reverseBits(~vec3<u32>(47728u, _wgslsmith_mult_u32(56388u << (var_0.a.x % 32u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), var_0.a.x));
    var var_1 = abs(vec4<i32>(i32(-1i) * -var_0.b, -2147483647i, max(_wgslsmith_mult_i32(-34376i, u_input.b), i32(-1i) * -59439i), u_input.d) >> (vec4<u32>(85775u, 49075u, _wgslsmith_div_u32(var_0.a.x, 1u), var_0.a.x) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, global3[_wgslsmith_index_u32(45462u, 22u)], global2.x, global2.x)), vec4<f32>(global2.x, 915f, -1968f, global2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(126f, -528f, 642f, global3[_wgslsmith_index_u32(global4.x, 22u)]) - vec4<f32>(-973f, global2.x, -1137f, global2.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, 618f, global3[_wgslsmith_index_u32(var_0.a.x, 22u)]), vec4<f32>(1077f, 746f, 1102f, global2.x))), any(!vec2<bool>(global0.x, global0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(998f, -729f, global3[_wgslsmith_index_u32(u_input.a.x, 22u)], global2.x))), vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(705u, 22u)], -108f, true)), global3[_wgslsmith_index_u32(~48652u, 22u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(i32(-1i) * -3347i, reverseBits(var_0.b), ~u_input.d, _wgslsmith_sub_i32(var_0.b, 2147483647i)), select(~vec4<i32>(u_input.d, -9037i, -40684i, var_1.x), -vec4<i32>(1i, u_input.b, var_1.x, var_1.x), vec4<bool>(global0.x, false, global0.x, global0.x)), !(!global0.x)) << (vec4<u32>(max(~var_0.a.x, 1u), max(11533u, var_0.a.x << (1u % 32u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 91508u, global4.x), u_input.c), 0u | ~var_0.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2)));
}

