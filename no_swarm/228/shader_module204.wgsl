struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(0u, -1i, 36273u), Struct_1(4294967295u, 20339i, 0u), Struct_1(39965u, 2147483647i, 1u), Struct_1(0u, -28826i, 4294967295u), Struct_1(10291u, -64129i, 0u), Struct_1(23130u, -7891i, 28583u), Struct_1(7434u, -477i, 4294967295u), Struct_1(4294967295u, -74014i, 11573u), Struct_1(38751u, -39341i, 40240u), Struct_1(28843u, -26671i, 21166u), Struct_1(1u, 2147483647i, 1u), Struct_1(0u, 13545i, 58733u));

var<private> global2: Struct_4 = Struct_4(-204f, Struct_2(false, 344f));

var<private> global3: vec3<f32>;

var<private> global4: i32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = global0.yzy;
    let var_1 = Struct_5(!var_0.x && (43963u == _wgslsmith_add_u32(arg_2.a | 43695u, _wgslsmith_mod_u32(22179u, 1u))), 1i, var_0.yz, ~vec2<u32>(firstLeadingBit(~29987u), 38268u), false);
    global1 = array<Struct_1, 12>();
    global4 = 68793i;
    let var_2 = abs(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(25629u, 1u, var_1.d.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 44152u, arg_2.a, u_input.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.c.x, 0u), vec4<u32>(10098u, arg_2.a, 0u, 0u)))) & abs(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(20715u, 22390u, var_1.d.x, 1u), vec4<u32>(1u, var_1.d.x, u_input.c.x, u_input.d)), firstLeadingBit(vec4<u32>(arg_2.c, arg_2.a, 48009u, 4294967295u)))));
    return global2.b.b;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> Struct_4 {
    global2 = Struct_4(-115f, Struct_2(!(_wgslsmith_f_op_f32(ceil(715f)) > arg_2.d.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(global3.x - 145f), arg_2.e, arg_0))))));
    var var_0 = min(vec3<u32>(u_input.c.x, u_input.d, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, 1u, arg_3, 123498u), vec4<u32>(1u, 0u, u_input.d, 0u)), 59182u), _wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(0u, u_input.d, arg_2.c.c)))), vec3<u32>(~4294967295u, 76791u, abs(abs(arg_0.a)) & (firstLeadingBit(arg_3) << (_wgslsmith_div_u32(arg_3, 57912u) % 32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1350f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(655f + -811f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a.xxz) * vec3<f32>(global3.x, global3.x, -1000f))) - arg_2.a.www) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d.b), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(step(arg_2.a.x, arg_2.d.b))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(arg_2.a.xwx)))))));
    var var_2 = any(vec4<bool>(!(!arg_2.e.a), any(vec2<bool>(global2.b.a, any(vec4<bool>(false, arg_2.e.a, false, true)))), var_1.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, 994f))), global0.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_2.a)))));
    return Struct_4(600f, global2.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_5 {
    let var_0 = vec4<u32>(max(_wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 20138u, 1u, arg_1), vec4<u32>(arg_0.x, u_input.d, arg_0.x, 16946u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0.x, arg_0.x, u_input.c.x), vec4<u32>(1u, 51396u, 4294967295u, 1u))), firstLeadingBit(_wgslsmith_add_u32(4294967295u, arg_0.x))), min(4294967295u, 74591u), ~(~countOneBits(64157u)), ~_wgslsmith_sub_u32(6782u, arg_0.x) & 29171u) & _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(arg_1, 1u), arg_1, u_input.c.x), vec4<u32>(9247u, u_input.c.x, 51674u, arg_0.x) & ~vec4<u32>(16599u, 0u, arg_0.x, 1u)), vec4<u32>(~(u_input.d >> (1u % 32u)), arg_0.x, 1u, 1u));
    var var_1 = Struct_5(func_2(global1[_wgslsmith_index_u32(var_0.x, 12u)], u_input.a, Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.b, arg_2.a, global2.b.b, -900f)))), firstLeadingBit(u_input.a), Struct_1(~arg_0.x, u_input.b.x, _wgslsmith_clamp_u32(83909u, 43306u, 109884u)), func_2(Struct_1(arg_1, -1i, arg_0.x), ~50742i, Struct_3(vec4<f32>(-1205f, arg_2.b.b, 248f, 872f), u_input.b.x, global1[_wgslsmith_index_u32(arg_0.x, 12u)], Struct_2(false, arg_2.a), arg_2.b), ~41660u).b, Struct_2(true, global3.x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_0.wxy, ~u_input.c), ~1u & arg_0.x)).b.a, u_input.a, !global0.xz, var_0.yw, all(select(vec2<bool>(true, arg_3.x || false), arg_3.yz, any(!vec4<bool>(global2.b.a, true, arg_2.b.a, global0.x)))));
    var var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.b.xx << (min(vec2<u32>(47628u, arg_0.x) | vec2<u32>(0u, arg_1), select(arg_0.zz, vec2<u32>(51238u, var_0.x), true)) % vec2<u32>(32u)), select(~vec2<i32>(u_input.a, -1i) & vec2<i32>(0i, var_1.b), -vec2<i32>(-2147483647i, var_1.b), global0.x)), -vec2<i32>(firstTrailingBit(-4209i), u_input.b.x));
    let var_3 = select(~vec3<u32>(1u, arg_1, var_1.d.x), ~(~(countOneBits(u_input.c) << (vec3<u32>(85115u, 0u, u_input.d) % vec3<u32>(32u)))), any(!select(!vec4<bool>(true, true, arg_3.x, true), !vec4<bool>(true, false, arg_2.b.a, false), var_1.a || false)));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1558f))), arg_2.b);
    return Struct_5(all(vec2<bool>(func_2(Struct_1(var_0.x, var_1.b, var_1.d.x), ~var_1.b, Struct_3(vec4<f32>(-294f, global2.a, 277f, -484f), u_input.b.x, global1[_wgslsmith_index_u32(29041u, 12u)], Struct_2(true, var_4.b.b), arg_2.b), 0u).b.a, all(!vec3<bool>(global0.x, arg_2.b.a, true)))), _wgslsmith_mult_i32(u_input.b.x, var_1.b), vec2<bool>(true, true), countOneBits(u_input.c.xz), global2.b.a == global0.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f * -453f)), _wgslsmith_f_op_f32(-2651f + global3.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.b.b * arg_0.x)))) * vec3<f32>(183f, 656f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f + 543f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(4294967295u, 12u)], -16i, Struct_3(vec4<f32>(-701f, global2.b.b, -756f, global3.x), 2147483647i, Struct_1(arg_2.x, arg_3.x, 0u), global2.b, Struct_2(arg_1.c.x, -174f)), 33742u).b.b * _wgslsmith_f_op_f32(global3.x - global3.x)), _wgslsmith_f_op_f32(ceil(892f))), -1035f, -793f)));
    let var_1 = arg_1;
    global4 = u_input.a;
    let var_2 = !select(!(!(!vec4<bool>(arg_1.a, false, var_1.a, true))), !vec4<bool>(true, false, true, global0.x), func_4(u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4310u, arg_1.d.x, u_input.d, arg_2.x), vec4<u32>(arg_2.x, arg_2.x, 4294967295u, 1u)), ~vec4<u32>(arg_1.d.x, arg_2.x, 4294967295u, arg_2.x)), Struct_4(_wgslsmith_f_op_f32(global3.x - -680f), Struct_2(false, -265f)), select(!vec3<bool>(global0.x, true, true), global0.xyz, any(vec4<bool>(global0.x, true, false, true)))).c.x);
    let var_3 = global3.xy;
    return Struct_1(_wgslsmith_mult_u32(59507u, func_4(u_input.c, 1u, func_2(Struct_1(61995u, 19807i, 86618u), _wgslsmith_sub_i32(1i, 19685i), Struct_3(vec4<f32>(var_3.x, global2.b.b, arg_0.x, -1097f), u_input.b.x, Struct_1(4294967295u, -12222i, 1u), global2.b, Struct_2(var_1.c.x, 912f)), _wgslsmith_clamp_u32(arg_2.x, u_input.d, 1u)), !(!vec3<bool>(true, var_1.c.x, true))).d.x), 24001i, _wgslsmith_mod_u32(_wgslsmith_add_u32(~1u, ~arg_1.d.x) >> (abs(~58964u) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(50738u, u_input.d), u_input.c.zz)));
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4) -> Struct_3 {
    var var_0 = select(select(global0.zwy, global0.yxz, global0.yxw), !(!global0.yzx), global2.b.a);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a - 570f), _wgslsmith_f_op_f32(trunc(global2.b.b)), -436f, _wgslsmith_f_op_f32(step(-434f, -931f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.d.b + arg_1.d.b), _wgslsmith_f_op_f32(arg_2.b.b * -759f), -102f, func_2(arg_1.c, 1i, Struct_3(arg_1.a, 1304i, global1[_wgslsmith_index_u32(u_input.d, 12u)], Struct_2(global0.x, -299f), Struct_2(true, global3.x)), u_input.d).a))), _wgslsmith_add_i32(arg_1.b, arg_1.b), Struct_1(arg_1.c.c, -u_input.b.x, 4294967295u), arg_2.b, arg_2.b);
    let var_2 = arg_1.c;
    var var_3 = Struct_2(any(vec4<bool>(true, all(!vec3<bool>(global2.b.a, global2.b.a, true)), var_0.x, false)), _wgslsmith_f_op_f32(-global3.x));
    var var_4 = var_2.b;
    return arg_1;
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    var var_0 = func_6(arg_0.a, Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a, 1424f, global3.x, global3.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2966f, -506f, 192f, 621f))), vec4<f32>(1215f, 1032f, 968f, 252f)))), _wgslsmith_mult_i32(arg_0.b, _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(arg_0.b, 8261i))), func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, -295f)) * global3.yx), func_4(~u_input.c, 0u, func_2(global1[_wgslsmith_index_u32(14081u, 12u)], 50067i, Struct_3(vec4<f32>(-660f, -924f, global2.a, global3.x), u_input.b.x, arg_0, global2.b, Struct_2(true, 695f)), u_input.c.x), vec3<bool>(global0.x, global2.b.a, false)), vec2<u32>(1u, arg_0.a), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_0.b, arg_0.b), u_input.b))), Struct_2(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(954f, global2.b.b))), Struct_2(func_2(Struct_1(4294967295u, -2147483647i, u_input.d), arg_0.b, Struct_3(vec4<f32>(global3.x, -570f, 364f, 865f), u_input.b.x, global1[_wgslsmith_index_u32(u_input.d, 12u)], global2.b, global2.b), 11238u).b.a, global2.a)), func_2(arg_0, _wgslsmith_dot_vec2_i32(abs(~u_input.b.zz), vec2<i32>(45857i ^ arg_0.b, 41089i)), Struct_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1070f, 641f, global2.a, global2.b.b))), arg_0.b ^ arg_0.b, func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-614f, -1949f))), func_4(u_input.c, arg_0.a, Struct_4(global2.b.b, global2.b), global0.xyx), firstTrailingBit(vec2<u32>(45447u, 0u)), -vec3<i32>(u_input.b.x, arg_0.b, 2147483647i)), Struct_2(all(global0.yxx), _wgslsmith_f_op_f32(ceil(-1097f))), Struct_2(true, _wgslsmith_f_op_f32(270f * 362f))), _wgslsmith_mod_u32(countOneBits(arg_0.c), 1u)));
    var var_1 = Struct_3(vec4<f32>(150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1744f))), 982f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(-596f, global2.b.b), global3.x)))), 0i, global1[_wgslsmith_index_u32(46608u, 12u)], func_2(func_6(var_0.c.a, Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1236f, global3.x, -263f, 476f)), var_0.c.b, var_0.c, Struct_2(true, -394f), global2.b), Struct_4(var_0.a.x, Struct_2(false, global3.x))).c, arg_0.b, func_6(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, u_input.c.x, 9149u, 0u) | vec4<u32>(u_input.c.x, u_input.d, arg_0.c, 71153u), vec4<u32>(u_input.c.x, 0u, var_0.c.c, arg_0.a)), Struct_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, 274f, -535f, global3.x))), 62438i >> (u_input.d % 32u), global1[_wgslsmith_index_u32(~u_input.d, 12u)], func_6(u_input.c.x, Struct_3(vec4<f32>(-538f, 461f, -1543f, -699f), arg_0.b, var_0.c, global2.b, Struct_2(global2.b.a, 587f)), Struct_4(var_0.e.b, Struct_2(var_0.e.a, 762f))).e, Struct_2(true, 766f)), Struct_4(global2.b.b, var_0.e)), arg_0.a).b, var_0.e);
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.wyy - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, global2.b.b, var_1.d.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.wzy) * _wgslsmith_f_op_vec3_f32(-var_0.a.wzx)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.ywx)))));
    var var_2 = func_2(global1[_wgslsmith_index_u32(var_1.c.c, 12u)], func_5(var_1.a.zz, Struct_5(global0.x, ~(-52222i), global0.zy, vec2<u32>(13473u, firstLeadingBit(var_1.c.c)), true), ~_wgslsmith_add_vec2_u32(vec2<u32>(31986u, 1u), u_input.c.zy) << (min(~vec2<u32>(u_input.c.x, arg_0.c), u_input.c.zz | vec2<u32>(17091u, 10150u)) % vec2<u32>(32u)), ~select(vec3<i32>(-1i, var_0.b, 41455i), u_input.b, !var_0.d.a)).b, Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(566f, -1096f, var_1.e.b, global3.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 430f, -2211f, global3.x))), 0i ^ -select(-1i, 0i, var_1.d.a), var_0.c, Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), Struct_2((4294967295u == var_0.c.a) | true, var_0.d.b)), select(_wgslsmith_mod_u32(~(~u_input.c.x), firstTrailingBit(~0u)), firstLeadingBit(~min(8790u, 0u)), func_6(~(u_input.c.x & arg_0.c), Struct_3(_wgslsmith_f_op_vec4_f32(max(var_1.a, vec4<f32>(-1292f, global3.x, 184f, -877f))), ~var_0.b, arg_0, Struct_2(false, global3.x), Struct_2(var_0.d.a, 1184f)), Struct_4(_wgslsmith_f_op_f32(global2.a * var_1.a.x), var_0.d)).e.a));
    global2 = Struct_4(-755f, var_2.b);
    return func_2(Struct_1(var_0.c.a, -(i32(-1i) * -u_input.a), arg_0.c), abs(var_0.c.b), func_6(u_input.d, Struct_3(var_1.a, reverseBits(1i), func_5(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2083f, -1210f), vec2<f32>(403f, global2.b.b), global0.x)), Struct_5(var_2.b.a, u_input.b.x, vec2<bool>(false, global0.x), vec2<u32>(28460u, u_input.d), false), u_input.c.zx, min(vec3<i32>(-40127i, -2147483647i, 37756i), vec3<i32>(var_0.b, arg_0.b, 2147483647i))), var_0.d, func_6(~u_input.c.x, Struct_3(vec4<f32>(global2.b.b, global2.b.b, global2.b.b, 1551f), 15344i, Struct_1(4271u, -1i, 1u), Struct_2(false, 1870f), var_2.b), Struct_4(global2.b.b, global2.b)).d), func_2(arg_0, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, -39864i), u_input.b.xz), Struct_3(vec4<f32>(-542f, var_2.b.b, var_2.b.b, 1773f), func_5(var_0.a.yw, Struct_5(true, arg_0.b, global0.yy, vec2<u32>(1409u, 0u), false), u_input.c.xz, vec3<i32>(2147483647i, var_1.c.b, arg_0.b)).b, var_0.c, Struct_2(true, -1731f), func_6(arg_0.a, Struct_3(vec4<f32>(-851f, -830f, var_2.a, 367f), var_0.b, Struct_1(7783u, 0i, u_input.d), Struct_2(var_2.b.a, -1252f), var_1.e), Struct_4(global3.x, var_0.e)).e), ~71946u)), ~(4294967295u >> (arg_0.a % 32u)));
}

