struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(0u, 1u, 23857u), vec3<u32>(14685u, 30177u, 1u), vec3<u32>(4294967295u, 0u, 53971u), vec3<u32>(0u, 3681u, 0u), vec3<u32>(39064u, 3685u, 4294967295u), vec3<u32>(38468u, 1u, 49324u), vec3<u32>(0u, 0u, 98655u), vec3<u32>(15785u, 77871u, 47301u), vec3<u32>(39179u, 41183u, 1u), vec3<u32>(1u, 16262u, 2656u), vec3<u32>(13555u, 41254u, 4388u), vec3<u32>(0u, 67757u, 5215u), vec3<u32>(57909u, 4294967295u, 0u), vec3<u32>(30513u, 1u, 29316u), vec3<u32>(1u, 74673u, 0u), vec3<u32>(17498u, 130863u, 15767u), vec3<u32>(7833u, 1u, 6710u), vec3<u32>(0u, 1u, 39845u), vec3<u32>(26290u, 60605u, 0u), vec3<u32>(0u, 17033u, 55828u), vec3<u32>(35398u, 28963u, 0u));

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: array<Struct_1, 9>;

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(29151u, -29686i, 840i, vec4<bool>(false, false, true, true), vec2<i32>(-6050i, 29609i)), Struct_2(4294967295u, 2147483647i, i32(-2147483648), vec4<bool>(true, true, true, false), vec2<i32>(0i, -32585i)), Struct_2(0u, -1i, -9371i, vec4<bool>(true, false, true, true), vec2<i32>(2147483647i, 14851i)), Struct_2(4294967295u, i32(-2147483648), 17328i, vec4<bool>(false, false, true, false), vec2<i32>(-1i, 1i)), Struct_2(4294967295u, 19245i, i32(-2147483648), vec4<bool>(true, true, false, true), vec2<i32>(1i, -16454i)), Struct_2(4294967295u, i32(-2147483648), 2147483647i, vec4<bool>(false, false, false, true), vec2<i32>(-28951i, -20830i)), Struct_2(4294967295u, -32844i, 2147483647i, vec4<bool>(true, false, false, false), vec2<i32>(-41178i, -35520i)), Struct_2(7408u, 21393i, i32(-2147483648), vec4<bool>(false, false, true, true), vec2<i32>(-2596i, 9682i)), Struct_2(243u, 47870i, 3952i, vec4<bool>(true, false, true, false), vec2<i32>(-63996i, 1123i)), Struct_2(48790u, 2147483647i, 0i, vec4<bool>(true, false, false, true), vec2<i32>(-41631i, 11705i)), Struct_2(1u, 2147483647i, 2147483647i, vec4<bool>(true, true, true, true), vec2<i32>(12657i, 1i)), Struct_2(48240u, 2147483647i, -1i, vec4<bool>(false, false, true, true), vec2<i32>(-21337i, 25025i)), Struct_2(1u, 2147483647i, -13071i, vec4<bool>(false, false, true, true), vec2<i32>(8320i, -1i)), Struct_2(4294967295u, -4394i, 2147483647i, vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, 10385i)), Struct_2(3753u, i32(-2147483648), 39696i, vec4<bool>(true, true, true, false), vec2<i32>(0i, i32(-2147483648))), Struct_2(1u, -1i, -32201i, vec4<bool>(false, false, false, false), vec2<i32>(-101061i, 0i)), Struct_2(1u, 2147483647i, 24977i, vec4<bool>(false, false, false, true), vec2<i32>(-42142i, 10347i)), Struct_2(77887u, -31724i, 2147483647i, vec4<bool>(true, false, true, false), vec2<i32>(-1i, 0i)), Struct_2(4294967295u, -1i, i32(-2147483648), vec4<bool>(false, true, false, true), vec2<i32>(-15919i, 19511i)), Struct_2(4294967295u, -36557i, -1i, vec4<bool>(true, true, true, false), vec2<i32>(32196i, -33746i)));

