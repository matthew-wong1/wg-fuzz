struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(21844i, 4507i);

var<private> global1: array<u32, 21> = array<u32, 21>(1u, 31289u, 25990u, 4294967295u, 4294967295u, 38719u, 4294967295u, 1u, 53318u, 24553u, 4294967295u, 10702u, 14078u, 0u, 4568u, 1u, 11366u, 4294967295u, 55312u, 21488u, 15287u);

var<private> global2: Struct_1 = Struct_1(4294967295u, vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<i32>(39321i, 2147483647i, -1i, 1i), vec2<bool>(true, true));

var<private> global3: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> bool {
    global2 = Struct_1(30651u, select(select(vec4<bool>(true, true, false, any(arg_2.c.yw)), !arg_2.c, !global2.c), !vec4<bool>(all(vec4<bool>(true, arg_2.e.x, global2.b.x, arg_0)), any(vec4<bool>(arg_2.b.x, arg_2.e.x, false, false)), true, true), global2.c.x), !(!vec4<bool>(true, global2.b.x, arg_2.b.x, true)), vec4<i32>(arg_2.d.x, 0i, ~(-global2.d.x), min(-21888i, _wgslsmith_dot_vec4_i32(arg_2.d, _wgslsmith_add_vec4_i32(global2.d, vec4<i32>(global2.d.x, arg_2.d.x, arg_2.d.x, 2147483647i))))), select(vec2<bool>(!(true && arg_2.e.x), -1022f >= _wgslsmith_f_op_f32(round(530f))), global2.b.xz, any(vec2<bool>(true, false))));
    let var_0 = _wgslsmith_add_vec4_i32(arg_2.d, ~arg_2.d);
    var var_1 = 9172u;
    let var_2 = Struct_2(_wgslsmith_dot_vec4_u32(max(~(~vec4<u32>(arg_2.a, 70180u, 12731u, 14135u)), ~countOneBits(vec4<u32>(arg_1.x, u_input.a.x, 0u, 4294967295u))), vec4<u32>(arg_2.a, global2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(8853u, 4294967295u), vec2<u32>(arg_1.x, 77139u)), _wgslsmith_add_u32(arg_3, 7849u)) & min(countOneBits(vec4<u32>(u_input.a.x, arg_2.a, arg_1.x, global2.a)), vec4<u32>(4294967295u, arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 21u)], 1u) | vec4<u32>(28715u, u_input.a.x, 4294967295u, u_input.a.x))), 40470i, select(arg_2.c.yy, vec2<bool>(true, !arg_0 || true), !arg_2.b.x), arg_2, abs(~arg_1));
    var var_3 = select(all(select(vec2<bool>(any(global2.c.wyx), false), !select(var_2.d.e, global2.e, true), true)), all(var_2.c), true);
    return !all(!vec3<bool>(arg_0, true, false)) & (true && any(var_2.d.b.xxw));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = ~(~0u);
    let var_1 = vec4<bool>(true, select(false, false, arg_0.d.c.x), select(any(!(!arg_3.c.yxx)), !(!any(arg_0.d.b.xyz)), (_wgslsmith_f_op_f32(trunc(-2879f)) > 708f) | func_3(true, _wgslsmith_clamp_vec3_u32(vec3<u32>(84849u, 0u, arg_2), vec3<u32>(arg_1, 31654u, global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<u32>(u_input.a.x, 4294967295u, arg_0.e.x)), Struct_1(4294967295u, global2.c, vec4<bool>(false, false, arg_0.d.b.x, global2.b.x), arg_3.d, vec2<bool>(arg_3.c.x, true)), 37465u | arg_1)), all(!arg_0.d.c.wyy));
    global3 = arg_0.c.x;
    let var_2 = Struct_1(reverseBits(~1u), vec4<bool>(true, any(global2.e), true, true & !(global0.x != global2.d.x)), !global2.c, vec4<i32>(arg_3.d.x, _wgslsmith_mult_i32(arg_0.d.d.x, 62931i), ~global2.d.x, global2.d.x), var_1.wz);
    let var_3 = u_input.a;
    return !(!select(!select(var_2.c, vec4<bool>(var_2.e.x, true, global2.b.x, true), arg_0.d.c.x), !(!global2.b), select(arg_0.d.b, select(vec4<bool>(false, var_1.x, global2.e.x, var_1.x), vec4<bool>(global2.b.x, var_2.b.x, global2.b.x, arg_3.c.x), vec4<bool>(arg_0.c.x, var_1.x, false, false)), vec4<bool>(false, true, true, arg_0.d.c.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32) -> Struct_2 {
    global2 = Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, u_input.a.x), 4294967295u), vec2<u32>(8664u, arg_1) >> (_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(arg_1, 89765u), vec2<u32>(121976u, global2.a)) % vec2<u32>(32u))), select(arg_0, func_2(Struct_2(0u, ~global0.x, select(global2.e, vec2<bool>(true, arg_0.x), arg_0.x), Struct_1(global2.a, arg_0, arg_0, vec4<i32>(4160i, -72889i, -2147483647i, -1i), vec2<bool>(true, false)), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], 1u, 53321u) ^ vec3<u32>(52496u, global1[_wgslsmith_index_u32(39296u, 21u)], 0u)), global1[_wgslsmith_index_u32(~global2.a, 21u)], _wgslsmith_mod_u32(arg_1, 6069u), Struct_1(3650u, vec4<bool>(true, global2.e.x, false, global2.b.x), vec4<bool>(global2.c.x, true, false, arg_0.x), global2.d, vec2<bool>(false, arg_0.x))), select(vec4<bool>(true, select(arg_0.x, false, true), true, 1i >= global2.d.x), !(!global2.c), global2.e.x)), !vec4<bool>(func_3(true, max(vec3<u32>(u_input.a.x, arg_1, global2.a), vec3<u32>(0u, 0u, 1u)), Struct_1(global2.a, arg_0, arg_0, vec4<i32>(-1i, -30244i, -19873i, global0.x), global2.e), 0u), global2.e.x, all(arg_0.yzx) || any(vec3<bool>(true, true, arg_0.x)), true), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, _wgslsmith_mult_i32(global2.d.x, -1i), 1i, max(global0.x << (2576u % 32u), -global0.x)), select(vec4<i32>(1i, global0.x, -41391i, 0i), global2.d & vec4<i32>(global0.x, global2.d.x, global0.x, -1i), !vec4<bool>(true, arg_0.x, false, true)) & vec4<i32>(-global0.x, -2147483647i, global2.d.x & 1i, 1i)), func_2(Struct_2(4294967295u, global2.d.x, select(vec2<bool>(global2.b.x, true), vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, false)), Struct_1(18463u << (global2.a % 32u), select(arg_0, vec4<bool>(false, true, arg_0.x, true), false), vec4<bool>(global2.b.x, arg_0.x, false, arg_0.x), ~vec4<i32>(-50179i, global0.x, global2.d.x, global2.d.x), vec2<bool>(false, false)), firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, arg_1))), global1[_wgslsmith_index_u32(global2.a, 21u)], ~global2.a, Struct_1(50101u, global2.b, arg_0, vec4<i32>(-7126i, _wgslsmith_add_i32(global2.d.x, 37744i), -50069i, -global0.x), func_2(Struct_2(37752u, 38598i, vec2<bool>(global2.e.x, false), Struct_1(global2.a, vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(false, global2.c.x, true, global2.b.x), global2.d, vec2<bool>(false, false)), vec3<u32>(4294967295u, 25194u, 4294967295u)), ~arg_1, 1u, Struct_1(u_input.a.x, global2.b, global2.b, global2.d, global2.e)).yw)).xx);
    global1 = array<u32, 21>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1354f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1622f, -286f))), vec2<f32>(-1209f, -205f), select(global2.e, vec2<bool>(true, arg_0.x), global2.b.xy))) - vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), 1898f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1082f, _wgslsmith_f_op_f32(-704f - _wgslsmith_f_op_f32(-1000f - -1330f)))));
    global0 = -vec2<i32>(~global0.x, -2147483647i);
    global2 = Struct_1(abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, global2.a, global2.a, 45226u), vec4<u32>(u_input.a.x, 4294967295u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4533u, 21u)], 21u)]), arg_0.x), vec4<u32>(28976u, global2.a, global1[_wgslsmith_index_u32(1u, 21u)], 4294967295u)), ~countOneBits(global2.a), 52016u)), arg_0, vec4<bool>(~u_input.a.x == ~(0u >> (global1[_wgslsmith_index_u32(global2.a, 21u)] % 32u)), global2.b.x, false, !(all(vec3<bool>(arg_0.x, false, global2.e.x)) | all(vec3<bool>(true, global2.b.x, false)))), vec4<i32>(-1i << (1u % 32u), -79797i, _wgslsmith_div_i32(_wgslsmith_mult_i32(global0.x, -36716i), firstTrailingBit(1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, min(-5170i, 2147483647i), 0i >> (0u % 32u)), firstLeadingBit(global2.d.zzw))), !(!vec2<bool>(!global2.e.x, true)));
    return Struct_2(arg_1, abs(abs(2147483647i) ^ global0.x), func_2(Struct_2(~global1[_wgslsmith_index_u32(abs(0u), 21u)], -global2.d.x, global2.b.ww, Struct_1(4294967295u, !arg_0, !vec4<bool>(false, global2.e.x, global2.b.x, arg_0.x), vec4<i32>(global0.x, global2.d.x, global0.x, global2.d.x), func_2(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global2.d.x, vec2<bool>(true, global2.b.x), Struct_1(25323u, vec4<bool>(arg_0.x, true, false, arg_0.x), arg_0, vec4<i32>(-26035i, -15647i, 1i, global0.x), global2.b.xw), vec3<u32>(0u, 91820u, global1[_wgslsmith_index_u32(20004u, 21u)])), u_input.a.x, global2.a, Struct_1(arg_1, arg_0, global2.b, global2.d, vec2<bool>(false, arg_0.x))).yz), countOneBits(vec3<u32>(u_input.a.x, 4294967295u, 39960u))), global2.a, ~abs(countOneBits(u_input.a.x)), Struct_1(10920u, global2.b, select(global2.b, arg_0, true), -vec4<i32>(global2.d.x, global2.d.x, -27342i, -53194i), vec2<bool>(select(true, false, true), arg_0.x))).zy, Struct_1(0u, global2.c, !func_2(Struct_2(u_input.a.x, global0.x, arg_0.zx, Struct_1(0u, vec4<bool>(true, global2.b.x, false, false), global2.b, global2.d, vec2<bool>(false, false)), vec3<u32>(1u, 0u, global1[_wgslsmith_index_u32(1u, 21u)])), arg_1, abs(4294967295u), Struct_1(u_input.a.x, vec4<bool>(global2.e.x, global2.e.x, arg_0.x, global2.b.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), global2.d, vec2<bool>(global2.e.x, true))), vec4<i32>(-global0.x, _wgslsmith_div_i32(global2.d.x, global0.x), global0.x, select(global2.d.x, global2.d.x, true)), vec2<bool>(arg_0.x, arg_0.x)), ~vec3<u32>(u_input.a.x, 27302u, u_input.a.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = vec4<bool>(_wgslsmith_dot_vec2_u32(arg_2.e.xz, _wgslsmith_mult_vec2_u32(arg_3.yw, vec2<u32>(66170u, 1u) ^ vec2<u32>(12996u, u_input.a.x))) >= abs(~arg_0.e.x), !arg_1.c.x, true, (~countOneBits(41467u) >= global1[_wgslsmith_index_u32(~0u, 21u)]) && !(!any(vec2<bool>(false, global2.b.x))));
    let var_1 = arg_0.a;
    var var_2 = func_4(func_2(arg_0, select(~arg_3.x, var_1, any(vec3<bool>(true, true, true))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1, min(arg_0.a, arg_1.a)), 84405u), arg_0.d), _wgslsmith_div_u32(~0u, 7680u)).d;
    var_2 = arg_2.d;
    var var_3 = arg_1;
    return Struct_1(_wgslsmith_clamp_u32(1u, var_1 | ~(~4294967295u), 0u), vec4<bool>(!var_2.b.x, true, !(!(!arg_0.d.c.x)), arg_0.c.x), select(var_2.b, func_2(func_4(var_2.b, 4294967295u), min(arg_1.a & 8041u, firstTrailingBit(1u)), firstLeadingBit(firstLeadingBit(4294967295u)), Struct_1(arg_1.a << (var_1 % 32u), !arg_2.d.c, arg_1.b, var_3.d | arg_1.d, select(vec2<bool>(true, false), vec2<bool>(true, var_3.b.x), var_0.wz))), vec4<bool>(true, arg_0.c.x, arg_0.c.x, true)), var_3.d, var_0.wy);
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global3 = global2.c.x;
    let var_0 = arg_1.d.x;
    var var_1 = u_input.a.x;
    global0 = arg_1.d.zx;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-156f, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 850f));
    return Struct_1(min(~4294967295u, countOneBits(arg_1.a) << (~4294967295u % 32u)), global2.b, global2.c, global2.d, arg_1.c.xw);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> vec4<i32> {
    global2 = func_6(_wgslsmith_f_op_f32(step(-694f, -745f)), func_5(func_4(select(func_2(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], 1i, vec2<bool>(global2.e.x, global2.c.x), Struct_1(u_input.a.x, global2.b, vec4<bool>(true, false, false, true), global2.d, vec2<bool>(true, global2.e.x)), vec3<u32>(19068u, global2.a, u_input.a.x)), u_input.a.x, 1u, Struct_1(global2.a, vec4<bool>(false, true, false, arg_2.x), global2.b, vec4<i32>(arg_0, -1i, global2.d.x, -20676i), vec2<bool>(true, arg_2.x))), !vec4<bool>(arg_2.x, global2.e.x, global2.e.x, global2.c.x), global2.b), ~(global1[_wgslsmith_index_u32(4294967295u, 21u)] >> (0u % 32u))), Struct_1(3294u, global2.b, vec4<bool>(func_2(Struct_2(60927u, global2.d.x, global2.b.xx, Struct_1(global1[_wgslsmith_index_u32(0u, 21u)], vec4<bool>(arg_2.x, global2.e.x, false, false), vec4<bool>(true, arg_2.x, true, false), vec4<i32>(global0.x, -5683i, global0.x, arg_0), vec2<bool>(global2.b.x, arg_2.x)), vec3<u32>(34412u, 4294967295u, u_input.a.x)), global2.a, 4294967295u, Struct_1(global2.a, vec4<bool>(true, arg_2.x, global2.b.x, true), vec4<bool>(true, arg_2.x, arg_2.x, false), global2.d, arg_2.yz)).x, true, !global2.e.x, false), global2.d >> (vec4<u32>(21631u, 4294967295u, global1[_wgslsmith_index_u32(0u, 21u)], 4294967295u) % vec4<u32>(32u)), vec2<bool>(true, true)), func_4(!vec4<bool>(arg_2.x, global2.e.x, global2.b.x, arg_2.x), _wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, global1[_wgslsmith_index_u32(40657u, 21u)])), ~countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, global2.a, 1u) << (vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], 60237u, global2.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)]) % vec4<u32>(32u)))));
    let var_0 = arg_2.x;
    global0 = vec2<i32>(35992i, global2.d.x);
    let var_1 = arg_1;
    let var_2 = any(!vec4<bool>(arg_2.x, true, func_2(Struct_2(65630u, global0.x, arg_2.xz, Struct_1(u_input.a.x, vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<i32>(arg_0, global0.x, -4265i, 1i), arg_2.xy), vec3<u32>(global2.a, global2.a, global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), u_input.a.x, 5006u, Struct_1(1u, global2.c, global2.c, global2.d, global2.c.yw)).x | (global2.c.x || false), true));
    return global2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 7106u;
    var var_1 = !global2.c.x;
    var var_2 = Struct_1(19696u, vec4<bool>(all(select(select(global2.c.zxw, vec3<bool>(true, true, true), global2.c.xyx), global2.b.zzz, !global2.c.x)), !global2.e.x, !(!(global2.d.x <= 1i)), ~0i >= reverseBits(global2.d.x)), !global2.c, func_1(global2.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-278f * _wgslsmith_f_op_f32(f32(-1f) * -479f)))), !global2.b), vec2<bool>(!global2.c.x, all(!global2.c.zzx)));
    var var_3 = u_input.a;
    global1 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(830f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2362f + 465f), _wgslsmith_f_op_f32(-100f + -1136f), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-100f)), _wgslsmith_f_op_f32(step(-1028f, -1000f)))))), 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(226f))))));
}

