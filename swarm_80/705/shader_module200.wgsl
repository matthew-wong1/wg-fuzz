struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<bool, 25> = array<bool, 25>(false, false, false, false, true, false, true, true, true, true, false, true, false, true, true, false, false, false, false, false, false, true, true, true, false);

var<private> global2: array<bool, 4> = array<bool, 4>(true, true, true, true);

var<private> global3: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<bool>(true, true, true, true), vec4<u32>(38173u, 0u, 13691u, 15640u)), Struct_2(vec4<bool>(false, true, false, true), vec4<u32>(4294967295u, 387u, 1u, 0u)), Struct_2(vec4<bool>(false, true, false, true), vec4<u32>(1u, 35755u, 0u, 4294967295u)), Struct_2(vec4<bool>(true, false, true, true), vec4<u32>(1u, 88099u, 3434u, 1u)));

var<private> global4: array<f32, 22> = array<f32, 22>(-984f, 1000f, -315f, 246f, 693f, -1649f, -279f, -469f, 563f, 317f, -1489f, -341f, -1018f, 1377f, -1062f, -457f, -2142f, -598f, -965f, 862f, -1000f, 1248f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_4, arg_3: u32) -> i32 {
    var var_0 = vec4<i32>(abs(u_input.c), min(arg_0.x, 1i), abs(~select(-2147483647i, 2147483647i, !global1[_wgslsmith_index_u32(49209u, 25u)])), ~arg_0.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_2.d.x, 22u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(31509u, 22u)] - -709f) - _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(53971u, 22u)], 484f, false)))), vec3<f32>(global4[_wgslsmith_index_u32(firstLeadingBit(arg_3) | ~4294967295u, 22u)], global4[_wgslsmith_index_u32(arg_2.d.x, 22u)], global4[_wgslsmith_index_u32(2095u, 22u)])))));
    var var_2 = _wgslsmith_mod_vec3_u32(u_input.a.zzz, _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a.wxx, u_input.a.zzw), ~(~vec3<u32>(arg_3, arg_2.a, arg_3))));
    let var_3 = var_0.zz;
    let var_4 = arg_2.c.a.xy >> (~countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(var_2.zy, vec2<u32>(0u, 4294967295u)), ~0u)) % vec2<u32>(32u));
    return countOneBits(_wgslsmith_div_i32(~var_3.x, ~1i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 0i, 1923i, -1i) & ~vec4<i32>(-1i, -2147483647i, 0i, var_4.x), -vec4<i32>(arg_0.x, 1i, 0i, var_0.x)));
}

