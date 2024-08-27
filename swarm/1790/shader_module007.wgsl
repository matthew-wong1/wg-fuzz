struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(34046u, 1u, 0u, 84197u), false, -485f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_div_vec3_u32(u_input.d.xwy, vec3<u32>(30922u, 0u, 1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.d + vec4<f32>(515f, arg_0, 392f, -955f)) + _wgslsmith_f_op_vec4_f32(exp2(arg_1.d))), _wgslsmith_div_vec4_f32(arg_1.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, -895f, global0.c, arg_0))), !(!vec4<bool>(global0.b, global0.b, global0.b, false)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(925f)), -260f, _wgslsmith_f_op_f32(-arg_0), 537f)))), arg_1, -select(firstTrailingBit(0i), u_input.a, false), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~global0.a.ww, vec2<u32>(1u, 4294967295u)) & u_input.d.ww, countOneBits(_wgslsmith_mult_vec2_u32(global0.a.wz, ~vec2<u32>(3336u, 0u)))));
    let var_1 = select(vec3<bool>(true, global0.b, false), select(!vec3<bool>(var_0.e.x == 4294967295u, true, false), !select(select(vec3<bool>(true, false, false), vec3<bool>(global0.b, false, global0.b), vec3<bool>(true, global0.b, global0.b)), select(vec3<bool>(false, global0.b, false), vec3<bool>(true, false, true), vec3<bool>(false, true, global0.b)), !global0.b), false), !vec3<bool>(select(!global0.b, true, global0.b), global0.b, true));
    let var_2 = 275f;
    var var_3 = Struct_1(arg_1.a, -1i, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, _wgslsmith_div_f32(var_2, 1000f), _wgslsmith_f_op_f32(max(arg_1.c.x, _wgslsmith_f_op_f32(floor(var_2))))))), _wgslsmith_f_op_vec4_f32(sign(var_0.c.d)));
    let var_4 = Struct_1(var_3.a, -2147483647i, var_3.c, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.c.d + vec4<f32>(var_3.d.x, arg_0, _wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(sign(var_3.d.x)))), var_0.c.d)));
    return abs(select(~(_wgslsmith_dot_vec4_u32(global0.a, u_input.d) | global0.a.x), var_0.a.x >> (~(~36862u) % 32u), !var_1.x));
}

fn func_2(arg_0: Struct_3) -> u32 {
    global0 = arg_0;
    let var_0 = arg_0.b;
    let var_1 = Struct_2(abs(vec3<u32>(4294967295u, ~1u, func_3(global0.c, Struct_1(vec2<i32>(39506i, -85387i), u_input.a, vec3<f32>(1000f, 1382f, arg_0.c), vec4<f32>(-1120f, -1000f, arg_0.c, -1162f)), global0.a.x))), vec4<f32>(-495f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(-208f + 225f)) - _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -149f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.c, global0.c), -122f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1181f)))), Struct_1(~_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.b, u_input.b), -vec2<i32>(u_input.a, -31468i)), -_wgslsmith_clamp_i32(59607i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, -1i), vec3<i32>(u_input.a, u_input.b, u_input.a)), u_input.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(-global0.c), -345f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-702f, -134f, global0.c, 474f)))))), u_input.b, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.d.x) << (vec3<u32>(u_input.c, arg_0.a.x, 16261u) % vec3<u32>(32u)), vec3<u32>(global0.a.x, u_input.c, 3001u)), ~_wgslsmith_clamp_u32(u_input.d.x, arg_0.a.x, 51126u)) ^ ~reverseBits(u_input.d.xz));
    global0 = Struct_3(~(_wgslsmith_mod_vec4_u32(~u_input.d, reverseBits(u_input.d)) >> ((abs(arg_0.a) ^ countOneBits(vec4<u32>(0u, 27248u, global0.a.x, u_input.d.x))) % vec4<u32>(32u))), all(select(vec3<bool>(arg_0.b, false, any(vec2<bool>(arg_0.b, global0.b))), !select(vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(true, global0.b, true), vec3<bool>(var_0, arg_0.b, true)), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-203f, _wgslsmith_f_op_f32(f32(-1f) * -466f)))));
    global0 = arg_0;
    return arg_0.a.x;
}

