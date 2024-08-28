struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(vec2<u32>(26657u, 0u), Struct_1(2147483647i, 1000f, true, vec3<i32>(-1i, i32(-2147483648), -56658i)), vec3<u32>(0u, 4294967295u, 17943u), false), Struct_1(-1i, -509f, true, vec3<i32>(-1i, i32(-2147483648), 2147483647i)));

var<private> global1: i32 = 1i;

var<private> global2: array<i32, 22> = array<i32, 22>(-13884i, 54007i, -796i, 4819i, -19371i, 16098i, -5602i, 0i, 2147483647i, 33819i, 0i, i32(-2147483648), -1i, 2147483647i, 50989i, 5056i, -1i, -8561i, 35627i, 1i, -4135i, 2147483647i);

var<private> global3: Struct_4;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.ywx), global4.www) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2906f, global0.a.b.b, global3.a.b.b) - vec3<f32>(742f, 784f, -214f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(297f, _wgslsmith_f_op_f32(sign(global4.x)), _wgslsmith_f_op_f32(-374f - 1000f)) * _wgslsmith_f_op_vec3_f32(-global4.xxx)))));
    global1 = -global0.b.d.x;
    let var_1 = _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a, -2147483647i, global0.b.d.x), vec3<i32>(abs(-18527i), _wgslsmith_clamp_i32(max(2147483647i, u_input.a), -38620i, -global2[_wgslsmith_index_u32(global0.a.c.x, 22u)]), _wgslsmith_dot_vec3_i32(reverseBits(global0.a.b.d), global0.a.b.d)), !global3.a.b.c), max(-(~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, 9788i), global0.b.d)), global3.b.d));
    global1 = _wgslsmith_mod_i32(global0.b.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(global3.b.d.x, 2147483647i, -1i, global2[_wgslsmith_index_u32(global3.a.a.x, 22u)]), ~vec4<i32>(40959i, 3051i, global0.b.d.x, global2[_wgslsmith_index_u32(global0.a.a.x, 22u)])) & global0.b.d.x);
    var var_2 = select(select(vec3<bool>(global3.b.c, (global3.b.c || global3.a.b.c) && !global3.a.b.c, global0.b.c), !vec3<bool>(true, true, any(vec3<bool>(global0.b.c, global0.b.c, global0.b.c))), vec3<bool>(!all(vec3<bool>(false, global3.a.b.c, global0.a.b.c)), !(global0.a.c.x > 4294967295u), global0.a.d)), select(select(select(!vec3<bool>(global3.b.c, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), global3.b.c), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(global0.b.c, false, global0.a.d)), vec3<bool>(true, true, true)), !(!(!vec3<bool>(true, global0.a.d, true))), false), vec3<bool>(-_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.b.a, 24066i), vec2<i32>(global0.b.d.x, 44137i)) <= 1i, false, all(vec4<bool>(!global0.a.d, false, false, global0.b.c | false))));
    return ~countOneBits(global0.a.c.x);
}

