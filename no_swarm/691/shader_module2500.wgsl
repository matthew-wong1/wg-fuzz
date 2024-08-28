struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<i32>, 26>;

var<private> global2: array<u32, 8> = array<u32, 8>(10747u, 85637u, 0u, 12114u, 4294967295u, 0u, 4294967295u, 1u);

var<private> global3: array<bool, 9>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    var var_1 = Struct_3(-2423f);
    var_0 = arg_2;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1928f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * arg_2.a.x), -554f))), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-842f, 186f)) + var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1396f)), arg_2.a.x);
    var_1 = Struct_3(1172f);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(~(2147483647i & u_input.c), 10450i), _wgslsmith_sub_i32(abs(-u_input.c), -(arg_1.a & 2147483647i)), 5456i), vec3<i32>(u_input.c, _wgslsmith_div_i32(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, arg_1.a, u_input.b), vec3<i32>(1i, 27049i, arg_1.a)) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.b), vec3<i32>(1i, -26896i, -1i))), abs(firstTrailingBit(2147483647i)) & ~(-13357i)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~0u, global2[_wgslsmith_index_u32(83530u, 8u)], u_input.a, 1u), ~vec4<u32>(1u >> (u_input.a % 32u), select(u_input.a, 9662u, true), 4294967295u, countOneBits(u_input.a))), 8u)] ^ ~(~38597u);
    var var_1 = !select(!vec2<bool>(true, !arg_0), vec2<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(57052u, u_input.a, u_input.a, 29317u), vec4<u32>(global2[_wgslsmith_index_u32(0u, 8u)], 4294967295u, u_input.a, 4294967295u)), 8u)] | ~u_input.a, 9u)], !global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.a), 8u)], 9u)]), !select(!vec2<bool>(global3[_wgslsmith_index_u32(1u, 9u)], arg_0), vec2<bool>(false, false), true));
    var_1 = vec2<bool>(!any(!(!vec3<bool>(arg_0, false, global3[_wgslsmith_index_u32(u_input.a, 9u)]))), select(var_1.x, select(all(vec2<bool>(var_1.x, true)), arg_0, !(arg_1 <= arg_1)), false));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-global0.x));
    var var_3 = select(select(select(vec2<i32>(~1i, -2147483647i), arg_2.xx, !select(vec2<bool>(false, false), vec2<bool>(false, true), true)), vec2<i32>(arg_1, func_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(67721u, u_input.a), vec2<u32>(1u, u_input.a), vec2<u32>(global2[_wgslsmith_index_u32(25528u, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)])), Struct_2(-48647i), Struct_1(vec3<f32>(var_2.a, -1416f, 538f)))), all(!vec2<bool>(arg_0, true)) & all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 9u)], arg_0, var_1.x, global3[_wgslsmith_index_u32(0u, 9u)]))), firstLeadingBit(arg_2.zx), !vec2<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 9u)], all(!vec3<bool>(arg_0, false, arg_0))));
    return _wgslsmith_f_op_f32(-696f * 169f);
}

fn func_2() -> Struct_5 {
    global1 = array<vec4<i32>, 26>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-2475f + _wgslsmith_f_op_f32(-2187f * _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(~4294967295u, abs(91015u), ~global2[_wgslsmith_index_u32(61773u, 8u)])), 9u)], reverseBits(_wgslsmith_mod_i32(32137i, firstTrailingBit(u_input.b))), -vec3<i32>(u_input.c, func_3(vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(1u, 8u)]), Struct_2(u_input.c), Struct_1(vec3<f32>(861f, global0.x, global0.x))), countOneBits(u_input.b)))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, -1041f)))));
    var var_0 = Struct_1(vec3<f32>(383f, _wgslsmith_f_op_f32(step(178f, global0.x)), -1555f));
    global1 = array<vec4<i32>, 26>();
    global1 = array<vec4<i32>, 26>();
    return Struct_5(~global2[_wgslsmith_index_u32(reverseBits(0u), 8u)]);
}

