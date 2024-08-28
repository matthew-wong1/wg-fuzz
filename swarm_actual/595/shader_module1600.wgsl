struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 30472u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    global0 = ~(firstTrailingBit(u_input.c) | firstTrailingBit(4294967295u));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b)))), arg_0.d.b.x);
    var_0 = _wgslsmith_f_op_vec3_f32(arg_0.d.c.zwy * arg_0.d.b.ywx);
    global0 = arg_0.d.a;
    let var_1 = arg_0.d;
    return Struct_2(select(false, arg_1.x, select(any(!vec3<bool>(arg_1.x, true, var_1.d.x)), var_1.d.x & arg_1.x, _wgslsmith_mult_u32(40775u, 472u) != ~u_input.c)), -1094f, countOneBits(-arg_0.c), var_1);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_3.d.b.x))))) - _wgslsmith_f_op_f32(abs(arg_3.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-437f, -233f))))))));
    let var_1 = Struct_1(_wgslsmith_add_u32(~arg_2.x, 59705u & arg_3.d.a), vec4<f32>(_wgslsmith_f_op_f32(796f + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(313f, 961f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.d.c.x, 375f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(158f)))) * var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_3.d.b))) * _wgslsmith_f_op_vec4_f32(-arg_3.d.c)), arg_3.d.d);
    let var_2 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(364f, _wgslsmith_div_f32(arg_3.d.b.x, _wgslsmith_f_op_f32(round(1211f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -229f))))), -_wgslsmith_div_vec3_i32(arg_3.c, arg_3.c), var_1);
    var_0 = var_1.c.zx;
    let var_3 = true;
    return vec3<i32>(2147483647i, ~u_input.a, 14315i);
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec3_i32(abs(func_3(-37146i, select(true, true, false), vec3<u32>(1u, 34968u, 0u) | vec3<u32>(u_input.c, 55946u, 70971u), func_2(Struct_2(false, -921f, vec3<i32>(u_input.d, 8664i, 2147483647i), Struct_1(0u, vec4<f32>(1272f, -1180f, -592f, 286f), vec4<f32>(-1985f, -1300f, 825f, 1792f), vec2<bool>(true, false))), vec2<bool>(true, true))) & _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, 25791i, u_input.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(-47156i, u_input.a, 26577i), vec3<i32>(0i, u_input.b, -2147483647i)), vec3<i32>(28212i, 0i, 41979i))), _wgslsmith_div_vec3_i32(vec3<i32>(1i ^ (u_input.d | u_input.b), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-9007i, u_input.b), abs(u_input.d)), u_input.b), vec3<i32>(-1i) * -(~vec3<i32>(-39674i, -1i, u_input.b))));
    var var_1 = func_2(func_2(Struct_2(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-351f)))), _wgslsmith_div_vec3_i32(vec3<i32>(41720i, 2147483647i, u_input.b), ~var_0), Struct_1(73639u, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -2638f, 1160f, 851f))), vec4<f32>(582f, -112f, -935f, -1000f), func_2(Struct_2(true, -735f, vec3<i32>(var_0.x, var_0.x, u_input.a), Struct_1(17733u, vec4<f32>(1528f, -297f, -149f, -368f), vec4<f32>(-1000f, 2066f, 947f, -1256f), vec2<bool>(false, false))), vec2<bool>(true, true)).d.d)), vec2<bool>(false, max(u_input.b, -35771i) >= u_input.b)), vec2<bool>(true, all(vec4<bool>(true, true, true, true)))).c.zz;
    var var_2 = ~vec2<u32>(~u_input.c, max(~(~arg_0), 0u));
    var_1 = vec2<i32>(u_input.d, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~select(var_0.zx, var_0.xy, false), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 45742i), ~var_0.yz)), abs(~vec2<i32>(1i, var_1.x))));
    return Struct_3(Struct_1(0u, vec4<f32>(1459f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-576f))), -331f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(253f, -364f, -1000f, 2757f), vec4<f32>(1380f, -1269f, 754f, 1643f))))))), select(!func_2(Struct_2(false, -621f, var_0, Struct_1(0u, vec4<f32>(512f, -1173f, 243f, 283f), vec4<f32>(-1000f, 1000f, -315f, -277f), vec2<bool>(true, true))), vec2<bool>(true, true)).d.d, !select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_2(u_input.d >= arg_1, arg_0.a.b.x, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(func_2(Struct_2(true, arg_0.a.b.x, vec3<i32>(2147483647i, u_input.b, arg_1), Struct_1(u_input.c, arg_0.a.b, vec4<f32>(arg_0.a.b.x, -782f, arg_0.a.c.x, -558f), vec2<bool>(arg_0.a.d.x, false))), vec2<bool>(true, false)).c), -(vec3<i32>(-1i, 2147483647i, 1i) << (vec3<u32>(u_input.c, 4294967295u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_i32(max(vec3<i32>(arg_1, arg_1, u_input.a), vec3<i32>(arg_1, 11403i, u_input.a)) ^ func_3(2147483647i, arg_0.a.d.x, vec3<u32>(1u, 25869u, u_input.c), Struct_2(arg_2, arg_0.a.c.x, vec3<i32>(-26036i, -15462i, u_input.a), arg_0.a)), vec3<i32>(23237i, 9242i, u_input.a))), arg_0.a);
    let var_1 = !(!(!vec4<bool>(false, 26724u > var_0.d.a, var_0.a, var_0.d.d.x)));
    var var_2 = firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.c.x, ~func_2(var_0, var_0.d.d).c.x, arg_1 >> (var_0.d.a % 32u)), vec4<i32>(u_input.a, abs(-1i), -1i, ~_wgslsmith_clamp_i32(u_input.b, arg_1, u_input.a))));
    let var_3 = _wgslsmith_div_f32(func_2(var_0, var_0.d.d).d.b.x, arg_0.a.b.x);
    global0 = select(arg_0.a.a, _wgslsmith_mod_u32(0u, 3860u), all(!select(vec3<bool>(true, arg_0.a.d.x, false), vec3<bool>(arg_2, var_1.x, false), vec3<bool>(true, true, arg_2)))) >> (var_0.d.a % 32u);
    return Struct_1(countOneBits(_wgslsmith_sub_u32(arg_0.a.a, arg_0.a.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d.c) * _wgslsmith_f_op_vec4_f32(ceil(arg_0.a.b))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.c.x), var_3, _wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1233f))))), !(!select(!arg_0.a.d, func_2(var_0, vec2<bool>(true, var_1.x)).d.d, true)));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> Struct_2 {
    let var_0 = func_2(Struct_2(arg_0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1095f + -547f), arg_1)), firstLeadingBit(vec3<i32>(firstTrailingBit(2147483647i), abs(78449i), -1i)), func_4(arg_0, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-22883i, -3678i, 1i, 2147483647i), vec4<i32>(arg_2, arg_2, u_input.a, arg_2)), -19460i), !func_4(arg_0, -9514i, arg_0.a.d.x).d.x)), arg_0.a.d);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(var_0.d.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(300f + var_0.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1897f), _wgslsmith_f_op_f32(arg_0.a.c.x + arg_0.a.c.x)) + arg_0.a.c) + var_0.d.c)));
    var var_2 = func_4(func_1(4294967295u & _wgslsmith_mod_u32(var_0.d.a, u_input.c), ~20986u), -_wgslsmith_add_i32(_wgslsmith_div_i32(16710i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.c.x, arg_2, var_0.c.x), vec4<i32>(var_0.c.x, arg_2, var_0.c.x, arg_2))), 1i), func_1(~abs(abs(arg_0.a.a)), 1u).a.d.x);
    let var_3 = var_0;
    let var_4 = vec3<u32>(func_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(5602u, 81937u), vec2<u32>(var_2.a, 0u) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))), ~_wgslsmith_div_u32(0u, var_2.a) << ((abs(arg_0.a.a) | 0u) % 32u)).a.a, ~var_0.d.a, abs(var_2.a) & _wgslsmith_sub_u32(arg_0.a.a, _wgslsmith_mod_u32(var_2.a, 10588u)));
    return var_3;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = !(!select(vec3<bool>(all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), false, select(arg_0.d.d.x, false, arg_0.d.d.x)), vec3<bool>(any(arg_0.d.d), true, true), vec3<bool>(false, arg_0.a, func_2(Struct_2(arg_0.d.d.x, -1656f, vec3<i32>(u_input.a, u_input.b, 0i), Struct_1(u_input.c, vec4<f32>(arg_1.x, -1903f, 1000f, arg_1.x), arg_0.d.c, vec2<bool>(false, true))), arg_0.d.d).a)));
    let var_1 = ~_wgslsmith_mod_vec2_u32((min(vec2<u32>(37237u, u_input.c), vec2<u32>(10687u, arg_0.d.a)) >> (firstTrailingBit(vec2<u32>(arg_0.d.a, 87348u)) % vec2<u32>(32u))) << (select(vec2<u32>(1u, 1u), vec2<u32>(arg_0.d.a, 10896u) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), vec2<bool>(true, true)) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(1u, 17809u), vec2<u32>(arg_0.d.a, u_input.c), arg_0.d.d), vec2<u32>(7025u, 1u), countOneBits(vec2<u32>(19525u, 1u))));
    let var_2 = ~(u_input.c | ~(min(29646u, arg_0.d.a) | u_input.c));
    let var_3 = func_5(func_1(~var_1.x, ~_wgslsmith_clamp_u32(~var_1.x, 0u, func_2(arg_0, var_0.zz).d.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(sign(func_4(Struct_3(Struct_1(arg_0.d.a, vec4<f32>(715f, -218f, arg_0.d.c.x, -748f), vec4<f32>(-235f, arg_0.b, -1941f, 494f), vec2<bool>(false, var_0.x))), arg_0.c.x, false).c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b))), firstTrailingBit(_wgslsmith_sub_i32(arg_0.c.x, -7810i)));
    var var_4 = all(var_0);
    return Struct_1(abs(var_2), vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1141f, var_3.d.b.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-449f)) + arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d.c.x + -1218f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-339f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_3.d.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0.d.b)) * vec4<f32>(-872f, arg_0.b, var_3.b, var_3.d.c.x))), _wgslsmith_f_op_vec4_f32(max(arg_0.d.c, var_3.d.c)))), vec2<bool>(arg_0.d.d.x & arg_0.d.d.x, true || arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, 79483u <= u_input.c, true);
    let var_1 = -882f;
    var_0 = vec4<bool>(true, !(_wgslsmith_f_op_f32(-1063f * var_1) > _wgslsmith_f_op_f32(min(-2105f, _wgslsmith_f_op_f32(f32(-1f) * -1298f)))), false, var_0.x || var_0.x);
    var var_2 = var_1;
    let var_3 = func_6(func_5(Struct_3(func_4(func_1(1u, u_input.c), _wgslsmith_div_i32(15655i, u_input.a), !var_0.x)), var_1, u_input.b), func_4(Struct_3(func_4(Struct_3(Struct_1(4294967295u, vec4<f32>(var_1, var_1, 1183f, var_1), vec4<f32>(var_1, 515f, -1290f, var_1), var_0.zy)), -u_input.d, true)), _wgslsmith_sub_i32(u_input.b | func_3(-11668i, true, vec3<u32>(u_input.c, 29316u, 1u), Struct_2(true, var_1, vec3<i32>(-1i, 32231i, -2147483647i), Struct_1(u_input.c, vec4<f32>(var_1, 1403f, -1195f, var_1), vec4<f32>(var_1, var_1, var_1, 1707f), var_0.zz))).x, abs(abs(u_input.a))), true).b.xww);
    let var_4 = _wgslsmith_div_vec3_i32(func_2(Struct_2(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.b.x))), countOneBits(vec3<i32>(0i, -8096i, -43232i)) >> (~vec3<u32>(u_input.c, 11818u, u_input.c) % vec3<u32>(32u)), var_3), var_3.d).c, vec3<i32>(u_input.b, 10548i, i32(-1i) * -(~u_input.a)));
    var var_5 = !(!(!vec4<bool>(func_6(Struct_2(var_0.x, var_1, vec3<i32>(46864i, 8189i, 1i), var_3), vec3<f32>(var_3.c.x, var_3.c.x, var_1)).d.x, select(var_3.d.x, true, false), !var_3.d.x, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~vec3<u32>(func_1(0u, var_3.a).a.a, 41042u, _wgslsmith_div_u32(u_input.c, var_3.a)), vec3<u32>(~31046u, u_input.c, ~u_input.c & 1u)), 4294967295u, _wgslsmith_sub_vec3_u32(~vec3<u32>(var_3.a, ~u_input.c, 1u), vec3<u32>(abs(func_2(Struct_2(false, var_1, var_4, Struct_1(u_input.c, var_3.b, vec4<f32>(var_1, 1169f, var_3.b.x, var_1), var_3.d)), vec2<bool>(false, false)).d.a), (var_3.a << (1u % 32u)) >> (func_2(Struct_2(var_3.d.x, 1000f, vec3<i32>(var_4.x, -8435i, var_4.x), var_3), var_3.d).d.a % 32u), abs(var_3.a))), countOneBits(countOneBits(vec3<u32>(0u, u_input.c, 4294967295u) | min(vec3<u32>(4294967295u, 24668u, u_input.c), vec3<u32>(6705u, 4294967295u, 4294967295u)))), var_4);
}

