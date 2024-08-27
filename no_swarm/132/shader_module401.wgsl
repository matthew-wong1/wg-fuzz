struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(1000f - arg_0)))));
    var var_1 = vec4<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(u_input.a, u_input.a) >> (select(u_input.e.xz, u_input.d.xy, true) % vec2<u32>(32u))), ~reverseBits(vec2<u32>(u_input.a, 1u))), 28990u, 1u);
    var var_2 = Struct_3(Struct_1(arg_1.a, _wgslsmith_div_i32(arg_1.b, 3174i), arg_1.a.zz), var_1.x, !vec2<bool>(false, arg_1.a.x || true));
    var var_3 = vec2<u32>(var_1.x, _wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.e.x, 4294967295u), u_input.b)) << (vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(var_1.x, 56991u)), ~u_input.e.x) % vec2<u32>(32u));
    var var_4 = var_2.c;
    return vec4<u32>(68175u, ~11326u, ~(~3784u), var_2.b);
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_1(vec3<bool>(true, !all(vec3<bool>(false, false, false)), any(vec3<bool>(true, false, all(vec2<bool>(true, true))))), 0i, vec2<bool>(any(vec3<bool>(true, true, true)), (_wgslsmith_add_i32(u_input.c, arg_0.x) > (-2147483647i ^ arg_0.x)) && true));
    let var_1 = Struct_1(!vec3<bool>(var_0.a.x, var_0.a.x, select(false, false, true)), -2147483647i, select(select(!(!vec2<bool>(var_0.a.x, var_0.c.x)), !(!var_0.c), vec2<bool>(var_0.a.x | false, select(var_0.a.x, var_0.c.x, var_0.c.x))), vec2<bool>(true, false), any(!vec4<bool>(true, false, var_0.a.x, var_0.c.x))));
    var var_2 = all(vec2<bool>(true, true));
    var var_3 = u_input.b;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1220f));
    return u_input.c;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_4, arg_3: f32) -> i32 {
    var var_0 = arg_2.a.a;
    var_0 = arg_2.b.a;
    var var_1 = 0u;
    var var_2 = Struct_3(Struct_1(arg_2.a.a.a, max(-23822i, abs(~arg_2.b.a.b)), vec2<bool>(true, true)), ~63453u, vec2<bool>(!any(select(vec4<bool>(arg_0, false, true, var_0.c.x), vec4<bool>(true, true, true, false), true)), true));
    let var_3 = Struct_3(arg_2.a.a, arg_1, var_0.a.yz);
    return _wgslsmith_add_i32(var_0.b, arg_2.a.a.b);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    let var_0 = min(~(vec4<u32>(u_input.a >> (1u % 32u), u_input.b, 4294967295u, _wgslsmith_div_u32(u_input.d.x, u_input.e.x)) & ~func_2(340f, Struct_1(arg_2.a.a, -2147483647i, vec2<bool>(false, false)))), vec4<u32>(26525u, reverseBits(_wgslsmith_mod_u32(u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.e.x))), 64796u, u_input.e.x));
    var var_1 = func_4(arg_2.a.c.x, 67749u, Struct_4(Struct_2(Struct_1(vec3<bool>(arg_0.x, true, arg_2.a.a.x), func_3(vec4<i32>(u_input.c, -9331i, -1i, -40072i)), arg_1.a.a.c)), Struct_2(Struct_1(select(vec3<bool>(arg_0.x, arg_0.x, true), arg_2.a.a, true), u_input.c, vec2<bool>(arg_2.a.c.x, true))), true), 545f);
    var_1 = -func_3(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-44315i, arg_1.b.a.b, 16926i, -2147483647i)) >> (var_0 % vec4<u32>(32u)), vec4<i32>(~12580i, u_input.c, arg_1.a.a.b, _wgslsmith_add_i32(u_input.c, -7714i))));
    var var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, arg_2.a.b, 1i), vec3<i32>(-2147483647i, arg_2.a.b, arg_1.b.a.b))), vec3<i32>(-9397i, u_input.c & arg_2.a.b, _wgslsmith_clamp_i32(1i, -1i, -2147483647i))), vec3<i32>(_wgslsmith_mult_i32(arg_1.a.a.b | 2147483647i, 0i), ~(~u_input.c), _wgslsmith_mod_i32(reverseBits(u_input.c), ~arg_1.a.a.b))), _wgslsmith_add_vec3_i32((vec3<i32>(-20462i, u_input.c, 28233i) & ~vec3<i32>(u_input.c, 2147483647i, u_input.c)) | (-vec3<i32>(u_input.c, -2147483647i, arg_1.a.a.b) >> (vec3<u32>(u_input.b, 4294967295u, var_0.x) % vec3<u32>(32u))), abs(vec3<i32>(arg_1.b.a.b, u_input.c, min(-2147483647i, arg_2.a.b)))));
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_2.x, var_2.x, 2147483647i), vec4<i32>(25181i, -13714i, -1829i, 28527i)), select(vec4<i32>(-1i, min(arg_1.a.a.b, 2147483647i), arg_2.a.b, firstTrailingBit(-50139i)), vec4<i32>(~0i, arg_2.a.b, -u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.a.b, arg_2.a.b, u_input.c, 37092i), vec4<i32>(u_input.c, u_input.c, -69911i, 7928i))), !vec4<bool>(false, arg_2.a.a.x, false, arg_0.x))), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(var_2.x, 2147483647i), var_2.zz), var_2.xz)));
    return Struct_1(arg_2.a.a, max(9307i, _wgslsmith_sub_i32(~firstTrailingBit(var_3), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_1.a.a.b, 1i), vec3<i32>(var_3, 12243i, arg_2.a.b)), reverseBits(vec3<i32>(-1i, var_3, arg_2.a.b))))), !select(arg_2.a.a.yz, vec2<bool>(false, u_input.b >= var_0.x), !arg_0.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_3(Struct_1(vec3<bool>(func_1(!vec2<bool>(arg_0.a.x, false), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, arg_0.a.x), 0i, arg_0.c)), Struct_2(Struct_1(arg_0.a, 2147483647i, arg_0.a.yy)), true), Struct_2(Struct_1(vec3<bool>(true, arg_0.c.x, arg_0.c.x), arg_1.x, arg_0.a.yy))).c.x, true, (2147483647i << (u_input.a % 32u)) > min(-51538i, 1477i)), -arg_0.b, select(vec2<bool>(select(false, true, arg_0.a.x), any(vec4<bool>(false, arg_0.c.x, true, arg_0.a.x))), !select(arg_0.c, vec2<bool>(arg_0.a.x, false), true), vec2<bool>(true, true))), 1u, func_1(arg_0.a.yz, Struct_4(Struct_2(arg_0), Struct_2(Struct_1(arg_0.a, -2147483647i, arg_0.a.zy)), true), Struct_2(Struct_1(select(arg_0.a, vec3<bool>(false, true, arg_0.a.x), true), -2147483647i, vec2<bool>(true, true)))).c);
    let var_1 = Struct_4(Struct_2(func_1(arg_0.c, Struct_4(Struct_2(arg_0), Struct_2(Struct_1(var_0.a.a, -1i, vec2<bool>(true, false))), true), Struct_2(Struct_1(vec3<bool>(var_0.c.x, false, true), arg_0.b, arg_0.a.xz)))), Struct_2(func_1(vec2<bool>(true, true), Struct_4(Struct_2(arg_0), Struct_2(Struct_1(arg_0.a, arg_1.x, arg_0.c)), !arg_0.c.x), Struct_2(func_1(var_0.a.c, Struct_4(Struct_2(arg_0), Struct_2(Struct_1(vec3<bool>(var_0.a.c.x, true, arg_0.a.x), -40841i, arg_0.c)), var_0.c.x), Struct_2(var_0.a))))), !(!any(!vec4<bool>(false, arg_0.a.x, var_0.c.x, var_0.c.x))));
    var var_2 = Struct_1(func_1(!func_1(vec2<bool>(true, var_0.c.x), Struct_4(Struct_2(Struct_1(vec3<bool>(false, var_0.a.c.x, false), 40232i, arg_0.a.yz)), var_1.b, var_1.a.a.c.x), Struct_2(Struct_1(var_1.b.a.a, var_0.a.b, arg_0.a.yy))).a.zy, var_1, var_1.b).a, max(-2147483647i, 16130i) | _wgslsmith_sub_i32(-49338i, arg_1.x), arg_0.c);
    var var_3 = var_1.a;
    var var_4 = func_3(vec4<i32>(-(-var_1.b.a.b >> (1u % 32u)), arg_1.x, -(~firstTrailingBit(u_input.c)), -(~(var_3.a.b << (u_input.d.x % 32u)))));
    return func_1(var_1.a.a.c, var_1, var_1.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = true;
    let var_2 = !(true | !(!var_1)) == true;
    var var_3 = Struct_2(Struct_1(select(vec3<bool>(true, !var_1, any(vec3<bool>(var_2, true, var_1))), func_5(func_1(vec2<bool>(var_1, var_1), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, var_2), 0i, vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(var_2, true, var_1), u_input.c, vec2<bool>(false, false))), false), Struct_2(Struct_1(vec3<bool>(true, var_1, var_0), u_input.c, vec2<bool>(var_0, var_0)))), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -25051i, u_input.c), vec3<i32>(u_input.c, u_input.c, 1i))), !(!vec3<bool>(false, var_1, var_2))), _wgslsmith_add_i32(1i, u_input.c), !select(func_5(Struct_1(vec3<bool>(var_2, var_2, var_0), u_input.c, vec2<bool>(var_0, var_1)), vec3<i32>(u_input.c, 42778i, -59372i)).zz, vec2<bool>(false, true), !vec2<bool>(var_0, true))));
    let var_4 = select(!select(vec4<bool>(func_1(var_3.a.a.zz, Struct_4(Struct_2(var_3.a), Struct_2(Struct_1(var_3.a.a, var_3.a.b, var_3.a.c)), var_0), Struct_2(var_3.a)).a.x, func_5(Struct_1(var_3.a.a, var_3.a.b, vec2<bool>(false, var_0)), vec3<i32>(var_3.a.b, 1i, 63171i)).x, all(var_3.a.a), true), vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true), vec4<bool>(!var_3.a.c.x, true, func_1(vec2<bool>(var_3.a.c.x, true), Struct_4(Struct_2(Struct_1(vec3<bool>(true, var_2, var_2), 12821i, var_3.a.a.yy)), Struct_2(var_3.a), true), Struct_2(var_3.a)).c.x, true)), !select(select(vec4<bool>(var_0, var_0, var_0, var_0), select(vec4<bool>(var_0, false, var_3.a.c.x, var_0), vec4<bool>(false, var_3.a.a.x, true, false), vec4<bool>(true, true, var_2, var_0)), vec4<bool>(var_1, true, true, true)), !vec4<bool>(var_1, false, var_1, var_1), true), vec4<bool>(func_1(var_3.a.c, Struct_4(Struct_2(var_3.a), Struct_2(Struct_1(vec3<bool>(var_1, false, true), 2147483647i, var_3.a.c)), any(var_3.a.c)), Struct_2(var_3.a)).c.x, var_2, 1000f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), true));
    let var_5 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(~u_input.d, max(u_input.d, vec3<u32>(u_input.e.x, 73853u, u_input.a))), reverseBits(countOneBits(min(vec3<u32>(66569u, 37403u, 1u), u_input.e))));
    let var_6 = Struct_3(Struct_1(select(!select(vec3<bool>(var_1, var_1, true), var_4.xyy, true), !var_3.a.a, var_2), -2147483647i, var_4.wx), _wgslsmith_dot_vec2_u32(~(~u_input.d.xy), firstTrailingBit(u_input.d.zx)), select(vec2<bool>(false, false), vec2<bool>(true, true), var_3.a.c));
    var var_7 = Struct_3(func_1(!vec2<bool>(all(var_4), true), Struct_4(Struct_2(func_1(vec2<bool>(var_6.a.a.x, true), Struct_4(Struct_2(Struct_1(var_3.a.a, 1i, vec2<bool>(var_1, true))), Struct_2(var_6.a), false), Struct_2(Struct_1(var_3.a.a, 29119i, var_4.yw)))), Struct_2(var_6.a), all(func_5(var_3.a, vec3<i32>(var_6.a.b, u_input.c, 2147483647i)))), Struct_2(func_1(vec2<bool>(false, false), Struct_4(Struct_2(var_3.a), Struct_2(Struct_1(vec3<bool>(false, var_1, var_0), u_input.c, var_4.xy)), var_4.x), Struct_2(var_3.a)))), 68173u, var_4.zy);
    var var_8 = Struct_2(func_1(!func_1(vec2<bool>(var_7.c.x, false), Struct_4(Struct_2(Struct_1(vec3<bool>(var_0, true, var_6.c.x), var_3.a.b, vec2<bool>(var_4.x, var_2))), Struct_2(Struct_1(var_4.zxz, -2147483647i, var_4.wz)), false), Struct_2(Struct_1(var_6.a.a, var_7.a.b, var_4.xw))).c, Struct_4(Struct_2(var_7.a), Struct_2(var_7.a), !select(var_0, var_0, var_2)), Struct_2(Struct_1(var_4.zxz, var_7.a.b, func_1(vec2<bool>(var_0, var_2), Struct_4(Struct_2(var_3.a), Struct_2(var_3.a), var_4.x), Struct_2(var_7.a)).a.zz))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -932f)), _wgslsmith_f_op_f32(f32(-1f) * -653f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(811f, 971f) * vec2<f32>(1214f, 726f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-511f, -1890f))))));
}

