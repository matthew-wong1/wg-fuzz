struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true, vec4<u32>(4294967295u, 11393u, 1u, 65417u), -43185i), Struct_1(false, vec4<u32>(11397u, 63113u, 21690u, 0u), 1i), Struct_1(false, vec4<u32>(4294967295u, 1u, 4294967295u, 1u), 0i), Struct_1(true, vec4<u32>(4294967295u, 1u, 0u, 4294967295u), 2147483647i), Struct_1(true, vec4<u32>(29167u, 1u, 0u, 1u), -37630i), Struct_1(true, vec4<u32>(4294967295u, 83742u, 1u, 0u), 11605i), Struct_1(true, vec4<u32>(1u, 1u, 0u, 1u), 43871i), Struct_1(true, vec4<u32>(51127u, 11337u, 0u, 4208u), i32(-2147483648)), Struct_1(false, vec4<u32>(0u, 1u, 91909u, 34575u), 2147483647i), Struct_1(true, vec4<u32>(1u, 0u, 0u, 36354u), 12282i), Struct_1(false, vec4<u32>(4294967295u, 1u, 1u, 0u), i32(-2147483648)), Struct_1(true, vec4<u32>(0u, 4294967295u, 0u, 10437u), 47064i), Struct_1(false, vec4<u32>(18198u, 4294967295u, 22264u, 4662u), 42288i), Struct_1(true, vec4<u32>(0u, 37362u, 47340u, 62535u), 2147483647i), Struct_1(false, vec4<u32>(4294967295u, 5103u, 1u, 34922u), -33369i), Struct_1(true, vec4<u32>(0u, 539u, 15166u, 17264u), -1i));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 16>;

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(true, vec4<u32>(24677u, 19781u, 46009u, 20590u), 13532i), Struct_1(false, vec4<u32>(19026u, 32120u, 22407u, 4294967295u), -49869i), Struct_1(false, vec4<u32>(15479u, 49324u, 4294967295u, 82243u), i32(-2147483648)), Struct_1(false, vec4<u32>(16882u, 51100u, 15438u, 9368u), 20250i), Struct_1(false, vec4<u32>(14903u, 0u, 1u, 53178u), -45426i), Struct_1(false, vec4<u32>(18599u, 4294967295u, 52484u, 6414u), 0i), Struct_1(false, vec4<u32>(0u, 5601u, 4294967295u, 4294967295u), -18074i), Struct_1(true, vec4<u32>(73168u, 63603u, 34541u, 4294967295u), -6373i), Struct_1(false, vec4<u32>(52589u, 4294967295u, 86969u, 4294967295u), 2147483647i), Struct_1(false, vec4<u32>(1633u, 0u, 15088u, 60663u), 0i), Struct_1(true, vec4<u32>(1u, 32002u, 27407u, 827u), -1i), Struct_1(true, vec4<u32>(4294967295u, 9497u, 32521u, 4294967295u), i32(-2147483648)), Struct_1(false, vec4<u32>(9633u, 4294967295u, 51767u, 1u), -5498i), Struct_1(false, vec4<u32>(3635u, 0u, 0u, 4294967295u), 1i), Struct_1(false, vec4<u32>(0u, 4294967295u, 0u, 1u), -20576i), Struct_1(false, vec4<u32>(71934u, 4294967295u, 1u, 31151u), 1i), Struct_1(true, vec4<u32>(34455u, 33246u, 4294967295u, 4294967295u), 1i));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec4<u32> {
    var var_0 = abs(global1.c);
    var_0 = _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(global1.c, global1.c, u_input.b), select(vec3<i32>(u_input.b, global1.c, u_input.b), vec3<i32>(-10876i, 19366i, global1.c), vec3<bool>(false, global1.a, false))), vec3<i32>(29960i, 1i, 32286i)));
    var_0 = global1.c;
    global3 = array<Struct_1, 17>();
    let var_1 = ~(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -5526i, 1i), -vec3<i32>(global1.c, -3536i, u_input.b)));
    return max(reverseBits(select(select(vec4<u32>(global1.b.x, u_input.c.x, 4294967295u, u_input.a.x), global1.b, vec4<bool>(false, global1.a, true, global1.a)), global1.b, true)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.x >> (global1.b.x % 32u), _wgslsmith_add_u32(u_input.c.x, 4294967295u), ~global1.b.x, _wgslsmith_sub_u32(global1.b.x, global1.b.x)), abs(vec4<u32>(19383u, 39374u, 100292u, global1.b.x)), vec4<u32>(global1.b.x & 0u, 43552u, ~76431u, countOneBits(u_input.a.x))), vec4<u32>(~global1.b.x, 15253u << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, u_input.c.x), u_input.a.wz), ~global1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, u_input.a.x), vec2<u32>(88179u, 1766u))) % 32u), global1.b.x | ~(u_input.a.x & u_input.c.x), u_input.c.x));
}

