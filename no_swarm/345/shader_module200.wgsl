struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32 = 1i;

var<private> global2: array<vec2<f32>, 8>;

var<private> global3: vec4<i32>;

var<private> global4: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = -7799i;
    let var_1 = arg_1.a;
    let var_2 = arg_1.a.a;
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)))), ~select(abs(1u), ~35645u, any(vec3<bool>(true, true, true))), arg_2.c, reverseBits(_wgslsmith_clamp_vec3_u32(arg_0.d, firstTrailingBit(arg_2.d), ~abs(vec3<u32>(arg_2.c, 4294967295u, 4294967295u)))));
    var var_1 = Struct_2(arg_0, _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(global3.x, arg_1.x, -1i, -32074i) ^ vec4<i32>(arg_1.x, 0i, arg_1.x, -16938i)), -abs(vec4<i32>(-2147483647i, -2147483647i, arg_1.x, global3.x)) >> (vec4<u32>(~var_0.d.x, arg_2.d.x, arg_0.d.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -arg_1, -select(_wgslsmith_add_vec2_i32(global0.yx, vec2<i32>(-62477i, 2147483647i)), vec2<i32>(arg_1.x, 11731i), any(vec3<bool>(false, false, false)))), vec4<bool>(var_0.d.x <= (_wgslsmith_sub_u32(85866u, arg_2.d.x) >> (1u % 32u)), -_wgslsmith_mod_i32(global0.x, global3.x) < _wgslsmith_div_i32(-14234i, -54504i), !any(vec2<bool>(true, true)) || ((global3.x != -27643i) | (var_0.c <= 433u)), _wgslsmith_f_op_f32(var_0.a.x * -155f) >= 444f));
    global1 = -_wgslsmith_add_i32(countOneBits(4785i) & -var_1.c.x, -global0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.a.zy));
    var_1 = Struct_2(var_1.a, ~(-var_1.b), ~var_1.b.xx, var_1.d);
    return var_1.d.xxz;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    global4 = -292f;
    var var_0 = func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(global3.x, Struct_2(Struct_1(vec4<f32>(1000f, -149f, -936f, -1062f), u_input.a.x, u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), vec4<i32>(-2147483647i, 1i, arg_0, -24725i), vec2<i32>(global3.x, global0.x), vec4<bool>(arg_1.x, true, arg_1.x, false)))), _wgslsmith_f_op_f32(func_3(global0.x, Struct_2(Struct_1(vec4<f32>(1137f, -1004f, -2385f, -1433f), u_input.a.x, 44383u, vec3<u32>(46853u, 27869u, 17681u)), vec4<i32>(global0.x, global3.x, 0i, -1i), global3.xw, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(160f * 4241f))), -1970f), _wgslsmith_add_u32(~54013u ^ ~u_input.a.x, firstLeadingBit(~1u)), 42256u, ~_wgslsmith_mod_vec3_u32(~vec3<u32>(37626u, 4294967295u, u_input.a.x), vec3<u32>(4294967295u, 15305u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))), -reverseBits(vec2<i32>(1i | global3.x, -arg_0)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-501f, 1155f)), _wgslsmith_f_op_f32(ceil(332f)), _wgslsmith_f_op_f32(floor(386f)), _wgslsmith_f_op_f32(abs(-841f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(174f, -104f, -643f, -631f))), vec4<f32>(-892f, 954f, 1000f, 470f))), u_input.a.x, abs(u_input.a.x), vec3<u32>(~(~u_input.a.x), ~(u_input.a.x | u_input.a.x), 4294967295u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(616f, _wgslsmith_f_op_f32(f32(-1f) * -1007f), -1000f, -1429f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1252f, -506f, 1000f, 1466f) - vec4<f32>(-346f, 1000f, 188f, -1199f)) * _wgslsmith_div_vec4_f32(vec4<f32>(439f, -2271f, 497f, 1463f), vec4<f32>(421f, 323f, 726f, 234f)))))), u_input.a.x, 8703u ^ (u_input.a.x | _wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(40178u, 0u, 4294967295u)), ~vec3<u32>(4294967295u, 20397u, u_input.a.x))), ~select(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(55376u, u_input.a.x, u_input.a.x)), firstLeadingBit(vec3<u32>(0u, 17860u, 52696u))), max(~vec3<u32>(u_input.a.x, 33866u, u_input.a.x), select(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<bool>(arg_1.x, true, false))), arg_1.x));
    let var_2 = arg_1.x;
    var var_3 = 728u;
    return Struct_1(vec4<f32>(var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x), var_1.a.x, 486f), 1u, 0u, ~(~_wgslsmith_clamp_vec3_u32(abs(var_1.d), var_1.d, _wgslsmith_mult_vec3_u32(var_1.d, vec3<u32>(0u, 4294967295u, 9794u)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = -1101f;
    var var_1 = Struct_2(arg_0, -countOneBits(-vec4<i32>(12264i, global0.x, global3.x, global0.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 35320u, 58242u, arg_1.x), vec4<u32>(24975u, 36455u, 4294967295u, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_div_vec2_i32(~global0.yy, global0.yy), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, func_4(arg_0, vec2<i32>(global3.x, 0i), Struct_1(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 1969f), arg_0.c, 0u, arg_0.d)).x), vec4<bool>(true, false, true, true)));
    var var_2 = func_2(-1i, select(select(var_1.d.xzx, select(func_4(Struct_1(var_1.a.a, 1u, var_1.a.d.x, vec3<u32>(0u, arg_1.x, arg_0.b)), vec2<i32>(-13367i, var_1.b.x), arg_0), vec3<bool>(false, var_1.d.x, var_1.d.x), select(vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x), vec3<bool>(false, false, false), vec3<bool>(var_1.d.x, false, true))), var_1.d.x), !var_1.d.yxw, !(~var_1.a.c > (0u ^ u_input.a.x))));
    var var_3 = func_2(global0.x, vec3<bool>(!(0i >= ~global0.x), any(vec2<bool>(var_1.d.x, var_1.d.x)), var_1.d.x));
    let var_4 = _wgslsmith_mod_vec4_u32(abs(reverseBits(vec4<u32>(firstLeadingBit(arg_0.c), ~arg_1.x, ~var_2.d.x, arg_0.d.x))), reverseBits(reverseBits(~vec4<u32>(u_input.a.x, 1u, var_1.a.b, var_2.d.x))));
    return Struct_2(func_2(max(_wgslsmith_dot_vec2_i32(-vec2<i32>(global0.x, global0.x), vec2<i32>(-24678i, -2147483647i)), ~global3.x & ~var_1.c.x), vec3<bool>(true, func_4(Struct_1(vec4<f32>(1000f, arg_0.a.x, var_3.a.x, -541f), u_input.a.x, 4294967295u, var_4.yyz), global3.yz, Struct_1(vec4<f32>(-897f, arg_0.a.x, arg_0.a.x, -291f), 58419u, 0u, arg_0.d)).x && select(false, var_1.d.x, var_1.d.x), true)), firstLeadingBit(firstLeadingBit(reverseBits(-var_1.b))), _wgslsmith_div_vec2_i32(global3.yx, global3.yw), vec4<bool>(var_1.d.x, true, false, true));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = firstLeadingBit(arg_1.a.d.x);
    var_0 = arg_0;
    global0 = vec4<i32>(arg_2.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(select(arg_1.b, vec4<i32>(10373i, arg_1.b.x, 8180i, arg_2.x), false), vec4<i32>(20743i, 3221i, arg_1.b.x, -1i))), -_wgslsmith_sub_vec4_i32(~arg_1.b, -arg_1.b)), -14930i, ~(i32(-1i) * -func_5(Struct_1(vec4<f32>(arg_3, 1653f, -1071f, 238f), 45294u, 30504u, vec3<u32>(arg_0, 6227u, 41918u)), u_input.a).c.x));
    let var_1 = 1u;
    var var_2 = select(vec4<i32>(-26142i, -1i, -7805i, max(~1i, min(global0.x ^ -91241i, arg_1.c.x | -35307i))), reverseBits(reverseBits(arg_1.b)), all(vec3<bool>(!arg_1.d.x, all(arg_1.d.xzz), (arg_3 == arg_3) != func_5(arg_1.a, vec2<u32>(0u, 34554u)).d.x)));
    return func_5(func_5(Struct_1(arg_1.a.a, ~func_2(-50877i, arg_1.d.zwz).c, abs(var_1), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.b, 1u, 1u), arg_1.a.d)), ~vec2<u32>(1u, 9950u)).a, countOneBits(vec2<u32>(1u, ~_wgslsmith_sub_u32(90642u, 35082u)))).a;
}

