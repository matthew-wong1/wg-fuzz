struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<u32>(4294967295u, 29022u), 33267u), Struct_1(vec2<u32>(33461u, 14177u), 75438u), Struct_1(vec2<u32>(9943u, 0u), 4294967295u), Struct_1(vec2<u32>(4294967295u, 1u), 219u), Struct_1(vec2<u32>(0u, 690u), 0u), Struct_1(vec2<u32>(0u, 4294967295u), 8207u), Struct_1(vec2<u32>(6675u, 0u), 1u), Struct_1(vec2<u32>(47051u, 0u), 6399u), Struct_1(vec2<u32>(35412u, 105914u), 1u), Struct_1(vec2<u32>(1u, 4294967295u), 4294967295u), Struct_1(vec2<u32>(4294967295u, 56216u), 59700u), Struct_1(vec2<u32>(0u, 4294967295u), 0u), Struct_1(vec2<u32>(30081u, 85798u), 49968u), Struct_1(vec2<u32>(0u, 0u), 0u), Struct_1(vec2<u32>(2540u, 27363u), 4294967295u), Struct_1(vec2<u32>(1u, 4294967295u), 19280u), Struct_1(vec2<u32>(0u, 4294967295u), 49790u), Struct_1(vec2<u32>(1u, 0u), 21371u), Struct_1(vec2<u32>(55230u, 0u), 4294967295u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 4294967295u), Struct_1(vec2<u32>(1u, 4294967295u), 7931u), Struct_1(vec2<u32>(43489u, 0u), 29280u), Struct_1(vec2<u32>(1u, 4796u), 4294967295u));

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<u32>(12458u, 82578u), 19621u), Struct_1(vec2<u32>(7088u, 35416u), 4294967295u), Struct_1(vec2<u32>(49666u, 6476u), 0u), Struct_1(vec2<u32>(32984u, 4294967295u), 4294967295u), Struct_1(vec2<u32>(13196u, 69473u), 37664u), Struct_1(vec2<u32>(4294967295u, 0u), 0u), Struct_1(vec2<u32>(22578u, 47319u), 19887u), Struct_1(vec2<u32>(4294967295u, 58998u), 1u), Struct_1(vec2<u32>(4294967295u, 1u), 4294967295u), Struct_1(vec2<u32>(5164u, 5272u), 1u), Struct_1(vec2<u32>(108321u, 22593u), 26708u), Struct_1(vec2<u32>(4494u, 82723u), 4294967295u), Struct_1(vec2<u32>(14118u, 58378u), 4294967295u), Struct_1(vec2<u32>(50312u, 16849u), 4294967295u), Struct_1(vec2<u32>(35821u, 1u), 37366u), Struct_1(vec2<u32>(1u, 62341u), 0u), Struct_1(vec2<u32>(18924u, 0u), 0u), Struct_1(vec2<u32>(1u, 32043u), 104664u), Struct_1(vec2<u32>(0u, 99254u), 15744u), Struct_1(vec2<u32>(58455u, 1u), 4294967295u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 55799u), Struct_1(vec2<u32>(9624u, 42214u), 1u), Struct_1(vec2<u32>(62076u, 52907u), 1u), Struct_1(vec2<u32>(107186u, 8423u), 4294967295u));

var<private> global2: array<f32, 31> = array<f32, 31>(-1894f, -1394f, -852f, -836f, 848f, -192f, 168f, 221f, 500f, 888f, -1361f, 664f, -664f, -393f, -1161f, 598f, 107f, 1153f, -2505f, -930f, 1010f, 1000f, -896f, 820f, -1213f, 2040f, 906f, 1178f, -119f, -743f, 209f);

var<private> global3: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(0u, 23781u), 1u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 18480u, 4294967295u, 1u)), u_input.a));
    let var_1 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 31u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 31u)]) * -657f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(24878u, 31u)])))) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~var_0.b, 31u)] * _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(~20313u, 31u)], _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(51112u, 31u)])))))));
    var var_2 = true;
    global1 = array<Struct_1, 24>();
    var_2 = true;
    return !(select(true, true, false || all(vec4<bool>(true, false, false, true))) | (true | any(vec4<bool>(true, true, true, true))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = 15281i;
    var var_1 = Struct_1(arg_2.a, arg_0);
    global1 = array<Struct_1, 24>();
    let var_2 = Struct_1(select(vec2<u32>(4294967295u, var_1.a.x), ~(_wgslsmith_mult_vec2_u32(vec2<u32>(39468u, arg_2.b), vec2<u32>(arg_2.a.x, 4294967295u)) ^ vec2<u32>(var_1.a.x, 66593u)), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(false, true, true)))), ~u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -374f), -1212f, 296f)))));
    return arg_2.b;
}

fn func_2(arg_0: f32, arg_1: bool) -> vec4<i32> {
    var var_0 = Struct_1(vec2<u32>(u_input.a.x, func_3(0u, _wgslsmith_mod_i32(-13294i, 1i), global0[_wgslsmith_index_u32(0u, 23u)])), ~select(~(~u_input.a.x), _wgslsmith_add_u32(~u_input.a.x, 90710u), !(arg_1 == arg_1)));
    let var_1 = -max(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(17237i, 0i, 36368i), vec3<i32>(-26801i, 10920i, 1i)), -4539i, _wgslsmith_add_i32(-26909i, -2410i), _wgslsmith_mod_i32(-2147483647i, -52602i)), abs(select(vec4<i32>(0i, 6042i, 45166i, 45501i), vec4<i32>(-30450i, -2147483647i, -1i, 38366i), arg_1))), _wgslsmith_mult_i32(abs(countOneBits(0i)), -countOneBits(-28093i)));
    global0 = array<Struct_1, 23>();
    var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 24u)];
    var var_2 = -(_wgslsmith_clamp_i32(0i, _wgslsmith_add_i32(min(var_1, var_1), var_1), -22821i) << (u_input.a.x % 32u));
    return reverseBits(vec4<i32>(var_1, ~var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(1724i, ~var_1), vec2<i32>(var_1, i32(-1i) * -2147483647i)), firstTrailingBit(abs(2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    var var_0 = global0[_wgslsmith_index_u32(30680u, 23u)];
    var var_1 = _wgslsmith_mult_i32(-38765i, _wgslsmith_mult_i32(-55403i, _wgslsmith_clamp_i32(1i, min(22136i, -1i), abs(-383i)))) >> (~(~var_0.b) % 32u);
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.yxy, vec3<u32>(0u, 10338u, 4294967295u)), 31u)])))), func_1(global0[_wgslsmith_index_u32(u_input.a.x, 23u)]));
    let var_3 = true;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(94880u, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 39697u, 36764u), u_input.a.xzw))) >> (1704u % 32u), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u << (~(u_input.a.x >> (4294967295u % 32u)) % 32u), var_4.b);
}

