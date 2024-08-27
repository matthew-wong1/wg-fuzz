struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> u32 {
    var var_0 = ~_wgslsmith_sub_vec2_u32(~u_input.b.wz, min(u_input.b.zz, global0.c.b.b)) >> (~(~(~global0.c.c)) % vec2<u32>(32u));
    var var_1 = global0.c.b;
    var_0 = u_input.b.zx;
    var_0 = ~vec2<u32>(var_0.x, var_1.a & _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, var_1.a), _wgslsmith_sub_u32(u_input.b.x, var_1.a)));
    var_0 = ~abs(global0.a.c);
    return 0u;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = Struct_3(Struct_2(u_input.c >> (func_3(vec2<bool>(false, true), -1069f) % 32u), global0.c.b, vec2<u32>(21308u, 0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-498f, 1000f, 750f, -455f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.d)))), 0i, global0.a);
    var var_2 = -(~2147483647i);
    let var_3 = Struct_3(global0.a, _wgslsmith_add_i32(global0.c.b.d.x, var_1.b), var_1.c);
    var_2 = countOneBits(var_1.a.a);
    return var_1.a.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global0 = Struct_3(arg_2, -max(-(~u_input.c), -arg_2.b.d.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(5029u, arg_1.b.x, 1u), u_input.b.xyy) % 32u)), Struct_2(firstLeadingBit(_wgslsmith_dot_vec2_i32(max(global0.a.b.c.zy, vec2<i32>(-7527i, -2147483647i)), vec2<i32>(-1i, -58884i) & arg_1.d.yz)), Struct_1(1u, firstTrailingBit(~vec2<u32>(0u, 132205u)), firstLeadingBit(arg_1.c), _wgslsmith_clamp_vec3_i32(u_input.a.zyx, u_input.a.xwx, vec3<i32>(-1i, global0.a.a, -4778i)) & (u_input.a.xzw & arg_3.b.c.wxy)), select(~vec2<u32>(arg_1.a, 0u) << (global0.c.c % vec2<u32>(32u)), countOneBits(vec2<u32>(4294967295u, arg_3.b.a)), true), _wgslsmith_f_op_vec4_f32(arg_2.d * vec4<f32>(1538f, global0.c.d.x, -958f, arg_0))));
    global0 = Struct_3(arg_3, -24047i, arg_2);
    let var_0 = -u_input.a.xyw;
    let var_1 = arg_1;
    var var_2 = func_2();
    return Struct_2(-func_2().d.x, Struct_1(_wgslsmith_div_u32(0u, u_input.b.x), vec2<u32>(~max(0u, 0u), 4294967295u), abs(~(~vec4<i32>(0i, u_input.a.x, var_1.d.x, var_1.d.x))), -vec3<i32>(select(global0.a.a, 2147483647i, true), ~38748i, 1i)), vec2<u32>(_wgslsmith_div_u32(arg_1.a, 33544u), global0.a.b.a), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-309f * arg_3.d.x)))), 496f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(arg_0 + -1000f)), 628f));
}

