struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: vec4<u32>;

var<private> global2: array<bool, 24>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(-653f, -650f, global2[_wgslsmith_index_u32(34169u, 24u)])), 389f, _wgslsmith_f_op_f32(sign(1f)));
    var var_1 = ~(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(global1.x, 1u, 36994u, global1.x) >> (vec4<u32>(7693u, global1.x, u_input.c, u_input.d.x) % vec4<u32>(32u))), firstTrailingBit(vec4<u32>(4294967295u, u_input.c, 12422u, u_input.d.x))) | min(~vec4<u32>(33946u, u_input.c, global1.x, 4294967295u), firstLeadingBit(max(vec4<u32>(72837u, 6254u, 34669u, global1.x), vec4<u32>(3596u, u_input.d.x, u_input.d.x, 90286u)))));
    var var_2 = 1000f;
    let var_3 = -740f;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-588f))));
    return global1.x;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> bool {
    global1 = vec4<u32>(u_input.c, 13667u, global1.x, _wgslsmith_sub_u32(u_input.c, ~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(3659u, 1317u, arg_1.x)) & 55436u));
    var var_0 = vec2<u32>(_wgslsmith_add_u32(~0u, func_3() & (75789u << (global1.x % 32u))), _wgslsmith_div_u32(u_input.d.x, 4294967295u) ^ min(_wgslsmith_dot_vec3_u32(select(u_input.d, global1.yxy, vec3<bool>(false, false, true)), vec3<u32>(1u, 1u, arg_1.x)), arg_1.x));
    global1 = _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, (~global1.x ^ (1u ^ u_input.c)) ^ arg_1.x, ~var_0.x), select(vec4<u32>(29358u, 4294967295u, 4294967295u, _wgslsmith_div_u32(firstTrailingBit(global1.x), _wgslsmith_sub_u32(6488u, 0u))), vec4<u32>(func_3(), u_input.c, ~4294967295u, 45773u), !select(select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(arg_1.x, 24u)], false), vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(global1.x, 24u)], true, true), vec4<bool>(true, global2[_wgslsmith_index_u32(43723u, 24u)], false, false)), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(global1.x, 24u)], false), false)));
    let var_1 = Struct_2(vec2<u32>(var_0.x, ~40578u), Struct_1(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b, arg_1.x, var_0.x, arg_0), vec4<u32>(9756u, 0u, arg_1.x, arg_0), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0, 24u)], global2[_wgslsmith_index_u32(var_0.x, 24u)], global2[_wgslsmith_index_u32(0u, 24u)])), select(vec4<u32>(global1.x, 28825u, arg_1.x, 36167u), vec4<u32>(u_input.b, arg_0, 54716u, global1.x), vec4<bool>(global2[_wgslsmith_index_u32(1u, 24u)], true, global2[_wgslsmith_index_u32(arg_1.x, 24u)], true))) | abs(~vec4<u32>(37078u, u_input.b, 0u, u_input.d.x)), global1.wy, !(true | global2[_wgslsmith_index_u32(1u >> (var_0.x % 32u), 24u)])));
    let var_2 = Struct_2(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1.x, 40686u), reverseBits(arg_0)), _wgslsmith_mult_u32(func_3(), abs(global1.x))) | var_1.a, Struct_1(var_1.b.a, vec2<u32>(_wgslsmith_div_u32(reverseBits(4294967295u), _wgslsmith_div_u32(1u, global1.x)), arg_1.x), _wgslsmith_mult_u32(max(global1.x, 4294967295u), arg_0) < ~(~16419u)));
    return all(vec3<bool>(any(vec3<bool>(var_1.b.c, all(vec4<bool>(true, global2[_wgslsmith_index_u32(global1.x, 24u)], var_2.b.c, var_2.b.c)), true)), all(vec4<bool>(true, true && global2[_wgslsmith_index_u32(var_2.a.x, 24u)], !var_2.b.c, any(vec3<bool>(global2[_wgslsmith_index_u32(var_2.b.b.x, 24u)], global2[_wgslsmith_index_u32(37031u, 24u)], false)))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(8937u, 4294967295u), select(vec2<u32>(u_input.b, var_0.x), vec2<u32>(u_input.c, var_2.a.x), vec2<bool>(true, true))), 24u)]));
}

