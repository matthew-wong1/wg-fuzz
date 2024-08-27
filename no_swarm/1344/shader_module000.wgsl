struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(firstTrailingBit(41887u), _wgslsmith_mod_vec3_u32(u_input.a, abs(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(0u, 4294967295u, u_input.a.x))) >> (u_input.a % vec3<u32>(32u))), vec4<u32>(38353u, 4294967295u, abs(24777u), ~4294967295u), -_wgslsmith_div_i32(-19752i, firstTrailingBit(1i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -927f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1596f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 847f))))));
    let var_2 = Struct_1(19976u, ~u_input.a, _wgslsmith_mult_vec4_u32(var_0.c, vec4<u32>(~_wgslsmith_dot_vec4_u32(var_0.c, var_0.c), 0u, abs(20354u >> (u_input.a.x % 32u)), var_0.c.x)), ~var_0.d);
    var_0 = Struct_1(55556u, _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 4294967295u), var_0.c.yw)), _wgslsmith_mult_u32(abs(var_2.b.x), var_0.b.x), 1u)), firstLeadingBit(~abs(var_0.c) >> (vec4<u32>(1u, _wgslsmith_div_u32(u_input.a.x, 0u), _wgslsmith_clamp_u32(var_2.b.x, u_input.a.x, u_input.a.x), 39121u) % vec4<u32>(32u))), 1i);
    var_0 = Struct_1(~abs(max(~u_input.a.x, 6287u)), _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(var_0.b, var_2.c.wxy)) & var_0.b, reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, var_0.b), var_0.c.yxz, ~vec3<u32>(var_0.b.x, var_2.a, u_input.a.x)))), reverseBits(vec4<u32>(countOneBits(47011u), _wgslsmith_add_u32(1u, var_2.a), 1u, 54453u)), var_0.d);
    return ~u_input.a.x | (_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a.zx, var_2.c.ww), var_2.b.zy) | u_input.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.a.x, u_input.a, countOneBits(~vec4<u32>(u_input.a.x, 6643u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4992u, u_input.a.x, u_input.a.x), vec4<u32>(38924u, u_input.a.x, 4294967295u, 0u)), func_3())), abs(1i));
    let var_1 = Struct_1(1u, u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 0u, (46459u & u_input.a.x) << (17362u % 32u)), var_0.d);
    return var_1;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(abs(~1u), abs(u_input.a.x), countOneBits(4294967295u)), _wgslsmith_div_u32(u_input.a.x, arg_1.a)), arg_1.b, vec4<u32>(u_input.a.x, 100512u, 1u, arg_1.a), firstLeadingBit(35155i));
    var var_1 = arg_2.c.x;
    var_1 = max(~_wgslsmith_add_u32((arg_2.b.x << (4294967295u % 32u)) & var_0.b.x, var_0.c.x), ~62132u);
    let var_2 = vec3<u32>(select(min(select(~u_input.a.x, ~1u, arg_0 || arg_0), 4294967295u), _wgslsmith_clamp_u32(~4294967295u, 0u, ~4294967295u), ~(~arg_1.b.x) == ~0u), max(~_wgslsmith_div_u32(u_input.a.x, 72219u), max(_wgslsmith_mod_u32(_wgslsmith_mult_u32(20075u, 51115u), _wgslsmith_sub_u32(4178u, arg_1.b.x)), ~arg_3 & 0u)), 28002u);
    var_1 = ~u_input.a.x;
    return func_2();
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = func_1(true, Struct_1(~18018u, vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, arg_3.a), 1u, _wgslsmith_mult_u32(73339u, u_input.a.x)), u_input.a.x << (_wgslsmith_mult_u32(266u, 0u) % 32u), ~u_input.a.x), abs(arg_3.c), -_wgslsmith_mult_i32(~36756i, arg_3.d)), Struct_1(~(~0u << (min(u_input.a.x, arg_3.b.x) % 32u)), vec3<u32>(~28371u, arg_3.b.x, abs(_wgslsmith_add_u32(arg_3.c.x, arg_2.a))), _wgslsmith_div_vec4_u32(arg_3.c, (arg_3.c << (vec4<u32>(23400u, 0u, 64741u, arg_2.b.x) % vec4<u32>(32u))) ^ abs(arg_2.c)), _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_2.d, arg_3.d), -4359i) & _wgslsmith_clamp_i32(func_1(true, Struct_1(44428u, arg_3.b, arg_3.c, 26352i), arg_2, 1u).d, arg_1.x, 2147483647i)), firstTrailingBit(arg_2.c.x & 36725u));
    let var_1 = arg_3;
    let var_2 = func_1(arg_0, func_2(), func_1(all(vec2<bool>(arg_0, select(arg_0, arg_0, true))), Struct_1(func_1(all(vec4<bool>(true, false, false, false)), func_1(true, var_1, Struct_1(4294967295u, vec3<u32>(0u, var_1.b.x, arg_2.a), vec4<u32>(u_input.a.x, 4294967295u, 1u, 1u), -48424i), var_0.b.x), Struct_1(var_1.b.x, u_input.a, var_1.c, -1i), func_1(true, Struct_1(u_input.a.x, var_1.b, var_0.c, arg_1.x), var_1, 1u).c.x).c.x, ~min(var_0.b, arg_2.b), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.c.wzy, arg_2.c.xzz), _wgslsmith_mod_u32(var_1.c.x, 3966u), max(0u, 1u), arg_2.b.x), 1i), func_1(true, var_1, arg_2, _wgslsmith_clamp_u32(func_3(), 4294967295u, ~39512u)), 66u), _wgslsmith_clamp_u32(arg_2.a, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.a, var_0.a, 50116u, 5782u) << (vec4<u32>(6374u, var_0.b.x, 1u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, arg_3.b.x) ^ var_1.c, true), ~vec4<u32>(34367u, 38036u, var_1.b.x, arg_3.c.x)), ~func_1(true, func_2(), func_1(arg_0, Struct_1(40429u, vec3<u32>(4294967295u, arg_2.a, arg_3.a), arg_3.c, 2147i), Struct_1(15068u, var_0.b, arg_2.c, arg_3.d), u_input.a.x), abs(u_input.a.x)).b.x));
    let var_3 = arg_3;
    let var_4 = _wgslsmith_mult_vec3_u32(func_2().b, vec3<u32>(arg_2.a, 0u, _wgslsmith_mult_u32(var_0.b.x, 1u)) & vec3<u32>(func_1(false, Struct_1(4294967295u, vec3<u32>(var_0.b.x, var_1.c.x, 1u), var_1.c, var_1.d), func_1(false, arg_3, var_0, 22869u), func_2().c.x).c.x, _wgslsmith_add_u32(arg_3.c.x, func_2().b.x), 1u));
    return vec4<u32>(0u, func_1(!any(vec4<bool>(false, arg_0, arg_0, true)), func_2(), var_3, arg_2.a ^ abs(1u)).c.x, u_input.a.x, ~var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 18050u;
    var var_1 = Struct_1(_wgslsmith_sub_u32(var_0 >> (_wgslsmith_sub_u32(60826u, u_input.a.x) % 32u), ~min(4294967295u, 8697u)), u_input.a, ~func_4(all(vec3<bool>(true, false, false)), vec3<i32>(-48124i, 13371i, -1i), func_1(true, Struct_1(1u, u_input.a, vec4<u32>(u_input.a.x, var_0, 1u, u_input.a.x), 0i), Struct_1(u_input.a.x, vec3<u32>(1837u, 4294967295u, var_0), vec4<u32>(var_0, var_0, var_0, var_0), -44804i), 1u), func_2()) ^ _wgslsmith_mod_vec4_u32(func_1(true, func_1(true, Struct_1(var_0, vec3<u32>(var_0, 1u, 28943u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), 26694i), Struct_1(var_0, vec3<u32>(4294967295u, 0u, 0u), vec4<u32>(u_input.a.x, var_0, u_input.a.x, 0u), -1i), u_input.a.x), func_1(true, Struct_1(var_0, vec3<u32>(4294967295u, 39426u, var_0), vec4<u32>(17779u, u_input.a.x, u_input.a.x, u_input.a.x), 2147483647i), Struct_1(u_input.a.x, vec3<u32>(0u, u_input.a.x, 1u), vec4<u32>(56020u, var_0, var_0, var_0), 42982i), u_input.a.x), var_0 >> (var_0 % 32u)).c, ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, 0u), vec4<u32>(var_0, 107263u, u_input.a.x, u_input.a.x))), reverseBits(-746i));
    let var_2 = Struct_1(func_4(true, select(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.d, var_1.d, -1i), vec3<i32>(var_1.d, -41348i, var_1.d))), -(vec3<i32>(var_1.d, var_1.d, var_1.d) << (vec3<u32>(66941u, 1160u, var_1.c.x) % vec3<u32>(32u))), all(vec4<bool>(true, true, true, true))), Struct_1(func_3(), var_1.b, var_1.c, var_1.d), func_2()).x, var_1.b, ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.c, vec4<u32>(4294967295u, var_1.b.x, var_1.a, var_0)) | ~var_1.c, ~func_1(true, Struct_1(u_input.a.x, vec3<u32>(var_0, var_1.b.x, u_input.a.x), vec4<u32>(41530u, u_input.a.x, var_0, u_input.a.x), var_1.d), Struct_1(var_1.a, vec3<u32>(u_input.a.x, var_0, 3286u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), 41691i), 1524u).c, ~(~vec4<u32>(20724u, 20154u, var_0, u_input.a.x))), 0i);
    var_1 = func_2();
    let var_3 = func_2();
    var var_4 = firstLeadingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(var_1.d, 1i, abs(var_2.d)), firstLeadingBit(abs(vec3<i32>(var_2.d, var_2.d, -1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, abs(var_1.d), ~(~vec3<i32>(_wgslsmith_sub_i32(-43625i, var_4.x), reverseBits(10496i), -var_1.d)), var_2.d);
}

