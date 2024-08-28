struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<bool, 23> = array<bool, 23>(true, true, true, true, true, true, true, false, false, true, false, true, true, true, false, false, false, false, true, false, false, true, true);

var<private> global2: Struct_1;

var<private> global3: Struct_4;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> i32 {
    var var_0 = u_input.b.yzw;
    global1 = array<bool, 23>();
    var var_1 = global3.b;
    var var_2 = _wgslsmith_mod_u32(global3.b.a.x & ~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global2.c.zy, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(global3.b.b.c.xz, arg_0.zz, arg_0.xz), global3.b.c.c.yw)), 34177u));
    var var_3 = _wgslsmith_div_vec4_i32(min(_wgslsmith_mod_vec4_i32(~(-u_input.b), min(u_input.b, -u_input.b)), u_input.b), firstLeadingBit(u_input.b | u_input.b));
    return -38487i;
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_4(global3.c > -_wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, u_input.b.x), ~u_input.c), Struct_2(~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, global2.c.x, global2.c.x), vec3<u32>(global2.a, global2.a, global3.b.d.a))), Struct_1(~(~global2.a), _wgslsmith_f_op_f32(1173f * -510f), reverseBits(~global3.b.d.c)), global3.b.d, global3.b.d), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~func_3(vec3<u32>(global2.a, global3.b.c.a, global2.a), -1i), i32(-1i) * -2147483647i), -85714i), global3.d);
    var_0 = Struct_4(false, Struct_2(global2.c.wwx, Struct_1(_wgslsmith_clamp_u32(var_0.b.a.x, _wgslsmith_add_u32(53608u, global3.b.d.c.x), ~62190u), global3.b.c.b, ~_wgslsmith_clamp_vec4_u32(var_0.b.c.c, global3.b.b.c, vec4<u32>(global3.b.a.x, 4294967295u, 22194u, 18727u))), var_0.b.b, Struct_1(global2.c.x << ((global2.c.x >> (var_0.b.c.c.x % 32u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * -1296f)), global3.b.d.c)), 1i, true);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-1139f * _wgslsmith_f_op_f32(global2.b - -1287f)), global3.b.c, vec4<i32>(-2147483647i, ~u_input.b.x, _wgslsmith_sub_i32(global3.c, -u_input.c), reverseBits(_wgslsmith_sub_i32(i32(-1i) * -42919i, 44118i))), Struct_2(global2.c.xww & select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.c.a, 1u, 15543u), global3.b.c.c.zxy), global3.b.b.c.yxx, select(vec3<bool>(global1[_wgslsmith_index_u32(42028u, 23u)], false, true), vec3<bool>(var_0.d, false, false), global1[_wgslsmith_index_u32(48202u, 23u)])), var_0.b.c, Struct_1(global2.c.x, 1f, min(~global3.b.b.c, vec4<u32>(8366u, global3.b.d.c.x, 4294967295u, 1204u))), var_0.b.c));
    var var_2 = Struct_4(var_0.d, Struct_2(vec3<u32>(global3.b.d.c.x, var_1.d.d.a << (firstLeadingBit(global3.b.c.c.x) % 32u), 86655u), Struct_1(firstLeadingBit(firstTrailingBit(0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_f_op_f32(sign(global3.b.c.b))), countOneBits(~global3.b.c.c)), global3.b.b, global3.b.d), 2180i, !all(!select(vec2<bool>(true, global3.d), vec2<bool>(false, false), vec2<bool>(false, false))));
    var_0 = Struct_4(false, Struct_2(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(36615u, 1u, var_0.b.c.c.x), vec3<u32>(1u, 0u, var_0.b.d.c.x), vec3<u32>(var_0.b.c.c.x, global3.b.a.x, 52345u))), var_0.b.c, var_1.d.d, global3.b.c), firstLeadingBit(-9345i), var_0.a);
    return select((vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.c, var_1.c.x), var_1.c.yx, vec2<i32>(-13859i, var_2.c))) | vec2<i32>(1498i, _wgslsmith_dot_vec4_i32(select(var_1.c, var_1.c, vec4<bool>(true, true, true, false)), u_input.b & vec4<i32>(0i, var_0.c, var_1.c.x, 26004i))), _wgslsmith_div_vec2_i32(~var_1.c.zx, min(_wgslsmith_mod_vec2_i32(select(u_input.b.zw, vec2<i32>(-4071i, var_2.c), var_0.d), vec2<i32>(u_input.b.x, var_2.c)), u_input.a.xy)), vec2<bool>(any(select(select(vec4<bool>(false, true, var_2.d, var_0.a), vec4<bool>(true, false, var_2.d, var_2.a), true), select(vec4<bool>(false, var_0.a, global3.d, global3.d), vec4<bool>(true, false, false, true), global3.a), vec4<bool>(false, false, var_0.a, global1[_wgslsmith_index_u32(var_0.b.c.a, 23u)]))), any(!vec3<bool>(true, global3.d, false)) && false));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(0u, global2.a)), vec2<u32>(~global2.c.x, ~4294967295u)), vec2<u32>(abs(_wgslsmith_sub_u32(25654u, global2.c.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a, global3.b.a.x, arg_2.b.c.x, 1u), arg_2.b.c), firstTrailingBit(global2.c))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1000f)))) * _wgslsmith_f_op_f32(545f - global2.b))));
    global2 = global3.b.c;
    var var_2 = arg_2;
    global2 = var_2.b;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - -117f), _wgslsmith_f_op_f32(669f - 1548f)) - -1840f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-238f, _wgslsmith_f_op_f32(-563f + _wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1639f + 366f)))), arg_1);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: bool) -> bool {
    global0 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 12000i, u_input.c), vec3<i32>(u_input.b.x, u_input.c, global3.c))), _wgslsmith_mod_i32(global3.c, 1i)), func_2()), 1181f, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.b - global3.b.d.b))) + global3.b.d.b), Struct_1(~arg_0, -774f, ~(~vec4<u32>(global3.b.a.x, 4294967295u, 4294967295u, 4294967295u))), ~u_input.b, global3.b)));
    global1 = array<bool, 23>();
    let var_1 = global3.b.d;
    global1 = array<bool, 23>();
    return !(!all(!select(vec4<bool>(global3.d, arg_1.x, false, false), vec4<bool>(true, arg_2, false, arg_2), vec4<bool>(arg_1.x, global3.a, global3.d, global3.d))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_5) -> Struct_1 {
    let var_0 = ~(~(_wgslsmith_div_vec2_u32(~global3.b.d.c.xw, ~vec2<u32>(0u, 1u)) >> (abs(_wgslsmith_mult_vec2_u32(global3.b.c.c.yz, global3.b.b.c.wz)) % vec2<u32>(32u))));
    let var_1 = global0[_wgslsmith_index_u32(1u, 10u)];
    let var_2 = select(select(u_input.b, -vec4<i32>(~u_input.a.x, 1i, _wgslsmith_sub_i32(global3.c, -1i), global3.c), select(!vec4<bool>(false, false, arg_0.x, true), !select(vec4<bool>(true, false, true, global3.a), vec4<bool>(true, global3.d, arg_0.x, global1[_wgslsmith_index_u32(26816u, 23u)]), arg_0.x), true | select(true, arg_0.x, false))), ~(~u_input.b), func_1(~96306u, arg_0.zx, true));
    let var_3 = ~_wgslsmith_mult_vec3_i32(~(~(~u_input.a)), abs(min(u_input.a, u_input.a) & var_2.xxx));
    global2 = Struct_1(_wgslsmith_dot_vec2_u32(global2.c.wx, reverseBits(vec2<u32>(1u & global3.b.a.x, 0u))), _wgslsmith_f_op_f32(-var_1.b.b), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, global3.b.d.a, 38700u, 4976u), global3.b.c.c) >> (_wgslsmith_mod_vec4_u32(global3.b.d.c, global2.c) % vec4<u32>(32u))) >> (((vec4<u32>(0u, 90379u, 1u, var_1.d.a) & (var_1.d.c >> (global3.b.b.c % vec4<u32>(32u)))) << (vec4<u32>(global2.c.x, _wgslsmith_mod_u32(global2.c.x, var_0.x), ~1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return Struct_1(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_0.x, global2.a), select(4294967295u, global2.c.x, true), global2.a >> (53245u % 32u)), vec3<u32>(44366u, 0u, var_0.x) >> (abs(global2.c.ywx) % vec3<u32>(32u)))), 157f, abs(vec4<u32>(1u, min(_wgslsmith_clamp_u32(1u, 32896u, var_1.d.c.x), _wgslsmith_mult_u32(0u, global3.b.b.c.x)), 19656u, ~global3.b.d.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = true;
    let var_2 = global3.b.b;
    global2 = func_5(select(vec3<bool>(select(!global3.d, true, true), func_1(53515u, !vec2<bool>(global3.a, true), any(vec4<bool>(false, global1[_wgslsmith_index_u32(var_2.a, 23u)], global1[_wgslsmith_index_u32(10918u, 23u)], global3.d))), any(select(vec3<bool>(global1[_wgslsmith_index_u32(var_0, 23u)], global3.a, true), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0, 23u)], true), vec3<bool>(false, true, true)))), select(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 23u)], false), vec3<bool>(global3.d, global1[_wgslsmith_index_u32(48516u, 23u)], false), vec3<bool>(true, global3.a, true)), select(vec3<bool>(global1[_wgslsmith_index_u32(var_0, 23u)], true, global1[_wgslsmith_index_u32(4294967295u, 23u)]), !vec3<bool>(global1[_wgslsmith_index_u32(global2.c.x, 23u)], false, global3.d), vec3<bool>(global3.d, true, false)), !vec3<bool>(global1[_wgslsmith_index_u32(16629u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], true)), vec3<bool>(false, true, select(true, global3.d, true))), Struct_5(-970f));
    global0 = array<Struct_2, 10>();
    global1 = array<bool, 23>();
    global1 = array<bool, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(-global3.c, vec4<u32>(reverseBits(1u) << (func_5(vec3<bool>(false, true, true), Struct_5(-1000f)).a % 32u), reverseBits(~62493u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, var_2.c.x) ^ ~1u, (79069u | global2.c.x) >> (1u % 32u)) >> (global2.c % vec4<u32>(32u)));
}

