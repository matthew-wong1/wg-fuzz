struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(false, vec2<u32>(32659u, 0u), true), Struct_3(false, vec2<u32>(4294967295u, 51626u), false), Struct_3(false, vec2<u32>(26455u, 30498u), true), Struct_3(false, vec2<u32>(72322u, 14364u), false), Struct_3(false, vec2<u32>(0u, 11087u), true), Struct_3(false, vec2<u32>(0u, 4294967295u), false), Struct_3(true, vec2<u32>(49761u, 12281u), false), Struct_3(false, vec2<u32>(4294967295u, 69318u), false), Struct_3(true, vec2<u32>(58248u, 71398u), true), Struct_3(false, vec2<u32>(1u, 89121u), false), Struct_3(true, vec2<u32>(34041u, 75180u), false), Struct_3(true, vec2<u32>(4294967295u, 4294967295u), false), Struct_3(true, vec2<u32>(60666u, 1u), false), Struct_3(false, vec2<u32>(13793u, 32962u), true), Struct_3(false, vec2<u32>(4294967295u, 19386u), true), Struct_3(true, vec2<u32>(6637u, 14483u), true), Struct_3(false, vec2<u32>(76973u, 1u), false), Struct_3(true, vec2<u32>(14980u, 4294967295u), true), Struct_3(false, vec2<u32>(1u, 25858u), true));

var<private> global2: Struct_2;

var<private> global3: Struct_3 = Struct_3(true, vec2<u32>(61151u, 38382u), false);

