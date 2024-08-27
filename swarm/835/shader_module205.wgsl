struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(72841i, 50207i, -39227i, 16155i), vec4<u32>(52205u, 1u, 1u, 4910u), true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> u32 {
    let var_0 = vec2<bool>(global0.c, arg_1.d & true);
    var var_1 = ~(arg_1.e.zy ^ firstLeadingBit(~(vec2<i32>(global0.a.x, 1i) ^ arg_1.e.xz)));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, arg_1.c.x, global0.b.x) << (~firstTrailingBit(arg_1.c) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(0u, 36479u, global0.b.x)) << (reverseBits(vec3<u32>(1u, 26762u, global0.b.x)) % vec3<u32>(32u)), vec3<u32>(0u, arg_1.c.x, u_input.d) | arg_1.b.b.ywy, select(select(arg_1.c, global0.b.zyw, vec3<bool>(true, global0.c, global0.c)), ~vec3<u32>(22282u, global0.b.x, u_input.a), vec3<bool>(global0.c, arg_0, true)))), _wgslsmith_dot_vec4_u32(firstLeadingBit(~(vec4<u32>(0u, 1u, u_input.a, 13661u) << (vec4<u32>(0u, u_input.a, u_input.d, 0u) % vec4<u32>(32u)))), abs(~vec4<u32>(0u, 0u, u_input.a, 47460u) ^ vec4<u32>(38532u, 11966u, 1u, global0.b.x))), global0.b.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1457f))) - 1f))), -2072f, _wgslsmith_div_f32(-1196f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1945f)) - _wgslsmith_f_op_f32(f32(-1f) * -1014f))));
    var_1 = vec2<i32>(countOneBits(2147483647i >> (var_2.x % 32u)), -27882i) | global0.a.xz;
    return var_2.x;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(global0.a, max(vec4<u32>(func_3(global0.c, Struct_3(4294967295u, Struct_1(global0.a, vec4<u32>(u_input.a, 11945u, u_input.a, 4294967295u), global0.c), vec3<u32>(0u, 0u, 23280u), global0.c, global0.a.yww)) ^ _wgslsmith_clamp_u32(0u, u_input.a, global0.b.x), 1u, ~select(global0.b.x, 4294967295u, true), 7690u), vec4<u32>(global0.b.x, u_input.a, ~(u_input.a & global0.b.x), ~u_input.d)), select(global0.c, !(u_input.d <= 4294967295u), all(select(vec3<bool>(false, true, global0.c), vec3<bool>(false, false, global0.c), vec3<bool>(true, true, true)))) & true);
    var var_0 = Struct_3(global0.b.x, Struct_1(~(global0.a ^ global0.a) ^ global0.a, vec4<u32>(~0u, select(u_input.a, 30186u, global0.c), u_input.a, reverseBits(u_input.d)) & firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(14399u, 4294967295u, 0u, global0.b.x), global0.b)), !all(select(vec4<bool>(global0.c, global0.c, true, global0.c), vec4<bool>(false, global0.c, global0.c, true), true))), vec3<u32>(~abs(~global0.b.x), 38160u, 0u), !(1u >= ~global0.b.x) | any(vec4<bool>(true, true, true, true)), ~vec3<i32>(firstTrailingBit(u_input.c) << (~4294967295u % 32u), _wgslsmith_dot_vec4_i32(min(global0.a, vec4<i32>(global0.a.x, u_input.c, 0i, global0.a.x)), vec4<i32>(global0.a.x, -2147483647i, u_input.b, u_input.c)), _wgslsmith_dot_vec2_i32(global0.a.xz ^ vec2<i32>(global0.a.x, u_input.c), -global0.a.xz)));
    var var_1 = var_0.b;
    var_0 = Struct_3(1u, Struct_1(var_0.b.a, vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.x, global0.b.x, global0.b.x), global0.b.wxz), var_0.c >> (var_1.b.wzz % vec3<u32>(32u))), ~(~55965u), var_1.b.x, global0.b.x), true), vec3<u32>(max(reverseBits(_wgslsmith_mod_u32(var_1.b.x, 67209u)), var_1.b.x), ~var_0.c.x, var_0.c.x), !global0.c, -var_0.e);
    let var_2 = Struct_1(-firstTrailingBit(reverseBits(firstTrailingBit(vec4<i32>(-37950i, global0.a.x, -16768i, var_1.a.x)))), reverseBits(firstTrailingBit(vec4<u32>(~70773u, 24214u >> (var_1.b.x % 32u), ~var_1.b.x, _wgslsmith_mult_u32(10136u, u_input.d)))), global0.a.x >= _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-80701i, global0.a.x, u_input.b), var_1.a.wwy), vec3<i32>(0i, _wgslsmith_clamp_i32(global0.a.x, -25984i, var_1.a.x), -1i)));
    return Struct_1(global0.a, abs(_wgslsmith_mod_vec4_u32(var_0.b.b, select(vec4<u32>(global0.b.x, 1u, u_input.a, var_2.b.x), global0.b << (vec4<u32>(14711u, var_1.b.x, 0u, 70199u) % vec4<u32>(32u)), var_0.b.c))), any(vec4<bool>(true, var_2.c, true, !global0.c)));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = abs(arg_2.a.xyy >> (global0.b.xxz % vec3<u32>(32u)));
    var var_1 = reverseBits((firstTrailingBit(~1u) | arg_2.b.x) >> (0u % 32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(trunc(arg_1.x)), true)));
    var var_3 = Struct_2(0u, arg_2, arg_2);
    var_3 = Struct_2(52537u, Struct_1(-var_3.c.a, ~arg_2.b, true), var_3.c);
    return -arg_2.a.x;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>) -> u32 {
    global0 = Struct_1(vec4<i32>(~global0.a.x, abs(arg_0), _wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(global0.a, global0.a), vec4<i32>(-23501i, -56912i, -15387i, u_input.b), true), vec4<i32>(abs(41922i), 1i, ~arg_1.x, i32(-1i) * -25981i)), 22998i), firstTrailingBit(vec4<u32>(min(75598u, global0.b.x), (4294967295u & u_input.a) | ~global0.b.x, min(global0.b.x, 4294967295u), select(802u, 0u, any(vec2<bool>(global0.c, true))))), true);
    global0 = Struct_1(~(~global0.a) << (global0.b % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(select(max(~vec4<u32>(20324u, 1u, global0.b.x, 87435u), ~vec4<u32>(4294967295u, u_input.a, global0.b.x, u_input.d)), global0.b, vec4<bool>(any(vec3<bool>(global0.c, global0.c, global0.c)), global0.c, global0.c && global0.c, global0.c && true)), vec4<u32>(~u_input.d, func_2().b.x, 38800u ^ global0.b.x, func_3(global0.c, Struct_3(54687u, Struct_1(vec4<i32>(-1i, -1i, global0.a.x, arg_1.x), global0.b, true), global0.b.zzw, true, global0.a.wyy)))), any(vec4<bool>(any(vec4<bool>(global0.c, true, true, global0.c)), true, all(vec2<bool>(false, global0.c)), true)) & global0.c);
    let var_0 = global0.a.x;
    var var_1 = !(!(!select(select(vec4<bool>(false, global0.c, true, global0.c), vec4<bool>(global0.c, global0.c, true, false), global0.c), vec4<bool>(false, global0.c, true, global0.c), select(vec4<bool>(false, global0.c, true, false), vec4<bool>(global0.c, global0.c, false, global0.c), vec4<bool>(global0.c, true, false, false)))));
    var var_2 = abs(_wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, arg_1.x), u_input.c)) & (i32(-1i) * -6385i);
    return firstLeadingBit(~u_input.a);
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    global0 = arg_2;
    return Struct_2(~select(~(~arg_2.b.x), 4294967295u, all(!vec4<bool>(arg_1.d, arg_3.b.c, global0.c, false))), func_2(), arg_2);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = func_6(func_5(-func_4(4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1666f, -162f) - vec2<f32>(-1054f, -366f)), func_2()), abs(abs(vec2<i32>(40597i, arg_3.x) << (arg_2.b.xy % vec2<u32>(32u))))), Struct_3(12088u >> (abs(~4294967295u) % 32u), Struct_1(global0.a, global0.b, arg_0), ~global0.b.zyx, true, _wgslsmith_div_vec3_i32(min(arg_2.a.yzw, ~arg_3), arg_3)), arg_2, Struct_3(~u_input.a, func_2(), firstLeadingBit(vec3<u32>(abs(4418u), 10433u, 74400u)), all(vec4<bool>(true, !global0.c, arg_0, arg_2.c || arg_0)), -max(func_2().a.zzy, _wgslsmith_sub_vec3_i32(global0.a.yzy, vec3<i32>(global0.a.x, arg_1, u_input.c)))));
    var var_1 = Struct_1(firstLeadingBit(var_0.b.a) | var_0.c.a, ~arg_2.b << (select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 22607u, u_input.a, var_0.a), vec4<u32>(1u, 124782u, 58930u, arg_2.b.x)) | vec4<u32>(105576u, 48149u, 23815u, 1u), func_2().b, true) % vec4<u32>(32u)), var_0.b.c);
    let var_2 = func_6(u_input.a, Struct_3(~4294967295u, func_2(), max(vec3<u32>(~u_input.a, global0.b.x, 0u | u_input.a), _wgslsmith_mod_vec3_u32(var_0.b.b.wyz & var_0.b.b.zwy, vec3<u32>(4153u, 64223u, var_0.c.b.x))), arg_2.c, -_wgslsmith_sub_vec3_i32(var_1.a.zyy, vec3<i32>(2147483647i, 2147483647i, arg_3.x))), func_6(~19676u, Struct_3(var_1.b.x, func_2(), vec3<u32>(~1u, func_3(global0.c, Struct_3(1u, arg_2, vec3<u32>(var_0.a, arg_2.b.x, var_1.b.x), arg_0, vec3<i32>(-1i, 1i, 0i))), 1u), all(vec4<bool>(false, arg_0, false, true)), _wgslsmith_sub_vec3_i32(max(global0.a.wyx, var_1.a.zyy), var_1.a.wyw)), var_0.c, Struct_3(u_input.a >> (_wgslsmith_add_u32(arg_2.b.x, 1u) % 32u), var_0.b, ~global0.b.yyz, func_6(~var_0.b.b.x, Struct_3(50622u, Struct_1(vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, 1295i), vec4<u32>(global0.b.x, var_0.b.b.x, u_input.a, arg_2.b.x), var_1.c), global0.b.xyz, true, arg_2.a.xzz), var_0.b, Struct_3(arg_2.b.x, Struct_1(vec4<i32>(var_1.a.x, -3950i, arg_2.a.x, 1i), vec4<u32>(var_1.b.x, 4294967295u, 1u, var_0.b.b.x), false), vec3<u32>(u_input.a, 66491u, var_1.b.x), true, var_0.b.a.yxw)).b.c, min(_wgslsmith_mod_vec3_i32(var_1.a.zzw, arg_3), vec3<i32>(var_0.c.a.x, global0.a.x, global0.a.x)))).b, Struct_3(global0.b.x, Struct_1(vec4<i32>(_wgslsmith_sub_i32(2147483647i, arg_2.a.x), 9585i >> (0u % 32u), global0.a.x >> (arg_2.b.x % 32u), global0.a.x), vec4<u32>(~19557u, ~var_1.b.x, ~4294967295u, 1u), !global0.c), reverseBits(select(~var_1.b.wwx, countOneBits(global0.b.xxw), false)), u_input.c >= 2147483647i, select(global0.a.yzx, vec3<i32>(-arg_2.a.x, _wgslsmith_sub_i32(var_0.b.a.x, -2147483647i), 0i & u_input.b), !select(vec3<bool>(arg_0, arg_2.c, true), vec3<bool>(true, false, false), vec3<bool>(global0.c, true, arg_0)))));
    let var_3 = Struct_2(1u, var_0.c, var_0.c);
    var var_4 = arg_2;
    return Struct_1(func_6(4294967295u, Struct_3(func_3(var_3.b.c, Struct_3(var_0.a, var_0.b, global0.b.yzx, var_2.b.c, global0.a.zzw)), var_2.b, ~var_4.b.yzx, var_2.b.c, vec3<i32>(-1i) * -vec3<i32>(var_4.a.x, -2147483647i, -12805i)), Struct_1(firstLeadingBit(vec4<i32>(0i, arg_2.a.x, arg_3.x, var_2.c.a.x)), abs(~vec4<u32>(var_0.b.b.x, 18899u, 1u, var_4.b.x)), var_4.c), Struct_3(firstLeadingBit(_wgslsmith_mod_u32(37909u, var_4.b.x)), Struct_1(var_0.b.a, var_4.b, false && arg_2.c), ~vec3<u32>(24393u, var_2.b.b.x, var_1.b.x), var_2.c.c, ~(vec3<i32>(global0.a.x, global0.a.x, -63136i) >> (var_4.b.ywx % vec3<u32>(32u))))).b.a, firstLeadingBit(global0.b) | (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.b.x, 1u, var_4.b.x, var_4.b.x), vec4<u32>(var_4.b.x, var_2.b.b.x, 4294967295u, 0u))) << (arg_2.b % vec4<u32>(32u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.c, 1i, Struct_1(global0.a, ~global0.b, true), max(global0.a.wwx, -vec3<i32>(2147483647i, global0.a.x, u_input.c ^ global0.a.x)));
    var var_0 = func_1(any(vec4<bool>(any(vec3<bool>(false, true, global0.c)), !(!global0.c), any(!vec4<bool>(true, true, global0.c, true)), (global0.c && false) || false)), select(global0.a.x, -select(u_input.b & 0i, func_1(global0.c, -1i, Struct_1(global0.a, global0.b, global0.c), global0.a.yzz).a.x, true), true), func_6(~(firstTrailingBit(0u) << (~17693u % 32u)), Struct_3(~_wgslsmith_div_u32(27246u, global0.b.x), Struct_1(func_6(u_input.d, Struct_3(u_input.a, Struct_1(global0.a, global0.b, true), vec3<u32>(global0.b.x, global0.b.x, 0u), global0.c, global0.a.xyw), Struct_1(vec4<i32>(45287i, 816i, 13002i, 720i), global0.b, global0.c), Struct_3(0u, Struct_1(vec4<i32>(u_input.c, 2147483647i, 0i, u_input.b), vec4<u32>(1u, 32907u, 4294967295u, 35536u), global0.c), vec3<u32>(u_input.a, u_input.a, 1u), global0.c, global0.a.wxz)).c.a, vec4<u32>(global0.b.x, 9519u, 0u, 35297u), !global0.c), vec3<u32>(~17848u, firstLeadingBit(global0.b.x), global0.b.x), true, func_1(true, _wgslsmith_dot_vec3_i32(global0.a.xyz, global0.a.zzw), func_6(u_input.a, Struct_3(global0.b.x, Struct_1(vec4<i32>(-426i, 2147483647i, -41691i, global0.a.x), global0.b, true), vec3<u32>(global0.b.x, u_input.d, 4294967295u), true, global0.a.zxy), Struct_1(global0.a, vec4<u32>(4294967295u, 11974u, 83347u, global0.b.x), false), Struct_3(global0.b.x, Struct_1(vec4<i32>(u_input.c, u_input.c, -2310i, global0.a.x), global0.b, global0.c), vec3<u32>(global0.b.x, 0u, u_input.d), global0.c, vec3<i32>(global0.a.x, -4929i, -25636i))).c, global0.a.xzy).a.ywx), Struct_1(~(~vec4<i32>(1i, 41857i, 18429i, u_input.c)), ~abs(vec4<u32>(68480u, 50479u, u_input.a, 29058u)), true), Struct_3(select(~u_input.d, 14147u, global0.c), func_6(_wgslsmith_sub_u32(global0.b.x, u_input.a), Struct_3(1u, Struct_1(global0.a, global0.b, global0.c), global0.b.xzz, true, vec3<i32>(u_input.c, -79170i, global0.a.x)), func_2(), Struct_3(global0.b.x, Struct_1(vec4<i32>(4901i, -2147483647i, global0.a.x, 4459i), vec4<u32>(global0.b.x, 88134u, 38353u, 13703u), global0.c), global0.b.yxy, global0.c, vec3<i32>(-56701i, u_input.c, 27931i))).b, global0.b.wwz, true, vec3<i32>(_wgslsmith_div_i32(-1i, -10995i), global0.a.x ^ 2147483647i, 2147483647i))).c, vec3<i32>(countOneBits(-1i), -19587i, 55728i));
    global0 = Struct_1(_wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(u_input.b, _wgslsmith_clamp_i32(39510i, global0.a.x, i32(-1i) * -22988i), ~global0.a.x, _wgslsmith_clamp_i32(var_0.a.x, u_input.b, -16470i) ^ firstLeadingBit(-2147483647i))), vec4<u32>(_wgslsmith_div_u32(u_input.a, 1u), global0.b.x | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 29647u, var_0.b.x), var_0.b.wzw), func_2().b.x, ~func_5(var_0.a.x, vec2<i32>(-19504i, var_0.a.x)) >> (4294967295u % 32u)), !(global0.c != false));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(330f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(872f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, -510f, func_6(0u, Struct_3(4294967295u, Struct_1(vec4<i32>(9327i, var_0.a.x, global0.a.x, -7093i), var_0.b, false), var_0.b.yyx, false, global0.a.wyx), Struct_1(vec4<i32>(-7643i, u_input.b, 0i, var_0.a.x), vec4<u32>(var_0.b.x, 0u, global0.b.x, 1u), false), Struct_3(4294967295u, Struct_1(var_0.a, vec4<u32>(11353u, var_0.b.x, u_input.a, u_input.d), true), var_0.b.yxw, false, vec3<i32>(u_input.c, global0.a.x, 1i))).b.c)))));
    var var_2 = Struct_3(~32446u, Struct_1(~vec4<i32>(~(-5337i), _wgslsmith_sub_i32(1i, global0.a.x), _wgslsmith_add_i32(-11542i, -35095i), 0i), ~var_0.b | func_6(~global0.b.x, Struct_3(u_input.d, Struct_1(vec4<i32>(-1i, global0.a.x, var_0.a.x, 1i), vec4<u32>(global0.b.x, 0u, var_0.b.x, var_0.b.x), var_0.c), global0.b.wzy, var_0.c, var_0.a.xwx), func_1(global0.c, var_0.a.x, Struct_1(vec4<i32>(39424i, var_0.a.x, u_input.b, -1i), vec4<u32>(global0.b.x, var_0.b.x, 106256u, global0.b.x), true), vec3<i32>(-1i, 2147483647i, 1i)), Struct_3(u_input.d, Struct_1(var_0.a, vec4<u32>(29697u, global0.b.x, global0.b.x, var_0.b.x), var_0.c), vec3<u32>(u_input.a, global0.b.x, global0.b.x), false, global0.a.xxz)).c.b, true), func_6(var_0.b.x, Struct_3(func_1(false, 2147483647i, Struct_1(vec4<i32>(var_0.a.x, -42404i, 2147483647i, -63194i), var_0.b, global0.c), vec3<i32>(2147483647i, -2147483647i, 23201i)).b.x, Struct_1(vec4<i32>(-32774i, 1i, 1i, 0i), vec4<u32>(u_input.d, var_0.b.x, 12974u, var_0.b.x), false), vec3<u32>(57633u, global0.b.x, 4294967295u), var_0.c, global0.a.xxw << (vec3<u32>(0u, global0.b.x, 15833u) % vec3<u32>(32u))), Struct_1(var_0.a >> (global0.b % vec4<u32>(32u)), ~var_0.b, any(vec2<bool>(var_0.c, var_0.c))), Struct_3(_wgslsmith_div_u32(43520u, var_0.b.x), func_1(var_0.c, var_0.a.x, Struct_1(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, u_input.b), global0.b, global0.c), vec3<i32>(22763i, 2147483647i, -2568i)), ~vec3<u32>(u_input.a, global0.b.x, 14191u), global0.c, ~global0.a.zyy)).c.b.xzx << (((vec3<u32>(91926u, 0u, 1u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(20327u, u_input.a, global0.b.x), global0.b.zwx, vec3<u32>(u_input.a, 7145u, u_input.d))) ^ vec3<u32>(firstLeadingBit(0u), 23501u, global0.b.x)) % vec3<u32>(32u)), any(select(!(!vec2<bool>(false, global0.c)), vec2<bool>(var_0.c, var_0.c), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), vec3<i32>(global0.a.x, abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(12698i, var_0.a.x), global0.a.yw), func_6(1u, Struct_3(global0.b.x, Struct_1(vec4<i32>(var_0.a.x, -30779i, u_input.b, 1i), vec4<u32>(global0.b.x, 6335u, var_0.b.x, 4294967295u), var_0.c), vec3<u32>(1u, u_input.a, 27016u), true, global0.a.wxx), Struct_1(var_0.a, vec4<u32>(29888u, u_input.d, global0.b.x, 24406u), var_0.c), Struct_3(1u, Struct_1(var_0.a, vec4<u32>(4294967295u, 75096u, u_input.a, u_input.d), true), vec3<u32>(43511u, 39955u, global0.b.x), var_0.c, global0.a.wxy)).b.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 2147483647i, -2147483647i, global0.a.x), _wgslsmith_mult_vec4_i32(var_0.a, var_0.a)), _wgslsmith_mult_i32(func_4(global0.b.x, vec2<f32>(562f, 1000f), Struct_1(vec4<i32>(global0.a.x, -1i, var_0.a.x, 41259i), global0.b, false)), -2147483647i))));
    var_0 = func_1(any(vec4<bool>(func_1(true, func_4(global0.b.x, vec2<f32>(-685f, -1236f), Struct_1(vec4<i32>(var_2.b.a.x, var_0.a.x, var_2.e.x, 0i), global0.b, global0.c)), Struct_1(global0.a, var_0.b, true), select(vec3<i32>(var_2.e.x, 0i, 1i), var_2.b.a.yxy, vec3<bool>(true, global0.c, true))).c, var_0.c, func_2().c, true & !var_0.c)), var_2.b.a.x, func_6(~firstTrailingBit(var_0.b.x), Struct_3(0u, func_1(var_0.c, ~var_2.e.x, Struct_1(vec4<i32>(var_2.e.x, -1i, var_0.a.x, -2147483647i), global0.b, global0.c), reverseBits(global0.a.yww)), abs(func_6(1u, Struct_3(27640u, Struct_1(var_2.b.a, global0.b, global0.c), var_0.b.wxx, var_2.d, vec3<i32>(var_2.b.a.x, 2147483647i, global0.a.x)), Struct_1(vec4<i32>(0i, u_input.c, 11111i, 0i), var_0.b, true), Struct_3(global0.b.x, var_2.b, var_2.b.b.wyz, global0.c, var_0.a.xxz)).b.b.yyw), global0.c, func_2().a.xwz), func_1(true, _wgslsmith_sub_i32(0i, abs(var_2.e.x)), var_2.b, countOneBits(global0.a.yxy ^ global0.a.yyy)), Struct_3(~min(1u, 3906u), var_2.b, _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b.b.x, 41651u, 1u) & vec3<u32>(1u, 41443u, u_input.d), ~global0.b.xwy), true, ~(~vec3<i32>(-1i, -10128i, 2147483647i)))).b, global0.a.wzy);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -(global0.a.x & var_0.a.x), u_input.c, var_0.a.x, var_2.e.x), u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-142f, -709f))));
}

