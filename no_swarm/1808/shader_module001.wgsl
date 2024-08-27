struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(i32(-2147483648), i32(-2147483648), 85299i, -21767i, 4611i, 2147483647i, 16067i, 2147483647i, -1i, 1i, -40097i, -409i);

var<private> global1: Struct_2 = Struct_2(true, 1206f, vec3<bool>(false, false, false), -1000f, true);

var<private> global2: array<vec3<u32>, 31>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    let var_0 = -275f;
    var var_1 = arg_2;
    global1 = Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f) + _wgslsmith_f_op_f32(ceil(-1784f))), var_0))), select(arg_2.c, select(vec3<bool>(any(global1.c), true, global1.c.x), select(var_1.c, !arg_2.c, select(vec3<bool>(false, arg_2.e, global1.e), vec3<bool>(true, global1.c.x, global1.a), vec3<bool>(arg_2.a, true, arg_2.a))), !(!vec3<bool>(var_1.c.x, var_1.a, var_1.e))), !var_1.e), arg_2.b, global1.a);
    var var_2 = Struct_3(select(!select(vec4<bool>(false, false, arg_2.a, false), !vec4<bool>(true, false, true, var_1.e), !vec4<bool>(arg_2.e, false, false, global1.c.x)), !(!select(vec4<bool>(true, false, true, global1.a), vec4<bool>(false, arg_2.e, true, global1.c.x), vec4<bool>(false, arg_2.c.x, var_1.c.x, true))), !(!(!vec4<bool>(arg_2.c.x, global1.a, arg_2.a, global1.a)))), Struct_1(~(-1i)), !var_1.c, -70600i | global0[_wgslsmith_index_u32(u_input.a.x, 12u)], Struct_1(arg_1.x));
    let var_3 = !(!global1.c.xz);
    return u_input.a.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<f32> {
    global0 = array<i32, 12>();
    let var_0 = vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.d)) + _wgslsmith_f_op_f32(-global1.d)) + _wgslsmith_f_op_f32(f32(-1f) * -1325f)), -305f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) * _wgslsmith_f_op_f32(135f * -788f)));
    var var_1 = 55749u >= arg_0.x;
    global1 = Struct_2(arg_1.c.x, arg_2.x, select(global1.c, !vec3<bool>(any(arg_1.a.wxy), arg_1.c.x, global1.a), !vec3<bool>(arg_1.a.x, global1.e, true)), var_0.x, true);
    let var_2 = max(firstLeadingBit(abs(arg_0.wz)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 36213u), arg_0.yx) ^ vec2<u32>(~func_3(vec3<f32>(-518f, 1399f, 2157f), vec3<i32>(2147483647i, -1i, 11157i), Struct_2(arg_1.c.x, arg_2.x, vec3<bool>(true, global1.a, true), global1.b, true)), _wgslsmith_mod_u32(select(arg_0.x, 4294967295u, arg_1.c.x), u_input.a.x)));
    return var_0.zz;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(~vec4<u32>(14204u, u_input.a.x << ((10370u | u_input.a.x) % 32u), 1u, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, global1.b, -301f)), ~vec3<i32>(-7621i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), Struct_2(global1.c.x, -1000f, vec3<bool>(global1.a, global1.e, global1.c.x), -449f, global1.a))), Struct_3(select(vec4<bool>(!global1.c.x, true, global1.c.x, any(vec4<bool>(false, global1.e, false, global1.e))), select(select(vec4<bool>(false, true, global1.a, global1.a), vec4<bool>(global1.c.x, false, global1.c.x, global1.c.x), false), vec4<bool>(global1.c.x, true, global1.c.x, false), vec4<bool>(true, true, global1.a, global1.a)), !global1.e), Struct_1(2147483647i), global1.c, _wgslsmith_mod_i32(-25884i << (u_input.a.x % 32u), global3.a), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(2142u, 12u)], global3.a, 2147483647i, -1i), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -10181i, 18737i, 1i)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -425f, global1.b, -579f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-122f, global1.b, 281f, global1.b) - vec4<f32>(1463f, global1.d, global1.d, global1.d)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.d, global1.b, 2301f, global1.d), vec4<f32>(global1.b, 104f, -1000f, global1.d))) + vec4<f32>(_wgslsmith_f_op_f32(round(802f)), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(exp2(global1.d)), -431f))), Struct_1(~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, 1970i, global0[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_add_vec3_i32(vec3<i32>(-63413i, global3.a, global3.a), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -29961i, -28974i))))));
    let var_1 = _wgslsmith_f_op_f32(global1.d + 605f);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(step(-304f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_1))));
    var var_4 = Struct_3(vec4<bool>(var_2, global1.a, 4294967295u >= firstTrailingBit(~4294967295u), false), Struct_1(-23258i), select(!select(global1.c, global1.c, false), global1.c, !vec3<bool>(global1.e, true, var_2)), _wgslsmith_add_i32(11i, global0[_wgslsmith_index_u32(93051u, 12u)]), Struct_1(-37536i));
    return all(select(!vec2<bool>(var_2 == var_2, true), vec2<bool>(~u_input.a.x > _wgslsmith_mod_u32(12502u, 1u), !var_4.a.x || any(vec3<bool>(global1.a, true, false))), vec2<bool>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) <= max(u_input.a.x, 24002u), true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(~11014u, ~_wgslsmith_mult_u32(18072u, 0u), u_input.a.x, ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x))), ~(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))) >> (~min(countOneBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x) | vec4<u32>(123u, u_input.a.x, u_input.a.x, 127884u)) % vec4<u32>(32u)));
    let var_2 = i32(-1i) * -1i;
    let var_3 = global1.e & !(arg_2.x && true);
    var var_4 = _wgslsmith_mod_i32(~countOneBits(-1i), ~_wgslsmith_dot_vec3_i32(-arg_0, -vec3<i32>(0i, var_0.a, var_2)));
    return Struct_2(func_2(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2195f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(914f, arg_1.x))), select(true || global1.c.x, any(vec2<bool>(arg_2.x, true)), arg_2.x))))), global1.c, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-709f + -294f) * arg_1.x))), !arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1427f;
    global2 = array<vec3<u32>, 31>();
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-803f + _wgslsmith_f_op_f32(-1494f + 531f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(max(258f, -1070f)), false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-999f + -645f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b)) * global1.d)), global1.d, global1.b));
    var var_2 = func_1(reverseBits(~reverseBits(vec3<i32>(global3.a, global0[_wgslsmith_index_u32(4294967295u, 12u)], 0i))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b - global1.d), -200f)), 266f), !select(select(!vec2<bool>(global1.c.x, false), select(vec2<bool>(global1.a, true), global1.c.xy, vec2<bool>(false, global1.c.x)), global1.c.x), vec2<bool>(-1098f == global1.b, u_input.a.x <= u_input.a.x), !(!global1.c.zz)), Struct_1(26022i));
    var var_3 = func_1(~firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 11944i, 1i), vec3<i32>(-2147483647i, 18375i, 3242i), vec3<i32>(62583i, global3.a, global0[_wgslsmith_index_u32(5654u, 12u)]))) << (global2[_wgslsmith_index_u32(u_input.a.x, 31u)] % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, 385f, var_2.b, global1.d) * vec4<f32>(var_1.x, 247f, 326f, var_1.x)))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-522f, global1.d, -933f, -583f) * vec4<f32>(var_1.x, -261f, -1133f, -1042f)), vec4<f32>(-235f, 1000f, global1.d, 683f), select(vec4<bool>(true, true, var_2.a, true), vec4<bool>(true, false, true, var_2.a), var_2.e)))))), vec2<bool>(true, false), Struct_1(i32(-1i) * -2147483647i));
    var var_4 = Struct_1(firstTrailingBit(-select(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -5065i), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(79198u, 12u)])), _wgslsmith_mult_i32(global3.a, global3.a), u_input.a.x > 1u)));
    global0 = array<i32, 12>();
    let var_5 = Struct_3(vec4<bool>(false, true, !(var_3.a | global1.e), true), Struct_1(min(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-39796i, global0[_wgslsmith_index_u32(5087u, 12u)]), ~global3.a, 2630i ^ global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), i32(-1i) * -2147483647i)), !(!func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 0i, global3.a), vec3<i32>(var_4.a, var_4.a, global3.a), vec3<i32>(7386i, -28040i, 5221i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, -157f, var_3.d, global1.d) + vec4<f32>(var_2.b, var_2.d, -1804f, var_1.x)), func_1(vec3<i32>(20876i, var_4.a, var_4.a), vec4<f32>(113f, 844f, 1019f, -1000f), vec2<bool>(global1.a, global1.e), Struct_1(-1i)).c.yy, Struct_1(-31170i)).c), -global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x & 4294967295u), 12u)], Struct_1(-1i));
    var var_6 = _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(49184u, u_input.a.x, 5034u, u_input.a.x), max(vec4<u32>(u_input.a.x, 96803u, 53103u, u_input.a.x), vec4<u32>(1u, u_input.a.x, 28939u, 69621u))), u_input.a.x & ~u_input.a.x), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), _wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(82441u, 31u)], vec3<u32>(u_input.a.x, 1097u, u_input.a.x)), global2[_wgslsmith_index_u32(u_input.a.x, 31u)] << (global2[_wgslsmith_index_u32(u_input.a.x, 31u)] % vec3<u32>(32u))) & ~global2[_wgslsmith_index_u32(~(~20980u), 31u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, var_3.b, -293f), vec4<f32>(1411f, var_1.x, var_3.d, -129f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(814f, var_2.d, var_3.d, var_1.x)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(vec4<u32>(0u, var_6.x, u_input.a.x, 50274u), Struct_3(vec4<bool>(true, global1.e, global1.a, var_5.a.x), var_5.b, var_3.c, 1i, var_5.e), vec4<f32>(411f, var_2.b, global1.b, 817f), Struct_1(2147483647i))).x - _wgslsmith_f_op_f32(max(var_1.x, -802f))), -899f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(725f)) + 2005f), var_3.b)), _wgslsmith_f_op_f32(-1511f * var_1.x), -_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 0i) << (var_6.yz % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(~vec2<i32>(-1i, 0i), -vec2<i32>(-6341i, -1i)), vec2<i32>(var_5.d, 8449i) | firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(0u, 12u)], global3.a))), firstTrailingBit(abs(~(~var_6.x))));
}

