struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: array<Struct_2, 12>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(1i, true, vec3<bool>(true, false, true), true), Struct_1(1i, false, vec3<bool>(false, true, false), false), Struct_1(45785i, false, vec3<bool>(false, false, false), false), Struct_1(1i, false, vec3<bool>(false, false, false), false), Struct_1(-7906i, true, vec3<bool>(true, false, true), true), Struct_1(-1i, true, vec3<bool>(true, false, true), false), Struct_1(-54680i, true, vec3<bool>(true, false, false), true), Struct_1(2147483647i, true, vec3<bool>(true, false, false), false), Struct_1(5394i, true, vec3<bool>(false, false, true), true), Struct_1(i32(-2147483648), false, vec3<bool>(true, false, false), true), Struct_1(-1i, true, vec3<bool>(false, true, true), true), Struct_1(-15468i, true, vec3<bool>(false, false, true), false), Struct_1(1i, true, vec3<bool>(false, true, false), true), Struct_1(-374i, false, vec3<bool>(true, true, false), true), Struct_1(-30053i, true, vec3<bool>(false, true, true), true), Struct_1(1i, true, vec3<bool>(false, true, false), false), Struct_1(1i, false, vec3<bool>(false, false, true), true), Struct_1(2784i, false, vec3<bool>(false, true, true), false), Struct_1(-19230i, false, vec3<bool>(false, true, false), true), Struct_1(2147483647i, false, vec3<bool>(true, false, false), false), Struct_1(2147483647i, true, vec3<bool>(true, false, true), true), Struct_1(2147483647i, false, vec3<bool>(true, false, true), false), Struct_1(-780i, false, vec3<bool>(false, false, false), true), Struct_1(0i, true, vec3<bool>(true, true, false), true), Struct_1(10636i, true, vec3<bool>(false, false, false), true), Struct_1(i32(-2147483648), false, vec3<bool>(false, true, false), true), Struct_1(-14114i, true, vec3<bool>(false, true, true), false), Struct_1(501i, false, vec3<bool>(false, false, true), true), Struct_1(-10334i, true, vec3<bool>(false, true, true), false), Struct_1(2147483647i, false, vec3<bool>(true, false, true), true), Struct_1(0i, true, vec3<bool>(true, true, false), false), Struct_1(2147483647i, false, vec3<bool>(false, true, false), false));

var<private> global3: vec4<bool>;

var<private> global4: vec2<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> i32 {
    global1 = array<Struct_2, 12>();
    var var_0 = vec3<bool>(true, global3.x, !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1911f, arg_0) + arg_0) == 118f));
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-199f, arg_0))), 1431f)));
    let var_3 = Struct_1(0i, 0u > _wgslsmith_clamp_u32(_wgslsmith_div_u32(~u_input.a, 0u), reverseBits(0u), 0u), select(!global3.wzw, vec3<bool>(!global3.x, !any(arg_2.c), var_1.c.x), select(vec3<bool>(var_1.c.x, true, false), !vec3<bool>(arg_1, true, var_0.x), (arg_3 | u_input.a) <= ~0u)), !arg_1);
    return -var_1.a;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(func_3(1140f, global3.x, Struct_1(0i, true, global3.yxy, false), 0u), -13044i, -1i, ~31436i), reverseBits(max(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)))), global3.x, vec3<bool>(global3.x, global3.x, true), true);
    global4 = abs(vec2<u32>(_wgslsmith_mult_u32(1u, u_input.a), 4294967295u)) >> (~(~(~vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u));
    var var_1 = !global3.xwx;
    var var_2 = Struct_1(var_0.a, var_0.d, vec3<bool>(!(any(vec3<bool>(false, var_1.x, global3.x)) && true), var_0.d, true), !(!var_0.d));
    var var_3 = min(vec2<u32>(_wgslsmith_add_u32(select(1u, 1u, var_0.b), ~(~1592u)), 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, ~1u), _wgslsmith_mod_vec2_u32(min(vec2<u32>(11991u, global4.x) & vec2<u32>(95695u, global4.x), ~vec2<u32>(global4.x, u_input.a)), abs(abs(vec2<u32>(u_input.a, u_input.a))))));
    return !vec3<bool>(!var_2.c.x, var_1.x, !var_1.x);
}

fn func_1(arg_0: bool) -> i32 {
    global1 = array<Struct_2, 12>();
    let var_0 = Struct_1(-9421i, true, select(func_2(), !global3.yxy, any(!select(vec4<bool>(false, global3.x, false, false), vec4<bool>(global3.x, true, true, global3.x), true))), true);
    var var_1 = Struct_2(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(global4.x, global4.x)), select(~vec2<u32>(global4.x, 4294967295u), ~vec2<u32>(global4.x, u_input.a), vec2<bool>(global3.x, var_0.b))), global4.x << ((select(49650u, 0u, var_0.b) >> (u_input.a % 32u)) % 32u), 1u), Struct_1(-13144i, any(!var_0.c.yx), vec3<bool>(all(vec4<bool>(true, true, global3.x, var_0.b)) && true, all(select(var_0.c, vec3<bool>(global3.x, false, false), global3.xxx)), !var_0.b == !global3.x), !global3.x), global2[_wgslsmith_index_u32(0u, 32u)], Struct_1(-2147483647i, true, select(select(func_2(), global3.wxx, true), global3.xzy, vec3<bool>(true, false, false & global3.x)), global3.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(global4.x, ~1u, global4.x, global4.x), vec4<u32>(firstTrailingBit(global4.x), u_input.a, _wgslsmith_mod_u32(global4.x, u_input.a), ~382u)));
    global2 = array<Struct_1, 32>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3049f * -1557f) - -1199f), -308f)), _wgslsmith_f_op_f32(-2325f + 260f), _wgslsmith_f_op_f32(min(-694f, 383f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(116f))))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(reverseBits(-_wgslsmith_div_vec3_i32(~vec3<i32>(1i, 1097i, -1i), -vec3<i32>(-1i, -24216i, 26785i))), -_wgslsmith_mod_vec3_i32(vec3<i32>(-34979i, abs(-2147483647i), 0i), -abs(vec3<i32>(-1i, -28048i, -3745i))));
    global0 = array<Struct_2, 20>();
    global2 = array<Struct_1, 32>();
    var var_1 = 29302i;
    let var_2 = ~(global4.x | select(1u, ~_wgslsmith_sub_u32(global4.x, global4.x), global3.x));
    var_0 = _wgslsmith_mod_i32(-30738i, ~(~select(countOneBits(-51851i), min(2147483647i, 0i), !global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(-10896i, 21833i, _wgslsmith_clamp_i32(0i, 0i, _wgslsmith_mod_i32(-4385i, -1i)), func_1(true)), ~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 14530i, 1i, 1i), firstLeadingBit(vec4<i32>(31573i, 0i, 2147483647i, 0i)))), vec4<u32>(4294967295u, countOneBits(global4.x), 66038u, select(global4.x, 1u | var_2, all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) - _wgslsmith_f_op_f32(927f * 1111f)), _wgslsmith_f_op_f32(-1755f + _wgslsmith_f_op_f32(ceil(718f))), _wgslsmith_f_op_f32(sign(602f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(408f + -192f) + -581f))));
}

