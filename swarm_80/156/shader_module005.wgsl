struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1917f, -1000f, 472f);

var<private> global1: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(78125u, 75487u, 46876u, 2082u), vec4<u32>(4294967295u, 60673u, 44285u, 4294967295u), vec4<u32>(4294967295u, 15155u, 4294967295u, 12715u), vec4<u32>(4294967295u, 19299u, 0u, 1u), vec4<u32>(0u, 1u, 4294967295u, 11207u), vec4<u32>(0u, 1u, 4294967295u, 2088u), vec4<u32>(1u, 4294967295u, 4294967295u, 40621u), vec4<u32>(1u, 0u, 64677u, 1u), vec4<u32>(1u, 23655u, 1u, 14816u), vec4<u32>(16750u, 7621u, 1u, 27922u), vec4<u32>(4294967295u, 0u, 54587u, 4294967295u), vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(13193u, 57097u, 36258u, 1u), vec4<u32>(0u, 0u, 88581u, 1u), vec4<u32>(60089u, 45295u, 58597u, 15918u), vec4<u32>(1u, 1u, 64136u, 50776u), vec4<u32>(15326u, 4294967295u, 4294967295u, 48252u), vec4<u32>(57124u, 45260u, 0u, 66139u), vec4<u32>(1u, 17558u, 17892u, 2640u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(_wgslsmith_mult_u32(max(_wgslsmith_div_u32(u_input.d, u_input.e | 24417u), ~(~33354u)), u_input.e), global0.x, select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, false, true))), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), _wgslsmith_div_i32(-5082i, u_input.c) > (i32(-1i) * -2147483647i)), vec2<bool>(true, true)), Struct_1(_wgslsmith_sub_vec4_i32(-(vec4<i32>(u_input.c, -2643i, u_input.a, u_input.a) & vec4<i32>(0i, u_input.b, 55810i, u_input.b)), ~select(vec4<i32>(4575i, u_input.b, 0i, u_input.a), vec4<i32>(-1630i, u_input.b, u_input.b, -14712i), vec4<bool>(true, true, false, true))), select(vec4<bool>(false, false, any(vec3<bool>(true, false, true)), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1307f, global0.x)))), _wgslsmith_f_op_f32(-global0.x))));
    var_0 = Struct_2(42371u, global0.x, var_0.c, var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1003f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + -530f)))));
    global1 = array<vec4<u32>, 19>();
    let var_1 = Struct_2(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global0.x)))) * global0.x), var_0.c, var_0.d, _wgslsmith_f_op_f32(min(var_0.b, -1745f)));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(350f, var_0.e, -1360f) * vec3<f32>(885f, 772f, var_0.b)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, 462f, var_1.b)))), vec3<f32>(418f, _wgslsmith_f_op_f32(exp2(var_0.e)), _wgslsmith_f_op_f32(trunc(var_0.b))), (511f > var_0.b) && !var_0.d.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + -228f), -1843f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(626f, var_1.b, var_0.e)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1036f, var_1.e, global0.x)))))));
    return 2944i;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = vec3<i32>((u_input.b | _wgslsmith_div_i32(arg_1.a.x >> (70159u % 32u), ~70255i)) | arg_1.a.x, select(countOneBits(-min(-1i, -2147483647i)), 3301i, false), arg_1.a.x);
    let var_1 = Struct_2(~(~(~u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -510f), arg_1.b.zx, Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.c, ~16848i, -1i), vec4<i32>(1i, func_3(), arg_1.a.x, arg_1.a.x)), arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1729f - 1827f) + -1307f), global0.x)));
    return _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 52920u), vec2<u32>(var_1.a, 15051u))), firstTrailingBit(~vec2<u32>(27645u, var_1.a)), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.e, 4294967295u), countOneBits(vec2<u32>(var_1.a, var_1.a)))) >> ((vec2<u32>(4294967295u, u_input.e) >> (~(~vec2<u32>(29790u, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u)), select(vec2<u32>(~0u, select(~0u, ~u_input.e, true)), vec2<u32>(~1u, ~135660u), !arg_1.b.x));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec3<u32> {
    var var_0 = firstTrailingBit(arg_2);
    global1 = array<vec4<u32>, 19>();
    let var_1 = Struct_2(~4294967295u, -1274f, select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, u_input.b, var_0.x), arg_2.zww) >= arg_2.x, true), all(vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_0.x, 7239i, 28291i), vec4<i32>(-2147483647i, var_0.x, -1i, -2147483647i)), -arg_2), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), -1000f);
    var var_2 = ~(-39024i) & max(var_0.x, 1i);
    var_0 = arg_2;
    return _wgslsmith_sub_vec3_u32(~firstTrailingBit(~vec3<u32>(87378u, 2869u, 808u)), reverseBits(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(arg_1.x, u_input.e, 0u)), vec3<u32>(u_input.d, arg_1.x, 4294967295u) >> (vec3<u32>(var_1.a, arg_1.x, 42533u) % vec3<u32>(32u)))));
}

