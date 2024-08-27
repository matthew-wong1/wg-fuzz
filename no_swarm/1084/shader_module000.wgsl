struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec4<u32>(8601u, 4294967295u, 88808u, 1u), vec2<u32>(0u, 23804u), 4294967295u, vec2<u32>(24050u, 0u));

var<private> global2: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(36682u, 4294967295u, 94948u, 1u), vec4<u32>(0u, 29034u, 14568u, 56566u), vec4<u32>(67459u, 0u, 1u, 16743u), vec4<u32>(1801u, 4294967295u, 4178u, 79159u), vec4<u32>(46544u, 4294967295u, 1920u, 0u), vec4<u32>(0u, 0u, 13683u, 1u), vec4<u32>(1u, 1u, 148u, 4294967295u), vec4<u32>(28021u, 18125u, 1u, 1u), vec4<u32>(10467u, 1u, 58043u, 94843u), vec4<u32>(87436u, 4294967295u, 22001u, 4294967295u), vec4<u32>(6940u, 51625u, 1u, 4332u), vec4<u32>(4294967295u, 1u, 33787u, 60494u), vec4<u32>(1u, 0u, 61309u, 17853u), vec4<u32>(41675u, 10692u, 106413u, 77056u), vec4<u32>(17256u, 4294967295u, 0u, 0u), vec4<u32>(35658u, 78172u, 1u, 31994u));

var<private> global3: f32 = 1521f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: u32) -> vec3<bool> {
    global0 = !vec4<bool>(false, ~_wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(4294967295u, arg_3, 1u, u_input.d.x)) != u_input.d.x, false, global1.a.x);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-402f, arg_1.x) * _wgslsmith_f_op_f32(sign(arg_2.x)))))) < arg_1.x;
    let var_1 = true;
    global1 = Struct_1(global0.zwy, vec4<u32>(~firstTrailingBit(_wgslsmith_dot_vec3_u32(global1.b.zyx, global1.b.www)), arg_3, abs(16453u), _wgslsmith_sub_u32(1u, arg_0.a.d)), vec2<u32>(arg_3 & ~arg_0.a.b.x, _wgslsmith_dot_vec4_u32(global1.b, global2[_wgslsmith_index_u32(countOneBits(u_input.c), 16u)]) & arg_0.a.c.x), ~global1.b.x, arg_0.a.b.zy);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -402f)));
    return vec3<bool>(var_1, var_1, arg_0.a.a.x);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    global1 = arg_0.d;
    var var_0 = Struct_2(Struct_1(func_3(arg_2, vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(-1000f - arg_0.b), -1000f), vec4<f32>(_wgslsmith_div_f32(335f, 719f), _wgslsmith_div_f32(arg_0.b, -1842f), arg_0.b, _wgslsmith_div_f32(-431f, 1000f)), 0u), ~(~vec4<u32>(arg_0.d.e.x, 86788u, 0u, arg_0.a.x)) | vec4<u32>(0u, arg_0.d.b.x, u_input.d.x, 1u), vec2<u32>(u_input.d.x, 1u), 0u | abs(_wgslsmith_sub_u32(arg_2.a.e.x, u_input.d.x)), ~vec2<u32>(global1.e.x ^ global1.e.x, u_input.c)));
    let var_1 = global0.xy;
    global0 = select(!select(!vec4<bool>(true, global0.x, arg_2.a.a.x, arg_2.a.a.x), vec4<bool>(false, global0.x, 15370u <= global1.e.x, arg_2.a.a.x), all(global0.yxy)), !select(select(!vec4<bool>(global0.x, true, var_0.a.a.x, var_1.x), select(vec4<bool>(global0.x, false, false, arg_2.a.a.x), vec4<bool>(true, false, var_0.a.a.x, false), vec4<bool>(false, true, global1.a.x, true)), global1.a.x), select(select(vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_1.x, true), vec4<bool>(false, arg_2.a.a.x, false, arg_2.a.a.x), var_0.a.a.x), vec4<bool>(false, false, arg_0.d.a.x, false), select(vec4<bool>(true, false, global1.a.x, global0.x), vec4<bool>(true, var_0.a.a.x, var_1.x, var_1.x), vec4<bool>(arg_0.d.a.x, true, var_0.a.a.x, arg_0.d.a.x))), !select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(global0.x, true, true, var_0.a.a.x), true)), arg_0.b <= arg_0.b);
    let var_2 = global1.a.x;
    return ~arg_0.d.d;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_1 {
    return Struct_1(vec3<bool>(arg_0.c, global0.x, global0.x), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(global1.b, global2[_wgslsmith_index_u32(14246u, 16u)]), max(~vec4<u32>(0u, 11646u, u_input.c, u_input.d.x), vec4<u32>(4294967295u, global1.c.x, 84368u, global1.b.x))), global1.b), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global1.e.x), abs(vec2<u32>(15470u, arg_0.d.c.x) & select(vec2<u32>(u_input.c, global1.d), u_input.d, false))), u_input.d.x, global1.e);
}

