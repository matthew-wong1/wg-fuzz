struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = global0.b.a.b;
    var var_1 = -59191i;
    let var_2 = Struct_4(global0.d.d.a, global0.b);
    var var_3 = ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~reverseBits(u_input.e.xzy), vec3<u32>(37632u, u_input.b, u_input.e.x | u_input.c)), vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(965u), 102353u), u_input.e.x ^ ~u_input.b, 0u));
    var var_4 = !var_2.b.a.a;
    return 0i;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = ~arg_0.b.x;
    var var_1 = Struct_3(arg_0, !vec3<bool>(arg_2.b.b.x, false, arg_2.a.a), global0.b.a.a, arg_2.b);
    var var_2 = Struct_4(Struct_1(true, vec3<i32>(_wgslsmith_sub_i32(abs(global0.b.a.b.x), 0i), countOneBits(12623i), ~u_input.d.x)), Struct_2(Struct_1(false, vec3<i32>(u_input.d.x, select(u_input.d.x, arg_2.a.b.x, true), -21227i)), vec4<bool>(all(vec4<bool>(arg_0.a, false, var_1.d.b.x, true)), any(vec2<bool>(arg_0.a, true)) || (arg_1 >= 16205u), true, true)));
    var var_3 = -(-2147483647i | -arg_0.b.x);
    let var_4 = Struct_1(any(select(arg_2.b.b.xzw, vec3<bool>(var_2.b.b.x, var_2.b.b.x, true), select(select(vec3<bool>(true, true, var_1.d.b.x), vec3<bool>(global0.b.b.x, true, false), arg_2.a.a), !vec3<bool>(false, arg_2.b.a.a, true), vec3<bool>(arg_2.a.a, var_2.b.a.a, arg_2.a.a)))), arg_2.b.a.b << (_wgslsmith_clamp_vec3_u32(u_input.e.xwz, u_input.e.wzz | _wgslsmith_sub_vec3_u32(u_input.e.wzx, vec3<u32>(4294967295u, u_input.b, arg_1)), _wgslsmith_mult_vec3_u32(u_input.e.ywx & u_input.e.zxw, _wgslsmith_div_vec3_u32(u_input.e.xww, vec3<u32>(76279u, 4294967295u, u_input.b)))) % vec3<u32>(32u)));
    return min(reverseBits(countOneBits(-var_2.b.a.b)), _wgslsmith_mult_vec3_i32(select(arg_0.b, min(_wgslsmith_mod_vec3_i32(vec3<i32>(var_4.b.x, 16325i, var_2.a.b.x), vec3<i32>(1i, 35231i, var_2.b.a.b.x)), ~vec3<i32>(-7311i, 21765i, arg_2.b.a.b.x)), all(var_2.b.b)), _wgslsmith_add_vec3_i32(vec3<i32>(min(1i, -47436i), -var_1.a.b.x, 0i), global0.b.a.b)));
}