fn func_7(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = vec4<i32>(~(~(-21665i)), u_input.a, func_6(arg_2.a, func_6(u_input.d, func_6(~u_input.c.x, func_6(16699u, Struct_3(vec4<f32>(-591f, global2.a, -1136f, global2.a), arg_2.b, global1[_wgslsmith_index_u32(14739u, 12u)], Struct_2(false, 1210f), global2.b), Struct_4(100f, Struct_2(global0.x, arg_1.a))), arg_1), func_2(arg_2, func_5(vec2<f32>(-137f, global3.x), Struct_5(global2.b.a, arg_2.b, vec2<bool>(true, true), u_input.c.xx, global0.x), vec2<u32>(u_input.d, arg_2.a), u_input.b).b, func_6(arg_2.a, Struct_3(vec4<f32>(-1195f, -1293f, arg_1.b.b, 354f), u_input.a, Struct_1(38548u, u_input.b.x, u_input.c.x), Struct_2(false, arg_1.b.b), Struct_2(true, global2.a)), arg_1), ~1u)), func_1(global1[_wgslsmith_index_u32(~(~arg_2.a), 12u)])).c.b, ~(-61198i));
    var var_1 = global2.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(ceil(arg_0))) - 763f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), -534f), -1374f));
    let var_3 = vec3<u32>(countOneBits(~4294967295u), arg_2.a >> (8859u % 32u), 1u);
    let var_4 = func_1(global1[_wgslsmith_index_u32(arg_2.a, 12u)]).b;
    return !vec4<bool>(global0.x, global2.b.a, var_3.x <= _wgslsmith_sub_u32(var_3.x, u_input.d), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 12>();
    global0 = select(func_7(global3.x, func_1(global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(26744u, u_input.c.x, u_input.c.x)), 12u)]), global1[_wgslsmith_index_u32(u_input.d, 12u)]), vec4<bool>(true, global0.x, (i32(-1i) * -6084i) >= -select(u_input.a, -1i, false), !(!select(false, true, true))), !vec4<bool>(any(vec2<bool>(global2.b.a, global0.x)), func_7(_wgslsmith_f_op_f32(f32(-1f) * -196f), Struct_4(global2.a, Struct_2(global0.x, -557f)), global1[_wgslsmith_index_u32(u_input.d, 12u)]).x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, 58701u, 0u), vec4<u32>(u_input.d, 7592u, u_input.c.x, 4294967295u)) < 6531u, all(vec4<bool>(true, global0.x, true, global2.b.a))));
    global0 = vec4<bool>(true && (countOneBits(~u_input.d) <= ~countOneBits(4294967295u)), true, global2.b.a, 1i <= -_wgslsmith_mult_i32(u_input.b.x, -1i));
    let var_0 = vec2<bool>(global2.b.a, any(!global0.xz));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_6(u_input.d, Struct_3(vec4<f32>(772f, global3.x, -477f, 353f), u_input.b.x, global1[_wgslsmith_index_u32(u_input.d, 12u)], Struct_2(global0.x, global3.x), Struct_2(global2.b.a, 1000f)), Struct_4(global3.x, Struct_2(var_0.x, 1627f))).a.x))))));
    var var_2 = Struct_2(global2.b.a & global2.b.a, global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(u_input.c, ~vec3<u32>(~17495u, func_5(vec2<f32>(global3.x, global2.b.b), Struct_5(true, 1i, vec2<bool>(false, true), u_input.c.yz, true), vec2<u32>(u_input.d, 4294967295u), vec3<i32>(16578i, u_input.a, u_input.b.x)).c, firstTrailingBit(35789u))));
}

