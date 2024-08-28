struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(53874u);

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(788f + arg_3) + arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-260f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(150f * -919f) - _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(select(-1210f, _wgslsmith_div_f32(arg_3, -1352f), true)), -1173f));
    global1 = array<Struct_1, 29>();
    let var_1 = ~(~_wgslsmith_mult_u32(countOneBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18008u, 1u)], 1u)]), min(~55253u, firstLeadingBit(11006u))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-389f - -936f)), _wgslsmith_f_op_f32(sign(arg_3)), _wgslsmith_f_op_f32(select(236f, -352f, var_0.x != -677f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_3))))))));
    return Struct_1(var_2.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_2.a, _wgslsmith_f_op_vec4_f32(trunc(var_0))), var_0));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    global0 = array<u32, 1>();
    let var_0 = vec2<i32>(abs(i32(-1i) * -(i32(-1i) * -31292i)), 1i);
    global1 = array<Struct_1, 29>();
    let var_1 = true;
    global0 = array<u32, 1>();
    return vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), u_input.b.wwy) ^ vec3<u32>(23858u, 1u, ~0u), select(vec3<u32>(1u, ~arg_0, abs(32788u)), abs(u_input.b.yyy), select(!var_1, true, var_1))), _wgslsmith_dot_vec4_u32(vec4<u32>(31562u, 4294967295u, global0[_wgslsmith_index_u32(abs(u_input.b.x), 1u)], 62461u), u_input.a) << (u_input.a.x % 32u));
}

fn func_1() -> Struct_2 {
    let var_0 = min(_wgslsmith_mod_vec2_u32(func_3(countOneBits(u_input.b.x), func_2(vec4<i32>(-2902i, 6684i, -2147483647i, 1i), vec3<i32>(-17909i, -1i, 2147483647i), 2147483647i, -746f)), _wgslsmith_mult_vec2_u32(u_input.a.xz, abs(u_input.b.yy))), vec2<u32>(~global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 1u)], countOneBits(1u))) ^ ~vec2<u32>(firstTrailingBit(~27087u), min(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42628u, 1u)], 1u)], 4294967295u), 1u));
    var var_1 = 43458u;
    let var_2 = var_0;
    global1 = array<Struct_1, 29>();
    return Struct_2(vec4<f32>(677f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(377f))) + func_2(vec4<i32>(2147483647i, 6574i, 2147483647i, -1i), firstTrailingBit(vec3<i32>(2147483647i, -1i, -6833i)), select(15618i, -21200i, true), _wgslsmith_f_op_f32(-649f * -1091f)).a), 906f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f), func_2(vec4<i32>(-61272i, -1i, -6002i, -2147483647i) << (u_input.a % vec4<u32>(32u)), vec3<i32>(1i, 1i, 1i), _wgslsmith_add_i32(0i, 0i), _wgslsmith_div_f32(-118f, 193f)).a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 410f;
    var var_1 = func_1();
    let var_2 = global0[_wgslsmith_index_u32(1u, 1u)];
    var_0 = 581f;
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) * vec4<f32>(552f, var_1.a.x, 1214f, var_1.a.x))))));
    var var_3 = _wgslsmith_add_vec4_i32(firstLeadingBit(~(-vec4<i32>(-39272i, 16241i, -2147483647i, 1i))) | select(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-72939i, -40707i, -1i, -2147483647i), vec4<i32>(78167i, 2147483647i, -2147483647i, 17109i)), vec4<i32>(-18332i, -882i, 0i, -9055i)), vec4<i32>(1i, 1i, 1i, 1i), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), true)), vec4<i32>(1i, 1i, 1i, 1i) ^ min(-firstLeadingBit(vec4<i32>(13061i, -2147483647i, -98236i, -1i)), vec4<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(-55509i, -2147483647i, -44542i), 9411i, 2147483647i)));
    global0 = array<u32, 1>();
    var_1 = func_1();
    var var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.yw), -36102i);
}