fn func_2() -> f32 {
    let var_0 = abs(~_wgslsmith_mod_vec4_u32(func_3() << (_wgslsmith_div_vec4_u32(global1.b, vec4<u32>(global1.b.x, 0u, global1.b.x, 9063u)) % vec4<u32>(32u)), min(vec4<u32>(54145u, 44860u, 0u, u_input.a.x), u_input.a)));
    var var_1 = ~4294967295u;
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~abs(global1.b.x)), 17u)];
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(~global1.b.x, _wgslsmith_dot_vec3_u32(func_3().wyy, _wgslsmith_div_vec3_u32(u_input.a.xwx, global1.b.yyw)))), 16u)];
    let var_2 = 128461u;
    return _wgslsmith_f_op_f32(-220f - -864f);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_1(arg_2.a, select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_0.b.x, u_input.a.x, arg_0.b.x, 17933u) & vec4<u32>(40274u, 1u, arg_2.b.x, global1.b.x)), ~vec4<u32>(arg_0.b.x, 39144u, global1.b.x, global1.b.x)), _wgslsmith_mult_vec4_u32(u_input.a, firstLeadingBit(arg_2.b) | _wgslsmith_add_vec4_u32(arg_0.b, arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-383f + arg_1)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) + _wgslsmith_f_op_f32(arg_1 * arg_1))), ~0i);
    var var_1 = global2[_wgslsmith_index_u32(var_0.b.x, 16u)];
    let var_2 = arg_2.b.wzw;
    var var_3 = Struct_1(true, vec4<u32>(arg_0.b.x, 0u, 10855u, ~49876u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-5835i, var_0.c), _wgslsmith_mod_i32(u_input.b, arg_0.c), arg_2.c), vec3<i32>(var_0.c, 2147483647i, u_input.b) >> (~vec3<u32>(u_input.a.x, 1u, arg_2.b.x) % vec3<u32>(32u))));
    var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(22956u, 0u), _wgslsmith_dot_vec3_u32(global1.b.xzw, global1.b.xzy)), 16u)];
    return global2[_wgslsmith_index_u32(0u, 16u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> bool {
    global1 = Struct_1(true, reverseBits(~((vec4<u32>(1u, global1.b.x, arg_1.b.b.x, 1u) >> (vec4<u32>(u_input.c.x, arg_0.e, arg_0.e, u_input.a.x) % vec4<u32>(32u))) ^ vec4<u32>(u_input.a.x, 1u, arg_0.e, 28665u))), abs(~global1.c));
    global0 = array<Struct_1, 16>();
    var var_0 = abs(_wgslsmith_div_i32(-(~arg_0.b.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0.d.c), vec2<i32>(u_input.b, -1i)) ^ arg_1.b.c) << (~_wgslsmith_dot_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), vec4<u32>(arg_0.b.b.x, 15713u, 21329u, 26093u)) % 32u));
    return !(!arg_0.b.a);
}

