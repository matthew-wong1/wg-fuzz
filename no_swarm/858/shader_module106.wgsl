struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = vec3<f32>(-1109f, -103f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-732f, 800f) - _wgslsmith_f_op_f32(-830f + 559f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-655f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-304f + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-857f * _wgslsmith_div_f32(-437f, _wgslsmith_f_op_f32(trunc(var_0.x))))));
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-3369i, 0i, -2147483647i, -3407i), -vec4<i32>(-1i, 13158i, 2147483647i, -1i)), 1i, ~_wgslsmith_sub_i32(0i, 21295i), 1i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(29697u, 1u, 0u), vec3<u32>(4294967295u, 63147u, arg_0)) % 32u), (var_0.x > var_0.x) | true), var_0.x, vec3<bool>(true, false, true), Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(17499i, 2147483647i), _wgslsmith_clamp_i32(-1i, -18318i, -2147483647i)), -1i, ~0i, abs(32902i), true), Struct_1(0i, _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -1i, -30646i), vec3<i32>(32541i, 53073i, -2147483647i) >> (vec3<u32>(23126u, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -7287i, 2147483647i), vec3<i32>(-38570i, -45067i, 2147483647i)), _wgslsmith_div_i32(0i, 19702i), ~(-1i)), 1i, any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(504f, var_0.x, var_0.x, var_0.x) * vec4<f32>(-1061f, var_0.x, -553f, 628f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -1150f, var_0.x, var_0.x))))))));
    return var_1.a.e;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = ~_wgslsmith_dot_vec2_u32((select(vec2<u32>(u_input.a, 82161u), vec2<u32>(8976u, 0u), vec2<bool>(true, arg_1.e)) ^ ~vec2<u32>(u_input.a, 1u)) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(13545u, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(10927u, u_input.a), vec2<u32>(u_input.a, 1u)), vec2<u32>(5394u, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(abs(abs(vec2<u32>(u_input.a, 7165u))), vec2<u32>(0u, ~1u)));
    var var_1 = countOneBits(~(~_wgslsmith_mult_vec2_u32(min(vec2<u32>(4294967295u, 12660u), vec2<u32>(19235u, u_input.a)), vec2<u32>(17672u, 1u) | vec2<u32>(u_input.a, u_input.a))));
    var_0 = _wgslsmith_sub_u32(~54532u << (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, countOneBits(var_1.x), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(var_1.x, 4294967295u) | vec2<u32>(u_input.a, u_input.a))) % 32u), u_input.a);
    let var_2 = ~_wgslsmith_mod_i32(~(-1i), _wgslsmith_mult_i32(firstLeadingBit(arg_2), min(1i, 2147483647i)) << (u_input.a % 32u));
    var var_3 = ~(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(var_1.x, 44179u, 0u)), vec3<u32>(var_1.x, u_input.a, var_1.x), countOneBits(vec3<u32>(u_input.a, 0u, 16660u))) ^ (min(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(4294967295u, var_1.x, u_input.a)) & select(vec3<u32>(var_1.x, 75815u, u_input.a), vec3<u32>(var_1.x, 25976u, 1u), vec3<bool>(arg_1.e, arg_1.e, false)))) ^ vec3<u32>(min(firstTrailingBit(var_1.x), countOneBits(countOneBits(u_input.a))), var_1.x, abs(883u));
    return 30240i;
}

fn func_1() -> i32 {
    var var_0 = 18795i;
    var var_1 = reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 28303u, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.a, u_input.a, 13739u), all(vec2<bool>(false, false))), vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(46238u, 17148u, 4294967295u, 11997u), vec4<u32>(0u, 4294967295u, u_input.a, u_input.a))), vec4<u32>(u_input.a, 0u | _wgslsmith_mult_u32(u_input.a, 40978u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 2055u, 1u, u_input.a), vec4<u32>(63478u, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), u_input.a), vec4<u32>(min(55995u, ~u_input.a), firstTrailingBit(u_input.a), _wgslsmith_mod_u32(~4294967295u, ~0u), _wgslsmith_add_u32(~52338u, u_input.a))));
    var var_2 = func_3(abs(vec4<i32>(select(_wgslsmith_clamp_i32(0i, -1i, 2147483647i), _wgslsmith_mod_i32(2147483647i, -36028i), select(true, true, false)), select(0i, abs(-21829i), true), -1i, ~reverseBits(1i))), func_2(_wgslsmith_add_u32(u_input.a, ~68637u)), func_2(_wgslsmith_add_u32(~_wgslsmith_add_u32(4294967295u, 0u), 6668u)).d);
    var_2 = ~(-66043i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1838f)))));
    return i32(-1i) * -(_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, 6472i), 1i) ^ -func_3(vec4<i32>(-2039i, 2147483647i, -19175i, -8429i), Struct_1(7498i, 16309i, 26763i, -1i, true), 50300i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(i32(-1i) * -2147483647i, 0i, firstLeadingBit(1i))), countOneBits(max(firstLeadingBit(vec3<i32>(0i, 0i, -1i)), vec3<i32>(1i, 1i, 1i)))), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(_wgslsmith_mod_i32(1i, 2147483647i)), -37782i, 0i), max(-vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(2397i, -29267i, -41589i), vec3<i32>(-1i, -1i, -1i))))));
    var var_1 = -1262f;
    var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(func_1(), min(-14327i, min(firstTrailingBit(-22244i), 2147483647i))), vec2<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_add_i32(abs(-56403i), -4569i << (u_input.a % 32u)), -(i32(-1i) * -16255i))));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 49826u), select(_wgslsmith_div_u32(~u_input.a >> (~16879u % 32u), ~(~u_input.a)), ~firstLeadingBit(firstLeadingBit(u_input.a)), false));
    var var_3 = 1u;
    let var_4 = select(!vec2<bool>(true, select(false, select(false, false, false), false)), select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), false), vec2<bool>(true, true)), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, false)), countOneBits(u_input.a) == u_input.a), u_input.a >= u_input.a), true);
    var_3 = u_input.a;
    var var_5 = vec4<i32>(min(-(~(~0i)), -_wgslsmith_div_i32(max(-2147483647i, -26483i), _wgslsmith_dot_vec2_i32(vec2<i32>(-8972i, 1i), vec2<i32>(-2147483647i, 63699i)))), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(3857i, 27339i), ~(-30730i)), -(~0i)), 57934i), _wgslsmith_mult_i32(-1i, i32(-1i) * -1i), ~(-(~22547i)) ^ (39439i >> (~u_input.a % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1323f, 1429f) - vec3<f32>(752f, -329f, 740f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-934f, 414f, -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1718f, 776f, 577f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -501f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 339f, true)) * _wgslsmith_f_op_f32(467f + 189f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(487f - 407f))))));
}

