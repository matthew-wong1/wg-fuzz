struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), true, vec3<u32>(37526u, 0u, 19318u), -1867f, true);

var<private> global1: array<bool, 8>;

var<private> global2: Struct_1;

var<private> global3: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global4: array<bool, 17> = array<bool, 17>(false, true, false, true, false, true, true, false, false, false, false, false, true, false, true, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global3 = global0.c.zx;
    return ~vec3<u32>(~abs(arg_0.c.x & global2.c.x), u_input.c, arg_0.c.x);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(1i, false, ~func_3(Struct_1(u_input.a.x, !global0.b, min(vec3<u32>(global3.x, u_input.c, 4294967295u), global0.c), global0.d, false)), -164f, true);
    let var_1 = !(!(!(true && !global1[_wgslsmith_index_u32(u_input.d, 8u)])));
    global0 = var_0;
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(var_0.a, var_0.a, 20577i, u_input.a.x)), -vec4<i32>(2147483647i, -1i, global2.a, -2147483647i)), u_input.a.x), _wgslsmith_sub_vec2_i32(u_input.a.wz, countOneBits(-u_input.a.yw))) & _wgslsmith_mod_vec2_i32(u_input.a.zw ^ ((vec2<i32>(var_0.a, u_input.a.x) >> (global0.c.zz % vec2<u32>(32u))) >> (vec2<u32>(global3.x, 4294967295u) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32((u_input.a.ww << (var_0.c.xx % vec2<u32>(32u))) | vec2<i32>(1i, 24930i), vec2<i32>(-1i) * -vec2<i32>(3019i, var_0.a)));
    global2 = var_0;
    return 29103i;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> StorageBuffer {
    global0 = Struct_1(max(_wgslsmith_div_i32(global2.a, _wgslsmith_add_i32(1i, reverseBits(global2.a))), _wgslsmith_div_i32(0i, -u_input.a.x)), true, global2.c, _wgslsmith_f_op_f32(min(1381f, _wgslsmith_f_op_f32(ceil(1908f)))), false);
    global2 = Struct_1(func_2(), global1[_wgslsmith_index_u32(~(~arg_0.x), 8u)], ~min(vec3<u32>(global2.c.x, global3.x, arg_0.x ^ 1u), _wgslsmith_div_vec3_u32(abs(global2.c), global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(755f * global2.d)))) + _wgslsmith_f_op_f32(global0.d - arg_1)), all(!select(select(vec3<bool>(true, false, global0.e), vec3<bool>(global1[_wgslsmith_index_u32(global2.c.x, 8u)], global2.e, global0.b), vec3<bool>(false, global4[_wgslsmith_index_u32(arg_0.x, 17u)], false)), select(vec3<bool>(true, true, global0.b), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(global2.c.x, 8u)]), select(vec3<bool>(global0.e, global0.e, false), vec3<bool>(global0.e, global1[_wgslsmith_index_u32(global2.c.x, 8u)], true), vec3<bool>(true, global4[_wgslsmith_index_u32(global2.c.x, 17u)], true)))));
    let var_0 = Struct_1(global0.a, global2.d != _wgslsmith_f_op_f32(abs(-370f)), ~(~firstLeadingBit(global2.c | global2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 1027f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_1))))))), false);
    let var_1 = 0u;
    let var_2 = u_input.a.xx;
    return StorageBuffer(countOneBits(reverseBits(arg_0.x)), ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.b), reverseBits(vec2<u32>(0u, global2.c.x)))), 3083u, vec2<i32>(global0.a, global0.a), vec3<i32>(23350i, u_input.a.x, abs(max(_wgslsmith_div_i32(var_2.x, var_2.x), global2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global0.c.yy, _wgslsmith_f_op_f32(-1f));
}

