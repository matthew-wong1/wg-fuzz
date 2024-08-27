struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: Struct_4 = Struct_4(355f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> i32 {
    global0 = array<i32, 22>();
    let var_0 = 51203u;
    let var_1 = true & select(_wgslsmith_f_op_f32(ceil(global1.a)) < global1.a, true, select(false, false, true));
    global1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(global1.a))) + global1.a) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + 1026f)), true))));
    var var_2 = _wgslsmith_mult_vec2_i32(firstLeadingBit((u_input.b.wy & vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a)) ^ -u_input.b.xy) >> (vec2<u32>(abs(var_0), 0u) % vec2<u32>(32u)), (u_input.b.yw >> (vec2<u32>(~1u, var_0) % vec2<u32>(32u))) << (vec2<u32>(1u, ~(~21837u)) % vec2<u32>(32u)));
    return _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~select(_wgslsmith_sub_u32(var_0, var_0), 54751u << (1u % 32u), true) ^ 0u, 22u)], 2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(-44526i << (var_0 % 32u), firstTrailingBit(global0[_wgslsmith_index_u32(50110u, 22u)]), -2147483647i, u_input.a), min(vec4<i32>(var_2.x, global0[_wgslsmith_index_u32(var_0, 22u)], global0[_wgslsmith_index_u32(var_0, 22u)], 2147483647i), -u_input.b)), -2147483647i);
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = func_3();
    return Struct_2(Struct_1(-441f, ~_wgslsmith_mult_vec4_u32(countOneBits(arg_0.b.b), arg_0.b.b), vec4<i32>(firstTrailingBit(abs(-4633i)), _wgslsmith_mod_i32(~3929i, -43708i), ~(~(-1i)), arg_0.b.c.x), !select(arg_0.b.d, select(vec2<bool>(arg_0.b.d.x, true), vec2<bool>(true, arg_0.b.d.x), vec2<bool>(true, arg_0.b.d.x)), select(vec2<bool>(true, arg_0.b.d.x), vec2<bool>(false, true), true)), _wgslsmith_div_f32(global1.a, 1585f)), arg_0.b.c);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2182f, -602f)), Struct_1(-632f, vec4<u32>(1u, 1u, 1u, 1u), u_input.b ^ reverseBits(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 22u)], -1i, global0[_wgslsmith_index_u32(4294967295u, 22u)], 33842i)), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true), global1.a), 59057u);
    var var_1 = func_2(var_0);
    var_1 = func_2(var_0);
    let var_2 = !(!select(select(var_1.a.d, select(var_1.a.d, var_1.a.d, var_1.a.d), vec2<bool>(false, var_1.a.d.x)), vec2<bool>(true, true), var_0.b.d));
    var_1 = func_2(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -804f), 1f)), func_2(Struct_3(var_0.a, func_2(var_0).a, _wgslsmith_add_u32(var_1.a.b.x, var_1.a.b.x))).a, var_1.a.b.x));
    return func_2(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-673f, -729f)), -567f), func_2(Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.a), Struct_1(-449f, var_1.a.b, u_input.b, var_1.a.d, -802f), firstLeadingBit(34056u))).a, _wgslsmith_clamp_u32(~9424u, var_0.b.b.x, var_1.a.b.x))).a;
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e, -858f) - vec2<f32>(global1.a, -679f)))))), func_1(), ~62492u);
    let var_1 = func_2(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-412f, -1021f))), func_1(), 7579u)).a;
    let var_2 = func_2(Struct_3(vec2<f32>(697f, arg_0.e), Struct_1(-646f, ~(~arg_0.b), _wgslsmith_mult_vec4_i32(func_1().c, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, var_1.c.x, -1i, -2147483647i), var_1.c)), vec2<bool>(all(vec3<bool>(var_1.d.x, arg_0.d.x, true)), any(var_1.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a)))), abs(~max(var_0.b.b.x, arg_0.b.x))));
    let var_3 = reverseBits(select(vec3<i32>(var_1.c.x, _wgslsmith_dot_vec3_i32(countOneBits(u_input.b.zzx), min(var_0.b.c.xxz, u_input.b.yxy)), ~var_1.c.x ^ -2147483647i), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_2.a.c.x, 0i), select(arg_0.c.yyy, var_0.b.c.zwx, vec3<bool>(false, false, var_2.a.d.x)))), vec3<bool>(var_1.d.x, all(vec3<bool>(var_2.a.d.x, false, var_2.a.d.x)), !all(var_1.d))));
    let var_4 = vec3<bool>(any(!vec4<bool>(true, false, var_0.b.d.x, false)), true, arg_0.d.x);
    return ~firstTrailingBit(~var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(func_4(func_1()), firstLeadingBit(vec4<u32>(~12556u, 24569u, ~29618u, abs(1u)))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, ~4294967295u, ~1u, ~18038u), reverseBits(vec4<u32>(1u, 1u, 1u, 1u) >> (func_2(Struct_3(vec2<f32>(476f, 437f), Struct_1(-956f, vec4<u32>(13993u, 6575u, 4294967295u, 1u), vec4<i32>(-35043i, -2147483647i, u_input.b.x, 1i), vec2<bool>(false, false), 928f), 0u)).a.b % vec4<u32>(32u)))));
    global1 = Struct_4(global1.a);
    global0 = array<i32, 22>();
    var_0 = select(vec4<u32>(_wgslsmith_mod_u32(1u, 77908u), 1u, var_0.x, func_4(func_1()).x), min(~(vec4<u32>(32763u, var_0.x, var_0.x, var_0.x) | vec4<u32>(0u, var_0.x, 4294967295u, 35509u)), abs(firstTrailingBit(vec4<u32>(25637u, var_0.x, 0u, 4362u)))) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 87399u, var_0.x, var_0.x) ^ vec4<u32>(32196u, 1u, var_0.x, 4294967295u), select(vec4<u32>(4294967295u, var_0.x, 17998u, 4294967295u), vec4<u32>(0u, var_0.x, 11873u, var_0.x), vec4<bool>(false, false, true, false))), 4294967295u, 16611u, 0u), any(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false))));
    let var_1 = !any(select(vec3<bool>(false, true, any(vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(all(vec4<bool>(false, false, true, false)), false, all(vec3<bool>(false, false, true)))));
    var_0 = countOneBits(vec4<u32>(select(1u, var_0.x << (58109u % 32u), var_1), _wgslsmith_mod_u32(var_0.x, var_0.x) & 13516u, 11229u, _wgslsmith_dot_vec2_u32(func_1().b.zx, vec2<u32>(var_0.x, 0u) | var_0.yw))) >> (~select(abs(firstLeadingBit(vec4<u32>(var_0.x, var_0.x, 21698u, var_0.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(3975u, 35176u, var_0.x, 5852u), vec4<u32>(var_0.x, 0u, 1u, 1u)), firstTrailingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), ~vec4<u32>(var_0.x, 65235u, var_0.x, var_0.x)), !vec4<bool>(true, true, var_1, false)) % vec4<u32>(32u));
    let var_2 = vec4<bool>(var_1, var_1, true, false);
    let x = u_input.a;
    s_output = StorageBuffer(531f, i32(-1i) * -2147483647i, firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(0u, var_0.x), ~min(64256u, 1u))), min(var_0.yz, ~_wgslsmith_mult_vec2_u32(var_0.xx, var_0.ww)), global1.a);
}

