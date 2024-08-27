struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: array<vec4<u32>, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> vec3<f32> {
    global0 = array<vec2<bool>, 10>();
    let var_0 = select(select(select(!(!vec3<bool>(true, arg_1, true)), select(vec3<bool>(arg_1, false, true), vec3<bool>(true, arg_1, false), vec3<bool>(true, arg_1, arg_1)), !select(vec3<bool>(arg_1, false, true), vec3<bool>(false, arg_1, false), true)), select(!vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, select(false, false, arg_1)), any(select(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<bool>(arg_1, true), vec2<bool>(arg_1, false)))), vec3<bool>(false, !arg_1, _wgslsmith_f_op_f32(sign(1539f)) == _wgslsmith_f_op_f32(step(-1000f, arg_0.x)))), vec3<bool>((all(vec4<bool>(arg_1, arg_1, true, arg_1)) | all(vec4<bool>(false, false, arg_1, false))) && (true && arg_1), arg_1, true), true);
    let var_1 = _wgslsmith_sub_vec3_i32(max(_wgslsmith_sub_vec3_i32(~(-vec3<i32>(-72059i, u_input.a, u_input.a)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 16546i), vec3<i32>(0i, 12116i, -1i)), -1i, u_input.a)), firstLeadingBit(vec3<i32>(~10858i, u_input.a, 20474i))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a, -2147483647i, 1i), _wgslsmith_add_vec3_i32(~(~vec3<i32>(39163i, -26940i, -2147483647i)), vec3<i32>(abs(-23102i), u_input.a, firstTrailingBit(-39949i)))));
    global0 = array<vec2<bool>, 10>();
    let var_2 = Struct_5(false, Struct_4(any(!var_0), arg_0.x, u_input.b.x), !(!vec4<bool>(true, any(vec2<bool>(var_0.x, true)), arg_1, !arg_1)), Struct_2(!(u_input.a > (var_1.x >> (9710u % 32u))), Struct_1(var_1.x)));
    return arg_0.xxy;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<bool>) -> vec3<u32> {
    let var_0 = !(421f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))) - _wgslsmith_f_op_f32(select(887f, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), arg_3.x))));
    let var_1 = vec2<i32>(-_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(-18029i, ~(~1612i)) >> ((min(1u, 0u) | u_input.b.x) % 32u));
    var var_2 = select(select(vec3<bool>(true, !all(vec2<bool>(var_0, false)), var_0), arg_3, arg_2), arg_3, select(vec3<bool>(true || var_0, false, var_0), arg_3, var_0));
    global0 = array<vec2<bool>, 10>();
    let var_3 = ~vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.b.x), vec3<u32>(14164u, arg_1.x, arg_1.x))), 30416u);
    return ~(vec3<u32>(countOneBits(arg_1.x), countOneBits(u_input.b.x), ~var_3.x) | abs(vec3<u32>(1u, arg_1.x, _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(var_3.x, u_input.b.x, 8512u, 4294967295u)))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = true;
    var var_1 = u_input.b << (func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(arg_2, arg_1, 491f, -654f), true))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, 14186u)), global1[_wgslsmith_index_u32(~u_input.b.x, 18u)], abs(global1[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2)) != 246f, vec3<bool>(true, all(vec3<bool>(arg_3.x, arg_3.x, true)) & true, true)) % vec3<u32>(32u));
    global1 = array<vec4<u32>, 18>();
    let var_2 = -u_input.a;
    var var_3 = vec3<i32>(arg_0.a, arg_0.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, -arg_0.a) | ~_wgslsmith_mult_i32(-2915i, u_input.a), _wgslsmith_mod_i32(countOneBits(_wgslsmith_mod_i32(-24312i, var_2)), -u_input.a)));
    return Struct_3(Struct_2(!arg_3.x == arg_3.x, arg_0), 6454i);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<f32>) -> f32 {
    var var_0 = abs(~(~26001u | _wgslsmith_sub_u32(152007u, arg_0.x)) ^ _wgslsmith_div_u32(u_input.b.x, u_input.b.x << (func_4(vec3<f32>(arg_2.x, 1962f, -274f), vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.b.x), arg_1.a.a, vec3<bool>(arg_1.a.a, false, arg_1.a.a)).x % 32u)));
    let var_1 = Struct_3(Struct_2(arg_1.a.a, arg_1.a.b), _wgslsmith_add_i32(u_input.a, u_input.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-168f - arg_2.x) - -1664f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_3.x)), _wgslsmith_f_op_f32(step(807f, arg_2.x))))))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1679f, _wgslsmith_f_op_f32(func_5(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 4294967295u) >> (vec4<u32>(u_input.b.x, 33200u, 0u, u_input.b.x) % vec4<u32>(32u)), func_2(Struct_1(arg_0.a.b.a), _wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_div_f32(arg_1, arg_1), vec3<bool>(arg_2, false, arg_0.a.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1003f, arg_1, 1000f) - vec3<f32>(1231f, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -640f, arg_1, 732f), vec4<f32>(arg_1, -160f, arg_1, -1019f), arg_2)))))));
    var var_2 = ~(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-11803i, -2147483647i, 15566i), _wgslsmith_add_vec3_i32(vec3<i32>(4859i, -1i, arg_0.a.b.a), vec3<i32>(-2147483647i, arg_0.b, arg_0.a.b.a))), _wgslsmith_sub_vec3_i32(~vec3<i32>(arg_0.a.b.a, -2147483647i, u_input.a), vec3<i32>(-59752i, 22532i, arg_0.b))) >> (vec3<u32>(~var_0.x, abs(4294967295u), u_input.b.x) % vec3<u32>(32u)));
    var var_3 = arg_0.a.b.a;
    var var_4 = var_1.x;
    return Struct_2(arg_0.a.a, func_2(func_2(Struct_1(2147483647i), -161f, 1000f, vec3<bool>(true, true, true)).a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(-arg_1), select(select(!vec3<bool>(true, true, arg_2), vec3<bool>(true, true, true), !arg_2), !(!vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a)), vec3<bool>(true, false, all(vec4<bool>(arg_2, arg_2, true, true))))).a.b);
}

