struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), vec3<bool>(false, true, true), vec2<f32>(-2128f, 785f), vec4<u32>(1u, 4294967295u, 0u, 1u));

var<private> global2: u32;

var<private> global3: array<bool, 4>;

var<private> global4: vec4<u32> = vec4<u32>(1u, 48180u, 1u, 1u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1615f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c.x))), _wgslsmith_f_op_f32(step(276f, -1498f)))), 1710f);
    global1 = Struct_1(~global1.a, global1.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-780f - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -189f), 214f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 850f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, 670f)), !vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 4u)]))), global1.c), ~min(u_input.a, -2147483647i) <= 1i)), ~_wgslsmith_clamp_vec4_u32(global1.d, ~(~vec4<u32>(global4.x, 16932u, 19202u, global1.d.x)), global1.d));
    var var_1 = 1u;
    return _wgslsmith_f_op_f32(round(-2272f));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec4<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), 465f)), _wgslsmith_f_op_f32(func_3()));
    let var_1 = Struct_1(u_input.d.x, vec3<bool>(true, all(arg_0.b.xx), false), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.c.x, global1.c.x))), countOneBits(_wgslsmith_sub_vec4_u32(~(~arg_0.d), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.d.x, 89098u, 0u, 5263u), ~global1.d))));
    global2 = abs(_wgslsmith_add_u32(countOneBits(4294967295u), ~u_input.c.x) ^ _wgslsmith_sub_u32(~54759u, 0u)) << (var_1.d.x % 32u);
    var var_2 = _wgslsmith_div_i32(var_1.a, -2725i);
    var var_3 = ~vec4<i32>(reverseBits(34794i), 2147483647i, -(~global1.a), 25478i);
    return ~(~_wgslsmith_div_vec4_u32(vec4<u32>(9788u, 1u, 0u, arg_0.d.x) | global1.d, ~(vec4<u32>(65706u, global1.d.x, global1.d.x, u_input.e) ^ vec4<u32>(24582u, 193u, global4.x, var_1.d.x))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = arg_1.d.yy;
    let var_1 = select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global1.d.x, arg_0.x), ~0u), 4u)] || any(vec4<bool>(false, false, false, true)), ~0i == _wgslsmith_add_i32(-global1.a, u_input.d.x)), vec4<bool>(arg_1.c.x >= -2204f, true, !(!global3[_wgslsmith_index_u32(0u, 4u)] & global3[_wgslsmith_index_u32(~38060u, 4u)]), !global3[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(true, !select(true, !global1.b.x, global3[_wgslsmith_index_u32(0u, 4u)] || global3[_wgslsmith_index_u32(0u, 4u)]), !all(vec4<bool>(global0.x, true, true, global0.x)), true));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-660f, 1130f, -2428f), vec3<f32>(global1.c.x, arg_1.c.x, 882f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-856f, -1323f, _wgslsmith_f_op_f32(-arg_1.c.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(998f, -275f, -1931f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1356f, global1.c.x, -209f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-218f, 1686f, 1632f) * vec3<f32>(-1120f, 1048f, 1614f)) - vec3<f32>(246f, -445f, arg_1.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.x, -1000f, 1062f) + vec3<f32>(arg_1.c.x, arg_1.c.x, -1757f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1908f, global1.c.x, 1142f)))))))));
    let var_3 = arg_1;
    let var_4 = var_3;
    return ~(~abs(max(~vec2<u32>(var_4.d.x, var_4.d.x), vec2<u32>(4294967295u, 21467u))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.c.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - -718f))))));
    var var_1 = u_input.c;
    var var_2 = arg_0;
    let var_3 = Struct_1(-14423i, arg_0.b, global1.c, ~(var_2.d >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, global4.x, 1u, global4.x), ~arg_0.d) % vec4<u32>(32u))));
    var var_4 = Struct_1(~(~select(_wgslsmith_clamp_i32(u_input.d.x, -1i, global1.a), arg_0.a, arg_0.b.x | true)), !select(var_2.b, var_2.b, select(select(vec3<bool>(false, true, true), vec3<bool>(global3[_wgslsmith_index_u32(arg_1.x, 4u)], var_3.b.x, global0.x), vec3<bool>(global1.b.x, var_2.b.x, true)), select(vec3<bool>(global0.x, arg_0.b.x, true), var_3.b, vec3<bool>(true, global3[_wgslsmith_index_u32(136075u, 4u)], true)), select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 4u)], global0.x, global0.x), vec3<bool>(false, true, arg_0.b.x), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-2034f, 213f)), -450f))), firstLeadingBit(~var_2.d));
    return arg_0.b.zz;
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(0i << (~u_input.e % 32u), ~(-61998i) >> (arg_1.d.x % 32u), reverseBits(firstTrailingBit(global1.a))), u_input.d >> (_wgslsmith_mult_vec3_u32(~u_input.c, arg_2.d.wzy) % vec3<u32>(32u))), select(select(!vec3<bool>(arg_0.x, arg_0.x, global0.x), select(vec3<bool>(arg_2.b.x, arg_0.x, false), vec3<bool>(arg_2.b.x, global3[_wgslsmith_index_u32(29007u, 4u)], false), select(global1.b, arg_1.b, true)), select(!global1.b, !vec3<bool>(false, true, global3[_wgslsmith_index_u32(arg_2.d.x, 4u)]), global4.x > 0u)), vec3<bool>(arg_2.b.x, arg_1.b.x, true), !(!arg_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-592f - 1302f), _wgslsmith_f_op_f32(min(-704f, -919f)), true)), 197f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f)), arg_2.c.x)), vec4<u32>(select(40835u, ~_wgslsmith_mult_u32(1u, global1.d.x), all(!vec3<bool>(global0.x, false, arg_0.x))), 0u, ~(func_5(vec4<u32>(global4.x, arg_2.d.x, 59880u, global1.d.x), arg_1).x << (96971u % 32u)), u_input.b.x));
    global4 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~global1.d.x, _wgslsmith_mod_u32(~arg_1.d.x, min(4294967295u, global4.x)), 1u, ~74048u), arg_1.d), var_0.d);
    let var_1 = _wgslsmith_f_op_f32(-arg_2.c.x);
    var var_2 = ~(abs(_wgslsmith_add_vec3_i32(abs(vec3<i32>(var_0.a, 2147483647i, u_input.d.x)), -vec3<i32>(-1i, global1.a, -27650i))) << (~(~vec3<u32>(global4.x, var_0.d.x, 4294967295u)) % vec3<u32>(32u)));
    var var_3 = var_0;
    return _wgslsmith_mod_i32(-arg_2.a, var_3.a);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_u32(abs(70337u) >> (_wgslsmith_clamp_u32(4294967295u, 73240u, 50030u) % 32u), 3802u);
    var var_1 = ~global1.d;
    let var_2 = Struct_1(~(-u_input.d.x << ((var_0 | (global4.x << (0u % 32u))) % 32u)), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1769f + 540f)) >= _wgslsmith_div_f32(global1.c.x, _wgslsmith_div_f32(global1.c.x, -1354f)), false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.c.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c.x, 475f)))), global1.c.x), vec4<u32>(abs(1u), 1u, ~_wgslsmith_mult_u32(104894u << (u_input.e % 32u), 60193u), global4.x));
    let var_3 = func_7(func_6(var_2, func_5(func_4(Struct_1(-2147483647i, vec3<bool>(true, true, global3[_wgslsmith_index_u32(0u, 4u)]), global1.c, vec4<u32>(0u, var_2.d.x, 14680u, 91346u)), global1.a >> (31944u % 32u), _wgslsmith_f_op_f32(func_3())), Struct_1(u_input.d.x, select(vec3<bool>(global3[_wgslsmith_index_u32(var_2.d.x, 4u)], global3[_wgslsmith_index_u32(u_input.b.x, 4u)], true), var_2.b, vec3<bool>(global0.x, false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(224f, 1946f) + var_2.c), var_2.d))), var_2, var_2, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, global1.c.x, global1.c.x, 557f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-296f, var_2.c.x, 174f, 1330f)), select(select(vec4<bool>(global1.b.x, var_2.b.x, false, global3[_wgslsmith_index_u32(arg_0, 4u)]), vec4<bool>(global0.x, true, false, var_2.b.x), global0.x), vec4<bool>(global0.x, true, true, true), select(vec4<bool>(var_2.b.x, true, true, global1.b.x), vec4<bool>(global0.x, false, global1.b.x, true), false)))))));
    let var_4 = ~_wgslsmith_add_u32(~max(u_input.b.x, global4.x) << (countOneBits(~1u) % 32u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 0u, 1u), var_1.wwy, u_input.c), global4.zyx));
    return var_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> u32 {
    global0 = global1.b.zy;
    let var_0 = func_2(firstLeadingBit(_wgslsmith_mod_u32(abs(1u) | ~arg_2.d.x, ~(~47993u))));
    let var_1 = func_2(~global1.d.x);
    global2 = 4294967295u;
    global4 = vec4<u32>(~u_input.e, u_input.e, reverseBits(~4294967295u), 1u);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, ~global1.d.x), ~func_1(vec3<f32>(-772f, -690f, global1.c.x), -1i, Struct_1(0i, global1.b, global1.c, vec4<u32>(61806u, 37919u, global4.x, 58756u)), -12614i), countOneBits(51576u & u_input.b.x)) >> ((~(~reverseBits(13217u)) << (reverseBits(0u) % 32u)) % 32u);
    var var_1 = Struct_1(_wgslsmith_mod_i32(-2147483647i, u_input.d.x) | u_input.a, !select(func_2(global4.x).b, !global1.b, false), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -107f)), ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(global1.d.x, 0u, 2773u, 110518u), vec4<u32>(21408u, 30455u, 24161u, 1u)))));
    global4 = vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(min(var_1.d, var_1.d), vec4<u32>(global4.x, 4294967295u, u_input.b.x, 12057u)), u_input.e), func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.c.x, 1000f, global1.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -1488f, global1.c.x) * vec3<f32>(-444f, global1.c.x, -648f))), !vec3<bool>(false, global0.x, true))), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(-2147483647i, u_input.a, 8602i)), u_input.d), Struct_1(_wgslsmith_mod_i32(countOneBits(var_1.a), ~global1.a), !var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(174f, global1.c.x))) + vec2<f32>(var_1.c.x, 1075f)), ~(~vec4<u32>(35017u, 17073u, 107145u, global1.d.x))), i32(-1i) * -1i), 66839u, 31992u);
    global4 = vec4<u32>(func_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1806f)), _wgslsmith_f_op_f32(-global1.c.x), -620f), select(u_input.a, global1.a, global1.b.x), func_2(~global4.x), var_1.a) << (firstTrailingBit(max(firstTrailingBit(var_1.d.x), _wgslsmith_clamp_u32(0u, var_1.d.x, global1.d.x))) % 32u), u_input.b.x, ~var_1.d.x, abs(~54143u));
    var var_2 = ~_wgslsmith_mod_vec3_u32(var_1.d.xwy, vec3<u32>(~(var_1.d.x & global4.x), 1u, abs(var_1.d.x) ^ global1.d.x));
    var var_3 = func_2(26063u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~select(0i, -52637i, global3[_wgslsmith_index_u32(global1.d.x, 4u)]))));
}

