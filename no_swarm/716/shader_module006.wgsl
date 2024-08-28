struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = max(-41673i, _wgslsmith_sub_i32(u_input.e, u_input.a));
    var var_1 = all(!select(vec3<bool>(u_input.e <= u_input.a, false, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), false)));
    var_1 = (~0u << (_wgslsmith_clamp_u32(1u, 1u << ((u_input.d | 57664u) % 32u), _wgslsmith_div_u32(u_input.c << (u_input.d % 32u), ~0u)) % 32u)) >= ~24186u;
    var var_2 = Struct_5(u_input.b, u_input.c, !any(vec3<bool>(false, false, false)) | false);
    var_1 = (false & var_2.c) & var_2.c;
    return vec2<bool>(all(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false), !vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c), vec4<bool>(var_2.c, true, true, var_2.c)), select(select(vec4<bool>(false, var_2.c, var_2.c, false), vec4<bool>(var_2.c, true, var_2.c, var_2.c), true), select(vec4<bool>(false, false, var_2.c, false), vec4<bool>(var_2.c, true, false, true), true), vec4<bool>(var_2.c, false, true, false)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(var_2.c, var_2.c, true, var_2.c), vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, var_2.c, var_2.c, true), vec4<bool>(var_2.c, var_2.c, false, true)), var_2.c))), any(vec4<bool>(~u_input.d == _wgslsmith_mod_u32(u_input.c, u_input.c), var_2.c, ~u_input.a < ~1i, false)));
}

