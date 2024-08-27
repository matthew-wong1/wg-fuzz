struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<f32, 6>;

var<private> global2: array<u32, 22> = array<u32, 22>(4294967295u, 40240u, 1u, 0u, 4294967295u, 1u, 0u, 1u, 1u, 4294967295u, 1u, 26080u, 1u, 40903u, 4294967295u, 61780u, 105602u, 1u, 26280u, 1u, 0u, 22885u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<i32>) -> bool {
    global2 = array<u32, 22>();
    let var_0 = min(u_input.c.yyy, -u_input.c.xxx);
    global1 = array<f32, 6>();
    return !(!(_wgslsmith_add_i32(min(u_input.c.x, -2147483647i), -1i) > max(u_input.b, ~(-2147483647i))));
}

fn func_3() -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(1000f, -548f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(-945f, global1[_wgslsmith_index_u32(0u, 6u)], true))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 22u)], 6u)] * global0.x) - global0.x), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-317f, -411f)))), -vec4<i32>(~u_input.c.x, 0i, -abs(2147483647i), ~(~u_input.c.x)), all(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), false, firstTrailingBit(-2147483647i) < abs(2147483647i))), global2[_wgslsmith_index_u32(u_input.a, 22u)]);
    global1 = array<f32, 6>();
    var var_1 = var_0.a;
    let var_2 = Struct_4(var_0);
    let var_3 = Struct_1(~_wgslsmith_mod_vec2_i32(abs(u_input.c.wx) ^ vec2<i32>(var_2.a.b.x, -1i), vec2<i32>(reverseBits(0i), 24209i)), countOneBits(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.d, var_0.d), ~vec2<u32>(var_0.d, 45253u)) << (_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(1u, 22u)], var_2.a.d), vec2<u32>(var_2.a.d, var_0.d)), ~vec2<u32>(var_0.d, u_input.a)) % vec2<u32>(32u))));
    return all(!(!(!select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(false, false, false), true))));
}

fn func_4(arg_0: bool) -> vec3<f32> {
    global1 = array<f32, 6>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-1i, 60854i), u_input.b), u_input.c.yz), min(~countOneBits(vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 22u)])), vec2<u32>(1u, 1u))), vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f + global0.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2935f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -141f))) >= _wgslsmith_f_op_f32(select(584f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 22u)], 6u)])), true | arg_0)), !arg_0), Struct_1(-u_input.c.wx, abs(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)), ~vec2<u32>(u_input.a, 0u)))));
    global2 = array<u32, 22>();
    global1 = array<f32, 6>();
    global2 = array<u32, 22>();
    return vec3<f32>(1521f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.a, 6u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-826f)))))), -844f);
}

