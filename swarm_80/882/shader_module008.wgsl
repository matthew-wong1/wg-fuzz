struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: u32;

var<private> global2: vec4<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = ~max(firstTrailingBit(u_input.c), ~(~0i));
    var var_1 = arg_2;
    var_1 = Struct_1(765f, -1401f);
    let var_2 = u_input.d.x;
    let var_3 = _wgslsmith_mod_u32(u_input.b.x, select(48693u, 4294967295u, !all(vec4<bool>(arg_0, false, false, true))) << (~(~15959u) % 32u));
    return abs(~(~12074u));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global1 = ~_wgslsmith_clamp_u32(~7435u, _wgslsmith_mod_u32(u_input.e.x, 1u) ^ 0u, func_3(true, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -249f), -247f), Struct_1(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - -1183f))));
    global0 = array<vec2<bool>, 18>();
    var var_0 = Struct_1(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -640f));
    var var_1 = 1854f;
    let var_2 = Struct_1(global2.x, global2.x);
    return Struct_1(_wgslsmith_f_op_f32(-var_0.a), arg_0.x);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    let var_0 = global2.x;
    var var_1 = Struct_1(-141f, _wgslsmith_div_f32(1000f, -197f));
    var var_2 = Struct_1(arg_0, _wgslsmith_f_op_f32(-arg_1.a));
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1217f, arg_0) + vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, -2022f)), _wgslsmith_f_op_f32(-arg_0))));
    var var_4 = 26094u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(select(var_3.a, 100f, false)))))) + _wgslsmith_f_op_f32(floor(-1000f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = -reverseBits(_wgslsmith_add_vec3_i32(select(~vec3<i32>(u_input.c, u_input.c, -46337i), -vec3<i32>(-2147483647i, 16269i, 2147483647i), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), firstLeadingBit(-vec3<i32>(u_input.d.x, u_input.d.x, u_input.c))));
    let var_1 = true;
    var var_2 = !any(vec3<bool>(select(var_1, var_1 == var_1, var_1), any(!global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), var_1));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(808f)))), -526f), arg_0.b, !(-1000f < _wgslsmith_f_op_f32(min(-376f, func_2(global2.xz).b)))));
    global0 = array<vec2<bool>, 18>();
    var var_1 = u_input.b.x;
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    return abs(firstTrailingBit(select(vec3<i32>(0i, -2147483647i, u_input.c), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, 0i, u_input.d.x), -vec3<i32>(14844i, 0i, 45685i)), true)));
}

fn func_6(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = abs(~arg_0.x);
    global1 = abs(max(_wgslsmith_sub_u32(u_input.b.x, 28983u), _wgslsmith_dot_vec2_u32((u_input.e & u_input.e) & ~u_input.b.xx, vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.a.x, u_input.e.x, 77241u)), 9022u & u_input.e.x))));
    global0 = array<vec2<bool>, 18>();
    let var_1 = true;
    var var_2 = u_input.b;
    return func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -541f)), -120f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1000f, global2.x);
    var var_1 = func_6(func_5(func_4(Struct_1(_wgslsmith_f_op_f32(func_1(global2.x, Struct_1(var_0.b, 479f), vec3<i32>(3401i, u_input.c, u_input.d.x))), _wgslsmith_f_op_f32(step(-787f, global2.x))), _wgslsmith_f_op_vec3_f32(select(global2.wwx, _wgslsmith_f_op_vec3_f32(floor(global2.zyz)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))))), func_2(vec2<f32>(738f, var_0.b))));
    var var_2 = Struct_1(global2.x, _wgslsmith_f_op_f32(func_1(-2256f, Struct_1(1358f, var_0.b), ~vec3<i32>(0i, 2147483647i, 0i))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(-502f)));
    var var_3 = func_5(func_6(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(3470i, u_input.d.x, -1i), vec3<i32>(u_input.c, 2147483647i, u_input.c)))), func_2(global2.yz)).x > ~_wgslsmith_mod_i32(-15739i, _wgslsmith_mult_i32(9384i, ~1i));
    global0 = array<vec2<bool>, 18>();
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(785f, global2.x)), _wgslsmith_f_op_f32(var_2.a - -1848f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * var_1.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(243f, -364f)) + -273f))), 1000f);
    let var_5 = Struct_1(var_0.a, 918f);
    var_3 = all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~2147483647i)));
}

