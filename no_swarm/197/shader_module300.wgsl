struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
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

var<private> global0: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(true, false)), Struct_5(vec2<bool>(true, false)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, false)));

var<private> global1: array<bool, 31> = array<bool, 31>(true, true, false, true, true, false, false, true, true, false, true, true, false, false, false, false, false, false, true, false, true, true, true, true, true, false, true, true, false, true, false);

var<private> global2: Struct_3 = Struct_3(vec4<bool>(true, false, true, false), true, -318f, Struct_2(17049i, false, 38170u, 0u, vec3<u32>(34685u, 22450u, 29348u)));

var<private> global3: vec3<i32> = vec3<i32>(43895i, 16572i, -28630i);

var<private> global4: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_3(vec4<bool>(true, true, true, true), false, -2542f, Struct_2(i32(-2147483648), false, 1978u, 51107u, vec3<u32>(68347u, 4294967295u, 4294967295u))), Struct_1(-945f, false, 4294967295u, vec3<u32>(4294967295u, 28034u, 1u), false), vec3<i32>(1i, -28559i, 2147483647i)), Struct_4(Struct_3(vec4<bool>(false, true, false, false), true, 1674f, Struct_2(2147483647i, false, 8686u, 30603u, vec3<u32>(67288u, 9973u, 58431u))), Struct_1(-399f, true, 4094u, vec3<u32>(9903u, 106556u, 68200u), false), vec3<i32>(-1i, 2147483647i, -66574i)), Struct_4(Struct_3(vec4<bool>(true, true, true, false), false, 499f, Struct_2(-6378i, true, 69331u, 43035u, vec3<u32>(31777u, 4294967295u, 21456u))), Struct_1(1972f, true, 0u, vec3<u32>(4294967295u, 0u, 14557u), false), vec3<i32>(2147483647i, 1i, -1i)), Struct_4(Struct_3(vec4<bool>(false, false, true, false), true, -1000f, Struct_2(38270i, true, 1u, 45046u, vec3<u32>(26174u, 4294967295u, 1u))), Struct_1(2321f, true, 2221u, vec3<u32>(59517u, 20357u, 1u), true), vec3<i32>(31216i, 2147483647i, 65906i)), Struct_4(Struct_3(vec4<bool>(false, false, false, false), true, -1644f, Struct_2(-39953i, true, 1u, 32492u, vec3<u32>(9461u, 22830u, 25190u))), Struct_1(-1621f, false, 42467u, vec3<u32>(0u, 74493u, 0u), true), vec3<i32>(17854i, 44272i, -19991i)), Struct_4(Struct_3(vec4<bool>(false, false, false, true), true, -801f, Struct_2(i32(-2147483648), false, 4294967295u, 4294967295u, vec3<u32>(0u, 57345u, 57570u))), Struct_1(-632f, true, 58768u, vec3<u32>(0u, 4294967295u, 30753u), false), vec3<i32>(-78555i, -31912i, -1046i)), Struct_4(Struct_3(vec4<bool>(false, false, false, false), true, -736f, Struct_2(-13306i, true, 0u, 35823u, vec3<u32>(4294967295u, 10751u, 0u))), Struct_1(-384f, true, 34966u, vec3<u32>(0u, 12781u, 86722u), false), vec3<i32>(21158i, -35841i, 1i)), Struct_4(Struct_3(vec4<bool>(false, true, true, false), true, -120f, Struct_2(5210i, false, 23990u, 70397u, vec3<u32>(29520u, 8126u, 16177u))), Struct_1(422f, true, 20554u, vec3<u32>(1u, 62630u, 4294967295u), false), vec3<i32>(0i, -46367i, 72657i)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> bool {
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool, arg_3: vec2<u32>) -> Struct_3 {
    global0 = array<Struct_5, 12>();
    global2 = arg_0;
    var var_0 = vec4<bool>(func_3(_wgslsmith_f_op_f32(abs(arg_0.c))) & (_wgslsmith_f_op_f32(-global2.c) != -411f), all(!select(select(vec3<bool>(true, arg_2, global2.b), vec3<bool>(true, false, arg_2), false), !global2.a.wxx, any(global2.a))), !all(global2.a.wy), false);
    let var_1 = Struct_3(vec4<bool>(func_3(-1053f), global2.c > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)), true, !((var_0.x == false) & arg_0.b)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1186f + arg_0.c), 779f))) * 1156f), Struct_2(2147483647i, false, arg_3.x, 0u, select(max(vec3<u32>(arg_0.d.c, u_input.b.x, arg_3.x), ~global2.d.e), ~(~arg_0.d.e), !arg_2)));
    let var_2 = Struct_1(var_1.c, !all(select(vec2<bool>(arg_0.d.b, global1[_wgslsmith_index_u32(global2.d.d, 31u)]), vec2<bool>(arg_0.a.x, global1[_wgslsmith_index_u32(u_input.a, 31u)]), false)), firstTrailingBit(_wgslsmith_mult_u32(min(u_input.b.x, _wgslsmith_add_u32(global2.d.d, 7089u)), 41087u)), vec3<u32>(~reverseBits(_wgslsmith_sub_u32(4294967295u, 5355u)), _wgslsmith_clamp_u32(arg_3.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(66119u, arg_0.d.d, 14556u, 0u), vec4<u32>(0u, arg_0.d.e.x, 75842u, 62972u)), ~u_input.b.x), var_1.d.e.x), true);
    return var_1;
}

