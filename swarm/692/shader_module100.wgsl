struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: Struct_1 = Struct_1(vec3<u32>(18905u, 8594u, 23955u), vec2<u32>(1u, 2605u), vec2<i32>(-1i, -24532i), false, vec4<i32>(-1i, 2147483647i, -1i, 2046i));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(40533u, 4294967295u, 1u), vec2<u32>(1u, 47794u), vec2<i32>(i32(-2147483648), 2147483647i), false, vec4<i32>(12480i, 28183i, 6997i, 0i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    return 36964i;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: i32) -> bool {
    let var_0 = ~_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.a.x, global1.a.x, global0.b.x), vec4<u32>(u_input.a, 0u, 67669u, global1.b.x) & vec4<u32>(13385u, global1.b.x, u_input.a, u_input.a)), vec4<u32>(0u, global0.b.x, ~(1u << (1u % 32u)), global0.a.x));
    global1 = Struct_1(global0.a, global1.b & vec2<u32>(_wgslsmith_mult_u32(global1.a.x, var_0.x), var_0.x), vec2<i32>(countOneBits(select(-2147483647i, -41234i, global1.d) ^ (global0.c.x | global1.e.x)), -1i), true, vec4<i32>(func_2(vec2<bool>(global0.d, global1.e.x != -1i), Struct_1(global1.a, ~global1.b, vec2<i32>(0i, -1i), false, firstTrailingBit(vec4<i32>(arg_1.x, -1i, arg_1.x, global1.c.x))), Struct_1(vec3<u32>(global1.b.x, global0.b.x, 4294967295u), firstLeadingBit(global0.a.zx), min(arg_1.zz, arg_1.xz), any(vec2<bool>(global0.d, global1.d)), global0.e), Struct_1(~global0.a, vec2<u32>(0u, 39850u), firstTrailingBit(vec2<i32>(arg_2, -2147483647i)), 4294967295u >= global1.a.x, countOneBits(global1.e))), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, ~arg_2), arg_1.xw), u_input.b));
    let var_1 = -arg_2;
    var var_2 = -_wgslsmith_mult_i32((_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_2), vec2<i32>(1i, 2147483647i)) >> (_wgslsmith_add_u32(u_input.a, global1.b.x) % 32u)) << (countOneBits(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(12605u, 65493u, 3305u, 0u))) % 32u), select(1i, 51149i, arg_0.x != 550f) << (var_0.x % 32u));
    global0 = Struct_1(max(reverseBits(~vec3<u32>(global1.b.x, u_input.a, global0.b.x)), vec3<u32>(~firstTrailingBit(32915u), ~var_0.x, global0.a.x)), _wgslsmith_add_vec2_u32(~(~_wgslsmith_sub_vec2_u32(global0.b, var_0.zw)), _wgslsmith_clamp_vec2_u32(global1.a.yy, global0.b, abs(var_0.wz) ^ ~global1.b)), reverseBits(abs(arg_1.yz)), any(vec4<bool>(global1.d, any(!vec2<bool>(global0.d, true)), false, global1.d)), vec4<i32>(0i, -18943i, 2147483647i, countOneBits(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-12734i, var_1), arg_2))));
    return true;
}