fn func_1() -> f32 {
    global0 = Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.d.x, u_input.d.x, firstLeadingBit(func_2(Struct_3(vec4<u32>(33112u, 0u, 4294967295u, global0.a.x), false, -1127f))), _wgslsmith_sub_u32(u_input.c & global0.a.x, 0u)), vec4<u32>(1u, 4294967295u, firstLeadingBit(firstTrailingBit(u_input.d.x)), u_input.c)), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(round(-1722f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1292f, global0.c) + _wgslsmith_f_op_f32(abs(1f))), any(!vec2<bool>(global0.b, global0.b)) & (_wgslsmith_dot_vec2_u32(u_input.d.yw, u_input.d.xx) < ~1u))));
    let var_0 = abs(abs(~func_2(Struct_3(vec4<u32>(u_input.d.x, 0u, global0.a.x, 1u), global0.b, 889f))));
    var var_1 = Struct_1(select(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.a, 0i)) & ~vec2<i32>(u_input.a, 2147483647i), _wgslsmith_mod_vec2_i32(~vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, 0i) ^ vec2<i32>(u_input.b, u_input.a)), firstLeadingBit(abs(vec2<i32>(-2147483647i, u_input.b)))), ~vec2<i32>(firstLeadingBit(u_input.b), abs(31823i)), !(!vec2<bool>(global0.b, false))), select(u_input.b, ~(-1i & ~u_input.b), all(vec4<bool>(all(vec4<bool>(global0.b, global0.b, false, global0.b)), true, all(vec2<bool>(false, false)), any(vec4<bool>(global0.b, false, global0.b, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(125f, 438f, _wgslsmith_f_op_f32(sign(307f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.c, global0.c, global0.c)))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1158f)), global0.c, _wgslsmith_f_op_f32(round(global0.c))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(509f, global0.c, global0.c, 279f) + vec4<f32>(-1513f, global0.c, global0.c, global0.c)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c, global0.c, -983f, -908f))), vec4<f32>(-1000f, 1115f, global0.c, -571f))))));
    global0 = Struct_3(u_input.d, false & (true | !global0.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.c.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.c + var_1.c.x), _wgslsmith_f_op_f32(abs(var_1.c.x)), _wgslsmith_f_op_f32(var_1.d.x * -1000f), _wgslsmith_f_op_f32(-1542f - -1000f))), vec4<f32>(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)), -112f, var_1.c.x))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(999f - 813f), 1026f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - -985f))));
    return _wgslsmith_f_op_f32(floor(-814f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-459f)) - _wgslsmith_f_op_f32(ceil(-1322f))) + 1247f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), 385f);
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(8999i, i32(-1i) * -u_input.b), max(_wgslsmith_mult_vec2_i32(vec2<i32>(-2569i, u_input.a), vec2<i32>(u_input.a, u_input.b)) & select(vec2<i32>(u_input.b, -5340i), vec2<i32>(18266i, u_input.b), false), firstTrailingBit(vec2<i32>(u_input.b, u_input.b)) ^ -vec2<i32>(u_input.b, -49022i))), ~max(40214i, select(-1i, u_input.a, global0.b) & u_input.b), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global0.c * 510f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(1137f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(806f, global0.c, global0.c, 551f)))))));
    var var_2 = false;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1436f) + _wgslsmith_div_f32(-250f, 847f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c * global0.c), _wgslsmith_f_op_f32(-global0.c))), 823f), var_1.c.x, -484f);
    global0 = Struct_3(vec4<u32>(_wgslsmith_dot_vec4_u32(global0.a, global0.a), 47541u, abs(_wgslsmith_div_u32(global0.a.x, u_input.c)) | 1u, 0u), true, 631f);
    var var_3 = vec4<u32>(global0.a.x, u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.c, 3597u & global0.a.x), global0.a.x), vec2<u32>(~u_input.d.x, 26978u)), ~_wgslsmith_div_u32(10201u, reverseBits(98736u & global0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(countOneBits(select(vec4<i32>(u_input.a, 0i, var_1.a.x, -40478i), vec4<i32>(1i, var_1.b, -18337i, u_input.a), select(vec4<bool>(global0.b, global0.b, false, true), vec4<bool>(true, true, global0.b, global0.b), global0.b))), -(vec4<i32>(var_1.b, -2147483647i, var_1.b, u_input.a) & -vec4<i32>(-2147483647i, 9783i, 36128i, u_input.a))));
}

