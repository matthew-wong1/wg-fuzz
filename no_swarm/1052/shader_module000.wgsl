struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5 = Struct_5(Struct_2(vec3<bool>(false, false, false), Struct_1(1i)), vec2<u32>(10802u, 13568u));

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(1i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = Struct_5(global1.a, min(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global1.b.x), global1.b)), ~vec2<u32>(countOneBits(4294967295u), 4294967295u)));
    var var_1 = Struct_2(!arg_0.yyy, global1.a.b);
    var_1 = var_0.a;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 321f) - -1362f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1000f) + vec2<f32>(1234f, 246f))) * vec2<f32>(1f, 1f)))), all(arg_0), global1.a);
    var var_3 = -(~(-69590i));
    return var_0.b.x;
}

fn func_2(arg_0: u32, arg_1: Struct_5) -> i32 {
    var var_0 = select(_wgslsmith_mult_vec3_i32(~vec3<i32>(global1.a.b.a, 1i, global3.a), _wgslsmith_sub_vec3_i32(~u_input.a.yzx, vec3<i32>(arg_1.a.b.a, u_input.a.x, -11067i))), u_input.a.yzz, select(vec3<bool>(true, arg_1.a.a.x != true, arg_1.a.a.x), global1.a.a, vec3<bool>(true, all(vec4<bool>(true, false, false, false)), any(vec3<bool>(false, arg_1.a.a.x, false))))) ^ _wgslsmith_clamp_vec3_i32(-(~(u_input.a.zxx >> (vec3<u32>(global1.b.x, global1.b.x, arg_0) % vec3<u32>(32u)))), vec3<i32>(~1i, u_input.a.x, min(-2147483647i, 38591i)), u_input.a.zyw);
    var var_1 = !vec4<bool>(global1.a.a.x && any(vec4<bool>(true, global1.a.a.x, global1.a.a.x, global1.a.a.x)), true, global1.a.a.x, true);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(278f, _wgslsmith_f_op_f32(f32(-1f) * -1272f))))), _wgslsmith_mult_u32(46586u, firstLeadingBit(func_3(vec4<bool>(true, arg_1.a.a.x, false, global1.a.a.x)))), arg_0, firstLeadingBit(~vec2<u32>(reverseBits(arg_1.b.x), 4294967295u)), Struct_1(u_input.a.x));
    let var_3 = 0i;
    let var_4 = Struct_5(Struct_2(vec3<bool>(var_1.x, !(-32004i < global1.a.b.a), arg_1.a.a.x), Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)))), firstLeadingBit(_wgslsmith_add_vec2_u32(reverseBits(global1.b), reverseBits(vec2<u32>(4294967295u, var_2.d.x))) & select(vec2<u32>(0u, arg_0), ~vec2<u32>(29889u, 0u), var_1.wx)));
    return ~arg_1.a.b.a;
}