fn func_6(arg_0: i32, arg_1: Struct_5) -> bool {
    let var_0 = abs(0u) ^ u_input.b.x;
    global1 = array<vec4<u32>, 18>();
    var var_1 = Struct_5(all(arg_1.c), arg_1.b, select(vec4<bool>(false, !arg_1.b.a, arg_1.d.a, arg_1.b.a), select(arg_1.c, vec4<bool>(any(vec2<bool>(true, true)), false && arg_1.d.a, arg_1.b.a, arg_1.c.x), select(select(arg_1.c, arg_1.c, vec4<bool>(arg_1.b.a, true, false, false)), select(arg_1.c, vec4<bool>(false, false, arg_1.c.x, arg_1.b.a), arg_1.a), !vec4<bool>(arg_1.d.a, arg_1.b.a, false, false))), arg_1.c), arg_1.d);
    var_1 = Struct_5(any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.b.c, 1u, _wgslsmith_clamp_u32(u_input.b.x, 0u, 2034u)), ~vec4<u32>(4294967295u, var_0, u_input.b.x, 53570u) & ~global1[_wgslsmith_index_u32(0u, 18u)]), 10u)]), var_1.b, !select(!select(vec4<bool>(false, var_1.a, false, var_1.a), var_1.c, arg_1.c), arg_1.c, true), func_1(Struct_3(func_2(func_2(Struct_1(arg_1.d.b.a), arg_1.b.b, 1429f, vec3<bool>(arg_1.c.x, var_1.d.a, true)).a.b, -2654f, _wgslsmith_div_f32(var_1.b.b, var_1.b.b), select(vec3<bool>(var_1.c.x, false, arg_1.c.x), vec3<bool>(true, var_1.d.a, true), vec3<bool>(arg_1.c.x, true, false))).a, _wgslsmith_add_i32(-var_1.d.b.a, -17405i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b.b, var_1.b.b)) * _wgslsmith_f_op_f32(func_5(vec4<u32>(var_0, 1u, 12305u, var_1.b.c), Struct_3(Struct_2(arg_1.b.a, Struct_1(2147483647i)), 4767i), vec3<f32>(1000f, var_1.b.b, arg_1.b.b), vec4<f32>(868f, arg_1.b.b, 616f, 2353f)))) + arg_1.b.b), all(var_1.c)));
    let var_2 = Struct_5(!(-35599i != firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_1.d.b.a, 0i), vec4<i32>(var_1.d.b.a, 2147483647i, var_1.d.b.a, arg_0)))), Struct_4(true, _wgslsmith_f_op_f32(-749f * -2295f), var_0), vec4<bool>(true, !arg_1.a, true, arg_1.b.b >= arg_1.b.b), func_2(arg_1.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(559f))), var_1.b.b, var_1.c.wwy).a);
    return var_2.d.a;
}

