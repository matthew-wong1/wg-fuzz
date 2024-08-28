struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: vec4<f32> = vec4<f32>(-1930f, -286f, -519f, 1489f);

var<private> global2: vec3<f32> = vec3<f32>(-496f, -2488f, -1000f);

var<private> global3: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = i32(-1i) * -((1i >> (select(0u, u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 1u)]) % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, 1i), vec4<i32>(3993i, -1i, -7189i, -2147483647i)));
    let var_1 = false;
    let var_2 = ~(~(~_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(0u, u_input.a.x)), ~vec2<u32>(u_input.a.x, u_input.a.x))));
    global0 = select(select(vec4<bool>(any(vec4<bool>(global0.x, true, global0.x, global0.x)), !global0.x, !(u_input.a.x == var_2.x), false), select(select(vec4<bool>(var_1, true, global3[_wgslsmith_index_u32(var_2.x, 1u)], false), vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), global0.x && false), !(!vec4<bool>(false, var_1, false, global3[_wgslsmith_index_u32(var_2.x, 1u)])), select(true, true, true)), !any(!vec4<bool>(var_1, false, true, true))), !select(select(vec4<bool>(global0.x, false, var_1, global0.x), select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(var_2.x, 1u)], true), vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global0.x), vec4<bool>(global3[_wgslsmith_index_u32(10925u, 1u)], true, var_1, global0.x)), arg_0 == arg_0), vec4<bool>(all(vec4<bool>(global0.x, false, global3[_wgslsmith_index_u32(var_2.x, 1u)], global0.x)), global3[_wgslsmith_index_u32(select(77032u, u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 1u)]), 1u)], var_1, true), select(vec4<bool>(true, var_1, global0.x, true), vec4<bool>(global0.x, global0.x, true, var_1), var_0 < var_0)), select(!select(select(vec4<bool>(false, false, var_1, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, var_1, false, false), vec4<bool>(false, false, global0.x, true), global3[_wgslsmith_index_u32(var_2.x, 1u)]), !vec4<bool>(var_1, global3[_wgslsmith_index_u32(1u, 1u)], global0.x, true)), select(vec4<bool>(!global0.x, !global3[_wgslsmith_index_u32(u_input.a.x, 1u)], true, true), !vec4<bool>(global0.x, var_1, global0.x, global0.x), select(vec4<bool>(true, var_1, global0.x, global3[_wgslsmith_index_u32(53431u, 1u)]), !vec4<bool>(var_1, var_1, false, false), global0.x)), select(select(!vec4<bool>(true, global0.x, global3[_wgslsmith_index_u32(var_2.x, 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<bool>(true, false, global3[_wgslsmith_index_u32(0u, 1u)], true), !vec4<bool>(true, global0.x, true, false)), select(!vec4<bool>(false, var_1, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], true, true, var_1), true)), select(!vec4<bool>(true, var_1, true, global3[_wgslsmith_index_u32(4294967295u, 1u)]), !vec4<bool>(true, var_1, var_1, true), select(vec4<bool>(false, false, var_1, var_1), vec4<bool>(global3[_wgslsmith_index_u32(var_2.x, 1u)], true, global0.x, false), vec4<bool>(false, true, true, global0.x))))));
    let var_3 = ((~min(vec3<u32>(4294967295u, 4226u, var_2.x), vec3<u32>(var_2.x, var_2.x, var_2.x)) << (~countOneBits(vec3<u32>(var_2.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))) & vec3<u32>(abs(u_input.a.x), u_input.a.x, ~1u)) | _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(min(firstLeadingBit(vec3<u32>(u_input.a.x, 24339u, 29604u)), vec3<u32>(10509u, var_2.x, 7332u) >> (vec3<u32>(var_2.x, u_input.a.x, 0u) % vec3<u32>(32u))), vec3<u32>(abs(u_input.a.x), ~11816u, _wgslsmith_div_u32(var_2.x, 46819u))), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 27779u)) | (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, 1u, var_2.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, var_2.x)) >> (~vec3<u32>(u_input.a.x, 47339u, var_2.x) % vec3<u32>(32u))));
    return !select(global0.x, var_1, var_0 < _wgslsmith_sub_i32(~var_0, abs(0i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_1(firstTrailingBit(u_input.a.x), vec4<i32>(-48385i, 2147483647i, ~2147483647i, arg_1), vec4<bool>(global0.x, all(global0.ww), true, !global3[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x | 43372u, true), 1u)]), true, true);
    var var_1 = Struct_1(u_input.a.x, var_0.b, !vec4<bool>(func_3(_wgslsmith_f_op_f32(abs(arg_0.x))), true, true, !(!global0.x)), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(trunc(1182f))) < global2.x, true);
    global2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, -1000f, 1000f)));
    global3 = array<bool, 1>();
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u) << (firstTrailingBit(~vec2<u32>(var_1.a, var_1.a)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(~var_1.a, var_1.a | u_input.a.x), select(~u_input.a, reverseBits(vec2<u32>(var_0.a, var_0.a)), vec2<bool>(var_0.c.x, true)))), _wgslsmith_mod_vec4_i32(-(select(vec4<i32>(var_1.b.x, 0i, -1i, var_0.b.x), vec4<i32>(var_0.b.x, var_1.b.x, 12330i, 0i), vec4<bool>(false, false, true, true)) & var_0.b), firstLeadingBit(var_1.b)), var_0.c, true, arg_1 < var_0.b.x);
    return var_2.c;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> i32 {
    global0 = select(vec4<bool>(true, true, true, true), select(select(!select(arg_1, vec4<bool>(true, arg_0, arg_0, true), false), select(arg_1, select(vec4<bool>(arg_0, false, false, true), vec4<bool>(false, true, true, global0.x), arg_1), all(vec2<bool>(false, arg_1.x))), !func_2(global2.zy, -1i)), select(func_2(_wgslsmith_f_op_vec2_f32(global2.xx - vec2<f32>(global1.x, global2.x)), _wgslsmith_add_i32(26723i, 0i)), func_2(global1.xz, 0i), select(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, true, arg_1.x, arg_0), arg_1), select(vec4<bool>(arg_0, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], true, global0.x), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global0.x, global0.x), true), arg_0 || arg_1.x)), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], false, -1i < (0i >> (u_input.a.x % 32u)), true)), !any(!select(vec3<bool>(false, false, false), arg_1.yxy, vec3<bool>(arg_1.x, global0.x, arg_1.x))));
    let var_0 = select(any(global0.yyx), global0.x, true);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1068f + global2.x), _wgslsmith_f_op_f32(round(-681f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(floor(global2.x)))))), -1519f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))) - -1847f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1306f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + 305f))));
    global3 = array<bool, 1>();
    var var_1 = Struct_1(u_input.a.x & (1u | u_input.a.x), ~vec4<i32>(1i, 1i, 1i, 1i), select(arg_1, vec4<bool>(var_0 == !global3[_wgslsmith_index_u32(u_input.a.x, 1u)], false, true, var_0), select(vec4<bool>(any(vec2<bool>(false, global0.x)), arg_1.x, func_2(vec2<f32>(2178f, global1.x), 7808i).x, true), arg_1, false)), false, !(!func_2(global1.zz, min(42087i, -23534i)).x));
    return ~_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec2_i32(~var_1.b.zw, ~vec2<i32>(40942i, 2147483647i))), -39323i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec4<bool>(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, 0u), ~44819u) > (1u & abs(u_input.a.x)), !global0.x, false, all(global0.xwx)), vec4<bool>(false, max(_wgslsmith_dot_vec4_i32(vec4<i32>(27835i, 0i, 5033i, -56301i), vec4<i32>(-1i, 45957i, 0i, 29828i)), 1i) != -func_1(true, vec4<bool>(false, global0.x, false, true)), global0.x, global0.x & global0.x), global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x ^ u_input.a.x, _wgslsmith_mod_u32(37712u, 1u) << (u_input.a.x % 32u))), 1u)]);
    let var_0 = global0.zy;
    let var_1 = Struct_1(4294967295u, ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 7828i, 0i), vec3<i32>(-36897i, 0i, -1i)) | ~(-1i), abs(min(-49569i, -1i)), ~(~(-2147483647i)), _wgslsmith_add_i32(1i << (u_input.a.x % 32u), countOneBits(27590i))), !vec4<bool>(var_0.x, all(vec2<bool>(var_0.x, false)), any(select(vec3<bool>(true, false, global0.x), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], var_0.x), false)), func_3(global1.x)), false, var_0.x);
    var var_2 = var_1;
    global3 = array<bool, 1>();
    var var_3 = abs(vec4<u32>(~u_input.a.x, 0u, var_1.a, 4294967295u)) & abs(vec4<u32>(~u_input.a.x, abs(var_1.a), 0u, 94965u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, var_1.a), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, 63848u, 48981u), vec4<u32>(var_2.a, 0u, var_2.a, 40287u))) % vec4<u32>(32u)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2333f, -263f, -1168f, global2.x), vec4<f32>(177f, 921f, global1.x, -208f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1352f, global1.x, global1.x, global1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_3.yyx >> (var_3.zzz % vec3<u32>(32u)))), _wgslsmith_dot_vec3_u32(var_3.xyy, var_3.yyw << (var_3.yxy % vec3<u32>(32u))) | 4294967295u, _wgslsmith_add_vec3_u32(var_3.wxx, _wgslsmith_div_vec3_u32(reverseBits(var_3.wxy), vec3<u32>(0u, 42309u, 141753u))) >> (((~var_3.zzz << (min(var_3.yzx, var_3.wxw) % vec3<u32>(32u))) << ((_wgslsmith_add_vec3_u32(var_3.wxz, var_3.wzz) >> (~var_3.zyx % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(255f)) - global1.x));
}

