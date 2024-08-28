struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-2031i, 1i, -87930i, 29371i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    global0 = vec4<i32>(~(-50475i) << (_wgslsmith_sub_u32(1u, firstTrailingBit(arg_1.c.b.x)) % 32u), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(16408i, u_input.a.x), vec2<i32>(abs(-global0.x), -1140i)), 28100i);
    global0 = reverseBits(-vec4<i32>(max(global0.x, -1i), global0.x, abs(u_input.a.x), 0i)) >> (arg_1.c.b % vec4<u32>(32u));
    let var_0 = arg_1.c;
    let var_1 = firstLeadingBit(var_0.a);
    global0 = countOneBits(firstLeadingBit(max(abs(vec4<i32>(1i, global0.x, 692i, -2147483647i)), ~vec4<i32>(global0.x, global0.x, u_input.a.x, 10005i))) ^ abs(vec4<i32>(~(-2147483647i), _wgslsmith_mod_i32(u_input.a.x, 1i), -29146i, u_input.a.x)));
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-460f * -1128f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_2.b, arg_2.b)), 276f))));
    global0 = select(abs(countOneBits(~vec4<i32>(23245i, 37774i, 2147483647i, u_input.a.x))), vec4<i32>(-54503i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-47061i, global0.x, -1i, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, global0.x, 24047i), vec4<i32>(global0.x, global0.x, -1i, u_input.a.x))), ~u_input.a.x | (u_input.a.x & 2147483647i)), ~(~_wgslsmith_mult_i32(0i, u_input.a.x)), global0.x), arg_1);
    global0 = vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, ~u_input.a.x, -1i, 20896i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-35537i), ~0i, -5136i, min(global0.x, 0i)), vec4<i32>(select(22309i, 43558i, arg_2.a.c.x), 122083i, -22156i, ~global0.x), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 50050i, u_input.a.x, -39154i), vec4<i32>(u_input.a.x, -1i, global0.x, 16985i))))), global0.x, abs(countOneBits(u_input.a.x)), _wgslsmith_add_i32(-u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -62987i), vec2<i32>(-28939i, u_input.a.x)), firstTrailingBit(vec2<i32>(0i, 10408i))) | firstLeadingBit(global0.x & -18898i)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(abs(-1000f)))), 646f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * arg_2.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1940f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(-arg_2.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f) + -824f)))));
    let var_2 = arg_2;
    return Struct_1(arg_2.a.b.x, vec4<u32>(40798u, _wgslsmith_clamp_u32(1u, 1u, abs(abs(1u))), 74918u, 0u), !vec2<bool>(any(!vec3<bool>(arg_0.c.x, true, false)), false));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(arg_3 * _wgslsmith_f_op_vec4_f32(arg_3 - arg_3));
    let var_1 = arg_2;
    let var_2 = var_1.b.x;
    global0 = abs((_wgslsmith_clamp_vec4_i32(select(vec4<i32>(global0.x, -2147483647i, -2147483647i, 21331i), vec4<i32>(-2147483647i, u_input.a.x, global0.x, u_input.a.x), vec4<bool>(true, arg_0.c.x, true, arg_2.c.x)), abs(vec4<i32>(43867i, global0.x, u_input.a.x, -2147483647i)), vec4<i32>(48931i, 58653i, global0.x, 27574i)) >> (_wgslsmith_clamp_vec4_u32(func_3(Struct_1(1u, vec4<u32>(28114u, var_2, var_2, arg_2.b.x), arg_2.c), false, Struct_2(arg_2, -346f, Struct_1(1u, arg_1, vec2<bool>(arg_0.c.x, true)), vec3<u32>(arg_0.b.x, var_1.b.x, var_2))).b, ~vec4<u32>(4294967295u, arg_2.b.x, 18311u, 4294967295u), var_1.b) % vec4<u32>(32u))) & _wgslsmith_div_vec4_i32(-(vec4<i32>(-11064i, 0i, u_input.a.x, u_input.a.x) ^ vec4<i32>(-7103i, -74881i, -2147483647i, global0.x)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, 9788i, 10768i, -2147483647i), vec4<i32>(-4182i, 11789i, global0.x, -18282i), vec4<i32>(u_input.a.x, global0.x, global0.x, global0.x))));
    var var_3 = ~(-abs(u_input.a.x | global0.x) << (_wgslsmith_sub_u32(_wgslsmith_add_u32(~arg_0.a, ~0u), firstTrailingBit(~4294967295u)) % 32u));
    return func_2(false, func_2(true, func_2(true, Struct_2(func_3(Struct_1(4685u, arg_2.b, vec2<bool>(false, arg_0.c.x)), arg_0.c.x, Struct_2(Struct_1(14923u, vec4<u32>(14749u, arg_1.x, var_1.b.x, arg_0.b.x), arg_2.c), 413f, arg_0, vec3<u32>(1u, 7453u, arg_2.a))), -239f, arg_2, arg_1.wzx)))).c;
}

fn func_1() -> StorageBuffer {
    let var_0 = reverseBits(~(~(~_wgslsmith_div_u32(1u, 29574u))));
    let var_1 = func_4(func_3(Struct_1(_wgslsmith_div_u32(32128u >> (var_0 % 32u), 16213u ^ var_0), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(60897u, var_0, var_0), vec3<u32>(var_0, var_0, var_0)), var_0, 1u, _wgslsmith_clamp_u32(var_0, var_0, 1u)), vec2<bool>(true, true)), true, func_2(true, Struct_2(Struct_1(1u, vec4<u32>(4294967295u, 49259u, 14778u, var_0), vec2<bool>(true, false)), -697f, Struct_1(73098u, vec4<u32>(var_0, 36454u, 1u, var_0), vec2<bool>(true, true)), firstTrailingBit(vec3<u32>(0u, 4294967295u, 0u))))), vec4<u32>(var_0, var_0 & abs(select(0u, var_0, true)), abs(~var_0), ~var_0), Struct_1(0u, ~(~vec4<u32>(var_0, 1u, var_0, var_0)), vec2<bool>(!any(vec2<bool>(false, false)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -321f, _wgslsmith_f_op_f32(min(-978f, 188f)), 1323f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-996f, 691f, -257f, -635f), vec4<f32>(-424f, 1757f, -1000f, 656f)) * vec4<f32>(1f, 1f, 1f, 1f)))));
    global0 = abs(~(~vec4<i32>(global0.x & 2147483647i, global0.x, u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 1i))));
    global0 = abs(select(min(vec4<i32>(1i, 44113i, global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.x, global0.x), vec3<i32>(8662i, u_input.a.x, -2018i))), vec4<i32>(~2147483647i, _wgslsmith_sub_i32(global0.x, global0.x), -8072i, 59785i)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), var_1.c.x && var_1.c.x));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(790f + 115f)))), -184f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1598f))));
    return StorageBuffer(func_3(Struct_1(0u, ~vec4<u32>(var_1.b.x, 0u, 33956u, var_1.b.x), var_1.c), true, Struct_2(var_1, _wgslsmith_f_op_f32(trunc(-750f)), var_1, _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.b.x, var_0), var_1.b.zxz))).b.x & ~4294967295u, 6159i, 172f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let x = u_input.a;
    s_output = func_1();
}

