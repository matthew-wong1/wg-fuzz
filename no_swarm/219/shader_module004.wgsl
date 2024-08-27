struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, true, false, false, false, true, true, true, true, false, false, true, false, true, false, false, true, false, false, false, false);

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(-13555i, vec2<f32>(486f, -1000f), vec4<u32>(0u, 11821u, 4294967295u, 59960u)), Struct_2(10165i, vec2<f32>(-226f, 980f), vec4<u32>(2301u, 1u, 1u, 37608u)), Struct_2(1i, vec2<f32>(181f, -927f), vec4<u32>(37938u, 15092u, 5041u, 7600u)), Struct_2(0i, vec2<f32>(-218f, 495f), vec4<u32>(7732u, 2111u, 28482u, 7797u)), Struct_2(0i, vec2<f32>(-1595f, -1000f), vec4<u32>(24144u, 0u, 4294967295u, 48495u)), Struct_2(-30589i, vec2<f32>(711f, 121f), vec4<u32>(12671u, 0u, 13776u, 4294967295u)), Struct_2(0i, vec2<f32>(-1523f, 1091f), vec4<u32>(66494u, 44830u, 6379u, 106295u)), Struct_2(i32(-2147483648), vec2<f32>(454f, 244f), vec4<u32>(29530u, 1u, 24725u, 42780u)), Struct_2(0i, vec2<f32>(885f, -1498f), vec4<u32>(45119u, 4294967295u, 21904u, 1u)), Struct_2(0i, vec2<f32>(-1000f, 1000f), vec4<u32>(1u, 0u, 39492u, 0u)), Struct_2(0i, vec2<f32>(-124f, -956f), vec4<u32>(4294967295u, 4294967295u, 1u, 1u)), Struct_2(-10988i, vec2<f32>(-1880f, 1375f), vec4<u32>(4294967295u, 80765u, 0u, 49180u)), Struct_2(10507i, vec2<f32>(319f, -1065f), vec4<u32>(55639u, 4294967295u, 14044u, 1u)), Struct_2(-15052i, vec2<f32>(-1490f, 1694f), vec4<u32>(9972u, 625u, 57953u, 4294967295u)), Struct_2(26389i, vec2<f32>(-1067f, -643f), vec4<u32>(0u, 26436u, 0u, 4294967295u)), Struct_2(1i, vec2<f32>(1132f, 813f), vec4<u32>(1u, 0u, 4107u, 63368u)), Struct_2(-32816i, vec2<f32>(-1289f, 1318f), vec4<u32>(37359u, 1u, 4294967295u, 4294967295u)), Struct_2(32219i, vec2<f32>(684f, 815f), vec4<u32>(1u, 0u, 1u, 75732u)), Struct_2(-798i, vec2<f32>(-1356f, 1108f), vec4<u32>(1u, 56497u, 31865u, 72423u)), Struct_2(-22861i, vec2<f32>(-1259f, -105f), vec4<u32>(0u, 4294967295u, 349u, 0u)), Struct_2(1i, vec2<f32>(767f, 739f), vec4<u32>(0u, 0u, 6799u, 0u)), Struct_2(1i, vec2<f32>(-640f, -404f), vec4<u32>(0u, 1u, 1u, 43231u)), Struct_2(-63825i, vec2<f32>(1961f, -2619f), vec4<u32>(10285u, 0u, 23736u, 4294967295u)), Struct_2(2147483647i, vec2<f32>(1000f, -217f), vec4<u32>(0u, 1u, 30385u, 78859u)), Struct_2(-28781i, vec2<f32>(315f, -170f), vec4<u32>(2037u, 10961u, 14790u, 1u)), Struct_2(1i, vec2<f32>(1577f, 934f), vec4<u32>(4294967295u, 4294967295u, 1u, 33727u)), Struct_2(-10529i, vec2<f32>(1889f, 494f), vec4<u32>(87568u, 15628u, 0u, 18934u)), Struct_2(i32(-2147483648), vec2<f32>(-1110f, -1232f), vec4<u32>(19222u, 1u, 4294967295u, 10511u)), Struct_2(i32(-2147483648), vec2<f32>(252f, -887f), vec4<u32>(4294967295u, 4294967295u, 109495u, 83447u)));

