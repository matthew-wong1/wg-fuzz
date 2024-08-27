struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    var var_0 = any(!select(select(select(vec3<bool>(true, false, arg_0.a.b), vec3<bool>(arg_0.a.b, false, true), false), !vec3<bool>(arg_0.a.c.a.x, arg_0.a.c.c, true), vec3<bool>(arg_0.a.c.a.x, arg_0.a.c.c, arg_0.a.e.a.x)), vec3<bool>(false || arg_0.a.c.c, arg_2.x != 48987u, arg_0.a.e.a.x & arg_0.a.e.c), vec3<bool>(arg_0.a.c.c, arg_0.a.c.c, true)));
    var_0 = all(arg_0.a.c.a);
    var var_1 = arg_0.a.c.a;
    var_1 = select(select(arg_0.a.e.a, vec2<bool>(!all(vec3<bool>(arg_0.a.b, arg_0.a.c.a.x, true)), !arg_0.a.c.a.x), arg_0.a.c.a), vec2<bool>(any(vec4<bool>(false, arg_0.a.c.c, var_1.x, true)), true), all(!vec4<bool>(true, select(var_1.x, arg_0.a.e.a.x, false), all(vec3<bool>(false, true, true)), var_1.x)));
    let var_2 = true;
    return _wgslsmith_f_op_f32(sign(-1000f));
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = u_input.a;
    var_0 = u_input.a;
    var var_1 = Struct_3(~_wgslsmith_clamp_u32(~reverseBits(u_input.a), countOneBits(6542u), ~(~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-938f, -1857f), _wgslsmith_f_op_f32(abs(-466f)), arg_0.x | arg_0.x))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -918f) - _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(0u, true, Struct_1(vec2<bool>(false, false), vec2<i32>(u_input.b, -43238i), true), vec4<i32>(u_input.b, u_input.c, u_input.b, -28086i), Struct_1(vec2<bool>(true, false), vec2<i32>(u_input.b, 15401i), false))), 26676u, vec3<u32>(u_input.a, 30010u, u_input.a) & vec3<u32>(u_input.a, u_input.a, 1u)))), Struct_1(vec2<bool>((u_input.a >> (u_input.a % 32u)) < _wgslsmith_add_u32(1u, 1u), arg_0.x), (vec2<i32>(1i, 1i) << (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, u_input.a)) % vec2<u32>(32u))) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c, u_input.c), vec3<i32>(-1i, u_input.b, u_input.c)), 1i), any(arg_0.zy)), _wgslsmith_div_vec4_i32(firstLeadingBit(countOneBits(~vec4<i32>(u_input.b, 1i, 0i, -20615i))), vec4<i32>(0i, u_input.c << (u_input.a % 32u), ~abs(-707i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-17337i, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -29623i), vec2<i32>(-1i, 2147483647i))))), Struct_1(!select(vec2<bool>(true, false), arg_0.xz, select(vec2<bool>(true, arg_0.x), arg_0.yx, arg_0.x)), vec2<i32>((-2147483647i << (0u % 32u)) | _wgslsmith_add_i32(u_input.b, 1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, 12518i), vec2<i32>(17176i, -12285i))), !all(select(vec4<bool>(false, arg_0.x, false, true), vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(true, false, true, false)))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1000f))))) + 1472f)));
    var_1 = Struct_3(u_input.a, any(select(arg_0, arg_0, vec3<bool>(any(vec4<bool>(arg_0.x, var_1.b, false, var_1.c.a.x)), true && var_1.c.c, false))), var_1.c, var_1.d, Struct_1(select(vec2<bool>(4294967295u <= u_input.a, true), !select(vec2<bool>(true, false), var_1.c.a, false), !select(arg_0.yz, vec2<bool>(arg_0.x, true), vec2<bool>(true, arg_0.x))), ~var_1.c.b, true));
    return Struct_3(~var_1.a, true, Struct_1(select(vec2<bool>(true, true), vec2<bool>(!arg_0.x, arg_0.x), select(var_1.c.a, vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, arg_0.x))), firstTrailingBit(~(~var_1.d.ww)), true), vec4<i32>(u_input.b, -firstLeadingBit(-2147483647i), u_input.c, u_input.b), Struct_1(!var_1.c.a, var_1.c.b, true));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>) -> f32 {
    var var_0 = true;
    var var_1 = vec3<i32>(-(i32(-1i) * -2147483647i), ~(~(-u_input.b)), arg_0);
    let var_2 = Struct_4(func_2(!select(select(vec3<bool>(true, arg_1.b, arg_1.c.c), vec3<bool>(arg_1.c.c, true, true), true), select(vec3<bool>(arg_1.e.c, false, arg_1.e.c), vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(arg_1.c.a.x, false, arg_1.b)), vec3<bool>(arg_1.b, false, arg_1.b))));
    let var_3 = Struct_3(~firstLeadingBit(~min(arg_2.x, 4294967295u)), any(vec2<bool>(!all(vec3<bool>(false, arg_1.c.a.x, var_2.a.c.c)), select(false, false & var_2.a.c.c, true))), var_2.a.c, var_2.a.d, Struct_1(select(!vec2<bool>(var_2.a.e.c, var_2.a.e.c), !arg_1.c.a, vec2<bool>(func_2(vec3<bool>(arg_1.c.a.x, arg_1.b, var_2.a.b)).c.c, true & arg_1.b)), vec2<i32>(2147483647i, -51741i) | ~_wgslsmith_div_vec2_i32(arg_1.c.b, vec2<i32>(2147483647i, -2147483647i)), false));
    var var_4 = ~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_2.a.a, 1u, arg_2.x, arg_2.x) ^ (vec4<u32>(1u, var_2.a.a, var_2.a.a, 54674u) >> (vec4<u32>(18741u, arg_2.x, var_3.a, var_3.a) % vec4<u32>(32u)))), vec4<u32>(1u, _wgslsmith_div_u32(54579u, firstLeadingBit(arg_2.x)), 1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, 4328u), max(28529u, var_2.a.a))));
    return -906f;
}

