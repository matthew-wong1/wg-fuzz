struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -37557i;

var<private> global1: array<f32, 26>;

var<private> global2: Struct_3 = Struct_3(2596u, vec2<u32>(15538u, 1u), vec2<u32>(75976u, 43204u), Struct_1(vec4<u32>(33971u, 1u, 30561u, 0u), 93410u, vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 21701u)), Struct_1(vec4<u32>(101328u, 100243u, 0u, 8186u), 16019u, vec4<bool>(false, false, true, false), vec2<u32>(33621u, 1u)));

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    var var_0 = Struct_3(_wgslsmith_sub_u32(4294967295u, 0u), ~vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(66674u, ~global3.x)), Struct_1(vec4<u32>(min(34055u, global3.x), 4294967295u, u_input.a, ~countOneBits(u_input.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 100559u), vec2<u32>(6243u, 3185u)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(global3.yyw, vec3<u32>(global2.d.d.x, global3.x, global3.x)))), select(!select(vec4<bool>(false, true, true, global2.d.c.x), global2.d.c, vec4<bool>(global2.e.c.x, global2.e.c.x, global2.e.c.x, global2.d.c.x)), vec4<bool>(u_input.b.x < 4294967295u, false, global2.e.c.x | true, any(global2.e.c.xx)), !all(global2.e.c)), global2.c | vec2<u32>(global3.x, _wgslsmith_mod_u32(1u, global3.x))), global2.d);
    global2 = Struct_3(1419u, ~(~_wgslsmith_sub_vec2_u32(u_input.b, u_input.b) >> (u_input.b % vec2<u32>(32u))), ~var_0.b, Struct_1(abs(vec4<u32>(1u, u_input.a, global3.x, _wgslsmith_mod_u32(56536u, global2.e.b))), 1u, vec4<bool>(select(true, all(global2.d.c.xyy), false), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(33744u, 1u), var_0.d.a.zx), 26u)] <= _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(!vec3<bool>(false, global2.d.c.x, true)), true), vec2<u32>(reverseBits(global3.x), global3.x)), var_0.e);
    global0 = arg_0;
    global2 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(abs(43284u << (global3.x % 32u)), ~_wgslsmith_add_u32(global2.b.x, 27178u), ~global2.c.x), 9917u), vec2<u32>(_wgslsmith_dot_vec4_u32(~var_0.d.a, var_0.e.a), ~27296u) ^ global2.e.a.yz, firstLeadingBit(vec2<u32>(~u_input.b.x, u_input.a)), global2.e, var_0.d);
    global2 = Struct_3(~33212u, u_input.b, global3.xx, var_0.e, Struct_1(vec4<u32>(~1545u, 12080u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global2.d.a.x, 0u, var_0.e.b), vec4<u32>(0u, 0u, global3.x, 0u)), 1u << (global3.x % 32u)) ^ (~global2.d.a & firstLeadingBit(vec4<u32>(var_0.a, var_0.e.a.x, global3.x, global2.b.x))), 36189u >> (u_input.a % 32u), var_0.d.c, firstTrailingBit(~vec2<u32>(17445u, global3.x))));
    return var_0.b.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    var var_0 = select(!vec2<bool>(arg_1.e.c.x, all(vec2<bool>(false, true))), arg_0.e.c.xz, global2.e.c.yx);
    let var_1 = ~0u;
    let var_2 = _wgslsmith_clamp_vec2_i32(countOneBits(~_wgslsmith_mod_vec2_i32(max(vec2<i32>(-11310i, -27533i), vec2<i32>(24156i, -42226i)), select(vec2<i32>(2147483647i, 14439i), vec2<i32>(0i, 2147483647i), var_0.x))), select(~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -12441i), vec2<i32>(0i, 8502i)), abs(vec2<i32>(firstLeadingBit(1i), ~(-33021i))), arg_0.d.c.ww), _wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(28358i, 1i), vec2<i32>(-1i, -1i)) >> (~select(arg_0.e.a.wy, arg_1.e.d, true) % vec2<u32>(32u)), vec2<i32>(2147483647i, ~1i)));
    let var_3 = Struct_2(global2.d);
    let var_4 = any(arg_1.d.c.yyw);
    return Struct_3(4521u, _wgslsmith_clamp_vec2_u32(~global2.d.a.wx, vec2<u32>(0u, 0u), reverseBits(vec2<u32>(46999u, var_1))), vec2<u32>(~(~4294967295u), func_3(-var_2.x & var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_1, 26u)], -1000f) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(35567u, 26u)], global1[_wgslsmith_index_u32(global3.x, 26u)])))), Struct_1(vec4<u32>(var_1, u_input.a, ~u_input.a, countOneBits(~119312u)), firstLeadingBit(4294967295u | var_3.a.b) ^ (abs(arg_0.a) << (~45310u % 32u)), !vec4<bool>(var_4, all(arg_1.e.c), select(true, true, false), true), arg_1.e.a.wz), var_3.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = func_2(Struct_3(global2.b.x, ~arg_1.d.a.wy, ~_wgslsmith_mult_vec2_u32(~global2.e.d, select(vec2<u32>(0u, 4294967295u), arg_1.e.a.xz, arg_1.d.c.wx)), Struct_1(global2.e.a, 13310u, arg_1.e.c, max(u_input.b, vec2<u32>(1u, 1u)) & _wgslsmith_mod_vec2_u32(global2.b, global3.xw)), Struct_1(abs(~vec4<u32>(u_input.b.x, 1u, 1u, 39061u)), 11607u, vec4<bool>(arg_0.x, all(arg_0.zx), !arg_0.x, !arg_1.e.c.x), ~global2.b)), arg_1);
    var var_1 = vec3<i32>(select(-43268i, 23847i, !global2.d.c.x | (false | !var_0.d.c.x)), firstTrailingBit(abs(arg_2)), arg_2);
    global0 = _wgslsmith_dot_vec2_i32(var_1.zy, var_1.xy);
    let var_2 = Struct_3(var_0.e.b, vec2<u32>(_wgslsmith_div_u32(72391u, reverseBits(arg_3.x)), reverseBits(~func_3(arg_2, 710f))), abs(~arg_1.d.d), var_0.e, Struct_1(var_0.e.a, firstLeadingBit(_wgslsmith_dot_vec3_u32(global2.d.a.yyx, ~global2.d.a.xzw)), arg_1.e.c, vec2<u32>(1u, 0u) >> ((vec2<u32>(global2.a, u_input.a) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(24148u, arg_1.e.b), global3.xw, vec2<u32>(var_0.a, arg_3.x)) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_3 = !all(var_0.e.c);
    return Struct_2(var_2.e);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    global1 = array<f32, 26>();
    global3 = global2.e.a;
    let var_0 = arg_0.a.c.xw;
    return Struct_1(vec4<u32>(global3.x, 96091u, arg_0.a.d.x, 1u), _wgslsmith_add_u32(_wgslsmith_div_u32(~(~global3.x), _wgslsmith_div_u32(func_2(Struct_3(0u, global3.xz, global3.wy, arg_0.a, arg_0.a), Struct_3(1u, arg_0.a.a.yw, vec2<u32>(936u, global3.x), Struct_1(vec4<u32>(4294967295u, 33828u, 82476u, u_input.b.x), global3.x, global2.e.c, vec2<u32>(50765u, 4263u)), Struct_1(vec4<u32>(26240u, global3.x, 0u, u_input.b.x), arg_0.a.a.x, global2.d.c, global3.zz))).e.a.x, arg_0.a.a.x)), select(global2.d.d.x, 71532u, func_1(vec3<bool>(arg_0.a.c.x, true, arg_0.a.c.x), Struct_3(39199u, vec2<u32>(1u, u_input.a), u_input.b, Struct_1(global2.d.a, u_input.b.x, vec4<bool>(false, false, true, arg_1), vec2<u32>(global2.d.a.x, 97908u)), arg_0.a), 0i, u_input.b).a.c.x) | func_2(func_2(Struct_3(global3.x, vec2<u32>(37707u, 53716u), vec2<u32>(32479u, global2.c.x), global2.d, arg_0.a), Struct_3(global3.x, arg_0.a.a.zx, vec2<u32>(0u, 13932u), global2.e, Struct_1(vec4<u32>(3668u, 1u, global2.b.x, 1u), arg_0.a.a.x, arg_0.a.c, vec2<u32>(global3.x, arg_0.a.b)))), func_2(Struct_3(global3.x, vec2<u32>(global3.x, 1u), vec2<u32>(27605u, u_input.b.x), Struct_1(vec4<u32>(7755u, 1u, u_input.a, u_input.a), global3.x, vec4<bool>(global2.e.c.x, arg_1, arg_0.a.c.x, arg_0.a.c.x), arg_0.a.d), Struct_1(vec4<u32>(global3.x, u_input.b.x, 1u, global2.a), global3.x, vec4<bool>(true, global2.e.c.x, global2.e.c.x, true), arg_0.a.a.zw)), Struct_3(global2.b.x, u_input.b, vec2<u32>(4294967295u, global2.c.x), Struct_1(vec4<u32>(53748u, u_input.a, global3.x, global3.x), 0u, vec4<bool>(var_0.x, arg_1, false, global2.d.c.x), global2.e.d), Struct_1(arg_0.a.a, 5374u, arg_0.a.c, u_input.b)))).a), arg_0.a.c, _wgslsmith_add_vec2_u32(global3.yz, vec2<u32>(_wgslsmith_mod_u32(global2.e.b, 1u), 1u | abs(u_input.a))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = func_4(Struct_2(func_4(Struct_2(func_4(Struct_2(arg_2), arg_3)), false)), global2.e.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(261f, global1[_wgslsmith_index_u32(0u, 26u)]), vec2<f32>(global1[_wgslsmith_index_u32(52789u, 26u)], -1000f)))))), vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x, 26u)])), _wgslsmith_f_op_f32(floor(-1000f))), vec2<bool>(var_0.c.x, true))) * vec2<f32>(1f, 1f));
    let var_2 = ~_wgslsmith_add_u32(~countOneBits(func_1(vec3<bool>(false, true, arg_3), Struct_3(31058u, vec2<u32>(arg_0.b, u_input.a), vec2<u32>(var_0.a.x, 0u), Struct_1(global2.e.a, var_0.a.x, arg_2.c, vec2<u32>(1u, 0u)), Struct_1(arg_2.a, global2.a, var_0.c, vec2<u32>(4294967295u, arg_1.x))), -1i, arg_0.d).a.a.x), u_input.a);
    global0 = -(~(-38043i));
    var var_3 = Struct_2(func_4(func_1(global2.e.c.wxy, func_2(func_2(Struct_3(69578u, arg_0.a.wy, vec2<u32>(0u, global3.x), Struct_1(vec4<u32>(var_2, 55008u, u_input.b.x, arg_2.d.x), 1u, vec4<bool>(arg_3, false, global2.e.c.x, true), vec2<u32>(21333u, 0u)), arg_2), Struct_3(4294967295u, vec2<u32>(0u, 1u), vec2<u32>(u_input.b.x, 34004u), var_0, arg_0)), Struct_3(var_2, vec2<u32>(global2.b.x, 58404u), arg_1, Struct_1(arg_2.a, u_input.a, vec4<bool>(var_0.c.x, var_0.c.x, false, true), arg_1), Struct_1(vec4<u32>(global3.x, 107044u, var_2, 0u), 19481u, arg_2.c, vec2<u32>(1u, 4294967295u)))), _wgslsmith_dot_vec2_i32(vec2<i32>(13335i, 2147483647i), vec2<i32>(-13249i, 0i)) & 0i, firstTrailingBit(_wgslsmith_sub_vec2_u32(global2.c, u_input.b))), func_1(!vec3<bool>(arg_3, true, true), func_2(func_2(Struct_3(u_input.a, var_0.a.xy, vec2<u32>(28566u, var_2), Struct_1(vec4<u32>(1u, 45683u, 72319u, 0u), global3.x, global2.e.c, arg_2.a.zy), arg_0), Struct_3(global2.b.x, vec2<u32>(arg_1.x, 1u), arg_1, Struct_1(global2.d.a, u_input.a, var_0.c, arg_2.d), arg_2)), func_2(Struct_3(global3.x, u_input.b, arg_1, global2.d, var_0), Struct_3(0u, arg_1, vec2<u32>(16547u, var_0.d.x), Struct_1(var_0.a, global2.b.x, vec4<bool>(true, false, true, false), arg_2.d), Struct_1(arg_2.a, 5340u, global2.e.c, vec2<u32>(arg_0.b, var_2))))), 1i >> (global2.a % 32u), ~vec2<u32>(65755u, global2.d.a.x) ^ arg_2.a.yy).a.c.x));
    return func_4(Struct_2(var_3.a), global2.e.c.x);
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2 * global1[_wgslsmith_index_u32(u_input.b.x, 26u)]), 377f, global2.e.c.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1000f)));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-378f, 753f), vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1021f, var_0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-440f, global1[_wgslsmith_index_u32(0u, 26u)]), vec2<f32>(-610f, 410f))))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, -757f)))))));
    var var_1 = arg_0.e.c.xxy;
    var_1 = vec3<bool>(true | !((arg_3 >> (0u % 32u)) >= abs(-4610i)), false, false);
    return 41952i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(434f, 1426f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global2.d.b, 26u)], global1[_wgslsmith_index_u32(1u, 26u)]) + vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], 264f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(60714u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<f32>(990f, global1[_wgslsmith_index_u32(47944u, 26u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(529f, 806f)), global2.e.c.yw))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1633f, -1707f) + global1[_wgslsmith_index_u32(1u, 26u)]), -193f)));
    global0 = -firstTrailingBit(1i);
    global1 = array<f32, 26>();
    var var_1 = func_6(Struct_3(max(abs(global3.x), max(47040u, global2.d.d.x)), vec2<u32>(_wgslsmith_div_u32(~4294967295u, 4294967295u), _wgslsmith_add_u32(u_input.a, global2.d.a.x)), global2.d.a.wy, global2.d, func_5(Struct_1(global2.e.a << (vec4<u32>(global3.x, u_input.b.x, global2.d.b, u_input.a) % vec4<u32>(32u)), ~global3.x, !global2.e.c, firstLeadingBit(u_input.b)), ~(vec2<u32>(63513u, 4294967295u) << (global3.yx % vec2<u32>(32u))), func_4(func_1(global2.e.c.zyy, Struct_3(30391u, u_input.b, u_input.b, global2.d, Struct_1(global2.e.a, global3.x, vec4<bool>(true, global2.e.c.x, global2.e.c.x, global2.e.c.x), u_input.b)), 6017i, vec2<u32>(u_input.a, global2.c.x)), true), !any(global2.e.c.zy))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(251f))), _wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_div_i32(21927i, -1i), -34023i, _wgslsmith_mod_i32(-19853i, 20330i), 1i), vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(-1i), 18525i), -2147483647i, 41662i, 2147483647i)));
    global2 = Struct_3(global2.b.x, global3.wx, ~vec2<u32>(_wgslsmith_div_u32(u_input.a, global2.a), u_input.b.x), global2.d, global2.e);
    let var_2 = select(vec4<bool>(all(vec3<bool>(true, true, true)), true, false, false), !func_1(func_2(Struct_3(59857u, global2.d.d, u_input.b, Struct_1(vec4<u32>(33637u, 16356u, u_input.a, u_input.a), 1u, global2.e.c, global2.b), global2.d), Struct_3(7753u, vec2<u32>(1u, global3.x), vec2<u32>(32138u, u_input.b.x), Struct_1(global2.d.a, 0u, vec4<bool>(true, false, global2.d.c.x, global2.e.c.x), vec2<u32>(global2.a, 38087u)), global2.d)).e.c.yww, Struct_3(13903u, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, global2.c.x), vec2<u32>(global3.x, global2.a)), global2.c, Struct_1(vec4<u32>(54728u, global2.e.a.x, global2.a, global2.e.d.x), 48103u, global2.d.c, global3.yz), func_2(Struct_3(4294967295u, global2.b, u_input.b, global2.e, Struct_1(vec4<u32>(4294967295u, 1u, global3.x, 34367u), global3.x, global2.e.c, global3.zw)), Struct_3(1u, global3.xw, global3.zy, global2.d, global2.d)).d), -22586i >> (1u % 32u), vec2<u32>(_wgslsmith_sub_u32(7307u, global3.x), ~27197u)).a.c, true);
    global3 = vec4<u32>(_wgslsmith_clamp_u32(~global2.c.x, global2.c.x, global2.e.a.x), 1964u, firstLeadingBit(~(~92084u)), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, 1i, -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-919f, global1[_wgslsmith_index_u32(u_input.a, 26u)], var_0.x, 1000f) + _wgslsmith_div_vec4_f32(vec4<f32>(357f, global1[_wgslsmith_index_u32(global2.d.b, 26u)], var_0.x, var_0.x), vec4<f32>(1477f, 2738f, -670f, var_0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], 1279f, 849f)))))), _wgslsmith_div_vec2_u32(~(vec2<u32>(4294967295u, global3.x) ^ vec2<u32>(u_input.b.x, 4294967295u)), u_input.b) << (_wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(3129u, 33681u), vec2<u32>(global3.x, u_input.a)), (global2.d.a.wy & u_input.b) << (~global2.b % vec2<u32>(32u))) % vec2<u32>(32u)));
}

