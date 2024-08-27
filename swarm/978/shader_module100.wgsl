struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(4294967295u, 0u, 1u, 83554u, 4294967295u, 21155u, 4294967295u, 4294967295u, 4294967295u, 29236u, 15448u, 4294967295u, 51847u, 84524u, 59761u, 19733u, 4294967295u, 0u, 4294967295u, 0u, 1741u);

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>) -> vec3<bool> {
    return vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), true))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(min(-807f, -1000f)))), true, global1.x);
}

fn func_3(arg_0: u32) -> u32 {
    global1 = !(!(!(!vec3<bool>(global1.x, global1.x, global1.x))));
    global2 = array<Struct_1, 22>();
    global0 = array<u32, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(283f, 455f, 1707f, 1522f) + vec4<f32>(1399f, 1288f, -222f, -1630f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-698f, -810f, 316f, -1038f)))))));
    global0 = array<u32, 21>();
    return countOneBits(min(1u, ~max(_wgslsmith_sub_u32(45008u, arg_0), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23920u, 21u)], 21u)], 21u)] & global0[_wgslsmith_index_u32(91155u, 21u)])));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_2 {
    global1 = !select(func_2(global2[_wgslsmith_index_u32(~0u, 22u)], firstTrailingBit(vec2<u32>(arg_2.b, arg_2.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(324f, -548f, arg_1.x))), !(!(!vec3<bool>(arg_2.c.x, true, global1.x))), any(!vec4<bool>(true, false, false, global1.x)));
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(1025f + _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(445f, 341f, arg_2.c.x))))), global1.xz, ~18382u, ~(-(~u_input.a.yz >> (~vec2<u32>(0u, 0u) % vec2<u32>(32u)))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.zx, u_input.a.yz), select(max(~u_input.a.zw, _wgslsmith_div_vec2_i32(u_input.a.zx, vec2<i32>(arg_0, -2147483647i))), vec2<i32>(22346i, arg_0), func_2(arg_2, min(vec2<u32>(1u, 12832u), vec2<u32>(arg_2.b, arg_2.b)), vec3<f32>(var_0.x, 1788f, arg_1.x)).zz)));
    global0 = array<u32, 21>();
    var var_2 = select(_wgslsmith_div_vec2_u32(~vec2<u32>(~4294967295u, var_1.c), vec2<u32>(_wgslsmith_sub_u32(12244u, abs(1u)), firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 20209u)))), select(vec2<u32>(10333u, 1u), ~firstTrailingBit(vec2<u32>(36163u, 4294967295u)), any(vec3<bool>(true, true, true))), select(select(!vec2<bool>(true, var_1.b.x), arg_2.c, (i32(-1i) * -17451i) >= var_1.d.x), vec2<bool>(false, var_1.b.x), func_2(Struct_1(!global1.x, func_3(1798u), select(vec2<bool>(arg_2.a, arg_2.a), global1.zz, var_1.b.x)), ~vec2<u32>(global0[_wgslsmith_index_u32(var_1.c, 21u)], 53850u), vec3<f32>(497f, -561f, arg_1.x)).zz));
    return var_1;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_4 {
    let var_0 = ~abs(_wgslsmith_dot_vec4_i32(-select(vec4<i32>(-39059i, u_input.b.x, arg_1.x, 0i), vec4<i32>(arg_2.e, u_input.a.x, 0i, 1i), arg_2.b.x), reverseBits(~vec4<i32>(39760i, arg_2.e, u_input.a.x, arg_1.x))));
    var var_1 = func_2(Struct_1(!all(select(vec3<bool>(false, arg_2.b.x, global1.x), vec3<bool>(false, arg_2.b.x, global1.x), global1.x)), global0[_wgslsmith_index_u32(~(~(~65902u)), 21u)], !(!func_1(arg_1.x, vec2<f32>(-720f, -346f), global2[_wgslsmith_index_u32(4294967295u, 22u)]).b)), ~vec2<u32>(arg_2.c >> (select(1u, 4294967295u, arg_2.b.x) % 32u), ~(~arg_2.c)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + _wgslsmith_f_op_f32(ceil(-517f)))), _wgslsmith_div_f32(700f, _wgslsmith_f_op_f32(f32(-1f) * -971f)), -438f));
    var var_2 = global2[_wgslsmith_index_u32(~min(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~30965u, arg_2.c), 21u)], _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(94388u, 21u)], 21u)], arg_2.c, arg_2.c), vec3<u32>(4294967295u, arg_2.c, global0[_wgslsmith_index_u32(25195u, 21u)])), 1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(arg_2.c, 21u)], 97405u, 1u, arg_2.c)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.c, 21u)], 21u)], global0[_wgslsmith_index_u32(arg_2.c, 21u)], arg_2.c, 52542u)))), 22u)];
    let var_3 = arg_2;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1100f, 671f)))) - -493f), !(!select(func_2(global2[_wgslsmith_index_u32(0u, 22u)], vec2<u32>(global0[_wgslsmith_index_u32(0u, 21u)], 0u), arg_3).yy, !vec2<bool>(false, var_3.b.x), var_1.x)), 21924u, -vec2<i32>(0i, u_input.a.x), -var_3.d.x);
    return Struct_4(var_3.c, max(vec4<u32>(47845u, _wgslsmith_mod_u32(4294967295u, arg_2.c & global0[_wgslsmith_index_u32(var_2.b, 21u)]), ~var_4.c, ~countOneBits(0u)), _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(1u, 30041u, 4294967295u, 36603u), vec4<u32>(30642u, arg_2.c, 45943u, 62369u), vec4<bool>(var_2.c.x, false, var_3.b.x, false)), abs(firstLeadingBit(vec4<u32>(3658u, var_4.c, var_2.b, 1u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.c, var_3.c, var_2.b, 6001u), ~vec4<u32>(18732u, 5951u, var_2.b, var_2.b)))), Struct_1(global1.x, ~43342u | var_4.c, !vec2<bool>(false, var_3.b.x)), _wgslsmith_f_op_f32(var_4.a * _wgslsmith_f_op_f32(floor(arg_0))));
}

