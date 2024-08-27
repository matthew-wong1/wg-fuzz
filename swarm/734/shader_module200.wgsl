struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -29511i;

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<Struct_3, 2>;

var<private> global3: f32 = -244f;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = Struct_1(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_2.a.c.a.yww, vec3<i32>(-31444i, u_input.a, 2147483647i)), u_input.a, ~arg_2.a.c.a.x, _wgslsmith_div_i32(2147483647i, u_input.a)), (vec4<i32>(-1605i, arg_2.a.d.a.x, u_input.a, u_input.a) ^ vec4<i32>(-36438i, u_input.a, u_input.a, u_input.a)) << (select(vec4<u32>(arg_2.c.x, 42869u, arg_2.c.x, arg_2.c.x), vec4<u32>(1u, 0u, 1u, arg_2.c.x), true) % vec4<u32>(32u)))));
    global3 = arg_1;
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-558f, _wgslsmith_f_op_f32(1000f - arg_1), _wgslsmith_f_op_f32(387f + arg_2.a.a.x), 654f))), select(arg_2.a.b, vec2<bool>(any(vec2<bool>(arg_0, false)), select(arg_2.a.b.x, false, true)), _wgslsmith_f_op_f32(-arg_1) < _wgslsmith_f_op_f32(abs(arg_1))), Struct_1(vec4<i32>(-46321i, i32(-1i) * -11007i, u_input.a, var_0.a.x)), arg_2.a.c), arg_2.a.c.a.yw << (~_wgslsmith_clamp_vec2_u32(~arg_2.c, vec2<u32>(arg_2.c.x, arg_2.c.x) | vec2<u32>(arg_2.c.x, arg_2.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.c.x, 44585u), vec2<u32>(62712u, 111906u))) % vec2<u32>(32u)), arg_2.c);
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + var_1.a.a.x)), 1f, -1000f, _wgslsmith_f_op_f32(round(-2073f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(var_1.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_2.a.a.x, 663f, arg_2.a.a.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.a.x, -462f, var_1.a.a.x, -1143f)))))), select(arg_2.a.b, !arg_2.a.b, var_1.a.b), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_1.c.x | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.x, 43404u, arg_2.c.x, arg_2.c.x), vec4<u32>(1u, var_1.c.x, var_1.c.x, 1u)), _wgslsmith_dot_vec2_u32(select(var_1.c, vec2<u32>(1u, 1u), arg_2.a.b.x), reverseBits(vec2<u32>(1u, 39699u)))), 13u)], arg_2.a.c);
    var var_3 = select(vec3<bool>(!(-1497f != _wgslsmith_f_op_f32(floor(var_2.a.x))), !(!arg_0), true), select(!vec3<bool>(!arg_0, var_2.b.x, true), !(!vec3<bool>(false, var_1.a.b.x, arg_0)), !all(vec4<bool>(true, false, false, true))), !(!select(vec3<bool>(true, var_1.a.b.x, var_2.b.x), select(vec3<bool>(true, true, var_1.a.b.x), vec3<bool>(var_1.a.b.x, arg_2.a.b.x, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, false))));
    return !(!select(vec3<bool>(var_1.a.b.x & var_2.b.x, var_1.a.b.x, any(vec3<bool>(var_2.b.x, false, arg_2.a.b.x))), select(select(vec3<bool>(true, arg_2.a.b.x, false), vec3<bool>(var_1.a.b.x, arg_2.a.b.x, true), var_2.b.x), !vec3<bool>(arg_2.a.b.x, true, var_1.a.b.x), false), true));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global1 = array<Struct_1, 13>();
    var var_0 = select(!vec3<bool>(select(true, true, true), true, true), select(vec3<bool>(true, true, true), !func_3(u_input.a != u_input.a, arg_0, Struct_4(Struct_2(vec4<f32>(-610f, arg_0, 3209f, 2705f), vec2<bool>(false, false), Struct_1(vec4<i32>(14459i, -2147483647i, 7717i, u_input.a)), global1[_wgslsmith_index_u32(13145u, 13u)]), vec2<i32>(-29378i, 1i), vec2<u32>(65968u, 50974u))), vec3<bool>(false, u_input.a != (i32(-1i) * -16481i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, 2147483647i), vec3<i32>(u_input.a, u_input.a, -1i)) != ~u_input.a)), vec3<bool>(!any(vec3<bool>(true, false, false)) && true, all(vec2<bool>(false, u_input.a < u_input.a)), false));
    let var_1 = reverseBits(-vec2<i32>(_wgslsmith_add_i32(1i, u_input.a), 38698i));
    var var_2 = Struct_3(func_3(true, _wgslsmith_div_f32(arg_0, arg_0), Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1530f, 1000f, 1208f, -353f)), func_3(false, arg_0, Struct_4(Struct_2(vec4<f32>(arg_0, arg_0, 203f, arg_0), var_0.xx, Struct_1(vec4<i32>(var_1.x, u_input.a, var_1.x, var_1.x)), Struct_1(vec4<i32>(var_1.x, -2147483647i, 45117i, u_input.a))), var_1, vec2<u32>(1u, 4294967295u))).xy, Struct_1(vec4<i32>(-37171i, u_input.a, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(-2147483647i, 0i, -2147483647i, var_1.x))), -(~vec2<i32>(u_input.a, 1i)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(50211u, 4294967295u)), vec2<u32>(1u, 1u)))).yx, Struct_2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -1056f)), var_0.xx, Struct_1(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-72744i, u_input.a, 0i, u_input.a)), reverseBits(vec4<i32>(2929i, 1i, 1i, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_1.x, -1i, var_1.x), vec4<i32>(-45500i, var_1.x, u_input.a, -28045i)))), Struct_1(vec4<i32>(var_1.x, u_input.a, 2147483647i, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(191f)), -1392f, _wgslsmith_f_op_f32(-1000f * arg_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1355f, arg_0, arg_0) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1302f, -1000f, 1030f) * vec3<f32>(671f, -707f, arg_0))))));
    return var_2.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    global3 = 761f;
    global0 = 1i;
    global1 = array<Struct_1, 13>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_2(arg_1.c.x).a) * arg_0.b.a)), vec2<bool>(false, true && arg_0.a.x), Struct_1(~vec4<i32>(2147483647i, arg_1.b.c.a.x, 1i, ~arg_0.b.d.a.x)), Struct_1(arg_0.b.d.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, arg_0.b.a.x, _wgslsmith_f_op_f32(var_0.a.x + 1074f), _wgslsmith_f_op_f32(abs(811f)))) + _wgslsmith_div_vec4_f32(arg_1.b.a, vec4<f32>(1065f, func_2(197f).a.x, _wgslsmith_f_op_f32(arg_0.c.x * arg_0.b.a.x), -615f))) + arg_1.b.a);
    return 1u;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2361f, arg_1.b.a.x)), arg_1.b.a.wx))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.a.x, arg_1.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.xz + arg_1.b.a.wy)) + vec2<f32>(func_2(-694f).a.x, arg_1.b.a.x))));
    global2 = array<Struct_3, 2>();
    var var_1 = firstLeadingBit(arg_0.x);
    return Struct_2(vec4<f32>(587f, arg_1.b.a.x, -510f, -134f), !arg_1.a, func_2(2711f).c, Struct_1(-(_wgslsmith_mult_vec4_i32(arg_1.b.d.a, vec4<i32>(arg_1.b.c.a.x, 4970i, -2147483647i, -20725i)) << (countOneBits(vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x)) % vec4<u32>(32u)))));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    var var_0 = arg_0.a;
    global2 = array<Struct_3, 2>();
    var var_1 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(abs(6472u), ~_wgslsmith_sub_u32(0u, arg_0.c.x)), ~(~arg_0.c.x & reverseBits(1u)));
    global0 = 20746i;
    var_1 = _wgslsmith_mod_u32(arg_0.c.x, _wgslsmith_div_u32(0u, 60169u));
    return func_5(~(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c.x, arg_0.c.x, 0u), vec3<u32>(5809u, 28905u, 1u))) ^ vec3<u32>(1u, 1u, arg_0.c.x)), global2[_wgslsmith_index_u32(func_4(Struct_3(vec2<bool>(all(vec3<bool>(arg_0.a.b.x, false, var_0.b.x)), true), func_2(_wgslsmith_f_op_f32(max(1642f, -750f))), arg_0.a.a.xzx), Struct_3(!select(var_0.b, arg_0.a.b, vec2<bool>(var_0.b.x, arg_0.a.b.x)), func_2(-1150f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.zzy - var_0.a.xwy)))), 2u)]);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    let var_0 = !vec4<bool>(func_1(Struct_4(arg_2.b, vec2<i32>(2147483647i, -2631i) << (arg_1 % vec2<u32>(32u)), arg_1)).b.x, !arg_2.a.x, _wgslsmith_mult_i32(firstTrailingBit(-2147483647i), -u_input.a) > select(-68943i, arg_2.b.d.a.x & 53910i, !arg_0.b.x), (2131i <= u_input.a) | !(!arg_0.b.x));
    var var_1 = func_5(vec3<u32>(~arg_1.x, arg_1.x, ~(~79080u)), arg_2);
    var var_2 = var_1.b;
    var var_3 = arg_2.b.b;
    var var_4 = max(arg_1.x, min(~_wgslsmith_sub_u32(arg_1.x, ~arg_1.x), ~_wgslsmith_sub_u32(~4294967295u, arg_1.x)));
    return 545f;
}