fn func_7(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.a.x - arg_0.a.a.x), _wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_f32(-1120f + 277f), -455f))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~arg_0.a.d, arg_0.a.d), u_input.a.x), func_5(Struct_1(vec4<f32>(-108f, 1981f, 1534f, 429f), 0u, u_input.a.x, vec3<u32>(u_input.a.x, 4294967295u, 0u)), vec2<u32>(arg_0.a.b << (u_input.a.x % 32u), u_input.a.x)).a.d.x, vec3<u32>(u_input.a.x, u_input.a.x, select(87195u << (arg_0.a.c % 32u), max(1u, arg_0.a.c), select(arg_0.d.x, false, arg_0.d.x)))), u_input.a).a;
    let var_1 = arg_0;
    global3 = vec4<i32>(arg_0.c.x, select(i32(-1i) * -var_1.c.x, global3.x, all(select(func_4(arg_0.a, global3.zz, Struct_1(arg_0.a.a, var_0.d.x, 14883u, vec3<u32>(0u, var_0.b, var_0.d.x))).zy, var_1.d.yz, !arg_2.yz))), global0.x, 2147483647i & (-(~arg_1.x) | arg_1.x));
    let var_2 = 200f;
    let var_3 = -(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(-1i, global0.x), _wgslsmith_dot_vec3_i32(global0.xyw, arg_1.ywz >> (arg_0.a.d % vec3<u32>(32u)))) ^ 1i);
    return func_5(var_1.a, abs(u_input.a) << (arg_0.a.d.zx % vec2<u32>(32u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> vec4<f32> {
    let var_0 = func_7(Struct_2(func_6(58972u, func_5(func_2(global3.x, vec3<bool>(arg_1, arg_1, arg_1)), ~u_input.a), global0.xx, arg_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(-27857i, global0.x, global3.x, global3.x), vec4<i32>(-19872i, reverseBits(global3.x), ~32995i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global3.x, global0.x, -2147483647i), vec4<i32>(-1i, 1i, -1i, 2147483647i)))), _wgslsmith_mod_vec2_i32(global0.xy, abs(vec2<i32>(global0.x, 24839i))) | _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global3.x), global0.wz), vec2<i32>(global3.x, global3.x), global3.xw), !func_5(Struct_1(vec4<f32>(arg_0.x, -1331f, arg_0.x, -469f), u_input.a.x, u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4261u))).d), reverseBits(((vec4<i32>(2147483647i, global0.x, 1i, global3.x) & vec4<i32>(4861i, global0.x, 39693i, global3.x)) << (firstTrailingBit(vec4<u32>(u_input.a.x, 13867u, u_input.a.x, 23444u)) % vec4<u32>(32u))) >> (~abs(vec4<u32>(2939u, 3589u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), !(!(!select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, true, false, false), false))));
    let var_1 = var_0;
    var var_2 = Struct_1(vec4<f32>(747f, var_0.a.a.x, 417f, _wgslsmith_f_op_f32(f32(-1f) * -1315f)), _wgslsmith_sub_u32(~(u_input.a.x >> (79879u % 32u)), _wgslsmith_div_u32(u_input.a.x, ~(78848u & var_1.a.d.x))), 3840u, var_0.a.d);
    var var_3 = reverseBits(~(-2147483647i & _wgslsmith_div_i32(_wgslsmith_mod_i32(-1469i, 2147483647i), func_5(Struct_1(var_1.a.a, 1u, u_input.a.x, var_0.a.d), var_2.d.zz).c.x)));
    let var_4 = Struct_1(var_2.a, 1u, ~(~max(var_2.d.x, var_0.a.d.x)), var_2.d);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_4.a - vec4<f32>(var_2.a.x, var_2.a.x, arg_0.x, var_2.a.x)), func_2(global3.x, vec3<bool>(var_1.d.x, true, var_0.d.x)).a, var_1.d)), func_7(func_7(Struct_2(var_4, var_0.b, vec2<i32>(0i, 0i), var_1.d), var_1.b, var_1.d), func_5(var_0.a, vec2<u32>(var_1.a.d.x, 36250u)).b, var_0.d).d)), _wgslsmith_f_op_vec4_f32(-arg_0)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(445f, 2694f))), var_2.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + var_1.a.a.x) * var_2.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(reverseBits(vec4<i32>(1i >> (u_input.a.x % 32u), global0.x, select(global3.x, -2147483647i, true), ~global0.x)));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2186f, -1000f, 648f, -272f)), true)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f) - -1443f), _wgslsmith_f_op_f32(-func_6(0u, Struct_2(Struct_1(vec4<f32>(-1206f, 807f, 153f, 2561f), u_input.a.x, u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, 0u)), vec4<i32>(global0.x, -1i, 18108i, global0.x), global0.xz, vec4<bool>(false, true, false, false)), vec2<i32>(global0.x, global3.x), 210f).a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(738f, -478f)), _wgslsmith_f_op_f32(f32(-1f) * -179f))), max(~4294967295u, func_6(min(u_input.a.x, 1u), Struct_2(Struct_1(vec4<f32>(102f, -1000f, 220f, -1157f), 0u, u_input.a.x, vec3<u32>(u_input.a.x, 29354u, u_input.a.x)), vec4<i32>(-1i, global0.x, global3.x, -80397i), vec2<i32>(2147483647i, -56433i), vec4<bool>(true, true, true, false)), _wgslsmith_mult_vec2_i32(global0.wx, vec2<i32>(-1i, -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -448f)).b) & u_input.a.x, 4945u, func_5(func_5(func_2(0i, vec3<bool>(false, true, false)), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(64045u, 5347u))).a, ~u_input.a).a.d >> (((~vec3<u32>(0u, u_input.a.x, u_input.a.x) << (~vec3<u32>(1u, 4294967295u, 46647u) % vec3<u32>(32u))) & ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(5385u, 4294967295u, u_input.a.x))) % vec3<u32>(32u)));
    var var_1 = Struct_1(var_0.a, _wgslsmith_mod_u32(~func_6(func_5(Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, -2155f, var_0.a.x), u_input.a.x, 0u, var_0.d), u_input.a).a.b, func_7(Struct_2(Struct_1(vec4<f32>(-1198f, -1547f, -1379f, -1653f), 4537u, var_0.d.x, var_0.d), vec4<i32>(23550i, -2147483647i, -4763i, -47630i), vec2<i32>(global0.x, global3.x), vec4<bool>(false, false, false, true)), vec4<i32>(-22115i, global3.x, 42535i, -47034i), vec4<bool>(true, true, true, true)), global0.yy, _wgslsmith_f_op_f32(trunc(1101f))).c, ~(~var_0.c) << (((1u << (u_input.a.x % 32u)) >> (~var_0.b % 32u)) % 32u)), ~u_input.a.x, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.d.x, _wgslsmith_mult_u32(var_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, var_0.d.x, 3823u), vec4<u32>(u_input.a.x, 4294967295u, 114547u, u_input.a.x)))), _wgslsmith_add_vec3_u32(vec3<u32>(abs(1u), _wgslsmith_add_u32(4271u, 0u), ~4294967295u), var_0.d)));
    var var_2 = 1u;
    var var_3 = var_1.a.yxw;
    let var_4 = 1562f;
    let var_5 = Struct_2(func_2(firstLeadingBit(1i), vec3<bool>(true, (global0.x >> (0u % 32u)) != global3.x, true)), select(vec4<i32>(~(~1i), global3.x, -(i32(-1i) * -2147483647i), ~global3.x), reverseBits(select(vec4<i32>(global0.x, -1i, global3.x, global3.x), vec4<i32>(0i, global3.x, -2147483647i, global3.x), false) >> (countOneBits(vec4<u32>(18668u, 11925u, u_input.a.x, 36978u)) % vec4<u32>(32u))), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)))), select(func_5(func_7(func_5(var_0, var_1.d.zx), -vec4<i32>(global3.x, 2147483647i, -2147483647i, global3.x), vec4<bool>(true, false, false, true)).a, var_0.d.yz).b.wx, -firstLeadingBit(max(vec2<i32>(1i, global0.x), vec2<i32>(1i, global3.x))), all(func_7(Struct_2(Struct_1(var_1.a, u_input.a.x, 23034u, vec3<u32>(var_1.b, u_input.a.x, 55255u)), vec4<i32>(0i, -41528i, 1i, 4727i), vec2<i32>(global0.x, global3.x), vec4<bool>(false, false, false, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, -28037i), vec4<i32>(global3.x, global0.x, global3.x, 1i), vec4<i32>(-29449i, -1i, global0.x, global0.x)), func_7(Struct_2(Struct_1(vec4<f32>(var_4, var_4, var_1.a.x, var_0.a.x), 32461u, u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(0i, -2147483647i, 0i, global0.x), vec2<i32>(-39814i, global0.x), vec4<bool>(true, false, true, true)), vec4<i32>(2147483647i, 2147483647i, -1i, global0.x), vec4<bool>(true, true, true, true)).d).d)), vec4<bool>(all(!func_7(Struct_2(var_0, vec4<i32>(-37929i, global0.x, -4129i, -1i), global3.yw, vec4<bool>(false, false, false, true)), vec4<i32>(54619i, global0.x, 72369i, global0.x), vec4<bool>(true, true, true, false)).d), !func_4(var_0, vec2<i32>(global3.x, -26835i), var_0).x != true, global0.x > -34822i, true));
    global3 = vec4<i32>(_wgslsmith_mod_i32(-select(var_5.c.x, 0i >> (var_1.d.x % 32u), var_5.d.x), _wgslsmith_dot_vec2_i32(~(~global0.zy), global0.zy)), global0.x, ~2147483647i, global0.x << (var_1.b % 32u));
    var var_6 = _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-175f * func_5(var_5.a, var_5.a.d.yy).a.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_4 - var_0.a.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(672f))) * _wgslsmith_f_op_f32(var_0.a.x - -1129f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(39536i | ~_wgslsmith_add_i32(var_5.b.x, var_5.c.x), countOneBits(~(~12412i))), _wgslsmith_f_op_f32(-var_5.a.a.x));
}

