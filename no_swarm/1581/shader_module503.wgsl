struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: f32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-443f, 848f, 1681f, -654f, 1178f, -679f, -503f, -1000f, -1682f, 1000f, -110f, 387f, -1061f, 178f, 147f, 1000f, -1000f, -276f, -177f, -1000f, -499f, 511f, 1239f, -471f, -689f, 755f, 1343f, 440f, 790f, -524f, 983f);

var<private> global1: array<vec2<i32>, 19>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(0i), Struct_1(-1i), Struct_1(-1i), Struct_1(-5517i), Struct_1(-61995i), Struct_1(58548i), Struct_1(2147483647i), Struct_1(-55561i), Struct_1(15908i), Struct_1(-20155i), Struct_1(6477i), Struct_1(-12081i), Struct_1(9634i), Struct_1(7554i), Struct_1(47819i), Struct_1(2147483647i), Struct_1(-25694i), Struct_1(1i), Struct_1(-15873i), Struct_1(24568i), Struct_1(11826i), Struct_1(-1963i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(0i), Struct_1(-18484i), Struct_1(-28729i), Struct_1(68362i));

var<private> global4: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + -1000f);
    let var_1 = _wgslsmith_add_vec4_u32(~(max(vec4<u32>(u_input.b, 17454u, 1u, 29422u) << (vec4<u32>(1u, u_input.b, 22928u, u_input.b) % vec4<u32>(32u)), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)) ^ (~vec4<u32>(u_input.b, u_input.b, u_input.b, 17427u) ^ select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, 1u, u_input.b), false))), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 22802u, 22994u), select(vec4<bool>(arg_1.d.x, global4.a.x, global4.a.x, true), vec4<bool>(false, true, arg_3, arg_3), arg_1.d.x)), countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))));
    var var_2 = Struct_3(!global4.a, -28479i);
    let var_3 = Struct_5(Struct_4(firstTrailingBit(4294967295u), false, global0[_wgslsmith_index_u32(~(u_input.b >> (~var_1.x % 32u)), 31u)], true, _wgslsmith_add_vec3_u32(vec3<u32>(~42142u, ~u_input.b, var_1.x & 81058u), vec3<u32>(~var_1.x, var_1.x, ~4294967295u))), -1312f, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_0.a.a, -13545i), -arg_0.e.x, u_input.a.x, _wgslsmith_mult_i32(arg_0.a.a, arg_1.e.x)), ~vec4<i32>(2147483647i, 1i, 3982i, 14958i)) & 2147483647i, Struct_1(reverseBits(_wgslsmith_mod_i32(min(-2147483647i, arg_1.a.a), -arg_1.a.a))), Struct_3(global4.a, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(30218i, arg_1.c.x, u_input.a.x)), -vec3<i32>(u_input.a.x, arg_1.a.a, arg_1.a.a)), -52085i)));
    global2 = 45210u;
    return ~u_input.b;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_5 {
    global1 = array<vec2<i32>, 19>();
    let var_0 = countOneBits(~u_input.b);
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(func_3(Struct_2(Struct_1(-1i), _wgslsmith_f_op_vec4_f32(floor(arg_0)), ~vec2<i32>(15155i, global4.b), vec3<bool>(true, global4.a.x, global4.a.x), vec3<i32>(-2147483647i, u_input.a.x, 0i) | vec3<i32>(global4.b, u_input.a.x, -12956i)), Struct_2(global3[_wgslsmith_index_u32(abs(1u), 28u)], arg_0, ~vec2<i32>(u_input.a.x, 1i), vec3<bool>(true, true, global4.a.x), max(vec3<i32>(31473i, u_input.a.x, global4.b), vec3<i32>(-40192i, u_input.a.x, u_input.a.x))), global4.a.zx, all(!vec3<bool>(true, global4.a.x, global4.a.x))), ~arg_1, ~(~select(39512u, arg_1, global4.a.x)), 1u), countOneBits(vec4<u32>(u_input.b, arg_1, 4294967295u, _wgslsmith_mult_u32(arg_1, ~u_input.b))));
    let var_2 = false;
    var var_3 = 76737u;
    return Struct_5(Struct_4(29446u, var_2 | !(false && var_2), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1, 31u)] * global0[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(-2060f * arg_0.x)))), !var_2 | global4.a.x, ~vec3<u32>(func_3(Struct_2(Struct_1(-1i), arg_0, vec2<i32>(global4.b, 29466i), vec3<bool>(true, global4.a.x, global4.a.x), u_input.a.zwy), Struct_2(Struct_1(0i), arg_0, u_input.a.zy, vec3<bool>(var_2, false, global4.a.x), vec3<i32>(global4.b, u_input.a.x, u_input.a.x)), vec2<bool>(true, global4.a.x), true), reverseBits(1u), max(4294967295u, arg_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_mult_i32(u_input.a.x, 33588i), Struct_1(~(~(0i >> (arg_1 % 32u)))), Struct_3(select(vec3<bool>(select(global4.a.x, false, var_2), global4.a.x, true), !(!global4.a), vec3<bool>(global4.a.x, global4.a.x || var_2, !var_2)), -(~(31i | u_input.a.x))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_4) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(-(-1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, arg_1.b, arg_1.b), u_input.a.xzy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.c, 279f, -999f, 1828f), vec4<f32>(arg_2.c, arg_2.c, arg_2.c, arg_2.c))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(449f, -1025f, 543f, global0[_wgslsmith_index_u32(0u, 31u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1223f, global0[_wgslsmith_index_u32(arg_0.a.a, 31u)], arg_0.b, 501f))))), _wgslsmith_div_vec2_i32(u_input.a.xw, -(~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.e.b, arg_1.b), vec2<i32>(arg_1.b, 1i)))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(460f, 1246f, -469f, 557f), vec4<f32>(1106f, arg_2.c, -212f, 1038f), vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.c, -141f, arg_0.b, arg_2.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 569f, arg_0.a.c, arg_0.b)), true))), abs(arg_0.a.a)).e.a, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(countOneBits(vec3<i32>(1i, 0i, 0i))), firstTrailingBit(vec3<i32>(arg_1.b, arg_0.c, arg_0.d.a)), vec3<i32>(select(1i, 1i, true), _wgslsmith_div_i32(arg_1.b, arg_0.e.b), countOneBits(1i))), firstTrailingBit(vec3<i32>(2147483647i, ~13552i, -39373i << (1u % 32u)))));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-7118i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(14420i, global4.b), global1[_wgslsmith_index_u32(u_input.b, 19u)]), u_input.a.x, arg_0.c) | ~abs(vec4<i32>(1i, 0i, var_0.a.a, arg_1.b)), vec4<i32>(_wgslsmith_mod_i32((var_0.a.a ^ -29140i) ^ var_0.e.x, countOneBits(i32(-1i) * -49693i)), ~(-arg_1.b), arg_0.c, abs(min(_wgslsmith_dot_vec3_i32(var_0.e, u_input.a.wxy), reverseBits(u_input.a.x)))));
    let var_2 = vec2<bool>(false, select(func_2(_wgslsmith_f_op_vec4_f32(var_0.b + var_0.b), ~4294967295u).e.a.x | arg_1.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, arg_0.a.e.x), vec2<u32>(u_input.b, arg_2.a)), arg_0.a.a) > select(_wgslsmith_add_u32(57229u, arg_0.a.e.x), func_2(var_0.b, arg_2.e.x).a.e.x, any(vec4<bool>(global4.a.x, arg_1.a.x, true, false))), false | all(var_0.d.xz)));
    let var_3 = select(!select(global4.a.zx, vec2<bool>(true, true), arg_0.e.a.xx), arg_1.a.xx, var_0.d.yy);
    global3 = array<Struct_1, 28>();
    return Struct_4(~u_input.b, all(!(!arg_1.a)), arg_2.c, false, vec3<u32>(~(~abs(6342u)), arg_0.a.e.x, 25291u));
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(countOneBits(4294967295u), 28u)];
    global1 = array<vec2<i32>, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(func_4(Struct_5(Struct_4(65618u, true, -1390f, global4.a.x, vec3<u32>(u_input.b, arg_1, 4294967295u)), global0[_wgslsmith_index_u32(92402u, 31u)], -2147483647i, Struct_1(global4.b), Struct_3(global4.a, var_0.a)), func_2(vec4<f32>(565f, 702f, 2277f, 234f), arg_0.e.x).e, func_4(Struct_5(arg_0, arg_0.c, var_0.a, global3[_wgslsmith_index_u32(1u, 28u)], Struct_3(vec3<bool>(arg_0.b, true, false), global4.b)), Struct_3(global4.a, -25507i), arg_0)).c)), global0[_wgslsmith_index_u32(arg_0.e.x, 31u)], global0[_wgslsmith_index_u32(arg_1 | arg_0.e.x, 31u)], -1000f));
    return func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(814f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 31u)]) * global0[_wgslsmith_index_u32(~arg_0.e.x, 31u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 31u)] - arg_0.c), _wgslsmith_f_op_f32(trunc(898f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(391f, -442f)))))), 6890u).d;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_3(vec3<bool>(all(select(vec4<bool>(true, global4.a.x, false, true), vec4<bool>(arg_2, false, arg_2, global4.a.x), !global4.a.x)), all(global4.a), arg_2), -global4.b);
    let var_1 = func_5(func_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(51670u, 31u)], 1189f, global0[_wgslsmith_index_u32(25455u, 31u)], 1592f), vec4<f32>(296f, global0[_wgslsmith_index_u32(arg_1.x, 31u)], 1718f, 269f))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, 19478u, u_input.b), vec4<u32>(u_input.b, 89123u, u_input.b, 41161u))), Struct_3(global4.a, abs(_wgslsmith_sub_i32(var_0.b, var_0.b))), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(85370u, 31u)], 846f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(13517u, 31u)], -151f, 182f, 202f), vec4<f32>(-498f, global0[_wgslsmith_index_u32(0u, 31u)], 372f, global0[_wgslsmith_index_u32(arg_0, 31u)])))), ~func_3(Struct_2(Struct_1(-5407i), vec4<f32>(global0[_wgslsmith_index_u32(arg_1.x, 31u)], -1006f, global0[_wgslsmith_index_u32(21246u, 31u)], global0[_wgslsmith_index_u32(41617u, 31u)]), global1[_wgslsmith_index_u32(74519u, 19u)], vec3<bool>(global4.a.x, false, false), u_input.a.yxz), Struct_2(global3[_wgslsmith_index_u32(39640u, 28u)], vec4<f32>(-506f, global0[_wgslsmith_index_u32(1u, 31u)], 180f, 736f), u_input.a.xw, vec3<bool>(true, false, false), vec3<i32>(var_0.b, -9026i, var_0.b)), vec2<bool>(var_0.a.x, false), arg_2)).a), arg_0);
    var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(478f, -1704f, 893f, global0[_wgslsmith_index_u32(0u, 31u)])))))), ~arg_0).e;
    let var_2 = global4.a.x;
    let var_3 = _wgslsmith_mod_i32(1360i, u_input.a.x) | reverseBits(min(u_input.a.x, -21261i << (func_4(Struct_5(Struct_4(arg_0, var_0.a.x, -398f, arg_2, vec3<u32>(11278u, arg_1.x, 65820u)), global0[_wgslsmith_index_u32(u_input.b, 31u)], 2147483647i, global3[_wgslsmith_index_u32(arg_1.x, 28u)], Struct_3(global4.a, 6800i)), Struct_3(vec3<bool>(var_0.a.x, false, arg_2), 62180i), Struct_4(31419u, var_0.a.x, -294f, var_0.a.x, vec3<u32>(arg_0, 4294967295u, 47411u))).e.x % 32u)));
    return Struct_4(73467u, false, 778f, true, ~(vec3<u32>(41474u, 1u, 83669u) & select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 9591u, 6651u), vec3<u32>(0u, u_input.b, arg_1.x)), ~vec3<u32>(64377u, arg_1.x, 4294967295u), global4.a)));
}

