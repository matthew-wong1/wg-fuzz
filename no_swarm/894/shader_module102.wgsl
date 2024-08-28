struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<bool, 19> = array<bool, 19>(false, false, false, false, false, false, false, true, true, false, true, true, false, false, true, true, false, true, false);

var<private> global2: vec4<bool>;

var<private> global3: i32 = 81266i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<u32>) -> f32 {
    global0 = array<Struct_2, 24>();
    return -1329f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>) -> bool {
    var var_0 = 17833i;
    var var_1 = Struct_1(u_input.a, any(select(vec2<bool>(any(global2.xz), global1[_wgslsmith_index_u32(~1u, 19u)]), select(!vec2<bool>(global2.x, global2.x), select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 19u)], false), vec2<bool>(global2.x, true), vec2<bool>(true, false)), vec2<bool>(false, false)), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec4<f32>(1043f, 243f, -833f, 402f), false, arg_1.zxx)), _wgslsmith_f_op_f32(-207f + 299f))), 1452f)));
    let var_2 = Struct_4(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(-56638i, 51701i, 24151i, u_input.a)), ~vec4<i32>(var_1.a, -2147483647i, u_input.a, -2147483647i)), ~vec4<i32>(u_input.a, -56549i, u_input.a, 1i)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-702f)) + 1039f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, _wgslsmith_f_op_f32(-var_1.c))), vec3<u32>(~(arg_0.x ^ arg_0.x) & ~arg_0.x, 0u, abs(14u)), firstLeadingBit(abs(abs(2147483647i))));
    var_0 = 32907i;
    global0 = array<Struct_2, 24>();
    return false;
}

