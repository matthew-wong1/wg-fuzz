struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-10172i, vec2<i32>(14921i, 49002i), vec4<u32>(4294967295u, 36127u, 0u, 53017u), vec3<u32>(71287u, 34318u, 1u));

var<private> global1: Struct_4;

var<private> global2: array<bool, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    global2 = array<bool, 29>();
    let var_0 = Struct_2(vec3<u32>(~(min(global0.c.x, 21205u) >> (~global0.c.x % 32u)), global0.c.x, 0u), Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(9546i, global0.a), 0i), ~(-12126i)), vec2<i32>(u_input.a, -u_input.b.x), ~global0.c, global0.c.xxz), 1i);
    return Struct_1(-(u_input.a ^ _wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.b.x)), vec2<i32>(-(~16152i), global0.b.x << (~0u % 32u)) ^ vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(global0.a, global0.a), -global0.a), 19341i), abs(vec4<u32>(47398u, var_0.b.d.x, 67326u, 1u)), ~vec3<u32>(var_0.b.d.x, var_0.b.d.x, var_0.a.x));
}

fn func_3(arg_0: vec4<i32>) -> vec3<i32> {
    var var_0 = !select(!select(!vec4<bool>(true, true, true, global1.b), select(vec4<bool>(global2[_wgslsmith_index_u32(global0.c.x, 29u)], global1.b, true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 29u)], global1.b, global1.b), true), false), vec4<bool>(true, !(!global2[_wgslsmith_index_u32(global0.d.x, 29u)]), true, global1.b), true);
    let var_1 = Struct_5(vec4<i32>(countOneBits(4853i), i32(-1i) * -24588i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, 2147483647i), -global0.b), 25657i) | ~(-(u_input.b & u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.a, 285f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, 1745f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-382f, -165f) + vec2<f32>(1964f, global1.a))))));
    global1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.a)), 395f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f))))), true & !(!global2[_wgslsmith_index_u32(global0.d.x, 29u)]));
    let var_2 = Struct_3(~global0.d, 907f);
    let var_3 = Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.a.zz, reverseBits(var_2.a.zz)), 32116u, _wgslsmith_mult_u32(global0.d.x, 87119u)), Struct_1(-reverseBits(-arg_0.x), vec2<i32>(21959i, global0.b.x >> ((global0.d.x | 78983u) % 32u)), vec4<u32>(40229u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.x, 38533u), ~vec2<u32>(var_2.a.x, 0u)), _wgslsmith_sub_u32(52154u, global0.d.x << (var_2.a.x % 32u)), _wgslsmith_div_u32(global0.d.x, global0.d.x) >> (~119325u % 32u)), var_2.a), reverseBits(arg_0.x));
    return vec3<i32>(_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(select(0i, u_input.a, global2[_wgslsmith_index_u32(var_2.a.x, 29u)]), global0.b.x), 1i, var_1.a.x), _wgslsmith_mult_i32(~countOneBits(i32(-1i) * -29269i), global0.b.x), max(_wgslsmith_dot_vec2_i32(min(abs(vec2<i32>(-15377i, 37885i)), vec2<i32>(global0.a, var_1.a.x)), vec2<i32>(_wgslsmith_add_i32(0i, var_3.c), ~var_1.a.x)), _wgslsmith_clamp_i32(var_1.a.x, 54237i, func_1(!global1.b, true).b.x)));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = any(!select(vec2<bool>(select(global1.b, false, global2[_wgslsmith_index_u32(global0.d.x, 29u)]), -2037f != global1.a), arg_2.zz, !select(arg_2.wy, arg_2.yw, vec2<bool>(global2[_wgslsmith_index_u32(global0.c.x, 29u)], true))));
    global2 = array<bool, 29>();
    var var_1 = 2147483647i;
    let var_2 = reverseBits(50585u) << (func_1(any(select(select(arg_2.xz, vec2<bool>(global1.b, false), true), select(arg_2.wy, arg_2.zz, false), !arg_2.yx)), global2[_wgslsmith_index_u32(15494u, 29u)]).c.x % 32u);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a)));
    return _wgslsmith_add_vec4_u32(global0.c, countOneBits(reverseBits(~firstTrailingBit(vec4<u32>(global0.d.x, var_2, 4294967295u, global0.d.x)))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(~(max(func_1(false, true).c.yzz, global0.d) | func_1(global2[_wgslsmith_index_u32(abs(global0.c.x), 29u)], any(vec3<bool>(false, true, global2[_wgslsmith_index_u32(60933u, 29u)]))).d), Struct_1(global0.a << (global0.d.x % 32u), vec2<i32>(-(36964i << (global0.d.x % 32u)), ~_wgslsmith_mod_i32(u_input.b.x, global0.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.d.x, _wgslsmith_mod_u32(1u, 1u), ~0u, _wgslsmith_sub_u32(4294967295u, global0.d.x)), func_4(global0.a, func_3(vec4<i32>(-4263i, u_input.a, global0.b.x, 0i)), vec4<bool>(true, global2[_wgslsmith_index_u32(global0.c.x, 29u)], global2[_wgslsmith_index_u32(1196u, 29u)], true), ~u_input.b)), ~vec3<u32>(~global0.d.x, 1u << (global0.d.x % 32u), 400u)), _wgslsmith_mult_i32(global0.a, global0.b.x));
    global2 = array<bool, 29>();
    var var_1 = true && (-700f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + global1.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(682f)) + _wgslsmith_f_op_f32(round(global1.a)))));
    var_0 = Struct_2(var_0.b.c.yxy << ((~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.x, 60218u, global0.c.x), vec3<u32>(var_0.a.x, 72694u, global0.d.x)) ^ global0.d) % vec3<u32>(32u)), Struct_1(func_1(var_0.b.a < ~global0.a, true).b.x, var_0.b.b, global0.c, abs(vec3<u32>(~65184u, _wgslsmith_dot_vec3_u32(vec3<u32>(90889u, var_0.b.d.x, global0.d.x), vec3<u32>(global0.c.x, 0u, 42177u)), ~4294967295u))), var_0.c);
    var_1 = true | any(!select(!vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(0u, 29u)]), select(vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(3931u, 29u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(global0.c.x, 29u)], false, global1.b), global1.b), select(vec4<bool>(global1.b, false, global1.b, global1.b), vec4<bool>(global1.b, global2[_wgslsmith_index_u32(0u, 29u)], true, true), global2[_wgslsmith_index_u32(17067u, 29u)])));
    return Struct_2(vec3<u32>(~(var_0.b.d.x & var_0.b.d.x), 60492u, ~(~global0.c.x) & global0.d.x), Struct_1(func_3(_wgslsmith_div_vec4_i32(max(u_input.b, vec4<i32>(2147483647i, 65936i, 0i, global0.a)), firstLeadingBit(u_input.b))).x, min(~u_input.b.zz, vec2<i32>(u_input.a, _wgslsmith_mod_i32(-17414i, var_0.b.a))), ~(~firstTrailingBit(vec4<u32>(4467u, var_0.a.x, 0u, 4294967295u))), abs(~vec3<u32>(19120u, global0.c.x, global0.c.x))), -40767i & var_0.c);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = false;
    let var_1 = func_2();
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), global1.a, ~(~2147483647i) < var_2.b.a));
    var var_4 = -2147483647i;
    return vec3<f32>(global1.a, 1f, _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(select(global1.a, -394f, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b), reverseBits(u_input.b))) << (global0.c % vec4<u32>(32u));
    global0 = func_1(!global2[_wgslsmith_index_u32(max(18348u, 1u), 29u)], global1.b);
    global2 = array<bool, 29>();
    global2 = array<bool, 29>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1060f, global1.a)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1083f, -1000f, !(!(global2[_wgslsmith_index_u32(14344u, 29u)] | global1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(14176u, global0.c.x, global0.d.x)), vec3<u32>(global0.d.x, 36554u, global0.d.x)) | _wgslsmith_sub_vec3_u32(vec3<u32>(~99206u, 0u, global0.c.x), reverseBits(global0.c.zww) << (reverseBits(global0.c.wyw) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(344f, 1538f, var_1.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 1760f, 146f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_mod_vec3_u32(global0.c.xwy, vec3<u32>(global0.c.x, global0.d.x, global0.d.x)), func_2()))), !(all(vec3<bool>(global1.b, true, global2[_wgslsmith_index_u32(global0.c.x, 29u)])) & (u_input.a >= -2147483647i)))));
}