fn func_1(arg_0: Struct_4) -> i32 {
    let var_0 = select(_wgslsmith_sub_vec3_u32(~(~(vec3<u32>(u_input.e, 0u, 2721u) | vec3<u32>(u_input.d, u_input.e, 4294967295u))), func_4(i32(-1i) * -u_input.a, ~func_2(vec3<f32>(arg_0.a, global0.x, global0.x), Struct_1(vec4<i32>(0i, u_input.b, 2147483647i, u_input.c), vec4<bool>(false, false, true, false))), countOneBits(-vec4<i32>(-43685i, u_input.b, 2147483647i, u_input.b)))), vec3<u32>((u_input.e >> (76362u % 32u)) ^ u_input.e, 0u, min(_wgslsmith_mod_u32(u_input.e, 9532u), ~u_input.d)) & select(~countOneBits(vec3<u32>(u_input.d, 0u, 0u)), vec3<u32>(u_input.d, _wgslsmith_sub_u32(4294967295u, 4519u), ~4294967295u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(u_input.b >= u_input.a, true, any(vec3<bool>(true, true, true))), true), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, true, false)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(vec3<bool>(all(vec4<bool>(false, true, true, false)), true, any(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), vec3<bool>(-49885i > u_input.c, select(true, true, true), true))));
    var var_1 = _wgslsmith_f_op_f32(1000f + -488f);
    var var_2 = Struct_3(select(~select(vec2<i32>(u_input.c, 1i), vec2<i32>(-1241i, 1i), vec2<bool>(false, true)), -vec2<i32>(1i, u_input.a), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)) & -(~(~vec2<i32>(1i, 14627i))), vec4<bool>(true, true && any(vec2<bool>(true, false)), !all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), !(_wgslsmith_f_op_f32(-507f - -395f) >= arg_0.a)), true, Struct_1(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.c, u_input.a, u_input.b), firstLeadingBit(1i)), 31060i, -_wgslsmith_mod_i32(u_input.c, 0i), _wgslsmith_add_i32(max(7055i, -1i), 1i)), vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), true, !(u_input.b > u_input.b), true)));
    var var_3 = ~abs(4294967295u);
    var_2 = Struct_3(~var_2.d.a.yx, var_2.b, !(!all(var_2.b.zy)), var_2.d);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(func_1(Struct_4(global0.x)), abs(u_input.b))), vec2<i32>(-firstTrailingBit(u_input.a), select(-u_input.a, -u_input.b, u_input.c == u_input.c))), select(vec4<bool>(any(vec2<bool>(true, true)), false, true, 58735u == _wgslsmith_clamp_u32(u_input.e, 93165u, 4294967295u)), vec4<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, true)) | any(vec3<bool>(false, false, false)), all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false), true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), !all(vec3<bool>(true, false, true)))), Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(2147483647i, u_input.c, u_input.b, u_input.b)), -vec4<i32>(37273i, u_input.b, u_input.a, u_input.a)), vec4<i32>(-2147483647i, u_input.b, -38640i, u_input.b) ^ ~vec4<i32>(u_input.c, -1i, 2147483647i, -3389i)), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false), false)));
    let var_1 = Struct_1(abs(~var_0.d.a), vec4<bool>(any(!var_0.b.xzx), var_0.d.b.x | false, true, var_0.d.b.x));
    var var_2 = _wgslsmith_mult_u32(~u_input.e, min(u_input.e, u_input.d)) & _wgslsmith_mod_u32(u_input.e, 35871u);
    var var_3 = false;
    let var_4 = Struct_2(_wgslsmith_sub_u32(func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(3193f, 123f, -969f), _wgslsmith_div_vec3_f32(vec3<f32>(-868f, global0.x, -920f), vec3<f32>(global0.x, -122f, 1793f)))), Struct_1(-var_0.d.a, select(var_0.b, vec4<bool>(var_0.c, false, false, var_1.b.x), var_0.d.b))).x, u_input.e), -113f, var_0.d.b.wy, var_0.d, _wgslsmith_f_op_f32(-global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec2<u32>(34057u, 0u)) ^ ~(~vec2<u32>(u_input.e, 0u))), vec4<i32>(var_4.d.a.x, ~1i, var_0.a.x, func_1(Struct_4(-696f)) ^ min(-1i, firstTrailingBit(var_0.d.a.x))), global0.x, vec4<u32>(countOneBits(_wgslsmith_mult_u32(abs(u_input.e), _wgslsmith_div_u32(u_input.e, var_4.a))), 29813u, min(u_input.d, countOneBits(4294967295u) >> (1u % 32u)), abs(var_4.a)));
}

