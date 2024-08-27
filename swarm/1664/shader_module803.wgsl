struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 4294967295u, 45093u, 4294967295u, 0u, 59746u, 1u, 25339u, 1u, 51218u, 0u, 31669u, 40319u, 50929u, 4294967295u, 1u, 17976u);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<vec3<f32>, 10>;

var<private> global3: Struct_4;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32) -> f32 {
    global1 = !vec2<bool>(global3.d.b, true);
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(112f * 1000f)), global3.c.d.x, Struct_3(global3.d, vec3<f32>(global3.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)), _wgslsmith_f_op_f32(floor(arg_1))), global3.d, ~global3.c.d, 0u), global3.d);
    let var_1 = -u_input.a.ww << (select(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(min(var_0.c.d.zw, u_input.b.zz), var_0.c.d.zw), vec2<u32>(_wgslsmith_add_u32(37167u, 1u), 39422u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3.b), select(u_input.b.zz, vec2<u32>(var_0.b, 69636u), vec2<bool>(var_0.d.b, true))), abs(global0[_wgslsmith_index_u32(1u, 17u)])), select(_wgslsmith_f_op_f32(sign(arg_2)) == arg_1, select(global3.d.b, var_0.d.b, global1.x), all(vec2<bool>(true, false)) || false)) % vec2<u32>(32u));
    let var_2 = false;
    global2 = array<vec3<f32>, 10>();
    return _wgslsmith_f_op_f32(sign(-1080f));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_4 {
    global2 = array<vec3<f32>, 10>();
    let var_0 = global3.c.c;
    let var_1 = vec4<f32>(arg_0.a.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_u32(select(arg_0.d.zx, global3.c.d.wy, vec2<bool>(true, global1.x)), min(vec2<u32>(0u, global0[_wgslsmith_index_u32(26702u, 17u)]), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 17u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1162f), arg_1)), 1637f, global3.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2439f, _wgslsmith_div_f32(-766f, _wgslsmith_f_op_f32(sign(arg_1)))))), _wgslsmith_f_op_f32(-global3.d.c.x));
    global2 = array<vec3<f32>, 10>();
    global3 = Struct_4(global3.a, ~(0u | _wgslsmith_mult_u32(~u_input.b.x, arg_0.d.x | 0u)), Struct_3(global3.d, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, -155f, _wgslsmith_f_op_f32(-var_1.x)))), Struct_2(abs(u_input.a.xx), all(!vec2<bool>(global3.c.c.b, true)), _wgslsmith_f_op_vec3_f32(round(var_0.c))), firstTrailingBit(abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.b, 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(global3.c.d.x, 17u)], 1u) | global3.c.d)), 27110u), Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.a.x), _wgslsmith_sub_i32(var_0.a.x, u_input.a.x)), _wgslsmith_div_vec2_i32(abs(u_input.a.xy), var_0.a)), 26335u < global3.b, var_0.c));
    return Struct_4(global3.a, _wgslsmith_clamp_u32(~_wgslsmith_add_u32(30947u, min(9503u, arg_0.e)), arg_0.e, _wgslsmith_div_u32(~8843u, global3.c.d.x) >> (_wgslsmith_dot_vec2_u32(reverseBits(arg_0.d.yy), vec2<u32>(global0[_wgslsmith_index_u32(global3.b, 17u)], global3.b)) % 32u)), Struct_3(global3.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1722f + var_0.c.x), var_0.c.x, -217f) - _wgslsmith_f_op_vec3_f32(-global3.c.c.c)), global3.d, vec4<u32>(~94903u, firstTrailingBit(~34429u), arg_0.d.x, _wgslsmith_add_u32(u_input.b.x, ~64091u)), u_input.b.x), Struct_2(~vec2<i32>(arg_0.c.a.x, _wgslsmith_dot_vec2_i32(u_input.a.xy, global3.d.a)), ((1373f >= global3.d.c.x) && true) && (~arg_0.d.x > 4294967295u), _wgslsmith_f_op_vec3_f32(round(global3.c.c.c))));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = global3.c;
    var var_1 = func_2(global3.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.c.b.x, var_0.b.x) - global3.d.c.x));
    var var_2 = min(~firstLeadingBit(var_0.c.a.x), -17465i);
    var var_3 = !(66580u >= (arg_0 ^ ~(~0u)));
    var_1 = func_2(Struct_3(func_2(Struct_3(Struct_2(u_input.a.xz, true, var_1.d.c), vec3<f32>(242f, var_1.d.c.x, -451f), func_2(Struct_3(global3.c.c, var_0.b, Struct_2(vec2<i32>(0i, global3.c.a.a.x), var_0.a.b, vec3<f32>(-473f, var_0.b.x, -613f)), var_1.c.d, global0[_wgslsmith_index_u32(arg_0, 17u)]), 557f).d, select(global3.c.d, vec4<u32>(global3.b, u_input.b.x, var_1.c.e, global3.b), var_1.d.b), ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1942f)) - _wgslsmith_f_op_f32(-241f - 486f))).c.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a.a, 537f, -135f))) * vec3<f32>(2034f, -375f, 438f)) + vec3<f32>(global3.d.c.x, 233f, -215f)), func_2(func_2(Struct_3(var_0.c, vec3<f32>(-1000f, global3.c.a.c.x, var_1.a.a), Struct_2(var_0.a.a, true, vec3<f32>(1337f, global3.c.a.c.x, -1234f)), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 42689u, global3.c.e, arg_0), 4294967295u), global3.c.a.c.x).c, 276f).c.a, abs(vec4<u32>(~u_input.b.x, ~global3.b, global0[_wgslsmith_index_u32(abs(23529u), 17u)], 1u)), global0[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1258f)) * _wgslsmith_div_f32(245f, 606f)), global3.c.b.x, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a.a * var_0.a.c.x))) * 436f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.a.a - -194f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(global3.a.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(866f - global3.c.a.c.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))) - _wgslsmith_f_op_f32(func_1(~(global3.b & global0[_wgslsmith_index_u32(0u, 17u)])))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1236f)))), _wgslsmith_f_op_f32(sign(-945f)), _wgslsmith_f_op_f32(1106f * _wgslsmith_div_f32(1022f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.d.c.x), _wgslsmith_f_op_f32(var_0.a - -648f))))));
    let var_2 = abs(select(~vec4<u32>(~1u, global3.c.d.x, 0u, _wgslsmith_mod_u32(global3.b, 4294967295u)), ~vec4<u32>(84187u, 1u << (u_input.b.x % 32u), 79047u, 1u), select(vec4<bool>(all(vec3<bool>(global3.d.b, false, false)), u_input.a.x >= -35873i, all(vec2<bool>(global1.x, global1.x)), false), select(select(vec4<bool>(global3.c.a.b, global1.x, true, true), vec4<bool>(false, global1.x, false, global3.c.a.b), vec4<bool>(false, true, false, false)), select(vec4<bool>(global3.d.b, false, global1.x, global1.x), vec4<bool>(global3.d.b, global1.x, true, false), false), select(vec4<bool>(true, global3.d.b, global3.c.a.b, global3.d.b), vec4<bool>(global1.x, true, true, global3.d.b), global3.d.b)), vec4<bool>(!global1.x, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yzw, -840f, global3.d.a.x, abs(abs(abs(global3.d.a.x))));
}