fn func_6(arg_0: bool, arg_1: Struct_4, arg_2: f32) -> u32 {
    global2 = firstLeadingBit(~(~(~arg_1.e.x)));
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-633f, global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)], -465f), vec4<f32>(-705f, arg_1.c, -1230f, arg_2)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 268f, 273f, 1541f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_1.c, 1000f, global0[_wgslsmith_index_u32(u_input.b, 31u)]) * vec4<f32>(113f, global0[_wgslsmith_index_u32(1u, 31u)], 2244f, 719f))))), abs(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~12935u, 5742u, firstLeadingBit(4294967295u)), ~arg_1.e.x)));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, max(-24010i, func_2(vec4<f32>(-955f, global0[_wgslsmith_index_u32(var_0.a.a, 31u)], arg_2, arg_1.c), 1u).e.b)), abs(_wgslsmith_dot_vec2_i32(u_input.a.wy, u_input.a.yy)), var_0.e.b), vec3<i32>(-24013i, ~(~global4.b), _wgslsmith_mult_i32(~u_input.a.x, abs(u_input.a.x))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c)))));
    global3 = array<Struct_1, 28>();
    return func_4(Struct_5(Struct_4(_wgslsmith_div_u32(~0u, 1u), arg_0 && true, 267f, arg_1.d, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, -208f, -2643f, arg_1.c)), _wgslsmith_mod_u32(38451u, arg_1.a)).a.e), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, -1000f))), -645f)), 1i, Struct_1(_wgslsmith_mod_i32(43415i, 2147483647i >> (arg_1.e.x % 32u))), Struct_3(!select(global4.a, vec3<bool>(true, var_0.a.b, false), vec3<bool>(true, arg_0, true)), -func_2(vec4<f32>(arg_1.c, var_0.b, -1000f, arg_1.c), 716u).e.b)), var_0.e, func_1(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(4294967295u, u_input.b, var_0.a.e.x, 4294967295u)), ~(~vec4<u32>(0u, var_0.a.e.x, 4294967295u, u_input.b))), vec2<u32>(var_0.a.a, 33721u), !func_4(var_0, var_0.e, Struct_4(arg_1.a, true, -713f, true, vec3<u32>(76218u, 4294967295u, 9826u))).b && func_4(var_0, func_2(vec4<f32>(458f, 1637f, var_2, -858f), arg_1.a).e, var_0.a).d)).e.x;
}

