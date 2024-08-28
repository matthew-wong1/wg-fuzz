struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 14>;

var<private> global2: Struct_1 = Struct_1(68629u, false, vec4<u32>(12280u, 68934u, 0u, 4294967295u), vec4<f32>(608f, -867f, 258f, -1261f), 1u);

var<private> global3: array<Struct_1, 6>;

var<private> global4: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> vec4<u32> {
    let var_0 = vec2<bool>(true, true);
    var var_1 = arg_2.c;
    global1 = array<f32, 14>();
    let var_2 = arg_2.a;
    global2 = global3[_wgslsmith_index_u32(arg_1.a, 6u)];
    return global2.c;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<f32, 14>();
    var var_0 = arg_0.c.zzy;
    var var_1 = Struct_1(36576u, true, global2.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 101f, global1[_wgslsmith_index_u32(66055u, 14u)], -1000f)))))), arg_0.a.x);
    global2 = arg_0.b;
    var var_2 = 2147483647i;
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~(~(~arg_1.x)), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1.a, 13235u, u_input.a.x), vec4<u32>(23011u, 0u, var_1.a, global2.a)), vec4<u32>(var_1.a, abs(var_1.c.x), ~44426u, _wgslsmith_dot_vec3_u32(arg_0.a.xyw, vec3<u32>(u_input.b, 4294967295u, 20986u)))), ~64788u), (8214u >> ((~0u & arg_1.x) % 32u)) << (abs(1u) % 32u)), 6u)];
}