fn func_5(arg_0: bool, arg_1: f32) -> bool {
    var var_0 = Struct_4(Struct_3(u_input.a, false, Struct_1(!(!vec2<bool>(arg_0, arg_0)), (vec2<i32>(-34334i, u_input.c) | vec2<i32>(21368i, u_input.b)) | ~vec2<i32>(2147483647i, 4161i), true), abs(vec4<i32>(-39464i, -80527i, -2236i, -2142i)) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 15946u, 4590u, 1u), vec4<u32>(u_input.a, 45440u, u_input.a, 25498u)) % vec4<u32>(32u)), func_2(vec3<bool>(any(vec2<bool>(arg_0, arg_0)), arg_0 && arg_0, true)).e));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(max(u_input.a, 63795u), _wgslsmith_sub_u32(u_input.a, 1u)), func_2(vec3<bool>(true, false, false)).a, 48900u, var_0.a.a), min(vec4<u32>(4294967295u, _wgslsmith_div_u32(u_input.a, 0u), ~u_input.a, ~u_input.a), min(vec4<u32>(4294967295u, u_input.a, var_0.a.a, 0u), vec4<u32>(var_0.a.a, 54535u, 4294967295u, 0u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.a, 23101u, u_input.a, 4294967295u), vec4<u32>(17034u, 4294967295u, var_0.a.a, var_0.a.a)))), var_0.a.a, firstLeadingBit(var_0.a.a), abs(~(~(~13881u))));
    let var_2 = select(!(!(!select(vec3<bool>(var_0.a.e.a.x, false, true), vec3<bool>(false, arg_0, false), vec3<bool>(true, var_0.a.c.c, true)))), !(!select(vec3<bool>(var_0.a.b, arg_0, arg_0), !vec3<bool>(var_0.a.b, true, true), true)), select(vec3<bool>(false, any(vec3<bool>(true, true, true)), false), vec3<bool>(true, !func_2(vec3<bool>(var_0.a.c.c, arg_0, var_0.a.c.c)).b, true), select(vec3<bool>(true, all(vec2<bool>(true, true)), arg_0), vec3<bool>(true && var_0.a.b, false, all(vec4<bool>(var_0.a.b, true, true, true))), true)));
    var_0 = Struct_4(Struct_3(~(~84325u), !(u_input.b == -1i) && true, var_0.a.c, var_0.a.d, func_2(select(var_2, var_2, var_2.x || true)).c));
    var var_3 = func_2(vec3<bool>(var_0.a.b, any(!(!vec2<bool>(false, var_2.x))), u_input.a != ~(var_1.x ^ 0u)));
    return any(!var_2);
}