var<private> global4: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(1u, 5768i, 1i, vec4<bool>(true, true, false, true), vec2<i32>(1i, -19347i)), Struct_2(1u, 2147483647i, -28828i, vec4<bool>(true, false, true, false), vec2<i32>(23666i, -10248i)), Struct_2(0u, -1i, i32(-2147483648), vec4<bool>(true, true, true, false), vec2<i32>(17426i, -23225i)), Struct_2(27180u, 0i, -12657i, vec4<bool>(false, true, true, true), vec2<i32>(65470i, i32(-2147483648))), Struct_2(5977u, -22412i, 0i, vec4<bool>(true, false, false, false), vec2<i32>(1i, 0i)), Struct_2(44278u, 32717i, 1i, vec4<bool>(true, true, true, false), vec2<i32>(15664i, 2147483647i)), Struct_2(35097u, i32(-2147483648), 2147483647i, vec4<bool>(false, true, false, false), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(13839u, -63085i, i32(-2147483648), vec4<bool>(true, false, true, false), vec2<i32>(5751i, 33335i)), Struct_2(7403u, i32(-2147483648), 10649i, vec4<bool>(true, false, false, false), vec2<i32>(-49576i, 1i)), Struct_2(0u, -10521i, i32(-2147483648), vec4<bool>(false, false, false, true), vec2<i32>(-31071i, 43487i)), Struct_2(0u, 2147483647i, 2147483647i, vec4<bool>(true, false, false, false), vec2<i32>(0i, 2147483647i)), Struct_2(16951u, 45730i, 0i, vec4<bool>(true, true, false, false), vec2<i32>(-4340i, -21135i)), Struct_2(1u, -11360i, -30596i, vec4<bool>(true, false, false, false), vec2<i32>(-1i, 0i)), Struct_2(4294967295u, 1i, -43947i, vec4<bool>(true, true, true, true), vec2<i32>(8762i, 9091i)), Struct_2(0u, -17840i, 36626i, vec4<bool>(true, false, false, false), vec2<i32>(0i, 2147483647i)), Struct_2(47317u, -46439i, 2147483647i, vec4<bool>(false, true, false, false), vec2<i32>(-1i, 1i)), Struct_2(29949u, 1i, 11908i, vec4<bool>(false, true, true, false), vec2<i32>(-1i, 49263i)), Struct_2(72221u, 1i, 19386i, vec4<bool>(false, true, false, true), vec2<i32>(-53925i, 21531i)), Struct_2(1u, 49623i, -1i, vec4<bool>(true, true, false, true), vec2<i32>(-59550i, -31231i)), Struct_2(0u, -1i, 0i, vec4<bool>(false, false, true, true), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(4294967295u, -20872i, 67036i, vec4<bool>(true, false, true, false), vec2<i32>(-69934i, 2147483647i)), Struct_2(40737u, 19542i, 1i, vec4<bool>(false, true, false, false), vec2<i32>(2147483647i, 2598i)), Struct_2(42180u, -23391i, 0i, vec4<bool>(false, false, true, false), vec2<i32>(-9024i, -1i)), Struct_2(0u, 16296i, 0i, vec4<bool>(false, true, false, false), vec2<i32>(-29237i, 1i)), Struct_2(0u, 47635i, 69686i, vec4<bool>(false, true, false, true), vec2<i32>(33362i, 0i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> vec4<bool> {
    global2 = array<Struct_1, 9>();
    let var_0 = vec4<bool>(arg_0.a, _wgslsmith_mod_i32(1i, u_input.a.x) < _wgslsmith_mod_i32(arg_2.x, 2147483647i), arg_0.a, false);
    var var_1 = var_0.xw;
    return vec4<bool>(var_0.x, true, all(var_0.wwz), true);
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = select(805u, ~_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 19385u), u_input.d.x)), global1.a);
    global3 = array<Struct_2, 20>();
    global0 = array<vec3<u32>, 21>();
    global3 = array<Struct_2, 20>();
    let var_1 = 0u;
    return (global1.a & !(arg_0 <= _wgslsmith_f_op_f32(1875f - 1000f))) != any(select(!vec4<bool>(global1.a, false, false, false), func_2(global2[_wgslsmith_index_u32(~6353u, 9u)], _wgslsmith_sub_i32(u_input.c, u_input.a.x), -u_input.b), true | all(vec2<bool>(false, false))));
}

fn func_3() -> i32 {
    global3 = array<Struct_2, 20>();
    var var_0 = u_input.d.x;
    var var_1 = u_input.b;
    global1 = Struct_1(any(!func_2(Struct_1(global1.a), 0i, vec4<i32>(0i, u_input.a.x, 1i, 37192i)).zy));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d.x, ~_wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(u_input.d.x, 21u)], vec3<u32>(0u, u_input.d.x, 0u))), 9u)];
    return 628i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = global2[_wgslsmith_index_u32(max(~0u, ~_wgslsmith_sub_u32(u_input.d.x, select(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 19334u, func_1(621f)))), 9u)];
    var_1 = global2[_wgslsmith_index_u32(u_input.d.x, 9u)];
    global0 = array<vec3<u32>, 21>();
    var var_2 = 1i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1223f, _wgslsmith_f_op_f32(855f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-854f)) + -559f)), !(!func_2(Struct_1(global1.a), u_input.c, u_input.b).x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.b.x ^ reverseBits(~u_input.a.x), 1i), min(_wgslsmith_dot_vec3_i32(u_input.b.zxy, vec3<i32>(~u_input.b.x, abs(-22740i), abs(1i))), func_3()), max(-7067i, ~(~u_input.a.x | -u_input.b.x)));
}