fn func_7(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<bool>) -> StorageBuffer {
    let var_0 = _wgslsmith_div_i32(43359i, global4.b) << (24084u % 32u);
    global0 = array<f32, 31>();
    global4 = Struct_3(vec3<bool>(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(1u, 31u)], -160f, -1103f, arg_0.x)))), arg_1).e.a.x, !all(global4.a.xy) | true, false), 1i);
    let var_1 = Struct_4(select(func_1(func_4(Struct_5(Struct_4(arg_1, false, global0[_wgslsmith_index_u32(19683u, 31u)], global4.a.x, vec3<u32>(arg_1, arg_1, arg_1)), global0[_wgslsmith_index_u32(arg_1, 31u)], var_0, global3[_wgslsmith_index_u32(63069u, 28u)], Struct_3(arg_2.wyx, -10851i)), Struct_3(arg_2.yxw, -19450i), Struct_4(arg_1, false, arg_0.x, arg_2.x, vec3<u32>(u_input.b, 0u, 4294967295u))).e.x, ~vec2<u32>(arg_1, 4294967295u), any(arg_2)).e.x | arg_1, 23794u, func_1(_wgslsmith_mult_u32(17101u, 1817u), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 0u), select(vec2<u32>(arg_1, 1u), vec2<u32>(u_input.b, 9614u), vec2<bool>(false, false))), all(func_2(vec4<f32>(arg_0.x, 442f, global0[_wgslsmith_index_u32(arg_1, 31u)], 1924f), u_input.b).e.a)).d), true, 874f, true, vec3<u32>(u_input.b, u_input.b, 112065u));
    let var_2 = select(var_1.e.yx, abs((var_1.e.zy >> (vec2<u32>(54114u, 4294967295u) % vec2<u32>(32u))) & vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e.x, u_input.b, var_1.e.x, var_1.a), vec4<u32>(var_1.e.x, var_1.a, 4294967295u, 50915u)))), arg_2.x);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-125f, 1794f, var_1.c, -329f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(319f + var_1.c), -766f)))), reverseBits(var_1.e.zz), vec4<i32>(-2147483647i & var_0, ~global4.b & _wgslsmith_mod_i32(39825i, -1i), -2147483647i, _wgslsmith_dot_vec3_i32(u_input.a.yyx, u_input.a.xwx)) >> (~(abs(vec4<u32>(var_2.x, var_2.x, var_1.e.x, u_input.b)) >> (countOneBits(vec4<u32>(13623u, var_1.e.x, var_2.x, arg_1)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_i32(abs(2147483647i), -u_input.a.x);
    let x = u_input.a;
    s_output = func_7(vec2<f32>(_wgslsmith_f_op_f32(trunc(1293f)), global0[_wgslsmith_index_u32(func_6(select(global4.a.x && true, !global4.a.x, global4.a.x), func_1(~3513u, vec2<u32>(4294967295u, u_input.b), global4.a.x && global4.a.x), _wgslsmith_f_op_f32(1089f * _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(53106u, 31u)])))), 31u)]), u_input.b, vec4<bool>(_wgslsmith_f_op_f32(trunc(473f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 31u)])), all(vec2<bool>(true, false)) | any(vec2<bool>(true, true)), false, global4.a.x));
}

