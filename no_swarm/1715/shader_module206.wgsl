struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 17>;

var<private> global2: vec2<i32> = vec2<i32>(-35611i, -8023i);

var<private> global3: Struct_1 = Struct_1(vec4<u32>(26830u, 1u, 1591u, 91784u), vec3<bool>(true, false, false), vec3<u32>(23791u, 1u, 1u), vec4<f32>(595f, -1000f, 1000f, -262f));

var<private> global4: array<f32, 29> = array<f32, 29>(286f, 232f, -408f, 329f, 1760f, 1062f, -408f, -1872f, 186f, -337f, -1325f, 650f, -158f, 460f, 126f, -1000f, 555f, 928f, 1673f, 1010f, 301f, -343f, -1323f, 2296f, 782f, 1235f, 1154f, 1995f, -1524f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(arg_3.a.d.wz, arg_2.a.d.xz));
    return abs(vec3<u32>(arg_3.a.a.x, max(abs(abs(global3.a.x)), 78070u), _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(16671u, arg_3.a.c.x)) ^ _wgslsmith_sub_u32(132772u, abs(global3.c.x))));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = all(arg_3.a.b.yy);
    var_0 = arg_3.a.b.x;
    let var_1 = Struct_2(arg_3.a);
    let var_2 = Struct_1(abs(global3.a), !select(var_1.a.b, arg_3.a.b, any(var_1.a.b.yy)), ~func_3(true, true, var_1, Struct_2(arg_3.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) * vec4<f32>(_wgslsmith_f_op_f32(ceil(-153f)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(509f, 927f)))), vec4<f32>(-876f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(177f * var_1.a.d.x))), -1696f, arg_0.x), !(!(!vec4<bool>(var_1.a.b.x, arg_3.a.b.x, false, arg_3.a.b.x))))));
    global2 = abs(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(reverseBits(arg_1), 1i)), ~u_input.a.yy));
    return Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, var_1.a.a.x, ~(~32391u), ~(40871u ^ u_input.c)), arg_3.a.a), !vec3<bool>(any(vec4<bool>(false, false, global3.b.x, false)), !any(vec2<bool>(true, var_1.a.b.x)), true), ~(firstTrailingBit(_wgslsmith_sub_vec3_u32(var_1.a.c, vec3<u32>(u_input.c, var_1.a.a.x, 99947u))) << (vec3<u32>(_wgslsmith_add_u32(11620u, var_2.c.x), reverseBits(var_2.c.x), 80581u ^ var_1.a.c.x) % vec3<u32>(32u))), vec4<f32>(-710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d.x) + _wgslsmith_f_op_f32(-arg_3.a.d.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.d.x * -605f) + _wgslsmith_f_op_f32(var_2.d.x - -1506f))), _wgslsmith_div_f32(global3.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(306f)), _wgslsmith_f_op_f32(exp2(arg_2.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2011f * global4[_wgslsmith_index_u32(22523u, 29u)])))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    return func_2(global3.d.xx, _wgslsmith_dot_vec3_i32(u_input.a, u_input.d), vec4<f32>(global3.d.x, _wgslsmith_f_op_f32(abs(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-600f, 491f) * global3.d.zw), abs(23510i), _wgslsmith_f_op_vec4_f32(-global3.d), Struct_2(arg_1.a)).d.x)), 338f, global3.d.x), Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_2.d.zz))), 2147483647i, arg_2.d, arg_1)));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> u32 {
    global1 = array<vec2<i32>, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a.d) + func_4(global3.b.x, arg_1, Struct_1(vec4<u32>(u_input.b, 1u, 8635u, u_input.c), global3.b, vec3<u32>(0u, u_input.c, 84784u), global3.d)).d) + vec4<f32>(_wgslsmith_f_op_f32(1166f - -593f), func_2(arg_1.a.d.wy, u_input.a.x, vec4<f32>(855f, global3.d.x, -562f, global3.d.x), arg_1).d.x, -139f, _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(128557u, 29u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(0u, 29u)], global3.d.x, global3.d.x, 971f), vec4<f32>(global3.d.x, global3.d.x, arg_1.a.d.x, global4[_wgslsmith_index_u32(arg_1.a.a.x, 29u)])))))));
    global0 = u_input.c & countOneBits(u_input.b);
    let var_1 = !all(arg_1.a.b.zx);
    var var_2 = _wgslsmith_sub_i32(min(abs(arg_0), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-46214i, u_input.a.x, arg_0), u_input.d))), u_input.a.x);
    return min(global3.c.x, arg_1.a.c.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> Struct_1 {
    global4 = array<f32, 29>();
    let var_0 = vec4<u32>(func_5(-2147483647i, Struct_2(func_4(true, Struct_2(Struct_1(global3.a, global3.b, global3.a.wwy, global3.d)), func_2(vec2<f32>(global3.d.x, -839f), 2147483647i, global3.d, Struct_2(Struct_1(vec4<u32>(90165u, u_input.c, 0u, global3.c.x), arg_0.yww, vec3<u32>(1u, 37383u, 25546u), vec4<f32>(-418f, -1171f, arg_1, -648f))))))), ~(~u_input.c), _wgslsmith_mult_u32(u_input.c, ~1u), firstLeadingBit(_wgslsmith_sub_u32(1u, ~global3.a.x)) >> (~select(~global3.a.x, u_input.c, 1u > u_input.b) % 32u));
    let var_1 = global3.d.wx;
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 111087u), ~2343u, ~firstTrailingBit(abs(38010u)), _wgslsmith_add_u32(~10335u, 1u) | u_input.c), !global3.b, global3.a.zzw, global3.d);
    let var_3 = var_0.x;
    return Struct_1(vec4<u32>(func_4(-global2.x == global2.x, Struct_2(func_2(var_2.d.zw, u_input.d.x, vec4<f32>(285f, -1000f, var_2.d.x, 2365f), Struct_2(var_2))), var_2).a.x, ~104210u, reverseBits(17416u) >> (~(~u_input.c) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.wyy, vec3<u32>(4294967295u, global3.a.x, 92996u) | global3.a.xyx), var_2.a.yzw)), func_4(true, Struct_2(Struct_1(vec4<u32>(52029u, var_2.a.x, u_input.c, 4294967295u) & vec4<u32>(14608u, var_2.c.x, 0u, u_input.b), vec3<bool>(var_2.b.x, true, true), vec3<u32>(4294967295u, global3.a.x, var_2.c.x), vec4<f32>(var_1.x, 875f, -502f, arg_1))), var_2).b, max(var_0.xxx, vec3<u32>(global3.c.x, ~(~u_input.c), _wgslsmith_dot_vec3_u32(var_2.c, func_2(vec2<f32>(var_1.x, var_1.x), u_input.a.x, vec4<f32>(global3.d.x, -292f, -1796f, var_1.x), Struct_2(Struct_1(vec4<u32>(u_input.b, 1u, 4294967295u, u_input.c), var_2.b, var_2.c, vec4<f32>(884f, global3.d.x, -448f, arg_2)))).a.wzw))), global3.d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(vec4<bool>(global3.b.x, !global3.b.x, global3.b.x, true), global4[_wgslsmith_index_u32(countOneBits(countOneBits(1u)), 29u)], global4[_wgslsmith_index_u32(23358u >> (1u % 32u), 29u)]);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1064f));
    let var_1 = Struct_2(func_1(vec4<bool>(false, global3.b.x, !func_4(global3.b.x, Struct_2(Struct_1(vec4<u32>(global3.a.x, 1u, u_input.c, global3.c.x), global3.b, vec3<u32>(global3.a.x, 4484u, 0u), global3.d)), Struct_1(vec4<u32>(27622u, 119331u, 65134u, global3.a.x), global3.b, vec3<u32>(u_input.c, 27077u, 0u), vec4<f32>(global3.d.x, -510f, global3.d.x, 469f))).b.x, (global3.c.x >> (58852u % 32u)) != (0u >> (0u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1370f, global3.d.x), global3.d.x)), _wgslsmith_f_op_f32(-253f - 562f)));
    var var_2 = _wgslsmith_sub_vec4_i32(abs(vec4<i32>(~_wgslsmith_mult_i32(global2.x, global2.x), -1i, 2147483647i, ~select(u_input.d.x, global2.x, false))), abs(vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, global2.x, -10112i), vec3<i32>(-38993i, u_input.e, 1i)), countOneBits(vec3<i32>(14756i, global2.x, u_input.e))), 61936i, select(~(-19169i), global2.x, !global3.b.x), -10678i)));
    let var_3 = firstTrailingBit(global3.a.yy);
    global4 = array<f32, 29>();
    let var_4 = Struct_2(Struct_1(global3.a, vec3<bool>((global3.a.x <= var_1.a.a.x) || (var_3.x >= var_1.a.a.x), any(global3.b), var_1.a.b.x), ~vec3<u32>(4294967295u, ~4294967295u, firstTrailingBit(global3.c.x)), vec4<f32>(-354f, var_1.a.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-912f)), _wgslsmith_f_op_f32(-1385f * 603f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.d.x))))));
    global3 = func_1(vec4<bool>(var_4.a.b.x, var_1.a.b.x, true, true), _wgslsmith_f_op_f32(f32(-1f) * -408f), _wgslsmith_f_op_f32(select(1000f, 394f, var_1.a.b.x && false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yww, _wgslsmith_clamp_i32(global2.x, ~(_wgslsmith_mult_i32(var_2.x, var_2.x) << (_wgslsmith_dot_vec2_u32(var_4.a.a.xx, vec2<u32>(51716u, 0u)) % 32u)), -u_input.a.x), ~(~vec3<u32>(~4294967295u, var_4.a.c.x, ~var_1.a.c.x)));
}

