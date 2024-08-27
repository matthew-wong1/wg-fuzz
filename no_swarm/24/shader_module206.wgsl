struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(551f, false, vec2<i32>(i32(-2147483648), 1i));

var<private> global1: bool;

var<private> global2: vec4<u32> = vec4<u32>(1u, 56410u, 104192u, 4294967295u);

var<private> global3: array<bool, 25>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> vec2<bool> {
    var var_0 = Struct_1(vec2<bool>(false, arg_1.b), ~u_input.b.yzz, _wgslsmith_div_i32((_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-1i, arg_1.c.x, -1i, u_input.b.x)) ^ 2147483647i) << (u_input.d % 32u), 2147483647i));
    global0 = Struct_2(1000f, any(select(vec4<bool>(any(var_0.a), all(vec2<bool>(false, global3[_wgslsmith_index_u32(arg_0, 25u)])), true, global0.b), !select(vec4<bool>(global0.b, global0.b, global0.b, var_0.a.x), vec4<bool>(arg_1.b, arg_1.b, global3[_wgslsmith_index_u32(1u, 25u)], global0.b), false), global0.b)), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b << (vec4<u32>(arg_0, 4294967295u, 0u, 1u) % vec4<u32>(32u))) >> (1u % 32u), -19338i));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a, arg_1.a, global0.a, -851f), vec4<f32>(-249f, global0.a, global0.a, global0.a))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, -305f, 123f, -1407f), vec4<f32>(-208f, global0.a, global0.a, 555f), vec4<bool>(global3[_wgslsmith_index_u32(41092u, 25u)], true, false, global3[_wgslsmith_index_u32(global2.x, 25u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a, 694f, arg_1.a, -2291f), vec4<f32>(-1378f, global0.a, 337f, arg_1.a))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(610f, global0.a, 1324f, global0.a)))), vec4<bool>(!global0.b, all(vec3<bool>(false, global0.b, global3[_wgslsmith_index_u32(arg_0, 25u)])), global0.a == 673f, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(1000f + 288f), 1557f, _wgslsmith_f_op_f32(f32(-1f) * -1108f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(441f, arg_1.a, 1000f, arg_1.a))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, arg_1.a, 575f, arg_1.a), vec4<f32>(arg_1.a, -156f, global0.a, arg_1.a), false))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a, global0.a, -580f, -804f)))))));
    let var_2 = abs(51463u);
    var var_3 = max(vec3<u32>(~global2.x, 42289u, ~arg_2), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(11521u, var_2, 3180u)) | abs(1u), ~_wgslsmith_mod_u32(u_input.a.x, var_2), _wgslsmith_mult_u32(arg_0, u_input.a.x)), select(global2.zzz, reverseBits(global2.wyw), vec3<bool>(true, all(vec4<bool>(true, global0.b, global3[_wgslsmith_index_u32(var_2, 25u)], false)), global3[_wgslsmith_index_u32(0u, 25u)] && false))));
    return !var_0.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: i32, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_1(select(func_3(~firstLeadingBit(arg_0.x), Struct_2(1306f, any(vec3<bool>(arg_1, global3[_wgslsmith_index_u32(12846u, 25u)], true)), global0.c), u_input.a.x), select(!vec2<bool>(global0.b, true), select(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 25u)], false), vec2<bool>(global3[_wgslsmith_index_u32(3784u, 25u)], global3[_wgslsmith_index_u32(46682u, 25u)]), global0.b), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.d, 25u)], true), vec2<bool>(false, false)), !select(vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 25u)]), vec2<bool>(true, global0.b), vec2<bool>(false, false))), global3[_wgslsmith_index_u32(arg_0.x, 25u)]), -vec3<i32>(countOneBits(arg_2), 10965i, ~_wgslsmith_mult_i32(-2147483647i, -1i)), abs(3865i));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(~var_0.c, 2147483647i) & max(-65834i | u_input.b.x, firstTrailingBit(1i)), 2147483647i, var_0.c) << (~(~abs(~global2.zzw)) % vec3<u32>(32u));
    var_1 = u_input.b.xzy;
    let var_2 = Struct_2(global0.a, !(arg_0.x <= ~1u) & all(select(vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 25u)], false, false), select(vec3<bool>(false, global0.b, global3[_wgslsmith_index_u32(u_input.c, 25u)]), vec3<bool>(false, true, true), vec3<bool>(false, false, var_0.a.x)), all(vec4<bool>(false, arg_1, true, true)))), -(-vec2<i32>(28425i, 24330i) | global0.c));
    var var_3 = global0.c.x;
    return arg_0.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    global3 = array<bool, 25>();
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var_0 = -1878f;
    return Struct_1(!(!select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 25u)], global0.b), vec2<bool>(true, true), vec2<bool>(arg_1, false))), vec3<i32>(~(_wgslsmith_mod_i32(48229i, global0.c.x) ^ countOneBits(global0.c.x)), abs(-36027i), 40078i), _wgslsmith_dot_vec3_i32(firstTrailingBit(~firstTrailingBit(vec3<i32>(global0.c.x, u_input.b.x, u_input.b.x))), _wgslsmith_clamp_vec3_i32(u_input.b.zyx, ~u_input.b.xzy << ((arg_0.wyx << (vec3<u32>(27227u, arg_0.x, 29454u) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.b.yzz)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> vec4<u32> {
    var var_0 = func_4(vec4<u32>(func_2(~u_input.e.zy << (vec2<u32>(497u, 19692u) % vec2<u32>(32u)), !any(vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 25u)], global0.b)), ~reverseBits(u_input.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(825f, arg_0.a, -194f), vec3<f32>(253f, arg_1.a, 1246f), arg_3.ywz)), vec3<f32>(arg_0.a, global0.a, arg_0.a), arg_2))), global2.x, 68530u, 50456u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a, arg_1.a)) * _wgslsmith_f_op_f32(arg_1.a + -1000f)) - 952f) > -450f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(141f + global0.a)))));
    var var_1 = arg_1;
    global2 = ~(~vec4<u32>(~_wgslsmith_mod_u32(global2.x, global2.x), ~(~global2.x), 54068u, _wgslsmith_clamp_u32(min(global2.x, 54722u), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.c))));
    let var_2 = func_4(~(~(~select(vec4<u32>(global2.x, global2.x, u_input.d, 58177u), vec4<u32>(u_input.a.x, u_input.e.x, 7324u, 43101u), vec4<bool>(global0.b, false, false, true)))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(trunc(1029f))))));
    global1 = false;
    return vec4<u32>(0u & (global2.x & ~1u), u_input.c, 4294967295u, 23571u) & select(vec4<u32>(2296u, ~40903u, ~global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(8044u, u_input.d), vec2<u32>(4294967295u, global2.x))) & vec4<u32>(reverseBits(global2.x), _wgslsmith_mod_u32(56981u, 58334u), global2.x, firstTrailingBit(0u)), vec4<u32>(_wgslsmith_mult_u32(~u_input.d, reverseBits(u_input.c)), min(0u, u_input.d), 4294967295u ^ _wgslsmith_clamp_u32(83609u, 1u, 25120u), u_input.c), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(183f, global3[_wgslsmith_index_u32(~abs(global2.x), 25u)], _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-1i) * -u_input.b.xy), vec2<i32>(-_wgslsmith_add_i32(0i, -2147483647i), 0i)));
    global2 = select(~(abs(func_1(Struct_2(610f, global3[_wgslsmith_index_u32(u_input.d, 25u)], var_0.c), Struct_2(global0.a, global3[_wgslsmith_index_u32(1u, 25u)], global0.c), true, vec4<bool>(var_0.b, true, global3[_wgslsmith_index_u32(global2.x, 25u)], false))) ^ _wgslsmith_mod_vec4_u32(min(vec4<u32>(19974u, 19636u, u_input.d, u_input.c), vec4<u32>(global2.x, global2.x, global2.x, global2.x)), reverseBits(vec4<u32>(1u, u_input.a.x, 1u, 4294967295u)))), ~_wgslsmith_add_vec4_u32(func_1(Struct_2(global0.a, false, u_input.b.xx), Struct_2(var_0.a, global3[_wgslsmith_index_u32(0u, 25u)], vec2<i32>(-36546i, -1i)), var_0.b, !vec4<bool>(false, false, global3[_wgslsmith_index_u32(5997u, 25u)], false)), ~(~vec4<u32>(135128u, 1u, 1u, u_input.e.x))), (var_0.c.x ^ (1i | _wgslsmith_add_i32(var_0.c.x, -2147483647i))) > 6507i);
    let var_1 = u_input.d ^ global2.x;
    let var_2 = vec4<bool>(!(!global3[_wgslsmith_index_u32(var_1, 25u)]), global0.b, (-select(16557i, u_input.b.x, true) >= ((0i >> (u_input.c % 32u)) >> (~global2.x % 32u))) || var_0.b, var_0.b);
    global0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a * 1f))), false, select(min(var_0.c, vec2<i32>(var_0.c.x, var_0.c.x)) | (-global0.c >> (max(u_input.a.yz, vec2<u32>(1u, 269u)) % vec2<u32>(32u))), ~(global0.c | _wgslsmith_add_vec2_i32(global0.c, vec2<i32>(-1i, -12138i))), !var_2.yx));
    let var_3 = Struct_2(var_0.a, false, ~u_input.b.xy & func_4(vec4<u32>(var_1, var_1, 1u, 13005u & var_1), true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(399f, -1382f), vec2<f32>(var_0.a, 761f), var_2.wz))))).b.xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a - -454f), _wgslsmith_f_op_f32(var_3.a * 837f), -753f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-198f, _wgslsmith_f_op_f32(sign(-1533f)), _wgslsmith_f_op_f32(min(var_3.a, var_0.a))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1031f, var_0.a, -651f) + vec3<f32>(var_0.a, global0.a, var_0.a)))))), ~95079u);
}

