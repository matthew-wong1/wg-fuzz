struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-1016f, -348f, -976f, 370f, -574f, 134f, 1000f, -1495f, 598f, -1179f, 216f, -1346f, -2400f, 790f, -1390f, -708f, 851f, 402f, -363f, 116f);

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-13320i), Struct_1(-20787i), Struct_1(i32(-2147483648)), Struct_1(-7827i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32) -> Struct_1 {
    return global1[_wgslsmith_index_u32(u_input.a, 5u)];
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_2 {
    var var_0 = ~(-vec4<i32>(arg_0, max(max(u_input.b.x, u_input.b.x), arg_0 ^ arg_0), 27625i, -2147483647i));
    global0 = array<f32, 20>();
    global2 = array<Struct_1, 4>();
    global1 = array<Struct_1, 5>();
    let var_1 = any(vec2<bool>(true, true));
    return Struct_2(func_1(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 22362u, 45804u), vec3<u32>(1u, u_input.a, 1u)), _wgslsmith_mod_u32(3474u, 44951u))), arg_0, var_0.zw, u_input.a);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f), 267f))), _wgslsmith_f_op_f32(-179f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(42759u, 20u)]))))) + global0[_wgslsmith_index_u32(~(20784u >> (_wgslsmith_clamp_u32(u_input.a, arg_1.d ^ 1u, 44999u) % 32u)), 20u)]);
    var var_1 = arg_1.d >> (_wgslsmith_clamp_u32(38774u, abs(25727u), _wgslsmith_sub_u32(~(~arg_1.d), 4294967295u)) % 32u);
    var var_2 = Struct_1(reverseBits(arg_2.x));
    var var_3 = -max(func_2(14969i, any(vec3<bool>(true, true, true))).c.x, -1i);
    var var_4 = -57855i;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(2147483647i);
    global0 = array<f32, 20>();
    let var_1 = func_1(_wgslsmith_sub_u32(~(~(u_input.a | 4999u)), ~4294967295u));
    let var_2 = vec2<u32>(func_3(i32(-1i) * -3310i, func_2(_wgslsmith_mod_i32(-5961i, -13441i), -var_1.a < var_0.a), ~u_input.b.zx, vec4<i32>(max(var_0.a << (4294967295u % 32u), min(-519i, -51964i)), var_1.a, firstLeadingBit(var_1.a) | (28993i ^ var_0.a), 2147483647i)), ~u_input.a | ~(~select(4294967295u, 1u, false)));
    let var_3 = -27331i >> (var_2.x % 32u);
    var var_4 = u_input.b.x >> (22025u % 32u);
    let var_5 = vec4<i32>(var_0.a, func_1(_wgslsmith_sub_u32(4294967295u, var_2.x | ~var_2.x)).a, u_input.b.x, _wgslsmith_add_i32(1i, var_0.a));
    global2 = array<Struct_1, 4>();
    let var_6 = -abs(_wgslsmith_sub_i32(~(-4365i), select(var_0.a, 67020i, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_6, -54995i), -var_6), reverseBits(vec2<i32>(-4977i, -80079i)) << (var_2 % vec2<u32>(32u))), ~((u_input.b.yx ^ u_input.b.yx) >> (~vec2<u32>(37667u, var_2.x) % vec2<u32>(32u)))), 66749i, _wgslsmith_dot_vec4_i32(vec4<i32>(-32238i, abs(_wgslsmith_add_i32(-3629i, u_input.b.x)), i32(-1i) * -23258i, var_5.x ^ var_1.a), vec4<i32>(-45546i, var_6 >> (20482u % 32u), firstLeadingBit(var_3), 1i) | var_5), -961f, _wgslsmith_clamp_i32(~var_0.a, 35258i & _wgslsmith_add_i32(-21274i << (u_input.a % 32u), min(1i, 1i)), var_1.a));
}