fn func_1() -> Struct_3 {
    global3 = array<Struct_1, 6>();
    var var_0 = !all(select(select(!vec2<bool>(false, global2.b), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(global2.b, global2.b, global2.b, false)), global2.b), global2.b));
    let var_1 = func_3(Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, 0u, 0u), vec4<u32>(33353u, 75215u, u_input.b, global2.c.x)) << (global2.c % vec4<u32>(32u)), func_2(vec2<bool>(global2.b, false), Struct_3(4294967295u, -599f, global2.d.yx), Struct_3(51964u, global2.d.x, global2.d.ww), -1833f) << (vec4<u32>(1u, global2.c.x, u_input.a.x, global2.e) % vec4<u32>(32u))), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(func_2(vec2<bool>(global2.b, global2.b), Struct_3(4294967295u, global2.d.x, vec2<f32>(768f, 2209f)), Struct_3(u_input.a.x, 1236f, vec2<f32>(132f, -803f)), global2.d.x).x, 5151u), u_input.b), 6u)], _wgslsmith_mod_vec4_i32(~abs(u_input.c), ~vec4<i32>(18801i, u_input.c.x, u_input.c.x, u_input.c.x)), abs(vec2<u32>(firstTrailingBit(u_input.a.x), global2.e)), vec3<f32>(-614f, 717f, 110f)), (global2.c.xx & vec2<u32>(_wgslsmith_mult_u32(1u, u_input.a.x), countOneBits(25007u))) | vec2<u32>(u_input.a.x, 1u));
    var var_2 = 1i;
    var var_3 = Struct_3(firstTrailingBit(global2.e), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(countOneBits(var_1.c.x), 26873u), 14u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(702f)) + _wgslsmith_f_op_f32(step(-139f, -1379f))))));
    return Struct_3(global2.a >> (71209u % 32u), var_1.d.x, vec2<f32>(1294f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1641f + _wgslsmith_f_op_f32(ceil(-1417f))), -797f))));
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = 25097u;
    global2 = global3[_wgslsmith_index_u32(~81115u, 6u)];
    var var_1 = global3[_wgslsmith_index_u32(abs(reverseBits(12719u)), 6u)];
    var var_2 = global3[_wgslsmith_index_u32(~arg_1.a, 6u)];
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global2.e, _wgslsmith_dot_vec2_u32(var_2.c.yz & ~(vec2<u32>(1u, var_2.c.x) >> (vec2<u32>(arg_1.a, 18693u) % vec2<u32>(32u))), var_1.c.yw | func_2(select(vec2<bool>(false, false), vec2<bool>(false, false), var_2.b), Struct_3(568u, 394f, vec2<f32>(-409f, -568f)), Struct_3(var_1.a, 764f, vec2<f32>(arg_1.c.x, -1152f)), func_3(Struct_2(vec4<u32>(arg_1.a, global2.a, var_1.a, 4294967295u), Struct_1(0u, var_2.b, vec4<u32>(u_input.b, 1u, 0u, var_1.e), vec4<f32>(-1655f, arg_1.c.x, 2127f, 313f), global2.c.x), vec4<i32>(-10576i, -67808i, -39239i, u_input.c.x), var_2.c.zz, var_2.d.www), global2.c.xy).d.x).xy)), 6u)];
    return !select(vec4<bool>(var_2.b, !all(vec4<bool>(true, var_3.b, var_2.b, true)), var_1.b, var_2.b & true), select(!(!vec4<bool>(true, false, true, var_3.b)), select(select(vec4<bool>(var_3.b, var_3.b, false, var_1.b), vec4<bool>(false, var_2.b, var_1.b, var_1.b), var_1.b), select(vec4<bool>(var_3.b, var_1.b, false, global2.b), vec4<bool>(true, false, false, true), global2.b), select(vec4<bool>(var_1.b, false, false, true), vec4<bool>(false, var_1.b, global2.b, true), true)), select(vec4<bool>(false, false, true, false), !vec4<bool>(var_3.b, true, true, var_1.b), select(vec4<bool>(false, var_2.b, true, global2.b), vec4<bool>(false, var_3.b, var_3.b, false), true))), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global2.b;
    global4 = _wgslsmith_mult_i32(u_input.c.x, -u_input.c.x) > -52874i;
    let var_0 = select(select(!select(vec4<bool>(global2.b, true, global2.b, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, ~u_input.c.x < (u_input.c.x >> (15285u % 32u)), !global2.b, global2.b), !(!select(vec4<bool>(false, false, global2.b, false), vec4<bool>(false, global2.b, true, false), global2.b))), !(!func_4(-1572f, func_1())), select(vec4<bool>(true, true, true, true), vec4<bool>(select(u_input.c.x != 34933i, true, any(vec3<bool>(true, false, global2.b))), u_input.c.x != -u_input.c.x, true, global2.b), select(func_4(-212f, func_1()), !(!vec4<bool>(false, global2.b, global2.b, false)), global2.d.x >= _wgslsmith_f_op_f32(abs(1459f)))));
    let var_1 = ~(vec3<u32>(88646u, ~0u, _wgslsmith_div_u32(0u, 1u)) | ~global2.c.yzx) ^ global2.c.zzx;
    var var_2 = Struct_2(~global2.c, Struct_1(0u, all(var_0.wxw) & (!global2.b & all(var_0.zx)), vec4<u32>(var_1.x, var_1.x, 6721u, ~func_2(var_0.zy, Struct_3(global2.a, global1[_wgslsmith_index_u32(global2.a, 14u)], vec2<f32>(global1[_wgslsmith_index_u32(global2.c.x, 14u)], -150f)), Struct_3(u_input.a.x, global2.d.x, vec2<f32>(820f, 643f)), global2.d.x).x), _wgslsmith_f_op_vec4_f32(abs(global2.d)), global2.c.x), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(u_input.c.x, 0i, u_input.c.x, -1i)), u_input.c, vec4<i32>(u_input.c.x ^ 13226i, u_input.c.x, u_input.c.x, -2147483647i)) | (u_input.c & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2967i, u_input.c.x), vec2<i32>(u_input.c.x, -2147483647i)), i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, 32119i, -2147483647i, -2147483647i)), u_input.c.x)), ~(~vec2<u32>(u_input.b, reverseBits(36190u))), _wgslsmith_f_op_vec3_f32(floor(global2.d.xyy)));
    var var_3 = ~(-u_input.c.x);
    var_2 = Struct_2(~var_2.a, Struct_1(~(~(var_2.b.e | var_1.x)), true, var_2.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d.x * 479f), 1f), global2.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global2.d.x, -121f, true)))), _wgslsmith_div_f32(func_1().c.x, -837f)), _wgslsmith_clamp_u32(1u, global2.c.x << (min(global2.c.x, var_2.a.x) % 32u), ~func_1().a)), firstTrailingBit(~(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(var_2.c.x, 21334i, u_input.c.x, var_2.c.x)) << (vec4<u32>(90009u, var_1.x, 50241u, u_input.a.x) % vec4<u32>(32u)))), vec2<u32>(~func_2(select(vec2<bool>(global2.b, var_0.x), vec2<bool>(true, true), vec2<bool>(true, var_2.b.b)), func_1(), Struct_3(4294967295u, global1[_wgslsmith_index_u32(global2.e, 14u)], vec2<f32>(909f, global1[_wgslsmith_index_u32(0u, 14u)])), -136f).x, _wgslsmith_dot_vec3_u32(var_1, abs(vec3<u32>(var_2.d.x, global2.a, 55741u)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(45980u, var_2.b.a, var_2.a.x), vec3<u32>(8011u, 4294967295u, 20651u)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1197f, 912f, _wgslsmith_f_op_f32(-var_2.b.d.x))), var_2.e)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global1[_wgslsmith_index_u32(~u_input.b, 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(3277u, 14u)], global2.d.x))) + 816f)), global1[_wgslsmith_index_u32(~var_2.b.c.x, 14u)], u_input.c.zzy, min(min(~_wgslsmith_add_i32(u_input.c.x, 0i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c.zxx, vec3<i32>(var_2.c.x, var_2.c.x, -41535i)), ~vec3<i32>(var_2.c.x, -78825i, u_input.c.x))), u_input.c.x & 18376i), ~(~_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, var_1.x))));
}

