struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-1350f, -1238f, -437f, -680f, 1000f, -466f, -1662f, 1052f, 1000f);

var<private> global1: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(25056i, -1590i, 2147483647i), vec3<i32>(18202i, -1i, -50993i), vec3<i32>(1i, 1i, 10864i), vec3<i32>(29898i, -1i, 56174i), vec3<i32>(2147483647i, 1i, -4960i), vec3<i32>(-51579i, -17575i, 1i), vec3<i32>(-1i, -6082i, -46928i), vec3<i32>(-37693i, 638i, 0i), vec3<i32>(-60638i, 1i, 0i), vec3<i32>(-35058i, 25124i, 6968i));

var<private> global2: array<vec3<i32>, 31>;

var<private> global3: array<vec4<i32>, 26>;

var<private> global4: Struct_5 = Struct_5(86902u, vec4<u32>(4294967295u, 1u, 10652u, 1u), -1061f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    let var_0 = min(_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(global4.a, global4.b.x), 32801u), select(vec2<u32>(u_input.a.x, 1u) << (max(vec2<u32>(global4.b.x, global4.a), vec2<u32>(8225u, global4.b.x)) % vec2<u32>(32u)), global4.b.wx, any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))))), _wgslsmith_div_u32(_wgslsmith_mult_u32(~(~0u), abs(_wgslsmith_mult_u32(global4.a, 27791u))), ~38362u));
    let var_1 = 62850u;
    var var_2 = global4.c >= 2009f;
    let var_3 = _wgslsmith_mult_i32(-firstTrailingBit(u_input.b.x), -_wgslsmith_add_i32(-(i32(-1i) * -44995i), -max(arg_0.a, u_input.b.x)));
    var var_4 = true;
    return Struct_2(-u_input.b);
}

fn func_1() -> vec2<u32> {
    let var_0 = func_2(Struct_4((firstLeadingBit(1i) ^ abs(u_input.b.x)) ^ -_wgslsmith_div_i32(u_input.b.x, u_input.b.x)));
    var var_1 = Struct_1(vec4<i32>(1i, _wgslsmith_add_i32(var_0.a.x, 2147483647i), abs(0i), _wgslsmith_div_i32(_wgslsmith_mult_i32(countOneBits(-18904i), select(var_0.a.x, -2147483647i, true)), u_input.b.x)));
    global3 = array<vec4<i32>, 26>();
    var_1 = Struct_1(vec4<i32>(-var_0.a.x, _wgslsmith_dot_vec2_i32(var_0.a.yy, reverseBits(var_1.a.yw)), -48444i, _wgslsmith_sub_i32(-20802i >> (1u % 32u), _wgslsmith_add_i32(~1i, _wgslsmith_mod_i32(u_input.b.x, var_1.a.x)))));
    let var_2 = max(var_0.a.zx, firstLeadingBit(vec2<i32>(var_1.a.x, u_input.b.x)));
    return select(u_input.c, ~abs(vec2<u32>(1u, global4.a)), !(all(vec4<bool>(false, false, true, true)) | (4294967295u < u_input.a.x))) | ~vec2<u32>(~0u, abs(firstTrailingBit(1u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: f32) -> bool {
    var var_0 = vec3<i32>(abs(-37272i), u_input.b.x, ~(~select(~4587i, abs(u_input.b.x), all(vec2<bool>(false, false)))));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), _wgslsmith_dot_vec2_u32(global4.b.wx, u_input.c), 57115u, reverseBits(func_1().x));
    let var_2 = var_0.x;
    var var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(global4.b.x, 15835u), 26u)];
    let var_4 = arg_1.c.x;
    return var_4;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<bool>) -> vec4<i32> {
    let var_0 = Struct_2(~((vec3<i32>(0i, -1i, arg_1) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, -2147483647i, 2147483647i), vec3<i32>(-1i, arg_1, u_input.b.x))) ^ select(firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_i32(global1[_wgslsmith_index_u32(63979u, 10u)], u_input.b), vec3<bool>(arg_3.x, false, arg_3.x))));
    let var_1 = firstTrailingBit(arg_1);
    global0 = array<f32, 9>();
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-arg_1, _wgslsmith_div_i32(var_0.a.x, 8177i), var_1), u_input.b);
    global1 = array<vec3<i32>, 10>();
    return global3[_wgslsmith_index_u32(firstLeadingBit(~reverseBits(0u)), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global4.b.x, global4.b.x), ~4294967295u) | (_wgslsmith_mod_vec2_u32(vec2<u32>(57107u, 4294967295u), vec2<u32>(u_input.c.x, global4.b.x)) << (~vec2<u32>(u_input.c.x, 28911u) % vec2<u32>(32u))), u_input.a | (vec2<u32>(u_input.c.x, 20815u) ^ global4.b.zz)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(25240u, 1u), reverseBits(u_input.c.x)) & vec2<u32>(reverseBits(u_input.a.x), _wgslsmith_mod_u32(u_input.c.x, 1u)), func_1(), u_input.c);
    global2 = array<vec3<i32>, 31>();
    var_0 = global4.b.zw;
    global1 = array<vec3<i32>, 10>();
    var var_1 = Struct_1(func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.b.x, 4294967295u, u_input.a.x, 8350u), reverseBits(vec4<u32>(global4.b.x, 19730u, 0u, 16249u))) ^ ~(~global4.b.x), -39558i, !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, false, false), func_3(global0[_wgslsmith_index_u32(13942u, 9u)], Struct_3(vec4<f32>(-1225f, -177f, global4.c, global4.c), global4.a, vec4<bool>(true, true, false, false), u_input.a.x), 516f)), vec3<bool>(true, true, true)));
    global1 = array<vec3<i32>, 10>();
    global4 = Struct_5(global4.a, ~_wgslsmith_mult_vec4_u32(vec4<u32>(134436u, 4294967295u, 36208u, 23808u), global4.b) | vec4<u32>(54589u, 13958u, _wgslsmith_mult_u32(firstTrailingBit(64568u), ~1u), 1u ^ _wgslsmith_clamp_u32(14247u, 0u, 1u)), -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.a.x & _wgslsmith_div_i32(~2147483647i, u_input.b.x), -var_1.a.x, u_input.b.x >= ~(~15982i)));
}

