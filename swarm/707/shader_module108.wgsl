struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-2388f, 866f), vec2<u32>(5398u, 1u), true, false), i32(-2147483648), Struct_1(vec2<f32>(-1275f, 882f), vec2<u32>(56182u, 57464u), true, true), Struct_1(vec2<f32>(1000f, 348f), vec2<u32>(1u, 1u), true, false), -150f);

var<private> global1: vec4<u32>;

var<private> global2: array<i32, 20>;

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<f32>(-1186f, -497f), vec2<u32>(0u, 4294967295u), true, false), i32(-2147483648), Struct_1(vec2<f32>(-200f, 317f), vec2<u32>(4294967295u, 33757u), true, true), Struct_1(vec2<f32>(526f, 1562f), vec2<u32>(104854u, 58286u), false, false), -868f), Struct_2(Struct_1(vec2<f32>(314f, -729f), vec2<u32>(0u, 0u), false, true), -33748i, Struct_1(vec2<f32>(660f, 387f), vec2<u32>(86921u, 34221u), true, true), Struct_1(vec2<f32>(-488f, -1162f), vec2<u32>(87294u, 30468u), true, true), 242f), Struct_2(Struct_1(vec2<f32>(606f, -218f), vec2<u32>(25993u, 10632u), true, false), 27073i, Struct_1(vec2<f32>(1000f, -294f), vec2<u32>(0u, 1u), false, true), Struct_1(vec2<f32>(-765f, -899f), vec2<u32>(14521u, 0u), true, true), 390f), Struct_2(Struct_1(vec2<f32>(-524f, -606f), vec2<u32>(36315u, 1092u), false, true), -37465i, Struct_1(vec2<f32>(770f, -1356f), vec2<u32>(4294967295u, 0u), true, true), Struct_1(vec2<f32>(-201f, -164f), vec2<u32>(0u, 28715u), false, false), 1000f), Struct_2(Struct_1(vec2<f32>(916f, 1180f), vec2<u32>(0u, 30878u), true, true), 1i, Struct_1(vec2<f32>(510f, -716f), vec2<u32>(1u, 4294967295u), false, true), Struct_1(vec2<f32>(1937f, -256f), vec2<u32>(16722u, 0u), true, true), -881f), Struct_2(Struct_1(vec2<f32>(-2524f, 243f), vec2<u32>(4294967295u, 1u), true, true), -1i, Struct_1(vec2<f32>(-447f, 1137f), vec2<u32>(4294967295u, 1u), true, false), Struct_1(vec2<f32>(-620f, -1679f), vec2<u32>(4294967295u, 2285u), false, false), 1000f), Struct_2(Struct_1(vec2<f32>(279f, -981f), vec2<u32>(15369u, 4294967295u), true, true), 52777i, Struct_1(vec2<f32>(-1000f, -705f), vec2<u32>(4294967295u, 5925u), false, true), Struct_1(vec2<f32>(-1301f, -801f), vec2<u32>(49433u, 4294967295u), false, false), 1886f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> u32 {
    global0 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(~1u, ~u_input.a), 7u)];
    global0 = global3[_wgslsmith_index_u32(global1.x, 7u)];
    let var_0 = global1.x;
    let var_1 = global1.wy;
    global2 = array<i32, 20>();
    return ~(~(~global0.c.b.x));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<f32> {
    global2 = array<i32, 20>();
    let var_0 = arg_1.b.x << (global1.x % 32u);
    global1 = _wgslsmith_mod_vec4_u32(select(firstLeadingBit(max(~vec4<u32>(4294967295u, var_0, 0u, global1.x), abs(vec4<u32>(u_input.a, global1.x, 81807u, u_input.a)))), vec4<u32>(arg_1.b.x, 83146u, firstTrailingBit(~55518u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, u_input.a), global1.yy | arg_1.b)), vec4<bool>(_wgslsmith_f_op_f32(exp2(arg_0.x)) > _wgslsmith_f_op_f32(trunc(arg_0.x)), global1.x > ~41976u, !all(vec4<bool>(arg_1.c, global0.c.d, false, global0.a.c)), true)), ~(~(~abs(vec4<u32>(global0.c.b.x, var_0, arg_1.b.x, arg_1.b.x)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -135f));
    let var_2 = Struct_2(global0.a, u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-328f, arg_0.x), -2224f) + vec2<f32>(-216f, _wgslsmith_f_op_f32(exp2(arg_1.a.x)))), abs(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.b.x, 33176u), vec2<u32>(0u, 1u))), all(!select(vec3<bool>(global0.d.c, false, global0.a.c), vec3<bool>(global0.a.d, false, arg_1.c), arg_1.d)), global0.c.c), arg_1, -826f);
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -519f))))), arg_0.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(func_2(), 7u)];
    var var_1 = arg_2;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(_wgslsmith_div_f32(-195f, var_1.d.a.x), arg_2.d.a.x, _wgslsmith_f_op_f32(max(var_0.e, arg_2.c.a.x))), global0.d)), abs(vec2<u32>(abs(4294967295u), ~52887u)), var_1.d.c, false), global0.b, var_0.a, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.x * global0.c.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-998f * arg_2.a.a.x)))));
    var_0 = var_2;
    let var_3 = vec4<i32>(var_1.b, _wgslsmith_sub_i32(var_0.b, var_1.b), -3972i, min(_wgslsmith_add_i32(global0.b, min(_wgslsmith_add_i32(-2147483647i, global2[_wgslsmith_index_u32(var_2.c.b.x, 20u)]), 69478i)), -1i));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f - 208f)), -352f) * var_0.a.a), global1.xy, var_2.a.d && (-1i > _wgslsmith_div_i32(-19168i, var_1.b)), true);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = min(abs(global2[_wgslsmith_index_u32(func_1(vec3<u32>(firstTrailingBit(u_input.a), countOneBits(64039u), func_1(vec3<u32>(1u, 32180u, 24531u), arg_2, Struct_2(Struct_1(vec2<f32>(global0.d.a.x, arg_2.a.x), arg_2.b, global0.a.c, true), 1i, Struct_1(arg_1, vec2<u32>(4294967295u, 0u), false, true), arg_2, -360f)).b.x), global0.d, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global0.c.b.x, u_input.a, global1.x), reverseBits(vec4<u32>(u_input.a, arg_2.b.x, 4294967295u, 13208u))), 7u)]).b.x, 20u)]), 2147483647i);
    global2 = array<i32, 20>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d.a * _wgslsmith_f_op_vec2_f32(-arg_1))), abs(~vec2<u32>(u_input.a, 20847u)), !func_1(global1.yyw, global0.a, Struct_2(Struct_1(arg_2.a, global0.a.b, global0.c.c, arg_2.d), 24699i, Struct_1(vec2<f32>(150f, arg_1.x), arg_2.b, false, global0.c.c), global0.c, -371f)).d, ~var_0 <= ~0i), arg_0, func_1(~(~global1.zxw), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(global0.e, global0.d.a.x)), global0.d.a.x), vec2<u32>(4294967295u, firstLeadingBit(1046u)), false, arg_2.d), Struct_2(global0.d, 2147483647i, global0.a, Struct_1(vec2<f32>(148f, -1807f), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, 1u), vec2<u32>(arg_2.b.x, 1u)), all(vec4<bool>(global0.d.c, true, arg_2.d, true)), global0.e < -436f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(281f))))), global0.d, global0.e);
    global1 = abs(vec4<u32>(var_1.d.b.x, global0.a.b.x, u_input.a, 0u));
    let var_2 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(83349u, ~4294967295u, _wgslsmith_dot_vec2_u32(global1.wz, global0.c.b), global1.x)), vec4<u32>(arg_2.b.x, global0.d.b.x, ~min(4404u, arg_2.b.x), _wgslsmith_div_u32(select(28219u, var_1.a.b.x, false), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 0u, u_input.a, 7508u), vec4<u32>(u_input.a, 71701u, 4649u, global1.x)))))), 7u)];
    return vec3<bool>(all(vec4<bool>(any(!vec2<bool>(true, var_2.c.c)), _wgslsmith_f_op_f32(abs(var_1.c.a.x)) == _wgslsmith_f_op_f32(var_2.c.a.x - var_2.d.a.x), !any(vec4<bool>(false, arg_2.d, arg_2.d, true)), true)), var_2.d.d | any(select(!vec2<bool>(arg_2.c, true), !vec2<bool>(var_1.d.d, arg_2.d), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1f)) >= arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(false, !any(vec4<bool>(global0.c.d, false, false, true)), all(vec3<bool>(true, false, global0.a.d)) || any(vec4<bool>(true, true, global0.d.c, false))), vec3<bool>(global0.d.c, !(_wgslsmith_f_op_f32(f32(-1f) * -745f) < global0.c.a.x), true), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, global0.d.d, true), vec3<bool>(true, false, global0.a.d), vec3<bool>(global0.c.c, global0.a.c, global0.c.d)), vec3<bool>(global0.a.c, global0.a.d, !global0.a.d)), !func_4(-24229i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e, -345f)), func_1(vec3<u32>(1u, u_input.a, 4294967295u), global0.d, Struct_2(Struct_1(vec2<f32>(-869f, -552f), vec2<u32>(4294967295u, u_input.a), true, global0.a.c), 13660i, Struct_1(vec2<f32>(1413f, global0.c.a.x), global0.c.b, false, true), global0.a, -512f))), true));
    var var_1 = Struct_2(func_1(~global1.xzz, func_1(_wgslsmith_mod_vec3_u32(global1.wxy, global1.wxz), global0.c, global3[_wgslsmith_index_u32(global1.x, 7u)]), global3[_wgslsmith_index_u32(func_2(), 7u)]), select(~_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(global1.x, 20u)], u_input.b, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, global2[_wgslsmith_index_u32(0u, 20u)]), vec3<i32>(0i, u_input.b, global0.b))), _wgslsmith_mod_i32(u_input.b, ~max(u_input.b, global0.b)), true), global0.c, func_1(~vec3<u32>(func_2(), ~45036u, global1.x), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.d.a))), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), global1.wx), all(select(var_0.yx, vec2<bool>(var_0.x, global0.c.c), vec2<bool>(false, false))), true), global3[_wgslsmith_index_u32(u_input.a, 7u)]), -523f);
    var var_2 = Struct_2(Struct_1(var_1.a.a, global1.xz, !var_0.x, func_1(~vec3<u32>(4294967295u, global0.c.b.x, var_1.a.b.x), Struct_1(global0.d.a, global0.a.b, global0.c.d, global0.a.d), Struct_2(global0.a, global2[_wgslsmith_index_u32(81673u, 20u)], global0.d, var_1.c, -347f)).a.x > var_1.c.a.x), _wgslsmith_dot_vec2_i32(-select(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b, -40570i), vec2<i32>(-43307i, 0i), vec2<i32>(19058i, var_1.b)), vec2<i32>(-47650i, global0.b) | vec2<i32>(global2[_wgslsmith_index_u32(global1.x, 20u)], var_1.b), func_1(global1.zwy, Struct_1(var_1.a.a, vec2<u32>(0u, global1.x), false, true), Struct_2(Struct_1(var_1.d.a, vec2<u32>(global0.d.b.x, u_input.a), true, true), 628i, var_1.d, Struct_1(vec2<f32>(676f, global0.e), vec2<u32>(0u, 70190u), var_0.x, false), global0.c.a.x)).c), vec2<i32>(1i, var_1.b)), func_1(abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0.c.b.x, global0.a.b.x), vec3<u32>(var_1.c.b.x, 0u, global1.x))), var_1.a, Struct_2(global0.d, -reverseBits(0i), global0.d, func_1(~global1.wxx, Struct_1(global0.a.a, global1.xy, true, var_0.x), global3[_wgslsmith_index_u32(func_2(), 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.a.x * -437f)))), global0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1160f), -462f)))));
    var var_3 = Struct_2(func_1(vec3<u32>(u_input.a, 1u, func_2()), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1916f, 821f)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, var_1.d.b.x), var_1.a.b), _wgslsmith_sub_vec2_u32(var_2.d.b, vec2<u32>(1u, 82085u))), var_2.c.d, any(vec4<bool>(var_0.x, var_0.x, true, var_1.c.c))), Struct_2(Struct_1(vec2<f32>(-1525f, global0.d.a.x), max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(var_1.a.b.x, var_1.d.b.x)), !global0.a.c, false), _wgslsmith_mult_i32(-10381i, var_1.b), func_1(global1.yzy, var_2.a, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d.b.x, global1.x, global0.c.b.x), vec3<u32>(var_1.c.b.x, 93264u, var_2.c.b.x)), 7u)]), func_1(vec3<u32>(4294967295u, 19708u, global1.x) >> (global1.xxy % vec3<u32>(32u)), Struct_1(var_1.c.a, vec2<u32>(34578u, global0.c.b.x), false, false), global3[_wgslsmith_index_u32(~1u, 7u)]), 195f)), u_input.b, func_1(_wgslsmith_sub_vec3_u32(~global1.zyw, global1.xzw), Struct_1(vec2<f32>(-864f, 318f), vec2<u32>(0u, var_2.c.b.x) & _wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, var_1.a.b.x), var_1.c.b), true, !(332f <= global0.a.a.x)), global3[_wgslsmith_index_u32(82443u, 7u)]), func_1(~select(~global1.ywz, global1.xxw, true), global0.d, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.d.a), var_2.d.b, true, true), var_1.b, Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.d.a), _wgslsmith_div_vec2_u32(global0.d.b, vec2<u32>(global1.x, 1u)), func_4(-2147483647i, var_1.c.a, Struct_1(var_2.c.a, vec2<u32>(22463u, var_2.a.b.x), false, var_0.x)).x, select(false, false, false)), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(-142f, -484f, 3235f), Struct_1(global0.d.a, global1.wx, var_1.d.d, var_1.d.d))), vec2<u32>(var_1.a.b.x, 1u), var_0.x, true), -230f)), _wgslsmith_f_op_f32(f32(-1f) * -615f));
    global2 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(var_3.b), -18829i), -vec2<i32>(var_2.b, min(min(u_input.b, -224i), ~global0.b)), ~(~(~select(43475u, u_input.a, true))));
}

