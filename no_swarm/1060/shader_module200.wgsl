struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), vec3<f32>(-1000f, -204f, 740f), i32(-2147483648)), 133u, 4294967295u, vec4<i32>(-8745i, 1i, 1i, i32(-2147483648))), vec4<i32>(13322i, 1i, 2147483647i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec2<bool>(true, true), vec3<f32>(-711f, -1108f, 641f), i32(-2147483648)), 4294967295u, 0u, vec4<i32>(-23832i, -1i, 40518i, -1i)), vec4<i32>(-10091i, -1i, 1i, 21994i)), -1000f, vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<bool>(false, true, false));

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: vec2<f32> = vec2<f32>(442f, 330f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec2<i32> {
    global0 = Struct_4(Struct_3(arg_1.a, arg_1.a.d), global1.b, 391f, firstLeadingBit(vec3<i32>(2147483647i, ~firstTrailingBit(9688i), global1.a.a.a.d)), vec3<bool>(!(!(!global0.b.a.a.b.x)), global0.a.a.a.a.x, any(vec2<bool>(true, false)) && !(-1i <= arg_1.b.x)));
    var var_0 = ~u_input.c;
    var_0 = 2147483647i;
    global0 = Struct_4(global0.a, arg_1, global3.x, vec3<i32>(global0.d.x, max(max(~1i, ~global1.b.b.x), _wgslsmith_clamp_i32(-2147483647i, i32(-1i) * -74412i, _wgslsmith_mult_i32(-1i, u_input.c))), -1i), vec3<bool>(true, global1.e.x, any(!arg_3)));
    var_0 = 28647i;
    return vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.d.x ^ _wgslsmith_mod_i32(global0.a.b.x, arg_1.b.x), 0i, -15957i), countOneBits(~(global1.b.a.d.zzy & global1.a.a.d.xwx))), select(arg_1.a.a.d, global1.a.b.x, arg_1.a.a.b.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: u32) -> Struct_3 {
    var var_0 = global1.b;
    let var_1 = true;
    let var_2 = select(select(arg_0, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-arg_0, func_3(vec4<bool>(var_1, true, global0.b.a.a.b.x, true), Struct_3(Struct_2(global0.a.a.a, 21202u, global0.b.a.b, var_0.b), vec4<i32>(var_0.a.a.d, var_0.b.x, arg_0.x, 28201i)), vec2<u32>(u_input.b, 1u), vec4<bool>(var_1, var_0.a.a.b.x, true, true))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(var_0.a.d.wz), -u_input.d.yw, vec2<i32>(-1i, var_0.a.d.x))), select(select(vec2<bool>(true, true), !vec2<bool>(var_1, false), global0.b.a.c < 4294967295u), select(var_0.a.a.a, !vec2<bool>(var_0.a.a.b.x, false), !vec2<bool>(var_1, global1.a.a.a.b.x)), global0.a.a.a.b.x | true)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, _wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(0i, 31585i, 13189i))), vec2<i32>(select(0i, 2147483647i, global1.e.x) << (_wgslsmith_clamp_u32(global1.b.a.c, 4294967295u, 1u) % 32u), _wgslsmith_add_i32(var_0.b.x, _wgslsmith_add_i32(arg_0.x, global0.b.a.d.x)))), all(!select(vec4<bool>(var_0.a.a.a.x, var_0.a.a.a.x, global2.x, true), select(vec4<bool>(false, true, var_0.a.a.a.x, global1.a.a.a.a.x), vec4<bool>(true, true, true, var_0.a.a.a.x), var_1), global1.a.a.a.b.x)));
    var var_3 = var_0.a.a;
    let var_4 = Struct_4(global0.a, global1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, -277f))))), vec3<i32>(-(_wgslsmith_dot_vec3_i32(global0.b.a.d.xzz, u_input.d.wyw) & _wgslsmith_mult_i32(-1i, 2147483647i)), arg_0.x & 0i, -2147483647i), vec3<bool>(var_3.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(global0.b.a.d.x, 2147483647i, arg_0.x, global0.a.b.x)), select(vec4<i32>(global0.d.x, 0i, global0.d.x, 7797i), vec4<i32>(0i, 1i, var_2.x, -2147483647i), vec4<bool>(false, var_0.a.a.a.x, global0.e.x, global0.a.a.a.b.x))) <= ~global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.c)) - _wgslsmith_f_op_f32(f32(-1f) * -1411f)) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.a.a.a.c.x))))));
    return global0.b;
}

