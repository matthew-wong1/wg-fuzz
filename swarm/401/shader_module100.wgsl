struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: vec4<u32> = vec4<u32>(7030u, 1u, 28002u, 4294967295u);

var<private> global2: array<Struct_1, 6>;

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: bool) -> f32 {
    var var_0 = select(select(!select(vec3<bool>(false, global3.x, global0.x), vec3<bool>(global3.x, arg_2, global0.x), any(global3.xy)), !vec3<bool>(global0.x, global3.x, true), !vec3<bool>(true != arg_2, arg_2, global3.x)), !(!vec3<bool>(arg_0.a.x && true, all(vec4<bool>(true, arg_2, false, true)), select(global3.x, false, false))), false);
    var var_1 = _wgslsmith_clamp_vec4_i32(select(-vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -26098i) ^ abs(vec4<i32>(arg_1, 25308i, u_input.a.x, 2831i)), select(_wgslsmith_add_vec4_i32(vec4<i32>(2276i, arg_1, arg_1, u_input.b) << (vec4<u32>(global1.x, global1.x, 1u, global1.x) % vec4<u32>(32u)), select(vec4<i32>(22294i, arg_1, arg_1, 47939i), vec4<i32>(u_input.a.x, 19580i, -23043i, -34616i), var_0.x)), vec4<i32>(2147483647i, u_input.b << (global1.x % 32u), -47766i | u_input.a.x, arg_1 >> (arg_0.b % 32u)), all(!vec3<bool>(false, arg_0.a.x, false))), !vec4<bool>(true, global1.x != 35664u, true, any(vec3<bool>(arg_0.a.x, true, arg_0.a.x)))), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 94299i, -7828i, -1i) << (vec4<u32>(0u, global1.x, 1u, 1u) % vec4<u32>(32u)), -vec4<i32>(1i, 2147483647i, 0i, -2147483647i))) << (~firstLeadingBit(~vec4<u32>(1u, 1u, 1u, arg_0.b)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(2147483647i, arg_1), u_input.a.x >> (global1.x % 32u), ~(-1679i), 0i), vec4<i32>(_wgslsmith_div_i32(arg_1, -27436i), ~(-18086i), -_wgslsmith_add_i32(u_input.b, -43658i), arg_1)));
    var var_2 = global1.wz;
    global3 = vec3<bool>((var_2.x ^ arg_0.b) < ~(~arg_0.b), true, var_0.x);
    var var_3 = global2[_wgslsmith_index_u32(arg_0.b, 6u)];
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(557f, 2548f)))))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(arg_1, -562f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-607f - 237f))), _wgslsmith_f_op_f32(func_3(Struct_5(vec2<bool>(global0.x, arg_0.b), arg_0.a), ~30462i, !global0.x))), vec3<f32>(-1447f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(select(arg_1, -750f, global0.x))), arg_1))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-492f, arg_1, arg_1) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1521f, -645f, arg_1)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(409f, 1463f, arg_1) + vec3<f32>(arg_1, arg_1, -759f)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1612f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1, 890f), -314f))) - arg_1), vec3<bool>(false, select(global3.x, !select(global3.x, true, true), any(!vec3<bool>(global0.x, true, global0.x))), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1419f, 411f, 909f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1025f, -1067f, 633f) * vec3<f32>(arg_1, 1237f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -758f, -157f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, var_0.x) + vec3<f32>(var_0.x, arg_1, arg_1)))))));
    var_0 = var_1.c;
    var var_2 = !(!all(!(!var_1.b)));
    let var_3 = u_input.a;
    return _wgslsmith_mod_u32(abs(arg_0.a), ~arg_0.a);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_4 {
    global1 = vec4<u32>(func_2(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(158f))))), ~3603u, min(min(max(10917u, 4294967295u), global1.x >> (firstLeadingBit(24530u) % 32u)), _wgslsmith_clamp_u32(~4294967295u, ~0u, 1u)), global1.x);
    global3 = !vec3<bool>(true & any(vec4<bool>(true, arg_2.b, false, true)), all(!(!vec3<bool>(arg_2.b, false, global3.x))), arg_1);
    return Struct_4(_wgslsmith_add_vec4_i32(vec4<i32>(~(u_input.a.x & arg_0), -27703i | _wgslsmith_div_i32(arg_0, arg_0), _wgslsmith_div_i32(-35807i, _wgslsmith_add_i32(arg_0, 1i)), 0i), -(vec4<i32>(u_input.a.x, 0i, u_input.b, u_input.b) | vec4<i32>(u_input.a.x, 1i, -51541i, u_input.b)) << (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_2.a, global1.x, 8871u, 0u)), reverseBits(vec4<u32>(4294967295u, global1.x, 4294967295u, 0u))) % vec4<u32>(32u))), Struct_3(Struct_1(1u, arg_2.b | global0.x), Struct_1(~arg_2.a, !(true & arg_1)), _wgslsmith_f_op_f32(-247f - _wgslsmith_f_op_f32(max(-404f, _wgslsmith_f_op_f32(f32(-1f) * -629f)))), select(select(vec4<bool>(true, global0.x, arg_1, false), vec4<bool>(true, false, global3.x, global0.x), !vec4<bool>(arg_2.b, arg_1, arg_2.b, arg_2.b)), !vec4<bool>(global0.x, true, true, true), arg_1), -select(u_input.a, -vec3<i32>(-11246i, -14137i, 2147483647i), true)), 1i);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: u32) -> Struct_1 {
    let var_0 = arg_1.b.c;
    let var_1 = func_1(u_input.a.x, !(_wgslsmith_mult_u32(~0u, 1u) < global1.x), func_1((i32(-1i) * -15003i) | arg_1.a.x, func_1(-57321i, !arg_1.b.d.x && select(arg_0.x, true, false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_1.b.a.a, global1.x, 28268u), firstLeadingBit(vec4<u32>(4294967295u, arg_1.b.b.a, 14956u, global1.x))), 6u)]).b.a.b, func_1(u_input.b, all(select(vec4<bool>(false, global3.x, arg_0.x, global0.x), vec4<bool>(true, true, true, true), arg_0)), Struct_1(select(1u, 42825u, global0.x), true)).b.a).b.a).b.a;
    var var_2 = func_1(-2147483647i, global3.x, global2[_wgslsmith_index_u32(~(~arg_2 >> (var_1.a % 32u)), 6u)]).b.b.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f));
    let var_4 = vec3<f32>(-585f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.b.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b.c), _wgslsmith_f_op_f32(func_3(Struct_5(global0.zx, global1.x), 42770i, global0.x)))))))), _wgslsmith_f_op_f32(ceil(-1077f)));
    return global2[_wgslsmith_index_u32(arg_2, 6u)];
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_3) -> Struct_1 {
    global2 = array<Struct_1, 6>();
    let var_0 = _wgslsmith_sub_vec3_i32(~(-min(firstLeadingBit(vec3<i32>(arg_3.e.x, -29957i, arg_3.e.x)), vec3<i32>(-53409i, 1i, arg_1.e.x))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(min(_wgslsmith_sub_vec3_i32(arg_3.e, u_input.a), vec3<i32>(arg_1.e.x, -51381i, 2147483647i)), _wgslsmith_add_vec3_i32(arg_1.e, countOneBits(arg_3.e))), _wgslsmith_div_vec3_i32(func_1(-20001i, all(vec2<bool>(false, true)), Struct_1(arg_1.b.a, global0.x)).b.e, arg_1.e)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c))))));
    var var_2 = countOneBits(global1.xxw);
    let var_3 = ~abs(-(~(-2147483647i)));
    return arg_1.a;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = func_4(select(!(!vec4<bool>(global0.x, global0.x, false, true)), vec4<bool>(true == func_4(vec4<bool>(false, arg_1, global0.x, arg_0), Struct_4(vec4<i32>(0i, -9403i, 1i, u_input.b), Struct_3(Struct_1(0u, true), Struct_1(arg_3.a, arg_0), -122f, vec4<bool>(arg_3.b, true, true, false), vec3<i32>(1i, u_input.a.x, -2147483647i)), 21407i), arg_3.a).b, arg_3.b, true, any(func_1(u_input.a.x, false, Struct_1(0u, true)).b.d.zy)), arg_1), Struct_4(vec4<i32>(-2147483647i, -40924i, 384i, ~1i), Struct_3(global2[_wgslsmith_index_u32(29588u, 6u)], Struct_1(~global1.x, all(vec4<bool>(global3.x, false, true, global3.x))), _wgslsmith_f_op_f32(max(-410f, -125f)), select(vec4<bool>(arg_1, true, false, false), !vec4<bool>(false, true, arg_1, global0.x), false), vec3<i32>(max(-2147483647i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-21920i, -2147483647i, u_input.b, -8120i), vec4<i32>(1i, u_input.b, 35573i, -11532i)), ~u_input.a.x)), i32(-1i) * -37225i), func_1(-(u_input.a.x & u_input.a.x), false, func_5(~global1.x, Struct_3(global2[_wgslsmith_index_u32(25152u, 6u)], arg_3, arg_2, vec4<bool>(true, arg_1, arg_3.b, global0.x), vec3<i32>(0i, 382i, 1i)), Struct_5(vec2<bool>(arg_3.b, false), 4294967295u), func_1(u_input.b, global0.x, Struct_1(global1.x, true)).b)).b.a.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a, func_4(vec4<bool>(false, arg_3.b, true, false), Struct_4(vec4<i32>(u_input.b, u_input.a.x, -1i, u_input.a.x), Struct_3(Struct_1(arg_3.a, global3.x), global2[_wgslsmith_index_u32(4092u, 6u)], arg_2, vec4<bool>(true, false, global0.x, true), u_input.a), 2147483647i), 32908u).a, min(66726u, arg_3.a), 11704u), vec4<u32>(arg_3.a, arg_3.a, global1.x, global1.x) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_3.a, 201u), vec4<u32>(arg_3.a, 0u, global1.x, 0u))) % 32u));
    var var_1 = Struct_2(-220f, select(func_1(u_input.a.x, global0.x, global2[_wgslsmith_index_u32(~91108u, 6u)]).b.d.yxx, func_1(abs(~0i), arg_0, global2[_wgslsmith_index_u32(~4294967295u, 6u)]).b.d.yxw, arg_3.b), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-228f, _wgslsmith_div_f32(344f, 846f), _wgslsmith_f_op_f32(-arg_2)))))));
    global0 = vec3<bool>(false, ~global1.x > func_4(vec4<bool>(true, true, !var_0.b, false), Struct_4(vec4<i32>(30609i, 0i, u_input.a.x, -5747i) ^ vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, 1i), func_1(6811i, false, arg_3).b, countOneBits(u_input.b)), 1u >> (firstLeadingBit(global1.x) % 32u)).a, true);
    global1 = ~(~reverseBits(reverseBits(~vec4<u32>(1u, 4294967295u, var_0.a, 20035u))));
    var var_2 = vec2<bool>((_wgslsmith_f_op_f32(max(-583f, _wgslsmith_f_op_f32(-arg_2))) < _wgslsmith_f_op_f32(exp2(arg_2))) | global3.x, true);
    return select(!vec3<bool>(true, !(arg_0 | true), !arg_3.b), vec3<bool>(true, true, true), !(!var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<u32>(reverseBits(global1.x >> ((0u | ~global1.x) % 32u)), 15358u, 4124u, global1.x);
    global2 = array<Struct_1, 6>();
    global3 = func_6(global0.x, false, -489f, func_5(abs(19010u), Struct_3(func_4(vec4<bool>(true, global3.x, true, true), func_1(-1i, true, global2[_wgslsmith_index_u32(3839u, 6u)]), 4294967295u), global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, 0u, global1.x), vec4<u32>(global1.x, global1.x, global1.x, 115980u)), ~4294967295u, !global0.x), 6u)], _wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(f32(-1f) * -334f)), vec4<bool>(true & global3.x, all(global3.zx), true, true), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -52021i, u_input.b), vec3<i32>(-41138i, u_input.a.x, u_input.a.x)))), Struct_5(vec2<bool>(true, true), func_1(1i, true, Struct_1(global1.x, true)).b.a.a), Struct_3(global2[_wgslsmith_index_u32(10253u | ~global1.x, 6u)], Struct_1(88561u, false), _wgslsmith_f_op_f32(floor(1153f)), select(vec4<bool>(global0.x, false, true, global3.x), !vec4<bool>(true, global0.x, false, false), func_1(6766i, false, global2[_wgslsmith_index_u32(global1.x, 6u)]).b.b.b), -(u_input.a << (vec3<u32>(global1.x, 1u, 1u) % vec3<u32>(32u))))));
    global1 = vec4<u32>(~66963u, 0u, ~(~global1.x), _wgslsmith_div_u32(firstLeadingBit(567u), global1.x));
    global1 = vec4<u32>(_wgslsmith_mult_u32(~min(~global1.x, _wgslsmith_div_u32(110077u, 4294967295u)), global1.x), 1u, ~_wgslsmith_sub_u32(~global1.x, _wgslsmith_add_u32(0u, 27756u)) & ~global1.x, ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-527f, -669f)))), _wgslsmith_f_op_f32(abs(1284f)), global3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(vec2<bool>(true, global3.x), global1.x), i32(-1i) * -37293i, true)))));
}

