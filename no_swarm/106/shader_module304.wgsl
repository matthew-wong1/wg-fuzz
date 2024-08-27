struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 1u, 14017u);

var<private> global1: Struct_2;

var<private> global2: array<vec4<f32>, 13>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, true), vec4<bool>(true, true, false, true), vec3<i32>(-25210i, 0i, 1i), vec3<bool>(true, false, false));

var<private> global4: vec4<i32> = vec4<i32>(34083i, i32(-2147483648), 1i, 22602i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = global3.e.x;
    global4 = max(-(~(~vec4<i32>(u_input.a.x, global1.c.d.x, global3.d.x, global4.x) & (vec4<i32>(global1.c.d.x, u_input.a.x, u_input.a.x, -1i) ^ vec4<i32>(2147483647i, 35679i, 1i, u_input.a.x)))), reverseBits(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.d.x, global3.d.x, 51850i, 2147483647i), vec4<i32>(global1.c.d.x, -3115i, global1.a.d.x, global3.d.x), vec4<i32>(48282i, u_input.a.x, -1i, -35046i)) ^ vec4<i32>(u_input.a.x, global3.d.x, -1211i, -2147483647i))));
    let var_1 = Struct_1(!(!vec4<bool>(all(global3.c), global3.c.x, any(vec2<bool>(false, false)), true)), vec2<bool>(!(global0.x <= (1u >> (global0.x % 32u))), any(select(vec4<bool>(true, false, false, true), global3.c, false)) & any(!vec4<bool>(global1.b.x, global1.c.c.x, global1.b.x, true))), !select(global3.a, select(select(vec4<bool>(false, false, global3.b.x, false), vec4<bool>(global3.a.x, true, false, global3.b.x), vec4<bool>(global1.c.e.x, true, true, global3.e.x)), select(global3.a, vec4<bool>(global3.a.x, false, global1.c.b.x, global1.c.b.x), false), global3.c.x), vec4<bool>(global1.b.x, true, !global1.a.a.x, global3.d.x <= global3.d.x)), global3.d, global3.e);
    var var_2 = Struct_2(Struct_1(!vec4<bool>(true, global1.a.b.x == global1.b.x, true, true), select(!vec2<bool>(var_1.e.x, true), select(global1.a.b, !global1.b, !var_1.c.zz), !(var_1.b.x | var_1.a.x)), select(select(select(vec4<bool>(global1.c.a.x, global1.b.x, global3.c.x, global3.a.x), global3.c, false), !global1.c.c, !global1.c.b.x), !(!vec4<bool>(false, global3.b.x, global3.e.x, var_1.e.x)), select(0u, global0.x, global1.b.x) != global0.x), min(global1.c.d, ~vec3<i32>(global3.d.x, 2147483647i, -2147483647i)), select(!vec3<bool>(true, global1.b.x, false), var_1.c.wxz, all(vec2<bool>(true, false)))), var_1.e.yz, global1.a);
    var var_3 = Struct_3(-765f, -24180i, var_2.a);
    return _wgslsmith_f_op_f32(abs(var_3.a));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = true & arg_0.c.x;
    global3 = global1.a;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(func_3()), _wgslsmith_sub_i32(firstTrailingBit(abs(global4.x ^ 1i)), global1.c.d.x), Struct_1(arg_0.c, select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), global3.e.yy, vec2<bool>(false, false)), vec2<bool>(global1.c.e.x, !global1.b.x), true), global1.a.a, global3.d, vec3<bool>(any(global3.e.zy), var_0, any(vec3<bool>(arg_0.a.x, arg_0.c.x, global3.e.x)))));
    let var_2 = max(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(27898u, 58384u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(8618u, global0.x, 29190u))), _wgslsmith_mod_vec3_u32(select(vec3<u32>(0u, 24541u, 16171u), vec3<u32>(4294967295u, 1u, global0.x), global3.e.x), ~vec3<u32>(global0.x, 72084u, global0.x)), firstLeadingBit(vec3<u32>(global0.x, 33632u, global0.x) >> (vec3<u32>(global0.x, global0.x, 66756u) % vec3<u32>(32u)))), vec3<u32>(~global0.x, global0.x, _wgslsmith_mod_u32(~1u, ~0u))) ^ ~vec3<u32>(~43969u, ~(~global0.x), reverseBits(_wgslsmith_add_u32(1897u, 1u)));
    var var_3 = ~_wgslsmith_mod_vec3_i32(-u_input.a, global3.d);
    return Struct_1(select(select(!select(vec4<bool>(true, true, var_0, arg_0.b.x), arg_0.a, global1.a.c), vec4<bool>(true, select(var_0, global1.a.b.x, arg_0.e.x), global3.b.x, !var_1.c.b.x), !vec4<bool>(var_1.c.e.x, arg_0.e.x, var_0, global1.a.e.x)), vec4<bool>(!var_1.c.a.x, select(all(var_1.c.a), true, var_2.x != var_2.x), true, arg_0.b.x), ~(1u & global0.x) == (~var_2.x << (_wgslsmith_mod_u32(var_2.x, global0.x) % 32u))), vec2<bool>(!var_0, all(select(arg_0.c, !vec4<bool>(global1.a.c.x, false, true, true), vec4<bool>(true, true, false, var_0)))), select(!select(!vec4<bool>(var_1.c.e.x, var_1.c.c.x, global1.a.e.x, global3.c.x), vec4<bool>(global1.b.x, false, false, arg_0.a.x), arg_0.a.x & var_1.c.e.x), vec4<bool>(!global1.b.x, global0.x < ~global0.x, any(!vec4<bool>(var_1.c.e.x, var_1.c.e.x, false, var_0)), var_1.c.e.x | false), vec4<bool>(global3.e.x, global1.b.x || true, true, !(global1.a.a.x & true))), vec3<i32>(_wgslsmith_mult_i32(arg_0.d.x, select(2147483647i, u_input.a.x, all(var_1.c.b))), -3065i, -1i), !select(!vec3<bool>(false, arg_0.a.x, var_0), select(vec3<bool>(true, true, true), !global1.a.a.yzz, var_1.c.c.x), arg_0.e.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    global2 = array<vec4<f32>, 13>();
    let var_0 = Struct_2(global1.c, vec2<bool>(false, global3.e.x), func_2(Struct_1(select(global3.c, select(global3.a, global3.a, true), arg_0.x), !global3.c.zx, global1.c.c, firstLeadingBit(_wgslsmith_mod_vec3_i32(u_input.a, u_input.a)), vec3<bool>(arg_0.x && arg_0.x, false, arg_0.x))));
    var var_1 = !select(true, false, (i32(-1i) * -u_input.a.x) > 1i);
    return func_2(func_2(func_2(func_2(func_2(var_0.a)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~_wgslsmith_add_vec2_u32(countOneBits(~global0.xx), vec2<u32>(~global0.x, ~global0.x) & ~(~global0.yy));
    global2 = array<vec4<f32>, 13>();
    let var_1 = vec4<i32>(global3.d.x << (~var_0.x % 32u), _wgslsmith_sub_i32(~(-max(-1i, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -20504i, ~global4.x), min(~vec3<i32>(arg_2.d.x, 11701i, 2147483647i), ~global1.a.d))), 0i, abs(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.d.x, -2147483647i, arg_0.b, global3.d.x) << (vec4<u32>(45972u, 40702u, 34405u, 1u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.d.x, u_input.a.x, global4.x, -2147483647i), vec4<i32>(1i, 0i, arg_1.d.x, 13630i), vec4<i32>(4848i, -53858i, 2147483647i, arg_0.c.d.x))))));
    global1 = Struct_2(arg_1, vec2<bool>(!arg_1.e.x, true), global1.c);
    let var_2 = vec4<bool>(_wgslsmith_mult_u32(global0.x, 4294967295u) != var_0.x, all(!(!arg_1.c.zxx)), all(!func_2(func_2(arg_2)).b), !func_1(func_1(func_2(Struct_1(vec4<bool>(arg_2.a.x, arg_0.c.c.x, false, true), vec2<bool>(true, true), global3.a, vec3<i32>(arg_1.d.x, -1i, global1.a.d.x), global1.c.e)).c.wxy, global2[_wgslsmith_index_u32(4294967295u, 13u)], _wgslsmith_f_op_f32(-arg_0.a)).e, vec4<f32>(_wgslsmith_f_op_f32(351f * arg_0.a), arg_0.a, 447f, -1125f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a)))).c.x);
    return Struct_1(!select(global1.c.a, !vec4<bool>(false, false, global3.a.x, global3.a.x), arg_1.b.x), vec2<bool>(all(global1.a.a), all(!func_1(vec3<bool>(arg_2.c.x, var_2.x, global3.e.x), vec4<f32>(142f, 116f, arg_0.a, -496f), 1632f).e.xy)), !func_2(Struct_1(arg_0.c.c, global1.a.b, vec4<bool>(arg_0.c.e.x, true, false, arg_0.c.e.x), select(vec3<i32>(arg_0.b, 0i, global4.x), vec3<i32>(global4.x, 24311i, var_1.x), vec3<bool>(arg_0.c.a.x, arg_0.c.e.x, arg_2.c.x)), var_2.yzw)).a, global4.zxy, !select(!vec3<bool>(global1.b.x, false, false), !func_1(global3.a.yyw, vec4<f32>(-957f, arg_0.a, arg_0.a, arg_0.a), arg_0.a).c.yzw, arg_2.c.yww));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_4(Struct_3(1455f, -(~34704i), func_1(!vec3<bool>(false, global3.e.x, false), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(44420u, 13u)]), 115f)), global1.c, Struct_1(global3.a, vec2<bool>(true, true), global1.c.c, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, global4.x, -25978i), global4.zyx), global3.d), global1.c.c.zxw)), func_4(Struct_3(_wgslsmith_f_op_f32(max(1f, 1277f)), 26972i, Struct_1(vec4<bool>(global3.b.x, true, false, false), !vec2<bool>(global1.a.e.x, global1.c.e.x), vec4<bool>(false, true, true, global1.a.e.x), func_1(vec3<bool>(false, false, global3.e.x), global2[_wgslsmith_index_u32(global0.x, 13u)], -525f).d, vec3<bool>(global3.b.x, global3.e.x, false))), Struct_1(!vec4<bool>(global1.b.x, false, false, false), vec2<bool>(select(false, false, global3.c.x), any(global1.c.a.yw)), func_2(global1.c).c, abs(abs(global4.wwz)), global3.e), global1.a).e.yz, Struct_1(!global1.a.a, global3.e.yz, vec4<bool>(!any(vec3<bool>(global3.c.x, global1.a.a.x, global3.b.x)), true, true, true), vec3<i32>(_wgslsmith_sub_i32(47966i, func_2(global1.a).d.x), func_1(global3.a.yyw, _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_f_op_f32(-1632f - 1049f)).d.x, -23397i), func_2(Struct_1(global3.a, global3.a.xy, !global1.a.a, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -48158i, global1.c.d.x), global3.d), func_4(Struct_3(-1234f, global1.c.d.x, Struct_1(vec4<bool>(global3.c.x, global3.b.x, global3.b.x, true), global1.c.c.wz, global1.c.c, vec3<i32>(-13351i, u_input.a.x, global4.x), vec3<bool>(global3.b.x, global1.c.a.x, global1.a.b.x))), global1.c, Struct_1(global3.c, vec2<bool>(global1.b.x, false), vec4<bool>(true, global3.a.x, true, global3.c.x), vec3<i32>(u_input.a.x, -1i, global4.x), vec3<bool>(true, false, global1.b.x))).e)).a.yxw));
    global2 = array<vec4<f32>, 13>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(541f, -1000f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-429f - 616f), _wgslsmith_f_op_f32(f32(-1f) * -586f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(559f, -544f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(128f, 367f) + _wgslsmith_f_op_f32(round(-485f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(339f - _wgslsmith_f_op_f32(f32(-1f) * -1239f)) + 136f));
    global1 = Struct_2(Struct_1(vec4<bool>(true, global3.c.x, true, false), global1.b, !global3.c, global4.wxx, vec3<bool>(reverseBits(43549u) > min(global0.x, 8993u), false & !global3.c.x, !global1.b.x)), !(!func_2(global1.c).a.wz), Struct_1(vec4<bool>(global3.a.x, !(global3.a.x & global3.b.x), (global0.x >= global0.x) & global1.b.x, true), global3.a.xy, vec4<bool>(global3.a.x || false, any(global3.e), global3.b.x, all(!vec4<bool>(global3.b.x, global3.a.x, false, false))), abs(func_4(Struct_3(-866f, global1.c.d.x, global1.c), Struct_1(global1.a.c, vec2<bool>(global1.c.b.x, true), global3.c, vec3<i32>(-2147483647i, global4.x, global4.x), vec3<bool>(global1.a.e.x, global3.b.x, false)), global1.c).d ^ (global1.a.d >> (vec3<u32>(global0.x, 1u, global0.x) % vec3<u32>(32u)))), global3.e));
    var var_1 = Struct_2(func_4(Struct_3(_wgslsmith_f_op_f32(-277f - var_0.x), _wgslsmith_clamp_i32(global3.d.x, -17678i, -2147483647i), global1.a), global1.c, Struct_1(func_2(Struct_1(vec4<bool>(true, true, global1.c.b.x, true), vec2<bool>(global3.a.x, global1.b.x), vec4<bool>(global1.b.x, true, true, global1.a.c.x), global4.wwx, vec3<bool>(global3.e.x, global1.b.x, false))).c, select(vec2<bool>(true, global3.a.x), select(global1.c.e.yx, global3.b, false), select(vec2<bool>(true, true), vec2<bool>(true, global3.a.x), global3.b)), func_1(global1.c.e, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, global0.x), 13u)], _wgslsmith_div_f32(var_0.x, var_0.x)).a, global1.c.d, vec3<bool>(false, !global1.a.c.x, all(global3.c.xyx)))), !func_1(global1.c.e, vec4<f32>(232f, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(1435f + var_0.x), var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))).b, Struct_1(vec4<bool>(global3.c.x & false, global3.e.x, global1.b.x, !(global3.e.x | global3.b.x)), global1.b, vec4<bool>(true, global1.a.c.x, global1.b.x, select(global1.c.b.x, true, global3.b.x) | true), countOneBits(-(~vec3<i32>(2147483647i, global1.a.d.x, -7305i))), func_4(Struct_3(_wgslsmith_f_op_f32(-var_0.x), global3.d.x, func_2(Struct_1(global1.c.a, global1.a.a.xz, vec4<bool>(global1.b.x, true, global3.e.x, global1.a.c.x), vec3<i32>(u_input.a.x, -17917i, -35186i), global1.c.e))), func_2(Struct_1(global1.c.c, global1.b, vec4<bool>(global1.b.x, true, false, true), vec3<i32>(-24595i, -1i, 7665i), vec3<bool>(false, false, global3.e.x))), global1.c).e));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0 * vec4<f32>(var_0.x, -1210f, var_0.x, var_0.x)))))));
    global4 = vec4<i32>(global4.x, select((global4.x | _wgslsmith_dot_vec3_i32(global3.d, vec3<i32>(var_1.a.d.x, global3.d.x, -24828i))) >> (global0.x % 32u), var_1.c.d.x, false), select(539i, ~_wgslsmith_div_i32(global3.d.x, _wgslsmith_sub_i32(2147483647i, global1.c.d.x)), global3.c.x), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(global0.x, 4294967295u, 37236u), select(~vec3<u32>(global0.x, global0.x, 39680u), ~vec3<u32>(32505u, 1u, 0u), global3.e)), vec3<u32>(1u, 1u, 1u)), var_2.x, _wgslsmith_mod_vec3_u32(vec3<u32>(~(17792u >> (global0.x % 32u)), 4294967295u, 71808u), ~vec3<u32>(~global0.x, ~global0.x, ~global0.x)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_dot_vec3_i32(global4.yzy, global1.c.d << ((~vec3<u32>(global0.x, 74847u, global0.x) | min(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(0u, 24959u, global0.x))) % vec3<u32>(32u))));
}