fn func_2() -> vec2<i32> {
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    global0 = _wgslsmith_f_op_vec3_f32(func_4(!(!func_3())));
    let var_0 = Struct_4(Struct_3(vec3<f32>(global1[_wgslsmith_index_u32(firstTrailingBit(min(global2[_wgslsmith_index_u32(44209u, 22u)], 27037u)), 6u)], global1[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 6u)] - global0.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 6u)] - 431f), func_1(u_input.c)))), vec4<i32>(~u_input.c.x, (-1i << (0u % 32u)) << (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(2147483647i, 76834i)) >> (global2[_wgslsmith_index_u32(max(0u, u_input.a), 22u)] % 32u), u_input.b), true, firstTrailingBit(1u)));
    global1 = array<f32, 6>();
    return firstTrailingBit(~(~var_0.a.b.xx));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4) -> bool {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(~_wgslsmith_add_i32(-849i >> (arg_1.a.d % 32u), ~arg_1.a.b.x), abs(arg_0.x) >> (0u % 32u)), -41555i);
    global1 = array<f32, 6>();
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(any(select(vec3<bool>(arg_1.a.c, arg_1.a.c, arg_1.a.c), vec3<bool>(false, true, arg_1.a.c), vec3<bool>(arg_1.a.c, arg_1.a.c, false))))).x), -1184f, 285f);
    global1 = array<f32, 6>();
    var_0 = -_wgslsmith_add_i32(-_wgslsmith_clamp_i32(~u_input.b, 2147483647i << (arg_1.a.d % 32u), ~(-38689i)), arg_1.a.b.x);
    return false;
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec2<i32>(-1i) * -(vec2<i32>(-27742i, arg_3) | vec2<i32>(u_input.b, arg_3)), ~(vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 22u)], 1u) & select(vec2<u32>(arg_0, arg_0), vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 22u)]), vec2<bool>(true, arg_2)))), vec4<bool>(all(select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), arg_2), !vec2<bool>(arg_2, arg_2), any(vec3<bool>(arg_2, true, arg_2)))), all(vec3<bool>(func_5(vec2<i32>(-24508i, arg_3), Struct_4(Struct_3(vec3<f32>(1000f, 896f, -1654f), vec4<i32>(u_input.b, 2147483647i, -34620i, u_input.c.x), true, global2[_wgslsmith_index_u32(u_input.a, 22u)]))), true, true)), !select(true, any(vec4<bool>(true, true, arg_2, arg_2)), arg_2), arg_2), Struct_1(u_input.c.zx, vec2<u32>(global2[_wgslsmith_index_u32(min(0u, arg_0), 22u)], reverseBits(~4294967295u))));
    var_0 = Struct_2(var_0.a, !vec4<bool>((global0.x >= global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 22u)], 6u)]) | func_5(var_0.c.a, Struct_4(Struct_3(vec3<f32>(global0.x, -1895f, 2726f), u_input.c, false, var_0.a.b.x))), any(select(var_0.b.zwz, var_0.b.zyz, true)), !(arg_2 | var_0.b.x), true), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-21183i & var_0.c.a.x, 1i), firstLeadingBit(u_input.c.zz) << (abs(vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))), var_0.a.b));
    var var_1 = ~abs(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(4294967295u, arg_0, 8653u))));
    let var_2 = u_input.c.wy;
    var var_3 = firstTrailingBit(~(~vec3<u32>(~var_0.a.b.x, 12640u, var_0.c.b.x)));
    return Struct_1(-countOneBits(~vec2<i32>(-2147483647i, var_0.c.a.x)) | vec2<i32>(u_input.b, _wgslsmith_mult_i32(var_0.a.a.x, _wgslsmith_sub_i32(2147483647i, arg_3))), (~var_1.yx ^ var_0.c.b) ^ ~(~var_3.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(19188i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c), reverseBits(u_input.c.x)) | -(~(~u_input.c.x)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b, -20577i), u_input.b));
    let var_1 = var_0.x;
    var var_2 = u_input.c.ww;
    var_0 = u_input.c.zwz;
    var var_3 = select(vec3<bool>(~6907i != -_wgslsmith_clamp_i32(var_0.x, var_0.x, var_2.x), all(vec4<bool>(true, true, true, true)) || false, !all(vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, func_1(vec4<i32>(-65561i, -39020i, u_input.b, u_input.b))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), false);
    var var_4 = Struct_2(func_6(0u, func_5(~func_2(), Struct_4(Struct_3(vec3<f32>(global0.x, global0.x, 737f), vec4<i32>(var_0.x, -25022i, var_2.x, 31670i), var_3.x, 4294967295u))), any(!(!vec3<bool>(var_3.x, var_3.x, var_3.x))), 0i), !select(vec4<bool>(false != var_3.x, !var_3.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 22u)], 22u)] == 0u, !var_3.x), select(vec4<bool>(var_3.x, var_3.x, true, true), select(vec4<bool>(var_3.x, false, var_3.x, false), vec4<bool>(var_3.x, var_3.x, var_3.x, false), vec4<bool>(true, var_3.x, var_3.x, var_3.x)), func_5(vec2<i32>(var_0.x, u_input.b), Struct_4(Struct_3(vec3<f32>(global0.x, global1[_wgslsmith_index_u32(u_input.a, 6u)], -333f), vec4<i32>(u_input.c.x, -1i, u_input.b, u_input.c.x), true, global2[_wgslsmith_index_u32(u_input.a, 22u)])))), func_3()), func_6(_wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.a, u_input.a), 0u), true, _wgslsmith_f_op_f32(-global0.x) != _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)]), 6u)])), 1i));
    let var_5 = _wgslsmith_clamp_vec2_u32(select(vec2<u32>(22240u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(countOneBits(var_4.c.b.x), 22u)], 2708u)), max(_wgslsmith_mult_vec2_u32(var_4.a.b, var_4.a.b), var_4.c.b), any(!vec3<bool>(var_4.b.x, var_3.x, var_4.b.x)) | true), ~min(_wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 22u)], 0u), vec2<u32>(82886u, var_4.c.b.x)) | ~vec2<u32>(1u, 4294967295u), reverseBits(var_4.a.b >> (var_4.c.b % vec2<u32>(32u)))), abs(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, var_4.a.b.x), ~var_4.c.b)));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1000f, global1[_wgslsmith_index_u32(var_5.x, 6u)]) + vec3<f32>(-800f, global1[_wgslsmith_index_u32(var_5.x, 6u)], global0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_5.x, 6u)], -1578f, -1125f), vec3<f32>(-554f, -644f, global0.x))))) * _wgslsmith_f_op_vec3_f32(func_4(false)));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.c.b.x, 17930u, 42604u) >> (vec3<u32>(var_4.a.b.x, global2[_wgslsmith_index_u32(var_4.a.b.x, 22u)], 0u) % vec3<u32>(32u)), ~vec3<u32>(55886u, var_5.x, var_4.a.b.x)), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(firstLeadingBit(var_4.a.b.x), 22u)], _wgslsmith_div_u32(var_5.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26263u, 22u)], 22u)])), u_input.a << ((var_4.a.b.x & global2[_wgslsmith_index_u32(62244u, 22u)]) % 32u), ~_wgslsmith_dot_vec2_u32(var_4.a.b, vec2<u32>(global2[_wgslsmith_index_u32(var_5.x, 22u)], var_4.c.b.x))), vec4<u32>(var_5.x, 32551u, min(global2[_wgslsmith_index_u32(90674u, 22u)], u_input.a) ^ (var_5.x >> (var_5.x % 32u)), var_5.x)), 6u)], select(~(vec3<i32>(2147483647i, u_input.b, 0i) ^ u_input.c.wwz) ^ vec3<i32>(_wgslsmith_sub_i32(var_4.a.a.x, var_4.a.a.x), -17567i >> (0u % 32u), var_0.x), -reverseBits(-u_input.c.wxw), !vec3<bool>(!var_3.x, var_4.b.x | false, true)));
}

