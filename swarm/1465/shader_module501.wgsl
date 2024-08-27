struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(4294967295u, 0u), vec2<u32>(11728u, 48534u), vec2<u32>(12240u, 1u), vec2<u32>(0u, 45560u), vec2<u32>(56785u, 0u), vec2<u32>(70863u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(55969u, 4294967295u), vec2<u32>(39114u, 28353u), vec2<u32>(5805u, 1u), vec2<u32>(33286u, 62730u), vec2<u32>(49778u, 1u), vec2<u32>(3284u, 32676u), vec2<u32>(20319u, 3642u), vec2<u32>(1u, 1u), vec2<u32>(1u, 25603u));

var<private> global1: vec3<f32> = vec3<f32>(575f, -2132f, -532f);

var<private> global2: array<u32, 21>;

var<private> global3: array<vec3<u32>, 25>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    global3 = array<vec3<u32>, 25>();
    global2 = array<u32, 21>();
    var var_0 = Struct_1(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(abs(0u), 21u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, ~34903u), 21u)]), 21u)], 21u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-784f, 705f, 738f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 131f, global1.x) + vec3<f32>(global1.x, 474f, global1.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -161f), _wgslsmith_f_op_f32(abs(186f)))), _wgslsmith_f_op_f32(-1996f - global1.x))));
    let var_1 = Struct_1(~select(8278u, ~u_input.b.x | var_0.a, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.b))));
    global1 = vec3<f32>(-1100f, 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * -1088f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.x, 613f))), global1.x)))));
    return _wgslsmith_f_op_f32(global1.x * var_1.b.x);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec2<u32>) -> vec3<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.xzw * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, arg_1.x, 1337f), arg_1, vec3<bool>(true, true, true))))) * arg_2.ywy);
    let var_0 = Struct_1(86490u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-646f, _wgslsmith_f_op_f32(step(1000f, global1.x))) * _wgslsmith_div_f32(-1791f, arg_2.x)), arg_1.x, _wgslsmith_div_f32(606f, _wgslsmith_f_op_f32(-global1.x))));
    var var_1 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-1434f - -1242f), arg_2.x, arg_2.x);
    let var_2 = var_0;
    var var_3 = any(!vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false)), select(true, true, all(vec4<bool>(true, true, true, false))), !all(vec2<bool>(false, true)), all(vec3<bool>(false, true, false))));
    return select(vec3<bool>(true, -arg_0 > firstLeadingBit(arg_0 & 0i), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false))), vec3<bool>(any(vec2<bool>(true, select(true, true, true))), true, any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), vec3<bool>(any(vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, true)), true)), !all(vec3<bool>(true, true, true)), any(vec2<bool>(true, any(vec3<bool>(false, false, false))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<f32> {
    var var_0 = u_input.d;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-714f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) * _wgslsmith_f_op_vec3_f32(ceil(arg_0.b))))) * arg_3.wyz));
    var var_1 = vec2<i32>(min(_wgslsmith_div_i32(-(u_input.c.x >> (global2[_wgslsmith_index_u32(4294967295u, 21u)] % 32u)), -1i), select(_wgslsmith_clamp_i32(~1i, 0i, -u_input.c.x), u_input.c.x << (_wgslsmith_mod_u32(1u, var_0.x) % 32u), !(!arg_1.x))), -9958i << (max(33225u, arg_2.a >> (~10946u % 32u)) % 32u));
    global0 = array<vec2<u32>, 17>();
    let var_2 = _wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, var_1.x), -var_1.x, firstLeadingBit(0i), reverseBits(var_1.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, select(u_input.c.x, u_input.c.x, true), 1i, -62818i), reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.c.zy), -1i, -19197i, ~(-1i)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1361f, _wgslsmith_f_op_f32(-arg_0.b.x)))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, arg_3.x)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = 8221i;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(Struct_1(global2[_wgslsmith_index_u32(arg_2.x, 21u)], vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-275f)), _wgslsmith_f_op_f32(-449f + global1.x)), arg_0, _wgslsmith_f_op_f32(max(-663f, _wgslsmith_f_op_f32(-720f - 1899f))))), select(func_4(reverseBits(1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b)), vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_1.b.x), -2152f), firstTrailingBit(~global0[_wgslsmith_index_u32(0u, 17u)])), vec3<bool>(func_4(u_input.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, 291f, -1390f, arg_0) + vec4<f32>(arg_0, global1.x, -2950f, 216f)), ~vec2<u32>(u_input.d.x, arg_1.a)).x, true, true), ~global2[_wgslsmith_index_u32(4294967295u, 21u)] <= arg_2.x), Struct_1(~(~reverseBits(0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, -301f, 833f)) * _wgslsmith_div_vec3_f32(arg_1.b, _wgslsmith_f_op_vec3_f32(-arg_1.b)))), vec4<f32>(_wgslsmith_f_op_f32(-998f + arg_1.b.x), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1.b.x, arg_0)), -927f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    global3 = array<vec3<u32>, 25>();
    var var_2 = Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(arg_1.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1328f, 991f, 913f)))));
    let var_3 = global1.x;
    return arg_1;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    global2 = array<u32, 21>();
    let var_0 = Struct_1(select(~global2[_wgslsmith_index_u32(4294967295u, 21u)] & arg_3.x, u_input.d.x, !any(!vec3<bool>(arg_0, arg_0, false))), arg_1.b);
    var var_1 = 1u;
    global2 = array<u32, 21>();
    let var_2 = ~(-(~(select(vec4<i32>(58058i, 0i, -2147483647i, -1i), vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.c.x), arg_0) >> (~vec4<u32>(23182u, var_0.a, 74991u, arg_3.x) % vec4<u32>(32u)))));
    return Struct_1(_wgslsmith_sub_u32(~arg_3.x ^ var_0.a, _wgslsmith_mod_u32(0u, arg_3.x)), vec3<f32>(_wgslsmith_f_op_f32(abs(-186f)), _wgslsmith_f_op_f32(sign(269f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.x + global1.x))))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_6(max(~(~global2[_wgslsmith_index_u32(20941u, 21u)]), _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(u_input.b.x, 21u)], ~1u)) != (~global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 21u)] | u_input.d.x), func_2(-1643f, Struct_1(abs(abs(global2[_wgslsmith_index_u32(u_input.a.x, 21u)])), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1446f), global1.x, 2502f)), ~(u_input.b << (vec2<u32>(u_input.a.x, 70140u) % vec2<u32>(32u))), firstLeadingBit(countOneBits(u_input.c.x))), _wgslsmith_f_op_f32(ceil(global1.x)), vec3<u32>(~u_input.b.x, u_input.d.x, ~select(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(19029u, 21u)]), firstLeadingBit(23619u), true)));
    let var_1 = Struct_1(63123u, var_0.b);
    var var_2 = select(vec4<bool>(true, true, true, true), !vec4<bool>(all(vec4<bool>(true, true, true, false)) & true, false, true, true), vec4<bool>(all(vec2<bool>(true, true)) && (_wgslsmith_mod_i32(-21629i, u_input.c.x) < u_input.c.x), false, select(true, select(any(vec3<bool>(true, false, true)), global2[_wgslsmith_index_u32(u_input.a.x, 21u)] >= var_1.a, var_1.b.x < -192f), true), func_4(-1i, vec3<f32>(global1.x, _wgslsmith_f_op_f32(select(-131f, 705f, true)), _wgslsmith_f_op_f32(f32(-1f) * -505f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1008f, -283f, 937f, 258f))), global0[_wgslsmith_index_u32(4294967295u, 17u)]).x));
    var var_3 = firstLeadingBit(vec3<i32>(~0i, -11816i, -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, -1i), vec4<i32>(u_input.c.x, -1i, -25001i, u_input.c.x)), firstTrailingBit(u_input.c.x))));
    let var_4 = any(vec3<bool>(global2[_wgslsmith_index_u32(~58205u, 21u)] >= ~firstTrailingBit(4294967295u), true, false == var_2.x));
    return Struct_1(_wgslsmith_add_u32(1u, global2[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(46696u, 21u)], _wgslsmith_add_u32(44079u, 18523u)), min(~39617u, _wgslsmith_clamp_u32(1u, var_1.a, var_1.a))), 21u)]), func_6(func_4(_wgslsmith_dot_vec2_i32(~u_input.c.zz, vec2<i32>(u_input.c.x, var_3.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1260f, var_1.b.x, var_1.b.x, 1000f)))), global0[_wgslsmith_index_u32(~2371u, 17u)]).x, var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(560f + -817f))), min(u_input.a, ~vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.a.x, 21u)], var_0.a))).b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-global1.x)), -226f, global1.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(-1000f, 1058f, global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 116f, 188f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, global1.x, global1.x)))))));
    global2 = array<u32, 21>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)) * global1.x);
    var var_1 = func_1();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    var var_2 = countOneBits(abs(56221u)) << (_wgslsmith_div_u32(var_1.a, 4294967295u << (global2[_wgslsmith_index_u32(min(~var_1.a, u_input.b.x), 21u)] % 32u)) % 32u);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1338f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.b.x, _wgslsmith_f_op_vec2_f32(func_5(func_2(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(0u, var_1.b), vec3<bool>(true, false, false), Struct_1(1u, var_1.b), vec4<f32>(var_1.b.x, var_1.b.x, global1.x, var_1.b.x))).x, func_1(), ~u_input.d.xy, ~2147483647i), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), func_4(-29884i, var_1.b, vec4<f32>(1708f, global1.x, var_1.b.x, global1.x), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 21u)], 17u)]).x), Struct_1(reverseBits(u_input.d.x), vec3<f32>(-1000f, var_1.b.x, global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1000f, 369f, global1.x) + vec4<f32>(var_1.b.x, 104f, 259f, global1.x)) + vec4<f32>(-215f, var_1.b.x, 1425f, -432f)))).x, func_1().b.x), vec4<u32>(50592u, 6943u, _wgslsmith_mod_u32(u_input.b.x, ~(~var_1.a)), global2[_wgslsmith_index_u32(43081u, 21u)]), vec4<i32>(~2147483647i, u_input.c.x, 0i, (u_input.c.x & u_input.c.x) ^ 19574i) | ~vec4<i32>(u_input.c.x, u_input.c.x, -27988i, u_input.c.x | 2147483647i));
}