fn func_1() -> Struct_1 {
    global1 = Struct_1(func_5(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], func_4(Struct_1(true, vec4<u32>(4294967295u, 20631u, global1.b.x, 0u), _wgslsmith_mult_i32(u_input.b, 2972i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-325f, -237f) * _wgslsmith_f_op_f32(func_2())), global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global1.a), ~(~global1.b.x)), vec4<u32>(min(49639u, 0u), global1.b.x, reverseBits(_wgslsmith_mod_u32(0u << (1u % 32u), ~111027u)), global1.b.x), u_input.b);
    global2 = array<Struct_2, 16>();
    global1 = func_4(func_4(global3[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(global1.b.x, 16553u) >> (1u % 32u)), 17u)], _wgslsmith_f_op_f32(f32(-1f) * -706f), Struct_1(all(select(vec4<bool>(global1.a, false, true, global1.a), vec4<bool>(true, global1.a, false, global1.a), vec4<bool>(global1.a, true, global1.a, global1.a))), func_4(global3[_wgslsmith_index_u32(4294967295u, 17u)], 581f, Struct_1(global1.a, u_input.a, 2147483647i), !global1.a).d.b, u_input.b), global1.a).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-868f * -310f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1242f * 1630f), _wgslsmith_f_op_f32(step(389f, -426f))))))), func_4(func_4(Struct_1(true, global1.b, -global1.c), 418f, func_4(Struct_1(global1.a, u_input.a, global1.c), _wgslsmith_f_op_f32(318f * 1066f), Struct_1(true, global1.b, global1.c), global1.a).b, global1.a).b, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f), _wgslsmith_f_op_f32(abs(2104f))))), func_4(global3[_wgslsmith_index_u32(4294967295u, 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -721f))), Struct_1(true, ~global1.b, 1i), all(select(vec3<bool>(true, global1.a, false), vec3<bool>(global1.a, true, global1.a), vec3<bool>(true, global1.a, global1.a)))).b, true).b, true).b;
    let var_0 = func_4(func_4(Struct_1(false, vec4<u32>(global1.b.x, ~global1.b.x, countOneBits(4294967295u), global1.b.x), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f * _wgslsmith_f_op_f32(-1417f - -684f))), func_4(Struct_1(-2147483647i != global1.c, ~u_input.a, 49449i >> (u_input.c.x % 32u)), 1211f, Struct_1(func_4(global0[_wgslsmith_index_u32(global1.b.x, 16u)], -1192f, global3[_wgslsmith_index_u32(global1.b.x, 17u)], global1.a).d.a, ~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, global1.c, -44727i), vec4<i32>(global1.c, 1i, global1.c, u_input.b))), global1.a).b, ~u_input.a.x < 1458u).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 985f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-918f + -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(348f - -518f)))))), global0[_wgslsmith_index_u32(~u_input.a.x, 16u)], (4294967295u != ((u_input.a.x & global1.b.x) >> (~1u % 32u))) | any(vec3<bool>(all(vec3<bool>(true, true, global1.a)), global1.a, global1.a))).b;
    global3 = array<Struct_1, 17>();
    return global0[_wgslsmith_index_u32(1u, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global1 = Struct_1(func_4(Struct_1(false, firstLeadingBit(firstTrailingBit(u_input.a)), -global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(510f * _wgslsmith_f_op_f32(266f + -1073f))), global3[_wgslsmith_index_u32(global1.b.x, 17u)], firstTrailingBit(countOneBits(u_input.a.x)) == global1.b.x).a, reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(func_4(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 1705f, Struct_1(global1.a, u_input.a, u_input.b), false).c, ~4294967295u, firstTrailingBit(93482u), u_input.c.x), select(_wgslsmith_div_vec4_u32(u_input.a, u_input.a), global1.b, func_5(Struct_2(true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.a.x), Struct_2(global1.a, Struct_1(global1.a, global1.b, 25663i), global1.b.x, Struct_1(false, vec4<u32>(0u, 0u, 1u, global1.b.x), 1i), 423u), 4294967295u)))), -(i32(-1i) * -17331i));
    global3 = array<Struct_1, 17>();
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.b.x << (firstTrailingBit(global1.b.x) % 32u), ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(26248u, 4294967295u, 37521u), ~u_input.a.yyz))), 17u)];
    global1 = Struct_1(true, select(vec4<u32>((u_input.c.x | var_0.b.x) >> (global1.b.x % 32u), ~var_0.b.x, func_3().x, u_input.c.x), vec4<u32>(func_4(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(19977u, u_input.a.x), 17u)], -1553f, Struct_1(global1.a, var_0.b, var_0.c), !var_0.a).c, u_input.c.x, global1.b.x, ~global1.b.x >> (u_input.a.x % 32u)), vec4<bool>(true, true, true, true)), -u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-35863i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(180f, -1000f)), vec2<f32>(1162f, -429f), true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(-1000f * -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f)) - _wgslsmith_f_op_f32(f32(-1f) * -1068f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(194f, 712f, global1.a))), -1000f)), _wgslsmith_f_op_f32(round(-938f))));
}