var<private> global4: vec4<i32> = vec4<i32>(-10902i, 59625i, 1i, -1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = ~(global4.x << (~_wgslsmith_add_u32(firstLeadingBit(4294967295u), 1u) % 32u));
    global1 = array<Struct_3, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.d + -107f))), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2368f * _wgslsmith_f_op_f32(step(651f, global2.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d + 1846f), 1f))));
    var var_2 = Struct_2(select(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false)), select(global2.a, global2.a, !global2.a), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(global3.b.x, 15u)], true))), select(global2.a, !vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global2.a.x, true), vec3<bool>(global3.c, global3.a, !global0[_wgslsmith_index_u32(9065u, 15u)])), !(!select(global2.a, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global3.a, global3.c), global3.c))), global0[_wgslsmith_index_u32(~1u, 15u)], var_0, _wgslsmith_f_op_f32(trunc(-395f)));
    var var_3 = reverseBits(~(~(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u)))) ^ reverseBits(max(~vec4<u32>(global3.b.x, 37675u, 26269u, u_input.a.x), min(vec4<u32>(1u, 22329u, 1u, 17678u), vec4<u32>(u_input.a.x, 4294967295u, 41941u, u_input.a.x)) >> (vec4<u32>(global3.b.x, global3.b.x, global3.b.x, u_input.a.x) % vec4<u32>(32u))));
    return -924f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(abs(global3.b.x), 19u)];
    var var_1 = select(global2.a.zz, !vec2<bool>(global0[_wgslsmith_index_u32(global3.b.x, 15u)], true), global0[_wgslsmith_index_u32(var_0.b.x, 15u)]);
    let var_2 = arg_3;
    var var_3 = ~global3.b.x;
    global2 = Struct_2(vec3<bool>(_wgslsmith_f_op_f32(-arg_3.d) != _wgslsmith_f_op_f32(func_3()), true, all(vec2<bool>(global3.c, true || global0[_wgslsmith_index_u32(global3.b.x, 15u)]))), true == global0[_wgslsmith_index_u32(global3.b.x, 15u)], -reverseBits(~global2.c), arg_3.d);
    return _wgslsmith_sub_vec4_i32(-(vec4<i32>(_wgslsmith_mod_i32(global2.c, arg_2.x), i32(-1i) * -1i, -23002i ^ var_2.c, -2147483647i) << (~(~vec4<u32>(var_0.b.x, arg_0.x, 4294967295u, var_0.b.x)) % vec4<u32>(32u))), vec4<i32>(23876i, arg_2.x, select(min(-global2.c, ~0i), global4.x, true), arg_2.x));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> u32 {
    global4 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-global4.x, firstLeadingBit(global2.c), -15452i, _wgslsmith_dot_vec4_i32(vec4<i32>(11899i, -11512i, 1i, global4.x), vec4<i32>(1i, 21591i, 2147483647i, 1i))), ~func_2(firstTrailingBit(vec2<u32>(u_input.a.x, 4294967295u)) & _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, global2.d, -1420f, -573f) - vec4<f32>(global2.d, 1866f, global2.d, -102f))), vec3<i32>(2147483647i, global4.x, global2.c) | global4.wwy, Struct_2(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], true), true, -global2.c, global2.d)));
    global4 = countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(1i), 80737i, -2147483647i, _wgslsmith_sub_i32(~96941i, max(-1i, -1i))), firstTrailingBit(select(vec4<i32>(18417i, global2.c, 1i, global4.x), vec4<i32>(-45656i, 16838i, global2.c, global2.c), true))));
    let var_0 = Struct_2(vec3<bool>(false, true, arg_0), !any(select(vec3<bool>(false, arg_0, true), global2.a, global3.a)), global4.x, -1401f);
    var var_1 = !(!select(global3.c, var_0.a.x, true));
    let var_2 = Struct_4(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.d, var_0.d), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global2.d, -633f), vec2<f32>(var_0.d, global2.d))))))), var_0.a);
    return 45143u;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> bool {
    let var_0 = select(arg_3.a.yz, vec2<bool>(arg_0, !(arg_2 && false)), !arg_3.a.zy);
    var var_1 = firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32((vec3<u32>(1u, u_input.a.x, 47334u) << (vec3<u32>(68925u, u_input.a.x, 1u) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(global3.b.x, global3.b.x, global3.b.x), vec3<u32>(u_input.a.x, 24319u, global3.b.x), vec3<u32>(global3.b.x, 4294967295u, u_input.a.x)), vec3<u32>(51861u << (global3.b.x % 32u), 6102u, firstLeadingBit(55394u))), ~_wgslsmith_clamp_u32(~global3.b.x, 4294967295u, global3.b.x), abs(8207u)));
    var var_2 = (global4.ywy << (_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(30435u, 0u, 42133u), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 0u, u_input.a.x), vec3<u32>(11323u, u_input.a.x, var_1.x))), ~(~vec3<u32>(u_input.a.x, 4294967295u, 0u))) % vec3<u32>(32u))) >> (~vec3<u32>(~firstTrailingBit(0u), ~0u, var_1.x) % vec3<u32>(32u));
    global0 = array<bool, 15>();
    var var_3 = Struct_1(select(select(global2.a.zz, select(select(vec2<bool>(false, arg_3.c.x), global2.a.zy, arg_0), vec2<bool>(global3.c, arg_2), global2.a.xx), vec2<bool>(arg_2 | false, true)), !select(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), arg_3.a.zz, vec2<bool>(arg_2, true)), true), _wgslsmith_div_vec2_u32(~var_1.zy, ~(abs(vec2<u32>(43299u, var_1.x)) ^ min(global3.b, vec2<u32>(u_input.a.x, 1u)))));
    return (~4294967295u | (_wgslsmith_div_u32(abs(0u), global3.b.x | var_1.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.x, global3.b.x, var_3.b.x) | vec3<u32>(65989u, 34418u, 20656u), vec3<u32>(12572u, var_1.x, 1u)))) == (_wgslsmith_mod_u32(global3.b.x, 4294967295u) | ~_wgslsmith_sub_u32(22444u, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.b.x, 0u, 56581u), vec3<u32>(4294967295u, 1u, 18301u))));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> StorageBuffer {
    let var_0 = Struct_2(!select(select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 15u)]), global2.a, all(global2.a)), !select(vec3<bool>(true, arg_1, global0[_wgslsmith_index_u32(40105u, 15u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false, false), false), vec3<bool>(!arg_1, arg_0.c, global3.c)), ~_wgslsmith_sub_u32(select(0u, 4294967295u, global3.c), global3.b.x) >= abs(countOneBits(u_input.a.x) | abs(global3.b.x)), -9945i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d - global2.d)) * global2.d))));
    var var_1 = Struct_1(select(!select(!global2.a.yy, select(var_0.a.yz, vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 15u)]), var_0.a.xy), !vec2<bool>(arg_1, true)), select(global2.a.xx, vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], arg_1, global2.b)), true), global2.a.zx), !global2.a.zy), u_input.a);
    global4 = -(vec4<i32>(~(~global4.x), -global2.c & _wgslsmith_clamp_i32(-2147483647i, -1i, global2.c), i32(-1i) * -2147483647i, var_0.c) & _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-85720i, 25281i, global2.c, -51115i), vec4<i32>(1i, global4.x, 2147483647i, global2.c)), vec4<i32>(var_0.c, 1i, -22508i, -41401i)), _wgslsmith_add_vec4_i32(vec4<i32>(global2.c, var_0.c, -11238i, var_0.c) | vec4<i32>(var_0.c, -8475i, global4.x, global4.x), -vec4<i32>(var_0.c, var_0.c, 26584i, -1i))));
    var var_2 = firstTrailingBit(min(vec4<i32>(-global2.c, countOneBits(var_0.c), 6645i, 51022i), firstLeadingBit(~vec4<i32>(7034i, global4.x, -11403i, global2.c))) ^ _wgslsmith_sub_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(global4.x, global4.x, global2.c, var_0.c), vec4<i32>(1i, global4.x, -22742i, 62150i)), reverseBits(vec4<i32>(global2.c, global2.c, var_0.c, global2.c)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], arg_1, true, true)), max(max(vec4<i32>(-1i, global2.c, 25751i, 1i), vec4<i32>(2147483647i, global2.c, var_0.c, -33269i)), vec4<i32>(12724i, -26493i, 2147483647i, var_0.c) & vec4<i32>(global4.x, 0i, 2147483647i, -2147483647i))));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.d, -1072f)));
    return StorageBuffer(firstTrailingBit(~(i32(-1i) * -28271i)), global4.x, abs(2147483647i), _wgslsmith_dot_vec2_u32(min(vec2<u32>(abs(arg_0.b.x), 1u), u_input.a), ~_wgslsmith_clamp_vec2_u32(var_1.b, arg_0.b, vec2<u32>(global3.b.x, arg_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(global3.b.x, 19u)];
    let x = u_input.a;
    s_output = func_5(Struct_3(!(!(!global2.b)), vec2<u32>(max(151326u, 0u) >> (firstTrailingBit(u_input.a.x) % 32u), ~_wgslsmith_div_u32(36238u, 4294967295u)), func_4(func_1(global0[_wgslsmith_index_u32(1u, 15u)], vec3<u32>(4294967295u, global3.b.x, u_input.a.x)) >= 1u, Struct_4(select(vec3<bool>(var_0.a, true, var_0.c), global2.a, global2.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d, global2.d) * vec2<f32>(-276f, global2.d)), !global2.a), global3.c, Struct_4(select(vec3<bool>(true, var_0.a, global3.a), vec3<bool>(false, true, var_0.a), vec3<bool>(global2.b, var_0.c, global3.a)), _wgslsmith_div_vec2_f32(vec2<f32>(1045f, 228f), vec2<f32>(global2.d, global2.d)), !global2.a))), false);
}

