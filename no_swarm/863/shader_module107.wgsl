struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(1078f, -609f, 268f), vec3<f32>(362f, -974f, -1242f), vec3<f32>(264f, 968f, 118f), vec3<f32>(-644f, 464f, 239f), vec3<f32>(1000f, 829f, 480f), vec3<f32>(-1000f, -628f, 832f));

var<private> global1: Struct_4 = Struct_4(vec3<u32>(7718u, 4294967295u, 30560u));

var<private> global2: array<Struct_4, 22>;

var<private> global3: Struct_4 = Struct_4(vec3<u32>(0u, 8165u, 15441u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32) -> vec4<i32> {
    let var_0 = all(select(select(vec3<bool>(true, all(vec2<bool>(false, false)), all(vec2<bool>(true, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), select(false, any(vec4<bool>(true, false, true, true)), u_input.b <= u_input.d.x)), vec3<bool>(true, true, true), !(u_input.a.x < 2147483647i)));
    global1 = global2[_wgslsmith_index_u32(~firstTrailingBit(~4294967295u), 22u)];
    var var_1 = _wgslsmith_mod_vec2_u32(global3.a.xy, select(global3.a.xy & ~global1.a.yy, vec2<u32>(~10768u, global1.a.x) & ((vec2<u32>(global3.a.x, 0u) >> (global1.a.yx % vec2<u32>(32u))) & u_input.c.zy), vec2<bool>(select(var_0, true, false), !var_0)));
    var var_2 = ~global1.a.x << (_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(var_1.x, 9800u) & (global3.a.x & 20834u)), 34509u) % 32u);
    var var_3 = u_input.d.x;
    return abs(u_input.d);
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<u32> {
    global2 = array<Struct_4, 22>();
    var var_0 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(abs(-1494f)), arg_0, _wgslsmith_div_f32(arg_0, -1000f));
    global0 = array<vec3<f32>, 6>();
    var var_1 = select(~global1.a, u_input.c.yyx, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.a.x, u_input.c.x, 4294967295u, 4294967295u), u_input.c) >= _wgslsmith_div_u32(_wgslsmith_mod_u32(global1.a.x, ~0u), ~(~18570u)));
    var var_2 = Struct_3(Struct_1(select(false, true, _wgslsmith_f_op_f32(ceil(var_0.x)) >= _wgslsmith_f_op_f32(min(arg_0, var_0.x))), max(reverseBits(~vec4<u32>(u_input.c.x, 2432u, 1u, 1u)), ~vec4<u32>(var_1.x, 1u, global1.a.x, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(any(vec3<bool>(false, false, false)) == (all(vec4<bool>(false, true, false, false)) & true), ~vec4<u32>(global3.a.x, global3.a.x, _wgslsmith_div_u32(1u, 94128u), abs(0u))), Struct_2(Struct_1(any(vec2<bool>(false, false)), vec4<u32>(0u, 0u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(global3.a.x, global1.a.x)))), vec3<i32>(u_input.d.x, u_input.b, _wgslsmith_add_i32(u_input.a.x, ~1i)), u_input.d, vec2<u32>(global1.a.x ^ ~66983u, reverseBits(global1.a.x)), Struct_1(true & all(vec2<bool>(false, false)), firstLeadingBit(~u_input.c))), true);
    return ~min(vec4<u32>(~(~26577u), max(52886u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.d.e.b.x, 1u, 0u), ~u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, global1.a.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, global3.a.x) << (var_2.d.a.b.zyz % vec3<u32>(32u)))), vec4<u32>(_wgslsmith_div_u32(abs(1u), var_2.a.b.x), ~16217u >> (u_input.c.x % 32u), global3.a.x, _wgslsmith_dot_vec3_u32(~u_input.c.xww, ~u_input.c.yxy)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>) -> bool {
    var var_0 = -582f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-822f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-710f - 331f) - _wgslsmith_f_op_f32(abs(-129f))))));
    return arg_0.a;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: bool) -> Struct_4 {
    let var_0 = true;
    let var_1 = func_4(Struct_1(var_0, func_3(_wgslsmith_f_op_f32(sign(-1581f)), 33017i)), vec3<i32>(arg_0, i32(-1i) * -10382i, _wgslsmith_div_i32(u_input.d.x, -2147483647i)), func_3(arg_1.x, arg_0).wyz);
    global1 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16967u, global3.a.x, u_input.c.x, 4294967295u) ^ vec4<u32>(0u, 103921u, global1.a.x, u_input.c.x), vec4<u32>(global1.a.x, 0u, u_input.c.x, u_input.c.x)) ^ 67189u, _wgslsmith_sub_u32(~global1.a.x, ~4294967295u), 127424u >> (~u_input.c.x % 32u)), 22u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1858f)));
    var var_3 = arg_1.x;
    return Struct_4(_wgslsmith_clamp_vec3_u32(u_input.c.wyz, vec3<u32>(func_3(257f, u_input.a.x).x, global3.a.x, 1u), vec3<u32>(~0u, 76307u, 32080u)) & ((vec3<u32>(global1.a.x, global1.a.x, global3.a.x) << (~global3.a % vec3<u32>(32u))) & func_3(arg_1.x, ~0i).wyz));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 22>();
    let var_0 = vec4<i32>(firstTrailingBit(u_input.a.x), ~(-2147483647i), -_wgslsmith_dot_vec4_i32(func_1(u_input.c.x), vec4<i32>(~u_input.d.x, 1i, countOneBits(u_input.a.x), firstLeadingBit(-2147483647i))), 6467i);
    global3 = func_2(1486i, global0[_wgslsmith_index_u32(2722u, 6u)], 68301u, false);
    global0 = array<vec3<f32>, 6>();
    global0 = array<vec3<f32>, 6>();
    let var_1 = Struct_4(~vec3<u32>(~(~u_input.c.x), abs(1u), _wgslsmith_mod_u32(10526u, ~global1.a.x)));
    global2 = array<Struct_4, 22>();
    let var_2 = Struct_2(Struct_1(any(vec4<bool>(true, true, true, true)), u_input.c), ~u_input.d.yyz << (_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_1.a.x, global3.a.x, 4294967295u), 0u, var_1.a.x), ~global1.a, func_2(var_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1404f, -1000f, -1925f) + global0[_wgslsmith_index_u32(25219u, 6u)]), 1u, true).a) % vec3<u32>(32u)), ~vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.yy, max(var_0.wz, var_0.wy)), _wgslsmith_div_i32(-u_input.d.x, 22547i), ~u_input.d.x, _wgslsmith_sub_i32(-18278i, u_input.a.x)), func_2(49689i, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(463f - 1874f), 1371f)), _wgslsmith_f_op_f32(max(482f, _wgslsmith_f_op_f32(min(222f, -202f)))), _wgslsmith_f_op_f32(-364f * _wgslsmith_f_op_f32(f32(-1f) * -600f))), ~max(_wgslsmith_clamp_u32(0u, global3.a.x, global3.a.x), _wgslsmith_clamp_u32(u_input.c.x, global1.a.x, 15722u)), true).a.zz, Struct_1(var_1.a.x == firstLeadingBit(abs(var_1.a.x)), abs(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zw, global1.a.zx), _wgslsmith_mod_u32(u_input.c.x, 27945u), select(1u, 5561u, true), u_input.c.x))));
    global1 = func_2(0i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(~0u, 6u)])) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -456f), -444f, 578f)))), max(global1.a.x, _wgslsmith_add_u32(12628u, _wgslsmith_dot_vec4_u32(~u_input.c, var_2.e.b))), !any(select(select(vec4<bool>(var_2.e.a, false, true, var_2.a.a), vec4<bool>(false, false, var_2.a.a, var_2.e.a), vec4<bool>(false, true, var_2.a.a, var_2.a.a)), vec4<bool>(var_2.a.a, true, true, var_2.a.a), vec4<bool>(true, var_2.a.a, var_2.e.a, var_2.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~4294967295u);
}