fn func_1() -> vec2<i32> {
    var var_0 = vec3<f32>(-1728f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -289f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-869f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1864f, -640f)))), func_5(_wgslsmith_add_u32(u_input.a, 36238u) != u_input.a, _wgslsmith_f_op_f32(func_4(u_input.b, func_2(vec3<bool>(false, true, false)), vec3<u32>(14619u, 47351u, 24623u) ^ vec3<u32>(u_input.a, 1u, 0u)))))));
    let var_1 = 5561i;
    var var_2 = !func_5(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(342f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -2135f) * _wgslsmith_f_op_f32(1000f - var_0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(820f, 540f, var_0.x)));
    let var_3 = -vec3<i32>(-(~u_input.b >> (u_input.a % 32u)), -10632i, -u_input.b >> (u_input.a % 32u));
    return -vec2<i32>(~u_input.c, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(u_input.a, u_input.a, false || (_wgslsmith_f_op_f32(sign(1073f)) == _wgslsmith_f_op_f32(f32(-1f) * -639f))), false, Struct_1(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true), true), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 74409i), func_1()), true), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~select(vec4<i32>(-8584i, -81945i, u_input.b, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<bool>(true, false, false, true)), reverseBits(vec4<i32>(u_input.b, 1i, -12262i, u_input.b))), ~(~abs(vec4<i32>(-32829i, -25589i, -1i, u_input.b)))), Struct_1(vec2<bool>(true, true), vec2<i32>(~0i, countOneBits(u_input.c)), true));
    var var_1 = select(~vec3<i32>(-var_0.e.b.x & var_0.d.x, var_0.d.x, -6407i), ~min(-_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.e.b.x, 2147483647i, 9883i), vec3<i32>(var_0.d.x, var_0.c.b.x, var_0.d.x)), _wgslsmith_sub_vec3_i32(var_0.d.xzx, vec3<i32>(0i, u_input.c, u_input.c)) << ((vec3<u32>(34256u, 4294967295u, u_input.a) & vec3<u32>(0u, var_0.a, var_0.a)) % vec3<u32>(32u))), vec3<bool>(~u_input.c >= var_0.c.b.x, var_0.a <= ~1u, select(true, false, any(vec4<bool>(var_0.e.c, var_0.c.a.x, var_0.b, false)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1286f, -1254f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-361f, 2036f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-920f, -307f) + vec2<f32>(762f, -359f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, 570f)))))), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(var_0), _wgslsmith_div_u32(4294967295u, 4294967295u), vec3<u32>(59561u, var_0.a, u_input.a) | vec3<u32>(var_0.a, var_0.a, u_input.a))), _wgslsmith_f_op_f32(sign(796f))))));
    var var_3 = Struct_4(Struct_3(select(11283u, ~u_input.a, all(var_0.c.a)), var_0.e.c, var_0.e, vec4<i32>(~u_input.b, firstLeadingBit(u_input.c), _wgslsmith_add_i32(1i, var_0.e.b.x), 1i) << (abs(select(vec4<u32>(u_input.a, var_0.a, var_0.a, var_0.a), vec4<u32>(19790u, 18992u, 73353u, var_0.a), vec4<bool>(var_0.b, true, true, var_0.b))) % vec4<u32>(32u)), var_0.e));
    var var_4 = 513f;
    var_4 = -801f;
    var_1 = vec3<i32>(~(-(~u_input.c)), u_input.c, var_3.a.d.x | (countOneBits(-2147483647i) >> (func_2(vec3<bool>(var_3.a.c.a.x, true, true)).a % 32u))) ^ var_3.a.d.xyy;
    var var_5 = func_2(vec3<bool>(true, true, true)).c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec2_u32(~vec2<u32>(11475u, 4294967295u), firstTrailingBit(vec2<u32>(var_3.a.a, 64815u)))), 327f);
}