fn func_3() -> bool {
    global1 = Struct_1(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a.x, ~1u, min(0u, 1u)), _wgslsmith_div_vec3_u32(select(global1.a, global0.a, true), ~global0.a))), ~vec2<u32>(global1.b.x, ~0u), abs(vec2<i32>(_wgslsmith_mult_i32(global0.c.x, global1.c.x) ^ _wgslsmith_clamp_i32(global1.c.x, 2147483647i, 0i), _wgslsmith_sub_i32(u_input.b, _wgslsmith_clamp_i32(2147483647i, global1.e.x, 2147483647i)))), true, ~_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.e.x, -1i, global1.e.x, u_input.b), global1.e), vec4<i32>(2147483647i, 1i, -11580i, 2147483647i)), reverseBits(-global1.e)));
    let var_0 = Struct_1(~global1.a, ~select(~global1.a.xy, vec2<u32>(reverseBits(1u), global0.a.x >> (16755u % 32u)), any(vec2<bool>(true, true))), global1.c & max(global1.c | vec2<i32>(-47633i, u_input.b), vec2<i32>(_wgslsmith_div_i32(-46317i, u_input.b), 2147483647i)), !(!select(true, any(vec4<bool>(false, true, false, false)), !global0.d)), vec4<i32>(global0.c.x, -2147483647i, _wgslsmith_add_i32(-select(global0.c.x, global0.c.x, global1.d), -(global1.e.x ^ -1i)), global0.c.x));
    global1 = var_0;
    var var_1 = true;
    global0 = var_0;
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: i32, arg_3: bool) -> Struct_1 {
    global1 = Struct_1(~(vec3<u32>(~u_input.a, ~u_input.a, select(global0.b.x, global0.a.x, arg_3)) ^ ~global0.a), global1.a.xy, _wgslsmith_add_vec2_i32(~(~select(global1.c, global0.c, arg_0.x)), global1.e.yx), true, global1.e);
    let var_0 = !(!select(!(!vec4<bool>(true, false, false, global0.d)), vec4<bool>(all(vec3<bool>(arg_3, arg_0.x, false)), true, select(false, true, false), global0.b.x == 0u), !(!vec4<bool>(true, global1.d, arg_0.x, global0.d))));
    let var_1 = vec3<u32>(global0.a.x, arg_1, abs(global0.a.x));
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(var_1), ~var_1), ~(~arg_1), reverseBits(countOneBits(abs(0u)))), _wgslsmith_add_vec2_u32(~(~global1.a.xy), ((vec2<u32>(global1.b.x, 46289u) & vec2<u32>(var_1.x, 1u)) & vec2<u32>(global0.b.x, arg_1)) ^ global1.a.zy), -(global0.e.yx | vec2<i32>(-arg_2, abs(2147483647i))), true, global0.e);
    var_2 = Struct_1(abs(~(~(~vec3<u32>(var_2.b.x, 40619u, 0u)))), global0.a.xy, vec2<i32>(i32(-1i) * -_wgslsmith_div_i32(1i, 17392i), -u_input.b), !all(vec2<bool>(u_input.b >= arg_2, false)), ~global0.e);
    return Struct_1(~min(_wgslsmith_mult_vec3_u32(var_1, global0.a), vec3<u32>(arg_1, 62486u, 1754u)) | vec3<u32>(27622u, 1u, 1u), global0.b, vec2<i32>(select(max(78320i & global0.c.x, i32(-1i) * -56087i), arg_2, false), 5617i), all(select(vec2<bool>(all(var_0), false), var_0.zw, func_1(vec4<f32>(968f, 490f, -362f, -1581f), _wgslsmith_mult_vec4_i32(vec4<i32>(68226i, 11089i, -2147483647i, -20784i), var_2.e), 1i))), vec4<i32>(_wgslsmith_div_i32(abs(2147483647i), max(arg_2, u_input.b) >> ((11001u >> (var_1.x % 32u)) % 32u)), (_wgslsmith_sub_i32(u_input.b, var_2.e.x) << (u_input.a % 32u)) ^ max(global1.c.x, min(arg_2, -2147483647i)), _wgslsmith_mult_i32(-44651i, var_2.e.x), -19008i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(select(select(!vec3<bool>(global1.d, true, global0.d), !select(vec3<bool>(global1.d, true, true), vec3<bool>(true, true, true), vec3<bool>(global0.d, global0.d, global1.d)), true), !vec3<bool>(func_1(vec4<f32>(-1000f, -356f, -151f, -1516f), vec4<i32>(global0.e.x, 2147483647i, -29147i, 0i), 0i), func_3(), global1.d), true), countOneBits(0u), firstLeadingBit(min(i32(-1i) * -10384i, ~global0.c.x)) & -1711i, all(select(!(!vec2<bool>(global0.d, global0.d)), select(select(vec2<bool>(false, false), vec2<bool>(global0.d, false), global1.d), select(vec2<bool>(global0.d, global0.d), vec2<bool>(global0.d, false), global0.d), vec2<bool>(true, global0.d)), !vec2<bool>(global0.d, global1.d))));
    var var_0 = -1514f;
    global1 = func_4(!vec3<bool>(global1.d, false, global0.d), u_input.a, global0.c.x, true);
    let var_1 = global1.a;
    var var_2 = global1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

