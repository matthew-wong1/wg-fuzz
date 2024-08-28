struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(624f, -136f, -1514f), vec2<u32>(0u, 4294967295u), -889f, 21612i, -1646f);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-333f, 809f, -340f), vec2<u32>(4294967295u, 15064u), 116f, 10407i, 1057f);

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_1, 23>;

var<private> global4: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(4294967295u));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(step(197f, global2.x));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(197f * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_1, arg_2.b.x, global3[_wgslsmith_index_u32(arg_0.a, 23u)], arg_0)), -852f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e + global2.x) + -258f))), _wgslsmith_f_op_f32(func_3(1i, 24641u, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~0u), reverseBits(u_input.a.x)), 23u)], arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_div_f32(arg_2.c, global0.e)), 1148f)));
    let var_0 = !vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), false);
    let var_1 = u_input.c.xwx;
    var var_2 = ~arg_2.d;
    let var_3 = arg_2;
    return arg_2;
}

fn func_1() -> i32 {
    let var_0 = func_2(Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global1.b, ~global1.b), global0.b)), 19375i, global3[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_div_i32(~global0.d, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-57893i, 1i)), ~(~vec2<i32>(-5669i, global0.d)))));
    var var_1 = Struct_2(_wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(u_input.e), 92113u), _wgslsmith_sub_u32(min(_wgslsmith_add_u32(0u, u_input.b.x), abs(59752u)), 4294967295u)));
    let var_2 = var_0.a.x;
    var var_3 = 102f;
    var var_4 = false;
    return _wgslsmith_add_i32(var_0.d, _wgslsmith_div_i32(global0.d, global1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-func_1(), -2147483647i), 0i, 8687i | (global1.d >> (firstLeadingBit(0u) % 32u))), vec3<i32>(~(-global0.d), -_wgslsmith_div_i32(firstTrailingBit(-15105i), -9512i), 2147483647i), vec3<i32>(17152i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(2118i, u_input.d.x), u_input.c.yx), ~21712i));
    let var_1 = _wgslsmith_sub_u32(u_input.e, global1.b.x);
    var var_2 = global4[_wgslsmith_index_u32(0u, 1u)];
    let var_3 = !(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(global0.b.x, u_input.a.x, var_1) ^ vec3<u32>(u_input.b.x, var_1, 1u)), select(u_input.a, max(u_input.b.wxz, vec3<u32>(global1.b.x, 4294967295u, var_1)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))) >= 76660u);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a))), ~min(global1.b, (vec2<u32>(u_input.e, 7406u) | vec2<u32>(0u, 0u)) ^ u_input.b.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-global2.x))))), firstLeadingBit(global0.d), global0.e);
    let var_5 = vec2<i32>(~(2147483647i << (_wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(global0.b.x, 1u, 1u)) % 32u)), var_0.x);
    var var_6 = ~(~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, select(u_input.b.zzx, u_input.b.zxz, vec3<bool>(var_3, true, var_3))), u_input.e, 1u));
    let var_7 = var_4.b.x;
    var var_8 = func_2(Struct_2(1u), -_wgslsmith_mod_i32(-abs(-1i), var_5.x), var_4, firstTrailingBit(~52970i) >> (u_input.e % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1554f)))))), u_input.c.x >> (var_6.x % 32u), ~var_6.x, var_8.e);
}

