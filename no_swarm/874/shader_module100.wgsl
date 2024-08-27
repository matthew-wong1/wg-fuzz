struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-999f)) + -834f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1816f)) * 1011f))), 1i, -abs(firstTrailingBit(vec4<i32>(42489i, u_input.a, -1i, u_input.a))), ~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(44168i, u_input.a, 1i, u_input.a) << (vec4<u32>(7759u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), countOneBits(min(vec4<i32>(u_input.a, 9366i, -10571i, u_input.a), vec4<i32>(u_input.a, u_input.a, -27124i, -8389i)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1563f, -1299f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(var_0.a.x, var_0.a.x))), true)))), firstLeadingBit(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, u_input.a), countOneBits(var_0.c.x))), -var_0.c, reverseBits(firstTrailingBit(var_0.d)));
    var var_1 = false;
    var_1 = false;
    var_1 = true;
    return u_input.b.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> vec3<i32> {
    var var_0 = Struct_1(vec2<f32>(-755f, _wgslsmith_f_op_f32(f32(-1f) * -2265f)), i32(-1i) * -79175i, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(1i, 3406i, 0i, -77127i)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(34672i, 2419i, u_input.a, 2147483647i), vec4<i32>(-40296i, 3386i, -56549i, u_input.a))), select(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a) & ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), max(vec4<i32>(-2147483647i, u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)) << (vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u)), true)), ~_wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.a, -43342i), vec4<i32>(u_input.a, -11067i, 48018i, u_input.a)), select(-vec4<i32>(0i, u_input.a, u_input.a, -42959i), vec4<i32>(u_input.a, -1i, 2147483647i, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, 35441i, u_input.a), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, arg_1), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(109793u, 41979u, 11364u, arg_1) << (vec4<u32>(70739u, 4294967295u, 0u, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(1u, u_input.b.x, arg_1, 50961u) ^ min(vec4<u32>(u_input.b.x, 1u, u_input.b.x, arg_1), vec4<u32>(0u, 9797u, 47374u, u_input.b.x))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, 1u, 0u, 4294967295u)), min(vec4<u32>(u_input.b.x, arg_1, 89234u, arg_1), vec4<u32>(u_input.b.x, arg_1, u_input.b.x, arg_1)), vec4<u32>(46920u, 42207u, arg_1, u_input.b.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 5648u, 4294967295u, arg_1), vec4<u32>(3190u, u_input.b.x, 0u, arg_1)))));
    let var_2 = ~func_3();
    let var_3 = arg_0.x;
    let var_4 = Struct_1(vec2<f32>(arg_0.x, var_3), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, -1i, u_input.a), ~var_0.c) << (reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.xy ^ u_input.b.xx, vec2<u32>(101678u, 67288u))) % 32u), vec4<i32>(_wgslsmith_add_i32(0i, -_wgslsmith_mult_i32(0i, var_0.b)), -2147483647i, u_input.a, 40917i), var_0.c);
    return vec3<i32>(select(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-1i, -1i, -1i)), firstLeadingBit(vec3<i32>(1i, var_0.b, var_4.b)) >> (~u_input.b % vec3<u32>(32u))), select(~(var_0.d.x >> (50943u % 32u)), _wgslsmith_mod_i32(0i, _wgslsmith_mod_i32(2147483647i, 269i)), true), all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true))), abs(_wgslsmith_div_i32(var_0.d.x, ~(~58531i))), countOneBits(_wgslsmith_clamp_i32(_wgslsmith_div_i32(~2147483647i, u_input.a), _wgslsmith_dot_vec2_i32(var_0.d.zy & vec2<i32>(-1030i, var_0.b), var_0.c.zy), _wgslsmith_clamp_i32(-2147483647i, var_4.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, var_4.b, var_4.b), var_4.c)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<i32> {
    let var_0 = ~(~1072u);
    let var_1 = arg_0;
    let var_2 = !select(!(!vec3<bool>(false, arg_1.x, arg_1.x)), vec3<bool>(any(select(vec4<bool>(arg_1.x, true, true, true), vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(true, true, arg_1.x, true))), !arg_1.x, !arg_1.x), arg_1.x);
    var var_3 = var_1;
    var var_4 = ~u_input.b.x;
    return func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 858f, 986f), vec3<f32>(-194f, -1264f, -377f)))))), 28622u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 17874i, 2147483647i, 62734i), vec4<i32>(-1i, 49841i, -51914i, 2147483647i)), ~max(-2618i, u_input.a), -29326i), vec3<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, select(u_input.a, -2147483647i, false)), _wgslsmith_mod_i32(2147483647i, -18019i))));
    var_0 = ~min(vec3<i32>(-6171i, -30535i, -2147483647i) | vec3<i32>(u_input.a, 25259i, u_input.a), -(vec3<i32>(1i, var_0.x, var_0.x) | vec3<i32>(-24953i, -13498i, var_0.x))) | func_1(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-957f)), -719f), _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, -21782i), _wgslsmith_add_i32(0i, -1i)), -max(vec4<i32>(2147483647i, 1i, -20734i, -17774i), vec4<i32>(u_input.a, var_0.x, -1i, -1632i)), ~vec4<i32>(-1i, 1i, 21678i, u_input.a)), vec2<bool>(true, _wgslsmith_f_op_f32(sign(-1356f)) <= _wgslsmith_f_op_f32(1870f - -1586f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(select(-591i << (u_input.b.x % 32u), var_0.x | var_0.x, true), u_input.a ^ ~1i, _wgslsmith_dot_vec2_i32(var_0.xz >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)), vec2<i32>(-16997i, -3666i))), ~(~vec3<i32>(31403i, -2147483647i, u_input.a))), -1000f, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, (4294967295u << (u_input.b.x % 32u)) & _wgslsmith_div_u32(u_input.b.x, 1u)), reverseBits(vec2<u32>(_wgslsmith_div_u32(1u, u_input.b.x), 3015u))));
}

