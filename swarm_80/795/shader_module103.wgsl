struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(2980f, 792f, -909f), vec3<f32>(-687f, -835f, -1208f), vec3<f32>(641f, 781f, 970f), vec3<f32>(1352f, 131f, -966f), vec3<f32>(-888f, 402f, 217f), vec3<f32>(936f, -1000f, -1257f), vec3<f32>(477f, -405f, 1024f), vec3<f32>(-1124f, 1000f, -536f), vec3<f32>(1642f, 1146f, -1740f));

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(2147483647i, true, vec4<i32>(24076i, i32(-2147483648), 1i, 55451i), vec2<i32>(-11576i, 782i));

var<private> global3: array<bool, 28> = array<bool, 28>(false, false, true, true, false, true, false, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, true, true, true);

var<private> global4: array<Struct_1, 16>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>) -> bool {
    let var_0 = 0u;
    let var_1 = Struct_4(vec4<i32>(_wgslsmith_div_i32(abs(-u_input.b.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.x, 2147483647i, 1i, 18333i), vec4<i32>(1i, u_input.b.x, 1298i, 0i))), ~global2.a, -13630i, countOneBits(-u_input.b.x)), vec3<i32>(1i, global2.c.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -34292i, -1i), ~global2.c.zxx & vec3<i32>(-26468i, -41454i, 8255i))), ~66304u <= ~(_wgslsmith_dot_vec4_u32(vec4<u32>(49245u, var_0, arg_0.x, var_0), vec4<u32>(4294967295u, arg_0.x, 4294967295u, arg_0.x)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0, 1u, u_input.a), vec4<u32>(1u, 0u, arg_0.x, u_input.a))), firstLeadingBit(arg_0 | ~arg_0));
    var var_2 = !vec3<bool>(global2.b, var_1.c, global2.b);
    global3 = array<bool, 28>();
    global4 = array<Struct_1, 16>();
    return var_1.c;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    global1 = select(all(select(select(vec2<bool>(true, true), !vec2<bool>(arg_1.b.b, false), u_input.a > u_input.a), vec2<bool>(true, arg_1.b.b), !vec2<bool>(arg_2.a.b.b, arg_2.a.b.b))), true, arg_0);
    var var_0 = global2.a;
    let var_1 = arg_2;
    var var_2 = Struct_1(max(0i, -2147483647i), true, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(6459i, global2.c.x, arg_2.a.b.c.x), vec3<i32>(-4524i, arg_1.b.d.x, -26556i)), ~arg_2.c), -vec2<i32>(73727i, u_input.b.x)), _wgslsmith_add_i32(arg_2.c << (2080u % 32u), 1i), var_1.c, arg_1.b.d.x), arg_1.b.c.yz);
    let var_3 = Struct_3(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), reverseBits(firstTrailingBit(-arg_2.a.b.c.x)));
    return -arg_1.b.a;
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = arg_0.b;
    let var_1 = Struct_3(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f) + -320f)), -func_4(!func_3(vec3<u32>(u_input.a, u_input.a, u_input.a), arg_0.d), arg_0, Struct_3(Struct_2(vec2<f32>(1016f, -1000f), Struct_1(-21806i, arg_0.b.b, arg_0.b.c, arg_0.b.d), arg_0.a, vec4<f32>(arg_0.a.x, arg_0.a.x, 110f, arg_0.c.x)), -1857f, i32(-1i) * -2147483647i)));
    let var_2 = true;
    global1 = (4294967295u & u_input.a) >= min(~39833u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) << (1u % 32u));
    global4 = array<Struct_1, 16>();
    return firstLeadingBit(~firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(63388u, 1u)), ~u_input.a, max(u_input.a, u_input.a), u_input.a)));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(~38828u, min(0u, 24181u)), ~(~vec2<u32>(15833u, 0u))) >> (~(~max(0u, u_input.a)) % 32u));
    var var_1 = global2.b;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(776f + -358f), global2.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) - -522f)), _wgslsmith_f_op_f32(step(-1291f, _wgslsmith_f_op_f32(-1551f + -1300f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(-1278f, -301f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f + -662f)), _wgslsmith_f_op_f32(f32(-1f) * -414f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-163f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2511f * 1000f)), -426f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-638f, 1260f, -901f, 1177f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-876f, 1074f, -852f, 169f), vec4<f32>(1166f, 674f, 510f, 385f)))))));
    var var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(~(~14447u), _wgslsmith_dot_vec4_u32(firstTrailingBit(func_2(Struct_2(vec2<f32>(var_2.x, var_2.x), Struct_1(u_input.b.x, global2.b, vec4<i32>(39908i, 1i, u_input.b.x, 2258i), vec2<i32>(2147483647i, u_input.b.x)), var_2.zy, vec4<f32>(var_2.x, -2810f, var_2.x, var_2.x)))), vec4<u32>(u_input.a, var_0 & var_0, ~1u, 4294967295u)), u_input.a), firstTrailingBit(~(~vec3<u32>(4294967295u, 0u, 557u))) >> (vec3<u32>(var_0, 20739u, var_0) % vec3<u32>(32u)));
    var var_4 = var_2.x;
    return Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.zz - vec2<f32>(var_2.x, 1829f))), Struct_1(u_input.b.x, all(!vec4<bool>(false, global3[_wgslsmith_index_u32(var_3.x, 28u)], global3[_wgslsmith_index_u32(var_3.x, 28u)], true)), countOneBits(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 3474i, -13906i))), firstLeadingBit(~global2.d)), var_2.wx, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(179f + var_2.x), _wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(step(-1919f, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 219f, var_2.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-129f))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(63962u, 16u)];
    global0 = array<vec3<f32>, 9>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f) * _wgslsmith_f_op_f32(f32(-1f) * -826f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1466f - 315f)), 1144f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1000f, -482f, any(vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.a, 28u)], true)))))));
    global4 = array<Struct_1, 16>();
    let var_2 = var_1.x;
    global4 = array<Struct_1, 16>();
    let var_3 = func_1();
    let var_4 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(var_3.c, -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-20715i, var_0.c.x), global2.c.yz)), func_1().a.b.c.zy), vec2<i32>(var_0.a, 15769i));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.d, u_input.a, ~(~select(func_2(Struct_2(vec2<f32>(-498f, var_5.a.c.x), var_5.a.b, var_1.xz, var_3.a.d)).zwy, ~vec3<u32>(u_input.a, u_input.a, u_input.a), global2.b)));
}