fn func_2() -> i32 {
    var var_0 = Struct_4(Struct_1(vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(644f, -942f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-947f, 344f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2061f + 1048f))))), 458f, 948f), Struct_3(Struct_2(true), Struct_1(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var var_1 = var_0.c.b;
    var_1 = Struct_1(select(select(var_1.a, vec2<bool>(true, all(var_1.a)), func_3()), select(vec2<bool>(true, true), var_1.a, _wgslsmith_mod_i32(u_input.a, u_input.b) >= u_input.b), vec2<bool>(var_0.c.b.a.x, all(!vec3<bool>(false, var_1.a.x, var_0.c.b.a.x)))));
    let var_2 = Struct_1(!(!(!(!var_0.a.a))));
    var var_3 = Struct_3(var_0.c.a, Struct_1(!select(var_0.a.a, select(vec2<bool>(true, false), vec2<bool>(var_0.a.a.x, false), vec2<bool>(var_1.a.x, var_0.a.a.x)), vec2<bool>(true, var_0.c.b.a.x))));
    return firstTrailingBit(_wgslsmith_sub_i32(u_input.e, reverseBits(-5332i)));
}

fn func_4(arg_0: i32) -> vec4<i32> {
    var var_0 = Struct_4(Struct_1(!(!func_3())), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-771f, _wgslsmith_f_op_f32(f32(-1f) * -1259f), any(vec4<bool>(false, true, false, true)))), -696f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1206f)), 575f)), 1156f)), Struct_3(Struct_2(!func_3().x), Struct_1(vec2<bool>(true, false))));
    return vec4<i32>(_wgslsmith_div_i32(-u_input.b, -(i32(-1i) * -2147483647i)), _wgslsmith_mod_i32(-2147483647i, arg_0), 0i, _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.e, arg_0 | 21298i), -50098i), u_input.e));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_5) -> u32 {
    var var_0 = func_4(_wgslsmith_mod_i32(func_2(), arg_2.a));
    let var_1 = Struct_1(vec2<bool>(true, any(vec2<bool>(true, true))));
    var var_2 = arg_2.b;
    var_2 = _wgslsmith_div_u32(arg_1.b, _wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(1976u, arg_2.b, arg_2.b)) ^ reverseBits(vec3<u32>(arg_2.b, 17634u, u_input.c)), firstTrailingBit(~vec3<u32>(0u, 4294967295u, arg_1.b)), vec3<bool>(true, false, any(vec3<bool>(arg_1.c, true, false)))), ~vec3<u32>(1u, arg_1.b, ~arg_2.b)));
    var_2 = ~u_input.c;
    return ~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(58463u, arg_1.b), abs(vec2<u32>(arg_1.b, arg_2.b))), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, arg_1.b)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.b, arg_1.b), vec2<u32>(4294967295u, arg_1.b)) & vec2<u32>(34696u, 4294967295u)), reverseBits(69952u));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_3(Struct_2(any(!select(vec4<bool>(true, arg_1.c, false, false), vec4<bool>(arg_2.a.a, arg_1.c, arg_2.a.a, true), vec4<bool>(arg_2.b.a.x, true, false, false)))), Struct_1(arg_2.b.a));
    var var_1 = arg_2;
    let var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-367f, _wgslsmith_f_op_f32(sign(124f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-957f, -158f)))), true))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1762f * -629f), _wgslsmith_f_op_f32(-751f * -341f))))));
    var var_4 = _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c | firstLeadingBit(0u), ~u_input.d & ~0u, _wgslsmith_dot_vec3_u32(select(reverseBits(vec3<u32>(14257u, arg_0.x, 16982u)), _wgslsmith_clamp_vec3_u32(arg_0.yxy, arg_0.wzx, vec3<u32>(arg_0.x, u_input.d, 21214u)), vec3<bool>(true, true, true)), vec3<u32>(u_input.c, ~23266u, arg_1.b))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, _wgslsmith_add_u32(arg_1.b, 8556u), 41260u), arg_0.zyx, firstTrailingBit(~arg_0.xxy)), _wgslsmith_sub_vec3_u32(~arg_0.wwz, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.x, 5114u, 50791u), ~vec3<u32>(17540u, 0u, arg_0.x)), abs(vec3<u32>(4294967295u, 1u, u_input.c)))));
    return Struct_4(var_1.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-638f, -941f, var_3.x, 804f)))))))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<u32>(~62354u, _wgslsmith_sub_u32(func_1(vec2<bool>(false, true), Struct_5(-11894i, 1u, true), Struct_5(1i, 0u, true)), 1u) >> (27986u % 32u), reverseBits(firstTrailingBit(abs(21993u))), firstTrailingBit(u_input.c)), Struct_5(u_input.b, 45871u, all(vec4<bool>(true, false, true, true))), Struct_3(Struct_2(true), Struct_1(vec2<bool>(true, true))), -select(-(~vec2<i32>(0i, -56293i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(32166i, u_input.e) | vec2<i32>(u_input.e, -2583i)), select(any(vec3<bool>(true, false, false)), all(vec4<bool>(false, true, true, false)), all(vec4<bool>(false, true, false, true)))));
    var_0 = Struct_4(Struct_1(var_0.c.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-872f * 1000f), _wgslsmith_f_op_f32(ceil(-155f)), _wgslsmith_f_op_f32(-var_0.b.x), -423f))), Struct_3(var_0.c.a, Struct_1(vec2<bool>(true, false))));
    let var_1 = _wgslsmith_f_op_f32(-430f - -1723f);
    let var_2 = !any(vec2<bool>(!(!var_0.c.a.a), var_0.a.a.x));
    let var_3 = true;
    let var_4 = ~(~_wgslsmith_add_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.c, u_input.d), vec4<u32>(u_input.d, 4294967295u, u_input.c, u_input.c), vec4<u32>(1275u, u_input.d, u_input.c, 0u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.d), vec4<u32>(32052u, u_input.c, u_input.d, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, u_input.c, 1u), vec4<u32>(u_input.d, u_input.d, 45474u, 4294967295u)))));
    var var_5 = func_5(var_4, Struct_5(94513i, _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_4.x, 0u), u_input.d, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_4, var_4), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 25479u, u_input.c, 81742u), vec4<u32>(0u, u_input.c, 139284u, 1u)))), func_3().x), Struct_3(var_0.c.a, Struct_1(vec2<bool>(false, var_3))), -countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(5634i, u_input.a) >> (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u)), vec2<i32>(56891i, -1i) >> (var_4.yx % vec2<u32>(32u))))).c.a;
    var_0 = Struct_4(Struct_1(var_0.a.a), _wgslsmith_f_op_vec4_f32(var_0.b - var_0.b), Struct_3(Struct_2(func_3().x), var_0.c.b));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(u_input.b).x, ~u_input.a, var_0.b.x);
}

