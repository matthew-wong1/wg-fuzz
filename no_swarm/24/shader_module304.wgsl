struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(9693u, 34705u, 30605u, 43455u), Struct_1(vec3<f32>(1027f, 1000f, 274f), true, vec3<i32>(-10635i, 2147483647i, -1i)), vec3<f32>(-229f, -200f, 416f));

var<private> global1: array<f32, 29> = array<f32, 29>(-1493f, -367f, -782f, 1232f, -768f, -849f, -444f, -258f, 172f, -895f, -1758f, -974f, -544f, -1000f, 243f, -2119f, -551f, -1435f, 300f, 1316f, 258f, 847f, -1000f, 1000f, 1000f, 866f, -620f, 621f, 1522f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global0 = Struct_2(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(global0.c - vec3<f32>(_wgslsmith_div_f32(-507f, -281f), 1447f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c.x)) - 700f))));
    let var_0 = min(global0.b.c.zz, -abs(global0.b.c.xy));
    global1 = array<f32, 29>();
    var var_1 = ~vec3<u32>(~(~(~36061u)), ~u_input.c.x >> (1u % 32u), firstTrailingBit(u_input.c.x | 44431u));
    var_1 = global0.a.zxz;
    return 0u;
}

fn func_4(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = u_input.c.zx;
    global1 = array<f32, 29>();
    var var_1 = abs(u_input.b);
    global1 = array<f32, 29>();
    var_1 = global0.b.c.x;
    return -1i;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(arg_0.b.c.x, func_4(select(func_3(), max(arg_0.a.x, global0.a.x), false), countOneBits(4294967295u) > _wgslsmith_dot_vec4_u32(vec4<u32>(1292u, arg_0.a.x, 0u, arg_0.a.x), global0.a))), 33312i, ~(-(~arg_0.b.c.x)));
    var var_1 = Struct_3(~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.a.x, 32834u), ~global0.a.x), 0u, arg_0.a.x, global0.a.x), global0.c, 0i, arg_0);
    return var_1.d.b.b;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = !vec4<bool>(true, global0.b.b, true, global0.b.b);
    var var_1 = _wgslsmith_f_op_f32(697f - 364f);
    var_0 = select(select(vec4<bool>(true, !(!global0.b.b), true, true), !vec4<bool>(true, true, var_0.x, false), vec4<bool>(global0.b.b, global0.b.b, func_2(Struct_2(global0.a, Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], 1000f, global0.b.a.x), false, global0.b.c), global0.b.a), var_0.zx), false)), !select(select(!vec4<bool>(true, global0.b.b, false, false), !vec4<bool>(global0.b.b, true, false, global0.b.b), global1[_wgslsmith_index_u32(90442u, 29u)] != -742f), vec4<bool>(true, true, global0.b.b, var_0.x), vec4<bool>(true, !var_0.x, false, var_0.x)), all(!select(var_0.yw, vec2<bool>(global0.b.b, true), !vec2<bool>(global0.b.b, global0.b.b))));
    let var_2 = var_0.xzy;
    let var_3 = global0.b;
    return Struct_3(global0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1327f)), -205f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -344f)), var_3.c.x, Struct_2(~(~(vec4<u32>(19457u, global0.a.x, 1812u, arg_0) & vec4<u32>(11283u, global0.a.x, global0.a.x, arg_0))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-631f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], global1[_wgslsmith_index_u32(arg_0, 29u)]))) * global0.c), var_3.b, select(_wgslsmith_mult_vec3_i32(var_3.c, var_3.c), ~vec3<i32>(var_3.c.x, -30778i, -1i), global0.b.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-647f, var_3.a.x)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 29u)] + var_3.a.x), var_3.a.x))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: f32) -> bool {
    let var_0 = 45848u | _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.a.x, 1u, 4294967295u, 71195u), vec4<u32>(1u, 0u, 11288u, 0u)), _wgslsmith_add_u32(u_input.c.x | u_input.c.x, firstLeadingBit(u_input.c.x)), 1u), ~(~vec3<u32>(42539u, u_input.c.x, global0.a.x)));
    var var_1 = func_1(4294967295u, (abs(vec2<i32>(u_input.b, global0.b.c.x) & global0.b.c.xx) ^ ~vec2<i32>(arg_0.c, -25679i)) & -vec2<i32>(func_1(21973u, arg_0.d.b.c.zy).c, arg_1.x));
    return arg_0.d.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.c))))) * global0.c));
    var var_0 = select(any(select(vec3<bool>(true, false, false), select(vec3<bool>(false, global0.b.b, true), vec3<bool>(true, global0.b.b, global0.b.b), global0.b.b & global0.b.b), true)), true && !func_5(func_1(global0.a.x, vec2<i32>(global0.b.c.x, u_input.b)), global0.b.c.yx, _wgslsmith_f_op_f32(-342f + 893f)), !global0.b.b);
    global1 = array<f32, 29>();
    var_0 = global0.b.b;
    var var_1 = ~(~abs(vec2<u32>(global0.a.x << (global0.a.x % 32u), 0u & global0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.c.x, abs(vec4<i32>(-1i) * -vec4<i32>(-13481i, 1i, -5673i, global0.b.c.x)), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(23572u, 17397u), u_input.c.x)), 29u)], 1u, -1i);
}

