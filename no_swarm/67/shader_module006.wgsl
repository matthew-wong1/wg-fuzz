struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_4;

var<private> global2: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    let var_0 = global1.b;
    global2 = Struct_4(-4508i, 575f, global1.c, !(!(!global2.d)));
    let var_1 = global1.d.x;
    var var_2 = Struct_4(reverseBits(-19701i), global2.b, Struct_1(global2.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.b * _wgslsmith_f_op_f32(-global2.c.b))), ~4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(~global1.c.d, ~40459u), abs(_wgslsmith_add_u32(u_input.b, u_input.b)))), vec3<bool>(true, true, !global2.d.x));
    var_2 = Struct_4(-var_2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1340f, global2.c.b) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-486f))))))), global2.c, vec3<bool>(global1.c.a, false, var_2.d.x));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global2.c.c, _wgslsmith_sub_u32(97889u, 10344u), global2.c.d << (1639u % 32u)), ~u_input.c.xwz), ~reverseBits(u_input.c.zwy) << (vec3<u32>(1u, 4294967295u, 22606u) % vec3<u32>(32u)));
}

fn func_2() -> Struct_4 {
    let var_0 = u_input.c.x;
    global0 = -2147483647i << (min(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_add_u32(40214u, abs(global2.c.d))), var_0) % 32u);
    let var_1 = _wgslsmith_mult_vec4_u32(u_input.c, abs(vec4<u32>(global1.c.d, func_3(), u_input.b, 1216u)));
    let var_2 = 23327u ^ ((global1.c.c >> (abs(~1u) % 32u)) | max(var_1.x, 7801u));
    global1 = Struct_4(-(~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, -38949i, u_input.e, 2147483647i), vec4<i32>(global2.a, u_input.a.x, global1.a, -21210i)), 48433i)), global2.c.b, Struct_1(all(select(global1.d.xz, select(global1.d.yz, global2.d.zx, vec2<bool>(true, true)), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global2.b)), global1.b)), 0u, func_3()), global2.d);
    return Struct_4(min(global1.a, abs(_wgslsmith_dot_vec2_i32(u_input.a.wz, vec2<i32>(2147483647i, 0i)) >> (var_1.x % 32u))), _wgslsmith_f_op_f32(ceil(global1.b)), global1.c, !select(vec3<bool>(!global1.d.x, !global2.c.a, global1.c.a), select(select(vec3<bool>(false, global1.d.x, global2.c.a), vec3<bool>(global2.d.x, global1.d.x, global1.c.a), vec3<bool>(global2.c.a, global1.d.x, global2.c.a)), select(vec3<bool>(false, global1.c.a, global2.d.x), global1.d, global1.d), vec3<bool>(false, global1.d.x, true)), !global2.c.a || false));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    var var_0 = !select(select(arg_1.wz, vec2<bool>(true, false), select(select(arg_1.yx, global2.d.xy, true), vec2<bool>(false, global2.c.a), select(global2.d.zx, vec2<bool>(false, false), arg_1.yy))), arg_1.zy, vec2<bool>(_wgslsmith_dot_vec3_u32(u_input.c.ywy, u_input.c.xwx) == _wgslsmith_div_u32(4294967295u, global1.c.d), arg_1.x));
    var var_1 = global1.d.x;
    global2 = func_2();
    global1 = func_2();
    global1 = Struct_4(1i, _wgslsmith_f_op_f32(sign(1999f)), Struct_1(!all(select(vec3<bool>(false, var_0.x, true), arg_1.xww, vec3<bool>(true, arg_1.x, global2.d.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.b))), global1.c.d, firstTrailingBit(firstTrailingBit(_wgslsmith_div_u32(49945u, u_input.b)))), vec3<bool>(u_input.c.x == u_input.b, true, true));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1034f) + _wgslsmith_f_op_f32(f32(-1f) * -280f)))), _wgslsmith_f_op_f32(f32(-1f) * -874f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(global2.b > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1645f, 112f)), true, _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_i32(global2.a, global1.a), select(vec4<bool>(global1.c.a, global1.c.a, global2.d.x, false), vec4<bool>(false, true, true, false), vec4<bool>(false, global2.d.x, true, false)))) < 304f, global2.d.x != all(global2.d)));
    var var_1 = ~(~(global2.a | -45774i) >> (func_3() % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.b * -546f) - _wgslsmith_f_op_f32(global1.b * -1087f)))), _wgslsmith_f_op_f32(899f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b)))))));
    let var_3 = Struct_3(Struct_1(true, _wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1225f, -425f))))), max(~139178u, 1u) << (firstTrailingBit(~u_input.c.x) % 32u), global1.c.d), global1.a, vec3<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, u_input.a.x, -2147483647i), u_input.d), -41335i), ~(-7182i), u_input.a.x));
    global2 = Struct_4(min(reverseBits(global1.a), _wgslsmith_div_i32(_wgslsmith_div_i32(firstLeadingBit(-1i), firstTrailingBit(-4821i)), _wgslsmith_add_i32(1i, 52759i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1193f)), global1.c.b)), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.a.b)), _wgslsmith_f_op_f32(-global2.b))), _wgslsmith_sub_u32(0u, abs(var_3.a.c) & 41565u), 47255u), vec3<bool>(_wgslsmith_div_f32(_wgslsmith_div_f32(-476f, var_2.x), _wgslsmith_f_op_f32(max(108f, global2.c.b))) < var_3.a.b, !global1.c.a, false));
    var_0 = any(select(!(!select(vec4<bool>(true, true, true, var_3.a.a), vec4<bool>(global1.d.x, false, false, global1.c.a), global1.d.x)), !vec4<bool>(true, true, 4294967295u > global1.c.d, false), any(!vec4<bool>(global2.d.x, true, global2.d.x, global1.c.a)) || false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, global2.c.d, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -1544f, var_3.a.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1127f, var_3.a.b, -653f), vec3<f32>(var_2.x, var_2.x, var_3.a.b), global1.d)))))));
}