var<private> global2: i32 = -10399i;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global4: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, 137f))))), arg_0.b);
    global3 = vec4<bool>(false, arg_2.a.c.x > 0u, global3.x, false || !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(87466u, 899u), 21u)]);
    let var_1 = any(global3.xwz);
    let var_2 = Struct_3(Struct_1(var_0.x, ~arg_2.a.a), arg_0, arg_2.a.a, true);
    return -11721i;
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = -2147483647i;
    var var_1 = u_input.e;
    var_0 = 13521i;
    let var_2 = Struct_3(Struct_1(642f, reverseBits(~_wgslsmith_add_i32(u_input.c.x, 67629i))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(19755u, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_2.c.x), vec2<u32>(u_input.a.x, 4294967295u))) << (select(u_input.a, min(arg_2.c.wx, u_input.a), vec2<bool>(true, true)) % vec2<u32>(32u)), vec2<u32>(abs(_wgslsmith_sub_u32(u_input.e, 38709u)), _wgslsmith_add_u32(arg_2.c.x, ~arg_2.c.x))), 29u)], countOneBits(func_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, 1u) & 1u, 29u)], ~vec4<i32>(-30494i, 11145i, -2147483647i, -1i), Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e, u_input.a.x), 29u)]), select(arg_2.a, -1i, 2147483647i >= arg_2.a))), global4.x);
    var_1 = ~(~(~_wgslsmith_clamp_u32(abs(116889u), arg_2.c.x, arg_2.c.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1066f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = -15967i;
    global4 = !(!(!(!(!vec4<bool>(arg_2.d, global3.x, global0[_wgslsmith_index_u32(56368u, 21u)], global4.x)))));
    global3 = !vec4<bool>(global4.x, any(select(select(vec4<bool>(global4.x, true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(arg_2.b.c.x, 21u)], true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(35630u, 21u)], false, false)), vec4<bool>(global4.x, global4.x, arg_2.d, true), false)), arg_2.b.c.x > 53535u, false);
    var var_1 = global3.x;
    global2 = 46671i;
    return vec4<bool>(!all(!vec4<bool>(global3.x, arg_2.d, true, global3.x)), global3.x, arg_2.d, all(global3.wy));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<u32>) -> vec3<u32> {
    global4 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), -(~u_input.d.x & func_2(Struct_2(0i, arg_0.yx, vec4<u32>(14599u, 35719u, u_input.b, 0u)), vec4<i32>(-1i, -1i, -1i, -7478i), Struct_4(Struct_2(u_input.d.x, vec2<f32>(arg_0.x, arg_1), arg_2)), u_input.c.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(237f)) + _wgslsmith_f_op_f32(f32(-1f) * -655f)) + arg_1), 1i << (min(arg_2.x, 8735u) % 32u)), Struct_3(Struct_1(_wgslsmith_f_op_f32(func_3(918f, vec4<bool>(global3.x, global0[_wgslsmith_index_u32(u_input.e, 21u)], false, true), Struct_2(-1i, vec2<f32>(1000f, arg_0.x), arg_2))), 0i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_2.yy, u_input.a) ^ u_input.b, ~(~u_input.b)), 29u)], u_input.d.x, global4.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.x)))), arg_1, _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(1230f + arg_1)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, 1000f, arg_1), vec3<f32>(arg_0.x, -1524f, arg_1), global4.www)))))));
    let var_0 = Struct_4(Struct_2(2147483647i, _wgslsmith_f_op_vec2_f32(floor(arg_0.yy)), _wgslsmith_mod_vec4_u32((vec4<u32>(arg_2.x, arg_2.x, 24255u, u_input.b) & arg_2) | ~arg_2, abs(arg_2) << (arg_2 % vec4<u32>(32u)))));
    let var_1 = ~(-_wgslsmith_mult_i32(2147483647i, abs(_wgslsmith_mod_i32(var_0.a.a, u_input.c.x))));
    var var_2 = ~var_1;
    var var_3 = global4.yx;
    return select(reverseBits(var_0.a.c.ywz & _wgslsmith_mod_vec3_u32(select(arg_2.zwy, vec3<u32>(1u, arg_2.x, 0u), vec3<bool>(false, false, false)), arg_2.yxy)), ~select(abs(var_0.a.c.zxz), select(var_0.a.c.wzw, var_0.a.c.wyw, true), vec3<bool>(global0[_wgslsmith_index_u32(32415u, 21u)], false, true)) & ~_wgslsmith_mod_vec3_u32(abs(var_0.a.c.zwy), ~vec3<u32>(u_input.b, arg_2.x, var_0.a.c.x)), vec3<bool>(select(global4.x, !var_3.x, true) == (any(vec4<bool>(var_3.x, global0[_wgslsmith_index_u32(34626u, 21u)], global4.x, global0[_wgslsmith_index_u32(arg_2.x, 21u)])) | func_4(Struct_1(154f, var_0.a.a), Struct_1(var_0.a.b.x, 1i), Struct_3(Struct_1(var_0.a.b.x, u_input.c.x), global1[_wgslsmith_index_u32(0u, 29u)], var_1, true), vec3<f32>(1111f, -950f, -593f)).x), false, select((u_input.d.x | -1i) != 0i, true, any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global4.x)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_2(u_input.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(123f, 1592f) + vec2<f32>(-1546f, -1000f))))))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 78601u, arg_1.x) >> (0u % 32u), u_input.b), 1u << ((arg_1.x << (abs(u_input.b) % 32u)) % 32u), 1u, u_input.a.x << (~4294967295u % 32u)));
    var var_1 = Struct_4(Struct_2(var_0.a, vec2<f32>(var_0.b.x, var_0.b.x), vec4<u32>(firstTrailingBit(0u), var_0.c.x, ~(~30482u), firstLeadingBit(min(1u, 4294967295u)))));
    global0 = array<bool, 21>();
    global3 = func_4(Struct_1(_wgslsmith_f_op_f32(round(var_0.b.x)), var_1.a.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), arg_0.x), Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * 543f) * _wgslsmith_f_op_f32(floor(-650f))), reverseBits(-var_1.a.a)), var_1.a, _wgslsmith_mod_i32(func_2(var_1.a, vec4<i32>(-1i, arg_0.x, 0i, -22741i), Struct_4(Struct_2(var_0.a, var_0.b, vec4<u32>(0u, 10832u, 50409u, arg_1.x))), func_2(Struct_2(-47485i, var_0.b, vec4<u32>(42554u, var_1.a.c.x, var_1.a.c.x, 1u)), arg_0, Struct_4(Struct_2(1i, var_0.b, var_1.a.c)), 2147483647i)), reverseBits(var_1.a.a) | 2147483647i), global0[_wgslsmith_index_u32(31141u, 21u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(191f)))), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_1.a.b.x)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) + _wgslsmith_f_op_f32(-var_1.a.b.x)), _wgslsmith_f_op_f32(ceil(var_1.a.b.x)), _wgslsmith_f_op_f32(var_1.a.b.x - var_1.a.b.x))));
    global4 = !select(func_4(Struct_1(-703f, u_input.c.x << (var_0.c.x % 32u)), Struct_1(-1000f, ~arg_0.x), Struct_3(Struct_1(var_0.b.x, arg_0.x), Struct_2(-2147483647i, var_0.b, var_1.a.c), firstTrailingBit(var_1.a.a), global3.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.b.x, var_1.a.b.x, -1000f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.x, var_1.a.b.x, var_0.b.x))), true))), vec4<bool>(select(true, global4.x, true), true, true, false), !any(!global4.wzx));
    return func_4(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-513f, vec4<bool>(false, global4.x, global4.x, true), Struct_2(u_input.d.x, var_0.b, vec4<u32>(u_input.e, 4001u, 4294967295u, u_input.a.x))))), -680f)), var_1.a.a), Struct_1(_wgslsmith_f_op_f32(trunc(-599f)), 18288i), Struct_3(Struct_1(var_0.b.x, -27914i), Struct_2(7536i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(224f, var_1.a.b.x)), vec4<u32>(select(4294967295u, u_input.a.x, global4.x), ~4294967295u, 21396u, u_input.a.x)), 1i, false == !all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global4.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b.x, 195f, -125f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-854f, var_0.b.x, var_0.b.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_1.a.b.x, -1166f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-405f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-266f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1577f)) + _wgslsmith_f_op_f32(-1864f - -344f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(425f + 305f)) - _wgslsmith_f_op_f32(-647f - 1032f))));
    var var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(min(~vec3<u32>(28255u, u_input.a.x, 1u), vec3<u32>(81181u, u_input.a.x, u_input.b)), ~vec3<u32>(u_input.b, u_input.e, u_input.e))), 21u)];
    global1 = array<Struct_2, 29>();
    global3 = select(vec4<bool>(true, (_wgslsmith_mult_i32(u_input.d.x, -32042i) >= (u_input.d.x << (6446u % 32u))) || all(vec4<bool>(global3.x, false, global3.x, false)), true, global3.x), select(select(!(!vec4<bool>(global4.x, false, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false)), select(vec4<bool>(global4.x, global3.x, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 21u)], false, global4.x, true), global3.x), true), vec4<bool>(!(!global0[_wgslsmith_index_u32(0u, 21u)]), all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(abs(28894u), 21u)], true), true), select(vec4<bool>(all(select(global4.xww, vec3<bool>(global3.x, global4.x, true), global4.zzx)), global4.x, any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global4.x, global0[_wgslsmith_index_u32(0u, 21u)], global3.x)), !global4.x), func_5(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.d.x, u_input.c.x), abs(vec4<i32>(u_input.d.x, -2147483647i, 179i, u_input.d.x))), countOneBits(func_1(vec4<f32>(-1343f, var_0.x, -1880f, var_0.x), var_0.x, vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.b)))), func_5(-(vec4<i32>(42565i, 17837i, u_input.d.x, -46484i) ^ u_input.d), vec3<u32>(abs(u_input.a.x), _wgslsmith_mult_u32(4294967295u, 0u), min(u_input.e, 4294967295u)))));
    var var_2 = _wgslsmith_add_vec2_u32(firstLeadingBit(u_input.a), u_input.a);
    var var_3 = Struct_2(-11713i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f))), ~(~(~max(vec4<u32>(2684u, 11895u, var_2.x, u_input.e), vec4<u32>(var_2.x, u_input.a.x, 54186u, u_input.a.x)))));
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-var_0.x), reverseBits(select(i32(-1i) * -13860i, 26172i, var_3.a == u_input.d.x))), Struct_2(var_3.a, _wgslsmith_f_op_vec2_f32(select(var_3.b, _wgslsmith_div_vec2_f32(vec2<f32>(var_3.b.x, var_3.b.x), var_3.b), !func_5(vec4<i32>(-62671i, var_3.a, 550i, 0i), vec3<u32>(11940u, u_input.a.x, 0u)).x)), ~select(firstTrailingBit(vec4<u32>(var_2.x, u_input.b, u_input.e, u_input.e)), vec4<u32>(var_2.x, 24181u, 52161u, 1u), !vec4<bool>(global4.x, true, false, false))), 0i, any(func_5(u_input.d, vec3<u32>(~0u, max(49852u, 1u), 87077u))));
    var_2 = var_3.c.wz;
    let var_5 = vec4<bool>(global4.x, global3.x, false, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1233f, var_0.x))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2714f, 213f)))), firstTrailingBit(-u_input.c), select(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_3.a ^ var_3.a, reverseBits(var_4.a.b))), var_3.a & min(i32(-1i) * -2147483647i, -var_3.a), (_wgslsmith_add_u32(u_input.e, var_2.x) <= var_4.b.c.x) & true));
}

