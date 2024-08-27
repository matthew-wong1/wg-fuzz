struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<vec3<i32>, 31>;

var<private> global2: vec4<i32> = vec4<i32>(-1025i, -1i, 2147483647i, -65573i);

var<private> global3: Struct_3 = Struct_3(-338f, 1u, Struct_1(2147483647i));

var<private> global4: vec3<i32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    global1 = array<vec3<i32>, 31>();
    let var_0 = Struct_3(arg_0.a, _wgslsmith_add_u32(4294967295u >> (select(~arg_0.b, min(1743u, 0u), false) % 32u), arg_0.b), Struct_1(_wgslsmith_add_i32(global4.x, i32(-1i) * -arg_0.c.a)));
    var var_1 = false;
    global2 = select(~vec4<i32>(1i, global4.x, 33351i, max(global4.x, 17148i) << (0u % 32u)), _wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.c.a & arg_0.c.a, ~1061i, -u_input.b, global3.c.a << (arg_0.b % 32u)), ~(~vec4<i32>(global3.c.a, 39893i, global3.c.a, arg_0.c.a)) ^ vec4<i32>(-u_input.a, global2.x, global4.x ^ arg_0.c.a, -global4.x)), true);
    var var_2 = var_0;
    return vec4<bool>(!(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global2.yz, vec2<i32>(1i, -1i)), -636i) < -(global2.x << (arg_0.b % 32u))), global2.x == select(u_input.a << (~u_input.c.x % 32u), -12524i, all(vec3<bool>(true, true, true))), !(~(~u_input.c.x) <= firstLeadingBit(~1u)), select(var_2.a > _wgslsmith_f_op_f32(-1237f - _wgslsmith_f_op_f32(round(var_0.a))), u_input.c.x != ((global3.b ^ 53810u) >> (abs(22898u) % 32u)), global3.b < u_input.c.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = !(!(!func_3(Struct_3(global3.a, 8248u, global3.c))));
    let var_1 = Struct_3(global3.a, 0u, Struct_1(global3.c.a));
    var var_2 = Struct_2(select(-vec4<i32>(i32(-1i) * -2147483647i, u_input.b, 64887i, ~(-4362i)), min(vec4<i32>(-36675i, 2147483647i, 0i, -global3.c.a), _wgslsmith_div_vec4_i32(vec4<i32>(global3.c.a, 64261i, global3.c.a, global4.x), vec4<i32>(global3.c.a, -26159i, 0i, 28138i)) >> (abs(u_input.c) % vec4<u32>(32u))), !var_0.x), countOneBits(-10636i), Struct_1(_wgslsmith_mult_i32(global4.x | _wgslsmith_mult_i32(u_input.b, var_1.c.a), (u_input.b & global3.c.a) << (arg_2.x % 32u))));
    let var_3 = ~select(firstLeadingBit(max(arg_2.zx, arg_2.xy)), u_input.c.ww, select(func_3(var_1).zx, vec2<bool>(var_0.x, false), true));
    var_2 = Struct_2(vec4<i32>(-2147483647i << ((_wgslsmith_sub_u32(u_input.c.x, var_3.x) << (17095u % 32u)) % 32u), global4.x, 1i, -10829i), 2147483647i, Struct_1(var_1.c.a));
    return var_1.c;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -243f) - _wgslsmith_f_op_f32(step(1012f, _wgslsmith_f_op_f32(406f + 914f))))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, global3.b) ^ global3.b, ~(~global3.b), 4294967295u, ~u_input.c.x), vec4<u32>(~abs(66562u), ~_wgslsmith_add_u32(u_input.c.x, u_input.c.x), _wgslsmith_sub_u32(global3.b, global3.b) & ~77604u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(global3.b, 53352u)), u_input.c.x | global3.b))), arg_2);
    let var_1 = 24588i;
    let var_2 = _wgslsmith_clamp_vec2_i32(global4.yy, select(-_wgslsmith_sub_vec2_i32(vec2<i32>(65500i, global3.c.a), global4.zx), select(-vec2<i32>(var_1, 37260i), vec2<i32>(433i, _wgslsmith_sub_i32(var_0.c.a, 2147483647i)), func_3(var_0).xz), vec2<bool>(true, true)), select(~(-(vec2<i32>(31529i, -40536i) | vec2<i32>(var_1, global3.c.a))), vec2<i32>(-global2.x, 2147483647i), select(select(select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), true), vec2<bool>(arg_0, false), !vec2<bool>(arg_0, true)), func_3(Struct_3(global3.a, 4294967295u, var_0.c)).zx, func_3(Struct_3(110f, 28927u, Struct_1(3989i))).ww)));
    global4 = reverseBits(abs(~(-global2.zzy)) | global1[_wgslsmith_index_u32(global3.b & 0u, 31u)]);
    global0 = array<Struct_1, 15>();
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a, var_0.a)), _wgslsmith_f_op_f32(-global3.a)))) * -1041f), _wgslsmith_div_u32(firstLeadingBit(~89944u), u_input.c.x), Struct_1(-(12179i & arg_2.a)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_1 {
    global4 = vec3<i32>(2147483647i, select(abs(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(u_input.b, -904i))), global2.x, any(arg_0.wzz)), ~func_4(arg_0.x, reverseBits(-15111i), global0[_wgslsmith_index_u32(4294967295u, 15u)]).c.a);
    var var_0 = _wgslsmith_f_op_f32(max(-983f, global3.a));
    global0 = array<Struct_1, 15>();
    var var_1 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(160f, arg_1.a, global3.a, global3.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-630f, -644f, arg_1.a, global3.a)) - vec4<f32>(arg_1.a, arg_1.a, 858f, arg_1.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(func_4(arg_0.x, arg_1.c.a, arg_1.c).a - -539f), arg_1.a)), u_input.c.zzy);
    return arg_1.c;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = ~4294967295u >> (_wgslsmith_dot_vec3_u32(u_input.c.ywy, u_input.c.xyx) % 32u);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1538f), global3.b, func_5(vec4<bool>(any(vec2<bool>(true, false)), true, true, true), func_4(!any(vec2<bool>(false, false)), 1i, func_2(_wgslsmith_f_op_vec4_f32(max(arg_0, vec4<f32>(global3.a, 2246f, global3.a, global3.a))), arg_0.xyy, vec3<u32>(u_input.c.x, u_input.c.x, global3.b)))));
    var var_2 = Struct_1(~(-firstLeadingBit(global4.x)));
    var var_3 = Struct_2(~(-select(select(vec4<i32>(u_input.b, 1i, u_input.a, 2147483647i), vec4<i32>(62579i, var_2.a, global4.x, -22180i), true), vec4<i32>(arg_1.a, global4.x, -21822i, -26664i) & vec4<i32>(arg_1.a, 1i, 8359i, -25833i), false)), -21075i, func_2(arg_0, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-973f, arg_0.x, -627f))), u_input.c.zzz));
    var_1 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-452f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.a, -534f, true)) + global3.a))), 1u, Struct_1(-2147483647i | (i32(-1i) * -global4.x)));
    return ~firstLeadingBit(vec4<i32>(global3.c.a, -43504i, ~var_2.a, ~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = Struct_2(abs(vec4<i32>(global3.c.a, -global4.x, global3.c.a, ~global4.x) | -func_1(vec4<f32>(-905f, global3.a, global3.a, 1645f), global0[_wgslsmith_index_u32(3763u, 15u)])), 24791i, Struct_1(firstLeadingBit(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1501f, -734f, 566f, global3.a) * vec4<f32>(154f, -1446f, -403f, global3.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, 1000f, -481f)), ~vec3<u32>(global3.b, 1u, global3.b)).a)));
    let var_2 = global3.c.a;
    var var_3 = var_1;
    let var_4 = all(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, func_3(Struct_3(-586f, 0u, Struct_1(global3.c.a))).x, any(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(709f, global3.a)) * _wgslsmith_f_op_f32(f32(-1f) * -687f)))));
}

