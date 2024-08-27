struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(9374u, 4294967295u, 4294967295u), vec3<u32>(1u, 10707u, 27553u), vec3<u32>(54984u, 4294967295u, 7816u), vec3<u32>(1u, 1u, 25764u), vec3<u32>(66324u, 29532u, 27931u), vec3<u32>(68312u, 43374u, 1u), vec3<u32>(76084u, 0u, 0u), vec3<u32>(22054u, 1u, 82536u), vec3<u32>(61194u, 53070u, 65095u), vec3<u32>(24702u, 4294967295u, 0u), vec3<u32>(1u, 61312u, 23744u), vec3<u32>(1u, 26649u, 45365u), vec3<u32>(108831u, 33669u, 50841u), vec3<u32>(31639u, 4294967295u, 38157u), vec3<u32>(26375u, 4294967295u, 6935u), vec3<u32>(0u, 30298u, 0u), vec3<u32>(4294967295u, 0u, 32120u), vec3<u32>(57536u, 1u, 41170u));

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(~global0.a, !global0.b, global3.c, -32719i);
    let var_1 = Struct_1(global0.a, !select(global2.b, vec4<bool>(true, true, true, global3.b.x), global2.b), _wgslsmith_mult_i32(min(_wgslsmith_clamp_i32(u_input.b, -1i, -2147483647i), global3.a), 22487i) ^ 2147483647i, (var_0.c & global0.d) >> (u_input.a % 32u));
    var var_2 = u_input.a;
    global3 = var_0;
    let var_3 = Struct_1(~0i, global2.b, -u_input.b ^ _wgslsmith_div_i32(abs(-17362i), 6844i), select(-2147483647i, 1490i, global0.b.x));
    return !vec4<bool>(!any(var_0.b) & true, true, true || !global2.b.x, global3.b.x);
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<u32>, 18>();
    let var_0 = true;
    var var_1 = Struct_1(max(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, u_input.b) ^ -global3.c, global3.d), _wgslsmith_add_i32(u_input.b, 0i) & -(~(-2147483647i))), func_3(), select(firstTrailingBit(global2.d) >> (u_input.a % 32u), -_wgslsmith_sub_i32(global2.d, countOneBits(u_input.b)), 1u >= _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.c), 18u)], vec3<u32>(u_input.c, u_input.a, 1757u))), -1i);
    var var_2 = max(15615i, u_input.b) <= ~(~_wgslsmith_add_i32(firstTrailingBit(89886i), ~global3.c));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 33857i, -2147483647i), countOneBits(-vec3<i32>(global2.d, global0.a, 13886i))), firstTrailingBit(3043i), 1i, var_1.c), countOneBits(countOneBits(firstLeadingBit(vec4<i32>(global3.a, global0.a, global3.d, 2147483647i)))) >> (abs(max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 55196u, u_input.a, u_input.a), vec4<u32>(0u, 4294967295u, 58146u, u_input.c)), vec4<u32>(u_input.a, 1661u, 69850u, u_input.a))) % vec4<u32>(32u)));
    return Struct_1(i32(-1i) * -var_1.a, !(!(!(!global2.b))), max(-1921i, ~global2.d), 2147483647i);
}

fn func_1() -> Struct_1 {
    global0 = func_2();
    global3 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(max(global3.d, -1i), -2147483647i, -1i), ~min(vec3<i32>(u_input.b, global3.c, 21935i), vec3<i32>(1i, -2147483647i, u_input.b))), -countOneBits(abs(vec3<i32>(68962i, -45609i, -2147483647i)))), func_2().b, ~max(i32(-1i) * -1i, ~firstLeadingBit(5368i)), reverseBits(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.d), vec2<i32>(-29575i, global3.a)))) & abs(_wgslsmith_add_i32(func_2().c, 20534i)));
    global3 = func_2();
    var var_0 = Struct_1(~(i32(-1i) * -73663i), vec4<bool>(28090u != _wgslsmith_clamp_u32(45587u, _wgslsmith_mod_u32(77284u, u_input.a), firstTrailingBit(u_input.c)), true, false, select(false, true, true)), -57910i, _wgslsmith_mod_i32(u_input.b, reverseBits(_wgslsmith_mult_i32(u_input.b ^ 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -8540i, global2.c), vec3<i32>(1i, -1i, -54728i))))));
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, global3.a), vec2<i32>(global2.d, var_0.c) ^ vec2<i32>(u_input.b, global2.c)) | (countOneBits(vec2<i32>(global3.d, u_input.b)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(26462u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.c)) % vec2<u32>(32u))), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global3.d, -1i, global3.d, global3.a), vec4<i32>(-2147483647i, -1i, global3.c, 29292i)), -9353i)), !(!vec4<bool>(!global2.b.x, false, global2.b.x, any(global0.b.wx))), global3.d, 54413i);
    return Struct_1(-_wgslsmith_mult_i32(min(-2147483647i << (u_input.a % 32u), global2.d | 1i), _wgslsmith_sub_i32(var_0.d, global0.c & -1i)), global0.b, var_0.d, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~firstTrailingBit(u_input.a)));
    global2 = func_1();
    var var_1 = func_2();
    let var_2 = Struct_1(global0.d, var_1.b, u_input.b, func_1().d);
    let var_3 = _wgslsmith_sub_i32(-2147483647i, reverseBits(1i));
    global2 = func_1();
    var var_4 = global1[_wgslsmith_index_u32(~countOneBits(1u) << (abs(reverseBits(_wgslsmith_clamp_u32(52946u, 0u, 28004u))) % 32u), 18u)] & (_wgslsmith_div_vec3_u32(~vec3<u32>(39607u, 1u, u_input.c) << ((vec3<u32>(15097u, u_input.c, 1u) << (vec3<u32>(u_input.c, u_input.c, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), reverseBits(global1[_wgslsmith_index_u32(0u, 18u)] << (global1[_wgslsmith_index_u32(52142u, 18u)] % vec3<u32>(32u)))) & vec3<u32>(abs(var_0), ~min(62506u, 0u), abs(max(u_input.a, 1u))));
    let var_5 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(-673f, global1[_wgslsmith_index_u32(~(~(~(var_0 ^ 19066u))), 18u)], -global0.d);
}

