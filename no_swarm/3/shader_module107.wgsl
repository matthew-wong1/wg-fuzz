struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(27839u, 5928u, 4294967295u);

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, -2215i, 0i, -54818i), vec3<u32>(10446u, 35267u, 0u), 1u), vec3<f32>(1563f, -1593f, 261f), vec2<bool>(false, true));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    var var_0 = global1.a.c;
    let var_1 = true;
    global0 = array<u32, 3>();
    let var_2 = Struct_4(~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.c, 0i, -2147483647i), arg_3.b.yzy), vec3<i32>(u_input.b, arg_3.b.x, arg_3.b.x)), ~(-global1.a.b.yyw)), any(vec3<bool>(true, select(true, !arg_0.b.x, all(vec4<bool>(true, false, arg_3.a.x, true))), arg_3.a.x)), -4824i);
    let var_3 = select(vec3<bool>(any(vec3<bool>(true, all(vec3<bool>(true, false, arg_1.b)), true)), var_1, false), !vec3<bool>(1127f <= _wgslsmith_f_op_f32(round(global1.b.x)), !var_1, all(vec4<bool>(arg_1.b, arg_1.b, arg_0.a, true))), all(select(vec3<bool>(true, true, true), !vec3<bool>(arg_1.b, false, var_2.b), true)) | arg_1.b);
    return global1.c.x;
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b.x, global1.b.x, func_3(Struct_2(global1.b.x != global1.b.x, !vec2<bool>(global1.a.a.x, true)), Struct_4(u_input.b, global0[_wgslsmith_index_u32(0u, 3u)] != 3014u, 2147483647i >> (global0[_wgslsmith_index_u32(4294967295u, 3u)] % 32u)), global1.a.c << (global1.a.c % vec3<u32>(32u)), Struct_1(global1.c, vec4<i32>(global1.a.b.x, global1.a.b.x, u_input.b, global1.a.b.x), global1.a.c & vec3<u32>(u_input.a, 1u, global1.a.d), _wgslsmith_add_u32(global1.a.c.x, global0[_wgslsmith_index_u32(global1.a.c.x, 3u)]))))));
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.b), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(-var_0), global1.b.x))), global1.c);
    global0 = array<u32, 3>();
    let var_1 = Struct_2(!all(vec3<bool>(!global1.c.x, all(global1.c), all(vec3<bool>(global1.c.x, false, true)))), select(vec2<bool>(false, _wgslsmith_f_op_f32(-var_0) != 185f), select(!vec2<bool>(global1.a.a.x, false), vec2<bool>(8677u < global0[_wgslsmith_index_u32(7430u, 3u)], global1.c.x), vec2<bool>(global0[_wgslsmith_index_u32(global1.a.c.x, 3u)] >= 21419u, 885f > global1.b.x)), select(vec2<bool>(true, true), vec2<bool>(!global1.a.a.x, !global1.a.a.x), select(global1.a.a, global1.a.a, global1.c))));
    var var_2 = global1.a;
    return vec2<u32>(~reverseBits(_wgslsmith_clamp_u32(global1.a.c.x, 25006u, 27170u)) << (max(~8808u, (var_2.d >> (global1.a.d % 32u)) & 53848u) % 32u), 1u);
}

