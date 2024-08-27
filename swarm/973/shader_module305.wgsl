struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(false, vec2<i32>(-6860i, -1i)), Struct_1(false, vec2<i32>(0i, -18024i)), Struct_1(false, vec2<i32>(1i, 1i)), Struct_1(false, vec2<i32>(-1i, -1i)), Struct_1(true, vec2<i32>(-70972i, 0i)), Struct_1(true, vec2<i32>(i32(-2147483648), 0i)), Struct_1(true, vec2<i32>(-57277i, 0i)), Struct_1(false, vec2<i32>(-72463i, -1i)), Struct_1(true, vec2<i32>(53069i, 1i)), Struct_1(true, vec2<i32>(0i, -1i)), Struct_1(true, vec2<i32>(24585i, 1i)), Struct_1(false, vec2<i32>(1i, -17222i)), Struct_1(false, vec2<i32>(-43265i, 1i)), Struct_1(false, vec2<i32>(2147483647i, 0i)), Struct_1(false, vec2<i32>(0i, -1i)), Struct_1(false, vec2<i32>(1i, 1i)), Struct_1(true, vec2<i32>(5260i, 0i)), Struct_1(false, vec2<i32>(0i, 1i)), Struct_1(true, vec2<i32>(i32(-2147483648), -20193i)), Struct_1(false, vec2<i32>(30835i, 1i)), Struct_1(false, vec2<i32>(-19225i, 69375i)), Struct_1(false, vec2<i32>(0i, i32(-2147483648))), Struct_1(false, vec2<i32>(-18793i, -4092i)), Struct_1(true, vec2<i32>(0i, -1i)), Struct_1(false, vec2<i32>(i32(-2147483648), -26583i)), Struct_1(false, vec2<i32>(-1i, 3858i)), Struct_1(true, vec2<i32>(0i, -25426i)), Struct_1(true, vec2<i32>(-47902i, 0i)));

var<private> global1: i32 = 1i;

var<private> global2: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(11002u, 0u, 4294967295u), vec3<u32>(1002u, 96778u, 30976u), vec3<u32>(35684u, 42205u, 4294967295u), vec3<u32>(92166u, 924u, 0u), vec3<u32>(59896u, 0u, 1u), vec3<u32>(0u, 0u, 39909u), vec3<u32>(25518u, 0u, 11821u), vec3<u32>(40039u, 9450u, 0u), vec3<u32>(1u, 7896u, 4294967295u), vec3<u32>(0u, 15224u, 71834u), vec3<u32>(28629u, 1u, 49864u), vec3<u32>(6184u, 0u, 67788u), vec3<u32>(52921u, 17597u, 20157u), vec3<u32>(0u, 94381u, 55956u), vec3<u32>(55532u, 15278u, 4294967295u));

var<private> global3: Struct_1 = Struct_1(true, vec2<i32>(0i, -68895i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>) -> i32 {
    let var_0 = ~reverseBits(global3.b.x);
    let var_1 = ~(~1u);
    global2 = array<vec3<u32>, 15>();
    let var_2 = Struct_2(Struct_1(all(!select(vec4<bool>(global3.a, global3.a, global3.a, false), vec4<bool>(global3.a, false, false, true), false)), -u_input.a.zx));
    let var_3 = Struct_1(all(vec3<bool>(var_2.a.a, global3.a, var_2.a.a)), ~(-_wgslsmith_div_vec2_i32(vec2<i32>(21038i, 1i), ~var_2.a.b)));
    return abs(~global3.b.x);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(1i < func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1052f, 997f, -1000f, 126f)))), vec2<f32>(_wgslsmith_div_f32(190f, 305f), _wgslsmith_f_op_f32(f32(-1f) * -542f))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(firstTrailingBit(~vec2<i32>(arg_0.b.x, u_input.a.x))), firstTrailingBit(~vec2<i32>(u_input.a.x, 33302i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) % vec2<u32>(32u)), global3.b));
    global0 = array<Struct_1, 28>();
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(min(1u, ~32102u), ~1u, ~1u << (_wgslsmith_clamp_u32(0u, 4294967295u, 55823u) % 32u)), ~abs(vec3<u32>(19112u, 60339u, 0u) | global2[_wgslsmith_index_u32(27208u, 15u)])), 73941u);
    global2 = array<vec3<u32>, 15>();
    let var_2 = _wgslsmith_mod_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(61055u, var_1, 0u, var_1), vec4<u32>(1u, 0u, 0u, 23933u)) >> (vec4<u32>(0u, var_1, var_1, 1738u) % vec4<u32>(32u))), select(_wgslsmith_sub_vec4_u32(~vec4<u32>(90555u, var_1, var_1, var_1), ~vec4<u32>(var_1, var_1, var_1, var_1)), ~(~vec4<u32>(1u, var_1, var_1, 4294967295u)), var_0.a | true)) ^ _wgslsmith_mod_vec4_u32(~(firstLeadingBit(vec4<u32>(var_1, 6652u, 1u, var_1)) & abs(vec4<u32>(var_1, var_1, 1u, 0u))), _wgslsmith_div_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, 4294967295u, var_1, 60268u), vec4<u32>(0u, 14791u, 17859u, 0u))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1, 14497u, var_1, 73680u), vec4<u32>(var_1, var_1, 10981u, 95061u)) ^ ~vec4<u32>(8327u, 1u, var_1, 1u)));
    return Struct_2(var_0);
}

