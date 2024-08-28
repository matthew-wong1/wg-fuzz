struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<bool>(false, false), 8894u, true);

var<private> global1: array<f32, 16>;

var<private> global2: f32;

var<private> global3: array<i32, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    global3 = array<i32, 27>();
    global0 = Struct_1(vec2<bool>(all(global0.b), false), global0.a, 23131u, false != (any(vec4<bool>(true, true, global0.b.x, true)) | global0.d));
    var var_0 = ~(arg_2 | 6663u);
    let var_1 = Struct_1(!select(global0.b, select(global0.a, select(vec2<bool>(global0.a.x, false), global0.a, false), global0.b.x), false), !(!vec2<bool>(global0.b.x, true)), 4294967295u, global0.b.x);
    var var_2 = Struct_1(var_1.b, !vec2<bool>(any(select(vec2<bool>(true, false), var_1.a, false)), global0.a.x), 65494u, (any(select(vec2<bool>(global0.b.x, false), global0.b, global0.a)) || (arg_0.x != (global3[_wgslsmith_index_u32(u_input.a, 27u)] | u_input.b))) || false);
    return var_1;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<f32, 16>();
    let var_0 = arg_3;
    global2 = _wgslsmith_f_op_f32(147f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(arg_0) ^ 35139u, 16u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-460f, -764f))), _wgslsmith_f_op_f32(floor(-709f)))))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    global2 = global1[_wgslsmith_index_u32(arg_0.c, 16u)];
    global3 = array<i32, 27>();
    var var_0 = vec3<bool>(true, true, arg_1.x >= 15462i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~arg_0.c), 16u)]) - global1[_wgslsmith_index_u32(~(~0u), 16u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.c, 16u)] * 1987f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~arg_0.c), 16u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(46292u, 16u)]))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.c, abs(global0.c)), 16u)])), 875f);
    global3 = array<i32, 27>();
    return Struct_1(select(func_3(4294967295u, func_3(global0.c, Struct_1(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, global0.a.x), 0u, global0.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(global0.c, global0.c, global0.c, 4294967295u), vec4<u32>(70118u, global0.c, 7856u, 0u)), Struct_1(arg_0.a, global0.b, 1u, false)), reverseBits(vec4<u32>(global0.c, 0u, 4294967295u, u_input.a)), arg_0).a, arg_0.a, select(global0.a, global0.b, true || (var_0.x || true))), select(!select(!arg_0.a, arg_0.b, true), !(!(!global0.a)), arg_0.b.x | true), arg_0.c, func_3(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c, 1u, arg_0.c, u_input.a), vec4<u32>(0u, 19622u, global0.c, 87496u)), vec4<u32>(global0.c, 1999u, 29626u, 0u)), Struct_1(func_3(arg_0.c, arg_0, ~vec4<u32>(global0.c, 0u, arg_0.c, arg_0.c), Struct_1(vec2<bool>(arg_0.b.x, arg_0.d), vec2<bool>(false, arg_0.d), u_input.a, false)).a, global0.a, abs(u_input.a), func_3(0u, func_2(vec4<i32>(-24768i, -30879i, 0i, u_input.b), var_1.x, 45801u), countOneBits(vec4<u32>(1u, 0u, 19334u, u_input.a)), Struct_1(vec2<bool>(false, true), vec2<bool>(var_0.x, false), 1u, true)).a.x), vec4<u32>(global0.c, max(~arg_0.c, ~1u), _wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.c, 4294967295u), 1u), u_input.a), Struct_1(func_3(_wgslsmith_add_u32(global0.c, 1u), Struct_1(vec2<bool>(true, false), vec2<bool>(true, var_0.x), 38504u, var_0.x), ~vec4<u32>(arg_0.c, 1u, global0.c, 13041u), Struct_1(vec2<bool>(true, global0.d), vec2<bool>(true, false), 0u, var_0.x)).b, !(!arg_0.b), (global0.c ^ u_input.a) ^ ~u_input.a, true)).a.x);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(!(!vec2<bool>(arg_1, arg_3.a.x)), arg_3.b, global0.c, !all(!vec4<bool>(false, true, global0.a.x, true)));
    global1 = array<f32, 16>();
    var var_1 = ~(~(~(countOneBits(vec4<u32>(0u, 0u, 22980u, global0.c)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.c, 1u, global0.c, 4294967295u), vec4<u32>(18420u, arg_3.c, 1u, global0.c)) % vec4<u32>(32u)))));
    let var_2 = func_4(func_3(~firstTrailingBit(global0.c) >> (35243u % 32u), Struct_1(!var_0.a, select(arg_3.a, arg_3.b, vec2<bool>(true, true)), 0u, arg_3.b.x), ~((vec4<u32>(u_input.a, var_0.c, 28936u, u_input.a) & vec4<u32>(4294967295u, 1869u, 123285u, 3660u)) >> (~vec4<u32>(u_input.a, 27821u, var_0.c, 32276u) % vec4<u32>(32u))), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], 34189i, -17762i, u_input.b) & vec4<i32>(-4633i, u_input.b, 0i, global3[_wgslsmith_index_u32(global0.c, 27u)]), ~vec4<i32>(-40089i, 2147483647i, 56942i, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-217f, global1[_wgslsmith_index_u32(0u, 16u)]))), 0u & ~u_input.a)), -(-vec3<i32>(arg_2.x, u_input.b, -11005i) | ~arg_2));
    global0 = func_2(-vec4<i32>(17734i, -27542i, abs(arg_2.x), u_input.b) >> (abs(vec4<u32>(func_4(Struct_1(arg_3.a, vec2<bool>(arg_3.a.x, false), 22092u, false), vec3<i32>(u_input.b, -2147483647i, -2147483647i)).c, 37498u, ~27155u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 4294967295u), var_1.zz))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(2083u, 16u)])), ~arg_3.c);
    return arg_3;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global1 = array<f32, 16>();
    let var_0 = -((vec4<i32>(-1i) * -(vec4<i32>(7550i, 35424i, global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]) >> (vec4<u32>(1u, 4294967295u, 64843u, 4294967295u) % vec4<u32>(32u)))) >> (~firstTrailingBit(~vec4<u32>(4294967295u, 94119u, 4294967295u, arg_1.c)) % vec4<u32>(32u)));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec3<bool>) -> f32 {
    let var_0 = func_4(arg_0, ~(-(~(~vec3<i32>(global3[_wgslsmith_index_u32(53619u, 27u)], global3[_wgslsmith_index_u32(27166u, 27u)], -21649i)))));
    var var_1 = vec4<u32>(1u, func_1(global1[_wgslsmith_index_u32(4294967295u, 16u)], !arg_0.d, vec3<i32>(countOneBits(-19915i), 0i, ~_wgslsmith_sub_i32(u_input.b, -2147483647i)), arg_0).c, abs(arg_2 << (reverseBits(firstLeadingBit(var_0.c)) % 32u)), 0u);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(global3[_wgslsmith_index_u32(var_0.c, 27u)], i32(-1i) * -2147483647i, _wgslsmith_add_i32(u_input.b, u_input.b))), abs(vec3<i32>(-u_input.b, max(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(25293u, 27u)]), 2147483647i))), firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, 1i, global3[_wgslsmith_index_u32(var_2.c, 27u)]), _wgslsmith_div_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 27u)], -1i, global3[_wgslsmith_index_u32(var_0.c, 27u)]), vec3<i32>(-1i, 1i, -1i))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, global3[_wgslsmith_index_u32(u_input.a, 27u)], u_input.b), vec3<i32>(-2147483647i, -5615i, u_input.b), vec3<i32>(u_input.b, -68128i, u_input.b)), min(vec3<i32>(u_input.b, 11141i, 1i), vec3<i32>(u_input.b, u_input.b, -2147483647i))))));
    var var_4 = 1u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 16u)] - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_6(func_5(866f, func_1(-465f, false, vec3<i32>(2147483647i, 0i, global3[_wgslsmith_index_u32(global0.c, 27u)]), Struct_1(vec2<bool>(global0.a.x, false), vec2<bool>(global0.d, true), global0.c, global0.b.x)), ~0u), global0.c, u_input.a, select(select(vec3<bool>(true, true, true), vec3<bool>(global0.b.x, global0.d, global0.b.x), global0.a.x), !vec3<bool>(true, global0.d, global0.b.x), !global0.a.x))))));
    global0 = func_3(_wgslsmith_div_u32(abs(max(global0.c, 1474u) ^ u_input.a), ~(~38452u)), Struct_1(global0.a, select(!(!global0.a), !global0.a, true), ~(~15303u) >> ((1u >> (global0.c % 32u)) % 32u), !all(!vec4<bool>(true, global0.d, global0.b.x, true))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, min(1u, 70390u)), _wgslsmith_mult_u32(~20502u, u_input.a)), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, global0.c), 0u | global0.c), 23910u, 1u & ~(~global0.c)), Struct_1(func_4(func_5(1273f, func_5(global1[_wgslsmith_index_u32(8746u, 16u)], Struct_1(vec2<bool>(global0.b.x, global0.a.x), global0.a, global0.c, false), 35077u), 18886u), select(firstTrailingBit(vec3<i32>(-2147483647i, 28004i, u_input.b)), vec3<i32>(18653i, global3[_wgslsmith_index_u32(23815u, 27u)], global3[_wgslsmith_index_u32(global0.c, 27u)]), global0.d || global0.d)).a, global0.a, 55910u, func_5(_wgslsmith_f_op_f32(select(-1485f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.c, 16u)] * global1[_wgslsmith_index_u32(4294967295u, 16u)]), true)), Struct_1(vec2<bool>(true, global0.a.x), !global0.a, func_5(492f, Struct_1(global0.a, vec2<bool>(true, true), global0.c, true), global0.c).c, u_input.b != 2147483647i), ~u_input.a).a.x));
    let var_0 = select(vec3<bool>(all(select(select(vec4<bool>(false, global0.b.x, false, global0.b.x), vec4<bool>(true, global0.d, false, global0.d), true), vec4<bool>(true, true, true, false), global0.a.x)), !(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(18686u, global0.c), vec2<u32>(u_input.a, 18319u)), 27u)] >= (global3[_wgslsmith_index_u32(13770u, 27u)] >> (global0.c % 32u))), true), !(!vec3<bool>(func_5(global1[_wgslsmith_index_u32(4294967295u, 16u)], Struct_1(vec2<bool>(global0.b.x, true), vec2<bool>(true, global0.d), 49646u, global0.d), 38675u).b.x, global0.d, !global0.a.x)), !select(!vec3<bool>(false, false, global0.a.x), !(!vec3<bool>(true, global0.d, true)), select(vec3<bool>(global0.a.x, global0.d, false), select(vec3<bool>(true, false, global0.d), vec3<bool>(true, global0.a.x, true), vec3<bool>(global0.a.x, global0.d, global0.b.x)), func_2(vec4<i32>(global3[_wgslsmith_index_u32(13905u, 27u)], -2147483647i, -3251i, global3[_wgslsmith_index_u32(18102u, 27u)]), 558f, 1u).b.x)));
    global3 = array<i32, 27>();
    global1 = array<f32, 16>();
    let var_1 = Struct_1(vec2<bool>(false, all(vec2<bool>(true, true))), !var_0.yx, 50025u, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_vec3_u32(select(firstTrailingBit(vec3<u32>(u_input.a, var_1.c, var_1.c)), select(vec3<u32>(global0.c, 1u, 1u), vec3<u32>(22423u, 45484u, global0.c), true), var_0), countOneBits(vec3<u32>(9411u, 1u, u_input.a) << (vec3<u32>(var_1.c, 15786u, 4294967295u) % vec3<u32>(32u))))));
}