fn func_1() -> i32 {
    let var_0 = func_2();
    var var_1 = Struct_2(-max(abs(countOneBits(-20089i)), min(min(u_input.b, u_input.c), -u_input.c)));
    var var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, var_1.a), ~vec2<i32>(u_input.c, 2147483647i)), vec2<i32>(~var_1.a, _wgslsmith_mod_i32(u_input.c, u_input.b))), vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_1.a, -52556i, 0i)), select(vec3<i32>(var_1.a, -6281i, -2147483647i), vec3<i32>(u_input.c, 24722i, var_1.a), vec3<bool>(global3[_wgslsmith_index_u32(19267u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(34910u, 9u)]))), -10247i >> (u_input.a % 32u)), _wgslsmith_add_vec2_i32((vec2<i32>(var_1.a, 0i) & vec2<i32>(var_1.a, u_input.b)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -72924i), vec2<i32>(var_1.a, var_1.a)), ~(vec2<i32>(var_1.a, u_input.c) & vec2<i32>(5825i, u_input.c)))), vec2<i32>(_wgslsmith_mod_i32(var_1.a, 39629i), var_1.a << ((u_input.a & global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(21673u, var_0.a), 8u)]) % 32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1449f, 1942f)), select(vec2<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a, 8u)], 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)]), vec2<bool>(global3[_wgslsmith_index_u32(30189u, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)]), vec2<bool>(false, true)))) * vec2<f32>(global0.x, 221f))), vec2<f32>(_wgslsmith_div_f32(583f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) + _wgslsmith_f_op_f32(sign(1389f)))), -590f)));
    var_2 = max(-vec2<i32>(min(var_1.a, u_input.c) | firstTrailingBit(67306i), -_wgslsmith_div_i32(var_2.x, var_2.x)), reverseBits(-(vec2<i32>(-1i) * -vec2<i32>(1i, -4685i))));
    return countOneBits(~(~_wgslsmith_div_i32(2147483647i, -var_2.x)));
}

fn func_5(arg_0: Struct_2) -> Struct_5 {
    global2 = array<u32, 8>();
    let var_0 = select(select(!vec2<bool>(true, u_input.a > 0u), vec2<bool>(true, arg_0.a <= -2147483647i), global3[_wgslsmith_index_u32(~(40907u << (0u % 32u)) | (78494u & u_input.a), 9u)]), !vec2<bool>(select(false, false, global3[_wgslsmith_index_u32(47258u, 9u)]), true), select(true, true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(~31226u), 8u)], 9u)]));
    let var_1 = Struct_5(~(~((4294967295u << (global2[_wgslsmith_index_u32(4294967295u, 8u)] % 32u)) & func_2().a)));
    return Struct_5(min(u_input.a, ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(_wgslsmith_clamp_i32(func_1(), _wgslsmith_div_i32(7511i, u_input.c), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(22726i, u_input.c, 21704i), vec3<i32>(-8210i, u_input.c, u_input.b)), -1i))));
    let var_1 = select(vec3<bool>(true, true, true), select(vec3<bool>(any(!vec2<bool>(false, global3[_wgslsmith_index_u32(var_0.a, 9u)])), global3[_wgslsmith_index_u32(var_0.a, 9u)], false), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 9u)], false), vec3<bool>(true, true, false), true), !vec3<bool>(false, false, global3[_wgslsmith_index_u32(91414u, 9u)]), !global3[_wgslsmith_index_u32(0u, 9u)]), true), !all(!vec2<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 9u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a, 8u)], 9u)]))), !(!(!(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 9u)], true, false)))));
    var var_2 = vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 8u)], var_0.a, 41839u), vec3<u32>(u_input.a, 40592u, 4294967295u)), 0u), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(17313u, 0u, var_0.a)), vec3<u32>(0u, global2[_wgslsmith_index_u32(58905u, 8u)], 4294967295u))), select(~select(vec3<u32>(4294967295u, 34757u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 45532u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)]), var_1.x), abs(countOneBits(vec3<u32>(27373u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a, 8u)], 8u)], var_0.a))), !vec3<bool>(var_1.x, true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 8u)], 9u)]))), abs(0u));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -577f);
    var var_4 = u_input.c;
    var var_5 = 6827u;
    var_4 = _wgslsmith_div_i32(-1i, _wgslsmith_clamp_i32(1i | (u_input.b | u_input.b), _wgslsmith_mod_i32(-21522i, _wgslsmith_clamp_i32(u_input.c, -2147483647i, u_input.c)), 0i)) & _wgslsmith_sub_i32(-_wgslsmith_sub_i32(u_input.b, ~61436i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.b), -vec2<i32>(-1i, u_input.b)), select(vec2<i32>(u_input.b, -1i), -vec2<i32>(22416i, u_input.c), true)));
    let var_6 = Struct_2(max(u_input.c ^ countOneBits(~u_input.c), ~(-2147483647i)));
    let var_7 = !(!select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(46588u, 9u)], global3[_wgslsmith_index_u32(var_2.x, 9u)], global3[_wgslsmith_index_u32(var_2.x, 9u)]), select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, false, global3[_wgslsmith_index_u32(u_input.a, 9u)], false), true), select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(global3[_wgslsmith_index_u32(var_2.x, 9u)], true, true, true), vec4<bool>(var_1.x, false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 8u)], 9u)], global3[_wgslsmith_index_u32(38224u, 9u)]), false), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-835f)))));
}

