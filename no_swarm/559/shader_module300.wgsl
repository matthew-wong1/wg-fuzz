struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-45728i, 17005i, 1i, -2147483647i) << (global1.d % vec4<u32>(32u))), vec4<i32>(countOneBits(-2147483647i), -arg_3.c, 1i, 1i)), vec4<i32>(-_wgslsmith_mod_i32(global1.e, arg_3.c), -(~arg_3.c), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, global1.e, -4430i, 8837i)), ~vec4<i32>(arg_3.c, -19778i, arg_3.c, arg_3.c)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(8158i, 41269i), 1i))), -1i, 0i, _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_add_i32(global1.e ^ -2147483647i, -1i)), 631i));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * arg_3.a.a))))) < arg_3.a.a;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = -((_wgslsmith_clamp_i32(global1.e, 1i << (1u % 32u), 1i) << (0u % 32u)) ^ _wgslsmith_mod_i32(global1.e, -2147483647i));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(479f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1354f + global1.c.x) - _wgslsmith_f_op_f32(global1.c.x - -1364f)))), firstTrailingBit(~global1.d.x), global1.c, (global1.d ^ global1.d) & select(~global1.d >> (_wgslsmith_clamp_vec4_u32(global1.d, vec4<u32>(global1.d.x, 30519u, 1u, global1.b), global1.d) % vec4<u32>(32u)), vec4<u32>(0u & global1.b, u_input.a, u_input.a, _wgslsmith_div_u32(global1.b, global1.b)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), arg_0);
    var var_1 = !select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !vec3<bool>(global1.e > -9223i, true, func_3(Struct_1(global1.c.x), global1.a, 508u, Struct_3(Struct_1(global1.c.x), vec4<u32>(global1.d.x, 0u, 1u, 0u), 8474i))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), vec3<bool>(false, false, all(vec3<bool>(false, false, true))), true));
    var var_2 = all(!(!select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), var_1.x)));
    let var_3 = _wgslsmith_mult_vec3_u32(~select(global1.d.ywx, max(vec3<u32>(global1.b, u_input.a, global1.b), ~vec3<u32>(1u, u_input.a, u_input.b)), vec3<bool>(all(var_1.zx), -2147483647i >= global1.e, false)), ~(~global1.d.wyy));
    return _wgslsmith_f_op_f32(-2202f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-435f, global1.c.x)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.a)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(abs(arg_3.c | -5703i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1034f - _wgslsmith_f_op_f32(487f - -492f))))));
    let var_1 = arg_3.a;
    var var_2 = arg_2;
    var var_3 = global1.e & -28692i;
    var_2 = var_1;
    return Struct_2(2544f, arg_3.b.x, arg_0.zy, ~abs(vec4<u32>(4294967295u, 52020u, 1u, global1.d.x) << (arg_3.b % vec4<u32>(32u))), 0i);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = select(!select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true))), vec2<bool>(true, false), select(!vec2<bool>(true, all(vec2<bool>(false, true))), select(vec2<bool>(false, true), vec2<bool>(true, true), !func_3(Struct_1(1125f), -424f, u_input.a, Struct_3(Struct_1(global1.a), arg_0.d, -40233i))), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true)));
    return Struct_2(316f, u_input.b, _wgslsmith_f_op_vec2_f32(-arg_0.c), arg_0.d, 1i);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<Struct_2, 4>();
    var var_0 = func_1(arg_3, vec3<u32>(_wgslsmith_div_u32(1u & func_1(arg_3, vec3<u32>(global1.d.x, 4294967295u, 24899u), Struct_1(global1.c.x), Struct_3(Struct_1(-1000f), vec4<u32>(arg_1.x, arg_0.d.x, 90890u, 63001u), -19963i)).b, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1u, arg_0.b, 0u), global1.d))), firstTrailingBit(0u), 4267u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-676f - arg_0.c.x))), Struct_3(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.c.x, arg_2)))), ~vec4<u32>(4294967295u, u_input.b, 1u, 54757u) >> (vec4<u32>(~arg_1.x, arg_0.b, arg_0.b, _wgslsmith_add_u32(arg_0.d.x, 1u)) % vec4<u32>(32u)), arg_0.e));
    var var_1 = var_0.e;
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(arg_0.d.yyy & vec3<u32>(arg_0.d.x >> (global1.b % 32u), 1u, 4294967295u & arg_0.d.x), ~firstLeadingBit(vec3<u32>(15583u, 46748u, 23779u))), 4u)];
    let var_2 = Struct_4(Struct_3(Struct_1(arg_3.x), select(~(vec4<u32>(u_input.a, var_0.d.x, 51233u, var_0.d.x) ^ arg_0.d), arg_0.d, vec4<bool>(true, true, true, select(true, true, false))), ~arg_0.e), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(arg_3, var_0.d.wwy, Struct_1(678f), Struct_3(Struct_1(var_0.a), var_0.d, -35515i)).c.x * func_1(vec3<f32>(1000f, arg_2, -260f), var_0.d.xwy, Struct_1(var_0.a), Struct_3(Struct_1(1094f), vec4<u32>(1u, arg_1.x, 7541u, arg_0.b), var_0.e)).a)))), Struct_3(Struct_1(var_0.a), countOneBits(vec4<u32>(arg_0.d.x, ~1u, arg_1.x, ~var_0.d.x)), select(abs(_wgslsmith_mult_i32(global1.e, var_0.e)), ~17486i, false)), ~(~(~vec4<i32>(arg_0.e, -19821i, global1.e, 33991i))) >> (countOneBits(~var_0.d) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(global1.a + var_0.a)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.a)))));
    let var_1 = firstTrailingBit(abs(vec2<i32>(arg_2.c, ~(-1i)) >> (max(arg_3.yw, vec2<u32>(111137u, arg_2.b.x)) % vec2<u32>(32u))));
    global1 = global0[_wgslsmith_index_u32(~arg_2.b.x, 4u)];
    let var_2 = ~(-2147483647i);
    let var_3 = countOneBits(reverseBits(-vec4<i32>(firstLeadingBit(1i), _wgslsmith_clamp_i32(global1.e, 1i, arg_1.e), _wgslsmith_clamp_i32(var_2, 2147483647i, 19053i), ~var_2)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_6(func_5(func_4(func_1(vec3<f32>(-1228f, 440f, global1.c.x), vec3<u32>(u_input.a, u_input.b, u_input.b), Struct_1(1000f), Struct_3(Struct_1(global1.c.x), global1.d, -11072i))), global1.d.zxz, _wgslsmith_f_op_f32(-376f * func_4(Struct_2(661f, 4294967295u, vec2<f32>(-700f, -522f), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), global1.e)).a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-683f, -393f, -1169f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.c.x, 879f, -742f))))), func_4(Struct_2(_wgslsmith_f_op_f32(round(1238f)), u_input.a, global1.c, vec4<u32>(92465u, global1.b, global1.d.x, global1.d.x), global1.e)), Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(-564f))), vec4<u32>(firstLeadingBit(0u), u_input.a, 59692u, func_1(vec3<f32>(global1.c.x, 487f, global1.c.x), vec3<u32>(1u, 4294967295u, 1u), Struct_1(2766f), Struct_3(Struct_1(-157f), vec4<u32>(u_input.b, global1.b, 6792u, 4294967295u), -1256i)).b), i32(-1i) * -2147483647i), vec4<u32>(global1.d.x, ~79006u, _wgslsmith_dot_vec4_u32(global1.d, vec4<u32>(26453u, 68667u, 13635u, 106629u)) & abs(4294967295u), global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(911f - global1.a), _wgslsmith_f_op_f32(-653f - 241f)))), Struct_3(Struct_1(global1.a), max(global1.d, _wgslsmith_mod_vec4_u32(select(vec4<u32>(global1.b, u_input.b, u_input.b, u_input.b), vec4<u32>(global1.b, u_input.a, 1u, 0u), vec4<bool>(true, true, true, true)), vec4<u32>(u_input.a, 5596u, global1.b, u_input.a))), -_wgslsmith_dot_vec2_i32(vec2<i32>(global1.e, 27207i), -vec2<i32>(global1.e, 747i))), vec4<i32>(~(~_wgslsmith_div_i32(2147483647i, global1.e)), func_6(func_6(Struct_1(global1.a), global0[_wgslsmith_index_u32(u_input.b, 4u)], Struct_3(Struct_1(global1.a), global1.d, global1.e), global1.d).a, global0[_wgslsmith_index_u32(96189u, 4u)], Struct_3(Struct_1(global1.a), vec4<u32>(u_input.b, 4294967295u, global1.b, global1.d.x), 49637i), ~global1.d).c << (firstLeadingBit(15101u | u_input.b) % 32u), select(-325i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(global1.e, -2147483647i), global1.e), true), firstTrailingBit(abs(_wgslsmith_mult_i32(global1.e, -10381i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_0.a.b.x, 1u, _wgslsmith_div_u32(1u, 41310u)), var_0.c.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.a) * global1.c.x), _wgslsmith_f_op_f32(floor(115f)))), max(global1.b, u_input.b));
}