fn func_1(arg_0: i32) -> vec2<u32> {
    let var_0 = global0.xz;
    global1 = func_4(Struct_4(_wgslsmith_sub_vec3_u32(vec3<u32>(~global1.c.x, _wgslsmith_dot_vec2_u32(global1.b.wz, global1.b.zy), func_2(Struct_4(global1.b.yyy, 1000f, global0.x, Struct_1(global1.a, global1.b, global1.c, 0u, global1.e)), vec3<i32>(-11945i, arg_0, arg_0), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<u32>(u_input.d.x, u_input.c, 0u, 1u), vec2<u32>(global1.e.x, global1.b.x), 51856u, vec2<u32>(1u, 0u))))), ~(~vec3<u32>(u_input.a.x, global1.e.x, u_input.d.x))), 2323f, global1.a.x, Struct_1(!(!global1.a), global1.b, min(vec2<u32>(0u, 31027u), firstTrailingBit(vec2<u32>(0u, 21341u))), 1u, ~firstLeadingBit(global1.e))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-268f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-266f + 1508f), _wgslsmith_f_op_f32(-243f - 933f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + 188f), -125f)));
    global1 = Struct_1(global1.a, _wgslsmith_mult_vec4_u32(~global2[_wgslsmith_index_u32(global1.c.x, 16u)], vec4<u32>(u_input.d.x, ~_wgslsmith_sub_u32(u_input.c, u_input.d.x), _wgslsmith_clamp_u32(u_input.c, global1.e.x, global1.b.x) >> (~28329u % 32u), firstLeadingBit(global1.c.x << (u_input.c % 32u)))), vec2<u32>(global1.d & ~global1.e.x, global1.c.x), abs(~(~global1.b.x) | u_input.a.x), ~vec2<u32>(_wgslsmith_clamp_u32(u_input.d.x, reverseBits(u_input.d.x), _wgslsmith_add_u32(u_input.c, 55754u)), _wgslsmith_clamp_u32(u_input.c, u_input.a.x ^ 21286u, select(u_input.d.x, global1.d, true))));
    return ~(~vec2<u32>((global1.d << (u_input.c % 32u)) << (abs(0u) % 32u), 48906u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(firstLeadingBit(_wgslsmith_mod_u32(reverseBits(countOneBits(u_input.a.x)), ~4294967295u)), vec3<u32>(71069u, firstTrailingBit(global1.c.x), 4294967295u), Struct_1(vec3<bool>(abs(-18553i) != u_input.e.x, true, false), firstLeadingBit(reverseBits(_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(0u, 16u)], vec4<u32>(u_input.a.x, 23110u, u_input.c, u_input.d.x)))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 26514u), global1.e, func_1(19604i)) << (u_input.d % vec2<u32>(32u)), _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(max(_wgslsmith_div_u32(global1.b.x, global1.e.x), global1.d ^ 0u), 16u)], ~vec4<u32>(115345u, 1u, global1.b.x, 0u)), ~u_input.a), Struct_1(!(!vec3<bool>(global0.x, global1.a.x, global1.a.x)), vec4<u32>(u_input.a.x & (global1.e.x | u_input.d.x), 1u, u_input.d.x, global1.e.x), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.e.x, 1u), u_input.a), 1u) | ~vec2<u32>(u_input.d.x, 4294967295u), global1.c.x, ~func_1(-u_input.b.x)));
    global3 = 480f;
    let var_1 = -vec4<i32>(0i, min(firstTrailingBit(-u_input.b.x), 50889i), 11772i, -u_input.e.x);
    var var_2 = Struct_2(func_4(Struct_4(select(_wgslsmith_div_vec3_u32(var_0.b, vec3<u32>(62465u, 1u, 72466u)), reverseBits(var_0.d.b.yyx), vec3<bool>(global0.x, true, global1.a.x)), -132f, true, Struct_1(vec3<bool>(false, global0.x, false), global1.b, var_0.d.c, 55862u, var_0.c.b.yw)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1295f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-902f)))))));
    global0 = !select(vec4<bool>(any(vec3<bool>(var_0.c.a.x, false, true)), !any(vec3<bool>(true, global0.x, false)), false, var_0.c.a.x), vec4<bool>(!func_4(Struct_4(vec3<u32>(global1.b.x, global1.b.x, var_2.a.c.x), 1483f, false, var_2.a), vec2<f32>(-395f, -1200f)).a.x, false && global1.a.x, global1.a.x, any(vec2<bool>(true, true))), all(!(!var_0.c.a.zz)));
    let var_3 = all(func_3(Struct_2(var_2.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(1357f)), 1f, -1401f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-576f, 690f, 3153f), vec3<f32>(1475f, -1047f, -1559f)), _wgslsmith_div_vec3_f32(vec3<f32>(-714f, 261f, -445f), vec3<f32>(-960f, -665f, 408f)), global0.x)), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-859f + -566f)), 1920f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(665f))), _wgslsmith_f_op_f32(sign(386f))), _wgslsmith_div_u32(u_input.c, firstTrailingBit(func_1(8483i).x))));
    let var_4 = Struct_4(vec3<u32>(reverseBits(0u), select(1u, ~var_2.a.d, true), 52221u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(385f, -248f)), _wgslsmith_f_op_f32(floor(941f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1723f)))) * 1f), true, func_4(Struct_4(vec3<u32>(~4294967295u, ~var_2.a.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(10150u, 0u, var_2.a.b.x), var_0.c.b.zyx)), _wgslsmith_f_op_f32(f32(-1f) * -367f), global0.x, Struct_1(vec3<bool>(false, var_0.d.a.x, var_2.a.a.x), vec4<u32>(1u, var_2.a.b.x, u_input.c, 1u) << (var_2.a.b % vec4<u32>(32u)), ~u_input.d, ~var_2.a.e.x, ~var_2.a.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(426f, 1520f)))));
    global0 = vec4<bool>(true, !global1.a.x, true, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-427f, var_4.b)), _wgslsmith_f_op_f32(-var_4.b), _wgslsmith_f_op_f32(ceil(-1295f)), _wgslsmith_f_op_f32(var_4.b + var_4.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, 519f, var_4.b, -802f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(187f, var_4.b, -1000f, var_4.b), vec4<f32>(302f, var_4.b, var_4.b, var_4.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1513f, var_4.b, var_4.b, 1407f))) * vec4<f32>(var_4.b, 892f, var_4.b, -723f)))), ~var_4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(658f, _wgslsmith_f_op_f32(var_4.b * 224f))) + var_4.b));
}

