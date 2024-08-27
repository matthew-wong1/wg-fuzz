struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(-40177i, vec2<f32>(1785f, -936f), vec4<bool>(false, true, false, true)), 1547f, vec3<bool>(true, false, true), Struct_1(-18272i, vec2<f32>(528f, -1325f), vec4<bool>(false, true, true, true))), Struct_2(Struct_1(1i, vec2<f32>(-809f, 1000f), vec4<bool>(false, true, true, false)), -1507f, vec3<bool>(false, false, true), Struct_1(-57110i, vec2<f32>(-2561f, -837f), vec4<bool>(false, true, true, true))), Struct_2(Struct_1(17255i, vec2<f32>(-399f, -292f), vec4<bool>(false, false, true, true)), 1310f, vec3<bool>(true, false, true), Struct_1(-44706i, vec2<f32>(107f, -1404f), vec4<bool>(false, true, true, true))));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 12u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.x)));
    global1 = global0[_wgslsmith_index_u32(6590u, 12u)];
    global2 = array<Struct_2, 3>();
    let var_2 = _wgslsmith_f_op_f32(-var_1) >= _wgslsmith_f_op_f32(floor(-409f));
    return vec3<i32>(_wgslsmith_div_i32(abs(0i), 2147483647i), 1i, -_wgslsmith_mult_i32(var_0.a, -1i));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = firstTrailingBit(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(func_3(-1000f), vec3<i32>(-2147483647i, arg_3.a.a, -33243i)), min(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a.a, arg_1, arg_1), vec3<i32>(-19585i, 37622i, arg_1)))) | _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1 & -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a.a, -1224i, -1481i, arg_3.d.a), vec4<i32>(arg_3.a.a, arg_3.a.a, arg_3.d.a, global1.a)), _wgslsmith_sub_i32(global1.a, arg_3.d.a)), vec3<i32>(-2147483647i, 1i, arg_3.a.a)));
    var var_1 = false;
    var var_2 = -((max(-vec4<i32>(0i, -1i, 24290i, -2147483647i), -vec4<i32>(2147483647i, 2147483647i, var_0.x, 14703i)) >> (reverseBits(vec4<u32>(0u, u_input.d.x, u_input.a.x, arg_2.x) | vec4<u32>(13062u, 1u, 76826u, arg_2.x)) % vec4<u32>(32u))) | select(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, global1.a, -2147483647i, 0i), vec4<i32>(arg_1, -37947i, var_0.x, 0i))), vec4<i32>(_wgslsmith_mod_i32(var_0.x, 4730i), arg_1 ^ 12307i, arg_1, _wgslsmith_mult_i32(-18397i, global1.a)), global1.c));
    global2 = array<Struct_2, 3>();
    global1 = Struct_1(-16615i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -619f), global1.b.x), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f)) > _wgslsmith_f_op_f32(global1.b.x - global1.b.x), !arg_3.d.c.x, all(arg_3.d.c.zzz) & false, false));
    return vec2<u32>(_wgslsmith_add_u32(arg_2.x, arg_2.x), ~abs(52371u));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_2 {
    global1 = global0[_wgslsmith_index_u32(0u, 12u)];
    global2 = array<Struct_2, 3>();
    global2 = array<Struct_2, 3>();
    var var_0 = global2[_wgslsmith_index_u32(13381u, 3u)];
    global0 = array<Struct_1, 12>();
    return arg_0;
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(global2[_wgslsmith_index_u32(86901u >> (0u % 32u), 3u)], ~(~vec2<u32>(1727u, 0u) >> ((~u_input.a >> (func_2(vec2<bool>(global1.c.x, true), 0i, vec3<u32>(u_input.c, 1u, 77503u), Struct_2(Struct_1(global1.a, global1.b, vec4<bool>(true, global1.c.x, false, global1.c.x)), 160f, global1.c.zyx, Struct_1(global1.a, vec2<f32>(-1287f, 129f), global1.c))) % vec2<u32>(32u))) % vec2<u32>(32u))));
    global0 = array<Struct_1, 12>();
    global2 = array<Struct_2, 3>();
    var var_1 = _wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1.b.x)))) - 738f)));
    global0 = array<Struct_1, 12>();
    return func_4(func_4(global2[_wgslsmith_index_u32(~u_input.a.x, 3u)], ~(~u_input.a)), vec2<u32>(_wgslsmith_add_u32(~37307u, _wgslsmith_div_u32(1u, ~u_input.c)), _wgslsmith_dot_vec2_u32(abs(u_input.a), min(reverseBits(vec2<u32>(74402u, u_input.b)), ~vec2<u32>(26634u, u_input.c)))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = func_2(!select(global1.c.xz, select(arg_2.a.c.wz, global1.c.wy, !vec2<bool>(arg_2.d.c.x, true)), vec2<bool>(false, true)), -countOneBits(global1.a & arg_3.a), ~(abs(vec3<u32>(arg_0, 4294967295u, 44900u)) << (_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a.x, 29247u, u_input.e)), _wgslsmith_mod_vec3_u32(vec3<u32>(77600u, arg_0, 16282u), vec3<u32>(14447u, 1u, 8926u))) % vec3<u32>(32u))), func_1()).x;
    let var_1 = ~25184u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b.x, 740f, -382f));
    let var_3 = func_1().a;
    let var_4 = _wgslsmith_sub_vec2_i32(func_3(_wgslsmith_f_op_f32(-710f * global1.b.x)).zz, vec2<i32>((_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, 2147483647i, -1i), vec3<i32>(global1.a, arg_3.a, arg_3.a)) >> (33520u % 32u)) & ~(i32(-1i) * -32233i), arg_3.a));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(315f)))), _wgslsmith_f_op_f32(-227f * 488f), _wgslsmith_f_op_f32(step(976f, _wgslsmith_f_op_f32(min(arg_1, 593f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), max(i32(-1i) * -1i, global1.a), _wgslsmith_div_i32(2147483647i, var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var var_1 = ~u_input.c;
    let x = u_input.a;
    s_output = func_5(768u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-233f, _wgslsmith_f_op_f32(sign(1030f)))))), func_1(), func_4(global2[_wgslsmith_index_u32(~u_input.e, 3u)], ~u_input.a).d);
}

