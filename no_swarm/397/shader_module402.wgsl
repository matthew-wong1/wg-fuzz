struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = arg_1;
    return Struct_1(vec2<bool>(var_0, true));
}

fn func_1(arg_0: Struct_3) -> i32 {
    let var_0 = func_2(vec3<bool>(false, !(true || (arg_0.a.b | arg_0.a.b)), arg_0.a.b), true);
    let var_1 = arg_0;
    var var_2 = var_1.a.d.wzz;
    var var_3 = !((_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1386f, -945f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-127f, 751f)))) == var_0.a.x);
    var var_4 = var_0;
    return 1986i;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> vec2<i32> {
    var var_0 = ~arg_1;
    return min(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(min(u_input.c.yy, -u_input.c.xz), ~vec2<i32>(u_input.a, u_input.c.x)), u_input.c.zz), firstLeadingBit(_wgslsmith_mod_vec2_i32(~vec2<i32>(15078i, -1i), -u_input.c.zz)) | reverseBits(vec2<i32>(firstTrailingBit(19501i), ~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(~(-14557i), func_1(Struct_3(Struct_2(-2147483647i, all(vec4<bool>(true, true, false, true)), reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<u32>(37784u, 35685u, u_input.b, u_input.b)), u_input.c)));
    var var_1 = Struct_3(Struct_2(u_input.c.x >> (~32959u % 32u), true, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -30271i, -2147483647i, u_input.a), vec4<i32>(2147483647i, 0i, u_input.a, 27461i), vec4<i32>(u_input.c.x, u_input.a, -89362i, u_input.a)) << (max(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(35835u, 4294967295u, 9441u, 8027u)) % vec4<u32>(32u)), countOneBits(min(vec4<i32>(-7307i, -18974i, 41648i, -2147483647i), vec4<i32>(u_input.a, -20271i, -2147483647i, u_input.a)))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(1u, 0u, 1u, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u), vec4<u32>(5444u, 21425u, 10734u, u_input.b))), _wgslsmith_div_u32(~u_input.b, u_input.b), ~1u, ~u_input.b >> (firstTrailingBit(4294967295u) % 32u))), -vec3<i32>(select(-7794i, 1i, true) | ~(-4282i), u_input.c.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, -33i), -u_input.c.x)));
    let var_2 = var_1.a;
    var_1 = Struct_3(Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_2.c, vec4<i32>(u_input.c.x, -2147483647i, 53294i, u_input.c.x)) ^ u_input.c.x, ~u_input.c.x), true, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(var_2.c, select(vec4<i32>(-1i, 33240i, var_2.c.x, -14060i), var_1.a.c, vec4<bool>(var_1.a.b, true, var_1.a.b, true))), -vec4<i32>(u_input.a, u_input.a, var_2.c.x, var_1.a.a)), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.d.x, u_input.b, 1u, 56849u), vec4<u32>(var_2.d.x, var_2.d.x, 1u, u_input.b), var_2.d))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(-(~u_input.c), max(_wgslsmith_mult_vec3_i32(var_1.b, vec3<i32>(u_input.c.x, var_1.a.a, -1i)), vec3<i32>(var_1.b.x, 1i, -25592i))), -(vec3<i32>(1i, var_2.a, 35864i) & countOneBits(vec3<i32>(var_1.a.a, var_2.c.x, var_2.c.x)))));
    var_0 = -var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(~u_input.c.xx, max(func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-736f, -1345f), vec2<f32>(823f, -151f), var_2.b)), countOneBits(var_2.d), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1016f), vec2<f32>(2375f, -1000f))), _wgslsmith_clamp_vec2_i32(u_input.c.xx, _wgslsmith_sub_vec2_i32(var_2.c.yy, vec2<i32>(2147483647i, var_1.b.x)), var_1.b.yy))), abs(var_1.a.d.xwy << (select(vec3<u32>(1u, 1u, 1u), ~var_1.a.d.xyy, select(vec3<bool>(var_1.a.b, false, var_1.a.b), vec3<bool>(true, false, false), vec3<bool>(var_2.b, var_2.b, var_2.b))) % vec3<u32>(32u))));
}

