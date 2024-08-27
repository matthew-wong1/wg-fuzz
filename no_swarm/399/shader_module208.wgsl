struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21>;

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(33066i, -1i), vec2<i32>(3855i, 83528i), vec2<i32>(-1i, 22060i), vec2<i32>(-61251i, 9298i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(17603i, -10310i), vec2<i32>(-16927i, -15709i), vec2<i32>(0i, -1i), vec2<i32>(-4009i, 14288i), vec2<i32>(0i, -8055i), vec2<i32>(63992i, 0i), vec2<i32>(-92324i, -1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-58161i, 12017i), vec2<i32>(-1i, -30196i), vec2<i32>(54660i, 26606i), vec2<i32>(50146i, 2147483647i), vec2<i32>(16486i, 2147483647i), vec2<i32>(2147483647i, -58878i), vec2<i32>(-37725i, -36538i), vec2<i32>(46358i, -45949i), vec2<i32>(19368i, -32471i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-22661i, i32(-2147483648)), vec2<i32>(14040i, -65047i), vec2<i32>(-7661i, 56879i));

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<vec4<u32>, 31>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = -2147483647i;
    let var_1 = select(!(!vec4<bool>(false, true, true, select(true, false, true))), vec4<bool>(false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-850f, -441f, false)), _wgslsmith_f_op_f32(884f - 804f))) < _wgslsmith_f_op_f32(ceil(-678f)), true, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))), !(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)))));
    global4 = 855u & ~u_input.a.x;
    let var_2 = Struct_5(Struct_3(Struct_1(~firstTrailingBit(0u), select(!var_1, select(var_1, vec4<bool>(false, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))));
    let var_3 = var_2.a;
    return 4294967295u;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_5 {
    let var_0 = Struct_1(arg_0.x, select(!vec4<bool>(false, any(vec2<bool>(false, true)), select(true, false, true), true), vec4<bool>(true, true, true, true), true));
    let var_1 = any(var_0.b.xyx);
    var var_2 = arg_1;
    global4 = _wgslsmith_mult_u32(~(~arg_1.b), ~arg_1.b);
    global3 = array<vec4<u32>, 31>();
    return Struct_5(Struct_3(Struct_1(_wgslsmith_div_u32(func_3(), ~0u), select(select(var_0.b, vec4<bool>(var_1, false, true, false), true), vec4<bool>(true, true, true, true), true))));
}

fn func_4(arg_0: Struct_5) -> bool {
    global0 = array<Struct_4, 21>();
    let var_0 = Struct_5(func_2(firstTrailingBit(~_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(0u, u_input.a.x, 34037u), vec3<u32>(1970u, arg_0.a.a.a, 0u))), Struct_4(19482i >> ((arg_0.a.a.a | u_input.a.x) % 32u), ~22045u, vec2<i32>(u_input.b, -28154i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2742f, 394f, -398f, 1926f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(291f, -1052f, -912f, -1000f) - vec4<f32>(1814f, 756f, -2430f, 313f))))).a);
    let var_1 = true;
    global1 = array<vec2<i32>, 27>();
    global3 = array<vec4<u32>, 31>();
    return false;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = !func_4(func_2(select(vec3<u32>(4294967295u, u_input.a.x, 0u), u_input.a, vec3<bool>(false, true, false)), Struct_4(reverseBits(-2147483647i), 1u, _wgslsmith_sub_vec2_i32(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, arg_0, -859f, 135f), vec4<f32>(arg_1.x, -1940f, arg_1.x, -438f))))));
    global4 = ~(u_input.a.x & _wgslsmith_dot_vec2_u32(~u_input.a.zx & vec2<u32>(u_input.a.x, 1u), u_input.a.xy));
    global0 = array<Struct_4, 21>();
    global3 = array<vec4<u32>, 31>();
    var var_1 = u_input.a.xz;
    return func_2(select(~(~u_input.a), u_input.a, func_2(select(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a), ~vec3<u32>(0u, var_1.x, 107903u), true), global0[_wgslsmith_index_u32(1u, 21u)]).a.a.b.xzz), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(countOneBits(37058u), u_input.a.x), var_1.x), 21u)]).a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 27>();
    let var_0 = Struct_3(func_1(-2015f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -290f), _wgslsmith_f_op_f32(2213f - 1766f))));
    global0 = array<Struct_4, 21>();
    var var_1 = global2[_wgslsmith_index_u32(~((func_2(abs(vec3<u32>(u_input.a.x, 4294967295u, 10335u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 21u)]).a.a.a & _wgslsmith_sub_u32(var_0.a.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a, u_input.a.x), vec2<u32>(var_0.a.a, var_0.a.a)))) >> (_wgslsmith_clamp_u32(53924u, 2581u, u_input.a.x) % 32u)), 9u)];
    var var_2 = u_input.c;
    global2 = array<Struct_2, 9>();
    global4 = ((var_0.a.a ^ var_1.a.a) << (countOneBits(_wgslsmith_clamp_u32(1u, 1u, var_1.d.a) | _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) % 32u)) >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(var_0.a.a, 8768u), var_1.a.a), 0u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(133f, -397f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-810f, 340f) - vec2<f32>(1215f, 492f))))));
}

