struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<u32>(4294967295u, 10478u, 11484u), 1526f, vec4<u32>(80522u, 29222u, 46520u, 26839u), -1i), Struct_1(vec3<u32>(48842u, 35600u, 1u), -132f, vec4<u32>(5042u, 0u, 33770u, 9176u), i32(-2147483648)), Struct_1(vec3<u32>(30165u, 46101u, 1u), 2005f, vec4<u32>(23596u, 1u, 5963u, 5937u), 2147483647i), Struct_1(vec3<u32>(0u, 4294967295u, 10252u), 583f, vec4<u32>(4294967295u, 350u, 28856u, 4294967295u), 48529i), Struct_1(vec3<u32>(78096u, 56912u, 0u), -2119f, vec4<u32>(4294967295u, 0u, 0u, 42373u), 32402i), Struct_1(vec3<u32>(35761u, 1u, 61668u), -1333f, vec4<u32>(43683u, 0u, 83518u, 4294967295u), -20117i), Struct_1(vec3<u32>(4294967295u, 1u, 34831u), -269f, vec4<u32>(5528u, 18359u, 9555u, 56640u), -1i), Struct_1(vec3<u32>(4294967295u, 0u, 46900u), -471f, vec4<u32>(1u, 0u, 1u, 0u), i32(-2147483648)), Struct_1(vec3<u32>(6459u, 75505u, 6089u), 782f, vec4<u32>(64406u, 1u, 0u, 70960u), 2147483647i), Struct_1(vec3<u32>(63826u, 1u, 45725u), 914f, vec4<u32>(2223u, 29103u, 37325u, 31299u), 24762i), Struct_1(vec3<u32>(80906u, 110569u, 19230u), -1321f, vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), -25683i), Struct_1(vec3<u32>(7309u, 0u, 41796u), -1376f, vec4<u32>(4308u, 0u, 22835u, 62853u), i32(-2147483648)), Struct_1(vec3<u32>(1u, 8941u, 42498u), 2035f, vec4<u32>(0u, 0u, 17540u, 54135u), 2147483647i), Struct_1(vec3<u32>(15463u, 21638u, 6509u), -822f, vec4<u32>(57379u, 4294967295u, 62283u, 67897u), 1i), Struct_1(vec3<u32>(0u, 1u, 5231u), -1000f, vec4<u32>(27905u, 0u, 26960u, 0u), -21215i), Struct_1(vec3<u32>(4294967295u, 52918u, 1u), -2022f, vec4<u32>(4294967295u, 0u, 0u, 322u), i32(-2147483648)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_1(~reverseBits(vec3<u32>(~45755u, abs(u_input.c), arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, arg_1.b) * _wgslsmith_f_op_f32(abs(-418f))), arg_0.b) - _wgslsmith_f_op_f32(ceil(arg_0.b))), abs(arg_0.c), u_input.a);
    var var_1 = select(var_0.a, vec3<u32>(1u >> (arg_2.x % 32u), u_input.c, arg_1.c.x), vec3<bool>(all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true))), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), true));
    var var_2 = var_0;
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    return vec3<bool>(select(_wgslsmith_mod_i32(1i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d, -2147483647i, arg_0.d), vec3<i32>(-1i, -5459i, var_0.d)) >> ((17723u | var_2.c.x) % 32u), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))) > arg_1.d, -(-1i << (~u_input.c % 32u)) == 38628i, false);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(54137u, 16u)];
    let var_1 = (-445f > _wgslsmith_f_op_f32(-var_0.b)) && any(arg_1);
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_div_u32(var_0.c.x, 4294967295u), 64439u), _wgslsmith_sub_u32(var_0.a.x ^ 1u, 0u), 1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 90299u, var_0.c.x), _wgslsmith_add_vec3_u32(var_0.a, vec3<u32>(7060u, var_0.a.x, u_input.c))), 40595u))), 16u)];
    return ~u_input.c;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(14055u, ~(~u_input.c), ~(u_input.c ^ u_input.c)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)))), 1f, ~vec4<u32>(_wgslsmith_mult_u32(~2790u, u_input.c), u_input.c, ~(~40982u), 0u), _wgslsmith_sub_i32(u_input.b.x, u_input.a) >> (func_4(2147483647i > firstTrailingBit(u_input.a), func_3(global0[_wgslsmith_index_u32(~u_input.c, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, 50683u, u_input.c), vec4<u32>(1u, 21339u, 0u, u_input.c)))) % 32u));
    global0 = array<Struct_1, 16>();
    var var_1 = Struct_1(vec3<u32>(u_input.c << (min(1u, 0u) % 32u), ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0.a.x, 0u)), ~vec2<u32>(var_0.c.x, var_0.c.x)), u_input.c), -1048f, select(vec4<u32>(var_0.c.x, 0u & ~var_0.a.x, var_0.a.x, abs(countOneBits(0u))), ~abs(var_0.c), true), abs(1i) | _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.d, -29666i), _wgslsmith_sub_i32(u_input.b.x ^ u_input.b.x, -14678i)));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.b))))), 1134f, 1021f), vec3<f32>(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -852f)) - 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + 860f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-294f * -130f) - _wgslsmith_f_op_f32(max(var_1.b, var_1.b))))));
    global0 = array<Struct_1, 16>();
    return min(~1u, var_0.c.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> f32 {
    global0 = array<Struct_1, 16>();
    var var_0 = -1i;
    var var_1 = -(~max(-9562i, -(~u_input.b.x)));
    var var_2 = ~abs(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -22459i), u_input.b, u_input.b))) | _wgslsmith_mult_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 1i), u_input.b) ^ vec2<i32>(~(-37303i), ~u_input.a), abs(u_input.b));
    var var_3 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~4294967295u, 15309u), ~func_2()), 72628u << (u_input.c % 32u), ~(~1u)) >> (vec3<u32>(countOneBits(u_input.c), 38557u, _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 0u), ~arg_1) | 90191u) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f) * _wgslsmith_f_op_f32(max(590f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f * -432f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(207f * 1375f) + _wgslsmith_f_op_f32(trunc(-263f)))))));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_0 = arg_1;
    var var_1 = var_0;
    return vec3<bool>(all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true)))) | any(vec3<bool>(all(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, false, true, false)), true)), !(func_4(true, func_3(Struct_1(var_1.a, -1522f, vec4<u32>(var_0.c.x, var_0.a.x, 30388u, arg_1.a.x), var_0.d), global0[_wgslsmith_index_u32(1u, 16u)], var_1.c)) >= 1u), 1i <= var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), 27619u)) - -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), u_input.c)) - -666f)), Struct_1(vec3<u32>(u_input.c, u_input.c, min(u_input.c, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1027f, -1948f)), ~vec4<u32>(62951u, u_input.c, 43045u, u_input.c), u_input.b.x)), !func_3(Struct_1(vec3<u32>(u_input.c, u_input.c, 25273u) & vec3<u32>(0u, u_input.c, 4294967295u), _wgslsmith_f_op_f32(1214f + -1283f), ~vec4<u32>(9203u, u_input.c, 66346u, 56695u), u_input.a), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c, u_input.c), 16u)], abs(countOneBits(vec4<u32>(41203u, u_input.c, 2420u, 12065u)))), select(false, false, true));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.c, 90953u, 0u)), select(vec3<u32>(u_input.c, 47090u, u_input.c), ~vec3<u32>(u_input.c, u_input.c, 0u), func_3(Struct_1(vec3<u32>(4294967295u, u_input.c, u_input.c), 519f, vec4<u32>(6366u, 4294967295u, 25994u, 1u), u_input.a), global0[_wgslsmith_index_u32(u_input.c, 16u)], vec4<u32>(u_input.c, 21834u, 4294967295u, 0u))), firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.c, 1u, 4294967295u)))), vec3<u32>(u_input.c, abs(30162u & u_input.c), _wgslsmith_div_u32(11774u, u_input.c) ^ ~1u)), -1053f, ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(u_input.c, u_input.c, u_input.c, 15347u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, 1u, u_input.c), vec4<u32>(57693u, 0u, 112970u, u_input.c)))), _wgslsmith_sub_i32(-1i, -1i));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~_wgslsmith_div_u32(4294967295u, var_1.a.x)) >> (u_input.c % 32u), 1u), 16u)];
    let var_3 = var_1;
    let var_4 = var_0.x;
    var var_5 = true;
    var var_6 = var_1;
    var_2 = Struct_1(var_2.c.yyx, 1000f, select(vec4<u32>(2560u, ~52089u, var_3.a.x, ~func_2()), vec4<u32>(countOneBits(~40680u), 17096u, var_3.a.x, select(19917u, ~var_3.a.x, any(vec3<bool>(true, var_0.x, var_0.x)))), vec4<bool>(!(var_3.b == var_3.b), var_0.x, true, any(vec3<bool>(false, var_0.x, var_0.x)))), -_wgslsmith_div_i32(24165i, -9468i));
    let var_7 = Struct_1(var_2.c.yxy, _wgslsmith_f_op_f32(round(181f)), vec4<u32>(39415u, ~_wgslsmith_sub_u32(~var_3.c.x, ~u_input.c), 1u, var_1.a.x), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(318f, 1418f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, var_2.b) * vec2<f32>(496f, var_2.b))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, var_1.b) * vec2<f32>(var_7.b, -957f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_7.b, var_6.b) * vec2<f32>(var_1.b, -208f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(569f, 544f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-885f, var_1.b) * vec2<f32>(var_7.b, var_3.b))))))), vec3<u32>(36670u, 11028u, ~u_input.c));
}

