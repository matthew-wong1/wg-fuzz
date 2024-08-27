struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<u32, 17> = array<u32, 17>(41893u, 4294967295u, 4294967295u, 45372u, 4294967295u, 0u, 88465u, 24438u, 16833u, 1u, 22368u, 10828u, 0u, 52946u, 5758u, 1691u, 6773u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, global2[_wgslsmith_index_u32(abs(u_input.a.x), 17u)]), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(871f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    return arg_1.c.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> vec3<bool> {
    var var_0 = select(vec4<bool>(false, arg_0.x < _wgslsmith_f_op_f32(ceil(arg_0.x)), select(false, 21672u > (global2[_wgslsmith_index_u32(u_input.a.x, 17u)] & 43761u), all(vec3<bool>(false, false, true))), !func_3(func_2(), Struct_2(vec2<i32>(0i, 0i), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(0u, 17u)]), Struct_1(global2[_wgslsmith_index_u32(1u, 17u)], false), vec3<i32>(u_input.b.x, 0i, u_input.b.x), u_input.b.zzy))), !select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true)), false), select(select(vec4<bool>(false, func_3(Struct_1(0u, false), Struct_2(vec2<i32>(u_input.b.x, 1i), vec3<u32>(1u, 34246u, u_input.a.x), Struct_1(7788u, false), u_input.b.yzz, vec3<i32>(u_input.c.x, arg_1, arg_1))), true, 25767u >= u_input.a.x), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false))), select(vec4<bool>(any(vec3<bool>(true, false, true)), u_input.c.x >= 0i, false, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, func_2().b, true))));
    global0 = 8787i;
    let var_1 = Struct_2(abs(vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_mult_i32(1i, arg_1)), 1i)), vec3<u32>(~u_input.a.x ^ global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 4294967295u), 17u)], ~1u, _wgslsmith_mod_u32(u_input.a.x, 1u) | u_input.a.x), func_2(), u_input.b.yxx, vec3<i32>(arg_1, reverseBits(0i), arg_1));
    var var_2 = Struct_2(abs(vec2<i32>(-1i, u_input.b.x)), vec3<u32>(max(abs(0u), _wgslsmith_dot_vec2_u32(max(var_1.b.xz, u_input.a), var_1.b.zx)), 1u, ~18887u), Struct_1(~_wgslsmith_clamp_u32(var_1.b.x, ~u_input.a.x, 1u), any(var_0.wx)), var_1.d, vec3<i32>(-1i) * -(firstTrailingBit(u_input.b.xzz) << (vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], global2[_wgslsmith_index_u32(77901u, 17u)]) % vec3<u32>(32u))));
    global1 = 2147483647i;
    return !select(select(var_0.zzx, vec3<bool>(true, false, func_2().b), var_0.wyz), !(!vec3<bool>(var_2.c.b, true, false)), var_2.c.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = Struct_2(arg_3.e.zx, vec3<u32>(abs(min(1u, arg_2.b.x | 9156u)), 67570u, _wgslsmith_mod_u32(~_wgslsmith_sub_u32(19770u, arg_2.b.x), global2[_wgslsmith_index_u32(u_input.a.x, 17u)])), func_2(), arg_3.e, u_input.b.yxy);
    global0 = -2147483647i & (_wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 9390i), vec2<i32>(15717i, u_input.c.x)), -min(arg_1.x, var_0.a.x)) >> (arg_3.b.x % 32u));
    let var_1 = var_0;
    var var_2 = Struct_1(~57944u, !var_0.c.b);
    global0 = ~var_0.a.x;
    return vec3<f32>(656f, 845f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-629f * -3084f) - _wgslsmith_f_op_f32(floor(167f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-773f + 1727f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 17>();
    global2 = array<u32, 17>();
    global2 = array<u32, 17>();
    global0 = -u_input.c.x;
    global0 = u_input.b.x;
    global0 = ~(-2147483647i);
    let var_0 = 0u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(175f, -864f, -1488f), vec3<f32>(209f, -1610f, 1180f), false)))) * _wgslsmith_f_op_vec3_f32(func_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), func_1(vec2<f32>(-576f, -656f), -69310i), all(vec3<bool>(false, true, false))), u_input.b.zz, Struct_2(vec2<i32>(u_input.c.x, -2147483647i), firstLeadingBit(vec3<u32>(777u, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], var_0)), Struct_1(19852u, false), ~vec3<i32>(0i, 56730i, -41354i), countOneBits(u_input.b.wxz)), Struct_2(-vec2<i32>(u_input.b.x, -14997i), ~vec3<u32>(1u, global2[_wgslsmith_index_u32(60312u, 17u)], u_input.a.x), Struct_1(1u, true), u_input.b.ywz, vec3<i32>(1i, 1i, 1i))))));
    var var_2 = Struct_2(select(-firstTrailingBit(vec2<i32>(-9429i, u_input.c.x)), vec2<i32>((u_input.c.x << (0u % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(14083u, 3287u, 4294967295u), vec3<u32>(11175u, global2[_wgslsmith_index_u32(var_0, 17u)], 39900u)) % 32u), u_input.b.x), vec2<bool>(false, select(func_2().b, false, true))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0, 1u), vec3<u32>(u_input.a.x, 38195u, 4294967295u)) ^ vec3<u32>(~44122u, 1u, ~global2[_wgslsmith_index_u32(var_0, 17u)])), Struct_1(countOneBits(var_0), _wgslsmith_div_f32(var_1.x, -1000f) >= _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1175f, var_1.x)))), ~vec3<i32>(u_input.b.x, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), u_input.c.x), -vec3<i32>(0i, u_input.b.x, abs(64337i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, ~(~var_2.b), global2[_wgslsmith_index_u32(var_2.b.x, 17u)], -810f, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2021f, -153f))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x + -1664f)))), vec4<f32>(_wgslsmith_f_op_f32(365f + 2851f), 2598f, -140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-346f - var_1.x) * _wgslsmith_f_op_f32(-1316f - var_1.x))))));
}

