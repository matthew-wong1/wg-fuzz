struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(1u, 4294967295u, 0u, 4294967295u, 0u, 28070u, 4294967295u, 24339u, 4294967295u, 18631u, 1u, 81854u, 123167u, 4294967295u, 4294967295u, 8584u, 1u, 0u, 8791u, 4294967295u, 4294967295u, 1u, 0u, 4294967295u, 15926u, 4294967295u, 0u, 0u, 0u, 1u, 1u);

var<private> global1: Struct_1;

var<private> global2: array<f32, 29>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    global1 = arg_1;
    global1 = Struct_1(61547u, ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(arg_1.a, global1.a)), ~(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)]) << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.b, 31u)], 31u)], 31u)], 4798u) % vec2<u32>(32u)))), 31u)], !(!arg_1.c));
    global2 = array<f32, 29>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(261f, global2[_wgslsmith_index_u32(4294967295u, 29u)], -925f, global2[_wgslsmith_index_u32(1u, 29u)])) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2402f, global2[_wgslsmith_index_u32(79403u, 29u)], -569f, -1131f)))))));
    var var_1 = Struct_1(~34515u, global0[_wgslsmith_index_u32(1u & _wgslsmith_clamp_u32(~arg_1.a, arg_1.a ^ _wgslsmith_mod_u32(37852u, 26312u), global0[_wgslsmith_index_u32(17409u, 31u)]), 31u)], vec4<bool>(arg_1.c.x, _wgslsmith_div_u32(~global1.a, max(global0[_wgslsmith_index_u32(4294967295u, 31u)], global1.a)) <= ((0u >> (global0[_wgslsmith_index_u32(123926u, 31u)] % 32u)) >> (global1.b % 32u)), any(vec3<bool>(all(vec3<bool>(false, global3.x, global1.c.x)), true, true)), !(global2[_wgslsmith_index_u32(4294967295u, 29u)] >= var_0.x) && (_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)) < global2[_wgslsmith_index_u32(~1u, 29u)])));
    return ~_wgslsmith_mult_u32(27885u, ~global0[_wgslsmith_index_u32(0u, 31u)]);
}

