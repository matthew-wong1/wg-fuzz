struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 29>;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<bool>(false, false), -919f, vec3<f32>(223f, -236f, -1000f)), Struct_1(vec2<bool>(true, false), -518f, vec3<f32>(2718f, 205f, 138f)), Struct_1(vec2<bool>(true, false), -1437f, vec3<f32>(-192f, -396f, 1163f)), Struct_1(vec2<bool>(false, true), 228f, vec3<f32>(-1606f, -335f, 2536f)), Struct_1(vec2<bool>(true, true), -479f, vec3<f32>(2671f, -843f, -1341f)), Struct_1(vec2<bool>(false, false), 677f, vec3<f32>(841f, -456f, 1000f)));

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<u32> {
    global0 = all(vec4<bool>(!(!(u_input.a != global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(761u, 29u)], 29u)], 29u)])), false && !global3.a.x, global3.a.x, global3.b <= 863f));
    let var_0 = Struct_2(~40672u, !(!vec3<bool>(true, global3.c.x >= global3.b, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(min(-723f, global3.c.x))))));
    let var_1 = Struct_5(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 59442u, var_0.a, 30848u), ~vec4<u32>(0u, 29253u, 1u, 6218u)), vec4<u32>(_wgslsmith_mult_u32(33444u, var_0.a), u_input.a, ~_wgslsmith_mult_u32(var_0.a, 64218u), 0u)), global2[_wgslsmith_index_u32((~min(0u, 97308u) >> (~global1[_wgslsmith_index_u32(u_input.b.x >> (var_0.a % 32u), 29u)] % 32u)) << (global1[_wgslsmith_index_u32(~89332u, 29u)] % 32u), 6u)]);
    let var_2 = ~abs(var_1.a.wyw);
    global1 = array<u32, 29>();
    return ~_wgslsmith_add_vec4_u32(countOneBits(var_1.a), min(min(~var_1.a, _wgslsmith_mod_vec4_u32(var_1.a, vec4<u32>(var_0.a, var_2.x, 57782u, var_1.a.x))), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, var_2.x, u_input.a, var_2.x), vec4<u32>(1u, global1[_wgslsmith_index_u32(59041u, 29u)], u_input.a, var_2.x)))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0.b.x;
    global0 = global3.a.x;
    let var_1 = _wgslsmith_div_vec4_u32(~func_3(), vec4<u32>(countOneBits(1u), 21037u, ~20429u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.a, 19413u), _wgslsmith_div_u32(47231u, 10321u)), ~u_input.b.x), 29u)]));
    var var_2 = global3.a;
    global3 = global2[_wgslsmith_index_u32(4294967295u, 6u)];
    return -(i32(-1i) * -_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(33356i, -28774i)));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_4 {
    var var_0 = 11516i;
    global3 = Struct_1(vec2<bool>(11978i < _wgslsmith_clamp_i32(~0i, -40957i, firstTrailingBit(-24927i)), true), global3.c.x, vec3<f32>(global3.c.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.b, 1000f)))));
    global3 = global2[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 27204i), firstLeadingBit(countOneBits(vec2<i32>(1i, 2147483647i)))), max(vec2<i32>(-59890i, -20950i) << (_wgslsmith_add_vec2_u32(u_input.b.yx, u_input.b.yz) % vec2<u32>(32u)), abs(vec2<i32>(12741i, 44155i)))) | reverseBits(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(1i, 20639i) >> (u_input.b.zy % vec2<u32>(32u))), vec2<i32>(1i, func_2(Struct_2(u_input.a, vec3<bool>(arg_0, global3.a.x, false), arg_1)))));
    var var_2 = vec3<u32>(27770u, func_3().x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 15232u), 70868u), ~28230u, global1[_wgslsmith_index_u32(1u, 29u)])) >> (_wgslsmith_div_vec3_u32(vec3<u32>(~28250u, 10274u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 29u)], 29u)]) ^ vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 29u)] >> (u_input.b.x % 32u), max(u_input.a, 41335u), 0u), ~(~u_input.b)) % vec3<u32>(32u));
    return Struct_4(vec4<u32>(var_2.x, 1874u, 21878u, global1[_wgslsmith_index_u32(~func_3().x, 29u)]), Struct_2(~global1[_wgslsmith_index_u32(u_input.a, 29u)], !(!select(vec3<bool>(arg_0, global3.a.x, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(false, global3.a.x, arg_0))), _wgslsmith_f_op_f32(step(arg_1, 689f))), global2[_wgslsmith_index_u32(~(~var_2.x), 6u)], -65256i, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_dot_vec3_u32(~(~u_input.b), u_input.b)) >= global1[_wgslsmith_index_u32(1u, 29u)];
    var var_1 = func_1(global3.a.x, global3.c.x);
    global1 = array<u32, 29>();
    var_0 = true;
    global0 = all(!vec3<bool>(true, false, -var_1.d == var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