fn func_4(arg_0: vec2<u32>) -> Struct_3 {
    global0 = array<u32, 3>();
    global1 = Struct_3(global1.a, global1.b, !vec2<bool>(global1.c.x, !(global1.a.a.x | global1.a.a.x)));
    var var_0 = Struct_3(Struct_1(!(!vec2<bool>(false, global1.a.a.x)), max(global1.a.b, global1.a.b), select(abs(~global1.a.c), _wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global1.a.c.x, 3u)], arg_0.x, 82870u), global1.a.c), any(vec3<bool>(false, global1.c.x, global1.c.x)) && all(vec4<bool>(false, true, false, global1.a.a.x))), _wgslsmith_mod_u32(firstTrailingBit(4717u) & global0[_wgslsmith_index_u32(~u_input.a, 3u)], ~_wgslsmith_mult_u32(100821u, 0u))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global1.b)), _wgslsmith_f_op_vec3_f32(-global1.b)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 248f, 1448f)), _wgslsmith_f_op_vec3_f32(max(global1.b, vec3<f32>(global1.b.x, -417f, global1.b.x)))))))), global1.c);
    var var_1 = ~4294967295u;
    let var_2 = ~(~var_0.a.c.yy);
    return Struct_3(Struct_1(!vec2<bool>(var_0.b.x >= var_0.b.x, true), (vec4<i32>(78857i, 1i, global1.a.b.x, 21054i) << (vec4<u32>(13071u, var_0.a.c.x, 1u, arg_0.x) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.x, 1395u, 1u, 29897u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 21702u, global1.a.d, 4294967295u), vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 3u)], u_input.a, 0u))) % vec4<u32>(32u)), vec3<u32>(arg_0.x, _wgslsmith_mult_u32(abs(var_2.x), ~24760u), _wgslsmith_div_u32(~u_input.a, var_2.x | 62280u)), func_2().x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - global1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -268f), global1.b.x), !global1.a.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-219f, arg_1.x));
    var var_1 = _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], ~59546u);
    var var_2 = arg_1;
    var var_3 = global1.a.b.wx;
    let var_4 = func_4(~func_2());
    return Struct_1(!vec2<bool>(arg_0.x, !var_4.c.x), -_wgslsmith_mod_vec4_i32(global1.a.b, abs(-var_4.a.b)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_4.a.d, (var_4.a.c.x << (110301u % 32u)) & _wgslsmith_mult_u32(var_4.a.c.x, global0[_wgslsmith_index_u32(u_input.a, 3u)])), _wgslsmith_div_vec3_u32(countOneBits(~var_4.a.c), firstLeadingBit(vec3<u32>(var_4.a.d, 5446u, var_4.a.c.x)) & countOneBits(var_4.a.c))), 11960u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 3>();
    global1 = Struct_3(func_1(!vec3<bool>(global1.a.a.x, global1.a.a.x || false, global1.c.x), _wgslsmith_div_vec2_f32(global1.b.xx, _wgslsmith_f_op_vec2_f32(min(global1.b.yy, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-711f, 591f), vec2<f32>(global1.b.x, -1730f))))))), _wgslsmith_f_op_vec3_f32(-global1.b), vec2<bool>(global1.a.a.x, func_3(Struct_2(global1.a.c.x > 1u, global1.c), Struct_4(u_input.b >> (u_input.a % 32u), true, global1.a.b.x), ~(global1.a.c << (global1.a.c % vec3<u32>(32u))), func_1(select(vec3<bool>(false, global1.c.x, global1.c.x), vec3<bool>(true, global1.c.x, global1.c.x), global1.c.x), vec2<f32>(-1100f, global1.b.x)))));
    let var_0 = Struct_4(0i, ((reverseBits(global1.a.c.x) | ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]) < 1u) && (func_3(Struct_2(global1.a.a.x, global1.c), Struct_4(-2147483647i, true, u_input.b), ~vec3<u32>(1u, global1.a.c.x, global1.a.c.x), global1.a) | !func_3(Struct_2(false, vec2<bool>(true, global1.a.a.x)), Struct_4(u_input.b, false, global1.a.b.x), global1.a.c, global1.a)), _wgslsmith_dot_vec3_i32(~vec3<i32>(global1.a.b.x, u_input.b, 33860i) << (vec3<u32>(_wgslsmith_mult_u32(1u, 1386u), ~u_input.a, 0u) % vec3<u32>(32u)), vec3<i32>(reverseBits(global1.a.b.x), global1.a.b.x, -_wgslsmith_sub_i32(u_input.b, -1i))));
    global1 = Struct_3(global1.a, vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(330f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b.x)))), _wgslsmith_f_op_f32(select(-2523f, global1.b.x, reverseBits(u_input.b) <= -2147483647i))), !vec2<bool>(true, !(false && global1.c.x)));
    global1 = func_4(countOneBits(_wgslsmith_clamp_vec2_u32(~(~global1.a.c.yx), vec2<u32>(u_input.a, 1u) ^ ~global1.a.c.yy, min(vec2<u32>(1u, 66714u), global1.a.c.zy) & vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 3u)]))));
    let var_1 = u_input.a;
    var var_2 = ~(-1i);
    let var_3 = Struct_3(Struct_1(vec2<bool>(var_0.b, true), vec4<i32>(func_1(select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(var_0.b, var_0.b, false), true), vec2<f32>(-573f, -334f)).b.x, -firstLeadingBit(40412i), _wgslsmith_add_i32(-var_0.c, 0i), var_0.c), global1.a.c, ~4294967295u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.b), vec3<f32>(global1.b.x, global1.b.x, global1.b.x))), vec2<bool>(true, !global1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(min(select(var_3.a.c, reverseBits(global1.a.c), var_0.b), ~func_4(vec2<u32>(66605u, 112145u)).a.c), global1.a.c), -_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(24802i, u_input.b)), firstTrailingBit(vec2<i32>(u_input.b, -38594i) >> (vec2<u32>(global1.a.d, 0u) % vec2<u32>(32u)))), func_1(select(vec3<bool>(var_3.a.b.x <= 12811i, true, !var_0.b), vec3<bool>(global1.a.a.x, global1.b.x <= var_3.b.x, all(vec2<bool>(true, var_3.a.a.x))), vec3<bool>(all(vec3<bool>(true, global1.a.a.x, global1.c.x)), false, var_3.a.a.x)), _wgslsmith_f_op_vec2_f32(round(global1.b.yy))).b.x, 514f, (_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.b.x, 1i, 12412i), vec3<i32>(u_input.b, var_0.a, 27882i)), global1.a.b.x) ^ (i32(-1i) * -var_0.a)) ^ -6874i);
}

