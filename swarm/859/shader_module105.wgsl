struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    return 1i;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec2<i32>(~0i, _wgslsmith_mult_i32(select(func_3(u_input.b), -19145i, true), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, 19421i, 28193i, 87997i)), -vec4<i32>(16323i, 2147483647i, -9542i, -23725i)))), u_input.b, u_input.b.xy, select(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>((-2147483647i >> (u_input.d % 32u)) < ~4606i, true, false), u_input.c == (u_input.a >> (~u_input.d % 32u))));
    var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(var_0.a, var_0.a), ~(~var_0.a)), vec2<i32>(i32(-1i) * -var_0.a.x, ~1i), vec2<i32>(-35418i, var_0.a.x ^ 0i)), min(_wgslsmith_sub_vec3_u32(~(~u_input.b), vec3<u32>(var_0.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, 0u, 1u), vec4<u32>(22562u, 0u, 1u, 0u)), 1u)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.c, u_input.d, 20316u)), vec3<u32>(14250u, var_0.b.x, 4294967295u)) ^ select(_wgslsmith_div_vec3_u32(var_0.b, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c.x, u_input.a, 11179u), vec3<u32>(326u, 1u, u_input.d)), !var_0.d.x)), u_input.b.yx, !var_0.d);
    let var_1 = Struct_1(~var_0.a, abs(var_0.b), var_0.b.zx, vec3<bool>(true, var_0.d.x, var_0.d.x));
    var var_2 = ~reverseBits(var_1.a.x);
    var_2 = abs(max(_wgslsmith_dot_vec2_i32(abs(countOneBits(var_1.a)), vec2<i32>(~var_0.a.x, _wgslsmith_mod_i32(var_1.a.x, -60965i))), var_1.a.x));
    return _wgslsmith_clamp_i32(30858i, 0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_1.a.x, -52505i, -20775i)) ^ vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<i32>(15251i, ~15691i, var_1.a.x)), 1i));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(vec2<i32>(max(arg_1 | -13262i, func_2()), arg_1), u_input.b & u_input.b, firstTrailingBit(u_input.b.yz), vec3<bool>(false, arg_0, arg_2));
    let var_1 = any(var_0.d.yz);
    let var_2 = u_input.b.x;
    var var_3 = Struct_1(vec2<i32>(-(select(arg_1, 2147483647i, var_0.d.x) << (firstLeadingBit(u_input.d) % 32u)), var_0.a.x), ~vec3<u32>(max(~var_2, 18807u), var_0.b.x, 42936u), vec2<u32>(var_0.c.x, ~4294967295u), var_0.d);
    var_3 = Struct_1(var_3.a, u_input.b, _wgslsmith_mult_vec2_u32(~reverseBits(abs(u_input.b.xz)), var_0.c), vec3<bool>(24352i != _wgslsmith_dot_vec2_i32(var_3.a << (var_0.b.yx % vec2<u32>(32u)), var_0.a), var_3.c.x == 12651u, var_0.d.x | all(vec4<bool>(false, true, var_0.d.x, arg_0))));
    return Struct_1(var_0.a, ~var_0.b, firstLeadingBit(firstLeadingBit(reverseBits(vec2<u32>(var_3.b.x, 78436u)) & vec2<u32>(4294967295u, u_input.b.x))), !var_0.d);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> vec3<bool> {
    let var_0 = vec3<bool>(select(false, !select(true, true, false), false), false, false);
    var var_1 = func_4(select(arg_1 >= arg_1, !(!var_0.x), any(var_0.xx)), select(-1i, select(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -12086i, 1i), vec3<i32>(-2147483647i, -92564i, -13711i))), func_2(), true), !var_0.x), var_0.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1431f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1)))), arg_1, arg_1));
    var var_3 = ~0u & func_4(true, -2147483647i ^ var_1.a.x, select(!var_1.d.x, var_1.d.x, true) || true).c.x;
    var_3 = 0u >> (_wgslsmith_add_u32(arg_0.x, arg_0.x) % 32u);
    return select(!select(var_0, var_0, vec3<bool>(any(var_0), var_0.x, any(var_0))), select(func_4(true, 1i, any(select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_1.d.x, var_1.d.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_1.d.x, true)))).d, var_0, var_1.d.x), false);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = max(95948u, 0u);
    let var_1 = _wgslsmith_mult_vec3_u32(select(countOneBits(arg_3.b), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_3.b.x, 1u, arg_3.c.x), arg_3.b)), !func_4(arg_3.c.x >= 0u, -arg_2.x, true).d), arg_3.b);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-655f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -671f))));
    let var_3 = ~u_input.b.x;
    var var_4 = vec2<bool>(false, !arg_1.x);
    return Struct_1(arg_3.a, ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1682u, var_1.x), var_1) ^ 40142u, var_0, u_input.c), ~u_input.b.xz, arg_3.d);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -2147483647i < arg_0.a.x;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -577f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -881f))))))));
    var var_2 = func_4(!(!arg_0.d.x), abs(-12909i), !any(!func_1(vec4<u32>(u_input.d, 115337u, u_input.b.x, 31731u), var_1).yx));
    var_0 = false;
    var var_3 = arg_0;
    return func_5(!select(vec4<bool>(arg_0.d.x, true, true, var_3.d.x), select(vec4<bool>(var_2.d.x, false, true, arg_0.d.x), select(vec4<bool>(var_3.d.x, var_3.d.x, false, false), vec4<bool>(true, true, var_2.d.x, false), true), vec4<bool>(var_3.d.x, false, false, false)), true), !(!func_5(select(vec4<bool>(true, true, arg_0.d.x, true), vec4<bool>(true, false, arg_0.d.x, var_3.d.x), arg_0.d.x), vec3<bool>(arg_0.d.x, false, true), ~var_3.a, Struct_1(var_2.a, vec3<u32>(var_2.b.x, var_3.c.x, var_3.c.x), vec2<u32>(var_2.c.x, var_2.c.x), arg_0.d)).d), ~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(max(arg_0.a, arg_0.a), -vec2<i32>(var_3.a.x, 12993i)), firstTrailingBit(var_3.a)), Struct_1(~reverseBits(vec2<i32>(0i, 22443i) >> (var_3.b.zy % vec2<u32>(32u))), func_4(all(vec4<bool>(var_2.d.x, true, false, false)) & true, ~(-8221i), var_3.d.x).b, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yy, vec2<u32>(0u, arg_0.c.x)), ~arg_0.c), !func_5(select(vec4<bool>(var_2.d.x, var_3.d.x, false, var_2.d.x), vec4<bool>(false, false, var_3.d.x, true), true), vec3<bool>(var_3.d.x, true, true), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.a.x, arg_0.a.x), var_3.a), Struct_1(vec2<i32>(20359i, -2147483647i), vec3<u32>(4294967295u, 46623u, var_2.c.x), vec2<u32>(1u, arg_0.b.x), var_2.d)).d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, select(false, any(vec4<bool>(true, all(vec3<bool>(true, false, false)), false, true)), true));
    var var_1 = func_6(func_5(select(select(!vec4<bool>(false, true, false, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), !var_0.x), vec4<bool>(true, true, !var_0.x, u_input.d < u_input.d), vec4<bool>(true, var_0.x, var_0.x == true, false)), select(!vec3<bool>(true, var_0.x, false), vec3<bool>(any(vec2<bool>(true, var_0.x)), true, var_0.x), func_1(vec4<u32>(0u, 1u, u_input.d, u_input.b.x) | vec4<u32>(u_input.b.x, 21218u, u_input.a, 1u), -612f)), min(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 28612i, -2147483647i), vec3<i32>(-2147483647i, 28619i, 0i)), -31568i)), func_4(var_0.x, max(func_2(), firstLeadingBit(0i)), 1u != select(u_input.b.x, u_input.a, var_0.x))));
    let var_2 = var_1.d;
    var var_3 = func_5(select(select(!select(vec4<bool>(var_1.d.x, var_0.x, var_1.d.x, false), vec4<bool>(true, var_2.x, var_1.d.x, var_2.x), var_1.d.x), vec4<bool>(var_0.x, var_0.x, true, func_4(false, var_1.a.x, false).d.x), all(vec2<bool>(var_2.x, true))), vec4<bool>(true, var_1.d.x, all(vec4<bool>(var_0.x, var_0.x, true, var_2.x)), func_4(true, 1i, var_1.a.x > var_1.a.x).d.x), var_2.x), func_6(func_6(Struct_1(select(var_1.a, var_1.a, true), abs(vec3<u32>(4294967295u, 62199u, u_input.a)), vec2<u32>(u_input.d, var_1.b.x) ^ vec2<u32>(1u, u_input.d), var_1.d))).d, vec2<i32>(var_1.a.x, abs(func_2())), Struct_1(~vec2<i32>(-var_1.a.x, 2147483647i), vec3<u32>(u_input.c, ~(var_1.c.x | u_input.d), 0u | _wgslsmith_div_u32(9427u, var_1.c.x)), var_1.b.zz, !var_1.d));
    let var_4 = func_4(true, ~(var_1.a.x & 0i), false);
    let var_5 = ~func_6(var_4).c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_5, 0u, 1u, 33688u)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 54206u, 4753u, 53873u), vec4<u32>(var_4.c.x, 0u, 0u, u_input.a)), var_3.b.x, _wgslsmith_div_u32(var_5, 4294967295u), 25336u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_4.b.x, 1u), 1u), var_4.b.x, max(abs(43819u), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), ~43192u)), ~0u);
}