fn func_4(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = Struct_4(arg_0, Struct_1(-1186f, func_2(arg_0, Struct_5(!vec2<bool>(false, arg_0.d.b)), u_input.b.x >= min(0u, global2.d.c), u_input.b).d.b, u_input.b.x, vec3<u32>(~78975u, u_input.b.x, 0u), any(select(global2.a, select(arg_0.a, arg_0.a, arg_0.d.b), select(arg_0.a, vec4<bool>(global2.a.x, arg_0.a.x, arg_0.d.b, global1[_wgslsmith_index_u32(global2.d.d, 31u)]), vec4<bool>(arg_0.d.b, false, arg_0.a.x, global2.b))))), _wgslsmith_mod_vec3_i32(-u_input.d, -u_input.d));
    let var_1 = func_2(Struct_3(select(vec4<bool>(func_3(1507f), all(vec2<bool>(true, true)), global2.d.a <= global2.d.a, select(global2.a.x, global2.d.b, true)), func_2(arg_0, Struct_5(vec2<bool>(global1[_wgslsmith_index_u32(48134u, 31u)], false)), !var_0.b.e, ~var_0.b.d.yy).a, var_0.a.a), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, 4294967295u, u_input.b.x)), vec3<u32>(u_input.a, 4294967295u, arg_0.d.d)) > 35957u, -520f, func_2(Struct_3(select(var_0.a.a, vec4<bool>(true, false, arg_0.d.b, global2.d.b), global1[_wgslsmith_index_u32(u_input.b.x, 31u)]), arg_0.d.d < arg_0.d.c, var_0.a.c, func_2(arg_0, Struct_5(var_0.a.a.yx), true, u_input.b).d), global0[_wgslsmith_index_u32(5498u << (arg_0.d.c % 32u), 12u)], true, ~(~vec2<u32>(4294967295u, 8508u))).d), global0[_wgslsmith_index_u32(30214u, 12u)], !arg_0.d.b, ~((var_0.b.d.zx & ~var_0.a.d.e.yy) ^ (~global2.d.e.yx << (vec2<u32>(arg_0.d.c, 0u) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c, var_0.a.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, 277f) - vec2<f32>(global2.c, -1590f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1193f, arg_0.c)) - vec2<f32>(var_0.b.a, global2.c)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), 1000f));
    let var_3 = ~(~firstLeadingBit(reverseBits(vec3<u32>(arg_0.d.c, var_1.d.d, 27332u)))) & vec3<u32>(10754u, 1187u, _wgslsmith_sub_u32(func_2(arg_0, global0[_wgslsmith_index_u32(var_0.b.d.x, 12u)], global2.b, u_input.b).d.c, 4608u) ^ _wgslsmith_mult_u32(arg_0.d.c ^ 89699u, arg_0.d.e.x));
    let var_4 = global2.c;
    return vec4<i32>(33115i, _wgslsmith_dot_vec4_i32(-vec4<i32>(select(2147483647i, arg_0.d.a, var_0.a.b), ~var_1.d.a, var_1.d.a, u_input.d.x), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-25883i, var_0.a.d.a, var_1.d.a, var_1.d.a), vec4<i32>(13437i, global3.x, -1156i, -484i))) & reverseBits(vec4<i32>(62070i, arg_0.d.a, -2147483647i, -2147483647i))), _wgslsmith_clamp_i32(-var_0.c.x, 31249i, reverseBits(1i >> (~var_1.d.d % 32u))), _wgslsmith_add_i32(func_2(var_1, Struct_5(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.d.c, 31u)], arg_0.b)), arg_0.b, ~global2.d.e.yy).d.a, firstLeadingBit(-var_1.d.a)) | 26987i);
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> f32 {
    global0 = array<Struct_5, 12>();
    global2 = func_2(func_2(Struct_3(select(vec4<bool>(global2.d.b, global2.a.x, false, global1[_wgslsmith_index_u32(arg_3, 31u)]), select(global2.a, global2.a, vec4<bool>(global2.b, true, global2.a.x, global1[_wgslsmith_index_u32(83032u, 31u)])), all(vec4<bool>(true, global1[_wgslsmith_index_u32(global2.d.e.x, 31u)], global1[_wgslsmith_index_u32(89729u, 31u)], true))), !func_2(Struct_3(global2.a, global2.b, 402f, Struct_2(1i, false, arg_1, 53922u, vec3<u32>(24346u, 38123u, 1u))), global0[_wgslsmith_index_u32(27641u, 12u)], true, u_input.b).a.x, global2.c, func_2(func_2(Struct_3(vec4<bool>(global2.a.x, false, true, false), global1[_wgslsmith_index_u32(arg_1, 31u)], global2.c, global2.d), Struct_5(vec2<bool>(true, true)), global2.d.b, u_input.b), Struct_5(global2.a.xw), any(vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 31u)], true)), global2.d.e.zz).d), Struct_5(!select(global2.a.zx, global2.a.yx, global1[_wgslsmith_index_u32(0u, 31u)])), !any(vec2<bool>(true, global2.a.x)), firstTrailingBit(vec2<u32>(firstTrailingBit(arg_1), 34804u << (u_input.a % 32u)))), Struct_5(select(func_2(Struct_3(global2.a, global1[_wgslsmith_index_u32(0u, 31u)], global2.c, global2.d), Struct_5(vec2<bool>(true, false)), select(global1[_wgslsmith_index_u32(arg_3, 31u)], true, global1[_wgslsmith_index_u32(arg_3, 31u)]), global2.d.e.xx << (global2.d.e.xy % vec2<u32>(32u))).a.zw, !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(arg_1, 31u)]), true)), global2.a.x, vec2<u32>(~(299u | max(arg_3, global2.d.c)), ~1u));
    let var_0 = _wgslsmith_sub_u32(13221u, 5091u);
    global2 = Struct_3(select(vec4<bool>(select(global2.a.x, global1[_wgslsmith_index_u32(~4294967295u, 31u)], any(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_3, 31u)], true, global1[_wgslsmith_index_u32(52209u, 31u)]))), all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global2.d.b)), global1[_wgslsmith_index_u32(23992u, 31u)], func_3(_wgslsmith_f_op_f32(abs(910f)))), global2.a, false), global1[_wgslsmith_index_u32(4294967295u, 31u)], global2.c, func_2(Struct_3(global2.a, ~0u < _wgslsmith_add_u32(96238u, global2.d.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(240f)) * _wgslsmith_f_op_f32(f32(-1f) * -2440f)), Struct_2(-1i, true, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u), 40906u & global2.d.e.x, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, arg_3, 26536u), vec3<u32>(86953u, 9491u, 17458u)))), global0[_wgslsmith_index_u32(countOneBits(global2.d.c), 12u)], true, vec2<u32>(~var_0, 1u)).d);
    var var_1 = Struct_3(vec4<bool>(global1[_wgslsmith_index_u32(~min(u_input.a | arg_1, abs(var_0)), 31u)], true, global2.d.b, global1[_wgslsmith_index_u32(~29035u, 31u)]), any(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], false, true), global2.a.yxw, vec3<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global2.a.x, global2.b)))), _wgslsmith_f_op_f32(global2.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(229f, global2.c)))), 1000f)), global2.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)) + _wgslsmith_f_op_f32(min(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(867f)))))));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    global1 = array<bool, 31>();
    global3 = u_input.d;
    let var_0 = -u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(func_5(vec3<i32>(~select(-39183i, 25868i, true), firstTrailingBit(global3.x), 1i << (0u % 32u)), 0u, ~firstTrailingBit(vec4<i32>(1i, u_input.d.x, 4101i, var_0)) & select(func_4(func_2(Struct_3(global2.a, false, -133f, Struct_2(9949i, true, 15260u, u_input.b.x, global2.d.e)), global0[_wgslsmith_index_u32(u_input.a, 12u)], false, vec2<u32>(4294967295u, 132477u))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 0i, global3.x, -2147483647i) | vec4<i32>(2371i, u_input.c, -2147483647i, -1i), max(vec4<i32>(global2.d.a, 0i, 27930i, var_0), vec4<i32>(global3.x, global3.x, var_0, global3.x))), vec4<bool>(true, true, true, true)), u_input.b.x));
    global0 = array<Struct_5, 12>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32((abs(global2.d.d | ~u_input.a) & ~(~22428u)) >> (u_input.b.x % 32u), 12u)];
    var var_1 = vec2<u32>(_wgslsmith_clamp_u32(37406u, _wgslsmith_div_u32(func_1(global2.a.xwx), u_input.a), min(29712u, 0u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(global2.d.e.yx), global2.d.e.zy), ((global2.d.e.yz & vec2<u32>(35221u, global2.d.e.x)) ^ vec2<u32>(1u, u_input.b.x)) | ~vec2<u32>(21558u, 4294967295u)));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-11424i, reverseBits(44877i)), global3.x, select(select(global2.d.a, -31638i, false), ~global2.d.a, 0u < var_1.x) | u_input.c, countOneBits(~(-global2.d.a))), vec4<i32>(_wgslsmith_mod_i32(~14629i, u_input.c), min(global3.x, global3.x), abs(~(-52912i)), global3.x) >> (~firstTrailingBit(~vec4<u32>(1u, 1u, var_1.x, 4294967295u)) % vec4<u32>(32u)));
    let var_3 = ~max(43398u, 1u);
    let var_4 = vec2<f32>(-1048f, 565f);
    let var_5 = Struct_3(global2.a, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)) * global2.c) + 392f), Struct_2(1i, !(!select(false, global2.b, false)), u_input.a, _wgslsmith_sub_u32(var_1.x, ~(~1u)), global2.d.e));
    var_0 = global0[_wgslsmith_index_u32(var_3, 12u)];
    var_2 = -20155i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_5(-(~(u_input.d | vec3<i32>(-27907i, var_5.d.a, -1i))), 62937u, ((vec4<i32>(global2.d.a, 4930i, global2.d.a, 5503i) << (vec4<u32>(22421u, 26688u, 86100u, u_input.a) % vec4<u32>(32u))) << (vec4<u32>(15432u, var_1.x, 4294967295u, 1u) % vec4<u32>(32u))) & select(~vec4<i32>(44537i, 19554i, global3.x, global3.x), ~vec4<i32>(global3.x, global2.d.a, global2.d.a, 6355i), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_5.d.c, 31u)], var_0.a.x)), 1u)));
}

