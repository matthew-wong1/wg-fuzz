struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = Struct_4(select(min(~vec4<i32>(1i, -2147483647i, 11233i, -17337i), vec4<i32>(u_input.a, 4242i, u_input.a, u_input.a) << (~vec4<u32>(61874u, 0u, 1u, 0u) % vec4<u32>(32u))), ~vec4<i32>(u_input.a, u_input.a, -18927i, u_input.a) << (vec4<u32>(firstTrailingBit(4294967295u), min(40004u, 4294967295u), 27075u, max(107697u, 48837u)) % vec4<u32>(32u)), (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 11168u)) & ~27633u) != (~58550u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 16957u, 514u), vec3<u32>(0u, 66001u, 46541u)) % 32u))), 1453u, select(1f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - 2319f) * 511f), true, arg_0.c.x), arg_0, (vec4<u32>(1u, 1u, 1u, 1u) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 93344u, 4294967295u), vec4<u32>(86833u, 63366u, 10267u, 4294967295u), vec4<u32>(43987u, 1u, 0u, 4294967295u))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    let var_1 = var_0.e & _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.e.x | 35587u, var_0.e.x, var_0.e.x, firstLeadingBit(var_0.e.x)), var_0.e);
    let var_2 = Struct_2(vec2<bool>(arg_0.c.x, false), _wgslsmith_div_f32(var_0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(513f)))), -(-1i << (~var_0.b % 32u)) & _wgslsmith_add_i32(~(-11411i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(var_0.a.x, var_0.a.x, 22917i, -2147483647i)), _wgslsmith_mod_i32(var_0.a.x, 1i))), arg_0, Struct_1(_wgslsmith_div_f32(2210f, 1040f), false, !arg_0.c));
    let var_3 = vec3<bool>(-u_input.a < var_2.c, any(!vec4<bool>(false, all(vec4<bool>(var_0.d.c.x, true, false, var_2.a.x)), arg_0.b, false)), all(vec3<bool>(!var_0.d.b, var_2.d.c.x, !any(vec4<bool>(arg_0.b, var_2.e.c.x, var_2.a.x, arg_0.b)))));
    var var_4 = var_3.x;
    return select(select(vec2<bool>(all(vec4<bool>(arg_0.b, false, true, var_0.d.b)) & (var_2.d.c.x && var_3.x), false), select(!vec2<bool>(false, var_0.c), !(!vec2<bool>(true, var_3.x)), vec2<bool>(var_2.c > var_2.c, false)), 0u > var_0.e.x), vec2<bool>(true, false & (_wgslsmith_f_op_f32(268f - 1000f) > _wgslsmith_f_op_f32(sign(1243f)))), var_0.d.b);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec3<i32>) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.e.a, arg_0.a)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d.a), _wgslsmith_div_f32(-1302f, 1106f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a + arg_1.b), arg_0.b.d.a)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.d.a * arg_0.a)))) + 279f), _wgslsmith_f_op_f32(f32(-1f) * -169f));
    let var_1 = arg_1;
    let var_2 = all(!(!select(select(arg_1.e.c, var_1.a, arg_0.b.d.c.x), select(vec2<bool>(arg_1.d.b, false), vec2<bool>(true, true), arg_0.b.d.c), func_3(arg_0.b.d))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_2.d.a, arg_2.d.a) * vec3<f32>(arg_0.a, arg_1.b, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.a, -1908f, var_1.d.a)))) * vec3<f32>(var_1.d.a, -642f, -861f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.d.a, 555f, arg_1.d.a) - vec3<f32>(arg_1.b, arg_0.b.d.a, var_0.x)))), vec3<f32>(-999f, 844f, _wgslsmith_f_op_f32(abs(937f))))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.d.a, var_0.x, -1000f), vec3<f32>(arg_1.b, var_1.e.a, var_0.x), var_2))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1000f - -2138f), 585f, _wgslsmith_f_op_f32(abs(-762f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1625f));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_5(-1608f, Struct_4(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), 4294967295u, true, Struct_1(-812f, false, vec2<bool>(false, false)), vec4<u32>(1u, 52574u, 53141u, 18403u)), 50649i), Struct_2(vec2<bool>(true, false), 1543f, -7849i, Struct_1(933f, true, vec2<bool>(true, true)), Struct_1(-251f, false, vec2<bool>(true, true))), Struct_4(vec4<i32>(-22063i, u_input.a, u_input.a, 2147483647i), 4294967295u, true, Struct_1(-1093f, false, vec2<bool>(true, true)), vec4<u32>(4294967295u, 0u, 1u, 15271u)), vec3<i32>(u_input.a, 75309i, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -403f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1643f, 327f)) - vec2<f32>(-499f, 444f)), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(182f, 971f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(206f, -1123f), vec2<f32>(-1000f, 747f))))))));
    let var_1 = -u_input.a;
    var var_2 = vec4<i32>(2147483647i, -22759i >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(28891u, 77927u, 46902u), vec3<u32>(66539u, 0u, 78863u)), ~vec3<u32>(1u, 38284u, 22540u)), select(4294967295u, 82901u, true)) % 32u), firstTrailingBit(firstTrailingBit(~1i) & var_1), _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, var_1), select(vec2<i32>(4149i, var_1), vec2<i32>(-1i, -40209i), vec2<bool>(false, false))), -(~vec2<i32>(u_input.a, 13659i))));
    var var_3 = Struct_5(var_0.x, Struct_4(-select(vec4<i32>(-27836i, 0i, var_2.x, u_input.a), select(vec4<i32>(-1i, 34860i, var_2.x, 2147483647i), vec4<i32>(var_1, u_input.a, -83516i, -8523i), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))), abs(89725u), true, Struct_1(-1187f, true | all(vec2<bool>(true, true)), func_3(Struct_1(277f, true, vec2<bool>(true, true)))), ~(~vec4<u32>(1u, 1u, 1u, 1u))), 15408i);
    var var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * 262f))), var_0.x), all(vec3<bool>(!select(var_3.b.d.c.x, var_3.b.c, var_3.b.c), var_3.b.d.c.x, false & any(vec2<bool>(false, var_3.b.d.b)))), vec2<bool>(all(vec4<bool>(true, var_3.b.d.c.x, !var_3.b.c, var_3.b.c || var_3.b.d.b)), _wgslsmith_f_op_f32(-var_0.x) > -751f));
    return select(true, all(vec2<bool>(true, true)), var_4.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1442f, _wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1728f + 1273f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2087f, -928f, 464f, -369f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.x))))) - 492f), !func_1(), vec2<bool>(u_input.a >= u_input.a, false));
    let var_2 = ~(~vec4<i32>(_wgslsmith_mod_i32(2147483647i, 8047i), u_input.a | 21642i, u_input.a, -u_input.a)) & vec4<i32>(~_wgslsmith_mod_i32(~u_input.a, u_input.a >> (11091u % 32u)), ~(i32(-1i) * -1i), firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-29476i, u_input.a), vec2<i32>(u_input.a, 1i)), -vec2<i32>(-5302i, -288i))), -u_input.a);
    var var_3 = var_1;
    var var_4 = Struct_1(var_3.a, true, func_3(var_1));
    var_3 = Struct_1(1f, any(vec3<bool>(_wgslsmith_sub_i32(u_input.a, -13012i) == _wgslsmith_dot_vec2_i32(var_2.xz, var_2.wy), var_4.c.x && true, true)), var_1.c);
    var var_5 = 12921u & ((54241u | select(select(31379u, 100094u, var_4.b), ~65479u, var_4.c.x)) & ~1u);
    var var_6 = Struct_4(_wgslsmith_add_vec4_i32(var_2, -(~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 14884i, -2147483647i, var_2.x), vec4<i32>(-335i, -66148i, -14781i, -28279i)))), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(44307u, 40903u, 0u)), 4294967295u), 68341u), any(vec3<bool>(var_1.c.x, var_1.c.x, var_4.b)), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(abs(347f))), _wgslsmith_f_op_f32(f32(-1f) * -403f)), var_1.c.x & !var_1.b, select(var_1.c, select(var_4.c, func_3(var_1), select(vec2<bool>(false, var_1.b), vec2<bool>(var_1.c.x, var_3.b), false)), select(!var_3.c, vec2<bool>(false, true), true))), vec4<u32>(18256u, ~(~45415u), firstLeadingBit(1u), 4294967295u));
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(376f, -305f)), -201f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a)) * -353f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-394f, 862f)))), -842f, ~select(countOneBits(var_2), var_6.a, false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, 1000f) - _wgslsmith_f_op_vec2_f32(abs(var_0.yz))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(925f, 706f)), var_7))));
}

