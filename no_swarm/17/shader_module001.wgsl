struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<i32>(-1i, 23018i, i32(-2147483648), i32(-2147483648)), false, 69055i, vec4<f32>(-1101f, -881f, -1647f, -591f), vec2<f32>(-600f, -1025f)), Struct_1(vec4<i32>(2147483647i, 36814i, -29887i, i32(-2147483648)), true, i32(-2147483648), vec4<f32>(608f, -1772f, 762f, -760f), vec2<f32>(1855f, -1171f)), Struct_1(vec4<i32>(22962i, -1i, i32(-2147483648), -24902i), false, -11613i, vec4<f32>(-693f, 147f, 2262f, -231f), vec2<f32>(1000f, 155f)), Struct_1(vec4<i32>(-27651i, -45905i, 0i, i32(-2147483648)), false, 2147483647i, vec4<f32>(1036f, 1073f, -877f, -1869f), vec2<f32>(1523f, 1675f)), Struct_1(vec4<i32>(-23991i, 2147483647i, i32(-2147483648), -64250i), true, -14644i, vec4<f32>(1465f, 541f, 1000f, 859f), vec2<f32>(-285f, -490f)));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(14583i, 1i, 1i, 33547i), false, i32(-2147483648), vec4<f32>(-209f, -1393f, -1599f, -1612f), vec2<f32>(-2730f, 2288f));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<i32>(42231i, 59631i, 1339i, -26534i), true, 2147483647i, vec4<f32>(-1000f, -916f, -980f, 637f), vec2<f32>(-877f, -514f)), Struct_1(vec4<i32>(21728i, -1i, -1i, i32(-2147483648)), true, i32(-2147483648), vec4<f32>(396f, -1128f, -474f, 1000f), vec2<f32>(-428f, -402f)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 2147483647i, 51816i), true, i32(-2147483648), vec4<f32>(-1431f, 1509f, -595f, 180f), vec2<f32>(-500f, -1886f)), Struct_1(vec4<i32>(2147483647i, 1i, -27032i, 13072i), false, 0i, vec4<f32>(384f, 442f, -578f, 1206f), vec2<f32>(975f, 1710f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<f32> {
    global1 = global0[_wgslsmith_index_u32(reverseBits((firstLeadingBit(u_input.b) ^ 0u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, min(u_input.b, 0u), _wgslsmith_sub_u32(4294967295u, 47412u), u_input.b), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x), u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 1u, 64814u), vec4<u32>(21010u, 0u, 129085u, 4294967295u)))) % 32u)), 5u)];
    var var_0 = !global1.b;
    var var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~9521u, 1u), firstLeadingBit(58597u) | min(0u, u_input.a.x)), _wgslsmith_clamp_vec2_u32(~(~u_input.a.yz), countOneBits(vec2<u32>(17483u, 36160u)), select(_wgslsmith_sub_vec2_u32(u_input.a.zx, u_input.a.wz), u_input.a.yw | vec2<u32>(0u, u_input.b), true)));
    return global2.d.wyx;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3()), global1.d.wxw, !arg_1.ywy));
    let var_2 = Struct_1(-(~reverseBits(arg_0.a)), !(!all(arg_1.zzz)), var_0.a.x, vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), global2.e.x, 327f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1094f * 516f))), -648f, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz) - var_1.zz)), _wgslsmith_f_op_vec2_f32(-global1.d.zw)));
    let var_3 = arg_0;
    var var_4 = global0[_wgslsmith_index_u32(~49467u, 5u)];
    return global0[_wgslsmith_index_u32(((_wgslsmith_add_u32(u_input.a.x, ~46149u) ^ ~(u_input.a.x << (0u % 32u))) ^ 1u) | abs(3766u), 5u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global2 = func_2(Struct_1(~(~vec4<i32>(global1.a.x, global2.a.x, global1.a.x, arg_3.a.x)), global2.b, reverseBits(arg_1.x ^ global1.a.x) >> (_wgslsmith_dot_vec3_u32(~u_input.a.zyz, ~vec3<u32>(0u, arg_2, 33712u)) % 32u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(207f * arg_3.e.x) + _wgslsmith_f_op_f32(826f * -419f)), _wgslsmith_f_op_f32(-1f), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3()).x))), _wgslsmith_f_op_vec2_f32(arg_3.e + vec2<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1141f)))), vec4<bool>(arg_3.b && true, all(vec2<bool>(!arg_3.b, all(vec2<bool>(global1.b, global2.b)))), !global1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.d.x * global2.e.x))) == 602f), arg_3.a.x);
    let var_0 = ~(~(~u_input.a.yxw) >> (vec3<u32>(0u, firstLeadingBit(min(u_input.a.x, 1u)), abs(~u_input.b)) % vec3<u32>(32u)));
    global2 = func_2(func_2(Struct_1(vec4<i32>(arg_1.x, 1i, firstLeadingBit(global2.c), countOneBits(-34980i)), true, i32(-1i) * -71889i, vec4<f32>(_wgslsmith_f_op_f32(-global2.d.x), global2.e.x, _wgslsmith_f_op_f32(-1663f + 1670f), -257f), vec2<f32>(_wgslsmith_f_op_f32(-459f - global2.d.x), global1.d.x)), select(!(!vec4<bool>(false, false, global1.b, true)), vec4<bool>(global2.b, any(vec3<bool>(arg_3.b, true, global2.b)), false, true), true | select(arg_3.b, global2.b, arg_3.b)), reverseBits(~(-78722i))), !select(select(!vec4<bool>(false, global2.b, false, false), vec4<bool>(true, global2.b, true, true), !vec4<bool>(global1.b, arg_3.b, global1.b, false)), select(select(vec4<bool>(true, true, global2.b, true), vec4<bool>(global2.b, true, arg_3.b, false), false), !vec4<bool>(global2.b, global1.b, true, global1.b), vec4<bool>(global2.b, arg_3.b, global1.b, arg_3.b)), true), func_2(Struct_1(~_wgslsmith_mult_vec4_i32(arg_3.a, vec4<i32>(-79813i, global2.c, arg_1.x, arg_1.x)), global1.b, 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1061f, global2.e.x, -1756f)) + global1.d), global2.d.zw), select(select(vec4<bool>(arg_3.b, false, true, false), !vec4<bool>(false, global1.b, true, global2.b), global1.b && global1.b), !(!vec4<bool>(false, global1.b, true, false)), !select(vec4<bool>(arg_3.b, global2.b, true, arg_3.b), vec4<bool>(arg_3.b, global2.b, arg_3.b, global2.b), arg_3.b)), firstLeadingBit(firstTrailingBit(global1.c))).c);
    let var_1 = select(14381u | arg_0.x, _wgslsmith_div_u32(firstLeadingBit(~1u), _wgslsmith_sub_u32(var_0.x, countOneBits(abs(arg_0.x)))), true);
    let var_2 = Struct_1(~(vec4<i32>(firstTrailingBit(2147483647i), ~(-12705i), max(-2147483647i, arg_1.x), select(-37511i, arg_3.a.x, global1.b)) << (vec4<u32>(~arg_2, arg_0.x, var_1, 1u ^ arg_2) % vec4<u32>(32u))), !any(vec3<bool>(false && global1.b, false, true)), global1.c, _wgslsmith_f_op_vec4_f32(floor(global2.d)), vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_3.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.x - global1.e.x))));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a.x, 29613i, 2147483647i, arg_2.c), vec4<i32>(-1852i, 7026i, arg_0.a.x, -1i))), !(-2147483647i <= abs(arg_2.c)), 2147483647i, global1.d, func_4(~(~(~vec3<u32>(u_input.a.x, u_input.a.x, 375u))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, ~arg_0.c, -global1.a.x), firstLeadingBit(max(vec3<i32>(arg_2.a.x, global2.a.x, -18663i), vec3<i32>(arg_0.a.x, global1.a.x, arg_0.a.x)))), u_input.b, arg_0).d.zx);
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.wxw, u_input.a.xyy), _wgslsmith_mod_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(47752u, u_input.b, 4294967295u) & u_input.a.yzz, _wgslsmith_sub_vec3_u32(u_input.a.yyy, u_input.a.yxx))), countOneBits(~u_input.a.xzy ^ vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    global2 = func_4(~(~min(var_0, ~vec3<u32>(1u, 1u, 0u))), -vec3<i32>(abs(arg_0.a.x), _wgslsmith_add_i32(_wgslsmith_div_i32(-25060i, -30275i), arg_2.a.x), _wgslsmith_div_i32(-54818i, countOneBits(global2.a.x))), var_0.x, arg_2);
    let var_1 = _wgslsmith_f_op_vec2_f32(-func_2(func_4(~vec3<u32>(29009u, 15064u, 4294967295u), arg_2.a.ywz, ~firstTrailingBit(var_0.x), Struct_1(vec4<i32>(-2147483647i, -40688i, -2147483647i, 2147483647i), false, ~1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, global2.d.x, arg_0.e.x, arg_1.e.x)), vec2<f32>(-374f, arg_2.e.x))), !(!(!vec4<bool>(global2.b, true, arg_0.b, false))), arg_0.c).d.yy);
    var var_2 = abs(arg_0.c);
    return Struct_1(vec4<i32>(global1.c, ~_wgslsmith_clamp_i32(-40943i, -2147483647i, 5146i), _wgslsmith_sub_i32(countOneBits(global1.c), _wgslsmith_mod_i32(global2.a.x, func_2(global0[_wgslsmith_index_u32(1u, 5u)], vec4<bool>(arg_2.b, true, global1.b, arg_0.b), global1.c).a.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-11716i, _wgslsmith_mod_i32(-2147483647i, arg_0.c)), 1i)), !arg_1.b, -arg_2.a.x, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x - var_1.x)), -742f), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.e.x, 606f), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1113f - -421f))), -876f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.d.x, _wgslsmith_f_op_f32(trunc(arg_0.e.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.e))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1668f), _wgslsmith_div_f32(global1.d.x, -1139f))));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    return Struct_1(~vec4<i32>(-(~global1.c), arg_0.x, 1i, _wgslsmith_dot_vec4_i32(global2.a, arg_1.a >> (u_input.a % vec4<u32>(32u)))), global1.b, 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.d, global1.d, vec4<bool>(global1.b, false, arg_1.b, true)))))), _wgslsmith_f_op_vec2_f32(global2.d.xx * global2.e));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = func_6(abs(vec2<i32>(-2147483647i, -59983i)), func_5(func_4(~(~vec3<u32>(4294967295u, 0u, u_input.b)), -vec3<i32>(1624i, global1.c, 1116i) & reverseBits(global1.a.yzz), countOneBits(u_input.b), func_2(Struct_1(vec4<i32>(global2.c, -1i, -2147483647i, global2.a.x), global2.b, global2.c, vec4<f32>(1000f, global2.d.x, -630f, 2208f), global1.d.wz), !vec4<bool>(global2.b, global1.b, global1.b, global2.b), -global1.c)), func_4(var_0.zzx, ~vec3<i32>(70935i, global2.a.x, global2.c), ~select(var_0.x, u_input.b, true), Struct_1(vec4<i32>(global2.c, global2.c, 0i, -20693i) << (vec4<u32>(var_0.x, u_input.a.x, 103741u, var_0.x) % vec4<u32>(32u)), true, -global2.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global2.d.x, -2162f, -311f)), arg_0.xy)), Struct_1(-(global1.a ^ global2.a), global1.a.x != -8498i, _wgslsmith_add_i32(countOneBits(global2.c), global2.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e.x, global1.d.x, 1258f, -1345f) * _wgslsmith_f_op_vec4_f32(max(global1.d, global2.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1114f, -986f) - arg_0.zy))), _wgslsmith_div_f32(global2.e.x, 1000f));
    let var_2 = func_2(Struct_1(_wgslsmith_mult_vec4_i32(global1.a, vec4<i32>(1i, -1i, global2.c, var_1.a.x)) | global2.a, true, 0i, vec4<f32>(-376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.e.x))), _wgslsmith_f_op_f32(arg_0.x - -197f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.e))), !select(vec4<bool>(!global2.b, true, true, true), !(!vec4<bool>(false, true, var_1.b, false)), global2.b), select(global2.a.x, -1044i, !(!global1.b))).a.wz;
    global3 = array<Struct_1, 4>();
    var var_3 = func_4(~vec3<u32>(24869u, _wgslsmith_div_u32(0u << (var_0.x % 32u), 45876u), u_input.a.x), vec3<i32>(-var_2.x, countOneBits(_wgslsmith_sub_i32(~global2.a.x, ~(-1i))), -26694i), _wgslsmith_div_u32(u_input.a.x, u_input.b), Struct_1(vec4<i32>(-1078i, var_1.c, global2.c, -2147483647i), false, var_1.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(439f, global1.d.x, var_1.d.x, arg_0.x) - vec4<f32>(1617f, arg_0.x, global2.e.x, -732f)) - func_4(vec3<u32>(var_0.x, u_input.a.x, var_0.x), var_1.a.xzw, 21489u, Struct_1(global1.a, global2.b, global1.a.x, vec4<f32>(var_1.e.x, arg_0.x, global2.e.x, var_1.e.x), global2.d.wy)).d) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.d) + vec4<f32>(var_1.e.x, -138f, 312f, 1000f))), _wgslsmith_div_vec2_f32(arg_0.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, 907f)) - _wgslsmith_f_op_vec2_f32(min(global2.d.zz, global1.d.zw))))));
    return global3[_wgslsmith_index_u32(u_input.b | 0u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2.d.zyw))))));
    let var_0 = vec4<i32>(~(-func_1(global2.d.ywz).c | _wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, global2.a.x, 2147483647i), global2.a.x | global2.a.x)), global1.c, abs(func_4(u_input.a.zyw << (firstLeadingBit(vec3<u32>(1u, u_input.b, 40525u)) % vec3<u32>(32u)), global1.a.zxw, reverseBits(20480u), func_4(_wgslsmith_clamp_vec3_u32(u_input.a.wyx, u_input.a.xzy, vec3<u32>(1u, 67791u, u_input.b)), global1.a.xzz, 1u, func_6(global1.a.yy, Struct_1(vec4<i32>(1i, -1i, global1.a.x, global2.c), global2.b, global2.c, global2.d, vec2<f32>(global1.e.x, global1.e.x)), global2.d.x))).a.x), _wgslsmith_div_i32(-(_wgslsmith_mult_i32(global2.c, global1.c) | global1.c), -12046i << (u_input.b % 32u)));
    var var_1 = vec3<bool>(func_2(Struct_1(vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.x, -1i, var_0.x), vec4<i32>(var_0.x, -1576i, var_0.x, -1127i)), var_0.x, abs(-22363i)), global2.b, -2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-345f, -2542f, -1666f, -136f)) + func_1(global2.d.wzx).d), vec2<f32>(global1.d.x, _wgslsmith_f_op_f32(select(global1.d.x, 893f, global2.b)))), vec4<bool>(true, any(vec2<bool>(global2.b, true)), global2.b, global1.b), func_2(Struct_1(vec4<i32>(11836i, var_0.x, global2.a.x, 550i), all(vec2<bool>(global1.b, global1.b)), global2.a.x, _wgslsmith_div_vec4_f32(global2.d, global1.d), global1.d.yz), vec4<bool>(false, true, global2.e.x > -222f, true), firstLeadingBit(global1.c)).c).b, (_wgslsmith_div_f32(func_1(global2.d.zww).d.x, _wgslsmith_f_op_f32(abs(-681f))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global2.d.x, global1.e.x)), 723f))) && (any(select(vec4<bool>(false, global1.b, global2.b, global1.b), vec4<bool>(true, true, false, global2.b), global1.b)) || global1.b), global1.b);
    var_1 = select(!(!(!select(vec3<bool>(var_1.x, global2.b, var_1.x), vec3<bool>(true, global1.b, true), vec3<bool>(false, false, var_1.x)))), vec3<bool>(var_1.x, true, global1.b == (_wgslsmith_f_op_f32(step(-940f, global1.d.x)) != _wgslsmith_f_op_f32(floor(global1.e.x)))), 1f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.e.x * -230f)))));
    global1 = Struct_1(~(vec4<i32>(abs(43223i), var_0.x, -var_0.x, func_1(vec3<f32>(-1000f, -142f, global2.e.x)).c) & -reverseBits(global1.a)), true, _wgslsmith_mod_i32(~(-(~2147483647i)), _wgslsmith_dot_vec3_i32(~abs(global2.a.xyz), var_0.yxx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(func_4(vec3<u32>(66429u, u_input.a.x, 4294967295u), global1.a.zyz, u_input.b, global3[_wgslsmith_index_u32(u_input.b, 4u)]).d, global2.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.d * vec4<f32>(global2.d.x, 1222f, global1.d.x, -624f)))))), vec2<f32>(global1.e.x, _wgslsmith_f_op_f32(func_4(select(u_input.a.yyw, vec3<u32>(1u, u_input.a.x, 2138u), true), var_0.wxy ^ vec3<i32>(var_0.x, 72056i, 0i), u_input.a.x, Struct_1(var_0, global1.b, var_0.x, global1.d, vec2<f32>(global1.d.x, global1.e.x))).d.x * -100f)));
    var var_2 = 4294967295u;
    var_2 = min(22455u, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a.x, global1.e);
}