fn func_2() -> f32 {
    var var_0 = !global1.c.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1698f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~42725u | global0[_wgslsmith_index_u32(global1.b | 1u, 31u)], func_3(vec2<bool>(false, true), Struct_1(4294967295u, global1.b, global1.c))), 29u)], 227f) * vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.b, 29u)]), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)]))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-687f, 367f) + 1861f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(43898u, 29u)] * global2[_wgslsmith_index_u32(global1.a, 29u)]))))));
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, -u_input.a.x), -_wgslsmith_clamp_i32(u_input.b, u_input.a.x, -2147483647i), u_input.a.x, u_input.b);
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(global1.a, 31u)], global0[_wgslsmith_index_u32(global1.a, 31u)], vec4<bool>((~0u >> (max(global1.a, global1.a) % 32u)) != 4294967295u, true, global3.x, false));
    let var_4 = _wgslsmith_div_u32(799u, abs(~(var_3.a & var_3.b))) >> (~firstTrailingBit(~(var_3.a >> (66054u % 32u))) % 32u);
    return 444f;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32) -> vec3<u32> {
    var var_0 = firstTrailingBit(global1.a) >> (_wgslsmith_dot_vec2_u32(max(firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(0u, 31u)], 19668u) >> (vec2<u32>(global0[_wgslsmith_index_u32(55294u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71856u, 31u)], 31u)]) % vec2<u32>(32u))), ~(vec2<u32>(4294967295u, 10866u) & vec2<u32>(4294967295u, global1.b))), vec2<u32>(~global1.b, _wgslsmith_dot_vec2_u32(max(vec2<u32>(61517u, 44435u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], global0[_wgslsmith_index_u32(global1.b, 31u)])), vec2<u32>(global1.a, global1.b)))) % 32u);
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-219i, u_input.a.x, ~arg_2 << (36634u % 32u), u_input.a.x), vec4<i32>(firstTrailingBit(2147483647i), -(-1i ^ arg_2) & -(~arg_2), 2147483647i, u_input.a.x));
    var_0 = abs(global1.b);
    let var_2 = Struct_1(0u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, ~6657u), 31u)] >> (~4294967295u % 32u), global1.c);
    global2 = array<f32, 29>();
    return ~(min(abs(vec3<u32>(var_2.b, 1u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 61882u), vec3<u32>(22777u, 94873u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a, 31u)], 31u)]))) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.b, 25271u, 4294967295u), vec4<u32>(24778u, global0[_wgslsmith_index_u32(5416u, 31u)], 8606u, var_2.b)), 1u, global1.a) % vec3<u32>(32u))) << (firstLeadingBit(vec3<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(var_2.b, 31u)]), global1.a), ~0u)) % vec3<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec4<i32> {
    var var_0 = ~firstTrailingBit(min(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.b, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.b, 31u)], 31u)]), vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(1u, 31u)])), ~vec3<u32>(global1.a, 29101u, 25159u)) ^ select(max(vec3<u32>(global0[_wgslsmith_index_u32(23u, 31u)], 1u, global1.a), vec3<u32>(52604u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(69030u, 31u)])), vec3<u32>(1u, 64063u, 0u), false));
    var var_1 = global2[_wgslsmith_index_u32(~(~1u), 29u)];
    var var_2 = func_4(global2[_wgslsmith_index_u32(global1.a, 29u)], _wgslsmith_f_op_f32(func_2()), min(-39190i, -4159i) | (firstLeadingBit(u_input.a.x) >> (global1.a % 32u)));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(60341u, var_0.x), reverseBits(var_0.x), ~global1.a, 54624u), vec4<u32>(~global1.a, _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(var_2.x, 31u)]), firstLeadingBit(var_0.x)), _wgslsmith_mult_u32(global1.b, 14616u) ^ ~35481u, global0[_wgslsmith_index_u32(4294967295u, 31u)])), _wgslsmith_mult_u32(firstLeadingBit(~(~var_2.x)), ~_wgslsmith_clamp_u32(var_0.x, 14969u, 79245u) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 28979u), vec2<u32>(1u, 77532u))), select(select(!select(global1.c, global1.c, false), !(!global1.c), !(!global1.c)), !select(global1.c, !global1.c, global1.c.x), global1.c));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a, 29u)]) + global2[_wgslsmith_index_u32(~(~(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(33267u, global0[_wgslsmith_index_u32(10206u, 31u)]), 31u)] & 1u)), 29u)]);
    return -(min(vec4<i32>(u_input.a.x, u_input.b, 25672i, -16916i) << (vec4<u32>(var_3.b, 1u, var_3.a, 19925u) % vec4<u32>(32u)), vec4<i32>(u_input.b, u_input.b, u_input.b, -28050i) ^ vec4<i32>(17916i, u_input.a.x, -2147483647i, u_input.b)) >> (((vec4<u32>(39692u, var_3.b, var_2.x, 48618u) >> (vec4<u32>(var_2.x, 1u, 0u, var_0.x) % vec4<u32>(32u))) << (abs(vec4<u32>(global0[_wgslsmith_index_u32(var_3.a, 31u)], var_2.x, 71656u, 21584u)) % vec4<u32>(32u))) % vec4<u32>(32u))) | vec4<i32>(0i, select(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 0i), global1.c.x) << (23769u % 32u), _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -28438i, 18613i), vec3<i32>(u_input.b, u_input.a.x, 1i))), vec3<i32>(-15018i, u_input.b, -31017i)), u_input.a.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~abs(global1.b), 0u), ~_wgslsmith_div_u32(~14516u, _wgslsmith_sub_u32(global1.b, 1u))), ~global1.b, vec4<bool>(true, all(global1.c), any(!global1.c.xzw), false));
    var var_1 = vec2<u32>(reverseBits(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, ~1u), 31u)]), 0u);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(16413u, 31u)], var_0.a)), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67130u, 31u)], 29u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(1u, 29u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(66087u, 29u)]))))))));
    return Struct_1(abs(~min(0u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 31u)], 31u)], reverseBits(4294967295u))), 7694u, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 31>();
    global1 = func_5(min(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.a.x, u_input.b), select(vec4<i32>(u_input.a.x, 54628i, 10001i, -31745i), vec4<i32>(59914i, u_input.b, u_input.a.x, -17420i), vec4<bool>(global3.x, true, global1.c.x, global1.c.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -22408i, u_input.a.x, -23010i), select(vec4<i32>(u_input.b, u_input.a.x, 1i, u_input.b), vec4<i32>(u_input.a.x, u_input.b, -1i, -60005i), global1.c))), min(~vec4<i32>(28732i, u_input.b, u_input.b, u_input.b) << ((vec4<u32>(19276u, global1.b, 0u, global0[_wgslsmith_index_u32(global1.b, 31u)]) | vec4<u32>(1u, 9042u, global1.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a, 31u)], 31u)])) % vec4<u32>(32u)), func_1(global2[_wgslsmith_index_u32(13181u, 29u)], global3.x) & ~vec4<i32>(0i, u_input.a.x, u_input.a.x, -16895i))), true);
    global0 = array<u32, 31>();
    global1 = func_5(func_1(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)] & (global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.a, 0u), 31u)] & _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, global1.b), vec2<u32>(6235u, global1.a))), 29u)], all(global1.c.zw)), true);
    global2 = array<f32, 29>();
    var var_0 = any(vec3<bool>(true, !global3.x, true));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~(~0u), 29u)])), _wgslsmith_f_op_f32(floor(-886f)));
    let var_2 = ~_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(global0[_wgslsmith_index_u32(global1.a, 31u)], 1u))), ~vec2<u32>(1u, 1u));
    global3 = !select(!vec4<bool>(true, true, global1.c.x | false, true), global1.c, select(vec4<bool>(all(global1.c), false, any(vec2<bool>(global1.c.x, global3.x)), true), !vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 29u)] - 515f), _wgslsmith_f_op_f32(1712f * -420f))), _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(sign(var_1)))), global2[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(7109u, 31u)]), 29u)]))));
}

