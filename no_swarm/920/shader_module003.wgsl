struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: array<i32, 21>;

var<private> global2: array<vec4<i32>, 9>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: u32) -> Struct_4 {
    return global0[_wgslsmith_index_u32(arg_2, 31u)];
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> u32 {
    global0 = array<Struct_4, 31>();
    let var_0 = all(vec3<bool>(!(!all(vec3<bool>(arg_0, true, arg_0))), true, arg_0));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1315f - 1654f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1499f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1144f))))), -115f));
    let var_2 = select(!vec3<bool>(select(true, var_0, false), 822f >= _wgslsmith_f_op_f32(ceil(var_1.x)), false), !vec3<bool>(true, select(!var_0, var_0, false), false), select(select(select(vec3<bool>(arg_0, var_0, true), select(vec3<bool>(true, false, false), vec3<bool>(true, arg_0, arg_0), vec3<bool>(var_0, arg_0, true)), vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(true, any(vec3<bool>(false, false, var_0)), global1[_wgslsmith_index_u32(arg_1.b.x, 21u)] <= global1[_wgslsmith_index_u32(u_input.e, 21u)]), all(!vec2<bool>(true, arg_0))), vec3<bool>((arg_1.a != 21060u) || any(vec3<bool>(false, true, true)), any(vec3<bool>(false, true, true)), !any(vec4<bool>(var_0, arg_0, arg_0, var_0))), any(select(vec3<bool>(true, false, arg_0), vec3<bool>(true, true, true), vec3<bool>(arg_0, var_0, false)))));
    let var_3 = _wgslsmith_mult_u32(15116u, ~_wgslsmith_mult_u32(~_wgslsmith_add_u32(arg_1.a, 1u), ~select(u_input.c, 7761u, true)));
    return 9170u;
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.c;
    var var_1 = vec2<f32>(-1051f, -430f);
    var_0 = firstLeadingBit(u_input.e);
    let var_2 = Struct_4(_wgslsmith_mult_u32(func_3(true, func_2(vec3<i32>(global1[_wgslsmith_index_u32(u_input.e, 21u)], 1i, -44371i), vec4<bool>(true, true, true, true), 1u)), select(22235u, ~u_input.c, 1259f <= var_1.x)), vec4<u32>(24844u, 1u, ~u_input.e, 31492u) | vec4<u32>(_wgslsmith_dot_vec2_u32(func_2(u_input.d, vec4<bool>(true, false, false, true), u_input.a.x).b.xw, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 17897u), u_input.a)), max(71496u, u_input.e) | _wgslsmith_mod_u32(u_input.e, u_input.a.x), u_input.e | select(u_input.e, 0u, true), ~_wgslsmith_mod_u32(1u, 53614u)));
    var var_3 = _wgslsmith_f_op_f32(max(var_1.x, -1000f));
    return Struct_3(Struct_1(~(~_wgslsmith_mod_vec3_u32(var_2.b.xzw, var_2.b.yww)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), var_1.x <= -568f), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, false), true), vec4<bool>(any(vec4<bool>(true, true, false, true)), true, false, true)), !select(19293i > u_input.d.x, true, true), 0u), Struct_2(Struct_1(var_2.b.wzw, vec2<bool>(46342u <= u_input.e, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, true, false)), any(vec2<bool>(true, true)), _wgslsmith_mult_u32(u_input.c, 90259u) >> (1u % 32u))), any(vec3<bool>(_wgslsmith_dot_vec2_i32(u_input.d.zz, vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], u_input.b)) > -28658i, !(var_1.x != var_1.x), false)), Struct_2(Struct_1(var_2.b.wzz, select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false))), 25784u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = min(44092u, arg_1.x);
    global1 = array<i32, 21>();
    let var_1 = Struct_1(arg_1, func_1().b.a.c.yx, arg_0.a.c, arg_0.b.a.d, _wgslsmith_mod_u32(arg_0.b.a.a.x, arg_1.x | arg_1.x));
    global0 = array<Struct_4, 31>();
    var_0 = var_1.a.x;
    return Struct_1(arg_1, select(select(vec2<bool>(true, true), !arg_2.yz, !select(vec2<bool>(arg_2.x, false), vec2<bool>(true, false), arg_0.b.a.c.x)), !func_1().d.a.c.xz, false & select(var_1.d, true || arg_0.c, !var_1.c.x)), var_1.c, any(!vec3<bool>(false, func_1().c, true)), ~(select(4294967295u, _wgslsmith_div_u32(arg_0.a.a.x, 34522u), arg_0.d.a.d || true) ^ _wgslsmith_clamp_u32(0u, var_1.e, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), vec3<u32>(67642u, 36548u, ~(~0u)), func_1().b.a.c);
    var var_1 = func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(-(global1[_wgslsmith_index_u32(1u, 21u)] << (325u % 32u)), (u_input.d.x | -15744i) >> (_wgslsmith_clamp_u32(56280u, 45623u, 67222u) % 32u), global1[_wgslsmith_index_u32(firstLeadingBit(var_0.a.x), 21u)]), firstTrailingBit(-_wgslsmith_sub_vec3_i32(u_input.d, u_input.d)), u_input.d), vec4<bool>(!select(!var_0.d, true, true), false, true, true), var_0.e);
    let var_2 = _wgslsmith_mult_u32(var_0.e, func_4(Struct_3(Struct_1(vec3<u32>(4294967295u, 8398u, 43962u), vec2<bool>(true, false), var_0.c, false, 13272u), Struct_2(Struct_1(var_0.a, vec2<bool>(var_0.b.x, true), var_0.c, var_0.d, var_1.a)), true, func_1().b), var_1.b.yww, select(!var_0.c, !var_0.c, func_1().d.a.c)).e) << ((abs(var_0.a.x) & func_1().d.a.e) % 32u);
    global0 = array<Struct_4, 31>();
    global0 = array<Struct_4, 31>();
    let var_3 = func_1().b.a;
    let var_4 = ~(var_1.b.xy ^ (var_0.a.yy << (~vec2<u32>(4294967295u, var_2) % vec2<u32>(32u))));
    var var_5 = Struct_4(var_4.x, _wgslsmith_div_vec4_u32(~var_1.b, max(_wgslsmith_div_vec4_u32(~var_1.b, vec4<u32>(1778u, 1u, 1u, var_4.x)), vec4<u32>(~var_1.b.x, func_4(Struct_3(var_3, Struct_2(var_3), var_3.c.x, Struct_2(var_3)), vec3<u32>(var_2, var_1.a, 0u), vec4<bool>(var_3.b.x, var_3.b.x, var_0.c.x, var_3.c.x)).a.x, var_1.a, func_4(Struct_3(Struct_1(var_3.a, vec2<bool>(var_3.c.x, true), var_0.c, var_0.d, 20865u), Struct_2(var_3), var_0.b.x, Struct_2(var_3)), vec3<u32>(var_2, var_2, var_0.a.x), vec4<bool>(false, true, true, var_0.d)).a.x))));
    var var_6 = Struct_4(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(12051u, var_4.x, 4294967295u), 0u), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-select(u_input.d.xy, vec2<i32>(-1i, 2147483647i), vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1480f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1219f), -1457f))), vec3<i32>(-2147483647i, ~(-19727i << (var_3.a.x % 32u)), i32(-1i) * -71768i));
}

