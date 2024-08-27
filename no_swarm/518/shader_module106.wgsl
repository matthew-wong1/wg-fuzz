struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
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

var<private> global0: array<u32, 31> = array<u32, 31>(4294967295u, 15271u, 0u, 56113u, 14306u, 81506u, 0u, 4294967295u, 14471u, 0u, 41532u, 37361u, 21362u, 4200u, 14515u, 4294967295u, 12280u, 22508u, 99477u, 79348u, 4294967295u, 1u, 56634u, 1u, 0u, 22360u, 1u, 4294967295u, 46892u, 5429u, 77u);

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<i32>(-12823i, i32(-2147483648), 1i), Struct_1(vec4<f32>(-708f, 1304f, -1871f, 589f), vec4<i32>(i32(-2147483648), -17111i, 2147483647i, 1i)), vec2<i32>(1i, 11492i), vec3<i32>(-9808i, 0i, 17076i)), Struct_2(vec3<i32>(0i, -2786i, -2589i), Struct_1(vec4<f32>(754f, 646f, 1000f, 1057f), vec4<i32>(7373i, -1i, 36664i, -22677i)), vec2<i32>(-1i, -2986i), vec3<i32>(i32(-2147483648), 25205i, -24967i)), Struct_2(vec3<i32>(45590i, 0i, -6997i), Struct_1(vec4<f32>(-118f, 1000f, 261f, -493f), vec4<i32>(114154i, 4448i, 0i, 4327i)), vec2<i32>(13888i, 1i), vec3<i32>(i32(-2147483648), 1i, -42016i)), Struct_2(vec3<i32>(1i, -549i, -54406i), Struct_1(vec4<f32>(665f, -535f, -153f, 935f), vec4<i32>(32713i, -1i, 1i, -9306i)), vec2<i32>(1i, 2147483647i), vec3<i32>(37192i, 0i, 2147483647i)), Struct_2(vec3<i32>(5363i, 2147483647i, -15i), Struct_1(vec4<f32>(317f, -1835f, -1339f, -464f), vec4<i32>(-24210i, i32(-2147483648), 0i, 10961i)), vec2<i32>(68588i, -47778i), vec3<i32>(-1i, -1i, -33314i)), Struct_2(vec3<i32>(-31168i, 2147483647i, i32(-2147483648)), Struct_1(vec4<f32>(-260f, -1135f, 398f, 2396f), vec4<i32>(-1i, 1i, 2147483647i, -26951i)), vec2<i32>(-5302i, 0i), vec3<i32>(0i, 31939i, -1i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_1 {
    let var_0 = ~min(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.e.x), u_input.a.wzw), u_input.e.yzw << (u_input.a.zxy % vec3<u32>(32u))), firstTrailingBit(u_input.a.x)), countOneBits(_wgslsmith_mult_u32(1u, ~u_input.b)));
    global0 = array<u32, 31>();
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_2 = 369f;
    global1 = Struct_2(vec3<i32>(i32(-1i) * -_wgslsmith_mult_i32(-45347i, 10944i), u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c.xz, vec2<i32>(~u_input.c.x, var_1.b.b.x))), global1.b, u_input.c.yx, global1.b.b.wyz);
    return var_1.b;
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), vec2<bool>(all(vec2<bool>(false, false)) || any(vec3<bool>(true, true, true)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))))), vec2<bool>(true, true));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_add_i32(~(~firstTrailingBit(~arg_0.b.x)), _wgslsmith_add_i32(~(-select(var_1.b.x, -43268i, var_0.x)), i32(-1i) * -21409i));
    var var_3 = func_2();
    global0 = array<u32, 31>();
    return -1357f;
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = func_2();
    let var_1 = Struct_2(global1.a, func_2(), vec2<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(firstTrailingBit(u_input.d), global1.c.x)), vec3<i32>(0i, -_wgslsmith_dot_vec2_i32(global1.d.yy, vec2<i32>(u_input.c.x, global1.c.x)), -38422i) << ((u_input.e.xxw ^ firstLeadingBit(vec3<u32>(85259u, global0[_wgslsmith_index_u32(13066u, 31u)], 4294967295u))) % vec3<u32>(32u)));
    let var_2 = !vec3<bool>(arg_0.x, (countOneBits(var_0.b.x) >= (var_0.b.x | 32407i)) || (!arg_0.x && arg_0.x), false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(278f, var_0.a.x, 145f, var_0.a.x), var_0.a), firstTrailingBit(vec4<i32>(global1.b.b.x, -5522i, global1.a.x, 8755i))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1223f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(19139u, ~(~(~u_input.a.x) | 0u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(266f))));
    global0 = array<u32, 31>();
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -242f), global1.b.a.x, true)) + 772f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(958f - global1.b.a.x), -333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_f32(-384f + -254f)), global1.b.a.x), -vec4<i32>(select(_wgslsmith_div_i32(69586i, global1.c.x), u_input.d, true), -global1.c.x << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)] << (6679u % 32u), 31u)] % 32u), -firstTrailingBit(-16168i), 1i));
    var var_3 = u_input.a.yzw;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-384f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.a.x))), false)), 381f), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, false, false))))), _wgslsmith_f_op_f32(min(func_2().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f)))), _wgslsmith_f_op_f32(func_2().a.x + 648f)));
}