fn func_5(arg_0: Struct_4) -> u32 {
    let var_0 = all(!(!(!func_2(Struct_1(true, arg_0.c.b, vec2<bool>(true, false)), vec2<u32>(4294967295u, 1187u), vec3<f32>(145f, 1000f, arg_0.d)))));
    global1 = select(select(func_2(Struct_1(!arg_0.c.c.x, 4294967295u, !global1.xy), select(~arg_0.b.xz, vec2<u32>(arg_0.b.x, 9920u), var_0), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2079f, arg_0.d, arg_0.d))), vec3<f32>(arg_0.d, arg_0.d, -1531f)))), select(func_2(Struct_1(arg_0.c.c.x, global0[_wgslsmith_index_u32(59158u, 21u)], global1.yz), vec2<u32>(arg_0.c.b, arg_0.a), vec3<f32>(-1636f, arg_0.d, arg_0.d)), vec3<bool>(true, !global1.x, all(vec3<bool>(var_0, arg_0.c.a, false))), select(vec3<bool>(true, arg_0.c.c.x, arg_0.c.a), vec3<bool>(true, true, arg_0.c.c.x), func_2(global2[_wgslsmith_index_u32(66304u, 22u)], arg_0.b.wx, vec3<f32>(arg_0.d, 815f, arg_0.d)))), !vec3<bool>(arg_0.c.c.x == false, var_0, 1004f > arg_0.d)), !vec3<bool>(u_input.b.x != countOneBits(u_input.b.x), firstLeadingBit(4294967295u) < arg_0.b.x, false), vec3<bool>(func_1(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, -1656f) - vec2<f32>(1408f, arg_0.d)), arg_0.c).a >= -1124f, 13801u > (_wgslsmith_clamp_u32(79303u, 1u, 57185u) << (4294967295u % 32u)), !(global1.x || (false && global1.x))));
    let var_1 = 45568u;
    var var_2 = _wgslsmith_clamp_u32(arg_0.c.b ^ _wgslsmith_div_u32(~1u, func_4(arg_0.d, -u_input.a.yxy, func_1(u_input.a.x, vec2<f32>(147f, arg_0.d), Struct_1(false, 8426u, vec2<bool>(true, arg_0.c.a))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-419f, arg_0.d, -940f), vec3<f32>(arg_0.d, -2421f, arg_0.d)))).c.b), ~(~0u), ~(~(var_1 << (global0[_wgslsmith_index_u32(var_1, 21u)] % 32u))) ^ ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(6078u, 21u)], var_1), arg_0.a));
    var var_3 = func_2(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d - 663f))) + 379f), select(vec3<i32>(u_input.a.x, firstLeadingBit(2829i), u_input.b.x), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 11986i, u_input.a.x), u_input.a.zyz), ~u_input.a.wwy), vec3<bool>(!arg_0.c.c.x, true, !global1.x)), func_1(-func_1(u_input.a.x, vec2<f32>(-1000f, arg_0.d), Struct_1(true, arg_0.b.x, arg_0.c.c)).e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.d, arg_0.d), vec2<f32>(arg_0.d, arg_0.d)))), Struct_1(!arg_0.c.c.x, 0u, !global1.yz)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1442f, 754f, arg_0.d))), vec3<f32>(-490f, _wgslsmith_f_op_f32(-495f + -135f), _wgslsmith_f_op_f32(arg_0.d * arg_0.d))))).c, arg_0.b.zx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, arg_0.d, arg_0.d) - vec3<f32>(arg_0.d, arg_0.d, -1533f)), vec3<f32>(arg_0.d, -1881f, 829f)))))));
    return ~global0[_wgslsmith_index_u32(1u, 21u)];
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(515f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1415f), 1f))) - _wgslsmith_div_f32(func_1(-u_input.a.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(574f, 1154f), vec2<f32>(-1514f, -1111f))), Struct_1(arg_0.a, 0u, global1.xz)).a, _wgslsmith_f_op_f32(f32(-1f) * -1230f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-205f))) - -1000f));
    global2 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-455f, _wgslsmith_f_op_f32(round(func_1(-5481i, vec2<f32>(559f, -524f), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 22u)]).a)), _wgslsmith_f_op_f32(trunc(-184f))) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(748f, -638f, arg_0.c.x)), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-436f - 328f)), 711f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_1.x) * 1f)))));
    let var_3 = -902f;
    return Struct_3(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-825f)) - var_1.x), ~vec3<i32>(~(-1i), u_input.b.x | 58686i, -13044i), Struct_2(-1011f, arg_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 46992u, 16661u, 34253u), vec4<u32>(59131u, 4294967295u, 0u, arg_0.b)) << (1u % 32u), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), u_input.a.zx, u_input.a.xx), u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -941f, var_3) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_3, -796f), vec3<f32>(var_3, 1511f, var_3)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(var_3)), var_3, _wgslsmith_f_op_f32(var_3 * var_3)))).c, global1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 77364i;
    var var_1 = func_6(global2[_wgslsmith_index_u32(countOneBits(func_5(func_4(_wgslsmith_div_f32(-403f, -1016f), vec3<i32>(22689i, var_0, u_input.b.x), func_1(u_input.a.x, vec2<f32>(715f, -1067f), global2[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(533f, -113f, 1383f), vec3<f32>(-111f, -162f, -499f), vec3<bool>(false, global1.x, global1.x)))))), 22u)], (u_input.a.x != -45849i) != false);
    let var_2 = Struct_2(var_1.c.x, func_4(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.yww, u_input.a.xxy ^ vec3<i32>(-29797i, -27218i, -2147483647i)), u_input.a.xyw), func_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -5888i), u_input.b), _wgslsmith_div_vec2_f32(var_1.c, var_1.c), global2[_wgslsmith_index_u32(~(~4294967295u), 22u)]), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1010f, _wgslsmith_f_op_f32(var_1.c.x - -576f), -873f)))).c.c, 0u, abs(_wgslsmith_sub_vec2_i32(u_input.a.zx, vec2<i32>(u_input.b.x, 66049i))), -7288i);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1378f, var_1.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_1.c.x)), var_2.a, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, -600f, 1998f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-706f, var_2.a, -1153f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1984f, -276f) * vec3<f32>(var_2.a, var_1.c.x, -644f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(var_2.a, var_2.a)))), 337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))));
    var_3 = vec3<f32>(var_1.c.x, func_6(var_1.a, true).c.x, _wgslsmith_f_op_f32(-var_1.c.x));
    global2 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0, -_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(var_2.d, u_input.b), reverseBits(abs(var_2.d))));
}

