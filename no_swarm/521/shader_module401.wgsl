struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(27380i, false);

var<private> global1: u32 = 21013u;

var<private> global2: f32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    let var_0 = Struct_4(arg_2);
    var var_1 = ~53701u;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1781f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(529f, _wgslsmith_f_op_f32(f32(-1f) * -1540f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1148f, -472f))))), _wgslsmith_f_op_f32(f32(-1f) * -373f)));
    var var_3 = !select(select(!(!vec4<bool>(false, var_0.a.b, arg_2.b, true)), select(vec4<bool>(true, global0.b, global0.b, var_0.a.b), select(vec4<bool>(true, false, false, false), vec4<bool>(arg_2.b, true, true, arg_2.b), var_0.a.b), true), false), vec4<bool>(var_2 >= _wgslsmith_f_op_f32(abs(var_2)), true, var_0.a.b, select(false, global0.b || true, true)), true);
    let var_4 = Struct_3(-(~(-(~1392i))), u_input.c);
    return -232f;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = u_input.e;
    let var_1 = arg_0;
    var var_2 = Struct_1(-41327i, true);
    var var_3 = vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-49707i, global0.a, 41415i, var_1.a)), vec4<i32>(-19281i, -1i, -27776i, var_1.a)), _wgslsmith_sub_i32(global0.a, 0i)), global0.a, ~(-3596i));
    global0 = Struct_1(var_2.a, 1i >= arg_0.a);
    return vec3<bool>(_wgslsmith_sub_i32(i32(-1i) * -arg_0.a, global0.a) > min(var_2.a, countOneBits(-2147483647i)), !(_wgslsmith_f_op_f32(func_3(var_1.a, vec4<u32>(4294967295u, u_input.b, 112965u, 51464u) & vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.b), Struct_1(arg_0.a, true), ~vec4<u32>(u_input.b, u_input.a.x, u_input.e.x, 4824u))) != -152f), 482f <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-706f, 1174f), -266f)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_2 {
    global1 = _wgslsmith_add_u32(u_input.a.x, min(~u_input.e.x, u_input.b));
    var var_0 = arg_1.yz;
    let var_1 = Struct_5(Struct_3(min(-2147483647i, arg_3.x), vec4<i32>(-1i) * -select(vec4<i32>(-36966i, 1i, global0.a, global0.a), arg_3, true)), u_input.e & select(firstLeadingBit(_wgslsmith_add_vec2_u32(u_input.a.zx, u_input.a.yy)), _wgslsmith_mult_vec2_u32(max(vec2<u32>(30815u, u_input.a.x), u_input.a.zy), vec2<u32>(1u, 0u)), arg_2), ~(u_input.c.zw >> (vec2<u32>(~34860u, u_input.b) % vec2<u32>(32u))));
    var var_2 = Struct_3(abs(-_wgslsmith_sub_i32(21218i, _wgslsmith_div_i32(arg_3.x, global0.a))), vec4<i32>(-reverseBits(0i), i32(-1i) * -1i, 0i, ~1i) | abs(vec4<i32>(u_input.c.x, -2147483647i, u_input.d.x, global0.a)));
    let var_3 = _wgslsmith_div_u32(var_1.b.x ^ 18730u, var_1.b.x);
    return Struct_2(reverseBits(_wgslsmith_mod_u32(~1u, 23556u)), Struct_1((i32(-1i) * -2147483647i) & (_wgslsmith_mult_i32(global0.a, var_2.b.x) << ((var_3 >> (42863u % 32u)) % 32u)), any(vec2<bool>(false, var_3 <= 0u))), Struct_1(-firstLeadingBit(global0.a), arg_2 || global0.b), arg_1.yy);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_4 {
    global0 = arg_1.b;
    var var_0 = arg_1.d.x;
    let var_1 = arg_1.c;
    global0 = func_4(!func_2(func_4(select(vec3<bool>(global0.b, true, true), vec3<bool>(global0.b, true, var_1.b), arg_1.c.b), vec4<f32>(1394f, arg_2.x, arg_1.d.x, 1358f), var_1.b, _wgslsmith_mult_vec4_i32(u_input.c, u_input.c)).b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, -1495f, arg_1.d.x) * vec4<f32>(arg_1.d.x, arg_2.x, 770f, arg_2.x))))), true, -_wgslsmith_add_vec4_i32(vec4<i32>(~var_1.a, ~(-7494i), -arg_0, firstLeadingBit(0i)), vec4<i32>(-u_input.d.x, 78511i, -1i, u_input.d.x & -1i))).b;
    global0 = func_4(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, global0.b, var_1.b), arg_1.b.b))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.d.x - -565f))) + 1463f), -448f, 199f, -939f), !(!(!arg_1.b.b)), vec4<i32>(arg_0, -var_1.a >> (u_input.a.x % 32u), max(2147483647i, 2147483647i), arg_1.c.a) & abs(vec4<i32>(countOneBits(29139i), u_input.d.x | global0.a, -u_input.d.x, _wgslsmith_sub_i32(arg_1.c.a, -1i)))).b;
    return Struct_4(func_4(vec3<bool>(var_1.b | arg_1.c.b, any(vec3<bool>(var_1.b, false, true)), false), vec4<f32>(-1205f, _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(step(-1471f, arg_2.x)), -189f), var_1.b, u_input.c).c);
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: i32) -> Struct_2 {
    global0 = func_5(select(global0.a, -1i, func_4(func_2(arg_0.a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, -547f, 784f, 548f)))), func_2(Struct_1(arg_0.a.a, arg_0.a.b)).x, vec4<i32>(9078i, 1i, arg_2, global0.a) >> (~vec4<u32>(1u, 1u, 1u, 0u) % vec4<u32>(32u))).b.b), Struct_2(reverseBits(~arg_1), arg_0.a, arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1692f, -881f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-116f, _wgslsmith_div_f32(3081f, 1440f), _wgslsmith_f_op_f32(1699f + -1002f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(461f, 723f, 275f))))))).a;
    let var_0 = (~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.e.x, 4294967295u, u_input.e.x), vec4<u32>(0u, 0u, u_input.e.x, 31800u))) & ~(~(~vec4<u32>(u_input.a.x, 17604u, 51139u, 4294967295u)))) << (vec4<u32>(~abs(132556u) & _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x), arg_1, _wgslsmith_mod_u32(44742u, 18959u), u_input.a.x) % vec4<u32>(32u));
    var var_1 = !arg_0.a.b && true;
    global2 = 1f;
    let var_2 = func_5(global0.a, func_4(select(func_2(func_5(-18295i, Struct_2(52845u, Struct_1(u_input.c.x, false), arg_0.a, vec2<f32>(352f, 1000f)), vec3<f32>(-474f, -1706f, -474f)).a), vec3<bool>(true, true, false), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1118f, -362f, 422f, 152f))))), any(!vec3<bool>(global0.b, arg_0.a.b, false)), vec4<i32>((arg_0.a.a | global0.a) & arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, 0i), select(vec2<i32>(global0.a, global0.a), vec2<i32>(1i, global0.a), global0.b)), func_4(!vec3<bool>(arg_0.a.b, global0.b, arg_0.a.b), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -1690f, -274f, -2087f))), arg_0.a.b != true, u_input.c).c.a, arg_2 | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -10164i, arg_0.a.a, u_input.c.x), vec4<i32>(global0.a, -1i, u_input.c.x, -1i)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-198f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1437f, 1789f)) * _wgslsmith_f_op_f32(sign(-620f))))).a.b;
    return Struct_2(firstTrailingBit(arg_1) >> (~var_0.x % 32u), func_4(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(var_2, true), vec2<bool>(true, false))), true, !var_2), _wgslsmith_div_vec4_f32(vec4<f32>(-2613f, -305f, -1421f, _wgslsmith_f_op_f32(-930f * 1799f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1185f, 1465f, 364f, -377f) - vec4<f32>(-2717f, 1287f, 521f, 1735f))), firstTrailingBit(~arg_1) >= func_4(select(vec3<bool>(var_2, false, false), vec3<bool>(arg_0.a.b, false, arg_0.a.b), vec3<bool>(arg_0.a.b, global0.b, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1246f, -1619f, -283f, -1024f)), arg_1 != 4294967295u, ~vec4<i32>(global0.a, 1i, -10063i, -2147483647i)).a, vec4<i32>(1i, -_wgslsmith_mod_i32(global0.a, -5330i), -global0.a & (arg_2 ^ 0i), abs(-2147483647i))).c, arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(588f)) * _wgslsmith_f_op_f32(f32(-1f) * -1184f))), _wgslsmith_f_op_f32(1068f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1119f + 798f) * -700f))));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_6(func_5(abs(-29529i), func_4(!func_2(Struct_1(global0.a, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(542f, -364f, -598f, -917f))), true, vec4<i32>(global0.a, -5945i, 1i, _wgslsmith_clamp_i32(30043i, -11319i, 25338i))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1317f, -804f)))), _wgslsmith_div_f32(1630f, _wgslsmith_f_op_f32(round(-1664f))))), u_input.e.x, -84454i & _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, global0.a, 8833i, 1i), u_input.c), firstLeadingBit(_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(19210i, u_input.c.x, 2778i, -3125i)))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_6(Struct_4(var_0.c), var_0.a << (u_input.a.x % 32u), 0i >> (var_0.a % 32u)).d.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -432f), _wgslsmith_f_op_f32(-var_0.d.x))))));
    let var_1 = func_5(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~global0.a, u_input.d.x), firstTrailingBit(1i ^ var_0.c.a)) ^ 8245i, Struct_2(_wgslsmith_add_u32(u_input.e.x, _wgslsmith_div_u32(31156u, var_0.a)), func_5(-(~global0.a), func_6(func_5(global0.a, var_0, vec3<f32>(-1407f, var_0.d.x, var_0.d.x)), 1u, 2147483647i), vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x + 2238f), 265f, 411f)).a, Struct_1(u_input.d.x << (1u % 32u), !func_2(var_0.c).x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(var_0.d))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -718f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(896f, -914f, 2395f)))))));
    let var_2 = _wgslsmith_f_op_f32(var_0.d.x * 1439f);
    let var_3 = u_input.a.x;
    return StorageBuffer((((var_0.b.a >> (1u % 32u)) >> (countOneBits(4294967295u) % 32u)) & 1i) << (_wgslsmith_add_u32(var_0.a, 1u) % 32u), 1119f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