fn func_1() -> u32 {
    let var_0 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global3.a, 21186i), _wgslsmith_mod_i32(61586i, -33011i), 1i), u_input.a.yyx), _wgslsmith_sub_i32(-4530i, ~46728i));
    let var_1 = -vec2<i32>(2572i, _wgslsmith_mod_i32(~var_0 & ~var_0, func_2(1u, Struct_5(Struct_2(global1.a.a, global1.a.b), global1.b)) >> (global1.b.x % 32u)));
    var var_2 = max(vec4<i32>(var_0, -2147483647i, 0i, u_input.a.x) ^ _wgslsmith_sub_vec4_i32(max(vec4<i32>(global1.a.b.a, u_input.a.x, u_input.a.x, 1i), vec4<i32>(var_0, -1i, -29119i, global3.a)), u_input.a), -(~vec4<i32>(21844i, -5216i, 0i, global3.a)) | (abs(vec4<i32>(1i, -1i, var_0, var_1.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global1.b.x, 49541u, 73092u, 1u), vec4<u32>(global1.b.x, global1.b.x, 0u, 4294967295u)) % vec4<u32>(32u)))) >> (select(~vec4<u32>(~global1.b.x, 17829u & global1.b.x, 2847u, ~27986u), firstTrailingBit(~vec4<u32>(global1.b.x, global1.b.x, global1.b.x, 26674u) >> ((vec4<u32>(132523u, global1.b.x, global1.b.x, global1.b.x) ^ vec4<u32>(47711u, 0u, global1.b.x, global1.b.x)) % vec4<u32>(32u))), false) % vec4<u32>(32u));
    global3 = global1.a.b;
    var var_3 = var_2.yxy;
    return _wgslsmith_dot_vec4_u32(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 36302u, global1.b.x, global1.b.x), vec4<u32>(66534u, global1.b.x, 79478u, global1.b.x) & vec4<u32>(4294967295u, 0u, global1.b.x, global1.b.x)), global1.b.x, global1.b.x, _wgslsmith_mult_u32(abs(0u), 67709u))), vec4<u32>(reverseBits(select(global1.b.x, global1.b.x, false)) | (global1.b.x << (~global1.b.x % 32u)), _wgslsmith_mult_u32(_wgslsmith_add_u32(~21225u, firstLeadingBit(global1.b.x)), global1.b.x), 0u | _wgslsmith_mod_u32(~global1.b.x, 100794u), global1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(abs(~(~(-u_input.a.x))), 43829i >> (~(~func_1()) % 32u), -u_input.a.x, i32(-1i) * -1i);
    global2 = global1.a.a.x;
    global2 = true;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f)))), ~_wgslsmith_sub_u32(1u, ~_wgslsmith_sub_u32(global1.b.x, 0u)), 10358u, abs(vec2<u32>(~1u, firstTrailingBit(1u))), Struct_1(-11323i));
    var var_2 = countOneBits(global1.b.x) > _wgslsmith_mod_u32(~4294967295u, global1.b.x ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, global1.b.x, global1.b.x, global1.b.x), vec4<u32>(120464u, 62842u, 4035u, 1u)));
    var_2 = any(select(select(select(!vec3<bool>(false, false, global1.a.a.x), global1.a.a, global1.a.a.x), select(!vec3<bool>(true, global1.a.a.x, true), select(vec3<bool>(true, false, true), vec3<bool>(global1.a.a.x, false, global1.a.a.x), false), global1.a.a), global1.a.a), !global1.a.a, global1.a.a));
    global0 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(min(~(reverseBits(vec4<u32>(1u, global1.b.x, 0u, var_1.c)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.x, var_1.d.x, 4294967295u, 27234u), vec4<u32>(69867u, var_1.d.x, 82472u, var_1.b)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_1.d.x, 66195u), 23713u >> (global1.b.x % 32u), 37062u, 103504u), _wgslsmith_mult_vec4_u32(vec4<u32>(13588u, global1.b.x, 0u, var_1.d.x), ~vec4<u32>(4294967295u, var_1.b, global1.b.x, 1u)), vec4<u32>(4294967295u, global1.b.x ^ 4294967295u, max(30353u, 1u), global1.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(trunc(232f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-517f * var_1.a) * var_1.a), 404f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(var_1.a - var_1.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-452f, var_1.a, var_1.a, var_1.a))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, 1801f, var_1.a, -1508f), vec4<f32>(912f, var_1.a, var_1.a, 1243f), global1.a.a.x)))))), vec4<i32>(-522i, ~var_0.x, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_mult_i32(global3.a, -3588i)) >> (var_1.b % 32u), firstLeadingBit(global3.a)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a, -707f, global1.a.a.x)) + _wgslsmith_f_op_f32(-1893f * var_1.a)), 2312f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - var_1.a) + 266f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-927f, -169f, var_1.a))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, 733f, var_1.a), vec3<f32>(-1311f, -1603f, var_1.a)))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-341f, 1493f, -1000f), vec3<f32>(var_1.a, 368f, var_1.a)), vec3<f32>(var_1.a, var_1.a, var_1.a)))), ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(reverseBits(-44578i), 1i << (global1.b.x % 32u), -global3.a), -(-15251i | var_0.x)));
}