fn func_2() -> bool {
    var var_0 = reverseBits(func_3(1801f));
    let var_1 = -49277i << (max(global3.a.c.x, firstTrailingBit(~(global3.a.a.x & 80023u))) % 32u);
    global0 = Struct_4(Struct_2(~select(min(vec2<u32>(0u, 0u), global3.a.a), vec2<u32>(global0.a.a.x, 1u), select(vec2<bool>(true, global3.a.b.c), vec2<bool>(false, global3.a.b.c), global3.a.d)), Struct_1(min(~2147483647i, u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.b.b), -970f), true, _wgslsmith_sub_vec3_i32(vec3<i32>(var_1, -2147483647i, 0i), ~vec3<i32>(var_1, 15218i, -22215i))), ~(global0.a.c | vec3<u32>(global3.a.c.x, 0u, 4534u)) | vec3<u32>(~global0.a.a.x, global0.a.c.x, 22941u), !any(select(vec2<bool>(global3.b.c, false), vec2<bool>(global3.b.c, false), false))), Struct_1(i32(-1i) * -global3.b.a, 1122f, global0.a.d, vec3<i32>(firstTrailingBit(1i), global0.a.b.d.x, ~(~global3.b.d.x))));
    global1 = 31390i;
    let var_2 = Struct_4(global3.a, Struct_1(u_input.a, _wgslsmith_f_op_f32(-963f + _wgslsmith_f_op_f32(min(1007f, -1171f))), select(all(!vec3<bool>(global0.a.d, global3.a.d, false)), all(vec3<bool>(global0.a.b.c, global0.a.b.c, true)), global0.a.b.c), global3.a.b.d));
    return ~global3.a.a.x > _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(~global3.a.c.zz), _wgslsmith_mult_vec2_u32(~global3.a.a, global3.a.a)), ~abs(~var_2.a.c.x));
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(global0.a.a, global0.b, ~(vec3<u32>(global0.a.c.x, 0u, 30486u) >> (abs(global0.a.c) % vec3<u32>(32u))), global3.b.c), Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(global3.a.b.d) & global3.b.d, vec3<i32>(-1i) * -global3.a.b.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), true, countOneBits(~global0.b.d | global0.a.b.d)), Struct_1(_wgslsmith_dot_vec2_i32(abs(~global0.a.b.d.zz), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-54227i, global0.a.b.d.x), vec2<i32>(0i, global0.a.b.a))), global4.x, !(!arg_0.x), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(global3.b.d, vec3<i32>(global0.a.b.d.x, -73773i, 30766i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-41550i, 1i, global2[_wgslsmith_index_u32(global3.a.a.x, 22u)], -22925i), vec4<i32>(2147483647i, -1i, 1i, -15068i)), -31605i))));
    let var_1 = arg_0.xz;
    let var_2 = Struct_1(select(i32(-1i) * -22822i, -12632i, global0.a.b.c) | global3.a.b.d.x, _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(global0.a.b.b * _wgslsmith_f_op_f32(-global4.x))), all(arg_0), vec3<i32>(-1i) * -reverseBits(vec3<i32>(-58282i, global0.a.b.a, global2[_wgslsmith_index_u32(global3.a.a.x, 22u)])));
    let var_3 = Struct_4(var_0.a, var_2);
    var var_4 = global3.b;
    return global0.a;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> vec4<f32> {
    global0 = Struct_4(func_4(select(!vec3<bool>(false, false, global3.b.c), !(!vec3<bool>(true, arg_2.x, true)), select(select(vec3<bool>(global0.a.d, arg_2.x, arg_3), vec3<bool>(arg_3, true, arg_2.x), global0.a.d), !vec3<bool>(false, true, global3.b.c), func_2()))), func_4(vec3<bool>(arg_0.c, true && all(vec2<bool>(false, global3.b.c)), true)).b);
    let var_0 = arg_2.x;
    global2 = array<i32, 22>();
    global1 = ~(~arg_0.a);
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.b.b + global3.a.b.b))), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global4.x * -573f), _wgslsmith_f_op_f32(global0.a.b.b + global0.b.b), !global0.a.d)), 1112f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b * global0.a.b.b), global3.a.b.b, _wgslsmith_f_op_f32(func_4(vec3<bool>(false, global3.a.d, global3.a.d)).b.b * -663f), _wgslsmith_f_op_f32(f32(-1f) * -1043f)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, global4.x, -1820f, global3.b.b))))));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.b * 1674f))), -424f, 1777f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = (func_3(562f) >= 16524u) & !arg_1;
    let var_1 = _wgslsmith_dot_vec4_u32(select(~(~(vec4<u32>(global3.a.a.x, 76513u, 17694u, global0.a.a.x) | vec4<u32>(26444u, 30390u, global0.a.c.x, 1u))), firstLeadingBit(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(36540u, 1u, 0u, global3.a.a.x), vec4<u32>(global3.a.c.x, global3.a.a.x, global0.a.c.x, global0.a.a.x)))), (global3.a.a.x | 1u) < ~(~global0.a.a.x)), ~(~(vec4<u32>(0u, global3.a.a.x, global0.a.c.x, global0.a.c.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(7279u, 0u, 12823u, global0.a.c.x), vec4<u32>(0u, 4294967295u, 4294967295u, global0.a.c.x)) % vec4<u32>(32u)))));
    var var_2 = vec3<i32>(-(min(_wgslsmith_mult_i32(-12233i, 5619i), 1i) ^ ((global0.b.d.x >> (34834u % 32u)) | countOneBits(-1i))), countOneBits(global0.b.a), global3.b.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-216f, _wgslsmith_f_op_f32(sign(arg_2.x))))) + -1000f);
    var var_4 = select(u_input.a > 2147483647i, !(arg_1 && false), !global3.a.b.c);
    return Struct_3(func_4(select(!(!vec3<bool>(arg_1, global0.b.c, global3.a.d)), !vec3<bool>(false, true, global3.a.b.c), true)), func_4(select(vec3<bool>(arg_1, true, all(vec4<bool>(global0.a.b.c, true, arg_1, global0.a.d))), vec3<bool>(true, global3.b.d.x >= var_2.x, all(vec3<bool>(false, global0.a.b.c, false))), global3.b.c)).b, global0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.b.d.x;
    let var_0 = Struct_1(~(-global3.b.a) | -2147483647i, global3.a.b.b, true, global3.b.d);
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_1(global3.b, global0.a.b.c, vec2<bool>(true, false), global0.a.d)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 596f, -359f, global4.x)))))), var_0.c, global4.wzx);
    let var_2 = Struct_4(func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.a.b.b))), -573f, _wgslsmith_f_op_f32(-var_1.a.b.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1021f), 812f, var_0.c || false))), false, global4.zzx).a, func_4(!vec3<bool>(true, global3.b.c, var_1.a.b.c)).b);
    let var_3 = vec2<u32>(firstLeadingBit(max(547u, select(global0.a.c.x, 4294967295u, true) | 4294967295u)), 9422u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.wy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global4.ww, vec2<f32>(var_2.a.b.b, 1838f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(593f, 496f)))) + vec2<f32>(_wgslsmith_f_op_f32(func_4(vec3<bool>(false, var_0.c, false)).b.b * _wgslsmith_f_op_f32(min(226f, -494f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.x)) - var_1.b.b))));
}

