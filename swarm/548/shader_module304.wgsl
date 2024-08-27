struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(1018f, -183f, -1246f), vec4<bool>(true, true, false, true), vec3<bool>(true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false));

var<private> global1: array<f32, 25> = array<f32, 25>(674f, -498f, 647f, -216f, 315f, 119f, 888f, -1889f, 519f, -694f, -367f, -248f, 615f, 745f, -203f, -1000f, 415f, -532f, -1483f, 430f, 909f, 520f, 392f, 590f, -508f);

var<private> global2: f32;

var<private> global3: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(1u, 25400u, 53359u), vec3<u32>(1u, 67787u, 4294967295u), vec3<u32>(29478u, 1u, 4294967295u), vec3<u32>(61254u, 24856u, 4294967295u), vec3<u32>(4294967295u, 30100u, 0u));

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> vec3<bool> {
    var var_0 = Struct_1(global0.a, !vec4<bool>(_wgslsmith_f_op_f32(-arg_3) != _wgslsmith_f_op_f32(ceil(arg_0.a.x)), global0.d.x || all(global0.e.ww), any(arg_2), arg_2.x), vec3<bool>(false, true, true), !(!select(select(arg_0.e, arg_0.d, global0.b.x), !vec4<bool>(arg_1, false, true, true), !arg_0.e.x)), vec4<bool>(true, false, !(any(arg_0.c.yx) || global0.d.x), all(select(vec4<bool>(arg_1, arg_0.e.x, false, true), select(vec4<bool>(arg_0.e.x, true, false, true), vec4<bool>(arg_0.d.x, arg_2.x, arg_1, true), arg_2), !vec4<bool>(true, global0.e.x, false, false)))));
    let var_1 = arg_0.b.x;
    let var_2 = ~(~min(~max(vec4<i32>(16546i, u_input.b, u_input.b, 23898i), vec4<i32>(4614i, 11273i, u_input.b, -4996i)), vec4<i32>(-u_input.b, abs(u_input.b), u_input.b, -46423i)));
    let var_3 = vec4<f32>(-2283f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(max(1712f, global1[_wgslsmith_index_u32(u_input.a, 25u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3))), _wgslsmith_div_f32(-200f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.c, 25u)] + -832f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1502f + 358f)))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(285f, var_3.x)), _wgslsmith_f_op_f32(global0.a.x * var_0.a.x), true)), -307f) * _wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(arg_3, -236f, 907f)))), !(!var_0.e), vec3<bool>(var_1, true, any(select(var_0.e, select(arg_0.e, arg_0.d, true), true))), select(select(!select(arg_2, global0.d, var_1), !arg_0.e, vec4<bool>(true, true, true, true)), !global0.b, true), vec4<bool>(true, any(!arg_0.e.wxy) != ((u_input.c == 0u) || false), !any(!vec3<bool>(true, true, var_1)), !any(select(vec2<bool>(true, global0.d.x), arg_0.e.yy, arg_0.c.yx))));
    return vec3<bool>(_wgslsmith_f_op_f32(round(arg_0.a.x)) > _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3, global0.a.x)))), !all(!(!var_0.d)), all(!select(arg_2, vec4<bool>(false, true, false, arg_1), vec4<bool>(arg_2.x, arg_1, false, var_0.b.x))) & arg_2.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> vec3<bool> {
    let var_0 = arg_3;
    var var_1 = any(vec4<bool>(true, arg_1.c.x, any(func_3(arg_1, true, !arg_1.e, _wgslsmith_f_op_f32(min(arg_1.a.x, -368f)))), arg_1.d.x));
    var var_2 = global0.a.xy;
    global0 = Struct_1(global0.a, vec4<bool>(false, true, all(vec3<bool>(all(arg_1.b.wx), arg_2.x | arg_1.d.x, any(global0.b))), all(!global0.c.xz)), vec3<bool>(true, arg_1.b.x, func_3(arg_1, arg_2.x, select(select(vec4<bool>(true, arg_1.e.x, true, arg_2.x), vec4<bool>(global0.c.x, false, arg_1.b.x, arg_1.e.x), vec4<bool>(false, true, false, false)), !vec4<bool>(true, global0.e.x, arg_1.c.x, arg_1.c.x), arg_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1080f + global0.a.x), -628f)).x), !vec4<bool>(true, true, any(!arg_1.b.ww), ~u_input.c == (u_input.c | 1u)), arg_1.d);
    global2 = -953f;
    return global0.e.yxy;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: bool) -> vec4<i32> {
    var var_0 = !select(!select(global0.e.xx, vec2<bool>(arg_0, false), global0.d.yw), vec2<bool>(true, true), !global0.d.zx);
    let var_1 = vec3<bool>(false, any(vec4<bool>(false, any(global0.d.wzx), !all(vec4<bool>(arg_0, global0.d.x, false, arg_2)), any(vec2<bool>(false, arg_0)))), !(!all(vec2<bool>(var_0.x, true))));
    global1 = array<f32, 25>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d, 25u)], 870f, global1[_wgslsmith_index_u32(u_input.d, 25u)]), global0.a, var_1))))), global0.b, vec3<bool>((_wgslsmith_div_f32(arg_1, 757f) < 376f) | true, (max(-6429i, 31609i) == _wgslsmith_mult_i32(u_input.b, -815i)) && true, !select(2281f <= global1[_wgslsmith_index_u32(u_input.c, 25u)], arg_0, true)), !(!select(!vec4<bool>(arg_2, var_1.x, false, false), global0.e, !var_0.x)), select(global0.d, select(!global0.e, vec4<bool>(true | var_0.x, arg_2, var_0.x, arg_0 & true), true), all(func_2(firstTrailingBit(1u), Struct_1(vec3<f32>(914f, arg_1, arg_1), global0.e, vec3<bool>(arg_0, true, false), vec4<bool>(global0.d.x, true, arg_0, var_0.x), global0.e), select(global0.e.zz, global0.d.zx, true), ~u_input.b))));
    var var_2 = Struct_1(global0.a, global0.b, func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a | 4294967295u, _wgslsmith_add_u32(19615u, 46756u)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.d), vec2<u32>(8531u, u_input.c)), select(vec2<u32>(u_input.c, u_input.d), vec2<u32>(4294967295u, u_input.d), true))), Struct_1(global0.a, vec4<bool>(arg_1 > arg_1, true, !var_0.x, false == global0.c.x), !vec3<bool>(var_1.x, global0.d.x, global0.e.x), select(global0.d, !global0.e, true), global0.d), vec2<bool>(true, var_0.x), min(-u_input.b << ((41273u | u_input.a) % 32u), _wgslsmith_mult_i32(-u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(14273i, u_input.b, -1i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -1i))))), vec4<bool>(!(!arg_0), arg_2, func_2(u_input.d, Struct_1(vec3<f32>(766f, global0.a.x, global1[_wgslsmith_index_u32(0u, 25u)]), !vec4<bool>(true, arg_0, global0.c.x, var_1.x), !vec3<bool>(true, arg_2, global0.d.x), global0.d, select(vec4<bool>(var_1.x, var_1.x, true, global0.c.x), vec4<bool>(arg_2, global0.d.x, true, arg_2), var_1.x)), global0.b.xy, 43821i).x, (_wgslsmith_clamp_u32(4493u, u_input.a, u_input.d) ^ ~u_input.d) > abs(~23819u)), vec4<bool>(true, true, arg_0, var_0.x));
    return _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, u_input.b, -30896i, 26293i) & (vec4<i32>(u_input.b, u_input.b, u_input.b, -1i) ^ vec4<i32>(u_input.b, 91832i, u_input.b, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b, 0i, 2147483647i), select(vec4<i32>(u_input.b, 2147483647i, 73529i, 0i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(arg_2, true, true, var_1.x))), select(~vec4<i32>(-2147483647i, 2147483647i, -15420i, 1i), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), !vec4<bool>(true, true, false, global0.d.x)))), abs(vec4<i32>(50427i, ~49350i, u_input.b, u_input.b)), -(~firstTrailingBit(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)) >> (vec4<u32>(abs(14860u), 28907u, ~40449u, u_input.c) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 5>();
    var var_0 = firstTrailingBit(reverseBits(~(~func_1(true, 1113f, global0.d.x))));
    var_0 = _wgslsmith_mod_vec4_i32(~(~vec4<i32>(var_0.x, var_0.x, -12598i, var_0.x) << (select(min(vec4<u32>(u_input.a, 24373u, 4294967295u, 0u), vec4<u32>(65833u, u_input.c, u_input.a, u_input.a)), firstLeadingBit(vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.c)), global0.e.x & global0.e.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b ^ -15874i, firstLeadingBit(29296i), -2147483647i, -49192i), vec4<i32>(-22030i, min(0i, u_input.b) >> (_wgslsmith_mod_u32(12919u, 61619u) % 32u), var_0.x, u_input.b), select(vec4<i32>(1i, _wgslsmith_sub_i32(-12965i, u_input.b), var_0.x, var_0.x), vec4<i32>(1i, u_input.b, countOneBits(0i), ~(-2147483647i)), select(select(vec4<bool>(true, false, false, false), global0.b, global0.e), global0.e, all(vec4<bool>(true, false, true, global0.d.x))))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.a)) + vec3<f32>(-911f, global1[_wgslsmith_index_u32(u_input.c, 25u)], -1908f))), vec3<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(0u, 25u)], -628f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f) * _wgslsmith_f_op_f32(821f * global1[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_div_f32(-531f, -188f)))), !global0.d, global0.d.xww, global0.b, select(!select(global0.e, vec4<bool>(false, false, global0.b.x, global0.e.x), global0.c.x), vec4<bool>(all(!vec4<bool>(false, global0.c.x, false, false)), any(select(vec3<bool>(true, false, false), global0.d.wxx, vec3<bool>(true, true, true))), !(!global0.d.x), all(vec4<bool>(global0.e.x, global0.d.x, global0.c.x, true))), vec4<bool>(all(!vec3<bool>(global0.e.x, global0.b.x, true)), false, any(!vec2<bool>(true, global0.c.x)), select(global0.c.x | global0.c.x, true, true))));
    global0 = Struct_1(vec3<f32>(-878f, global1[_wgslsmith_index_u32(~u_input.a, 25u)], -1295f), !vec4<bool>(true, true, false, global0.c.x), vec3<bool>(all(!vec2<bool>(global0.b.x, false)), var_1.b.x | any(!var_1.d), u_input.b < -1i), vec4<bool>(global0.c.x || !any(vec2<bool>(global0.b.x, var_1.b.x)), true, !((global1[_wgslsmith_index_u32(0u, 25u)] == global0.a.x) & global0.b.x), (i32(-1i) * -1i) <= u_input.b), !vec4<bool>(var_1.b.x, max(var_0.x, u_input.b) >= u_input.b, all(!vec2<bool>(global0.d.x, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(var_0.wzy, var_0.zxw), u_input.c, var_0.yz, _wgslsmith_f_op_vec2_f32(-global0.a.xz));
}

