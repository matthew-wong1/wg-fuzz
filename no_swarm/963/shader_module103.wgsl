struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(0i, 14417i, 19471i, -47394i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 1i), vec4<i32>(2147483647i, -50323i, -22577i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, 0i, -34782i), vec4<i32>(10571i, -26122i, i32(-2147483648), -1i), vec4<i32>(0i, 2147483647i, -12006i, 31814i), vec4<i32>(1i, 993i, -6412i, 28511i), vec4<i32>(2147483647i, i32(-2147483648), 16299i, i32(-2147483648)), vec4<i32>(-21074i, -9246i, -52503i, 2147483647i));

var<private> global2: vec4<i32>;

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

var<private> global4: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec4<bool>(true, false, true, false)), Struct_3(vec4<bool>(true, true, true, false)), Struct_3(vec4<bool>(true, false, false, false)), Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(false, true, false, false)), Struct_3(vec4<bool>(false, true, true, false)), Struct_3(vec4<bool>(false, true, true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = global0.a.xx;
    let var_1 = Struct_3(select(global0.a, !select(vec4<bool>(false, var_0.x, var_0.x, global3.x), select(vec4<bool>(true, global3.x, var_0.x, true), global0.a, global3.x), global3.x), select(vec4<bool>(global3.x, true, false, all(global0.a.zy)), global0.a, global0.a)));
    let var_2 = Struct_2(var_1.a.wy, !select(vec2<bool>(all(global0.a.xxx), 6258i < u_input.a), vec2<bool>(var_1.a.x, true), select(vec2<bool>(var_0.x, global3.x), var_1.a.zw, vec2<bool>(true, true))), vec2<i32>(global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 41995i) << (select(vec2<u32>(9697u, 1u), vec2<u32>(u_input.c, arg_0), global3.x) % vec2<u32>(32u)), u_input.d.xx)));
    global2 = vec4<i32>(u_input.d.x, reverseBits((firstTrailingBit(-32797i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 11982u, arg_0), vec3<u32>(8228u, 4294967295u, u_input.b)) % 32u)) ^ 0i), var_2.c.x, firstLeadingBit(~max(global2.x, _wgslsmith_mult_i32(var_2.c.x, 1i))));
    var var_3 = Struct_2(global0.a.yy, vec2<bool>(var_2.c.x != 1i, false), firstTrailingBit(global2.yz));
    return -2184f;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = global0.a.zxx;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 1000f, arg_3, -1718f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1290f, 1902f, 696f, _wgslsmith_f_op_f32(func_3(u_input.b))))));
    let var_2 = Struct_1(_wgslsmith_div_u32(~_wgslsmith_sub_u32(u_input.e, 0u), ~u_input.e), _wgslsmith_f_op_f32(floor(arg_3)), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.c, 3275u, 19735u), ~vec4<u32>(1u, u_input.b, 0u, 0u)), u_input.c), ~u_input.b));
    let var_3 = global2.x;
    let var_4 = vec2<bool>(!(var_2.b <= _wgslsmith_f_op_f32(var_2.b + _wgslsmith_div_f32(-1211f, 202f))), any(select(select(global0.a, select(arg_0.a, arg_0.a, global0.a.x), select(arg_0.a, vec4<bool>(true, false, true, false), vec4<bool>(true, arg_0.a.x, true, true))), arg_0.a, global0.a.x)));
    return _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a << (~var_2.c.x % 32u), -_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, global2.x, -1431i), vec3<i32>(4636i, 828i, u_input.a)), u_input.d.x), u_input.a);
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f)));
    let var_1 = u_input.a;
    global2 = min(vec4<i32>(~abs(func_2(global4[_wgslsmith_index_u32(u_input.e, 7u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], 1000f, 136f)), _wgslsmith_add_i32(countOneBits(_wgslsmith_sub_i32(var_1, -58652i)), u_input.d.x), u_input.a, var_1), vec4<i32>(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_mod_vec4_i32(min(vec4<i32>(global2.x, 30567i, var_1, 57542i), vec4<i32>(u_input.a, 0i, 1i, 3374i)), firstLeadingBit(vec4<i32>(u_input.a, 1i, u_input.a, u_input.d.x)))), _wgslsmith_dot_vec4_i32(vec4<i32>(func_2(Struct_3(global0.a), vec4<i32>(var_1, global2.x, -26218i, 2147483647i), 248f, 1422f), u_input.a, firstLeadingBit(u_input.d.x), global2.x), firstLeadingBit(~vec4<i32>(1i, -2147483647i, 65813i, 4216i))), -(~(~1i)), 1i));
    var var_2 = !(!(!vec2<bool>(global3.x, true)));
    let var_3 = vec3<f32>(-990f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-697f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(938f + _wgslsmith_f_op_f32(503f + -420f))), all(!global0.a.xww) && !any(global0.a.zw))), -165f);
    return !(!global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x;
    var var_1 = global4[_wgslsmith_index_u32(~(_wgslsmith_add_u32(~(u_input.e << (4294967295u % 32u)), ~1u) | 4294967295u), 7u)];
    var var_2 = !select(func_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 4294967295u, 749u, 0u), vec4<u32>(u_input.b, 64098u, u_input.e, 30379u))), func_1(~(~vec4<u32>(4294967295u, 4294967295u, u_input.b, 1u))), global0.a.x);
    var_0 = -6618i;
    let var_3 = Struct_3(select(func_1(min(~vec4<u32>(u_input.c, 4294967295u, 0u, 16426u), ~vec4<u32>(4294967295u, 3418u, 48492u, u_input.c))), !global0.a, func_1(vec4<u32>(u_input.e, 833u, 4294967295u, u_input.e) << (vec4<u32>(u_input.e, 4294967295u, u_input.e, u_input.b) % vec4<u32>(32u)))));
    let var_4 = 1i;
    var var_5 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-557f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1200f - -1236f))))), -777f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_6 = Struct_3(vec4<bool>(var_1.a.x, !global0.a.x, var_2.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u ^ firstLeadingBit(u_input.e), ~max(19393u, u_input.c), u_input.c), ~u_input.b << (min(1u, select(35381u, 1u, false)) % 32u)), reverseBits(~global2.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_5.x - var_5.x), _wgslsmith_f_op_f32(-var_5.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~u_input.c))))), ~u_input.d.yz);
}

