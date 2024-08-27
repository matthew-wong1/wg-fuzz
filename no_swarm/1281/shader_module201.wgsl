struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32> = vec3<u32>(19453u, 6299u, 4294967295u);

var<private> global2: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: i32, arg_3: bool) -> vec4<u32> {
    let var_0 = -2020f;
    global2 = arg_3;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1821f, 1887f, _wgslsmith_f_op_f32(max(-645f, -1243f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(307f, _wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(var_0 + 457f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(718f, 1857f, 728f))), _wgslsmith_div_vec3_f32(vec3<f32>(2159f, var_0, 2385f), vec3<f32>(1981f, -1970f, var_0)))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(var_0, var_0)), var_0, 250f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(867f, var_0, var_0)))))), false));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(min(200f, var_0)))) + _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f))))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-405f)))));
    let var_2 = Struct_1(0i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(746f, -702f, 1740f, -614f), vec4<f32>(343f, var_1.x, var_0, 426f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1687f, 1581f, -500f, -570f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_1.x)))))), u_input.b.zzw ^ -vec3<i32>(abs(arg_0), -2147483647i, 1i));
    return _wgslsmith_clamp_vec4_u32(~(vec4<u32>(global1.x, global1.x, 31889u, global1.x) ^ vec4<u32>(30489u, 4294967295u, arg_1.x, 7220u)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 32897u, 32739u, global1.x) << (vec4<u32>(43410u, arg_1.x, 11794u, 74655u) % vec4<u32>(32u)), vec4<u32>(arg_1.x, 39998u, 1u, 66278u) ^ vec4<u32>(u_input.c, global1.x, 31852u, global1.x)), ~vec4<u32>(global1.x, 4294967295u, u_input.a, arg_1.x)), select(~firstLeadingBit(vec4<u32>(global1.x, 4294967295u, 89280u, global1.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(u_input.a, 10554u, 0u, 0u)), arg_3)) | ~vec4<u32>(54466u, 1u, 18162u, global1.x);
}

fn func_2() -> bool {
    var var_0 = func_3(-(~u_input.b.x) ^ _wgslsmith_mult_i32(390i, -38270i), global1.zz, u_input.b.x & _wgslsmith_add_i32(2147483647i, ~1i), any(vec3<bool>(true, true, true))) & ~min(abs(max(vec4<u32>(u_input.c, 0u, 23972u, 4180u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, global1.x))), select(vec4<u32>(53241u, 0u, u_input.a, global1.x), ~vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a), any(vec4<bool>(false, false, true, true))));
    let var_1 = min(var_0.xy, ~max(firstLeadingBit(firstTrailingBit(var_0.yx)), _wgslsmith_mod_vec2_u32(var_0.xy << (var_0.wx % vec2<u32>(32u)), vec2<u32>(9086u, var_0.x) << (var_0.zx % vec2<u32>(32u)))));
    global0 = false;
    global1 = vec3<u32>(30151u, ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(39635u, global1.x, 1u, 57272u)), _wgslsmith_sub_vec4_u32(vec4<u32>(5152u, global1.x, 1u, 1u), vec4<u32>(var_1.x, var_0.x, 21132u, var_0.x))) ^ 4294967295u, abs(8305u));
    let var_2 = Struct_2(_wgslsmith_clamp_i32(~(~2147483647i), -2147483647i, i32(-1i) * -u_input.b.x), vec3<i32>(countOneBits(_wgslsmith_add_i32(42434i, 16269i)), _wgslsmith_mod_i32(u_input.b.x, 23416i), -17915i), global1.x, countOneBits(u_input.b.x & (~u_input.b.x << (countOneBits(var_1.x) % 32u))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-342f - _wgslsmith_f_op_f32(min(-1217f, -158f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_div_f32(329f, -692f))), all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false))))) < _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -747f) + _wgslsmith_f_op_f32(f32(-1f) * -891f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-2064f, -467f, false)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> i32 {
    var var_0 = ~global1.x;
    var_0 = 44095u >> (_wgslsmith_mod_u32(~4294967295u, ~reverseBits(9574u)) % 32u);
    let var_1 = !(!vec3<bool>(true, select(true, false, true), func_2()));
    var var_2 = Struct_1(~(-4880i | ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(2520f, 1375f, -533f, arg_1) * _wgslsmith_f_op_vec4_f32(vec4<f32>(425f, 341f, -2431f, arg_1) + vec4<f32>(-1172f, arg_1, -352f, -369f)))))), u_input.b.wyz);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(757f)), 1188f, arg_1) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-332f * -536f), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(ceil(var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1607f)), var_2.b.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, arg_1, arg_1, var_2.b.x))))))));
    return firstLeadingBit(firstTrailingBit(i32(-1i) * -16802i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(6033u, firstLeadingBit(5612u), select(global1.x, global1.x, var_1.x), global1.x), ~vec4<u32>(4294967295u, arg_0.x, arg_0.x, 6183u) << (vec4<u32>(27554u, 77539u, arg_0.x, global1.x) % vec4<u32>(32u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = false;
    let var_1 = vec4<i32>(-32634i, u_input.b.x, u_input.b.x | func_1(global1.yy | vec2<u32>(u_input.c, global1.x), -427f), 2147483647i) >> (vec4<u32>(_wgslsmith_sub_u32(global1.x, 4475u), countOneBits(0u), max(1u ^ (0u << (u_input.a % 32u)), 1u), global1.x) % vec4<u32>(32u));
    var var_2 = u_input.a;
    global1 = ~vec3<u32>(u_input.c | firstLeadingBit(firstLeadingBit(4294967295u)), _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_clamp_u32(u_input.c, 9496u, u_input.a)), _wgslsmith_mult_u32(global1.x, 1u)), ~_wgslsmith_div_u32(select(1916u, u_input.a, true), global1.x | 48465u));
    global2 = -487f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(-338f + 1104f), false))) * _wgslsmith_f_op_f32(1f + 276f));
    global2 = u_input.a >= global1.x;
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, u_input.c), u_input.a << (~global1.x % 32u)), u_input.a, 47897u, ~u_input.c), ~(abs(vec4<u32>(4294967295u, global1.x, 4294967295u, u_input.a)) << (vec4<u32>(firstLeadingBit(109444u), 0u, 1u | u_input.a, 22436u) % vec4<u32>(32u))), vec4<u32>(firstTrailingBit(global1.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, global1.x, 36195u), vec3<u32>(u_input.a, global1.x, u_input.a)), u_input.c, u_input.c & max(global1.x, 25223u)) >> (~(~vec4<u32>(17478u, 73358u, u_input.c, 4226u)) % vec4<u32>(32u)));
    var var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_clamp_u32((0u & var_3.x) & 1u, u_input.a, global1.x << (1u % 32u)), _wgslsmith_mult_u32(~select(4294967295u, 20273u, false), _wgslsmith_mult_u32(u_input.c, _wgslsmith_mult_u32(var_3.x, 14763u)))), max(var_1.x, func_1(global1.xx, _wgslsmith_f_op_f32(min(-454f, 1000f)))) >> (~firstLeadingBit(1u) % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(i32(-1i) * -8461i, ~u_input.b.x, _wgslsmith_sub_i32(23901i, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(17703i, u_input.b.x, 28513i, var_1.x), vec4<i32>(-2147483647i, var_1.x, -80071i, 26900i))), u_input.b));
}

