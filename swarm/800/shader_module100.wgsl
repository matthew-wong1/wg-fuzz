struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -19575i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> bool {
    global0 = _wgslsmith_sub_i32(1i, ~(~firstLeadingBit(min(u_input.a.x, u_input.a.x))));
    let var_0 = select(_wgslsmith_div_i32(reverseBits(-firstTrailingBit(u_input.a.x)), u_input.a.x), ~(~44963i), false);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1265f, 566f, 748f, -192f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(961f, -569f, 787f, 2344f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(214f - -1374f), -151f, _wgslsmith_f_op_f32(f32(-1f) * -1022f), -1405f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))))));
    return true;
}

fn func_3() -> f32 {
    var var_0 = u_input.c;
    var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 0u, 49233u), vec3<u32>(u_input.b, u_input.b, u_input.c)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(50645u, 4294967295u, u_input.d.x), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(u_input.b, u_input.d.x, 0u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 0u, 0u), abs(vec3<u32>(4294967295u, u_input.d.x, u_input.c)) ^ vec3<u32>(u_input.b, 32607u, 24754u)));
    global0 = 0i;
    var var_1 = -select(~(-max(vec3<i32>(2147483647i, u_input.a.x, 6377i), vec3<i32>(0i, u_input.a.x, -5443i))), -abs(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) ^ vec3<i32>(-26527i, u_input.a.x, u_input.a.x)), true);
    let var_2 = Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1059f, -467f, 204f, -1630f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2222f, 529f, -265f, 2303f)))))), !vec2<bool>(select(any(vec3<bool>(true, true, true)), false, true), all(vec2<bool>(true, false))));
    return var_2.b.x;
}

fn func_1() -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_mult_vec2_u32(~u_input.d, firstLeadingBit(vec2<u32>(62044u >> (0u % 32u), ~u_input.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(241f, -1000f, 524f, 585f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1191f, 558f, 567f, 1152f), vec4<f32>(-1546f, -1202f, 983f, 1056f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1539f, 1289f, -332f, -2214f)))))), vec2<bool>(func_2(), func_2()));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-216f - var_0.b.x), var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1373f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(647f, var_0.b.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1233f + var_0.b.x) * -740f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 1908f, 1354f, 1031f))))))));
    global0 = 63709i;
    var var_2 = Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b))))), select(!(!vec2<bool>(var_0.c.x, false)), select(select(vec2<bool>(true, true), var_0.c, true), vec2<bool>(20074u <= var_0.a.x, var_0.c.x), true & !var_0.c.x), u_input.a.x > abs(firstTrailingBit(-1i))));
    let var_3 = ~(~reverseBits(firstTrailingBit(~4294967295u)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(-u_input.a.x);
    global0 = _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(-u_input.a, u_input.a), u_input.a);
    global0 = -min(_wgslsmith_sub_i32(-2147483647i, min(8404i, -2147483647i)), _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -40046i, u_input.a.x, -369i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)))) >> (15736u % 32u);
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>((16656i << (u_input.c % 32u)) ^ 1i, 1i | _wgslsmith_div_i32(u_input.a.x, 12156i)), -_wgslsmith_clamp_vec2_i32(func_1(), firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a)), u_input.a));
    var var_0 = Struct_4(_wgslsmith_mult_i32(19920i, -1i), Struct_3(Struct_1(~u_input.d, vec4<f32>(_wgslsmith_f_op_f32(1000f - 2419f), _wgslsmith_f_op_f32(f32(-1f) * -438f), -818f, _wgslsmith_f_op_f32(f32(-1f) * -470f)), vec2<bool>(true, true)), u_input.b, ~(-vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)) | vec4<i32>(u_input.a.x, abs(u_input.a.x), ~(-1i), u_input.a.x), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, 15125i, -1i, -20126i), vec4<i32>(u_input.a.x, -2147483647i, i32(-1i) * -2147483647i, func_1().x))), ~(~(~u_input.c)));
    let var_1 = Struct_1(vec2<u32>(23956u, reverseBits(u_input.d.x) << (_wgslsmith_div_u32(7852u, var_0.c) % 32u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(367f + _wgslsmith_f_op_f32(f32(-1f) * -150f)), 2224f, var_0.b.a.b.x, -1120f))), !var_0.b.a.c);
    let var_2 = abs(-45929i);
    var var_3 = _wgslsmith_dot_vec3_i32(reverseBits(var_0.b.c.xwz), ~var_0.b.d.zzw) >> (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~0u, countOneBits(~var_1.a.x)), abs(i32(-1i) * -2147483647i), _wgslsmith_mod_vec2_i32(~(~vec2<i32>(-28791i, var_2)), ~(~vec2<i32>(1i, var_0.a))), i32(-1i) * -1i);
}