fn func_7(arg_0: bool, arg_1: i32, arg_2: Struct_4, arg_3: vec4<i32>) -> vec3<bool> {
    global0 = array<vec2<bool>, 10>();
    let var_0 = vec2<i32>(u_input.a, -2147483647i);
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.b.yx, u_input.b.zy, _wgslsmith_mult_vec2_u32(reverseBits(select(~u_input.b.xz, ~vec2<u32>(33284u, arg_2.c), select(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(54116u, 10u)], arg_0))), ~u_input.b.xx));
    let var_2 = _wgslsmith_f_op_f32(sign(arg_2.b));
    var var_3 = Struct_1(-func_1(Struct_3(func_2(Struct_1(0i), arg_2.b, var_2, vec3<bool>(arg_2.a, arg_0, true)).a, u_input.a), arg_2.b, false).b.a);
    return vec3<bool>(func_2(Struct_1(-90158i), arg_2.b, _wgslsmith_f_op_f32(-782f * -604f), vec3<bool>(arg_2.a, all(vec3<bool>(true, arg_2.a, false)), any(vec4<bool>(false, false, arg_0, false)))).a.a, any(vec3<bool>(arg_0, func_2(Struct_1(arg_3.x), arg_2.b, -768f, !vec3<bool>(arg_0, false, arg_2.a)).a.a, false)), func_1(Struct_3(func_1(Struct_3(Struct_2(true, Struct_1(76786i)), arg_1), arg_2.b, false), -_wgslsmith_clamp_i32(var_0.x, var_0.x, arg_3.x)), arg_2.b, arg_0).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(true || func_6(-_wgslsmith_div_i32(5541i, u_input.a), Struct_5(true, Struct_4(false, -760f, u_input.b.x), vec4<bool>(true, true, false, false), func_1(Struct_3(Struct_2(true, Struct_1(-2147483647i)), 0i), -1410f, false))), _wgslsmith_div_i32(-firstLeadingBit(u_input.a >> (15538u % 32u)), -2147483647i), Struct_4(true, _wgslsmith_f_op_f32(f32(-1f) * -688f), u_input.b.x), vec4<i32>(u_input.a, _wgslsmith_mod_i32(~u_input.a, u_input.a) ^ -30362i, u_input.a, u_input.a));
    let var_1 = vec4<i32>(-u_input.a, u_input.a, u_input.a, u_input.a);
    global0 = array<vec2<bool>, 10>();
    global0 = array<vec2<bool>, 10>();
    var var_2 = !vec3<bool>(!func_2(func_2(Struct_1(-17357i), 1434f, -166f, vec3<bool>(var_0.x, true, false)).a.b, _wgslsmith_f_op_f32(floor(-1326f)), _wgslsmith_f_op_f32(-649f + 568f), !vec3<bool>(true, false, var_0.x)).a.a, var_0.x, var_0.x);
    var_0 = vec3<bool>(var_2.x, true, var_2.x);
    var var_3 = Struct_4(var_2.x || func_6(-_wgslsmith_add_i32(u_input.a, u_input.a), Struct_5(true, Struct_4(var_2.x, 208f, u_input.b.x), select(vec4<bool>(var_2.x, false, var_2.x, false), vec4<bool>(false, var_0.x, true, true), var_0.x), Struct_2(true, Struct_1(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-259f, -1244f, var_2.x)), _wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(-3018f, -1000f, 137f, 664f), false)).x)))), 20502u);
    let var_4 = -1300f;
    global1 = array<vec4<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, var_3.c, var_3.c), global1[_wgslsmith_index_u32(var_3.c, 18u)]), func_2(func_1(Struct_3(Struct_2(var_3.a, Struct_1(-12411i)), 35473i), var_4, var_2.x).b, 177f, var_3.b, vec3<bool>(var_0.x, false, false)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-770f, var_4, var_4), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, var_3.b, 1050f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-835f, 259f, var_3.b, -1954f))))))) * -880f));
}

