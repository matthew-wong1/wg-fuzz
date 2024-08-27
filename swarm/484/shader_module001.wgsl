struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: f32 = -755f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<u32>) -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(838f * arg_0)))));
    var var_0 = min(firstLeadingBit(-1i), u_input.b.x | _wgslsmith_div_i32(u_input.a.x, 1i)) & abs(_wgslsmith_add_i32(~(-1i), abs(-58546i)));
    var var_1 = vec3<i32>(-31757i, (i32(-1i) * -_wgslsmith_sub_i32(u_input.b.x, -2147483647i)) >> (u_input.c.x % 32u), firstLeadingBit(~_wgslsmith_clamp_i32(u_input.a.x, -1i, u_input.b.x)) & u_input.a.x);
    var var_2 = u_input.b.x;
    let var_3 = Struct_1(1043f, vec4<u32>(4294967295u, ~u_input.c.x, 1u, arg_2.x) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 0u, u_input.c.x, u_input.c.x) & vec4<u32>(u_input.d.x, 1u, 85935u, u_input.d.x), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(arg_2.x, u_input.d.x, u_input.c.x, u_input.c.x)));
    return var_3.a;
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global0 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f)) <= _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(481f * -1332f), _wgslsmith_f_op_f32(sign(-1767f)), arg_0.x)))), false, vec2<u32>(4294967295u, max(reverseBits(21103u), ~u_input.d.x))));
    let var_1 = ~reverseBits(~abs(i32(-1i) * -8259i));
    let var_2 = all(vec3<bool>(arg_0.x, any(arg_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -622f))) >= -1390f));
    global0 = array<Struct_1, 22>();
    return u_input.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> bool {
    var var_0 = func_2(vec4<bool>(true, _wgslsmith_f_op_f32(-arg_0.a) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), true, true));
    var var_1 = arg_0.a;
    let var_2 = false;
    global1 = _wgslsmith_f_op_f32(-arg_0.a);
    let var_3 = vec4<f32>(-1174f, -389f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-329f, -630f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(max(arg_1.a, arg_1.a)))))), arg_0.a);
    return var_2;
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(-947f, select(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(1u, u_input.d.x, 4294967295u, 53629u)), ~(~vec4<u32>(u_input.c.x, 2316u, 26857u, u_input.d.x))), ~min(vec4<u32>(45393u, 7494u, 1u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.d.x, u_input.c.x, 644u)) & ~vec4<u32>(0u, 30851u, u_input.c.x, u_input.d.x), !arg_0 && true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))), vec4<u32>(u_input.c.x, 1u ^ _wgslsmith_dot_vec3_u32(var_0.b.xwy & var_0.b.yzx, vec3<u32>(1u, var_0.b.x, var_0.b.x)), var_0.b.x, ~(~(~u_input.d.x))));
    var var_2 = arg_0;
    let var_3 = -17880i;
    let var_4 = global0[_wgslsmith_index_u32(u_input.d.x, 22u)];
    return global0[_wgslsmith_index_u32(u_input.d.x >> (~var_1.b.x % 32u), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x << (12152u % 32u);
    var_0 = i32(-1i) * -u_input.a.x;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1057f + -774f) - 988f) * _wgslsmith_f_op_f32(trunc(-1415f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-736f, -1000f) - _wgslsmith_div_f32(-312f, -878f))))));
    var var_1 = firstLeadingBit(vec2<u32>(4294967295u, reverseBits(0u))) >> (~u_input.c % vec2<u32>(32u));
    var var_2 = func_4(func_1(Struct_1(-709f, vec4<u32>(15528u, ~5259u, u_input.c.x, ~var_1.x)), global0[_wgslsmith_index_u32(4294967295u, 22u)], 2147483647i, ~(~vec2<u32>(var_1.x, 4294967295u)) | abs(~vec2<u32>(0u, 7715u))), ((_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -21462i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 2727i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) | vec4<i32>(-53160i, u_input.a.x, -25262i, u_input.a.x)) & countOneBits(countOneBits(vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, -2147483647i)))) << ((_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.x, var_1.x, u_input.d.x, 23855u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 109782u, var_1.x, 1u), vec4<u32>(41032u, var_1.x, var_1.x, 2317u), vec4<u32>(var_1.x, u_input.c.x, var_1.x, var_1.x))) >> (countOneBits(vec4<u32>(u_input.d.x, 4294967295u, 26778u, var_1.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), 35331i, 140f);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(var_2.a, 834f), false, vec2<u32>(4294967295u, u_input.c.x) & vec2<u32>(u_input.d.x, var_1.x))) * var_2.a))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, var_1.x, 0u)), var_2.b.wzx), ~var_1.x), func_2(vec4<bool>(true, true, true, true)), countOneBits(15962u), func_4(u_input.a.x > countOneBits(-70771i), select(vec4<i32>(u_input.b.x, 0i, u_input.b.x, 0i), vec4<i32>(26979i, 0i, -53123i, u_input.a.x) >> (var_2.b % vec4<u32>(32u)), var_1.x != 22640u), 809i, _wgslsmith_f_op_f32(-var_2.a)).b.x));
    global1 = 858f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_2.b, i32(-1i) * -48693i, u_input.b.x, vec2<f32>(-238f, var_3.a));
}

