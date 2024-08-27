struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 1798f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1426f * _wgslsmith_f_op_f32(trunc(127f))) + 1f)))));
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1840f, -1856f, 348f, -1607f))))))));
    global0 = array<Struct_1, 12>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(trunc(2728f))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec4<bool> {
    global0 = array<Struct_1, 12>();
    var var_0 = global0[_wgslsmith_index_u32(abs(countOneBits(26279u)), 12u)];
    global0 = array<Struct_1, 12>();
    let var_1 = ~u_input.b.x;
    let var_2 = vec3<i32>(arg_2.x, -2147483647i, -u_input.a) >> (_wgslsmith_mod_vec3_u32(select(var_0.c, ~u_input.b, any(vec3<bool>(var_0.a, false, false))), ~firstTrailingBit(~u_input.b)) % vec3<u32>(32u));
    return !(!vec4<bool>(true != all(var_0.d), true || (arg_0.x != arg_0.x), true, false));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec2<f32> {
    global0 = array<Struct_1, 12>();
    var var_0 = Struct_1(func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1617f, arg_3, arg_3), vec4<f32>(2003f, arg_3, -1000f, arg_3))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 242f, arg_3, arg_3)))))), max(select(vec3<i32>(u_input.a, 35027i, 1i), vec3<i32>(u_input.a, -26879i, u_input.a), vec3<bool>(arg_1.a, arg_1.a, arg_0.a.d.x)), select(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(1i, u_input.a, u_input.a), vec3<bool>(true, true, true))) | (~vec3<i32>(5540i, u_input.a, u_input.a) & _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(1i, 0i, u_input.a))), vec4<i32>(-max(1i, u_input.a), u_input.a, u_input.a, abs(u_input.a >> (102926u % 32u)))).x, abs(reverseBits(select(arg_0.a.c.x, _wgslsmith_mult_u32(0u, 0u), any(vec2<bool>(true, false))))), vec3<u32>(~arg_2.a.c.x, arg_1.e, 4506u), select(select(select(!vec4<bool>(arg_1.a, true, arg_2.a.d.x, true), !arg_0.a.d, !arg_0.a.d), !vec4<bool>(false, false, arg_1.d.x, false), arg_2.a.d), arg_2.a.d, !(!arg_2.a.d)), ~1u);
    let var_1 = Struct_2(Struct_1(all(vec2<bool>(arg_1.a, arg_1.d.x)) && true, abs(~_wgslsmith_dot_vec3_u32(arg_0.a.c, arg_2.a.c)), ~vec3<u32>(firstTrailingBit(1u), _wgslsmith_clamp_u32(1u, 4294967295u, u_input.b.x), _wgslsmith_dot_vec3_u32(arg_1.c, arg_1.c)), vec4<bool>(all(vec2<bool>(false, arg_2.a.d.x)), true, !arg_2.a.a, var_0.d.x), var_0.c.x));
    var var_2 = Struct_1(false && all(arg_2.a.d.xyx), arg_2.a.b, vec3<u32>(0u, var_0.b, ~min(arg_1.b, var_0.c.x)), select(arg_0.a.d, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_3, 814f)), -firstTrailingBit(vec3<i32>(-18632i, 0i, 0i)), vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, -1i)), u_input.a, firstLeadingBit(u_input.a))), any(!select(vec3<bool>(arg_1.d.x, arg_0.a.d.x, arg_0.a.d.x), var_0.d.yyx, true))), arg_1.c.x);
    var_2 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(53337u, arg_0.a.b, 91339u, arg_0.a.b), vec4<u32>(var_1.a.e, arg_0.a.b, u_input.b.x, var_2.e)), vec4<u32>(68461u, arg_0.a.c.x, 1u, u_input.b.x) ^ vec4<u32>(0u, 11135u, var_2.c.x, 0u)), _wgslsmith_dot_vec2_u32(~var_1.a.c.zz, ~var_2.c.xz))), 12u)];
    return vec2<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = any(vec4<bool>(all(!(!arg_0.d.wyw)), all(!vec2<bool>(arg_0.a, true)), true || arg_0.d.x, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(312f + 130f)))), _wgslsmith_f_op_vec2_f32(func_2(arg_0.d.yw, arg_0.d, false)))) + _wgslsmith_f_op_vec2_f32(func_4(Struct_2(Struct_1(true & arg_0.a, _wgslsmith_sub_u32(56142u, u_input.b.x), vec3<u32>(76030u, 0u, 4294967295u), !arg_0.d, ~u_input.b.x)), Struct_1(true, ~(u_input.b.x << (arg_0.c.x % 32u)), min(vec3<u32>(1u, 10616u, arg_0.c.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), u_input.b, vec3<u32>(7189u, 78163u, 0u))), select(!arg_0.d, !vec4<bool>(true, var_0, true, arg_0.a), func_3(vec4<f32>(1556f, 1119f, -876f, 724f), vec3<i32>(u_input.a, u_input.a, -14238i), vec4<i32>(u_input.a, u_input.a, -20845i, u_input.a))), 4294967295u), Struct_2(Struct_1(any(arg_0.d), ~u_input.b.x, ~vec3<u32>(arg_0.e, u_input.b.x, arg_0.b), arg_0.d, u_input.b.x | u_input.b.x)), _wgslsmith_f_op_f32(1000f - -280f))));
    let var_2 = _wgslsmith_mult_u32(~arg_0.c.x << (_wgslsmith_mod_u32(1u, 17394u) % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x & 1u, select(arg_0.b, arg_0.e, true)), ~(~arg_0.c)), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0.e, 56045u, 0u), vec4<u32>(u_input.b.x, 0u, arg_0.c.x, 33273u)), ~4294967295u)));
    var var_3 = select(~select(firstTrailingBit(vec4<i32>(u_input.a, 20738i, -770i, u_input.a)) & -vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), ~(-vec4<i32>(-1i, -1i, -1i, u_input.a)), arg_0.a), vec4<i32>(-_wgslsmith_div_i32(u_input.a, u_input.a), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(28663i, u_input.a), vec2<i32>(2556i, u_input.a)))), u_input.a & u_input.a, 0i ^ (u_input.a >> ((var_2 >> (4294967295u % 32u)) % 32u))), any(func_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1388f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 495f, 556f)))), ~select(vec3<i32>(7034i, -21651i, -1i), vec3<i32>(-2147483647i, u_input.a, u_input.a), true), firstTrailingBit(abs(vec4<i32>(-1152i, -1i, -2796i, u_input.a))))));
    let var_4 = !select(vec4<bool>(!arg_0.a, !all(vec4<bool>(false, true, arg_0.d.x, false)), all(select(arg_0.d, vec4<bool>(var_0, false, false, false), arg_0.d)), any(vec3<bool>(false, false, arg_0.a))), arg_0.d, false);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, false, true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(any(select(var_0.xy, vec2<bool>(false, var_0.x), var_0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(4294967295u, u_input.b.x, 0u, 32136u) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x) & vec4<u32>(43509u, 0u, u_input.b.x, 62000u)), vec3<u32>(u_input.b.x, 1u, _wgslsmith_add_u32(0u, 1u)), vec4<bool>(-10668i > u_input.a, u_input.b.x <= 71064u, !var_0.x, true), 1u))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 12u)];
    let var_3 = max(_wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits(1u), _wgslsmith_mult_u32(47461u, var_2.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, 0u, u_input.b.x), vec3<u32>(32187u, 26842u, 1u) ^ vec3<u32>(var_2.b, u_input.b.x, var_2.b))) & firstLeadingBit(firstLeadingBit(629u)), 4294967295u);
    var_0 = !var_2.d.wwy;
    var var_4 = Struct_2(global0[_wgslsmith_index_u32(~0u, 12u)]);
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -1988f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_clamp_i32(-24983i, 24711i, ~2147483647i), -24272i), min(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(reverseBits(41346i), 2147483647i, 62398i))), u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(u_input.a, _wgslsmith_sub_i32(u_input.a, 27904i))), ~vec2<i32>(u_input.a >> (1u % 32u), -u_input.a)));
}

