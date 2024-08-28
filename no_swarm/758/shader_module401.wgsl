struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false, -231f), Struct_1(false, 398f), Struct_1(false, 881f), Struct_1(false, -1140f), Struct_1(true, 485f), Struct_1(false, 1019f), Struct_1(false, -588f), Struct_1(true, 1012f), Struct_1(true, -572f), Struct_1(true, -853f), Struct_1(false, 650f), Struct_1(true, -1170f), Struct_1(false, -803f), Struct_1(false, 485f), Struct_1(false, 648f));

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    return ~(min(reverseBits(-vec3<i32>(u_input.a, u_input.d.x, u_input.a)), -(vec3<i32>(-46784i, u_input.e.x, u_input.d.x) | vec3<i32>(-20438i, -5732i, 2147483647i))) & _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-1i, u_input.d.x, u_input.d.x)), -vec3<i32>(-1i, u_input.e.x, -20968i)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-36171i, u_input.d.x, u_input.a), vec3<i32>(u_input.a, -5825i, 1i)), reverseBits(vec3<i32>(u_input.e.x, u_input.e.x, 1i)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    global2 = true;
    let var_0 = arg_0;
    var var_1 = vec3<i32>(u_input.d.x, -35205i, _wgslsmith_dot_vec3_i32(~min(vec3<i32>(25142i, 49750i, -41987i), abs(vec3<i32>(-17292i, u_input.e.x, u_input.a))), ~func_3(Struct_1(false, 163f), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 116543u, u_input.c, u_input.b), vec4<u32>(55139u, arg_2, u_input.c, arg_2)), Struct_1(false, 282f))));
    global0 = array<Struct_1, 15>();
    global2 = all(vec2<bool>(true, false));
    return var_1.x;
}

fn func_1() -> vec2<i32> {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, firstTrailingBit(_wgslsmith_clamp_i32(2147483647i, -1i, -4537i)), -1i), -vec3<i32>(1i, u_input.d.x, func_2(global0[_wgslsmith_index_u32(u_input.b, 15u)], Struct_1(true, -2036f), u_input.c))), -58757i >> (u_input.c % 32u));
    let var_1 = var_0.x;
    var var_2 = max(var_1, countOneBits(max(var_1, -16311i) >> (countOneBits(4294967295u) % 32u))) != firstLeadingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, var_1, u_input.a, 1i), vec4<i32>(var_0.x, var_0.x, var_0.x, -5188i)) << (~u_input.c % 32u));
    global2 = false;
    let var_3 = global0[_wgslsmith_index_u32(u_input.b, 15u)];
    return ~select(max(-var_0, u_input.e), min(~(u_input.e >> (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u))), reverseBits(vec2<i32>(-37637i, 2147483647i)) >> (~vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))), var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(select(~(-u_input.d), func_1(), ~u_input.c != ~u_input.b), vec2<i32>(min(_wgslsmith_mod_i32(2147483647i, 50416i), firstLeadingBit(-3817i)), firstLeadingBit(u_input.e.x))), func_2(global0[_wgslsmith_index_u32(u_input.c, 15u)], Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.b, global4.b)))), 4294967295u), _wgslsmith_sub_i32(firstTrailingBit(1i) << ((~u_input.c >> ((u_input.b << (u_input.c % 32u)) % 32u)) % 32u), u_input.e.x), 1i);
    let var_1 = vec2<u32>(u_input.c, 0u >> (_wgslsmith_mod_u32(select(29330u << (u_input.b % 32u), u_input.c << (u_input.b % 32u), global4.b <= -957f), reverseBits(~1u)) % 32u));
    global4 = Struct_1(true, global4.b);
    var var_2 = global0[_wgslsmith_index_u32(u_input.b | ~0u, 15u)];
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~(~var_1)), ~abs(~vec2<u32>(u_input.b, 54427u))), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.b, 130091u, var_1.x)), firstLeadingBit(vec3<u32>(u_input.c, 114107u, 4294967295u)))));
}

