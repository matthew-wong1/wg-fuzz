struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<bool>(true, false, true, true), 36695i, vec3<bool>(false, false, true), 1i, vec2<u32>(58992u, 17131u)), Struct_1(vec4<bool>(true, true, false, true), -4707i, vec3<bool>(true, true, false), 2147483647i, vec2<u32>(21766u, 4294967295u)), Struct_1(vec4<bool>(true, true, false, false), 1i, vec3<bool>(false, true, true), 1i, vec2<u32>(0u, 5488u)), Struct_1(vec4<bool>(false, false, true, true), 0i, vec3<bool>(true, false, true), 972i, vec2<u32>(30618u, 0u)), Struct_1(vec4<bool>(true, true, false, false), 0i, vec3<bool>(false, false, true), 1i, vec2<u32>(1u, 4294967295u)), Struct_1(vec4<bool>(false, false, true, false), -6987i, vec3<bool>(false, false, false), -17712i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, true, true, false), -3044i, vec3<bool>(true, false, true), -1i, vec2<u32>(3333u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, false), 43244i, vec3<bool>(true, true, true), 13372i, vec2<u32>(38858u, 0u)), Struct_1(vec4<bool>(false, false, true, true), 46563i, vec3<bool>(false, true, false), -1i, vec2<u32>(11871u, 21818u)), Struct_1(vec4<bool>(true, false, true, true), -37969i, vec3<bool>(false, false, false), 0i, vec2<u32>(28900u, 0u)), Struct_1(vec4<bool>(true, true, true, true), 5748i, vec3<bool>(false, true, false), 43434i, vec2<u32>(4430u, 0u)), Struct_1(vec4<bool>(false, false, false, true), -1i, vec3<bool>(false, false, false), i32(-2147483648), vec2<u32>(18402u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, true), -21743i, vec3<bool>(true, false, true), 1i, vec2<u32>(15262u, 3431u)), Struct_1(vec4<bool>(false, true, false, true), -17215i, vec3<bool>(false, false, false), -5147i, vec2<u32>(34630u, 0u)), Struct_1(vec4<bool>(true, true, false, false), -7537i, vec3<bool>(false, false, true), 1i, vec2<u32>(1u, 1u)), Struct_1(vec4<bool>(false, false, false, true), 2147483647i, vec3<bool>(false, true, false), -36599i, vec2<u32>(1u, 26533u)), Struct_1(vec4<bool>(false, false, false, true), 2147483647i, vec3<bool>(false, false, false), 17609i, vec2<u32>(0u, 1u)), Struct_1(vec4<bool>(true, true, true, false), 1789i, vec3<bool>(false, false, false), -1i, vec2<u32>(1496u, 23694u)), Struct_1(vec4<bool>(false, false, true, false), 0i, vec3<bool>(false, false, true), -15524i, vec2<u32>(1u, 51348u)), Struct_1(vec4<bool>(false, true, true, false), 35845i, vec3<bool>(false, true, true), 2147483647i, vec2<u32>(1u, 29681u)), Struct_1(vec4<bool>(false, true, true, true), i32(-2147483648), vec3<bool>(false, false, false), 9592i, vec2<u32>(4835u, 4294967295u)), Struct_1(vec4<bool>(true, false, true, true), -12560i, vec3<bool>(true, true, true), 0i, vec2<u32>(4294967295u, 26118u)), Struct_1(vec4<bool>(false, false, false, true), -1i, vec3<bool>(true, true, true), -45314i, vec2<u32>(0u, 65397u)), Struct_1(vec4<bool>(false, false, true, true), 25193i, vec3<bool>(true, true, false), 2147483647i, vec2<u32>(33821u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, true), 1i, vec3<bool>(true, true, true), -45944i, vec2<u32>(737u, 4294967295u)), Struct_1(vec4<bool>(false, false, true, true), 0i, vec3<bool>(false, true, true), 0i, vec2<u32>(106081u, 18467u)), Struct_1(vec4<bool>(true, false, false, false), -34908i, vec3<bool>(false, false, false), 2147483647i, vec2<u32>(0u, 1u)), Struct_1(vec4<bool>(false, true, false, false), 358i, vec3<bool>(true, false, true), -13134i, vec2<u32>(4294967295u, 10381u)), Struct_1(vec4<bool>(true, true, false, false), 0i, vec3<bool>(false, true, true), i32(-2147483648), vec2<u32>(18281u, 2584u)), Struct_1(vec4<bool>(false, false, true, false), 19308i, vec3<bool>(true, false, true), 0i, vec2<u32>(4294967295u, 2786u)), Struct_1(vec4<bool>(true, false, false, false), 46128i, vec3<bool>(true, true, false), -891i, vec2<u32>(0u, 6050u)));

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), -1i, vec3<bool>(true, false, true), -21960i, vec2<u32>(4294967295u, 4294967295u));

