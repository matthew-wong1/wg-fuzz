struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(827f, -385f), vec2<f32>(1505f, 350f), vec2<f32>(-1879f, 1000f), vec2<f32>(-389f, -926f), vec2<f32>(-727f, 365f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec4<i32>) -> f32 {
    global0 = array<vec2<f32>, 5>();
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(729f)), 877f, _wgslsmith_f_op_f32(f32(-1f) * -2171f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1737f, -584f, -253f), _wgslsmith_f_op_vec3_f32(vec3<f32>(912f, 411f, -181f) + vec3<f32>(271f, 1534f, 236f))), select(!vec3<bool>(arg_0.x, arg_0.x, true), select(vec3<bool>(arg_0.x, arg_0.x, false), arg_0, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true))), arg_2.zwx, arg_2.ywz, select(_wgslsmith_clamp_vec3_i32(arg_2.zyx >> (vec3<u32>(47546u, 119u, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, u_input.a.x, arg_2.x), min(vec3<i32>(-34583i, u_input.a.x, u_input.d), vec3<i32>(16160i, 2929i, 1i))), arg_2.yxx, arg_0.x)), Struct_1(60985i, ~(i32(-1i) * -2147483647i), -vec2<i32>(~arg_2.x, ~arg_2.x), select(select(arg_0, select(arg_0, arg_0, arg_0.x), select(vec3<bool>(arg_0.x, false, arg_0.x), arg_0, vec3<bool>(arg_0.x, arg_0.x, false))), arg_0, select(vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))))));
    var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.x, -743f, var_0.a.a.x) * vec3<f32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)))), ~_wgslsmith_div_vec3_i32(vec3<i32>(0i, -1i, var_0.a.c.x), arg_2.wyx | vec3<i32>(u_input.d, u_input.a.x, u_input.d)), ~(-var_0.a.d), ~select(var_0.a.c, var_0.a.b, false) ^ -_wgslsmith_sub_vec3_i32(vec3<i32>(53201i, u_input.d, 9404i), var_0.a.c)), Struct_1(i32(-1i) * -firstLeadingBit(-24224i), 55870i, -(u_input.a ^ arg_2.zy), var_0.b.d));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.a.x - var_0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) + _wgslsmith_f_op_f32(sign(var_0.a.a.x))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-223f)), _wgslsmith_f_op_f32(-var_0.a.a.x))), var_0.a.a.x));
    var_0 = Struct_4(Struct_3(vec3<f32>(1076f, _wgslsmith_div_f32(var_0.a.a.x, _wgslsmith_f_op_f32(floor(1895f))), var_0.a.a.x), vec3<i32>(~u_input.d, u_input.a.x, 0i), ~(~vec3<i32>(arg_2.x, arg_2.x, var_0.a.c.x)), -select(~vec3<i32>(var_0.a.b.x, 0i, -45513i), -var_0.a.b, !vec3<bool>(var_0.b.d.x, true, arg_0.x))), Struct_1(-var_0.a.b.x, u_input.d, -u_input.a ^ _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, -2147483647i), u_input.a | vec2<i32>(-31235i, u_input.a.x)), select(select(select(arg_0, var_0.b.d, vec3<bool>(var_0.b.d.x, true, false)), !arg_0, !arg_0), !(!var_0.b.d), vec3<bool>(!arg_0.x, var_0.b.d.x & false, true))));
    return -273f;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = select(vec2<bool>(arg_1.a.a.x >= _wgslsmith_f_op_f32(func_3(select(vec3<bool>(arg_1.b.d.x, arg_1.b.d.x, arg_1.b.d.x), arg_1.b.d, arg_1.b.d.x), u_input.b, vec4<i32>(-23820i, 0i, 517i, arg_1.b.b) ^ vec4<i32>(1i, u_input.a.x, 6417i, arg_0.x))), false), select(!select(select(arg_1.b.d.yz, arg_1.b.d.xy, vec2<bool>(true, arg_1.b.d.x)), arg_1.b.d.xx, !arg_1.b.d.zy), vec2<bool>(any(!vec4<bool>(arg_1.b.d.x, arg_1.b.d.x, false, arg_1.b.d.x)), arg_1.b.d.x), true), all(arg_1.b.d));
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    var var_1 = arg_1.a.a.x;
    var var_2 = abs(u_input.b.x);
    return vec3<u32>(u_input.b.x, 4294967295u, 4294967295u);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: i32, arg_3: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(func_2(vec2<i32>(arg_0.x, 17764i), Struct_4(arg_1.a, Struct_1(arg_2, -2147483647i, u_input.a, arg_1.b.d)))), vec3<u32>(arg_3, arg_3, 63166u), vec3<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, u_input.b.x, u_input.c), countOneBits(vec3<u32>(4294967295u, u_input.b.x, arg_3))), 1u)), vec3<u32>(4294967295u, select(10186u, 48858u >> ((18096u ^ arg_3) % 32u), true), ~_wgslsmith_sub_u32(1u, arg_3)));
    var_0 = ~(~(~(~(arg_3 | 73108u))));
    var_0 = 1u;
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    return select(select(vec2<bool>(true, true), arg_1.b.d.xy, _wgslsmith_clamp_i32(~arg_2, arg_1.a.b.x, ~(-24673i)) != u_input.d), vec2<bool>(arg_1.b.d.x, false), arg_1.b.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(all(vec2<bool>(u_input.c < 45099u, true)), all(select(func_1(vec4<i32>(u_input.d, u_input.a.x, u_input.d, u_input.a.x), Struct_4(Struct_3(vec3<f32>(120f, -516f, -118f), vec3<i32>(u_input.d, 10576i, u_input.a.x), vec3<i32>(20354i, u_input.d, 6352i), vec3<i32>(-9955i, -1i, u_input.a.x)), Struct_1(-2147483647i, -1i, u_input.a, vec3<bool>(true, true, true))), u_input.a.x, 73937u), vec2<bool>(false, true), true)), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))));
    let var_1 = select(false, all(func_1(vec4<i32>(12233i, -18732i, u_input.d, 26638i), Struct_4(Struct_3(vec3<f32>(-694f, -476f, 418f), vec3<i32>(u_input.a.x, 45195i, 48691i), vec3<i32>(-1i, 1i, u_input.a.x), vec3<i32>(-3506i, u_input.a.x, 1i)), Struct_1(59151i, 2147483647i, vec2<i32>(-4976i, 0i), vec3<bool>(true, true, false))), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(65477u, 50556u), vec2<u32>(u_input.b.x, u_input.b.x)))), any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), func_1(vec4<i32>(-2147483647i, -24108i, -10441i, u_input.d), Struct_4(Struct_3(vec3<f32>(-188f, -2148f, -1222f), vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(-6635i, u_input.a.x, u_input.a.x), vec3<i32>(22010i, u_input.a.x, -30847i)), Struct_1(-2147483647i, u_input.d, u_input.a, vec3<bool>(true, true, false))), -29024i, u_input.c), func_1(vec4<i32>(u_input.d, -32322i, u_input.d, 8971i), Struct_4(Struct_3(vec3<f32>(-995f, 674f, 1794f), vec3<i32>(13902i, u_input.d, -1i), vec3<i32>(-16486i, u_input.d, u_input.a.x), vec3<i32>(-82477i, u_input.a.x, u_input.a.x)), Struct_1(u_input.a.x, u_input.a.x, u_input.a, vec3<bool>(false, false, true))), -2147483647i, u_input.b.x)))) | all(func_1(min(vec4<i32>(u_input.a.x, -6320i, u_input.d, 6198i), vec4<i32>(-2147483647i, 1i, u_input.a.x, -1i) ^ vec4<i32>(-3519i, u_input.a.x, 21148i, u_input.d)), Struct_4(Struct_3(vec3<f32>(-558f, 890f, 798f), vec3<i32>(u_input.d, -8672i, u_input.d), vec3<i32>(-1i, u_input.d, u_input.d), vec3<i32>(u_input.a.x, -20780i, -10187i)), Struct_1(u_input.a.x, 85i, vec2<i32>(u_input.a.x, u_input.d), vec3<bool>(false, false, true))), _wgslsmith_sub_i32(u_input.d, 1i), 98610u));
    var_0 = var_1;
    global0 = array<vec2<f32>, 5>();
    let var_2 = _wgslsmith_mult_vec2_i32(-select(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(-4552i, u_input.d)) >> (u_input.b.zz % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, vec2<i32>(-2147483647i, u_input.a.x)), true), u_input.a);
    var_0 = true;
    var_0 = !var_1;
    var_0 = !any(!vec2<bool>(true, all(vec4<bool>(var_1, var_1, var_1, false))));
    global0 = array<vec2<f32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(vec3<i32>(2147483647i, 46831i, -1i), ~vec3<i32>(u_input.a.x, 14119i, -1i), any(vec4<bool>(true, var_1, var_1, var_1)))) >> ((select(vec3<u32>(0u, 49892u, 1u), abs(vec3<u32>(u_input.c, u_input.b.x, u_input.b.x)), true) & func_2(var_2, Struct_4(Struct_3(vec3<f32>(-1255f, 588f, -936f), vec3<i32>(-29506i, var_2.x, 15343i), vec3<i32>(1i, var_2.x, 2147483647i), vec3<i32>(u_input.a.x, var_2.x, var_2.x)), Struct_1(-2147483647i, var_2.x, u_input.a, vec3<bool>(false, true, var_1))))) % vec3<u32>(32u)));
}

