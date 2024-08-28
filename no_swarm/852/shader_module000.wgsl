struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>) -> i32 {
    var var_0 = Struct_2(-vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, u_input.b, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 31704i), vec3<i32>(-1584i, u_input.b, u_input.b))), i32(-1i) * -2147483647i, u_input.b));
    var var_1 = Struct_2(var_0.a);
    let var_2 = reverseBits(-(i32(-1i) * -58502i));
    let var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(53059u, ~firstLeadingBit(u_input.a)), vec2<u32>(countOneBits(arg_1.x), arg_1.x));
    let var_4 = 334f;
    return u_input.b;
}

fn func_2() -> vec4<i32> {
    var var_0 = -abs(-vec4<i32>(u_input.b, u_input.b, -51038i, 0i)) & _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(u_input.b, 24899i, reverseBits(-51711i), max(-140i, 2147483647i))), ~(vec4<i32>(u_input.b, -1i, -1i, u_input.b) & vec4<i32>(u_input.b, 1i, -24408i, u_input.b)) & _wgslsmith_clamp_vec4_i32(-vec4<i32>(16765i, 2147483647i, -77815i, 2147483647i), vec4<i32>(u_input.b, -38406i, -29566i, 2147483647i), abs(vec4<i32>(u_input.b, 8128i, u_input.b, u_input.b))));
    var_0 = abs(vec4<i32>(abs(firstTrailingBit(-u_input.b)), firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, 0i), vec4<i32>(var_0.x, -1i, 2147483647i, u_input.b)), 1i, _wgslsmith_mult_i32(u_input.b, u_input.b))), -69816i, func_3(vec3<f32>(1286f, -2406f, -1884f), min(vec4<u32>(37932u, u_input.a, 62934u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))) << ((0u >> (~4294967295u % 32u)) % 32u)));
    var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b, -10788i, _wgslsmith_dot_vec2_i32(~var_0.zz ^ vec2<i32>(var_0.x, -1i), -_wgslsmith_div_vec2_i32(var_0.yy, vec2<i32>(u_input.b, u_input.b)))), -vec4<i32>(select(u_input.b, 1i, true), -44000i, u_input.b, func_3(vec3<f32>(425f, 664f, 996f), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) & countOneBits(~(vec4<i32>(8028i, 0i, u_input.b, u_input.b) >> (vec4<u32>(1u, u_input.a, 0u, 34229u) % vec4<u32>(32u)))));
    return firstLeadingBit(min((~vec4<i32>(var_0.x, u_input.b, var_0.x, u_input.b) << ((vec4<u32>(1u, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, 96588u, u_input.a, u_input.a)) % vec4<u32>(32u))) << ((firstLeadingBit(vec4<u32>(4294967295u, u_input.a, 4294967295u, 23740u)) | ~vec4<u32>(0u, u_input.a, u_input.a, 40018u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(4548i, 1i, 9309i, 2825i), vec4<i32>(64342i, 1i, 1i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_0.x, 25169i, u_input.b), vec4<i32>(u_input.b, var_0.x, 2147483647i, -1i))), vec4<i32>(_wgslsmith_div_i32(37576i, u_input.b), _wgslsmith_add_i32(u_input.b, -18130i), ~(-39098i), u_input.b))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<i32> {
    let var_0 = vec3<bool>(true, arg_0.b.x, arg_0.b.x);
    let var_1 = _wgslsmith_sub_vec4_i32(func_2(), vec4<i32>(arg_0.c, 0i, _wgslsmith_div_i32(func_3(arg_1, vec4<u32>(u_input.a, u_input.a, u_input.a, 101840u)), arg_0.c), ~(~(u_input.b & arg_0.c))));
    var var_2 = Struct_2(var_1.xyw);
    var var_3 = firstTrailingBit(~_wgslsmith_add_vec3_i32(var_2.a, var_2.a));
    var_2 = Struct_2(var_1.ywx);
    return _wgslsmith_sub_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.x, -1i), -var_2.a.xx, var_2.a.yx)), reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, var_3.x), vec2<i32>(39181i, arg_0.c), var_1.xy)) >> (max(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(0u, u_input.a)) % vec2<u32>(32u))) & (abs(-vec2<i32>(u_input.b, var_3.x)) | vec2<i32>(2147483647i, -15264i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), u_input.b >> (u_input.a % 32u)), ~func_1(Struct_1(359f, vec2<bool>(false, true), u_input.b), vec3<f32>(192f, -1067f, -558f))), _wgslsmith_add_i32(u_input.b, -2147483647i | firstTrailingBit(-2147483647i)), 0i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-809f)))))), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), ~var_0.a.x);
    let var_2 = vec4<bool>(_wgslsmith_div_u32(~1u, u_input.a) == ~select(1u, u_input.a << (u_input.a % 32u), var_1.b.x), true | var_1.b.x, !all(vec4<bool>(true, true, true, true)), true);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.a)), var_1.a, 531f);
    var var_4 = _wgslsmith_add_u32(min(4294967295u, 12364u) | _wgslsmith_dot_vec2_u32(~(~vec2<u32>(57952u, u_input.a)), vec2<u32>(~4459u, 1u)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(110329u, 0u);
}