fn func_1() -> vec4<u32> {
    let var_0 = func_2(global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(abs(~1u), _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 42862u, 0u), vec4<u32>(14996u, 78683u, 26332u, 64204u)))), ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(25452u, 32493u, 40830u, 13730u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(38145u, 15922u, 0u, 28305u), vec4<u32>(46803u, 22129u, 0u, 31368u), vec4<u32>(4294967295u, 6176u, 1u, 0u)))), 28u)]);
    var var_1 = func_2(global0[_wgslsmith_index_u32(1u, 28u)]).a;
    var var_2 = abs(vec3<i32>(1i, global3.b.x, _wgslsmith_div_i32(firstTrailingBit(var_0.a.b.x >> (6400u % 32u)), 15469i)));
    let var_3 = _wgslsmith_dot_vec4_u32(~(~firstTrailingBit(max(vec4<u32>(42863u, 4294967295u, 4294967295u, 21559u), vec4<u32>(0u, 48624u, 1u, 14341u)))), _wgslsmith_div_vec4_u32(~(select(vec4<u32>(4294967295u, 59231u, 1u, 1u), vec4<u32>(56363u, 595u, 27744u, 4384u), vec4<bool>(false, true, var_1.a, var_0.a.a)) >> (~vec4<u32>(24205u, 53685u, 1u, 4938u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 35617u, 0u, 1u), vec4<u32>(33966u, 44315u, 34414u, 1843u)), select(0u, 4294967295u, global3.a), ~1u, 1u) ^ vec4<u32>(4294967295u, ~90862u, 4294967295u, abs(0u))));
    var var_4 = func_2(func_2(Struct_1(global3.a, ~(~var_1.b))).a).a;
    return firstTrailingBit(vec4<u32>(1u, 4294967295u, var_3, abs(var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_2(Struct_1(~(~711u) == (~var_0.x & var_0.x), -(~u_input.c))).a;
    var var_2 = vec4<bool>(true, func_2(Struct_1(false, global3.b)).a.a, false, all(!select(vec3<bool>(false, global3.a, true), !vec3<bool>(var_1.a, global3.a, false), vec3<bool>(var_1.a, var_1.a, var_1.a))));
    let var_3 = abs(3967i);
    var_2 = vec4<bool>(all(select(select(!vec4<bool>(global3.a, global3.a, global3.a, global3.a), select(vec4<bool>(false, var_1.a, global3.a, global3.a), vec4<bool>(var_2.x, false, true, global3.a), vec4<bool>(false, true, global3.a, true)), vec4<bool>(true, var_1.a, var_2.x, var_2.x)), !select(vec4<bool>(true, false, false, global3.a), vec4<bool>(true, false, var_2.x, false), var_2.x), !(!global3.a))), func_2(func_2(Struct_1(true, global3.b)).a).a.a, select(!var_2.x, true, !(~1u < func_1().x)), var_2.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -828f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_div_vec3_i32(u_input.a.yxx, ~select(u_input.a.zwy, u_input.a.xzx, var_2.wyx) & ~u_input.a.zzx), ~(~_wgslsmith_mod_u32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(var_4)))))), countOneBits(735i ^ _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(var_3, -1i))));
}

