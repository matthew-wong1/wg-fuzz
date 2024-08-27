struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(99030u, 0i, vec4<u32>(0u, 1u, 31891u, 22680u), 0u, vec2<i32>(21511i, -1i)), Struct_1(4294967295u, 37157i, vec4<u32>(4294967295u, 8376u, 4294967295u, 0u), 57744u, vec2<i32>(i32(-2147483648), 31585i)), Struct_1(0u, i32(-2147483648), vec4<u32>(13424u, 1u, 10423u, 14603u), 1u, vec2<i32>(11597i, -1i)), Struct_1(15157u, -1i, vec4<u32>(108715u, 40827u, 4294967295u, 1u), 53479u, vec2<i32>(-25213i, 1417i)), Struct_1(1u, 12920i, vec4<u32>(1u, 35701u, 1u, 23532u), 1u, vec2<i32>(i32(-2147483648), -171i)), Struct_1(4294967295u, 1i, vec4<u32>(0u, 1u, 29349u, 0u), 11518u, vec2<i32>(0i, i32(-2147483648))), Struct_1(0u, -1i, vec4<u32>(24039u, 1u, 4294967295u, 4294967295u), 64489u, vec2<i32>(2147483647i, 79229i)), Struct_1(0u, -46912i, vec4<u32>(4294967295u, 18853u, 37402u, 4294967295u), 4294967295u, vec2<i32>(-56947i, 18347i)), Struct_1(0u, 0i, vec4<u32>(408u, 0u, 0u, 7769u), 1u, vec2<i32>(-25255i, -1i)), Struct_1(33836u, 46784i, vec4<u32>(10574u, 37002u, 37837u, 1u), 1u, vec2<i32>(i32(-2147483648), 0i)), Struct_1(4294967295u, 2147483647i, vec4<u32>(1u, 9212u, 0u, 3008u), 1u, vec2<i32>(2147483647i, 1i)), Struct_1(51994u, 2147483647i, vec4<u32>(116221u, 29364u, 44276u, 57106u), 4294967295u, vec2<i32>(13668i, -14396i)), Struct_1(17630u, i32(-2147483648), vec4<u32>(0u, 41211u, 4294967295u, 6269u), 52110u, vec2<i32>(-17573i, -40431i)), Struct_1(15708u, -21145i, vec4<u32>(39497u, 1u, 1u, 4294967295u), 33276u, vec2<i32>(39626i, -4418i)), Struct_1(48548u, 3312i, vec4<u32>(9440u, 0u, 0u, 1u), 30317u, vec2<i32>(-1i, -1i)), Struct_1(11406u, 0i, vec4<u32>(11272u, 49765u, 109941u, 29796u), 1u, vec2<i32>(-43837i, 31924i)), Struct_1(2340u, -8086i, vec4<u32>(1u, 35192u, 4294967295u, 27542u), 4294967295u, vec2<i32>(2147483647i, 38668i)), Struct_1(4294967295u, -1i, vec4<u32>(0u, 0u, 4294967295u, 0u), 0u, vec2<i32>(1i, 2147483647i)), Struct_1(4294967295u, -33416i, vec4<u32>(0u, 62916u, 27487u, 4294967295u), 10821u, vec2<i32>(i32(-2147483648), -55027i)), Struct_1(4982u, -1i, vec4<u32>(7723u, 4294967295u, 32179u, 32998u), 110195u, vec2<i32>(5878i, 64011i)), Struct_1(4294967295u, 1i, vec4<u32>(4294967295u, 1u, 1u, 1u), 10459u, vec2<i32>(-1i, 9749i)), Struct_1(92203u, -6770i, vec4<u32>(2173u, 4294967295u, 71078u, 52243u), 1u, vec2<i32>(-1i, -35961i)), Struct_1(4294967295u, 0i, vec4<u32>(23012u, 1u, 1u, 12824u), 40156u, vec2<i32>(26947i, i32(-2147483648))), Struct_1(4294967295u, -1i, vec4<u32>(1u, 4294967295u, 4294967295u, 65779u), 28842u, vec2<i32>(i32(-2147483648), -1i)), Struct_1(37671u, -5283i, vec4<u32>(4294967295u, 4294967295u, 60570u, 4294967295u), 58343u, vec2<i32>(1i, -1i)), Struct_1(4294967295u, i32(-2147483648), vec4<u32>(49501u, 4294967295u, 1u, 4294967295u), 2783u, vec2<i32>(0i, 61954i)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -570f)))), global0.x, _wgslsmith_f_op_f32(global0.x - global0.x), global0.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(779f, -1000f, 1585f, 1517f) - vec4<f32>(-752f, -416f, -438f, 187f))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -186f)), global0.x, -2517f)));
    global1 = array<Struct_1, 26>();
    var var_0 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))), vec4<bool>(true, any(vec4<bool>(true, false, true, false)), true, false), vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, -469f, true)) - 850f)))));
    return global1[_wgslsmith_index_u32(u_input.a.x, 26u)];
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = arg_3;
    let var_1 = 0i;
    let var_2 = func_2();
    var_0 = false;
    global1 = array<Struct_1, 26>();
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(global0.xx))))));
    let var_1 = Struct_1(_wgslsmith_mult_u32(u_input.a.x, select(_wgslsmith_clamp_u32(arg_3.x, 1u, 45135u), arg_3.x, all(vec4<bool>(false, arg_2, true, arg_2))) << (min(u_input.a.x, arg_3.x) % 32u)), _wgslsmith_add_i32(max(u_input.b.x, -2147483647i), abs(~(-u_input.b.x))), vec4<u32>(arg_3.x, 14697u, 104138u, u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u), ~(-(~u_input.b.xy)));
    var var_2 = global0.yxy;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)))), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(1140f + -873f))), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(floor(var_2.x))), -497f);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1891f);
    return vec4<f32>(-858f, -1000f, 1029f, -505f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2334f, _wgslsmith_f_op_f32(1000f * global0.x), _wgslsmith_f_op_f32(global0.x - -577f), _wgslsmith_f_op_f32(step(-1704f, global0.x)))) * _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(9949u, u_input.b.x, vec4<u32>(70428u, u_input.a.x, u_input.a.x, 1u), u_input.a.x, vec2<i32>(u_input.b.x, u_input.b.x)), 1i, global1[_wgslsmith_index_u32(47881u, 26u)], true)) + _wgslsmith_f_op_f32(max(global0.x, global0.x))), u_input.b.x, false, vec4<u32>(u_input.a.x >> (19137u % 32u), 74474u, 1u, ~u_input.a.x)))), _wgslsmith_div_vec2_i32(u_input.b.zz, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.zx, u_input.b.xz), vec2<i32>(1i, u_input.b.x)), abs(-vec2<i32>(38102i, u_input.b.x)))), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 50287u, u_input.a.x, u_input.a.x) & vec4<u32>(14166u, 69555u, u_input.a.x, u_input.a.x), func_2().c)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, -76300i) >> (~u_input.a.x % 32u), abs(u_input.b.x) >> (u_input.a.x % 32u), 30951i, u_input.b.x), _wgslsmith_clamp_vec4_i32(~firstTrailingBit(vec4<i32>(-25008i, u_input.b.x, -68231i, u_input.b.x)), vec4<i32>(firstTrailingBit(u_input.b.x), u_input.b.x ^ u_input.b.x, u_input.b.x, u_input.b.x), ~select(vec4<i32>(u_input.b.x, 2147483647i, 37934i, -391i), vec4<i32>(-1i, 1i, u_input.b.x, u_input.b.x), vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-591f, 151f))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-global0.x))), -1089f))));
}

