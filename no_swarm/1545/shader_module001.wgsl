struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 21483i;

var<private> global1: vec4<bool>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global4: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global3 = array<bool, 3>();
    global2 = select(select(!select(select(vec2<bool>(global2.x, global4.x), global1.zx, true), global4.yw, global4.wz), !global1.xx, all(!global1.ww)), select(vec2<bool>(false, global4.x), select(global1.zz, global4.wy, !global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 3u)]), select(!vec2<bool>(global3[_wgslsmith_index_u32(1u, 3u)], true), vec2<bool>(select(false, global2.x, global1.x), 1u > u_input.b.x), select(!global4.xw, global4.zy, u_input.a.x >= 2147483647i))), global3[_wgslsmith_index_u32(u_input.b.x, 3u)]);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2140f)))))));
    var var_1 = u_input.a;
    global1 = vec4<bool>(true, true, !(87038i == select(1i, var_1.x, select(global1.x, true, true))), u_input.a.x == -u_input.a.x);
    return -17603i;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<i32>(u_input.a.x, 1i ^ func_3(), firstLeadingBit((u_input.a.x & ~u_input.a.x) ^ -27243i));
    global1 = !vec4<bool>(global4.x, true, true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.b.zx | (vec2<u32>(u_input.b.x, u_input.b.x) << (u_input.b.xy % vec2<u32>(32u))), vec2<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), min(1u, u_input.c))), 3u)]);
    var var_1 = ~(~_wgslsmith_add_u32(36982u, abs(abs(u_input.b.x))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(~(~u_input.a), -(u_input.a | vec2<i32>(0i, var_0.x)))), true);
    let var_3 = var_2;
    return Struct_1(_wgslsmith_add_i32(firstTrailingBit(var_2.a.a | -41808i), ~(~(-var_3.a.a))));
}

fn func_1() -> vec4<bool> {
    global3 = array<bool, 3>();
    var var_0 = Struct_1(~25880i);
    var_0 = func_2();
    global3 = array<bool, 3>();
    global3 = array<bool, 3>();
    return select(vec4<bool>(all(select(vec3<bool>(global1.x, true, true), !global1.xxx, select(global4.yxz, global1.yyw, global2.x))), false, global2.x, global3[_wgslsmith_index_u32(u_input.b.x, 3u)]), !vec4<bool>(true, true, select(global3[_wgslsmith_index_u32(4294967295u, 3u)], any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 3u)], true, global2.x, global4.x)), global1.x), true), vec4<bool>(true, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.a), vec2<i32>(u_input.a.x, 4572i)), var_0.a) <= -1i, false, any(vec4<bool>(any(global1.zyy), false, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec4<bool>(false, all(select(global4.wwz, vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.c, 3u)], false), false)) & true, true, true), func_1(), false);
    let var_0 = !global2.x;
    global3 = array<bool, 3>();
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2170f) + _wgslsmith_f_op_f32(min(-900f, _wgslsmith_f_op_f32(min(-1846f, 122f))))), _wgslsmith_f_op_f32(floor(1595f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(334f, _wgslsmith_div_f32(858f, -131f))), 1795f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -992f))))))));
    let var_2 = _wgslsmith_add_i32(-15908i, countOneBits(countOneBits(~u_input.a.x)) ^ u_input.a.x);
    var var_3 = vec4<bool>(true, false, 1311f <= _wgslsmith_f_op_f32(-1052f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.x, -480f), -1613f))), (~_wgslsmith_add_u32(4294967295u, u_input.b.x) > 1u) && true);
    var var_4 = firstLeadingBit(vec2<i32>(-var_2, -countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 955i, u_input.a.x, -54539i), vec4<i32>(u_input.a.x, -1i, 1i, var_2)))));
    var var_5 = Struct_2(Struct_1(_wgslsmith_mult_i32(-52067i, func_2().a)), !var_3.x & true);
    global3 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(67905u, u_input.b.x, 43626u, 32785u), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.c))) >> (~select(vec4<u32>(u_input.b.x, u_input.c, 1u, u_input.b.x), vec4<u32>(u_input.c, 4294967295u, u_input.b.x, 0u), true) % vec4<u32>(32u)), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -937f);
}