fn func_1() -> Struct_2 {
    global0 = Struct_3(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.d.x, global0.a.d.x)))), global0.a.b, Struct_2(_wgslsmith_add_i32(-2147483647i, ~(-57662i)), func_2(), global0.a.b.b, vec4<f32>(666f, 1127f, _wgslsmith_div_f32(global0.a.d.x, global0.a.d.x), _wgslsmith_f_op_f32(global0.a.d.x - global0.c.d.x))), Struct_2(u_input.a.x, Struct_1(reverseBits(4294967295u), u_input.b.zx, u_input.a >> (vec4<u32>(0u, 4294967295u, global0.a.b.a, 58109u) % vec4<u32>(32u)), global0.c.b.c.yzz), ~(u_input.b.yz ^ u_input.b.zy), vec4<f32>(global0.c.d.x, _wgslsmith_f_op_f32(global0.a.d.x + global0.a.d.x), global0.c.d.x, -497f))), ~_wgslsmith_sub_i32(u_input.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.a.b.b.x, u_input.b.x), u_input.b.wzz) % 32u), abs(global0.a.a)), Struct_2(~(-77010i), Struct_1(abs(firstLeadingBit(0u)), vec2<u32>(~u_input.b.x, func_3(vec2<bool>(true, false), 880f)), func_4(global0.c.d.x, global0.a.b, Struct_2(global0.b, global0.a.b, u_input.b.zw, global0.c.d), global0.a).b.c, vec3<i32>(2147483647i, u_input.c, _wgslsmith_div_i32(521i, -4098i))), vec2<u32>(func_4(_wgslsmith_f_op_f32(select(global0.a.d.x, global0.a.d.x, false)), func_4(global0.c.d.x, global0.a.b, global0.a, global0.c).b, Struct_2(u_input.c, global0.a.b, vec2<u32>(global0.a.b.b.x, 1u), vec4<f32>(869f, global0.a.d.x, 1000f, global0.c.d.x)), func_4(-1153f, global0.c.b, global0.c, Struct_2(u_input.a.x, Struct_1(0u, global0.a.b.b, vec4<i32>(15936i, global0.b, 2147483647i, 2147483647i), u_input.a.yyw), vec2<u32>(0u, u_input.b.x), vec4<f32>(global0.c.d.x, -167f, global0.c.d.x, global0.a.d.x)))).c.x, global0.c.c.x), vec4<f32>(func_4(global0.c.d.x, func_4(-497f, global0.a.b, global0.c, global0.a).b, global0.c, func_4(global0.a.d.x, Struct_1(global0.a.b.a, u_input.b.zx, u_input.a, vec3<i32>(-14618i, 15933i, 1i)), Struct_2(global0.b, Struct_1(u_input.b.x, vec2<u32>(u_input.b.x, u_input.b.x), vec4<i32>(-32402i, 1i, -2147483647i, global0.a.a), u_input.a.zwz), global0.c.c, global0.c.d), global0.a)).d.x, -918f, -1375f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1596f)), global0.a.d.x))));
    let var_0 = Struct_1(119986u, countOneBits(_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, global0.c.b.a), vec2<u32>(global0.a.b.b.x, 0u)), ~u_input.b.wz)), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-2028f)))), _wgslsmith_f_op_f32(-global0.a.d.x)), func_2(), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-982f, global0.c.d.x)) + 1041f), func_4(-834f, func_2(), func_4(global0.c.d.x, global0.c.b, Struct_2(-13229i, Struct_1(79141u, vec2<u32>(62952u, u_input.b.x), vec4<i32>(2147483647i, -23527i, u_input.c, 2147483647i), u_input.a.xxw), u_input.b.xz, global0.a.d), global0.c), global0.c).b, Struct_2(~0i, global0.c.b, vec2<u32>(79381u, u_input.b.x), vec4<f32>(1050f, -373f, global0.c.d.x, global0.a.d.x)), global0.c), global0.c).b.c, -u_input.a.zww);
    let var_1 = true;
    global0 = Struct_3(func_4(global0.c.d.x, var_0, func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(324f - 167f))), var_0, Struct_2(var_0.d.x, func_2(), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(28109u, 4294967295u), global0.a.c), _wgslsmith_f_op_vec4_f32(global0.a.d * vec4<f32>(173f, 1506f, -309f, 1718f))), Struct_2(abs(0i), var_0, var_0.b | var_0.b, vec4<f32>(global0.c.d.x, -1922f, global0.c.d.x, -278f))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(129f, global0.c.d.x))), Struct_1(1u, firstTrailingBit(global0.a.b.b), var_0.c, vec3<i32>(2147483647i, var_0.d.x, u_input.a.x)), Struct_2(max(-1i, global0.c.b.d.x), var_0, var_0.b, _wgslsmith_div_vec4_f32(global0.c.d, vec4<f32>(-802f, global0.c.d.x, 1000f, global0.c.d.x))), Struct_2(52490i << (var_0.a % 32u), Struct_1(u_input.b.x, vec2<u32>(39844u, 20461u), var_0.c, vec3<i32>(global0.c.a, u_input.a.x, global0.a.b.c.x)), vec2<u32>(1u, 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.d.x, global0.c.d.x, global0.a.d.x, -1333f))))), global0.a.a, func_4(-1000f, global0.a.b, Struct_2(global0.c.b.c.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(2292u, 0u, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, global0.a.b.a)) % 32u), func_2(), ~(vec2<u32>(8609u, u_input.b.x) & var_0.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1658f, global0.c.d.x, global0.a.d.x, -920f) * vec4<f32>(global0.a.d.x, global0.a.d.x, -1000f, 1348f)), global0.c.d, var_1))), global0.c));
    let var_2 = _wgslsmith_f_op_f32(global0.c.d.x + 1492f);
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = Struct_3(func_1(), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-u_input.a, _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(2147483647i, 9670i, 0i, var_0)), u_input.a), global0.c.b.c), _wgslsmith_clamp_i32(-64636i, var_0, select(-2147483647i, ~var_0, all(vec4<bool>(true, false, true, false))))), func_4(_wgslsmith_f_op_f32(-1000f * 167f), func_2(), global0.c, Struct_2(_wgslsmith_mult_i32(-18910i, -2412i), global0.a.b, ~_wgslsmith_div_vec2_u32(vec2<u32>(global0.c.c.x, global0.a.c.x), vec2<u32>(46041u, 13248u)), vec4<f32>(_wgslsmith_f_op_f32(ceil(172f)), _wgslsmith_f_op_f32(-496f - 378f), 1579f, 1169f))));
    var var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -12339i, reverseBits(-2147483647i), select(u_input.a.x, global0.c.a, all(vec4<bool>(false, false, false, false))))), _wgslsmith_clamp_vec4_i32(select(~(vec4<i32>(2147483647i, u_input.a.x, -539i, global0.b) & vec4<i32>(9924i, global0.b, u_input.c, var_1.b)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b, var_1.a.a, 8376i, var_0), vec4<i32>(u_input.c, -1i, u_input.a.x, u_input.a.x), global0.a.b.c)), vec4<bool>(any(vec3<bool>(true, false, true)), true, any(vec2<bool>(true, true)), true)), var_1.c.b.c, firstTrailingBit(~select(vec4<i32>(u_input.a.x, 1i, var_1.a.a, 41460i), var_1.a.b.c, true))), global0.c.b.c);
    let var_3 = u_input.b.zxx;
    var_2 = ~vec4<i32>(-41593i, ~_wgslsmith_clamp_i32(u_input.a.x, ~var_0, func_1().a), ~(-10619i), -firstLeadingBit(i32(-1i) * -14634i));
    var var_4 = _wgslsmith_add_u32(global0.a.b.b.x, 1u ^ var_3.x);
    var_2 = -global0.c.b.c;
    let var_5 = vec3<bool>(var_3.x > 0u, false, func_1().d.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.d.x + global0.c.d.x) + _wgslsmith_f_op_f32(1320f * var_1.a.d.x)) + var_1.a.d.x));
    var_4 = _wgslsmith_add_u32(var_3.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yyw, (var_1.a.b.c.xyz << (vec3<u32>(global0.a.c.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) >> (var_3 % vec3<u32>(32u))), select(func_4(1539f, var_1.a.b, global0.a, func_4(var_1.c.d.x, global0.c.b, global0.c, global0.a)).a, abs(6811i) ^ u_input.a.x, false), _wgslsmith_div_i32(firstLeadingBit(i32(-1i) * -58439i), -2147483647i), -40188i), _wgslsmith_div_i32(u_input.c << (firstLeadingBit(global0.a.c.x) % 32u), var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.d.x))), var_1.c.d.x, -752f)));
}

