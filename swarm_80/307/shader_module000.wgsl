struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: Struct_4 = Struct_4(Struct_3(Struct_2(vec3<u32>(4294967295u, 0u, 80909u), false), vec3<f32>(737f, -558f, -1228f), Struct_1(vec3<u32>(5797u, 4294967295u, 67581u), 38399u, vec3<f32>(1000f, 1349f, 1121f)), vec4<bool>(true, false, true, false), Struct_1(vec3<u32>(4294967295u, 1u, 1u), 68393u, vec3<f32>(-549f, 1056f, -2209f))));

var<private> global3: array<Struct_3, 16>;

var<private> global4: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<u32>(30093u, 63180u, 1u), 20979u, vec3<f32>(-1469f, -1366f, 209f)), Struct_1(vec3<u32>(4294967295u, 29195u, 0u), 0u, vec3<f32>(1153f, -1096f, -855f)), Struct_1(vec3<u32>(21703u, 0u, 50848u), 1u, vec3<f32>(-1061f, 203f, 660f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec4<f32>) -> i32 {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a, 3156i);
    global0 = global4[_wgslsmith_index_u32(countOneBits(firstTrailingBit(_wgslsmith_add_u32(abs(firstLeadingBit(28023u)), 0u))), 3u)];
    let var_1 = Struct_3(global2.a.a, _wgslsmith_f_op_vec3_f32(-arg_0), global4[_wgslsmith_index_u32(~global2.a.c.b, 3u)], global2.a.d, global2.a.e);
    let var_2 = 46154u;
    var var_3 = !vec3<bool>(!global2.a.a.b, true, (_wgslsmith_f_op_f32(global0.c.x + global0.c.x) == global2.a.e.c.x) | var_1.d.x);
    return _wgslsmith_add_i32(33181i, -1i);
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = select(!(!global2.a.d.yyw), vec3<bool>(all(global2.a.d.yw), true, global2.a.a.b), any(global2.a.d.wy));
    let var_1 = -_wgslsmith_div_i32(firstLeadingBit(~(u_input.a ^ u_input.a)), u_input.a);
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c * vec3<f32>(global0.c.x, global0.c.x, global0.c.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), global2.a.b.x, global2.a.e.c.x, global0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(171f, global0.c.x, 915f, global0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-827f, global0.c.x, -241f, global2.a.c.c.x), vec4<f32>(810f, global2.a.b.x, -573f, global2.a.b.x))), !select(global2.a.d, global2.a.d, false)))));
    var var_3 = u_input.b.x & ~1u;
    var var_4 = Struct_4(Struct_3(Struct_2(global0.a, global2.a.a.b), vec3<f32>(global0.c.x, -846f, _wgslsmith_f_op_f32(-global0.c.x)), Struct_1(arg_0, ~(~4294967295u), _wgslsmith_div_vec3_f32(vec3<f32>(global2.a.b.x, 1000f, global0.c.x), vec3<f32>(global0.c.x, global2.a.e.c.x, 175f))), !(!select(global2.a.d, vec4<bool>(true, var_0.x, true, false), var_0.x)), Struct_1(~vec3<u32>(3064u, 11455u, 4294967295u), arg_0.x, _wgslsmith_f_op_vec3_f32(-global0.c))));
    return Struct_4(var_4.a);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: f32) -> vec3<u32> {
    let var_0 = vec2<u32>(select(arg_0.b, firstLeadingBit(1u), !((global2.a.e.c.x == global0.c.x) | arg_2.a.a.b)), _wgslsmith_div_u32(firstTrailingBit(~global2.a.e.b << (u_input.b.x % 32u)), _wgslsmith_sub_u32(global0.a.x, u_input.b.x)));
    var var_1 = func_1(vec3<u32>(_wgslsmith_sub_u32(4294967295u, var_0.x), global0.b, arg_0.b)).a.c;
    global3 = array<Struct_3, 16>();
    var var_2 = !(!(!(!func_1(global2.a.e.a).a.d.ww)));
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(~(~arg_0.a.x), 25969u), 10756u, ~min(~14097u, 0u)), _wgslsmith_dot_vec2_u32(global2.a.c.a.xy, _wgslsmith_add_vec2_u32(var_1.a.zy, vec2<u32>(~1u, var_1.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_2.a.b.x, 517f)), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(arg_0.c.x + global0.c.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(global0.c)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, 503f, arg_2.a.b.x), vec3<f32>(285f, arg_2.a.b.x, 884f), global2.a.a.b))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a.b))));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a.x, 22570u) >> (vec2<u32>(4294967295u, var_1.b) % vec2<u32>(32u)), abs(var_0) << ((vec2<u32>(66740u, 4294967295u) & vec2<u32>(global2.a.a.a.x, 18135u)) % vec2<u32>(32u))), abs(_wgslsmith_mod_u32(33591u, 48875u)), global0.b), ~global0.a & _wgslsmith_mult_vec3_u32(vec3<u32>(58859u >> (arg_0.b % 32u), ~0u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.x, 0u, global0.a.x), vec3<u32>(arg_0.a.x, var_1.a.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.e;
    global2 = func_1(countOneBits(~select(u_input.b.wyy, vec3<u32>(1u, var_0.b, 5092u), all(global2.a.d.zzw))));
    global1 = !(~u_input.b.x < global0.a.x);
    var var_1 = func_1(~func_3(Struct_1(global0.a, global2.a.e.b, vec3<f32>(551f, -2313f, var_0.c.x)), vec3<i32>(u_input.a, -1i, u_input.a), Struct_5(global2.a, global0.a.yz, vec3<bool>(global2.a.a.b, false, true)), -1367f) & ~u_input.b.zzy).a.d.zwy;
    global1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-852f + 133f))) == global0.c.x);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global2.a.c.c.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-940f)) * _wgslsmith_f_op_f32(-global0.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - global0.c.x)) - 482f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-827f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.e.c.x * var_0.c.x)))));
    var var_3 = -831f;
    let x = u_input.a;
    s_output = StorageBuffer(56636u, _wgslsmith_div_f32(-1173f, 1164f), func_1(func_1(global0.a).a.a.a).a.c.c.x);
}

