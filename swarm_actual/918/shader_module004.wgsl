struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 91297u;

var<private> global1: Struct_4 = Struct_4(Struct_2(vec3<i32>(13731i, 21104i, -10641i), Struct_1(-1i, -46972i, vec2<u32>(21362u, 0u), vec3<i32>(-1i, -1i, 16189i), vec3<f32>(1000f, -1821f, -1361f)), false), vec3<bool>(true, false, false), Struct_2(vec3<i32>(-34234i, 23549i, 0i), Struct_1(-1i, i32(-2147483648), vec2<u32>(0u, 0u), vec3<i32>(2147483647i, -39755i, -1i), vec3<f32>(730f, -242f, 391f)), true), Struct_1(1i, -12156i, vec2<u32>(49101u, 0u), vec3<i32>(979i, 10935i, 43286i), vec3<f32>(407f, -1606f, 388f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: bool) -> bool {
    var var_0 = global1.c.c;
    let var_1 = Struct_4(global1.c, !vec3<bool>(true & global1.a.c, false, false), Struct_2(~(~vec3<i32>(global1.a.a.x, -40333i, 0i)), Struct_1(~firstTrailingBit(6749i), _wgslsmith_mod_i32(-59705i ^ arg_0, reverseBits(global1.d.a)), min(firstLeadingBit(global1.a.b.c), global1.d.c), vec3<i32>(1i, global1.c.a.x, -37675i) | abs(global1.c.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1088f, global1.c.b.e.x, global1.d.e.x)))), true), global1.a.b);
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~(~u_input.b.x)), global1.d.c.x), _wgslsmith_sub_vec2_u32(var_1.d.c | (abs(vec2<u32>(41733u, 0u)) << (~global1.c.b.c % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(~var_1.d.c.x, min(18129u, u_input.c.x)))));
    let var_3 = global1.b.zy;
    let var_4 = Struct_3(vec2<u32>(var_1.d.c.x, firstTrailingBit(min(u_input.a, global1.a.b.c.x))) | (select(vec2<u32>(var_2.x, var_1.a.b.c.x), vec2<u32>(1u, global1.d.c.x) | var_1.a.b.c, select(vec2<bool>(false, true), vec2<bool>(false, var_3.x), arg_3)) & ~select(vec2<u32>(var_1.d.c.x, var_2.x), vec2<u32>(global1.d.c.x, 1u), vec2<bool>(true, arg_3))), var_1.b.xx, all(!select(global1.b.yy, vec2<bool>(true, true), vec2<bool>(true, false))), var_1.d, Struct_1(arg_0 ^ _wgslsmith_mod_i32(abs(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(680i, arg_0, 0i), global1.d.d)), arg_0, countOneBits(var_2) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global1.c.b.c.x, u_input.b.x), vec2<u32>(48284u, var_1.a.b.c.x) | var_1.a.b.c) % vec2<u32>(32u)), var_1.a.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-373f - arg_2.x), global1.d.e.x, _wgslsmith_f_op_f32(step(-654f, var_1.a.b.e.x))) - global1.c.b.e)));
    return !(global1.c.b.b == ~1i);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    global1 = Struct_4(global1.c, global1.b, Struct_2(vec3<i32>(0i, -global1.a.a.x, 1i << ((u_input.b.x << (1u % 32u)) % 32u)), Struct_1(-1i, 2147483647i, ~(~global1.a.b.c), _wgslsmith_mod_vec3_i32(~global1.d.d, ~global1.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b.e.x, arg_0.e.x, global1.c.b.e.x))), !global1.a.c), arg_0);
    var var_0 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(2147483647i, arg_0.b), 2147483647i, _wgslsmith_sub_i32(~2147483647i, arg_0.d.x), arg_0.d.x), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a.b.a, arg_0.a, arg_0.a, arg_0.b) << (vec4<u32>(18482u, arg_0.c.x, global1.a.b.c.x, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(-1i, arg_0.a, global1.c.b.a, global1.d.d.x), max(vec4<i32>(2147483647i, global1.a.a.x, 53582i, arg_0.d.x), vec4<i32>(2147483647i, arg_0.d.x, arg_0.a, arg_0.b)))));
    let var_1 = !any(select(select(!vec4<bool>(true, true, global1.a.c, global1.c.c), vec4<bool>(false, false, global1.a.c, global1.c.c), true), vec4<bool>(false, !global1.a.c, false, true), vec4<bool>(global1.a.b.c.x != 32868u, func_3(0i, vec4<f32>(101f, -495f, global1.a.b.e.x, arg_1), vec3<f32>(arg_1, arg_0.e.x, arg_1), global1.c.c), true, global1.c.c || false)));
    let var_2 = false;
    let var_3 = arg_0.d.zy;
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~global1.a.b.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(1u, arg_0.c.x, 0u), vec3<u32>(1u, arg_0.c.x, arg_0.c.x)), vec3<u32>(1u, 41442u, global1.c.b.c.x))), countOneBits(select(~vec2<u32>(arg_0.c.x, u_input.c.x), vec2<u32>(u_input.b.x, 1u), true))), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 1u, 4294967295u), ~4294967295u));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    global1 = Struct_4(global1.c, vec3<bool>(global1.a.c, !(_wgslsmith_add_u32(0u, 0u) >= func_2(global1.a.b, 258f)), false), Struct_2(global1.d.d, Struct_1(~global1.c.a.x, arg_1.e.a, vec2<u32>(~21516u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.c.x, 1u, 50552u, u_input.b.x), vec4<u32>(u_input.a, 39989u, 22104u, 48595u))), arg_1.e.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d.e) + vec3<f32>(arg_1.e.e.x, arg_1.d.e.x, global1.a.b.e.x))), true), Struct_1(_wgslsmith_sub_i32(countOneBits(-43597i), abs(global1.c.b.a ^ global1.d.d.x)), -firstTrailingBit(arg_1.d.d.x & arg_1.e.b), global1.a.b.c, -vec3<i32>(_wgslsmith_mod_i32(1i, arg_1.d.a), arg_1.d.d.x, arg_1.d.d.x), _wgslsmith_f_op_vec3_f32(arg_1.e.e * global1.d.e)));
    global1 = Struct_4(global1.c, vec3<bool>(!(global1.d.d.x < _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.a, global1.c.a.x, global1.a.b.a, 1i), vec4<i32>(arg_1.d.b, arg_1.d.d.x, 2147483647i, 0i))), all(select(!vec4<bool>(arg_1.b.x, global1.b.x, arg_1.b.x, true), vec4<bool>(global1.c.c, arg_1.b.x, arg_1.c, false), 1u != arg_1.d.c.x)), false), global1.c, global1.a.b);
    global1 = Struct_4(Struct_2(arg_1.e.d, Struct_1(-abs(global1.d.d.x), abs(global1.d.b), abs(vec2<u32>(1236u, u_input.a)), select(~vec3<i32>(arg_1.e.b, 14788i, -2147483647i), -arg_1.d.d, !vec3<bool>(global1.b.x, global1.a.c, global1.a.c)), vec3<f32>(_wgslsmith_div_f32(716f, 812f), arg_0.x, global1.d.e.x)), true), select(global1.b, !(!global1.b), !global1.b), Struct_2(vec3<i32>(max(_wgslsmith_dot_vec2_i32(arg_1.e.d.zx, vec2<i32>(-6016i, global1.c.a.x)), -2147483647i), countOneBits(41134i), _wgslsmith_dot_vec3_i32(countOneBits(global1.d.d), select(arg_1.d.d, vec3<i32>(-55180i, global1.d.a, 38779i), global1.b))), Struct_1(-2147483647i, reverseBits(~66912i), _wgslsmith_div_vec2_u32(u_input.c, ~vec2<u32>(4294967295u, 4294967295u)), global1.c.b.d, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(arg_1.e.e, vec3<f32>(arg_1.d.e.x, arg_1.e.e.x, global1.c.b.e.x)))))), true), arg_1.e);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(arg_1.d.e.x, global1.d.e.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(ceil(arg_0.x)))))) * -1126f);
    global0 = func_2(global1.a.b, var_0);
    return global1.a.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(global1.c, !vec3<bool>(true, !arg_0.x, false), global1.c, global1.a.b);
    global0 = global1.c.b.c.x;
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(7848i, global1.c.b.b, arg_2.e.b, (_wgslsmith_mod_i32(-91197i, arg_2.d.d.x) & _wgslsmith_add_i32(global1.c.b.d.x, 27066i)) >> (abs(0u) % 32u)), select(vec4<i32>(var_0.c.b.d.x, ~0i, func_1(_wgslsmith_f_op_vec2_f32(abs(global1.c.b.e.xz)), arg_2).b, _wgslsmith_div_i32(arg_2.e.b, _wgslsmith_clamp_i32(-8487i, var_0.a.a.x, 5202i))), -vec4<i32>(arg_2.d.b, _wgslsmith_add_i32(-1i, -35676i), _wgslsmith_mod_i32(0i, 33118i), arg_2.d.d.x), !(!all(vec2<bool>(false, arg_0.x)))));
    let var_2 = true;
    let var_3 = abs(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.c.a.x, 1i, arg_2.e.d.x, 22664i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, arg_2.e.d.x, global1.c.b.d.x, 0i), vec4<i32>(-2147483647i, -18818i, var_0.d.b, arg_2.d.b))), ~firstTrailingBit(2147483647i), _wgslsmith_add_i32(-1i >> (0u % 32u), _wgslsmith_clamp_i32(-2312i, -66373i, arg_2.e.d.x)), _wgslsmith_mult_i32(-11097i, firstLeadingBit(global1.c.b.b)))) >> (_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b.x, 1u), vec4<u32>(66548u, global1.d.c.x, 4294967295u, u_input.a)), ~vec4<u32>(0u, arg_2.e.c.x, 1u, 4294967295u)), min(~firstLeadingBit(vec4<u32>(global1.d.c.x, 47650u, 4294967295u, u_input.b.x)), ~(~vec4<u32>(66708u, 18898u, var_0.c.b.c.x, 26844u)))) % vec4<u32>(32u));
    return arg_2.e;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_1.x;
    return Struct_2(~vec3<i32>(arg_3.d.b, 2147483647i, ~12648i), Struct_1(-_wgslsmith_mult_i32(0i, global1.a.b.a), ~global1.c.a.x, select(func_4(arg_3.b, 1453f, arg_3).c, ~vec2<u32>(26114u, 1u), true), (global1.d.d | (vec3<i32>(global1.a.a.x, arg_3.e.b, arg_3.e.b) | global1.a.b.d)) << (~(~u_input.b) % vec3<u32>(32u)), vec3<f32>(func_4(vec2<bool>(arg_3.b.x, false), _wgslsmith_f_op_f32(min(arg_3.d.e.x, 594f)), arg_3).e.x, -2182f, global1.c.b.e.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, global1.c.b.c.x), u_input.b), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(u_input.c.x, u_input.b.x, global1.d.c.x)), u_input.b, u_input.b)), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b), ~((global1.a.b.c & abs(u_input.b.yx)) & _wgslsmith_div_vec2_u32(abs(u_input.b.zz), countOneBits(vec2<u32>(1u, u_input.c.x)))), Struct_3(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.b.c.x, global1.a.b.c.x, global1.c.b.c.x, 1u), ~vec4<u32>(75689u, u_input.b.x, 1u, global1.c.b.c.x)), 4294967295u), !(!global1.b.xx), global1.a.c, func_4(vec2<bool>(false, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1220f)), _wgslsmith_f_op_f32(-global1.c.b.e.x)), Struct_3(u_input.c, vec2<bool>(global1.c.c, global1.b.x), true, global1.d, func_1(global1.c.b.e.yz, Struct_3(u_input.b.zx, global1.b.xz, global1.b.x, global1.c.b, global1.c.b)))), global1.c.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1.d.e))), _wgslsmith_f_op_vec3_f32(-var_0.b.e))));
    var var_2 = Struct_2(countOneBits(vec3<i32>(-(var_0.a.x >> (1u % 32u)), reverseBits(-38644i), -firstTrailingBit(-10095i))), func_5(_wgslsmith_mult_vec3_u32(u_input.b, (vec3<u32>(4294967295u, global1.a.b.c.x, 25027u) | u_input.b) | vec3<u32>(1u, 1u, 1u)), ~select(vec3<u32>(1u, 0u, 0u), ~vec3<u32>(0u, var_0.b.c.x, u_input.c.x), !var_0.c), ~global1.a.b.c, Struct_3(func_4(!global1.b.yx, global1.d.e.x, Struct_3(vec2<u32>(0u, u_input.c.x), global1.b.yx, false, Struct_1(-2147483647i, global1.d.d.x, var_0.b.c, var_0.b.d, vec3<f32>(1000f, var_0.b.e.x, 1381f)), global1.c.b)).c, global1.b.xz, true, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1.a.b.d.x, var_0.a.x, -15449i), vec4<i32>(24044i, var_0.b.d.x, -36367i, var_0.b.d.x)), global1.c.a.x, abs(vec2<u32>(global1.c.b.c.x, 81152u)), -vec3<i32>(-6837i, global1.a.a.x, 0i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.b.e.x, var_1.x))), func_5(u_input.b, vec3<u32>(18207u, u_input.b.x, 48689u), func_1(vec2<f32>(-1000f, -1205f), Struct_3(vec2<u32>(u_input.a, 1u), global1.b.zy, global1.c.c, global1.a.b, var_0.b)).c, Struct_3(var_0.b.c, vec2<bool>(false, global1.b.x), true, Struct_1(2147483647i, var_0.a.x, vec2<u32>(var_0.b.c.x, var_0.b.c.x), vec3<i32>(var_0.a.x, 12921i, 55934i), vec3<f32>(global1.d.e.x, var_1.x, global1.c.b.e.x)), Struct_1(var_0.b.a, 1i, vec2<u32>(30952u, 4294967295u), vec3<i32>(global1.a.a.x, -80122i, -6932i), vec3<f32>(237f, global1.c.b.e.x, -992f)))).b)).b, true);
    var_1 = _wgslsmith_f_op_vec3_f32(var_0.b.e * vec3<f32>(global1.a.b.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.e.x * global1.a.b.e.x))), _wgslsmith_f_op_f32(round(var_1.x))));
    let var_3 = func_4(!vec2<bool>(any(!global1.b), true), _wgslsmith_f_op_f32(sign(-1183f)), Struct_3(var_2.b.c, !select(!global1.b.xx, select(global1.b.yz, vec2<bool>(var_0.c, false), vec2<bool>(true, true)), !global1.b.zy), select(select(var_2.b.d.x >= -1i, 2147483647i >= var_0.b.a, false), !(!var_0.c), var_0.c), Struct_1(0i, _wgslsmith_mod_i32(_wgslsmith_div_i32(-78291i, var_2.b.b), var_2.a.x & 1i), (vec2<u32>(var_0.b.c.x, var_0.b.c.x) >> (global1.a.b.c % vec2<u32>(32u))) | vec2<u32>(113351u, 61743u), -vec3<i32>(var_2.b.b, 0i, global1.c.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(var_2.b.e, var_2.b.e)), _wgslsmith_f_op_vec3_f32(var_2.b.e * var_2.b.e), all(vec3<bool>(var_0.c, var_2.c, global1.a.c))))), func_1(var_0.b.e.xy, Struct_3(var_2.b.c, vec2<bool>(true, global1.a.c), !var_0.c, func_5(u_input.b, vec3<u32>(4294967295u, 1068u, 0u), vec2<u32>(var_2.b.c.x, global1.d.c.x), Struct_3(var_2.b.c, vec2<bool>(true, var_2.c), false, var_0.b, global1.c.b)).b, Struct_1(-42113i, global1.d.a, vec2<u32>(9341u, 48747u), vec3<i32>(global1.d.d.x, global1.a.a.x, -2147483647i), vec3<f32>(326f, 1497f, var_0.b.e.x)))))).e.xx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~1u, global1.d.c.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -671f), _wgslsmith_f_op_f32(-var_3.x)), ~firstTrailingBit(select(vec3<u32>(var_0.b.c.x, global1.a.b.c.x, 31486u) ^ u_input.b, select(u_input.b, vec3<u32>(6449u, 4294967295u, 4294967295u), global1.b), vec3<bool>(false, var_0.c, global1.b.x))), func_4(select(global1.b.yz, global1.b.xz, all(select(vec4<bool>(global1.a.c, var_2.c, false, var_0.c), vec4<bool>(true, false, false, false), vec4<bool>(var_0.c, true, true, true)))), global1.c.b.e.x, Struct_3(~u_input.b.yy, select(select(global1.b.zz, global1.b.yz, vec2<bool>(true, var_0.c)), select(vec2<bool>(var_0.c, true), global1.b.xz, global1.b.xy), vec2<bool>(var_0.c, var_2.c)), var_2.c, Struct_1(var_0.a.x, -2147483647i, select(global1.a.b.c, vec2<u32>(u_input.a, global1.d.c.x), global1.b.yx), vec3<i32>(var_0.b.b, -15735i, var_2.b.b) >> (u_input.b % vec3<u32>(32u)), vec3<f32>(-1849f, var_0.b.e.x, var_3.x)), var_2.b)).e);
}

