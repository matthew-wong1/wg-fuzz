struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: array<Struct_5, 14>;

var<private> global2: Struct_5;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> f32 {
    var var_0 = !(!(global2.a.a.d > 1000f));
    let var_1 = Struct_4(global2.a.a, global2.a.a.d, 26165i, any(global2.a.a.a));
    global1 = array<Struct_5, 14>();
    var var_2 = !select(vec2<bool>(global2.a.b, global2.a.b), select(select(global2.a.a.a.xx, vec2<bool>(true, true), global2.a.a.d == global2.a.a.d), !var_1.a.a.yx, !(!vec2<bool>(true, global2.a.b))), false);
    let var_3 = -403f;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1232f - -262f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2325f - var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_1.b) - 1000f) - var_1.b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec4<bool> {
    global0 = array<Struct_2, 32>();
    let var_0 = vec2<u32>(u_input.e, max(firstLeadingBit(u_input.e), 4294967295u)) >> (u_input.c.yy % vec2<u32>(32u));
    global0 = array<Struct_2, 32>();
    var var_1 = Struct_5(global2.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(1i), 1i << (_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) % 32u)), vec2<i32>(~_wgslsmith_clamp_i32(-2147483647i, global2.a.a.c, u_input.b), global2.a.a.c), ~(~(-global2.b))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(sign(arg_1)), !any(vec3<bool>(all(vec2<bool>(true, arg_2.x)), arg_2.x, true & var_1.a.a.a.x))));
    return select(!select(vec4<bool>(global2.a.a.d >= -1000f, !global2.a.b, arg_0.a.x, true), arg_2, ~u_input.c.x <= ~var_0.x), select(arg_2, !arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, -1810f))) >= 870f), !global2.a.b && all(!vec2<bool>(true, global2.a.b)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_1(vec3<bool>(false, (u_input.c.x <= (1u ^ u_input.c.x)) | true, arg_0.x), true, min(abs(select(-28761i, 0i, true && global2.a.b)), max(reverseBits(abs(u_input.a)), u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f))))));
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(~(firstLeadingBit(u_input.c.x) | ~62408u), 32u)], ~countOneBits(_wgslsmith_add_vec2_i32(global2.b, abs(global2.b))));
    var var_2 = ~firstLeadingBit(u_input.c ^ (vec3<u32>(u_input.e, u_input.c.x, u_input.e) & select(vec3<u32>(u_input.c.x, 1u, 38280u), vec3<u32>(u_input.c.x, 32937u, u_input.e), arg_0.yxx)));
    global2 = var_1;
    var_0 = var_1.a.a;
    return ((~u_input.c.x & ~u_input.c.x) ^ u_input.c.x) << (countOneBits(~var_2.x) % 32u);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = global2.a.a.a.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.d) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    global1 = array<Struct_5, 14>();
    let var_2 = global1[_wgslsmith_index_u32(func_4(!func_3(global2.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, -1031f, -947f, 686f)))), vec4<bool>(any(vec4<bool>(false, arg_0.x, false, false)), true, false, var_1 < var_1)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1744f) - 1699f), _wgslsmith_f_op_f32(-global2.a.a.d), var_1)), 14u)];
    var var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(35080u, u_input.e), ~_wgslsmith_dot_vec3_u32(vec3<u32>(10376u, u_input.c.x, 0u), firstLeadingBit(vec3<u32>(70630u, u_input.c.x, 51151u)))), 14u)];
    return var_3.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_5(Struct_2(Struct_1(select(vec3<bool>(true, false, false), global2.a.a.a, global2.a.a.d > 1389f), true, _wgslsmith_clamp_i32(-1i ^ global2.b.x, 1i, 46059i), global2.a.a.d), false), abs(select(-(~vec2<i32>(1i, global2.a.a.c)), vec2<i32>(global2.b.x, 0i) & max(vec2<i32>(-1i, u_input.d), global2.b), global2.a.a.a.yx)));
    var var_0 = Struct_5(Struct_2(func_1(global2.a.a.a.zz, _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, u_input.d, u_input.a, global2.a.a.c), ~vec4<i32>(2147483647i, -24180i, u_input.d, global2.a.a.c)), _wgslsmith_mult_vec4_i32(-vec4<i32>(global2.b.x, 15017i, -35225i, -40062i), vec4<i32>(global2.a.a.c, u_input.b, 1i, 2147483647i) | vec4<i32>(-3837i, u_input.b, u_input.a, u_input.a)), any(vec2<bool>(true, true))), false), _wgslsmith_div_vec2_i32(vec2<i32>(abs(i32(-1i) * -1i), global2.a.a.c), (vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.b)) | _wgslsmith_clamp_vec2_i32(-global2.b, global2.b, global2.b)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.a.d, _wgslsmith_f_op_f32(var_0.a.a.d + 186f), 765f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1018f, 310f, var_0.a.a.d))))));
    var var_2 = !(any(vec3<bool>(var_0.a.b, false, 60655i == var_0.a.a.c)) != global2.a.a.a.x);
    var var_3 = ~countOneBits(vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.xy), 4294967295u, 36110u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, vec4<i32>(5719i, ~(-25118i), -reverseBits(-u_input.d), min(~(i32(-1i) * -2147483647i), ~var_0.a.a.c ^ abs(var_0.a.a.c))), vec4<u32>(abs(min(u_input.e, 1u)), 0u, ~(~_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.yz)), _wgslsmith_sub_u32(0u, ~var_3.x)), firstLeadingBit(~(-(~vec3<i32>(-2592i, var_0.b.x, -13247i)))));
}

