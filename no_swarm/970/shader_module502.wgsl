struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, 121f, 468f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-468f, -243f, 1764f))))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1000f));
    let var_2 = Struct_2(Struct_1(vec2<u32>(~42116u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, 5833u), u_input.a)), max(6984i, u_input.b), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), any(vec2<bool>(false, true))), _wgslsmith_add_u32(~(u_input.a.x << (u_input.a.x % 32u)), u_input.a.x), 1u), Struct_1(u_input.a.wz & select(u_input.a.xw << (vec2<u32>(32581u, u_input.a.x) % vec2<u32>(32u)), u_input.a.xx << (u_input.a.zx % vec2<u32>(32u)), any(vec4<bool>(true, false, true, true))), ~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(31180i, 0i), vec2<i32>(20409i, u_input.c))), vec2<bool>(false, select(false, true, false) || true), abs(u_input.a.x) << (max(~1u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) % 32u), 40954u), select(select(vec4<bool>(true, true, 0i == u_input.c, false), vec4<bool>(true, true, true, false), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, !(u_input.a.x == u_input.a.x), false), all(vec3<bool>(true, any(vec4<bool>(false, false, true, false)), select(true, false, false)))), false, min(~vec2<i32>(1i, 2147483647i), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c, u_input.c)), abs(vec2<i32>(-10691i, 2147483647i)))) >> (u_input.a.wz % vec2<u32>(32u)));
    let var_3 = var_2.c.xwz;
    var var_4 = 0i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-392f * -122f)), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - var_1), all(var_2.c))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    global0 = array<vec3<bool>, 5>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -315f));
    var var_1 = vec2<i32>(arg_2.b, 2147483647i);
    var_1 = ~vec2<i32>(_wgslsmith_add_i32(~2147483647i, 2827i), firstTrailingBit(_wgslsmith_mod_i32(arg_2.b, _wgslsmith_sub_i32(u_input.c, u_input.b))));
    var var_2 = Struct_2(Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 60845u), u_input.a.zz), -(arg_2.b ^ -1i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-45132i, -2147483647i, u_input.b, arg_2.b), vec4<i32>(u_input.b, 16595i, var_1.x, -10967i)), arg_2.c, ~(arg_2.a.x >> (111202u % 32u)) << ((select(1u, 1u, true) << ((u_input.a.x >> (69875u % 32u)) % 32u)) % 32u), 4294967295u), arg_2, select(!vec4<bool>(select(false, false, arg_2.c.x), select(true, true, true), all(arg_2.c), arg_2.c.x || arg_2.c.x), vec4<bool>(arg_2.c.x, true, arg_2.c.x, select(arg_2.c.x, !arg_2.c.x, false)), true), true, ~(-reverseBits(vec2<i32>(var_1.x, var_1.x))));
    return abs(_wgslsmith_mod_vec2_u32(select(u_input.a.xy, u_input.a.yz, vec2<bool>(true, var_2.a.c.x)), vec2<u32>(0u, 0u)) & ~(~vec2<u32>(arg_2.a.x, arg_1))) << ((u_input.a.yw << (~_wgslsmith_mod_vec2_u32(~vec2<u32>(36016u, 4294967295u), vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<vec3<bool>, 5>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-660f, arg_1)), _wgslsmith_f_op_f32(-1445f - 1465f)))) + vec4<f32>(arg_1, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(f32(-1f) * -493f)), arg_1)));
    var var_1 = select(arg_2.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, ~u_input.a.x, u_input.a.x)), u_input.a.yzz ^ u_input.a.zzz), any(select(vec4<bool>(true, true, true, select(true, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), u_input.a.x < 0u), _wgslsmith_f_op_f32(var_0.x * 1001f) != var_0.x)));
    var var_2 = Struct_3(Struct_1(arg_2, select(1i, u_input.b, true) << (~0u % 32u), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), ~arg_2.x >> (min(arg_2.x, ~arg_0.x) % 32u), min(arg_0.x & arg_0.x, ~(~31710u))), Struct_2(Struct_1(vec2<u32>(~4294967295u, ~arg_0.x), -(~(-1i)), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), ~1u, arg_0.x), Struct_1(~vec2<u32>(arg_2.x, 50588u), _wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.b), vec2<i32>(-2147483647i, u_input.b)), -2147483647i), vec2<bool>(arg_1 == var_0.x, true), ~arg_2.x, _wgslsmith_mod_u32(func_2(1u, u_input.a.x, Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), u_input.c, vec2<bool>(false, false), u_input.a.x, 16510u), arg_0.x).x, ~arg_0.x)), vec4<bool>(true, true, true, true), all(vec4<bool>(true, any(vec4<bool>(false, false, false, false)), false, true)), _wgslsmith_add_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(1i, 851i))), ~vec2<i32>(10929i, u_input.b))), Struct_1(~vec2<u32>(0u, arg_2.x) << (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, arg_2.x), arg_0 << (vec2<u32>(arg_2.x, arg_0.x) % vec2<u32>(32u))) % vec2<u32>(32u)), max(1i, -_wgslsmith_div_i32(24582i, u_input.c)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, false), vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), countOneBits(~(~arg_2.x)), reverseBits(_wgslsmith_add_u32(arg_0.x, 23106u) << (reverseBits(1u) % 32u))), -_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(0i, 28013i, u_input.b)), -select(vec3<i32>(u_input.b, 0i, 2147483647i), vec3<i32>(0i, -509i, u_input.b), vec3<bool>(true, false, false)), _wgslsmith_sub_vec3_i32(select(vec3<i32>(8286i, u_input.b, u_input.c), vec3<i32>(u_input.c, u_input.c, -30050i), false), select(vec3<i32>(u_input.c, 18455i, -10577i), vec3<i32>(733i, -2755i, 0i), true))), select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(any(global0[_wgslsmith_index_u32(arg_2.x, 5u)]), true, true, select(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.c > 0i, true, select(false, true, true), true), u_input.a.x == 36508u), all(vec2<bool>(true, true))));
    var_2 = Struct_3(Struct_1(~vec2<u32>(u_input.a.x, arg_2.x) << (func_2(30435u, var_2.a.d, var_2.a, ~49141u) % vec2<u32>(32u)), -21396i, !select(var_2.e.wz, select(var_2.c.c, vec2<bool>(true, var_2.c.c.x), vec2<bool>(true, false)), vec2<bool>(var_2.b.b.c.x, var_2.e.x)), 2030u, var_2.a.a.x), Struct_2(Struct_1(~vec2<u32>(36985u, 1u), ~u_input.b, vec2<bool>(var_2.c.c.x || var_2.b.d, select(true, false, true)), ~var_2.a.a.x >> (arg_2.x % 32u), firstTrailingBit(1u)), var_2.a, var_2.b.c, true, var_2.b.e), Struct_1(var_2.c.a, abs(5135i), select(vec2<bool>(var_2.c.c.x, true), vec2<bool>(true, true), var_2.c.c.x), ~firstTrailingBit(1u), ~0u), select(firstLeadingBit(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(var_2.b.b.b, 11112i, var_2.a.b)), vec3<i32>(0i, -41186i, -2147483647i) ^ vec3<i32>(var_2.c.b, var_2.c.b, u_input.c))), abs(var_2.d), var_2.e.ywy), var_2.e);
    return Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(select(var_2.b.b.e, _wgslsmith_mult_u32(62056u, arg_0.x), arg_2.x <= u_input.a.x), 4294967295u), var_2.c.a >> ((vec2<u32>(0u, arg_2.x) >> (firstLeadingBit(arg_0) % vec2<u32>(32u))) % vec2<u32>(32u))), -11013i, select(select(var_2.e.yw, select(vec2<bool>(var_2.b.d, var_2.e.x), !vec2<bool>(var_2.b.b.c.x, var_2.a.c.x), true), var_2.b.c.xx), !select(select(var_2.a.c, vec2<bool>(true, true), true), vec2<bool>(true, var_2.a.c.x), var_2.c.c), true || var_2.e.x), ~(~arg_0.x), abs(~(~1u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<f32>, arg_3: i32) -> vec2<bool> {
    let var_0 = func_4(arg_0.xx, _wgslsmith_f_op_f32(trunc(arg_2.x)), func_2(1u, arg_1, Struct_1(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.yw, vec2<u32>(arg_1, 53371u)), arg_0.zx, vec2<bool>(true, true)), -1i, select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~(~u_input.a.x), 43107u), arg_1));
    let var_1 = var_0;
    let var_2 = func_4(vec2<u32>(var_1.e, _wgslsmith_mult_u32(u_input.a.x, 17563u)), 335f, ~(~vec2<u32>(var_0.a.x, ~u_input.a.x)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1447f + -170f)))), 1061f);
    var var_4 = Struct_3(Struct_1(u_input.a.yz, -44022i, vec2<bool>(true, var_1.c.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, var_0.d, var_1.a.x), arg_0), ~4294967295u), Struct_2(var_0, func_4(vec2<u32>(~var_2.a.x, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * arg_2.x), max(var_0.a, var_1.a)), vec4<bool>(!select(true, var_0.c.x, var_0.c.x), u_input.b < firstLeadingBit(var_2.b), all(vec2<bool>(true, true)) | all(global0[_wgslsmith_index_u32(var_1.a.x, 5u)]), true), var_2.c.x, vec2<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, arg_3), 1i))), Struct_1(abs(~u_input.a.zx), 7741i, !select(func_4(arg_0.yz, arg_2.x, u_input.a.yx).c, func_4(vec2<u32>(u_input.a.x, 89322u), 589f, vec2<u32>(1u, 1u)).c, vec2<bool>(var_2.c.x, var_1.c.x)), ~45443u, _wgslsmith_mod_u32(1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)))), vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(~u_input.b), ~reverseBits(27895i)), var_2.b, ~(~var_0.b)), select(select(vec4<bool>(all(global0[_wgslsmith_index_u32(arg_1, 5u)]), true, all(vec4<bool>(true, var_0.c.x, var_0.c.x, true)), true), select(!vec4<bool>(false, var_2.c.x, var_1.c.x, var_0.c.x), !vec4<bool>(false, var_0.c.x, false, var_0.c.x), true), select(var_2.c.x, !var_0.c.x, true)), vec4<bool>(false, true, (var_0.e < var_0.e) && !var_0.c.x, var_1.c.x), select(!(!vec4<bool>(var_0.c.x, false, var_1.c.x, true)), vec4<bool>(var_1.c.x, select(false, false, false), var_1.c.x, !var_1.c.x), !vec4<bool>(var_2.c.x, false, false, var_0.c.x))));
    return func_4(max(~_wgslsmith_mod_vec2_u32(vec2<u32>(31309u, 0u), vec2<u32>(arg_1, 0u)), arg_0.yy), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(step(784f, arg_2.x)))), var_2.a).c;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: f32) -> StorageBuffer {
    global0 = array<vec3<bool>, 5>();
    let var_0 = arg_1.x;
    var var_1 = _wgslsmith_div_u32(~(~select(0u, 11329u, !arg_1.x)), u_input.a.x);
    var var_2 = global0[_wgslsmith_index_u32(~u_input.a.x, 5u)];
    var var_3 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 57507u << (abs(u_input.a.x) % 32u)), u_input.c, var_2.zy, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(50943u, 41756u), abs(4294967295u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~u_input.a.zw)), Struct_1(~vec2<u32>(~u_input.a.x, firstTrailingBit(u_input.a.x)), ~u_input.c, vec2<bool>(true, true), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 20853u) & u_input.a, ~vec4<u32>(1u, 1u, 1u, u_input.a.x))), select(select(select(select(vec4<bool>(true, arg_1.x, true, true), vec4<bool>(false, true, var_0, var_0), vec4<bool>(arg_1.x, var_2.x, true, var_0)), vec4<bool>(false, false, false, var_2.x), true), vec4<bool>(any(vec2<bool>(var_0, true)), !var_2.x, true | arg_1.x, var_2.x), any(vec4<bool>(arg_1.x, false, arg_1.x, false))), !select(vec4<bool>(var_2.x, false, var_0, arg_1.x), select(vec4<bool>(false, arg_1.x, var_0, var_2.x), vec4<bool>(true, true, false, false), vec4<bool>(var_0, arg_1.x, true, var_2.x)), true), !vec4<bool>(!arg_1.x, true, !arg_1.x, true)), var_2.x || var_0, vec2<i32>(min(39401i, _wgslsmith_div_i32(-15415i, u_input.c)), _wgslsmith_mod_i32(u_input.b, ~(-1i))) << (u_input.a.xz % vec2<u32>(32u)));
    return StorageBuffer(select(~(7496u >> ((1u >> (0u % 32u)) % 32u)), _wgslsmith_dot_vec3_u32(min(u_input.a.xxz, min(u_input.a.yyy, u_input.a.yyw)), _wgslsmith_div_vec3_u32(u_input.a.yzw, u_input.a.yww)), any(vec3<bool>(any(vec4<bool>(var_3.b.c.x, var_2.x, true, var_2.x)), any(var_3.c), true))), var_3.a.b, u_input.a.x & _wgslsmith_sub_u32(36178u, ~u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(443f, _wgslsmith_f_op_f32(trunc(arg_2))))) + -266f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5((~select(vec2<i32>(15788i, 2147483647i), vec2<i32>(-18716i, -1i), vec2<bool>(true, true)) << (u_input.a.xw % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x & u_input.a.x), ~vec2<u32>(24254u, u_input.a.x), _wgslsmith_clamp_vec2_u32(u_input.a.zx & u_input.a.zw, u_input.a.zw, ~u_input.a.xx)) % vec2<u32>(32u)), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), func_1(~vec3<u32>(u_input.a.x, u_input.a.x, 22599u), ~1u, vec4<f32>(1f, 1f, 1f, 1f), select(u_input.b, 0i, all(global0[_wgslsmith_index_u32(u_input.a.x, 5u)]))), func_1(u_input.a.zxx, u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1430f, 202f, -655f, 1000f)))), select(reverseBits(-18421i), max(u_input.c, u_input.b), false))), _wgslsmith_f_op_f32(-386f - _wgslsmith_f_op_f32(floor(-135f))));
}