fn func_1() -> Struct_2 {
    global3 = u_input.a;
    let var_0 = Struct_2(Struct_1(~_wgslsmith_mod_i32(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, 108464i), vec3<i32>(u_input.a, 5765i, u_input.a))), func_2(vec2<u32>(84088u, firstTrailingBit(60601u)), ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1445f + 599f)))));
    global2 = !select(vec4<bool>(!(!var_0.a.b), false, global2.x, all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(20394u, 19u)], var_0.a.b, false), vec4<bool>(true, global2.x, var_0.a.b, global2.x), vec4<bool>(false, true, global2.x, var_0.a.b)))), select(!(!vec4<bool>(var_0.a.b, global1[_wgslsmith_index_u32(1u, 19u)], true, global2.x)), vec4<bool>(var_0.a.b, true, true, global1[_wgslsmith_index_u32(4294967295u, 19u)]), !vec4<bool>(var_0.a.b, false, false, global1[_wgslsmith_index_u32(9029u, 19u)])), select(!select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(12368u, 19u)], false), vec4<bool>(global2.x, global1[_wgslsmith_index_u32(1u, 19u)], false, global2.x), vec4<bool>(global2.x, global1[_wgslsmith_index_u32(0u, 19u)], true, var_0.a.b)), select(select(vec4<bool>(true, true, false, var_0.a.b), vec4<bool>(var_0.a.b, global2.x, false, global1[_wgslsmith_index_u32(119394u, 19u)]), true), vec4<bool>(false, false, true, global2.x), true), _wgslsmith_f_op_f32(f32(-1f) * -2052f) > _wgslsmith_f_op_f32(trunc(1000f))));
    var var_1 = Struct_2(Struct_1(17052i, all(vec3<bool>(false, all(global2.wxw), global2.x)), var_0.a.c));
    let var_2 = false;
    return global0[_wgslsmith_index_u32(1u, 24u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> Struct_4 {
    let var_0 = Struct_3(func_1());
    global3 = arg_1.a.a;
    var var_1 = Struct_4(Struct_1(-45966i, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.c)))), arg_1.b, arg_1.c, arg_0.a.a);
    var var_2 = 1i;
    let var_3 = ~vec4<u32>(0u, _wgslsmith_mod_u32(max(1u, select(44433u, 0u, true)), _wgslsmith_sub_u32(1u, var_1.c.x) >> (firstTrailingBit(arg_1.c.x) % 32u)), 1u, arg_1.c.x);
    return Struct_4(Struct_1(-1i, all(!vec3<bool>(arg_1.a.b, false, var_0.a.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -343f)), _wgslsmith_f_op_vec2_f32(min(var_1.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b + vec2<f32>(var_1.b.x, -882f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-3085f, arg_0.a.c) - arg_1.b)), var_1.b)))), abs(arg_1.c), var_0.a.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), Struct_4(Struct_1(firstLeadingBit(~u_input.a), !any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], true, global2.x, global1[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_f_op_f32(f32(-1f) * -1487f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1471f - -411f) * _wgslsmith_f_op_f32(196f - -491f)), _wgslsmith_f_op_f32(-452f + _wgslsmith_f_op_f32(265f * 586f))), select(max(firstLeadingBit(vec3<u32>(0u, 44265u, 17031u)), firstLeadingBit(vec3<u32>(1u, 5953u, 6867u))), vec3<u32>(~30060u, _wgslsmith_clamp_u32(24550u, 35558u, 26225u), ~0u), global2.zyw), _wgslsmith_add_i32(u_input.a, u_input.a >> (4294967295u % 32u)) >> (~_wgslsmith_mult_u32(1u, 1u) % 32u)));
    let var_1 = _wgslsmith_mod_u32(14967u, var_0.c.x) >> (0u % 32u);
    global2 = select(vec4<bool>(countOneBits(_wgslsmith_div_i32(var_0.a.a, 20436i)) > _wgslsmith_dot_vec3_i32(-vec3<i32>(13032i, var_0.a.a, u_input.a), vec3<i32>(0i, u_input.a, var_0.d) ^ vec3<i32>(-154i, -40194i, var_0.d)), false, -2147483647i < _wgslsmith_dot_vec2_i32(vec2<i32>(3037i, 2147483647i) << (var_0.c.xz % vec2<u32>(32u)), vec2<i32>(-15128i, -1i) << (var_0.c.yy % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x) * -150f) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1084f))))), select(!vec4<bool>(global2.x, true, true, true), select(!vec4<bool>(global2.x, true, false, false), vec4<bool>(var_0.c.x >= 1u, !var_0.a.b, false, global1[_wgslsmith_index_u32(var_0.c.x, 19u)] == global2.x), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false)), vec4<bool>(false, any(vec4<bool>(global1[_wgslsmith_index_u32(32452u, 19u)], global2.x, false, false)), true, u_input.a >= var_0.a.a)), !(global1[_wgslsmith_index_u32(~(var_0.c.x ^ var_0.c.x), 19u)] || !select(true, false, true)));
    var var_2 = countOneBits(vec2<i32>(~(-min(14209i, var_0.d)), -(~(~var_0.a.a))));
    global2 = !vec4<bool>(all(select(global2.xx, !vec2<bool>(global1[_wgslsmith_index_u32(var_1, 19u)], false), all(vec4<bool>(var_0.a.b, var_0.a.b, false, true)))), func_1().a.b, true, select(true, false, all(vec3<bool>(true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.c), func_4(global0[_wgslsmith_index_u32(var_1, 24u)], Struct_4(Struct_1(-32979i, global1[_wgslsmith_index_u32(var_0.c.x, 19u)], var_0.a.c), var_0.b, var_0.c, 0i)).b.x, -724f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1003f, -841f, -228f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(640f, 296f, 366f)))))), select(vec3<bool>(true, var_0.a.b, global2.x), select(select(global2.wyy, vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)]), global2.yxw), !vec3<bool>(false, global2.x, global1[_wgslsmith_index_u32(1u, 19u)]), vec3<bool>(false, false, var_0.a.b)), vec3<bool>(any(vec4<bool>(global2.x, var_0.a.b, false, global1[_wgslsmith_index_u32(2390u, 19u)])), true, false)))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.c, -466f))), -160f), var_0.b, var_0.a.c, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), var_0.a.c, var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -634f)))));
}

