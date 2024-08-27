struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(2147483647i, 1i, -1i, 0i, -54116i, -1i, 2147483647i, 17762i, -18860i, 2147483647i, -23502i, 0i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    global0 = array<i32, 12>();
    var var_0 = ~arg_1.c;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-170f, -1580f, -1824f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-798f, -626f, -602f)))))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_3) -> bool {
    var var_0 = Struct_4(u_input.c, -33250i, _wgslsmith_div_u32(arg_2.b.c, 1u));
    var_0 = Struct_4(1i, -2727i << (arg_2.a.x % 32u), arg_2.b.c);
    return !any(select(select(arg_2.b.a.b.xz, !vec2<bool>(false, arg_0.x), select(arg_0.xy, vec2<bool>(arg_2.c.b.x, arg_0.x), arg_0.x)), select(arg_2.c.b.xy, !arg_2.b.b.b.yz, vec2<bool>(true, false)), any(arg_0.xw)));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_4(0i, 0i, 47999u);
    var var_1 = Struct_3(~abs(u_input.b.wz), Struct_2(Struct_1(true, !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), 2147483647i), Struct_1(true, vec3<bool>(u_input.b.x <= u_input.b.x, all(vec4<bool>(false, true, false, false)), true), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], -2269i, u_input.c, var_0.a), vec4<i32>(20131i, 0i, global0[_wgslsmith_index_u32(var_0.c, 12u)], u_input.c)), vec4<i32>(2205i, 22208i, -12407i, global0[_wgslsmith_index_u32(0u, 12u)]) & vec4<i32>(-1i, var_0.b, 0i, var_0.a))), _wgslsmith_div_u32(~(u_input.b.x >> (var_0.c % 32u)), _wgslsmith_sub_u32(75422u, 33643u) >> (u_input.b.x % 32u))), Struct_1(0u >= ~var_0.c, !vec3<bool>(true, func_3(vec4<bool>(false, true, false, false), 0i, Struct_3(vec2<u32>(u_input.b.x, 0u), Struct_2(Struct_1(true, vec3<bool>(false, true, false), var_0.b), Struct_1(false, vec3<bool>(true, false, true), var_0.b), var_0.c), Struct_1(true, vec3<bool>(true, false, false), u_input.c))), true), 83464i));
    var var_2 = Struct_5(2147483647i == var_1.c.c, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(u_input.b), _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.b.x))), select(vec4<u32>(var_0.c, u_input.a.x, 9380u, var_1.b.c), vec4<u32>(36085u, var_1.b.c, 61982u, 50251u), true)), Struct_1(var_1.c.b.x, select(!var_1.b.a.b, vec3<bool>(var_1.b.b.a, all(vec4<bool>(false, var_1.c.a, var_1.c.b.x, var_1.c.a)), false), !var_1.b.b.b), -41693i));
    let var_3 = Struct_3(min(~_wgslsmith_clamp_vec2_u32(u_input.b.xz, var_1.a & vec2<u32>(25756u, 41242u), abs(vec2<u32>(var_0.c, u_input.b.x))), vec2<u32>(min(3709u >> (0u % 32u), 0u), 12623u)), Struct_2(var_1.b.b, var_2.c, firstTrailingBit(1u << (var_0.c % 32u)) << (_wgslsmith_div_u32(0u, ~u_input.a.x) % 32u)), Struct_1(var_2.a, !vec3<bool>(true, var_1.b.a.b.x, true), 2147483647i));
    let var_4 = Struct_5(any(vec2<bool>(true, true & var_3.b.a.a)), u_input.b.x, var_1.c);
    return vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(var_3.c, var_1.b.a)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -444f) - _wgslsmith_f_op_vec3_f32(func_1(Struct_1(var_2.a, var_2.c.b, _wgslsmith_add_i32(33979i, u_input.c)), var_3.c)).x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 12>();
    let var_0 = _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(~u_input.a.x >> (_wgslsmith_sub_u32(1u, u_input.b.x) % 32u), 30640u)) | u_input.a.x;
    global0 = array<i32, 12>();
    var var_1 = reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-u_input.c, -2147483647i, _wgslsmith_sub_i32(u_input.c, u_input.c) >> (~var_0 % 32u)), ~(vec3<i32>(-2147483647i, -2147483647i, 0i) >> (firstTrailingBit(u_input.b.yxz) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(false, vec3<bool>(true, false, true), 2147483647i), Struct_1(false, vec3<bool>(false, true, false), -2147483647i))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-566f - 1609f) - _wgslsmith_f_op_f32(338f - 433f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-228f, -2872f)) - 1220f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(-1598f - -1194f))), _wgslsmith_f_op_f32(-623f + _wgslsmith_f_op_f32(f32(-1f) * -398f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1269f - 1692f)) + 1000f)));
    var var_3 = select(select(!select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), !vec4<bool>(true, any(vec4<bool>(true, true, false, true)), true, true), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, false, true, true)), true)), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), 73176u >= u_input.a.x), vec4<bool>(true, true, true, true), false), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, false, true), true), true), !any(vec4<bool>(true, true, all(vec4<bool>(true, false, false, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~_wgslsmith_mod_i32(var_1.x, -var_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-806f, var_2.x, 1000f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(442f, var_2.x, var_2.x), vec3<f32>(1853f, 754f, 1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 111f, var_2.x) + vec3<f32>(var_2.x, 194f, var_2.x)))))));
}