fn func_2() -> i32 {
    let var_0 = 242f;
    let var_1 = Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(-21306i), u_input.b, u_input.c), vec3<i32>(u_input.c | 2147483647i, min(-4136i, func_3(vec3<i32>(u_input.c, 0i, u_input.b), u_input.b, Struct_4(u_input.a.x, Struct_3(vec3<i32>(0i, -2147483647i, u_input.b)), Struct_3(vec3<i32>(0i, 0i, -11004i)), vec2<u32>(u_input.a.x, 20973u), true), u_input.a.x)), _wgslsmith_sub_i32(u_input.b & u_input.b, _wgslsmith_mult_i32(-33641i, 7986i)))));
    var var_2 = true;
    let var_3 = Struct_1(select(vec4<bool>(!global2[_wgslsmith_index_u32(u_input.a.x, 4u)], false, false, global2[_wgslsmith_index_u32(0u, 4u)]), !vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true, true, global2[_wgslsmith_index_u32(u_input.a.x, 4u)])), false, true || global2[_wgslsmith_index_u32(5484u, 4u)], -1535f <= var_0), global1[_wgslsmith_index_u32(3036u, 25u)]));
    global3 = array<Struct_2, 4>();
    return func_3(vec3<i32>(-9360i, var_1.a.x, 1i), -(i32(-1i) * -(~u_input.c)), Struct_4(_wgslsmith_dot_vec3_u32(reverseBits(u_input.a.wxw) ^ u_input.a.yww, u_input.a.xzx), var_1, var_1, vec2<u32>(_wgslsmith_div_u32(u_input.a.x & 1u, ~4294967295u), _wgslsmith_div_u32(~51471u, u_input.a.x >> (0u % 32u))), all(var_3.a.yy) & (4294967295u >= _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 35215u, 108128u, 1u)))), u_input.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> bool {
    global0 = array<Struct_2, 24>();
    global4 = array<f32, 22>();
    let var_0 = Struct_3(vec3<i32>(-_wgslsmith_clamp_i32(-65309i, arg_2, arg_0.a.x), -20705i, -arg_0.a.x));
    let var_1 = Struct_3(((-arg_0.a >> ((u_input.a.zxy ^ u_input.a.xzy) % vec3<u32>(32u))) | arg_0.a) >> (abs(~u_input.a.xyz) % vec3<u32>(32u)));
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(arg_1.b.x >> (u_input.a.x % 32u), ~arg_1.b.x, countOneBits(u_input.a.x)), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, 19315u)), 4294967295u, 0u);
    return true;
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_3(arg_0.a);
    var var_1 = global4[_wgslsmith_index_u32(~u_input.a.x, 22u)];
    let var_2 = !(!vec3<bool>(true, global2[_wgslsmith_index_u32(~(~u_input.a.x), 4u)], !global2[_wgslsmith_index_u32(~u_input.a.x, 4u)]));
    var_1 = _wgslsmith_f_op_f32(floor(-2223f));
    var var_3 = Struct_4(~0u, Struct_3(-arg_0.a << (vec3<u32>(u_input.a.x, u_input.a.x >> (4294967295u % 32u), firstTrailingBit(15253u)) % vec3<u32>(32u))), arg_0, ~u_input.a.ww, func_4(Struct_3(vec3<i32>(func_2(), firstLeadingBit(0i), _wgslsmith_mult_i32(-31326i, arg_0.a.x))), Struct_2(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], false, false, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], true, true, global1[_wgslsmith_index_u32(27876u, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(62199u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], true, true)), u_input.a), -(~(12764i ^ u_input.c)), -372f));
    return var_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    global3 = array<Struct_2, 4>();
    var var_1 = false;
    var_1 = any(!select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 1u), 25u)], !global2[_wgslsmith_index_u32(6046u, 4u)], !global1[_wgslsmith_index_u32(87133u, 25u)], global1[_wgslsmith_index_u32(~2304u, 25u)]), !(!vec4<bool>(true, global2[_wgslsmith_index_u32(7486u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true)), select(vec4<bool>(global1[_wgslsmith_index_u32(52927u, 25u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), false == global2[_wgslsmith_index_u32(u_input.a.x, 4u)])));
    var var_2 = _wgslsmith_mod_u32(~(u_input.a.x ^ _wgslsmith_dot_vec3_u32(select(vec3<u32>(50407u, 4294967295u, u_input.a.x), vec3<u32>(22340u, 111624u, u_input.a.x), vec3<bool>(false, global1[_wgslsmith_index_u32(540u, 25u)], global1[_wgslsmith_index_u32(61676u, 25u)])), u_input.a.xwz & u_input.a.wwx)), u_input.a.x << (func_1(Struct_3(vec3<i32>(-1i, 2147483647i, u_input.b))) % 32u));
    let var_3 = Struct_2(vec4<bool>(!(_wgslsmith_f_op_f32(round(760f)) == _wgslsmith_f_op_f32(ceil(-1000f))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.wz), vec2<u32>(22893u, 1u)), u_input.a.x), 25u)], all(select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 25u)], false, false), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], false, global2[_wgslsmith_index_u32(5416u, 4u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true, true)), all(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 25u)])))), all(select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 25u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(9792u, 25u)], true), select(vec4<bool>(global1[_wgslsmith_index_u32(12883u, 25u)], true, global2[_wgslsmith_index_u32(4294967295u, 4u)], true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true, true, global1[_wgslsmith_index_u32(0u, 25u)]))))), vec4<u32>(abs(~_wgslsmith_mod_u32(46344u, u_input.a.x)), ~firstLeadingBit(~u_input.a.x), _wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, 4294967295u, 61242u, 12414u), u_input.a, false) << (u_input.a % vec4<u32>(32u)), select(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), firstLeadingBit(u_input.a), true))));
    var_1 = !global1[_wgslsmith_index_u32(9618u, 25u)];
    var var_4 = select(!var_3.a.yy, select(!(!var_3.a.xx), !(!select(vec2<bool>(false, true), vec2<bool>(false, global1[_wgslsmith_index_u32(4248u, 25u)]), vec2<bool>(var_3.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]))), false), all(vec4<bool>(global1[_wgslsmith_index_u32(24774u, 25u)], all(var_3.a.yxy), func_4(Struct_3(vec3<i32>(1835i, 55803i, 3967i)), Struct_2(vec4<bool>(var_3.a.x, global1[_wgslsmith_index_u32(var_3.b.x, 25u)], false, var_3.a.x), vec4<u32>(4294967295u, u_input.a.x, 1u, 1u)), u_input.c, global4[_wgslsmith_index_u32(23006u, 22u)]), any(vec3<bool>(global1[_wgslsmith_index_u32(67403u, 25u)], true, true)))) || (_wgslsmith_mult_u32(29597u, 18054u) == (~14505u << (var_3.b.x % 32u))));
    global1 = array<bool, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c ^ -u_input.c, ~(i32(-1i) * -1i), abs(vec4<i32>(_wgslsmith_mult_i32(u_input.b, 0i) | 7219i, min(u_input.c, u_input.c), ~(-11763i | u_input.b), 1i)), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(func_1(Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(-10874i, -1i, -2147483647i), vec3<i32>(u_input.c, -2147483647i, -2147483647i)))), 22u)] - _wgslsmith_f_op_f32(f32(-1f) * -288f)));
}

