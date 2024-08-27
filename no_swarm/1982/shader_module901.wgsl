struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(0u, 0u, 64598u, 4294967295u, 4294967295u, 26153u, 0u, 0u, 4294967295u, 2021u, 1u, 586u, 0u, 28533u, 4294967295u, 89492u, 56617u, 4294967295u, 4294967295u, 19353u, 8696u, 22181u, 4294967295u, 106021u, 4294967295u, 0u, 472u, 0u, 35113u);

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<bool, 21> = array<bool, 21>(true, true, false, true, false, false, true, false, false, true, false, false, true, true, false, true, true, false, true, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    global2 = array<bool, 21>();
    let var_0 = u_input.b.yx;
    global0 = array<u32, 29>();
    global2 = array<bool, 21>();
    let var_1 = max(-abs(~vec4<i32>(-1i, -56381i, -6540i, -1i) >> (~vec4<u32>(arg_1.a.x, 39265u, 39436u, u_input.a) % vec4<u32>(32u))), ~vec4<i32>(_wgslsmith_div_i32(~(-43371i), -2147483647i), -_wgslsmith_sub_i32(-29673i, -2147483647i), _wgslsmith_div_i32(~0i, -1i), 24711i));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.x, arg_0.c.x, 1f) * arg_1.c);
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    global0 = array<u32, 29>();
    let var_0 = _wgslsmith_div_vec2_u32(u_input.b.yx, u_input.b.zw);
    let var_1 = Struct_1(~vec2<u32>(63055u, arg_0), _wgslsmith_dot_vec3_u32(u_input.b.wwx, ~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, var_0.x, u_input.a), u_input.b.yyx >> (vec3<u32>(global0[_wgslsmith_index_u32(38915u, 29u)], 1u, 1u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2069f, _wgslsmith_f_op_f32(f32(-1f) * -2744f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(349f))))))));
    let var_2 = true;
    var var_3 = global1[_wgslsmith_index_u32(var_1.b, 21u)];
    return arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    var var_0 = Struct_1(~firstLeadingBit(~u_input.b.xy), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, 287f), vec3<f32>(273f, 1621f, 840f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 1391f) - vec3<f32>(1010f, 2512f, arg_1)))) - _wgslsmith_f_op_vec3_f32(func_2(Struct_1(u_input.b.yy, global0[_wgslsmith_index_u32(u_input.a, 29u)] >> (0u % 32u), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(372f, arg_1, 424f)))), Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 1u), max(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 29u)], 29u)]), vec3<f32>(arg_1, arg_1, arg_1))))));
    var_0 = Struct_1(var_0.a, ~(var_0.a.x | countOneBits(global0[_wgslsmith_index_u32(var_0.b, 29u)])) >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(~6472u, reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b, 29u)], 29u)])), u_input.a) % 32u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_f_op_f32(509f * 250f))) * _wgslsmith_f_op_f32(f32(-1f) * -485f)), 891f, _wgslsmith_f_op_f32(min(var_0.c.x, -1889f))));
    global2 = array<bool, 21>();
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x << (_wgslsmith_add_u32(func_3(var_0.a.x, global2[_wgslsmith_index_u32(104927u, 21u)]), global0[_wgslsmith_index_u32(select(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(var_0.a.x, 21u)]), 29u)]) % 32u), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.b.xwx, u_input.b.xzw), 29u)]), countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(~max(var_0.b, u_input.b.x), 29u)], var_0.a.x, ~1u)));
    var var_2 = vec2<u32>(0u, u_input.b.x);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(-vec4<i32>(arg_0.x, arg_0.x, -18431i, arg_0.x), vec4<i32>(0i, arg_0.x, arg_0.x, 0i), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(var_2.x, 21u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 29u)], 21u)], false, global2[_wgslsmith_index_u32(u_input.a, 21u)]), false)), vec4<i32>(arg_0.x, 2147483647i, _wgslsmith_add_i32(arg_0.x, arg_0.x), ~arg_0.x)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, arg_0.x), _wgslsmith_mult_i32(arg_0.x, arg_0.x)), -2147483647i, arg_0.x, -2147483647i)) << (_wgslsmith_dot_vec2_u32(~(~var_0.a) << (reverseBits(u_input.b.ww) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.b.xx << (vec2<u32>(var_0.b, 20311u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_2.x, 29u)], 1u), u_input.b.ww)) << ((var_0.a << (var_0.a % vec2<u32>(32u))) % vec2<u32>(32u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xzw;
    let var_1 = ~(~(select(u_input.b.yxw, ~vec3<u32>(u_input.a, u_input.b.x, 4002u), !vec3<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38486u, 29u)], 21u)], global2[_wgslsmith_index_u32(u_input.b.x, 21u)])) | _wgslsmith_sub_vec3_u32(vec3<u32>(42866u, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 29u)]), abs(u_input.b.xwz))));
    let var_2 = ~countOneBits(-1i);
    let var_3 = ~_wgslsmith_div_vec2_i32(-((vec2<i32>(-53827i, var_2) >> (var_1.xy % vec2<u32>(32u))) & -vec2<i32>(2147483647i, var_2)), vec2<i32>(func_1(vec2<i32>(-23178i, var_2) >> (vec2<u32>(var_0.x, u_input.a) % vec2<u32>(32u)), -324f), var_2));
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global1 = array<Struct_1, 21>();
    global0 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) - 1644f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -1013f))) - _wgslsmith_div_f32(-182f, _wgslsmith_f_op_f32(floor(-206f))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) + -1000f), _wgslsmith_f_op_f32(ceil(-862f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f), _wgslsmith_f_op_f32(786f - -324f))))));
}

