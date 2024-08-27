struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<i32>(-12834i, 1i, 1i, -1i)), Struct_1(vec4<i32>(-15220i, -1i, 0i, -14504i)), Struct_1(vec4<i32>(-16821i, i32(-2147483648), -1i, 1i)), Struct_1(vec4<i32>(1i, -1i, 14056i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, 25746i, 2147483647i, 1i)), Struct_1(vec4<i32>(46271i, -1i, -6200i, -1i)), Struct_1(vec4<i32>(-35303i, 39981i, 1i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), 26056i, -10613i, -1i)), Struct_1(vec4<i32>(-3347i, i32(-2147483648), -29230i, 17001i)), Struct_1(vec4<i32>(-1i, 15756i, -50749i, 6385i)), Struct_1(vec4<i32>(1i, -45430i, -1820i, 0i)));

var<private> global1: bool = true;

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec4<bool>(true, false, false, false), -1i, 0i, Struct_1(vec4<i32>(1i, -71052i, i32(-2147483648), -1i)), Struct_1(vec4<i32>(-38271i, 0i, -4817i, 2147483647i))), Struct_2(vec4<bool>(false, false, true, true), -36036i, 0i, Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, -25489i)), Struct_1(vec4<i32>(-22135i, -55950i, i32(-2147483648), 1i))), Struct_2(vec4<bool>(false, true, true, false), -20330i, 0i, Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 23228i)), Struct_1(vec4<i32>(i32(-2147483648), 48670i, i32(-2147483648), 2147483647i))), Struct_2(vec4<bool>(true, true, true, true), 57392i, 43432i, Struct_1(vec4<i32>(-3908i, 2147483647i, -10899i, -27253i)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 4804i))), Struct_2(vec4<bool>(true, false, false, false), 2147483647i, 2147483647i, Struct_1(vec4<i32>(-15423i, 0i, -78245i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, 0i, -1906i, 0i))), Struct_2(vec4<bool>(false, false, false, true), -1i, 2147483647i, Struct_1(vec4<i32>(73592i, i32(-2147483648), 2147483647i, -21276i)), Struct_1(vec4<i32>(19421i, -20703i, i32(-2147483648), i32(-2147483648)))), Struct_2(vec4<bool>(false, false, true, true), 1i, -1i, Struct_1(vec4<i32>(-52490i, -18224i, 4563i, 0i)), Struct_1(vec4<i32>(-16479i, -1i, 2147483647i, -1i))), Struct_2(vec4<bool>(false, false, true, true), 0i, 1i, Struct_1(vec4<i32>(-1i, -39288i, -39589i, -22753i)), Struct_1(vec4<i32>(-54293i, -35355i, 1i, 0i))), Struct_2(vec4<bool>(true, false, true, false), -11920i, -12815i, Struct_1(vec4<i32>(-26068i, 0i, 1i, -54156i)), Struct_1(vec4<i32>(13943i, -5534i, 0i, i32(-2147483648)))), Struct_2(vec4<bool>(true, false, false, false), 7216i, -1i, Struct_1(vec4<i32>(1i, 53479i, -12067i, -3908i)), Struct_1(vec4<i32>(-1i, i32(-2147483648), -8125i, 2147483647i))), Struct_2(vec4<bool>(false, false, false, true), 10851i, 0i, Struct_1(vec4<i32>(18871i, -76853i, -62379i, 0i)), Struct_1(vec4<i32>(-14416i, 0i, 1405i, 0i))), Struct_2(vec4<bool>(true, true, false, false), -7468i, -1i, Struct_1(vec4<i32>(-35750i, -1i, 5761i, 34840i)), Struct_1(vec4<i32>(1i, -1i, 27675i, 2147483647i))), Struct_2(vec4<bool>(true, true, false, false), i32(-2147483648), 0i, Struct_1(vec4<i32>(13088i, 2147483647i, -30000i, 0i)), Struct_1(vec4<i32>(12226i, 1i, -1i, 1i))), Struct_2(vec4<bool>(false, true, false, false), -26737i, 2147483647i, Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, -32648i)), Struct_1(vec4<i32>(-34592i, -2711i, 1i, 2147483647i))), Struct_2(vec4<bool>(false, true, true, false), 13541i, -11958i, Struct_1(vec4<i32>(-38650i, -5175i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, -20249i, 1774i, i32(-2147483648)))), Struct_2(vec4<bool>(true, false, true, false), 2147483647i, i32(-2147483648), Struct_1(vec4<i32>(-3156i, 2147483647i, 37627i, -46250i)), Struct_1(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 24321i))), Struct_2(vec4<bool>(false, false, false, false), -22496i, -1i, Struct_1(vec4<i32>(i32(-2147483648), 4941i, 2147483647i, 29565i)), Struct_1(vec4<i32>(65955i, 2147483647i, -18908i, -1i))), Struct_2(vec4<bool>(false, true, true, true), 0i, -36003i, Struct_1(vec4<i32>(-1i, -1140i, 0i, 2147483647i)), Struct_1(vec4<i32>(-25180i, 0i, 3984i, 0i))), Struct_2(vec4<bool>(false, true, false, false), 34021i, -1i, Struct_1(vec4<i32>(-1i, 23045i, 0i, 13891i)), Struct_1(vec4<i32>(1i, 14387i, -4117i, -2513i))), Struct_2(vec4<bool>(true, true, false, false), -1i, 51880i, Struct_1(vec4<i32>(-19662i, -38201i, 0i, 32495i)), Struct_1(vec4<i32>(-12706i, -5246i, 1i, i32(-2147483648)))), Struct_2(vec4<bool>(true, true, false, false), 0i, 0i, Struct_1(vec4<i32>(57132i, -288i, 26685i, -1i)), Struct_1(vec4<i32>(2147483647i, -16184i, 27528i, i32(-2147483648)))));

