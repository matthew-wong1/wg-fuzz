struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_3(true, Struct_1(true, vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, min(u_input.a, 0u)), 1u)), Struct_1(false, _wgslsmith_mult_vec2_u32(u_input.c.yz, ~reverseBits(u_input.c.ww))));
    var var_1 = ~(~u_input.e);
    let var_2 = 0u << (_wgslsmith_mult_u32(var_0.c.b.x, u_input.a) % 32u);
    let var_3 = vec4<bool>(var_0.b.a, !(all(vec4<bool>(false, false, var_0.c.a, var_0.c.a)) | any(!vec2<bool>(var_0.c.a, var_0.b.a))), !(true & any(!global0[_wgslsmith_index_u32(var_0.b.b.x, 23u)])), var_0.b.a);
    let var_4 = ~(~vec3<u32>(var_2, 33361u, 1u));
    return var_3.zz;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: i32) -> Struct_4 {
    let var_0 = select(global0[_wgslsmith_index_u32(countOneBits(~u_input.c.x), 23u)], select(vec4<bool>(true, any(func_3()), func_3().x, false), select(select(!global0[_wgslsmith_index_u32(0u, 23u)], vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, any(vec3<bool>(false, true, true)), any(vec3<bool>(false, true, true))), true), !select(!global0[_wgslsmith_index_u32(u_input.c.x, 23u)], vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), !global0[_wgslsmith_index_u32(reverseBits(~firstTrailingBit(u_input.c.x)), 23u)]);
    let var_1 = Struct_2(vec4<u32>(u_input.c.x, ~u_input.d, 19736u, max(~1u, _wgslsmith_clamp_u32(reverseBits(21608u), 9369u, ~u_input.a))), Struct_1(var_0.x, vec2<u32>(122876u, abs(_wgslsmith_mult_u32(u_input.c.x, 13284u)))));
    let var_2 = 1i;
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(~var_2, u_input.b), ~max(~(vec2<i32>(var_2, arg_2) >> (var_1.b.b % vec2<u32>(32u))), vec2<i32>(-1i) * -arg_1.wx));
    let var_4 = -_wgslsmith_mod_vec3_i32(reverseBits(arg_1.wxx), vec3<i32>(~arg_1.x, firstTrailingBit(0i), 1i)) | _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(~(~arg_1.wyz), vec3<i32>(var_3.x >> (1u % 32u), ~(-1i), -var_3.x), -firstTrailingBit(arg_0)), vec3<i32>(-24601i, ~abs(arg_0.x), _wgslsmith_div_i32(42388i, ~arg_2)));
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(vec3<i32>(_wgslsmith_mod_i32(u_input.e, u_input.b >> ((u_input.c.x & 1u) % 32u)), min(_wgslsmith_mod_i32(0i, -2147483647i | u_input.e), -u_input.e), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, 0i), firstTrailingBit(-32807i)), ~(~(-37534i)))), vec4<i32>(min(-2147483647i, u_input.b), u_input.e, u_input.b, u_input.e), _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, -47213i), vec2<i32>(u_input.e, u_input.e)) << (1u % 32u), countOneBits(u_input.e ^ -u_input.e)));
    var var_1 = Struct_5(Struct_1(true, vec2<u32>(~reverseBits(24768u), abs(_wgslsmith_clamp_u32(u_input.d, u_input.c.x, u_input.d)))), ~vec3<u32>(_wgslsmith_mult_u32(0u, ~u_input.a), min(~u_input.a, 1u), _wgslsmith_mult_u32(17355u, _wgslsmith_div_u32(1u, u_input.c.x))), select(!vec2<bool>(all(vec2<bool>(false, false)), true), !vec2<bool>(var_0.a >= -1043f, true), any(vec3<bool>(true, true, true))), firstLeadingBit(firstTrailingBit(~(~u_input.c.x))), u_input.a);
    let var_2 = var_1.c;
    var_1 = Struct_5(var_1.a, ~var_1.b, select(vec2<bool>(any(global0[_wgslsmith_index_u32(14303u, 23u)]), var_1.a.a), var_1.c, select(select(!vec2<bool>(var_2.x, false), var_1.c, vec2<bool>(true, true)), vec2<bool>(true, true), select(var_1.c, var_1.c, 22272i > u_input.e))), firstLeadingBit(countOneBits(var_1.e)), 1u);
    let var_3 = 1u | firstLeadingBit(max(u_input.d, ~u_input.d | reverseBits(1u)));
    return Struct_1(!(_wgslsmith_dot_vec3_i32(~vec3<i32>(3088i, u_input.b, u_input.e), ~vec3<i32>(u_input.b, u_input.e, u_input.e)) <= (_wgslsmith_add_i32(39424i, 24498i) >> (countOneBits(0u) % 32u))), ~(~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(73462u, 4294967295u), var_1.b.xx), vec2<u32>(u_input.d, 78798u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 23>();
    var var_0 = Struct_5(func_1(), vec3<u32>(_wgslsmith_mod_u32(~countOneBits(u_input.a), _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(0u, u_input.d))), 4294967295u, _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.a, 1u), 2647u, u_input.d)), select(!vec2<bool>(func_1().a, any(vec3<bool>(false, false, false))), vec2<bool>(true, true), true), 96412u, select(u_input.a, ~u_input.d, any(vec4<bool>(true, false, func_3().x, true))));
    var var_1 = u_input.a;
    global0 = array<vec4<bool>, 23>();
    var var_2 = Struct_2(~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.a.b.x, 66404u, 18637u, u_input.a), vec4<u32>(17157u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, var_0.a.b.x), u_input.c.xwz), var_0.b.x, ~var_0.a.b.x)), Struct_1(!(!(!var_0.c.x)), min(vec2<u32>(select(var_0.d, var_0.d, var_0.c.x), var_0.b.x), var_0.a.b)));
    var_0 = Struct_5(Struct_1(true, abs(var_0.b.zy)), select(firstLeadingBit((var_0.b ^ vec3<u32>(35428u, 13846u, var_2.a.x)) | (u_input.c.yyw & u_input.c.xyz)), ~(~var_2.a.wzz) | vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(var_0.a.b, var_2.b.b), ~41730u), reverseBits(19138u) >= countOneBits(u_input.a | var_0.a.b.x)), !(!select(var_0.c, var_0.c, vec2<bool>(true, var_0.c.x))), 16305u, _wgslsmith_sub_u32(var_0.e, var_2.b.b.x & func_1().b.x));
    let var_3 = var_2.b.a & !func_3().x;
    let var_4 = Struct_2(var_2.a, Struct_1(func_1().a, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), u_input.c.x), ~abs(vec2<u32>(var_2.b.b.x, 1980u)))));
    var var_5 = abs(var_2.b.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(u_input.e, u_input.e, u_input.e, ~0i), u_input.c.xyy, reverseBits(1u), min(~u_input.b, u_input.b), 2147483647i);
}

