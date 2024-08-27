struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec4<u32> = vec4<u32>(19913u, 35483u, 9059u, 4294967295u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = vec3<i32>(firstTrailingBit(~_wgslsmith_mult_i32(max(1i, 0i), firstLeadingBit(-1i))), _wgslsmith_mod_i32(((u_input.a.x & arg_0.c.x) & abs(0i)) | countOneBits(countOneBits(arg_0.b.x)), u_input.a.x >> (u_input.b.x % 32u)), u_input.a.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(46069u, arg_0.a.b.a.x, arg_0.a.a.a.x, u_input.b.x), vec4<u32>(global1.x, arg_0.a.a.a.x, 0u, u_input.b.x))), vec4<u32>(4294967295u, arg_0.a.a.a.x, 11353u, global1.x) ^ min(vec4<u32>(0u, 4294967295u, u_input.b.x, arg_0.a.a.a.x), u_input.b), u_input.b << (vec4<u32>(arg_0.a.a.a.x, 43189u, u_input.b.x, arg_0.a.a.a.x) % vec4<u32>(32u)))), arg_0.a.a, max(_wgslsmith_div_vec3_i32(abs(arg_0.b.wxx << (global1.www % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(firstTrailingBit(arg_0.a.c), vec3<i32>(u_input.a.x, 2147483647i, var_0.x))), vec3<i32>(-10104i, _wgslsmith_sub_i32(-63120i, var_0.x), var_0.x)));
    global1 = var_1.a.a >> (vec4<u32>(1u, 22315u | _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.b.a.x, var_1.a.a.x, u_input.b.x), var_1.a.a.yzz), 4294967295u, 14843u) % vec4<u32>(32u));
    let var_2 = -1463f;
    let var_3 = 4294967295u;
    return var_0.x;
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(u_input.b, ~u_input.b, u_input.b)), Struct_1(vec4<u32>(u_input.b.x, 15217u, global1.x, _wgslsmith_div_u32(12036u, 41377u))), -(~vec3<i32>(4666i, 1i, u_input.a.x))), -(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 6870i, 18955i), vec4<i32>(u_input.a.x, -21649i, -1i, -1i)) & ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 35150i, 1i, -1i), vec4<i32>(-1i, -4871i, u_input.a.x, 0i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(~_wgslsmith_div_i32(u_input.a.x, 2147483647i), countOneBits(~(-1i)), ~(-2147483647i & u_input.a.x), -func_3(Struct_3(Struct_2(Struct_1(vec4<u32>(26542u, u_input.b.x, 67449u, 142511u)), Struct_1(u_input.b), vec3<i32>(u_input.a.x, 30141i, 373i)), vec4<i32>(-1i, -38213i, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, 0i, u_input.a.x), vec2<bool>(true, false)))), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 999i, u_input.a.x, u_input.a.x)) ^ -vec4<i32>(-10979i, -1i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, -_wgslsmith_div_i32(u_input.a.x, u_input.a.x), firstLeadingBit(i32(-1i) * -44048i), u_input.a.x)), select(vec2<bool>(any(vec3<bool>(true, true, true)), false), vec2<bool>(false, true), select(vec2<bool>(true, all(vec2<bool>(true, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true)))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(~var_0.a.c.x, ~var_0.a.c.x), max(-2147483647i, -2147483647i), ~u_input.a.x, abs(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), 0i), func_3(var_0))));
    let var_2 = _wgslsmith_div_u32(1u, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(global1.x, var_0.a.a.a.x)), _wgslsmith_div_u32(var_0.a.b.a.x, 579u))));
    let var_3 = Struct_2(Struct_1(vec4<u32>(var_2, _wgslsmith_dot_vec3_u32(u_input.b.zww, var_0.a.b.a.yxz), ~_wgslsmith_dot_vec3_u32(u_input.b.xzy, vec3<u32>(var_2, var_0.a.a.a.x, 4294967295u)), var_2)), var_0.a.b, (_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_0.c.x, var_0.c.x), -var_0.a.c) >> (~(~vec3<u32>(u_input.b.x, 1006u, global1.x)) % vec3<u32>(32u))) & abs(select(firstLeadingBit(var_1.wyx), var_0.a.c, any(vec2<bool>(var_0.d.x, var_0.d.x)))));
    let var_4 = !select(!(!(!var_0.d)), vec2<bool>(false, !var_0.d.x), var_0.d.x == all(vec3<bool>(false, true, false)));
    return u_input.b;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_dot_vec4_u32(~func_2(), u_input.b);
    let var_0 = arg_0.a;
    global1 = u_input.b;
    global0 = 1u;
    var var_1 = true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_vec4_u32(u_input.b, u_input.b);
    let var_0 = vec3<i32>(countOneBits(u_input.a.x >> (u_input.b.x % 32u)), -(~(~_wgslsmith_add_i32(u_input.a.x, -1i))), -u_input.a.x);
    let var_1 = vec3<f32>(1f, _wgslsmith_f_op_f32(1590f - _wgslsmith_f_op_f32(f32(-1f) * -196f)), _wgslsmith_f_op_f32(-1f));
    global0 = u_input.b.x;
    var var_2 = func_1(Struct_2(Struct_1(u_input.b), Struct_1(abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 0u, 384u, u_input.b.x), vec4<u32>(1080u, 43327u, 11657u, 97749u)))), vec3<i32>(_wgslsmith_mult_i32(0i, u_input.a.x), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.b.x, _wgslsmith_add_u32(global1.x << (5998u % 32u), 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, global1.x), vec2<u32>(u_input.b.x, 4294967295u)), func_1(Struct_2(Struct_1(u_input.b), var_2.a, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))).b.a.x) ^ vec4<u32>(countOneBits(56692u << (0u % 32u)), abs(_wgslsmith_div_u32(global1.x, 36006u)), ~_wgslsmith_sub_u32(43495u, 1u), u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1439f, _wgslsmith_f_op_f32(var_1.x * -1224f))))), global1.x, var_2.c.zx, u_input.b.xx);
}

