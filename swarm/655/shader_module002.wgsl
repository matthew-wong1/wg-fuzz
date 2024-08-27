struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: Struct_3 = Struct_3(Struct_2(i32(-2147483648), vec2<f32>(-838f, 1000f), vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), 56300i, i32(-2147483648))), Struct_2(1i, vec2<f32>(923f, -578f), vec3<bool>(false, true, false), vec3<i32>(1i, 46142i, 0i)), Struct_2(1i, vec2<f32>(-382f, 794f), vec3<bool>(true, true, false), vec3<i32>(-424i, 1i, -12834i)), vec4<u32>(70851u, 35520u, 12936u, 27686u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    var var_0 = global1.c.c.x;
    let var_1 = Struct_1(firstLeadingBit(arg_1.d.wxz), 586f, !(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_1.a.a, arg_1.a.d.x, arg_0.c.a), vec4<i32>(u_input.b.x, arg_1.b.d.x, u_input.b.x, 1i)), u_input.b.x) < -abs(u_input.b.x)), -arg_1.c.a);
    global1 = Struct_3(global0[_wgslsmith_index_u32(var_1.a.x, 5u)], global1.c, arg_0.b, abs(~min(~vec4<u32>(u_input.a, 1u, global1.d.x, 62690u), max(arg_0.d, global1.d))));
    var var_2 = var_1;
    var var_3 = ~(~(vec3<u32>(global1.d.x, global1.d.x, 1u) & _wgslsmith_sub_vec3_u32(vec3<u32>(18129u, 0u, 7479u), vec3<u32>(u_input.a, var_2.a.x, 60338u))) << (~(~var_1.a << (_wgslsmith_sub_vec3_u32(arg_1.d.yxy, arg_0.d.xxz) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return 4294967295u;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> Struct_2 {
    global0 = array<Struct_2, 5>();
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(global1.d.xz, vec2<u32>(33918u, 4294967295u)), 45920u), ~(~func_3(Struct_3(global1.a, Struct_2(global1.c.a, vec2<f32>(-1000f, global1.b.b.x), global1.c.c, global1.c.d), Struct_2(arg_1.x, global1.b.b, vec3<bool>(true, true, global1.b.c.x), vec3<i32>(-27780i, global1.b.d.x, -11961i)), global1.d), Struct_3(Struct_2(global1.a.a, global1.c.b, global1.b.c, vec3<i32>(u_input.b.x, arg_1.x, u_input.b.x)), Struct_2(1i, vec2<f32>(global1.b.b.x, -1963f), vec3<bool>(arg_0, true, true), vec3<i32>(global1.b.d.x, 19904i, 63766i)), global1.a, global1.d))), 4294967295u ^ abs(1u >> (u_input.a % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b.x)), !all(vec3<bool>(arg_1.x <= -69i, false, arg_0)), -1i);
    let var_1 = max(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_1.x) ^ global1.b.d.xy, vec2<i32>(arg_1.x, -2147483647i)) >> ((firstLeadingBit(~40358u) ^ func_3(Struct_3(Struct_2(16559i, global1.b.b, global1.c.c, vec3<i32>(global1.b.a, 2147483647i, -1i)), Struct_2(u_input.b.x, global1.b.b, vec3<bool>(false, true, false), vec3<i32>(2147483647i, var_0.d, 35091i)), Struct_2(-2147483647i, vec2<f32>(var_0.b, -489f), vec3<bool>(false, false, false), vec3<i32>(arg_1.x, arg_1.x, var_0.d)), global1.d), Struct_3(global1.b, global1.c, global1.c, global1.d))) % 32u), -var_0.d);
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), 428f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.b * -1317f)))))));
    return global1.a;
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global0 = array<Struct_2, 5>();
    var var_0 = arg_0.a;
    global0 = array<Struct_2, 5>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(863f - 246f))), arg_0.c.b.x, global1.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(trunc(global1.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2240f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.b.x, -452f))))));
    return Struct_3(global0[_wgslsmith_index_u32(~abs(u_input.a), 5u)], Struct_2(27340i, var_0.b, arg_0.c.c, max(vec3<i32>(-2147483647i, 1i, 2147483647i), _wgslsmith_mult_vec3_i32(arg_0.b.d, vec3<i32>(-110889i, global1.b.a, var_0.a)))), Struct_2(15528i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(global1.a.b.x - 938f))), arg_0.a.c, ~var_0.d >> (~vec3<u32>(u_input.a, u_input.a, 53647u) % vec3<u32>(32u))), _wgslsmith_mult_vec4_u32(global1.d, vec4<u32>(~u_input.a & (1u ^ arg_0.d.x), 4294967295u, 4294967295u, ~4294967295u)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = -798f;
    global1 = func_4(Struct_3(func_2(false, u_input.b), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(global1.d, ~global1.d), 5u)], global1.c, vec4<u32>(countOneBits(global1.d.x) ^ 1u, 0u, 4294967295u, global1.d.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-2257f, global1.c.b.x, arg_0.x, 1002f), vec4<f32>(global1.a.b.x, 158f, global1.a.b.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1000f, 1828f, arg_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b.x, 315f, -752f, global1.a.b.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -213f), func_2(global1.b.c.x, u_input.b).b.x, func_4(Struct_3(global0[_wgslsmith_index_u32(global1.d.x, 5u)], Struct_2(u_input.b.x, vec2<f32>(2236f, -691f), global1.a.c, vec3<i32>(u_input.b.x, -1i, 2147483647i)), Struct_2(4210i, vec2<f32>(global1.c.b.x, arg_0.x), global1.b.c, u_input.b.zzy), global1.d)).c.b.x, _wgslsmith_f_op_f32(-1343f * -579f)) * vec4<f32>(global1.c.b.x, _wgslsmith_f_op_f32(trunc(global1.b.b.x)), 1618f, _wgslsmith_f_op_f32(floor(global1.b.b.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(func_4(Struct_3(global1.b, global0[_wgslsmith_index_u32(42294u, 5u)], Struct_2(global1.a.d.x, vec2<f32>(686f, 802f), vec3<bool>(global1.c.c.x, global1.c.c.x, global1.c.c.x), u_input.b.wwy), global1.d)).a.b.x)), _wgslsmith_f_op_f32(global1.a.b.x * global1.a.b.x), _wgslsmith_f_op_f32(min(-1298f, _wgslsmith_f_op_f32(arg_0.x * 267f)))))));
    global1 = func_4(func_4(func_4(func_4(func_4(Struct_3(global1.a, Struct_2(-1i, global1.b.b, vec3<bool>(false, global1.c.c.x, false), vec3<i32>(global1.b.a, -2147483647i, -51174i)), global0[_wgslsmith_index_u32(0u, 5u)], vec4<u32>(global1.d.x, 81564u, global1.d.x, 4294967295u)))))));
    var var_2 = Struct_1(~(vec3<u32>(~1042u, ~u_input.a, ~0u) & global1.d.wyw), 1127f, !func_2(global1.c.c.x, -vec4<i32>(u_input.b.x, 1i, -7489i, global1.c.d.x)).c.x, -8871i);
    return Struct_1(vec3<u32>(var_2.a.x, 4613u, ~global1.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-158f)) + _wgslsmith_div_f32(-1000f, global1.a.b.x)), !(u_input.a > global1.d.x))))), !any(vec2<bool>(false, global1.a.c.x)), u_input.b.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    global0 = array<Struct_2, 5>();
    let var_0 = arg_0.b;
    global0 = array<Struct_2, 5>();
    var var_1 = !global1.a.c.x;
    let var_2 = 2147483647i;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(func_5(Struct_2(_wgslsmith_div_i32(0i, global1.c.d.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(global1.a.b, global1.c.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1083f, -897f))))), !vec3<bool>(global1.b.c.x, global1.a.c.x, false), global1.b.d), func_1(global1.c.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(706f, 685f, 1105f, global1.b.b.x), vec4<f32>(830f, 1000f, global1.b.b.x, -2648f)))))), global1.c), global1.b, Struct_2(_wgslsmith_sub_i32(select(~2147483647i, u_input.b.x, true), func_1(vec2<f32>(1114f, 262f)).d << ((30328u >> (global1.d.x % 32u)) % 32u)), global1.a.b, global1.b.c, -func_4(Struct_3(Struct_2(15607i, global1.c.b, vec3<bool>(true, global1.c.c.x, global1.c.c.x), vec3<i32>(u_input.b.x, global1.a.a, -33909i)), global1.b, global0[_wgslsmith_index_u32(1u, 5u)], global1.d)).b.d), abs(_wgslsmith_mod_vec4_u32(~global1.d, ~global1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec2<u32>(global1.d.x, _wgslsmith_div_u32(global1.d.x, 47544u))), _wgslsmith_add_vec4_i32(u_input.b, firstLeadingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.b.a, -1i, -22648i, -1i), vec4<i32>(-1i, 12662i, -2147483647i, 0i)), u_input.b, -vec4<i32>(15990i, -1i, 0i, 17461i)))), u_input.b.x, -39613i);
}