fn func_1(arg_0: f32) -> vec3<i32> {
    var var_0 = global0.b.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + global0.a))))));
    let var_2 = ~vec4<i32>(firstLeadingBit(firstLeadingBit(-u_input.d.x)), ~(-9755i), func_2(true), ~(-35141i));
    var_1 = _wgslsmith_div_f32(-756f, global0.a);
    var var_3 = 2147483647i;
    return ~(~abs(func_3(global0.d.d.a, 50522u, Struct_4(Struct_1(global0.c, var_0.b), Struct_2(global0.d.a, global0.d.d.b)))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: u32) -> Struct_2 {
    var var_0 = any(!select(arg_0.d.b.zx, select(!arg_0.d.b.zy, arg_0.d.b.yz, !global0.d.b.zx), any(vec4<bool>(true, global0.c, true, arg_0.c))));
    global0 = Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-161f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) * _wgslsmith_f_op_f32(-1294f + 1321f)), false)), _wgslsmith_f_op_f32(exp2(global0.a)))), Struct_2(Struct_1(true & arg_0.d.a.a, ~_wgslsmith_div_vec3_i32(u_input.a.yxw, vec3<i32>(arg_0.d.a.b.x, u_input.a.x, global0.b.a.b.x))), vec4<bool>(!global0.c, global0.d.a.a || any(arg_0.d.b), !any(arg_0.d.b.ww), global0.d.d.b.x)), global0.d.b.x && arg_0.d.a.a, global0.d);
    let var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(arg_1, arg_1), vec2<u32>(48046u, arg_3)) | countOneBits(u_input.e.zy), u_input.e.yw) >= arg_2;
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, global0.a))))), global0.d.d, select(!select(global0.c, true, true), _wgslsmith_sub_i32(global0.b.a.b.x, -1i) < 1i, _wgslsmith_f_op_f32(-global0.a) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1147f) * global0.a)), Struct_3(global0.b.a, select(!vec3<bool>(arg_0.d.a.a, var_1, true), arg_0.d.b.zwz, select(false, true, true)), !(firstTrailingBit(4294967295u) < _wgslsmith_clamp_u32(1u, arg_1, arg_3)), global0.d.d));
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global0.a))), Struct_2(global0.d.d.a, !(!select(vec4<bool>(arg_0.c, global0.b.b.x, var_1, false), arg_0.d.b, global0.b.b))), arg_0.b.x || global0.c, Struct_3(Struct_1(arg_0.d.a.b.x > _wgslsmith_dot_vec3_i32(global0.b.a.b, u_input.a.yxy), arg_0.a.b), select(vec3<bool>(true, var_1 & arg_0.d.b.x, !arg_0.a.a), arg_0.d.b.xwy, arg_0.b), all(global0.b.b), Struct_2(arg_0.d.a, !vec4<bool>(true, var_1, true, arg_0.a.a))));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.a.b;
    var var_1 = global0.d.d;
    var_1 = func_4(Struct_3(Struct_1(global0.b.b.x, func_1(_wgslsmith_f_op_f32(trunc(global0.a)))), var_1.b.xyy, true, global0.d.d), countOneBits(1u), ~(u_input.b << (countOneBits(abs(0u)) % 32u)), u_input.c);
    var_1 = func_4(Struct_3(func_4(global0.d, 45877u, firstLeadingBit(~u_input.b), ~(~13310u)).a, select(vec3<bool>(var_1.b.x || true, var_1.b.x, select(false, var_1.b.x, true)), global0.b.b.zyx, global0.b.b.zwy), false, func_4(Struct_3(global0.d.d.a, var_1.b.zxz, u_input.e.x != 35312u, global0.d.d), ~u_input.b, 0u, 0u)), _wgslsmith_dot_vec3_u32(u_input.e.zwy, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.c), u_input.e.xzz, u_input.e.yyw), vec3<u32>(u_input.e.x, u_input.e.x, u_input.b)) ^ abs(vec3<u32>(u_input.e.x, u_input.c, u_input.c))), u_input.e.x ^ (((u_input.c ^ 1u) | 29328u) << (~1u % 32u)), u_input.b);
    var var_2 = global0.b.a.a;
    var var_3 = !(!vec2<bool>(var_1.b.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, func_4(global0.d, _wgslsmith_mult_u32(reverseBits(14132u), ~4294967295u), ~(u_input.c | u_input.e.x), u_input.b).a.b.x, ~23741i, firstTrailingBit(reverseBits(var_0.x)) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, 27750u), u_input.e.x) % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -850f), u_input.a, u_input.b, reverseBits(select(u_input.e.zz | (vec2<u32>(u_input.c, u_input.e.x) | vec2<u32>(118681u, u_input.e.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.e.ww, vec2<u32>(u_input.c, u_input.e.x)), _wgslsmith_mod_u32(19966u, u_input.e.x)), any(select(vec4<bool>(true, var_3.x, true, var_3.x), vec4<bool>(true, false, false, var_1.b.x), var_1.b)))));
}

