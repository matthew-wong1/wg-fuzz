struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec3<i32> {
    var var_0 = arg_0;
    let var_1 = !select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec3<bool>(false, false, true)) && true), !vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(true, !select(true, true, true), all(vec3<bool>(false, true, false)) | true));
    let var_2 = 1000f;
    var_0 = _wgslsmith_f_op_f32(-var_2);
    global0 = u_input.b.x;
    return select(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(49384i, u_input.a), -u_input.a, 1425i), abs(vec3<i32>(622i, 1i, 7446i))), vec3<i32>(-1i) * -vec3<i32>(u_input.a, 0i, u_input.a)), abs(-abs(-vec3<i32>(u_input.a, u_input.a, 1i))), all(!select(vec3<bool>(true, false, false), vec3<bool>(var_1.x, var_1.x, false), var_1.x)) | false);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(func_3(-993f)), arg_0);
    let var_1 = 0u >> (u_input.c.x % 32u);
    var var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(8363u, _wgslsmith_div_u32(~u_input.c.x, var_1), 0u)), abs(~min(firstTrailingBit(vec3<u32>(44919u, 3417u, u_input.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, var_1), vec3<u32>(u_input.b.x, 42379u, 4294967295u)))));
    var var_3 = any(vec4<bool>(false, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), true));
    var var_4 = _wgslsmith_div_vec2_u32(~(u_input.c ^ countOneBits(vec2<u32>(95624u, 1u))) >> (vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.b.x, u_input.b.x), ~var_1), 67225u) % vec2<u32>(32u)), u_input.b.zx);
    return min(_wgslsmith_mod_u32(countOneBits(_wgslsmith_sub_u32(~81249u, ~u_input.b.x)), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, var_1, 23322u)), ~vec3<u32>(var_1, 35029u, 14451u))), ((_wgslsmith_mult_u32(var_2.x, 8149u) << ((var_4.x >> (4294967295u % 32u)) % 32u)) & u_input.b.x) << (4294967295u % 32u));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, 74753u, ~_wgslsmith_add_u32(4294967295u, u_input.c.x)), max(select(u_input.b.x, u_input.c.x, true), ~u_input.b.x), u_input.c.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(func_2(Struct_1(vec3<i32>(-26620i, 23037i, 23413i)), Struct_2(Struct_1(vec3<i32>(1i, u_input.a, u_input.a)), Struct_1(vec3<i32>(u_input.a, 30529i, 13261i))), u_input.a), 4294967295u, min(45647u, u_input.c.x), abs(u_input.b.x)), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, 0u), abs(u_input.b.x), u_input.b.x)), ~(u_input.c.x >> (u_input.c.x % 32u)), firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(84677u, 52963u), u_input.b.yx), vec2<u32>(41555u, 4294967295u)))));
    let var_0 = Struct_3(true, vec3<i32>(-u_input.a, 17957i, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, 12229i)))), Struct_1(vec3<i32>(min(_wgslsmith_div_i32(-1i, 26405i), u_input.a), 2147483647i, -9541i)));
    global0 = abs(4294967295u);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-612f * -997f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1488f))))));
    var var_2 = vec3<u32>(min(~u_input.b.x, 35409u), u_input.b.x, ~51046u);
    return Struct_1(_wgslsmith_mod_vec3_i32(var_0.c.a, var_0.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.c);
    var_0 = u_input.c;
    var var_1 = ~_wgslsmith_dot_vec2_u32(~(_wgslsmith_div_vec2_u32(u_input.b.xx, vec2<u32>(var_0.x, 4294967295u)) ^ ~u_input.c), u_input.b.yy);
    var_1 = _wgslsmith_sub_u32(~40494u, 23416u) ^ ((~var_0.x >> (4294967295u % 32u)) << (~1u % 32u));
    var var_2 = abs(u_input.a);
    global0 = 37643u >> (1u % 32u);
    let var_3 = Struct_2(func_1(), Struct_1(abs(select(vec3<i32>(u_input.a, 2147483647i, 6477i), countOneBits(vec3<i32>(-38089i, 19276i, u_input.a)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))))));
    var var_4 = !select(vec4<bool>(false, true, false, true), vec4<bool>(true | any(vec4<bool>(false, false, true, true)), true, all(vec4<bool>(true, true, true, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, all(vec2<bool>(true, true)), any(vec3<bool>(false, false, true))), vec4<bool>(false, false, any(vec4<bool>(true, false, false, false)), all(vec3<bool>(false, false, false)))));
    var var_5 = vec2<i32>(1i, _wgslsmith_clamp_i32(abs(_wgslsmith_mod_i32(u_input.a, -39053i)) >> (u_input.b.x % 32u), -15871i, ~_wgslsmith_add_i32(i32(-1i) * -2147483647i, ~2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(41424u, _wgslsmith_div_vec2_u32(vec2<u32>(~1u, countOneBits(0u)), vec2<u32>(u_input.c.x, 1u)));
}

