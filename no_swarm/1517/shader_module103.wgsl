struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 32>;

var<private> global2: bool = true;

var<private> global3: array<u32, 16> = array<u32, 16>(4294967295u, 53760u, 1u, 4294967295u, 0u, 1u, 67010u, 4294967295u, 0u, 1u, 16409u, 1u, 15537u, 3467u, 1u, 4294967295u);

var<private> global4: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec2<u32>(23855u, 4294967295u), -1i), true, vec2<u32>(6316u, 25381u), vec2<bool>(true, false), vec2<f32>(1118f, 691f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), 42578i), false, vec2<u32>(0u, 68710u), vec2<bool>(false, false), vec2<f32>(411f, -247f)), Struct_2(Struct_1(vec2<u32>(1u, 773u), 51956i), false, vec2<u32>(1u, 1u), vec2<bool>(true, false), vec2<f32>(347f, 345f)), Struct_2(Struct_1(vec2<u32>(33724u, 0u), -1i), true, vec2<u32>(15882u, 0u), vec2<bool>(false, false), vec2<f32>(-241f, 1000f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 32882u), -31031i), true, vec2<u32>(0u, 45u), vec2<bool>(false, true), vec2<f32>(545f, 264f)), Struct_2(Struct_1(vec2<u32>(61316u, 0u), 2147483647i), true, vec2<u32>(1u, 4294967295u), vec2<bool>(false, false), vec2<f32>(-1000f, -766f)), Struct_2(Struct_1(vec2<u32>(23574u, 32027u), i32(-2147483648)), true, vec2<u32>(65665u, 107150u), vec2<bool>(false, false), vec2<f32>(744f, 1000f)), Struct_2(Struct_1(vec2<u32>(24849u, 0u), i32(-2147483648)), true, vec2<u32>(25303u, 1u), vec2<bool>(true, true), vec2<f32>(-170f, 689f)), Struct_2(Struct_1(vec2<u32>(1u, 14125u), 51001i), false, vec2<u32>(1u, 0u), vec2<bool>(true, false), vec2<f32>(997f, -1000f)), Struct_2(Struct_1(vec2<u32>(1u, 1u), 40082i), false, vec2<u32>(10273u, 1u), vec2<bool>(false, false), vec2<f32>(-607f, 580f)), Struct_2(Struct_1(vec2<u32>(11462u, 62086u), -126754i), true, vec2<u32>(0u, 55594u), vec2<bool>(true, true), vec2<f32>(523f, 1010f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 13966u), -27104i), false, vec2<u32>(89830u, 77998u), vec2<bool>(false, true), vec2<f32>(-299f, 1235f)), Struct_2(Struct_1(vec2<u32>(0u, 22331u), 1i), true, vec2<u32>(0u, 11437u), vec2<bool>(false, false), vec2<f32>(-1141f, -588f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), i32(-2147483648)), false, vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false), vec2<f32>(-225f, -1000f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 10464u), -1i), true, vec2<u32>(4294967295u, 0u), vec2<bool>(false, true), vec2<f32>(-2838f, -174f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    global2 = 1i == (reverseBits(-(u_input.b.x & -3976i)) & arg_0.x);
    let var_0 = vec2<bool>((global1[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(u_input.c.x, 16u)]) >> (1u % 32u), 32u)] & 1u) != countOneBits(_wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(32294u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 16u)], 16u)], u_input.c.x, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 65872u, u_input.c.x)), 32u)])), false | select(any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true))), (global3[_wgslsmith_index_u32(u_input.d.x, 16u)] <= 0u) & true, true));
    global2 = all(var_0);
    var var_1 = !vec2<bool>(any(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, false), vec3<bool>(false, var_0.x, false))), var_0.x);
    let var_2 = -arg_0.x;
    return Struct_3(11137u);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    var var_0 = false;
    var var_1 = !arg_1.x;
    var_0 = false;
    global4 = array<Struct_2, 15>();
    let var_2 = func_2(u_input.b);
    return ~(-10309i);
}

fn func_3() -> bool {
    global4 = array<Struct_2, 15>();
    var var_0 = vec3<i32>(-38933i, u_input.b.x, i32(-1i) * -44007i);
    let var_1 = global4[_wgslsmith_index_u32(~(_wgslsmith_add_u32(_wgslsmith_mod_u32(69616u, 4294967295u), func_2(u_input.b).a) & countOneBits(~u_input.a.x)) << (u_input.a.x % 32u), 15u)];
    let var_2 = vec4<i32>(-_wgslsmith_mult_i32(i32(-1i) * -4043i, var_0.x), ~(-(~(var_1.a.b >> (var_1.c.x % 32u)))), _wgslsmith_mult_i32(2147483647i, min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b, 2147483647i, u_input.b.x, 36847i), vec4<i32>(u_input.b.x, 1i, 1i, var_0.x)) >> (~global3[_wgslsmith_index_u32(38085u, 16u)] % 32u), -(~2147483647i))), _wgslsmith_add_i32(var_0.x, 25130i));
    var_0 = firstLeadingBit(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(-firstTrailingBit(var_2), vec4<i32>(0i, var_1.a.b, ~var_2.x, _wgslsmith_mod_i32(15196i, var_0.x))), 2498i));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 15>();
    global2 = !(~_wgslsmith_dot_vec3_i32(u_input.e & vec3<i32>(-20201i, -2147483647i, u_input.e.x), abs(vec3<i32>(u_input.e.x, u_input.b.x, u_input.b.x))) <= _wgslsmith_mult_i32(func_1(Struct_2(Struct_1(u_input.d, -1i), false, u_input.d, vec2<bool>(true, true), vec2<f32>(-1021f, -1210f)), vec3<bool>(true, true, true), true), u_input.b.x));
    var var_0 = any(vec2<bool>(true, true));
    let var_1 = global4[_wgslsmith_index_u32(~func_2(_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(28922i, 1i, -6865i)), min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-41117i, -2147483647i, u_input.b.x)), u_input.b), max(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 7213i, 46767i), vec3<i32>(0i, u_input.b.x, u_input.e.x)), vec3<i32>(u_input.b.x, u_input.e.x, -2147483647i)))).a, 15u)];
    var_0 = select(all(select(!vec3<bool>(var_1.b, false, true), vec3<bool>(true, !var_1.b, any(vec4<bool>(false, false, var_1.b, var_1.d.x))), var_1.d.x)), func_3(), var_1.d.x);
    global2 = true;
    var_0 = u_input.c.x <= ~(~(43308u & u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)), vec3<i32>(_wgslsmith_clamp_i32(u_input.e.x, var_1.a.b, abs(var_1.a.b << (u_input.c.x % 32u))), var_1.a.b, -72720i >> (u_input.c.x % 32u)), ~firstTrailingBit(select(vec3<u32>(1u, 1u, global3[_wgslsmith_index_u32(var_1.a.a.x, 16u)]), u_input.c.xyx, true)));
}

