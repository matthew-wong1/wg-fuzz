struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 11>();
    let var_0 = arg_0;
    global0 = array<Struct_2, 11>();
    let var_1 = var_0.a.x;
    let var_2 = (~u_input.a.zx ^ ~(firstTrailingBit(vec2<u32>(arg_0.b, u_input.a.x)) | ~u_input.a.wy)) >> (~(~(~vec2<u32>(u_input.b, var_0.c)) | firstLeadingBit(~vec2<u32>(4294967295u, 98793u))) % vec2<u32>(32u));
    return global0[_wgslsmith_index_u32(firstLeadingBit(select(101965u, ~arg_0.c, true)), 11u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-719f - _wgslsmith_f_op_f32(min(arg_1.a, arg_2.b.a))), arg_1.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.a)), _wgslsmith_f_op_f32(arg_2.b.a - -112f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-202f, arg_1.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -780f))))))));
    let var_1 = vec3<bool>(all(select(vec2<bool>(false, arg_0.d), select(select(vec2<bool>(arg_0.d, true), vec2<bool>(true, arg_1.b.d), arg_0.d), !vec2<bool>(arg_0.d, false), arg_1.b.d), vec2<bool>(func_1(Struct_1(arg_0.a, arg_1.b.b, 51339u, arg_2.b.b.d)).b.d, !arg_0.d))), !(!(arg_1.b.a.x < arg_1.b.a.x) & any(vec2<bool>(arg_0.d, arg_0.d))), arg_1.c.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(743f)), _wgslsmith_f_op_f32(-arg_2.a)) + var_0)));
    let var_3 = var_0;
    var var_4 = Struct_2(-632f, Struct_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b.a.x, -11551i, -2147483647i, arg_1.b.a.x), vec4<i32>(1i, -4550i, -45408i, 0i)) >> (_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a.x, arg_0.c, arg_0.b, arg_2.d.x), arg_2.d, var_1.x), ~arg_2.d) % vec4<u32>(32u)), ~(~min(arg_1.c.b, 35791u)), firstTrailingBit(15040u), any(vec4<bool>(arg_2.b.b.d, arg_2.b.c.d, func_1(Struct_1(arg_1.c.a, u_input.a.x, 4294967295u, arg_2.b.c.d)).c.d, true))), Struct_1(vec4<i32>(_wgslsmith_div_i32(arg_1.b.a.x ^ 2422i, arg_0.a.x), max(arg_0.a.x, -2357i) << (_wgslsmith_sub_u32(arg_0.c, arg_1.c.b) % 32u), _wgslsmith_add_i32(select(arg_0.a.x, arg_0.a.x, false), ~arg_1.b.a.x), ~(arg_1.b.a.x << (4294967295u % 32u))), 1u, arg_1.b.c, arg_2.c));
    return !select(!(!(!vec4<bool>(false, arg_0.d, false, arg_2.c))), !(!vec4<bool>(arg_2.b.b.d, var_1.x, arg_1.c.d, var_4.b.d)), true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), arg_2, true, u_input.a);
    var var_1 = arg_0.c;
    var var_2 = ~arg_0.b.a.x;
    let var_3 = select(vec3<bool>(any(func_3(arg_0.c, var_0.b, Struct_3(1638f, Struct_2(-293f, arg_2.c, Struct_1(arg_0.b.a, 43700u, u_input.b, true)), true, var_0.d))) | (!arg_0.b.d == true), (arg_1.a != _wgslsmith_div_f32(660f, arg_0.a)) | all(func_3(Struct_1(var_1.a, 4294967295u, arg_0.c.b, arg_0.c.d), arg_2, Struct_3(-777f, Struct_2(981f, Struct_1(vec4<i32>(var_1.a.x, -2147483647i, 0i, arg_0.b.a.x), arg_2.b.c, 50036u, var_0.c), Struct_1(vec4<i32>(arg_1.c.a.x, -2147483647i, 1i, 58665i), 0u, 8712u, arg_2.c.d)), true, var_0.d))), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.b.c.d, false, arg_1.c.d, true), false), !vec4<bool>(false, var_0.b.b.d, true, false), func_3(Struct_1(arg_2.b.a, 61591u, 92850u, arg_0.b.d), arg_2, Struct_3(arg_1.a, arg_0, false, vec4<u32>(arg_1.c.c, 1u, arg_1.c.c, arg_0.b.b))).x))), vec3<bool>(true, var_1.d, arg_0.c.d), arg_2.b.d);
    return Struct_3(arg_2.a, Struct_2(-967f, Struct_1(abs(_wgslsmith_clamp_vec4_i32(var_0.b.c.a, vec4<i32>(arg_1.b.a.x, arg_0.c.a.x, 1i, var_0.b.c.a.x), vec4<i32>(-22577i, -49403i, var_1.a.x, 6092i))), ~arg_0.c.c, abs(91475u), true), Struct_1(var_0.b.b.a, countOneBits(arg_1.b.b) << (~26077u % 32u), 46566u, _wgslsmith_f_op_f32(-386f + arg_0.a) != _wgslsmith_f_op_f32(select(-1469f, arg_1.a, true)))), false, ~_wgslsmith_clamp_vec4_u32(var_0.d, ~u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(func_1(Struct_1(~(-vec4<i32>(2147483647i, -15343i, -51693i, -2147483647i)), _wgslsmith_add_u32(1u, ~25542u), countOneBits(u_input.c ^ u_input.a.x), false)), global0[_wgslsmith_index_u32(firstLeadingBit((4294967295u | u_input.b) >> (36749u % 32u)), 11u)], func_1(Struct_1(firstLeadingBit(vec4<i32>(1i, 2147483647i, 1i, 0i) << (u_input.a % vec4<u32>(32u))), u_input.a.x, ~u_input.c, true)));
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    var var_1 = func_2(func_1(Struct_1(var_0.b.c.a, u_input.b ^ ~var_0.d.x, ~(~24093u), !var_0.c)), func_1(var_0.b.b), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1449f), func_1(func_2(var_0.b, global0[_wgslsmith_index_u32(40017u, 11u)], Struct_2(1158f, var_0.b.c, var_0.b.c)).b.c).b, var_0.b.c)).b.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-842f, _wgslsmith_f_op_f32(abs(-1000f)))) * -381f)), var_1.a.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0.b.c.a.wxz, vec3<i32>(var_1.a.x, 0i, 19429i)) ^ select(var_0.b.c.a.yzw, var_0.b.c.a.wwy, var_1.d), vec3<i32>(-var_0.b.c.a.x, var_0.b.c.a.x, _wgslsmith_clamp_i32(19788i, -22725i, 30157i)))));
}

