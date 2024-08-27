struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 12>;

var<private> global2: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(-1i, 15348i, 17836i), vec3<i32>(12036i, -34542i, 0i), vec3<i32>(-50529i, i32(-2147483648), 23388i), vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(-1i, 17440i, 0i), vec3<i32>(4845i, -29061i, -11677i), vec3<i32>(-4567i, -1831i, i32(-2147483648)), vec3<i32>(64760i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), 30635i, 7592i), vec3<i32>(57468i, 41484i, -815i), vec3<i32>(-25198i, i32(-2147483648), 0i), vec3<i32>(-1i, 7431i, i32(-2147483648)), vec3<i32>(-18505i, i32(-2147483648), 1i), vec3<i32>(2147483647i, 39662i, 9955i), vec3<i32>(9074i, 0i, -39677i), vec3<i32>(2147483647i, 26531i, 1i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(48271i, 2147483647i, 2147483647i), vec3<i32>(-32785i, 2147483647i, 2147483647i), vec3<i32>(16758i, 0i, i32(-2147483648)), vec3<i32>(0i, -16412i, 1i), vec3<i32>(-27885i, i32(-2147483648), 2147483647i), vec3<i32>(-31237i, 4371i, 1i), vec3<i32>(73i, -21726i, -1i), vec3<i32>(0i, 1i, -8145i), vec3<i32>(18194i, 6455i, -1i));

var<private> global3: array<Struct_2, 13>;

var<private> global4: vec3<u32> = vec3<u32>(16022u, 13006u, 16642u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = global0.a.x;
    var_0 = !global0.a.x;
    return Struct_1(global0.a, min(u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(4294967295u, u_input.a.x, 4294967295u) ^ vec3<u32>(u_input.a.x, global4.x, 1u))) >= 0u, ~(vec4<i32>(27511i, countOneBits(1i), global0.c.x, u_input.b.x) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(4294967295u, 0u, 28938u, global4.x)) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_add_vec2_u32(u_input.a.xx, u_input.a.xy);
    let var_1 = func_2(Struct_3(_wgslsmith_f_op_f32(max(-788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2725f + global1[_wgslsmith_index_u32(var_0.x, 12u)]))))));
    let var_2 = vec2<bool>(true, all(!vec2<bool>(any(vec3<bool>(var_1.a.x, var_1.b, true)), var_1.a.x)));
    var var_3 = true || !(-(arg_0.c.x << (4415u % 32u)) < 2147483647i);
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -772f), -570f)))));
    return countOneBits(0i);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    let var_0 = select(arg_0.c.x, -arg_0.c.x, all(!global0.a));
    var var_1 = arg_2.d;
    global0 = func_2(arg_1);
    var var_2 = Struct_2(max(~max(vec2<u32>(1u, 1u) ^ vec2<u32>(arg_2.c, 0u), ~u_input.a.zx), arg_2.a), func_2(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(17460u, 12u)])) * -597f))), u_input.a.x, 4294967295u);
    var var_3 = (abs(_wgslsmith_div_vec2_i32(max(vec2<i32>(24879i, var_0), vec2<i32>(arg_2.b.c.x, u_input.c)), -arg_0.c.xz)) | (-u_input.b.yy << ((vec2<u32>(4294967295u, u_input.a.x) >> (countOneBits(vec2<u32>(11879u, arg_2.c)) % vec2<u32>(32u))) % vec2<u32>(32u)))) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(global0.c.wz), vec2<i32>(-3026i, _wgslsmith_div_i32(2147483647i, arg_0.c.x))), min(-1i, reverseBits(arg_2.b.c.x)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(40843u, 12u)]) + 689f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.d, 12u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(global0.a, vec3<bool>(global0.a.x != global0.a.x, any(vec3<bool>(global0.b, true, global0.a.x)), any(vec2<bool>(true, true))), select(!global0.a, global0.a, true || global0.b)), global0.a.x, firstTrailingBit(-vec4<i32>(19807i, func_1(Struct_1(vec3<bool>(true, global0.b, true), false, vec4<i32>(30796i, u_input.b.x, global0.c.x, global0.c.x)), vec3<u32>(u_input.a.x, 4294967295u, global4.x)), global0.c.x & -3542i, -u_input.c)));
    let var_1 = global4.zy;
    global0 = func_2(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -937f)));
    var var_2 = all(vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(544f)), _wgslsmith_f_op_f32(-462f + global1[_wgslsmith_index_u32(4294967295u, 12u)]))) == _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.x << (38250u % 32u), 12u)] * _wgslsmith_f_op_f32(func_3(Struct_1(global0.a, var_0.b, var_0.c), Struct_3(-162f), global3[_wgslsmith_index_u32(global4.x, 13u)]))), var_0.b, false, any(vec4<bool>(false, false, var_0.b, true)) || true));
    let var_3 = Struct_3(1000f);
    var_2 = false != all(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(global4.x & ~min(u_input.a.x, var_1.x | u_input.a.x), global1[_wgslsmith_index_u32(78836u, 12u)], min(u_input.a, ~(~u_input.a ^ min(vec3<u32>(global4.x, 39150u, global4.x), vec3<u32>(77366u, global4.x, var_1.x)))), -func_2(Struct_3(_wgslsmith_f_op_f32(-var_3.a))).c.xy);
}