var<private> global2: bool = false;

var<private> global3: vec2<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<i32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global1.e.x, global1.e.x), 31u)];
    global3 = vec2<u32>(4294967295u, 0u) << (countOneBits(~var_0.e) % vec2<u32>(32u));
    var var_1 = 1f;
    var var_2 = global3.x;
    var_2 = 1u << (~global1.e.x % 32u);
    return vec4<i32>(u_input.b.x, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(2147483647i), ~var_0.b), -(~u_input.a)), -19260i) << (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(global3.x, 81519u), var_0.e.x), global1.e.x, 66823u, ~_wgslsmith_dot_vec2_u32(global1.e | vec2<u32>(global1.e.x, global1.e.x), ~global1.e)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<i32>) -> u32 {
    global0 = array<Struct_1, 31>();
    global2 = !any(global1.c);
    global0 = array<Struct_1, 31>();
    var var_0 = Struct_1(vec4<bool>(global1.c.x, true, global1.c.x, any(global1.c)), _wgslsmith_add_i32(u_input.a.x, -2147483647i), global1.a.yzx, 1i, max(global1.e, global1.e));
    global3 = ~var_0.e;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(var_0.e.x, var_0.e.x, 1u, 58634u), vec4<u32>(115910u, 40420u, var_0.e.x, global1.e.x)), select(vec4<u32>(44935u, global1.e.x, 0u, global3.x), vec4<u32>(global3.x, 0u, global3.x, 866u), vec4<bool>(var_0.a.x, true, true, global1.c.x)), vec4<u32>(global1.e.x, var_0.e.x, global1.e.x, global1.e.x) >> (vec4<u32>(35629u, 19003u, var_0.e.x, 96323u) % vec4<u32>(32u)))), ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global1.e.x, global1.e.x, global3.x), vec4<u32>(var_0.e.x, global1.e.x, global1.e.x, global3.x)), select(vec4<u32>(var_0.e.x, 4294967295u, 23218u, 69667u), vec4<u32>(0u, 20470u, 39610u, global3.x), false), var_0.c.x & global1.c.x), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(46109u, 1u, var_0.e.x, var_0.e.x)), vec4<u32>(reverseBits(global1.e.x), abs(58651u), _wgslsmith_mult_u32(global3.x, 22836u), ~global3.x))), ~(~countOneBits(reverseBits(vec4<u32>(0u, var_0.e.x, global1.e.x, var_0.e.x)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    let var_0 = false;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~func_4(func_3()), abs(2218u)), 31u)];
    let var_2 = -1000f;
    var var_3 = Struct_1(select(!vec4<bool>(true, global1.c.x, arg_1.d <= 1i, any(vec3<bool>(true, arg_1.c.x, var_0))), arg_1.a, !(!vec4<bool>(var_1.a.x, true, false, false))), arg_1.d & var_1.b, arg_1.a.wzw, -32032i, ~(~vec2<u32>(0u, _wgslsmith_clamp_u32(0u, var_1.e.x, 4294967295u))));
    global1 = Struct_1(select(var_3.a, vec4<bool>(arg_1.c.x, var_0, global1.a.x, any(arg_1.c.zz)), 1979f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2411f + var_2)))), u_input.a.x, vec3<bool>(arg_1.c.x, any(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, arg_1.a.x | var_0)), false), arg_1.b, vec2<u32>(func_4(vec4<i32>(var_1.b, ~2147483647i, countOneBits(-2147483647i), _wgslsmith_div_i32(global1.b, arg_1.b))), global1.e.x));
    return arg_0.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = !(!(((arg_0 || arg_0) && func_2(vec2<bool>(false, false), Struct_1(vec4<bool>(arg_1.a.x, false, arg_1.c.x, true), global1.d, vec3<bool>(arg_1.c.x, false, global1.a.x), global1.b, vec2<u32>(arg_1.e.x, 0u)))) & (global1.d <= u_input.b.x)));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-873f)), _wgslsmith_f_op_f32(f32(-1f) * -1071f)) * _wgslsmith_f_op_f32(-567f - _wgslsmith_div_f32(2287f, -918f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-507f, _wgslsmith_f_op_f32(floor(1000f)), true)) + _wgslsmith_f_op_f32(911f + -1476f)) + 828f));
    var var_1 = firstLeadingBit(firstLeadingBit(~firstTrailingBit(vec3<u32>(global3.x, 103814u, global3.x))));
    var var_2 = global0[_wgslsmith_index_u32(var_1.x, 31u)];
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_1.e.x, var_2.e.x >> ((arg_2.e.x & 123287u) % 32u)), 31u)];
    return Struct_1(vec4<bool>(!(global1.c.x & (u_input.b.x != var_2.d)), true, any(global1.a), var_2.a.x | (arg_1.c.x | true)), -5990i, vec3<bool>(any(select(!arg_2.a.xx, select(arg_2.c.yz, vec2<bool>(var_2.a.x, arg_1.a.x), vec2<bool>(false, false)), select(var_2.a.ww, vec2<bool>(true, false), arg_1.c.x))), false, true), abs(~((arg_2.b << (global3.x % 32u)) ^ _wgslsmith_dot_vec2_i32(u_input.b.xw, u_input.b.zw))), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.e.x, ~arg_1.e.x >> (~40394u % 32u)), var_2.e, abs(vec2<u32>(34016u, var_2.e.x)) | _wgslsmith_clamp_vec2_u32(abs(arg_2.e), arg_1.e, ~vec2<u32>(arg_2.e.x, arg_1.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 31>();
    var var_0 = func_1(global1.a.x & global1.c.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global3.x, reverseBits(global3.x) >> (1u % 32u)), 1u), 31u)], Struct_1(vec4<bool>(true, global1.c.x, global1.c.x, false && global1.c.x), abs(~28271i), vec3<bool>(false, true, any(!vec3<bool>(true, global1.a.x, global1.a.x))), u_input.a.x, global1.e >> (~global1.e % vec2<u32>(32u))));
    var var_1 = vec4<bool>(!select(true, all(vec3<bool>(true, true, var_0.a.x)), any(func_1(true, global0[_wgslsmith_index_u32(global1.e.x, 31u)], global0[_wgslsmith_index_u32(global3.x, 31u)]).a)), !var_0.c.x, any(var_0.a.zx), any(!(!vec2<bool>(global1.a.x, false))) && false);
    let var_2 = Struct_1(select(!vec4<bool>(func_1(false, Struct_1(var_0.a, -12603i, vec3<bool>(true, false, var_0.a.x), global1.d, vec2<u32>(1u, global1.e.x)), global0[_wgslsmith_index_u32(global1.e.x, 31u)]).c.x, true, true, any(global1.a.yx)), global1.a, !global1.a), 55810i, vec3<bool>(var_0.c.x || select(false, select(var_1.x, false, var_0.a.x), -159i == var_0.d), var_1.x, all(!(!var_0.a.wx))), var_0.d, var_0.e);
    let var_3 = global1.e.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1587f)), _wgslsmith_f_op_f32(f32(-1f) * -643f)), 1051f, -884f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-544f, 429f)))))));
    global3 = reverseBits(vec2<u32>(var_0.e.x, var_0.e.x));
    var_1 = func_1(!var_0.c.x, func_1(!all(!var_2.a), Struct_1(func_1(any(vec3<bool>(var_2.a.x, true, var_1.x)), var_2, global0[_wgslsmith_index_u32(1u, 31u)]).a, global1.b, global1.a.zxw, -1i, var_0.e >> (vec2<u32>(global3.x, global1.e.x) % vec2<u32>(32u))), var_2), var_2).a;
    var var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