fn func_7(arg_0: f32, arg_1: u32, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_4(func_5(_wgslsmith_mult_vec3_u32(vec3<u32>(~20897u, ~1u, 4294967295u), (vec3<u32>(107438u, 2310u, arg_1) >> (vec3<u32>(arg_1, arg_1, 10182u) % vec3<u32>(32u))) << (vec3<u32>(arg_1, arg_1, arg_1) % vec3<u32>(32u))), Struct_3(select(vec2<bool>(true, false), vec2<bool>(true, true), func_5(vec3<u32>(1u, 10056u, arg_1), global2[_wgslsmith_index_u32(15928u, 2u)]).b), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1139f, 590f, -322f, arg_2) - vec4<f32>(arg_0, -1703f, arg_2, -1519f)), func_2(1274f).b, func_2(1133f).c, func_5(vec3<u32>(24591u, 54570u, 4294967295u), Struct_3(vec2<bool>(false, true), Struct_2(vec4<f32>(-547f, arg_2, arg_0, arg_0), vec2<bool>(true, true), global1[_wgslsmith_index_u32(20095u, 13u)], global1[_wgslsmith_index_u32(arg_1, 13u)]), vec3<f32>(arg_0, -1000f, -1179f))).d), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(425f, arg_0, arg_2) + vec3<f32>(arg_2, -668f, 764f)))))), ~(-func_2(_wgslsmith_f_op_f32(-344f - 341f)).c.a.zy), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 48742u) >> (select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(78903u, arg_1), vec2<bool>(true, true)) % vec2<u32>(32u)), (_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(1u, 1u)) >> (select(vec2<u32>(arg_1, 4294967295u), vec2<u32>(1u, 1u), true) % vec2<u32>(32u))) | vec2<u32>(arg_1, ~arg_1)));
    global1 = array<Struct_1, 13>();
    let var_1 = arg_1;
    let var_2 = _wgslsmith_sub_u32(min(~(~arg_1), ~(~1u)), firstTrailingBit(countOneBits(var_1)));
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-405f, 583f, 445f, -893f) + vec4<f32>(arg_0, -2427f, 2600f, -962f)))), vec2<bool>(!var_0.a.b.x, all(vec3<bool>(var_0.a.b.x, false, true))), Struct_1(_wgslsmith_add_vec4_i32(var_0.a.d.a, var_0.a.d.a)), Struct_1(vec4<i32>(-6468i << (var_0.c.x % 32u), _wgslsmith_div_i32(u_input.a, -40565i), var_0.a.c.a.x, 0i))), abs(_wgslsmith_sub_vec2_i32(var_0.b, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -1i) << (vec2<u32>(arg_1, 4294967295u) % vec2<u32>(32u)), var_0.a.c.a.zz))), var_0.c);
    return func_5(~select(vec3<u32>(var_1, var_1, var_2) | vec3<u32>(1u, 0u, 0u), vec3<u32>(var_2, abs(25813u), var_0.c.x), select(vec3<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), !vec3<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), !vec3<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x))), global2[_wgslsmith_index_u32(46264u, 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false != any(vec2<bool>(false, true)), true);
    let var_1 = 2147483647i;
    global2 = array<Struct_3, 2>();
    var var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-651f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1484f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-499f, 247f))));
    let var_3 = Struct_3(vec2<bool>(var_0.x, false), func_7(-102f, ~(~abs(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_1(Struct_4(Struct_2(vec4<f32>(802f, -2132f, -2009f, 552f), var_0, Struct_1(vec4<i32>(-57200i, -11190i, -2147483647i, var_1)), global1[_wgslsmith_index_u32(117148u, 13u)]), vec2<i32>(u_input.a, 0i), vec2<u32>(55831u, 39705u))), vec2<u32>(67777u, 39746u), Struct_3(vec2<bool>(var_0.x, var_0.x), Struct_2(vec4<f32>(-943f, 1362f, -1186f, 1531f), vec2<bool>(var_0.x, var_0.x), Struct_1(vec4<i32>(u_input.a, u_input.a, 41403i, var_1)), global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<f32>(529f, -624f, -187f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-882f, -349f) - _wgslsmith_f_op_f32(f32(-1f) * -631f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(879f + -183f), -562f)), 807f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(820f, 381f, -1015f), vec3<f32>(-177f, -212f, -599f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(reverseBits(53275u)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(483u, 0u, 4294967295u, 0u), vec4<u32>(35742u, 4294967295u, 37779u, 1u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(18513u, 1u), vec2<u32>(30958u, 0u)) % 32u))), 2147483647i, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 1u)), vec3<i32>(_wgslsmith_mod_i32(~var_3.b.c.a.x, var_3.b.c.a.x) ^ u_input.a, ~firstTrailingBit(u_input.a), ~var_1));
}