var<private> global3: array<Struct_2, 18>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-2139f)), _wgslsmith_f_op_f32(1192f * _wgslsmith_f_op_f32(281f - -348f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-655f)), -1248f)), any(vec4<bool>(true, true, true, true))))));
    let var_1 = vec2<u32>(~_wgslsmith_mod_u32(abs(_wgslsmith_mod_u32(4294967295u, 4294967295u)), abs(_wgslsmith_div_u32(4294967295u, 5711u))), 1u);
    return _wgslsmith_div_u32(~firstTrailingBit(var_1.x), firstLeadingBit(_wgslsmith_mod_u32(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 25391u, 20490u), reverseBits(vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(func_3(), 21u)];
    let var_1 = vec3<i32>(-898i, _wgslsmith_sub_i32(6449i, u_input.a.x), countOneBits(reverseBits(var_0.c))) ^ firstLeadingBit(u_input.a);
    global0 = array<Struct_1, 11>();
    var var_2 = var_0.a.x & var_0.a.x;
    let var_3 = Struct_2(select(vec4<bool>(var_0.a.x, true, false, true), select(select(!var_0.a, !var_0.a, var_0.a.x), var_0.a, !(!var_0.a)), var_0.a.x), -6472i, arg_0.a.x, global0[_wgslsmith_index_u32(35876u, 11u)], var_0.e);
    return Struct_2(vec4<bool>(any(select(vec3<bool>(var_3.a.x, true, false), vec3<bool>(true, var_3.a.x, var_3.a.x), var_3.a.yyx)), true, true, !var_3.a.x | all(select(vec4<bool>(var_3.a.x, true, var_0.a.x, true), vec4<bool>(false, false, true, var_3.a.x), vec4<bool>(true, true, false, false)))), var_0.e.a.x, -19697i, global0[_wgslsmith_index_u32(reverseBits(~func_3()), 11u)], Struct_1(var_3.d.a));
}

fn func_1() -> Struct_2 {
    global1 = !(!(_wgslsmith_f_op_f32(-1743f + -478f) == _wgslsmith_f_op_f32(step(-559f, 1000f))));
    global1 = all(vec2<bool>(true, true));
    global0 = array<Struct_1, 11>();
    return func_2(Struct_1(reverseBits(vec4<i32>(~u_input.a.x, firstTrailingBit(u_input.a.x), min(4463i, -2147483647i), u_input.a.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1970f, -616f, 343f), vec4<f32>(-693f, 218f, 312f, -124f)))))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = vec3<u32>(~_wgslsmith_mult_u32(~select(36288u, 1u, false), 12515u), arg_2.x, arg_2.x);
    var var_1 = vec2<bool>(true, false && (true | all(!vec2<bool>(arg_0.a.x, arg_0.a.x))));
    let var_2 = func_1();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f + -1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1472f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-609f, 1875f), _wgslsmith_f_op_f32(sign(959f)))) * 156f)), 1f);
    global3 = array<Struct_2, 18>();
    return firstLeadingBit(_wgslsmith_sub_u32(2533u, 0u >> (_wgslsmith_mod_u32(func_3(), var_0.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.a.x, _wgslsmith_add_i32(-1i, ~(~firstLeadingBit(u_input.a.x))), u_input.a.x);
    var var_1 = vec2<u32>(firstLeadingBit(1u), reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(8782u, 18524u, 0u), vec3<u32>(4294967295u, 37476u, 1u) >> (vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u))), func_4(func_1(), Struct_1(vec4<i32>(var_0.x, u_input.a.x, var_0.x, -71266i)), ~vec3<u32>(0u, 7284u, 39835u)))));
    var var_2 = u_input.a.x;
    var var_3 = ~_wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(1u, var_1.x | 33943u) & (1u << (var_1.x % 32u)));
    var var_4 = var_1.x;
    var var_5 = vec4<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(func_2(func_2(global0[_wgslsmith_index_u32(var_1.x, 11u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(-1008f, 1649f, -1000f, 438f) + vec4<f32>(1764f, 1172f, -285f, -487f))).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1674f, 396f, -277f, 1320f) * vec4<f32>(-1223f, -1446f, 1916f, -3124f)))).a.wyx), 0u <= ~var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(sign(-1147f)))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f) - _wgslsmith_f_op_f32(-2170f - 3028f)))));
    global2 = array<Struct_2, 21>();
    var_3 = _wgslsmith_add_u32(0u, firstTrailingBit(_wgslsmith_mult_u32(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4379u, var_1.x), vec3<u32>(4294967295u, 8424u, 1u)))) ^ 84904u);
    var var_6 = global3[_wgslsmith_index_u32(4294967295u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_clamp_vec3_u32(min(~vec3<u32>(4294967295u, var_1.x, var_1.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 75468u, 1027u), vec3<u32>(var_1.x, 1525u, var_1.x), vec3<u32>(1u, var_1.x, var_1.x))), vec3<u32>(var_1.x, ~var_1.x, ~31307u), ~min(vec3<u32>(9611u, 33660u, 4294967295u), vec3<u32>(var_1.x, 56227u, 3573u)))), ~_wgslsmith_sub_vec2_u32(select(countOneBits(vec2<u32>(var_1.x, var_1.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 4297u), vec2<u32>(15814u, 5098u)), true), vec2<u32>(firstLeadingBit(var_1.x), abs(var_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(215f, 874f), _wgslsmith_f_op_f32(1596f + 134f), var_5.x)))), -1855f)), countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 25134u, 47015u, var_1.x) >> (vec4<u32>(0u, 1u, var_1.x, 31471u) % vec4<u32>(32u)), vec4<u32>(var_1.x, var_1.x, 4294967295u, var_1.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.x, 1u, var_1.x), vec4<u32>(1u, 92417u, 31610u, var_1.x)), ~vec4<u32>(0u, var_1.x, var_1.x, 47194u)))));
}

