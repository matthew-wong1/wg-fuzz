struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(47652u), Struct_1(vec4<u32>(12441u, 124916u, 21616u, 0u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 60569u)));

var<private> global1: array<f32, 3> = array<f32, 3>(-264f, 659f, 2636f);

var<private> global2: array<Struct_2, 14>;

var<private> global3: array<bool, 26>;

var<private> global4: bool = false;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = vec2<i32>(2147483647i, -6723i);
    global2 = array<Struct_2, 14>();
    var var_1 = Struct_5(Struct_4(~vec2<i32>(u_input.a.x ^ u_input.a.x, 1i), Struct_1(vec4<u32>(global0.a.a, global0.a.a, 46818u, _wgslsmith_mult_u32(63658u, global0.b.a.x))), Struct_3(global0.a, global0.b, Struct_1(_wgslsmith_mult_vec4_u32(global0.c.a, global0.c.a))), global0.b.a.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(global0.b.a.x, 53209u, 88995u), global0.c.a.yzx, true), ~select(vec3<u32>(global0.b.a.x, global0.a.a, global0.a.a), vec3<u32>(1067u, 1481u, global0.b.a.x), false)) ^ ~1u, 3u)], _wgslsmith_clamp_vec2_u32(~max(vec2<u32>(global0.a.a, global0.b.a.x), global0.b.a.zz), global0.c.a.xx, global0.c.a.ww), reverseBits(var_0.x));
    var var_2 = _wgslsmith_mult_u32(38480u, global0.a.a);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 394f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b))))) - _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * global1[_wgslsmith_index_u32(var_1.c.x ^ global0.a.a, 3u)]) - _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-var_1.b)))));
}

fn func_2() -> u32 {
    global0 = Struct_3(Struct_2(28571u), Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(45208u, 4294967295u, global0.a.a, 10300u), vec4<u32>(global0.b.a.x, 4294967295u, global0.c.a.x, global0.a.a)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(48516u, 0u, global0.c.a.x, global0.c.a.x), global0.b.a) % vec4<u32>(32u)), global0.c.a)), Struct_1(vec4<u32>(countOneBits(82437u) >> (abs(global0.b.a.x) % 32u), 52573u, global0.b.a.x, 1u)));
    var var_0 = Struct_3(Struct_2(~select(global0.b.a.x, 1u, !global3[_wgslsmith_index_u32(global0.b.a.x, 26u)])), global0.c, Struct_1(global0.c.a));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 3u)] + global1[_wgslsmith_index_u32(57246u, 3u)]) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.b.a.x, 3u)] - global1[_wgslsmith_index_u32(23502u, 3u)])), global1[_wgslsmith_index_u32(~82596u, 3u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 3u)], 975f), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 37144u), 3u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b.a.x, global0.b.a.x), 3u)])) + _wgslsmith_f_op_f32(-561f * global1[_wgslsmith_index_u32(~global0.c.a.x, 3u)])), _wgslsmith_f_op_f32(max(-1096f, -1277f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(6201u | global0.b.a.x, 3u)] - _wgslsmith_f_op_f32(1725f + global1[_wgslsmith_index_u32(41409u, 3u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a.a, 3u)]) * global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.c.a.x, 1u), 3u)]))));
    let var_2 = (~(~(~0u)) < var_0.b.a.x) || !any(!select(vec3<bool>(global3[_wgslsmith_index_u32(3107u, 26u)], false, global3[_wgslsmith_index_u32(global0.c.a.x, 26u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(var_0.a.a, 26u)]), global3[_wgslsmith_index_u32(4294967295u, 26u)]));
    global3 = array<bool, 26>();
    return var_0.a.a;
}

fn func_1() -> i32 {
    global1 = array<f32, 3>();
    global2 = array<Struct_2, 14>();
    global0 = Struct_3(Struct_2(33313u), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(0u, max(11026u, 45261u), func_2(), ~global0.a.a), ~vec4<u32>(1u, global0.a.a, 14295u, 67246u) ^ firstTrailingBit(global0.c.a))), Struct_1(global0.b.a));
    global4 = global0.a.a <= 4294967295u;
    var var_0 = _wgslsmith_div_f32(616f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.a.a, 3u)] - global1[_wgslsmith_index_u32(35438u, 3u)]) * _wgslsmith_f_op_f32(f32(-1f) * -240f))))));
    return -u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_sub_i32(_wgslsmith_mod_i32(25574i, u_input.a.x), u_input.a.x) << (_wgslsmith_div_u32(global0.a.a >> (99805u % 32u), min(1u, 4294967295u)) % 32u)) | 41121i;
    global3 = array<bool, 26>();
    var var_1 = ~firstTrailingBit(~(~abs(vec2<u32>(global0.c.a.x, global0.b.a.x))));
    let var_2 = vec2<i32>((-_wgslsmith_mod_i32(9188i, var_0) | min(func_1(), _wgslsmith_mod_i32(u_input.a.x, var_0))) >> (_wgslsmith_clamp_u32(~1u, max(1u, var_1.x), func_2()) % 32u), ~var_0);
    let var_3 = select(~global0.b.a, abs(~max(vec4<u32>(55528u, global0.a.a, 69552u, var_1.x), vec4<u32>(global0.b.a.x, var_1.x, var_1.x, 26209u))), !vec4<bool>(global3[_wgslsmith_index_u32(24278u, 26u)], all(!vec2<bool>(global3[_wgslsmith_index_u32(0u, 26u)], true)), true, var_0 < -32i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-1003f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_3.x, 3u)] + 1505f)))), global1[_wgslsmith_index_u32(var_3.x, 3u)], global1[_wgslsmith_index_u32(global0.b.a.x, 3u)]), -((u_input.a.xz ^ -u_input.a.yy) | _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.x, 13757i), vec2<i32>(0i, 2147483647i), vec2<i32>(-37242i, var_2.x)), ~vec2<i32>(u_input.a.x, -1i))), var_3, global1[_wgslsmith_index_u32(15214u, 3u)]);
}

