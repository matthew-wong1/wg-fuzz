struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 29>();
    let var_0 = 32992i;
    global0 = array<Struct_1, 29>();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1353f), _wgslsmith_sub_i32(abs(13827i), 2147483647i), vec3<u32>(abs(~10777u), ~(~13860u), 4294967295u)), 1602f);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> vec3<u32> {
    var var_0 = func_1();
    var var_1 = arg_0;
    let var_2 = vec4<f32>(var_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -744f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) * _wgslsmith_f_op_f32(arg_0.a - 1046f)), _wgslsmith_f_op_f32(-1002f - _wgslsmith_f_op_f32(var_1.a * 1275f))), _wgslsmith_f_op_f32(floor(var_0.b))), 732f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-367f, _wgslsmith_f_op_f32(-var_2.x)), 2058f)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a, -501f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * arg_0.a))));
    let var_4 = vec2<i32>(-1i, _wgslsmith_clamp_i32(1i, -11476i, i32(-1i) * -_wgslsmith_sub_i32(1558i, -1i)));
    return abs(u_input.a);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> u32 {
    let var_0 = arg_3;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -422f), -_wgslsmith_mult_i32(u_input.d, -arg_2.x), reverseBits(arg_1.zxy)), -277f);
    var var_2 = select(arg_1.x & _wgslsmith_dot_vec3_u32(var_1.a.c, func_3(Struct_1(var_1.a.a, u_input.d, vec3<u32>(var_1.a.c.x, 0u, 61740u)), arg_1, var_1.a.b & 0i)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(33704u, var_1.a.c.x, 27923u, arg_1.x)) & vec4<u32>(func_3(Struct_1(108f, var_1.a.b, vec3<u32>(4294967295u, 75870u, 68697u)), vec4<u32>(arg_1.x, u_input.e, u_input.c, 73562u), arg_2.x).x, ~var_1.a.c.x, 59561u, func_1().a.c.x), ~(~arg_1)), true);
    let var_3 = var_1.a.b;
    let var_4 = var_1.a;
    return _wgslsmith_mod_u32(1u, reverseBits(countOneBits(~var_4.c.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: bool) -> vec2<u32> {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(arg_1.x, 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(536f))))));
    var var_1 = global0[_wgslsmith_index_u32(arg_1.x, 29u)];
    let var_2 = _wgslsmith_mod_i32(0i, var_0.a.b);
    var_0 = func_1();
    let var_3 = func_1();
    return ~vec2<u32>(min(_wgslsmith_mod_u32(var_3.a.c.x, reverseBits(1u)), _wgslsmith_div_u32(var_3.a.c.x, 19998u) ^ countOneBits(1u)), 46382u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = u_input.b;
    var_1 = 21296u;
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1340f, _wgslsmith_f_op_f32(round(-784f)), true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-580f - _wgslsmith_f_op_f32(1499f * 695f))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-900f - _wgslsmith_f_op_f32(var_0.a.a - -107f)))), _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(var_0.a.a - 1f), !any(vec4<bool>(true, false, false, false))))), !(true == !any(vec4<bool>(true, false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-u_input.d, _wgslsmith_clamp_i32(u_input.d, countOneBits(~(-25113i)), ~1i), firstLeadingBit(~(~u_input.d)), u_input.d), _wgslsmith_dot_vec4_u32(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4861u, u_input.e, u_input.e), vec4<u32>(3381u, 1u, var_0.a.c.x, 0u))), (vec4<u32>(var_0.a.c.x, u_input.c, u_input.e, 0u) << (select(vec4<u32>(4294967295u, 0u, var_0.a.c.x, 1u), vec4<u32>(u_input.c, var_0.a.c.x, u_input.e, 3276u), false) % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, var_0.a.c.x, var_0.a.c.x, 36840u), ~vec4<u32>(var_0.a.c.x, 22597u, 1u, var_0.a.c.x))), countOneBits(func_4(max(reverseBits(vec3<i32>(17981i, u_input.d, 22054i)), vec3<i32>(-1i, var_0.a.b, 2147483647i) | vec3<i32>(-1i, u_input.d, var_0.a.b)), vec3<u32>(func_2(false, vec4<u32>(1u, var_0.a.c.x, var_0.a.c.x, 36856u), vec2<i32>(1i, var_0.a.b), vec2<bool>(true, true)), select(43709u, 4294967295u, false), ~u_input.b), true)), var_0.b);
}

