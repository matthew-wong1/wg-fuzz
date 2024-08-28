struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 14>;

var<private> global2: vec3<f32> = vec3<f32>(1573f, -1643f, 267f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(max(1641f, global1[_wgslsmith_index_u32(abs(45205u), 14u)]))), _wgslsmith_f_op_f32(-230f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x)))), any(select(select(global0.yx, vec2<bool>(global0.x, true), arg_0), vec2<bool>(arg_0, false), global0.x)))) - global1[_wgslsmith_index_u32(0u, 14u)]);
    var var_1 = 0u;
    var var_2 = 5398i;
    return -countOneBits(countOneBits(2147483647i));
}

fn func_2() -> vec4<i32> {
    var var_0 = global1[_wgslsmith_index_u32(1u, 14u)];
    global1 = array<f32, 14>();
    var var_1 = Struct_4(Struct_3(Struct_1(29787u, vec2<bool>(any(global0.yz), global0.x), _wgslsmith_f_op_f32(-global2.x)), global0.x, vec2<bool>(func_3(global0.x) == -61449i, true)), !(!(!select(global0.zx, vec2<bool>(global0.x, global0.x), global0.xz))), vec3<u32>(firstTrailingBit(0u), 0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 1u), ~26821u)));
    let var_2 = !any(vec2<bool>(global0.x, global0.x));
    let var_3 = vec3<f32>(150f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(574f + _wgslsmith_f_op_f32(-711f + global2.x)))))), _wgslsmith_f_op_f32(-var_1.a.a.c));
    return ((~(-vec4<i32>(u_input.c, u_input.b, -1i, 0i)) & -vec4<i32>(u_input.a.x, -1i, -2147483647i, -588i)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_1.a.a.a, var_1.a.a.a, 11478u), vec4<u32>(82737u, 4294967295u, var_1.c.x, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_1.c.x, var_1.c.x, var_1.c.x), vec4<u32>(var_1.c.x, var_1.c.x, 4294967295u, var_1.c.x))), countOneBits(var_1.a.a.a), 1u << (var_1.a.a.a % 32u), 1u) % vec4<u32>(32u))) >> (firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.a.a, 1u, 4294967295u, var_1.a.a.a), vec4<u32>(var_1.a.a.a, var_1.c.x, var_1.a.a.a, var_1.c.x)) & firstTrailingBit(abs(vec4<u32>(32768u, 0u, 4294967295u, 0u)))) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = min(~(~countOneBits(u_input.a.x)), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c, 30714i, u_input.b, 2147483647i), vec4<i32>(-10750i, -33211i, 2147483647i, u_input.a.x)) >> (vec4<u32>(arg_0.c.x, 8034u, arg_0.c.x, arg_0.a.a.a) % vec4<u32>(32u)), func_2())) & (i32(-1i) * -u_input.b);
    var var_1 = Struct_2(arg_0.a.a, arg_0.a.a);
    let var_2 = vec2<bool>(true, any(var_1.a.b) || true);
    let var_3 = true;
    var var_4 = false;
    return vec2<bool>(~func_2().x >= u_input.a.x, arg_0.b.x);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = Struct_5(5374i, arg_0.b, select(func_1(Struct_4(Struct_3(Struct_1(4294967295u, arg_1.b, 999f), arg_0.c.x, vec2<bool>(false, false)), global0.xy, ~vec3<u32>(arg_1.a, arg_1.a, 33538u))), func_1(Struct_4(Struct_3(Struct_1(arg_1.a, arg_1.b, global1[_wgslsmith_index_u32(18632u, 14u)]), global0.x, vec2<bool>(arg_1.b.x, global0.x)), vec2<bool>(arg_0.c.x, global0.x), vec3<u32>(arg_1.a, 4294967295u, arg_1.a) | vec3<u32>(arg_1.a, 1u, 0u))), true));
    var var_1 = Struct_3(Struct_1(arg_1.a >> (0u % 32u), vec2<bool>(false, true), _wgslsmith_f_op_f32(step(-713f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * 1203f) * -877f)))), all(select(vec4<bool>(true, global0.x, true, all(vec3<bool>(arg_1.b.x, false, arg_0.c.x))), vec4<bool>(func_1(Struct_4(Struct_3(arg_1, true, var_0.c), arg_1.b, vec3<u32>(10245u, arg_1.a, 88293u))).x, arg_1.b.x, -1296f <= arg_1.c, !var_0.c.x), any(vec3<bool>(var_0.c.x, global0.x, global0.x)))), func_1(Struct_4(Struct_3(Struct_1(79375u, vec2<bool>(arg_0.c.x, var_0.c.x), global2.x), arg_0.c.x, select(arg_0.c, arg_1.b, arg_0.c.x)), !select(arg_0.c, var_0.c, vec2<bool>(true, var_0.c.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a, 12508u, 137567u), vec3<u32>(12424u, arg_1.a, arg_1.a), vec3<u32>(0u, arg_1.a, arg_1.a)))));
    let var_2 = arg_1.b.x;
    var var_3 = arg_0;
    let var_4 = -364f < var_1.a.c;
    return select(func_1(Struct_4(Struct_3(var_1.a, all(global0.xy), select(vec2<bool>(var_1.b, var_1.c.x), vec2<bool>(false, var_3.c.x), vec2<bool>(true, var_2))), vec2<bool>(any(vec4<bool>(var_2, arg_1.b.x, var_3.c.x, arg_0.c.x)), var_2 & var_2), ~select(vec3<u32>(1u, 33795u, 26371u), vec3<u32>(1u, 23026u, 0u), true))), var_3.c, !func_1(Struct_4(Struct_3(Struct_1(16071u, arg_0.c, 1094f), var_4, vec2<bool>(true, true)), vec2<bool>(arg_1.b.x, false), vec3<u32>(1u, 1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global1 = array<f32, 14>();
    var_0 = _wgslsmith_add_u32(65828u, _wgslsmith_mult_u32(52021u, 26150u >> (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(75121u, 1u, 4294967295u, 4294967295u), vec4<u32>(8084u, 1u, 4294967295u, 1u))) % 32u)));
    var var_1 = func_4(Struct_5(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -326f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(57567u, 14u)] + -1651f) + 1784f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1727f)), global1[_wgslsmith_index_u32(0u, 14u)]), select(!global0.zx, !func_1(Struct_4(Struct_3(Struct_1(33703u, global0.xz, -927f), global0.x, global0.zx), global0.yz, vec3<u32>(0u, 7402u, 3058u))), func_1(Struct_4(Struct_3(Struct_1(8793u, vec2<bool>(global0.x, global0.x), 1711f), global0.x, vec2<bool>(true, global0.x)), vec2<bool>(global0.x, global0.x), vec3<u32>(64353u, 4294967295u, 30762u))))), Struct_1(0u, !select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), vec2<bool>(global0.x, true)), _wgslsmith_f_op_f32(step(1273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-761f - global2.x) + _wgslsmith_f_op_f32(abs(-1748f)))))));
    var var_2 = Struct_2(Struct_1(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(56720u, 0u, 54749u), vec3<u32>(14783u, 1u, 36329u), vec3<bool>(true, true, var_1.x)), ~vec3<u32>(1u, 2671u, 4294967295u)), !global0.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 14u)])) + 229f) - 560f)), Struct_1(40840u, func_1(Struct_4(Struct_3(Struct_1(0u, vec2<bool>(false, global0.x), global2.x), var_1.x, vec2<bool>(var_1.x, true)), func_1(Struct_4(Struct_3(Struct_1(1u, global0.yz, global1[_wgslsmith_index_u32(1u, 14u)]), false, global0.zx), global0.xz, vec3<u32>(11675u, 27565u, 1u))), ~vec3<u32>(66384u, 31868u, 6398u))), _wgslsmith_f_op_f32(1761f * global1[_wgslsmith_index_u32(0u, 14u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.c, global1[_wgslsmith_index_u32(var_2.a.a, 14u)], 886f, global2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 14u)], -250f, -1000f, var_2.a.c)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(var_2.a.a, 14u)], global2.x, var_2.a.c, -729f), vec4<f32>(global2.x, 768f, global1[_wgslsmith_index_u32(var_2.a.a, 14u)], global1[_wgslsmith_index_u32(79208u, 14u)]))))), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.a.a, 14u)]), _wgslsmith_f_op_f32(max(global2.x, -583f)), _wgslsmith_f_op_f32(-423f - var_2.a.c), global1[_wgslsmith_index_u32(max(var_2.a.a, var_2.a.a), 14u)])))));
}