fn func_4(arg_0: bool) -> Struct_4 {
    var var_0 = Struct_4(Struct_3(Struct_1(~vec4<u32>(25119u, u_input.c, u_input.b, global1.x) | vec4<u32>(u_input.b, global1.x, global1.x, 4294967295u), u_input.d.zx, arg_0), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.c, u_input.d.x, u_input.d.x), vec4<u32>(1u, global1.x, 1u, 0u)), ~98805u, abs(u_input.c), ~4294967295u), vec2<u32>(~u_input.c, ~u_input.b), !arg_0), global2[_wgslsmith_index_u32(u_input.c, 24u)], !select(vec3<bool>(arg_0, arg_0, global2[_wgslsmith_index_u32(global1.x, 24u)]), vec3<bool>(true, arg_0, arg_0), !global2[_wgslsmith_index_u32(1u, 24u)]), vec4<i32>((u_input.e.x << (9442u % 32u)) | -2147483647i, -_wgslsmith_mult_i32(u_input.e.x, u_input.e.x), u_input.e.x, 0i)));
    var var_1 = Struct_4(Struct_3(Struct_1(max(~vec4<u32>(4294967295u, u_input.c, 0u, 4294967295u), select(var_0.a.b.a, var_0.a.b.a, vec4<bool>(var_0.a.c, arg_0, global2[_wgslsmith_index_u32(0u, 24u)], false))), firstTrailingBit(~vec2<u32>(1u, global1.x)), any(var_0.a.d) | true), Struct_1(var_0.a.a.a & var_0.a.a.a, firstLeadingBit(vec2<u32>(1u, u_input.b)), ~25064u < var_0.a.b.b.x), arg_0, vec3<bool>(true, any(vec4<bool>(var_0.a.c, true, true, true)), !(arg_0 == global2[_wgslsmith_index_u32(41363u, 24u)])), vec4<i32>(1i, var_0.a.e.x, ~u_input.e.x, _wgslsmith_mod_i32(5019i, 52136i)) & (_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -2147483647i, -1i, 0i), var_0.a.e, vec4<i32>(0i, u_input.e.x, var_0.a.e.x, -44056i)) & vec4<i32>(var_0.a.e.x, -2147483647i, u_input.a, var_0.a.e.x))));
    global0 = array<Struct_3, 5>();
    let var_2 = min(vec2<u32>(var_0.a.a.b.x, func_3()), ~vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, var_0.a.b.b.x, 13071u)), u_input.d), global1.x));
    var var_3 = Struct_4(var_1.a);
    return Struct_4(var_3.a);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = func_4(!func_2(global1.x, vec2<u32>(global1.x, 0u)));
    let var_1 = arg_0.x;
    var var_2 = ~(~var_0.a.b.a) | var_0.a.a.a;
    return func_4(global2[_wgslsmith_index_u32(~(~(0u >> (global1.x % 32u))) << (~func_3() % 32u), 24u)]).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(reverseBits(~(global1.ww << (vec2<u32>(u_input.d.x, 52858u) % vec2<u32>(32u)))) ^ vec2<u32>(global1.x, countOneBits(_wgslsmith_div_u32(u_input.d.x, u_input.b))), func_1(_wgslsmith_clamp_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.e, u_input.e), vec3<i32>(_wgslsmith_mult_i32(-21878i, -5909i), abs(-11173i), ~u_input.e.x), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.e.x, u_input.a, u_input.a), vec3<i32>(7549i, u_input.a, -2147483647i) | u_input.e))));
    var var_1 = global0[_wgslsmith_index_u32(~14630u, 5u)];
    var var_2 = abs(vec4<i32>(77863i, var_1.e.x, firstTrailingBit(-2147483647i), -24821i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(func_4(global2[_wgslsmith_index_u32(u_input.d.x, 24u)]).a.e), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, 18494i, -26321i, var_2.x), vec4<i32>(var_1.e.x, 2147483647i, 26782i, 1i))), ~var_2.x, ~abs(_wgslsmith_add_i32(var_2.x, -1i))), 213f);
}

