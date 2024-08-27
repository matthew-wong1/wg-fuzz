struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 4294967295u, 4294967295u);

var<private> global1: array<u32, 16> = array<u32, 16>(0u, 70362u, 508u, 0u, 35749u, 0u, 16156u, 29636u, 4528u, 1523u, 1u, 1u, 8242u, 1u, 29800u, 1u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec4<u32> {
    var var_0 = arg_1;
    global0 = firstTrailingBit(~abs(~vec3<u32>(u_input.a, u_input.a, 24183u)));
    global0 = vec3<u32>(~abs(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(arg_0), 1u), 16u)]), global1[_wgslsmith_index_u32(1u, 16u)], min(select(_wgslsmith_mod_u32(_wgslsmith_sub_u32(45920u, 1u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8400u, 16u)], 16u)]), ~(~arg_0), all(vec3<bool>(true, arg_1, arg_1))), arg_0));
    let var_1 = Struct_2(vec3<i32>(abs(34740i), -2147483647i, (1i | firstTrailingBit(-9204i)) & ~36811i));
    var_0 = true;
    return select(abs(vec4<u32>(1u, ~1u, reverseBits(u_input.a), _wgslsmith_clamp_u32(0u, global1[_wgslsmith_index_u32(global0.x, 16u)], arg_0))), reverseBits(~reverseBits(vec4<u32>(7692u, arg_0, global1[_wgslsmith_index_u32(38293u, 16u)], global0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-171f, -1112f))) >= _wgslsmith_f_op_f32(-596f + _wgslsmith_f_op_f32(536f + -141f))) & ~(~select(vec4<u32>(1u, u_input.a, global1[_wgslsmith_index_u32(global0.x, 16u)], arg_0), vec4<u32>(u_input.a, 11146u, 4294967295u, u_input.a), vec4<bool>(arg_1, arg_1, arg_1, arg_1)) | abs(~vec4<u32>(u_input.a, 60463u, 1u, global1[_wgslsmith_index_u32(39835u, 16u)])));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(select(vec3<i32>(1i, -6733i, -1i), vec3<i32>(6576i, 13813i, 2147483647i), false), select(vec3<i32>(48087i, -25313i, 2147483647i), vec3<i32>(-2186i, 2147483647i, 2147483647i), vec3<bool>(true, true, true))), -vec3<i32>(abs(-2147483647i), select(0i, 1i, false), -2147483647i)));
    let var_1 = Struct_2(vec3<i32>(var_0.a.x, _wgslsmith_sub_i32(2147483647i | _wgslsmith_div_i32(var_0.a.x, var_0.a.x), _wgslsmith_mult_i32(var_0.a.x, 2147483647i)), ~(-1i)));
    let var_2 = Struct_2(vec3<i32>(~(~1i), ~(-46163i), firstTrailingBit(var_0.a.x) >> (4294967295u % 32u)));
    global1 = array<u32, 16>();
    var var_3 = var_0;
    return var_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    global1 = array<u32, 16>();
    var var_0 = any(select(vec4<bool>(true, false, any(arg_3.a), (arg_3.c <= arg_3.c) | (true | arg_3.a.x)), select(vec4<bool>(any(vec4<bool>(arg_3.a.x, arg_3.a.x, true, arg_3.a.x)), !arg_3.a.x, arg_3.a.x, arg_3.a.x), !(!vec4<bool>(arg_3.a.x, arg_3.a.x, false, false)), select(!arg_3.a.x, true, !arg_3.a.x)), select(select(!vec4<bool>(arg_3.a.x, false, true, arg_3.a.x), vec4<bool>(false, true, arg_3.a.x, true), all(vec4<bool>(arg_3.a.x, false, arg_3.a.x, true))), select(select(vec4<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x), vec4<bool>(false, arg_3.a.x, arg_3.a.x, true), vec4<bool>(true, arg_3.a.x, arg_3.a.x, arg_3.a.x)), select(vec4<bool>(arg_3.a.x, arg_3.a.x, false, true), vec4<bool>(arg_3.a.x, arg_3.a.x, false, arg_3.a.x), true), any(vec4<bool>(true, arg_3.a.x, arg_3.a.x, arg_3.a.x))), !(!arg_3.a.x))));
    var_0 = arg_3.a.x;
    var var_1 = arg_3;
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, var_1.c), 1i, 2147483647i, -(arg_3.c >> (~global0.x % 32u)));
    return func_3(~4294967295u, func_2(min(var_1.b.x, 0u) >> (arg_2 % 32u), !arg_3.a.x) >> ((~abs(vec4<u32>(22123u, 4294967295u, var_1.b.x, global0.x)) << (func_2(var_1.b.x, !arg_3.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2513f, -562f)), -741f)) + 1064f) * 198f);
    let var_1 = ~func_2(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(arg_1, 4294967295u, global0.x, global0.x), vec4<u32>(arg_1, u_input.a, u_input.a, global1[_wgslsmith_index_u32(arg_1, 16u)]), vec4<bool>(false, false, true, false)), ~vec4<u32>(arg_1, 9742u, global1[_wgslsmith_index_u32(1u, 16u)], u_input.a) >> (~vec4<u32>(u_input.a, 0u, global0.x, 0u) % vec4<u32>(32u))), false).xw;
    var var_2 = var_1;
    global1 = array<u32, 16>();
    let var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(~vec2<i32>(0i, arg_0.a.x)), ~_wgslsmith_mod_vec2_i32(arg_2.a.zx, vec2<i32>(-22302i, -2147483647i))), max(arg_2.a.zz, countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(12427i, arg_0.a.x), arg_2.a.yz), -arg_2.a.zy))));
    return func_1(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, u_input.a, var_2.x), vec3<u32>(4294967295u, arg_1, 4294967295u)), vec3<u32>(37986u, 4294967295u, 0u)), var_1.x), func_2(min(u_input.a, global0.x), !any(vec2<bool>(false, true))).x), 449f, ~_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(38487u, 13113u), vec2<u32>(arg_1, 1u)), ~(var_1 ^ global0.xz)), Struct_1(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, all(vec2<bool>(false, true))), all(vec4<bool>(true, false, true, true))), abs(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_2.x, global1[_wgslsmith_index_u32(global0.x, 16u)]), vec3<u32>(19237u, 0u, 31580u), vec3<u32>(0u, global0.x, 0u)))), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(arg_2.a.x, var_3.x)), vec2<i32>(-18715i, -1i)))).a.x;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global1 = array<u32, 16>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1266f) + -814f)) + -1062f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = arg_3.b >> ((vec3<u32>(global0.x, 58622u, ~0u) | reverseBits(vec3<u32>(41757u, 40390u, global1[_wgslsmith_index_u32(arg_3.b.x, 16u)]) >> (vec3<u32>(global0.x, arg_3.b.x, 1u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_1 = firstLeadingBit(3866i);
    global1 = array<u32, 16>();
    return Struct_2(_wgslsmith_mod_vec3_i32(abs(abs(arg_2.a)), arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(firstLeadingBit(global0.x), ~4294967295u, global1[_wgslsmith_index_u32(8103u, 16u)]);
    var var_0 = func_5(Struct_2(vec3<i32>(func_4(func_1(global0.yy, -1292f, 357u, Struct_1(vec3<bool>(true, false, false), vec3<u32>(global1[_wgslsmith_index_u32(global0.x, 16u)], u_input.a, 4294967295u), 0i)), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(66296u, 16u)], 0u), func_1(global0.xy, -391f, 0u, Struct_1(vec3<bool>(true, false, false), vec3<u32>(48737u, 27109u, global0.x), 3030i))), 0i, func_3(reverseBits(u_input.a), ~vec4<u32>(global0.x, 0u, 1u, 10347u)).a.x)), 34307u, Struct_2(vec3<i32>(_wgslsmith_add_i32(23575i, 0i) << (1u % 32u), _wgslsmith_mult_i32(func_3(global1[_wgslsmith_index_u32(4294967295u, 16u)], vec4<u32>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], u_input.a, 1u)).a.x, firstTrailingBit(42831i)), -1i)), Struct_1(vec3<bool>(_wgslsmith_f_op_f32(sign(169f)) > _wgslsmith_f_op_f32(-161f * -1000f), true, true), firstTrailingBit(vec3<u32>(~u_input.a, abs(11250u), ~61699u)), func_1(global0.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-935f, -115f)) * _wgslsmith_f_op_f32(select(811f, -1633f, true))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)])), 16u)], Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(59213u, 16u)], u_input.a, 44u)), -30394i)).a.x));
    global0 = vec3<u32>(u_input.a, ~(~reverseBits(reverseBits(70159u))), ~(~(~u_input.a << (global0.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(step(-213f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f), -766f) + 268f)))));
    let var_2 = func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_add_u32(global0.x, 1152u), _wgslsmith_div_u32(u_input.a, 4294967295u)) >> (vec3<u32>(1u << (0u % 32u), global0.x & 4294967295u, u_input.a) % vec3<u32>(32u)), min(abs(~vec3<u32>(global0.x, u_input.a, u_input.a)), ~(~vec3<u32>(42050u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23871u, 16u)], 16u)], 22113u)))), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 36067u, u_input.a, global0.x), firstTrailingBit(vec4<u32>(global0.x, 18138u, 1u, global0.x))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, 47193u), vec4<u32>(10604u, 16338u, 58539u, 1u) | vec4<u32>(u_input.a, 17952u, 0u, 52501u)), ~vec4<u32>(u_input.a, 31899u, u_input.a, 8061u) & vec4<u32>(global1[_wgslsmith_index_u32(global0.x, 16u)], 28951u, u_input.a, 17300u)), vec4<u32>(~u_input.a, global0.x, ~(global0.x | u_input.a), 2754u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(global0.x) >> (_wgslsmith_clamp_u32(60679u, global1[_wgslsmith_index_u32(u_input.a, 16u)], 27753u) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(15331u, u_input.a, 1u, 0u), vec4<u32>(0u, global0.x, u_input.a, global0.x)) ^ _wgslsmith_sub_u32(0u, global0.x)), global0.zy), vec4<u32>(global0.x, global1[_wgslsmith_index_u32(24721u, 16u)], global0.x, 30202u ^ global1[_wgslsmith_index_u32(9471u, 16u)]), ~15079u);
}