fn func_1() -> Struct_4 {
    global1 = Struct_4(func_2(global1.b.b.yw, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.a.a.c.zz), _wgslsmith_f_op_vec2_f32(-global1.a.a.a.c.xz)), global0.b.a.b), func_2(max(_wgslsmith_add_vec2_i32(global1.a.b.yw | vec2<i32>(-24282i, 46759i), -u_input.d.wz), vec2<i32>(_wgslsmith_div_i32(2147483647i, global0.d.x), _wgslsmith_mult_i32(u_input.d.x, global0.b.b.x))), global1.b.a.a.c.zx, min(_wgslsmith_add_u32(10584u, 45680u >> (global0.a.a.b % 32u)), 73544u)), global3.x, abs(reverseBits(vec3<i32>(-1255i, 1i, -global0.b.b.x))), !(!select(vec3<bool>(false, global1.e.x, false), global0.e, global1.a.a.b == 126009u)));
    let var_0 = Struct_4(global1.a, Struct_3(Struct_2(Struct_1(global2.yz, !global1.a.a.a.b, _wgslsmith_f_op_vec3_f32(global0.a.a.a.c + vec3<f32>(global3.x, global0.b.a.a.c.x, global1.a.a.a.c.x)), u_input.c), 23302u, global1.a.a.c, vec4<i32>(45870i, ~2147483647i, 1i, global0.b.a.d.x)), -global0.a.b), 447f, -(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -4939i, -29974i), ~vec3<i32>(1i, global0.d.x, 30924i))), select(global2.yxw, select(select(select(vec3<bool>(global2.x, global0.e.x, global1.e.x), global2.yyx, global1.e), select(global1.e, vec3<bool>(true, true, global0.e.x), global0.a.a.a.a.x), !global0.e), vec3<bool>(global2.x, select(global1.e.x, false, global2.x), any(vec4<bool>(true, false, false, true))), !(true & global2.x)), true));
    global3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(214f + _wgslsmith_f_op_f32(trunc(-772f)))), 1f), _wgslsmith_div_vec2_f32(global1.b.a.a.c.yy, vec2<f32>(1977f, -128f)), var_0.e.x));
    global2 = !vec4<bool>(true, global2.x, (func_2(vec2<i32>(u_input.d.x, 3546i), vec2<f32>(global3.x, global3.x), global0.b.a.b).a.a.a.x | false) | true, global0.b.a.a.b.x);
    global0 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_3(var_0.b.a, select(~(~vec4<i32>(global0.d.x, 0i, 2147483647i, u_input.c) | _wgslsmith_div_vec4_i32(global0.a.a.d, u_input.d)), ~max(vec4<i32>(global1.b.b.x, global1.a.a.a.d, 0i, -1i), vec4<i32>(-16151i, var_0.d.x, -24344i, global1.d.x)) >> (_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global0.b.a.c, global0.a.a.b, 0u, 0u)), vec4<u32>(global0.a.a.c, global0.b.a.c, var_0.a.a.c, 4294967295u) << (vec4<u32>(global1.a.a.c, global1.a.a.c, u_input.a.x, 40521u) % vec4<u32>(32u))) % vec4<u32>(32u)), global1.a.a.a.b.x || var_0.e.x));
    var var_2 = var_1.b.x;
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_1().b.a.a.c.x, _wgslsmith_f_op_f32(226f - 183f))) + vec2<f32>(global3.x, -1800f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-var_0.c))));
    global1 = Struct_4(global0.a, func_1().a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.c)) * global1.c), global3.x))), var_1.a.d.xzx, vec3<bool>(!(global0.d.x < var_1.a.d.x), !(!(false & var_1.a.a.a.x)), any(!vec4<bool>(var_0.a.a.a.a.x, var_0.a.a.a.a.x, false, global1.b.a.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c >> (_wgslsmith_clamp_u32(~4294967295u, global0.a.a.c, u_input.b << (global1.a.a.c % 32u)) % 32u), global1.c, _wgslsmith_div_vec3_i32(global1.b.b.www, var_1.b.wxz));
}

