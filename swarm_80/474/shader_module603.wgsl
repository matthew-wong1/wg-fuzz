struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<u32>(0u, 1u, 36020u, 4294967295u), 1i, vec3<i32>(-54466i, -569i, -41123i)), Struct_2(vec4<u32>(14102u, 14213u, 0u, 4294967295u), -20592i, vec3<i32>(2147483647i, -15552i, i32(-2147483648))), Struct_2(vec4<u32>(48264u, 82851u, 0u, 31867u), 0i, vec3<i32>(80536i, 0i, 1i)), Struct_2(vec4<u32>(54111u, 24620u, 0u, 47322u), 0i, vec3<i32>(2147483647i, -1i, -48135i)), Struct_2(vec4<u32>(1603u, 51678u, 1u, 69536u), -13704i, vec3<i32>(1i, 2147483647i, 8541i)), Struct_2(vec4<u32>(14791u, 0u, 1u, 1u), -1i, vec3<i32>(1i, 19632i, 1i)), Struct_2(vec4<u32>(11180u, 23945u, 4294967295u, 101758u), i32(-2147483648), vec3<i32>(-1216i, 37039i, -34168i)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 4446u, 66111u), -26635i, vec3<i32>(1i, -24960i, -29483i)), Struct_2(vec4<u32>(1u, 4294967295u, 81941u, 4294967295u), -23715i, vec3<i32>(42045i, 0i, -1i)), Struct_2(vec4<u32>(1u, 0u, 40268u, 4294967295u), 0i, vec3<i32>(2147483647i, i32(-2147483648), -37710i)), Struct_2(vec4<u32>(71590u, 50880u, 1u, 12022u), -46730i, vec3<i32>(i32(-2147483648), 1170i, 16729i)), Struct_2(vec4<u32>(20764u, 0u, 4294967295u, 1u), 2147483647i, vec3<i32>(2147483647i, 0i, i32(-2147483648))), Struct_2(vec4<u32>(6560u, 12705u, 1u, 10994u), -69i, vec3<i32>(1i, 1i, 35498i)), Struct_2(vec4<u32>(1u, 4294967295u, 0u, 8331u), 0i, vec3<i32>(0i, 2147483647i, -42299i)), Struct_2(vec4<u32>(0u, 29633u, 1u, 4294967295u), 7375i, vec3<i32>(2147483647i, 0i, 2147483647i)), Struct_2(vec4<u32>(4294967295u, 31573u, 0u, 26348u), i32(-2147483648), vec3<i32>(49340i, -20301i, -5720i)), Struct_2(vec4<u32>(13911u, 48849u, 4294967295u, 5620u), 38854i, vec3<i32>(-1i, 44514i, -1i)), Struct_2(vec4<u32>(1u, 4294967295u, 0u, 24989u), 2147483647i, vec3<i32>(0i, 1i, 32309i)), Struct_2(vec4<u32>(53513u, 0u, 63751u, 1u), 25208i, vec3<i32>(-21052i, -20696i, i32(-2147483648))), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), 2147483647i, vec3<i32>(1i, -9333i, -30780i)), Struct_2(vec4<u32>(4294967295u, 28435u, 33160u, 0u), 42643i, vec3<i32>(36480i, -1i, i32(-2147483648))), Struct_2(vec4<u32>(0u, 35095u, 4294967295u, 63090u), 40076i, vec3<i32>(-18059i, -16504i, 0i)), Struct_2(vec4<u32>(0u, 76942u, 22209u, 0u), 2147483647i, vec3<i32>(49627i, 7610i, 21183i)), Struct_2(vec4<u32>(4294967295u, 33680u, 0u, 0u), 36145i, vec3<i32>(-1i, 30416i, 0i)), Struct_2(vec4<u32>(4294967295u, 82209u, 62809u, 47055u), 31456i, vec3<i32>(2147483647i, -17507i, 1i)), Struct_2(vec4<u32>(0u, 37570u, 1u, 89805u), i32(-2147483648), vec3<i32>(0i, -30212i, -1i)));

var<private> global1: array<vec4<i32>, 30>;

var<private> global2: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(-1316f, -798f, 625f, 972f), vec4<f32>(1000f, 555f, 627f, 537f));

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-288i, 1i, 2147483647i, -51672i), vec4<u32>(12769u, 5616u, 27682u, 1u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    return arg_1;
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = !vec2<bool>(true, select(true, all(vec3<bool>(true, true, true)), false));
    global2 = array<vec4<f32>, 2>();
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 23721i, 0i, _wgslsmith_add_i32(abs(global3.a.x), -1i)), -select(_wgslsmith_div_vec4_i32(vec4<i32>(global3.a.x, global3.a.x, 36906i, -23479i), vec4<i32>(15197i, u_input.a.x, -1i, -2940i)), vec4<i32>(21542i, arg_0.a.x, global3.a.x, 29050i), any(vec2<bool>(false, false))), ~arg_0.a), vec4<u32>(1u, abs(~10935u), abs(_wgslsmith_mod_u32(global3.b.x, arg_0.b.x) ^ ~global3.b.x), u_input.b.x));
    let var_2 = -276f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1292f, var_2))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f) - _wgslsmith_f_op_f32(var_2 + -875f))))));
    return -vec4<i32>(_wgslsmith_mod_i32(var_1.a.x, _wgslsmith_add_i32(global3.a.x ^ var_1.a.x, 7109i)), ~global3.a.x, arg_0.a.x, -30935i);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec3<bool>) -> bool {
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    var var_0 = global0[_wgslsmith_index_u32(arg_0.b.x, 26u)];
    global3 = Struct_1(arg_2, ~vec4<u32>(~(~39231u), firstLeadingBit(_wgslsmith_dot_vec4_u32(var_0.a, var_0.a)), func_1(arg_0, abs(global3.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, -404f) * vec2<f32>(1153f, 1197f)), global0[_wgslsmith_index_u32(reverseBits(29115u), 26u)]), firstLeadingBit(0u & var_0.a.x)));
    var_0 = global0[_wgslsmith_index_u32(var_0.a.x, 26u)];
    return true;
}

fn func_2() -> f32 {
    var var_0 = vec3<u32>(countOneBits(~(~0u)), global3.b.x, ~(~(~(~u_input.b.x))));
    var var_1 = ~(-_wgslsmith_mult_i32(2147483647i, min(_wgslsmith_add_i32(u_input.a.x, 2147483647i), global3.a.x >> (global3.b.x % 32u))));
    var_1 = ~(-10697i);
    var var_2 = true & func_4(Struct_1(func_3(Struct_1(global3.a, global3.b)), global3.b), global3.a.ww, vec4<i32>(u_input.a.x, -1i, firstLeadingBit(2147483647i), 2147483647i) & -global3.a, !vec3<bool>(true, true, all(vec3<bool>(false, false, false))));
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(42916u, u_input.b.x)), 26u)];
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1452f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 30>();
    var var_0 = false;
    let var_1 = Struct_1(reverseBits(_wgslsmith_sub_vec4_i32(global3.a, -(~vec4<i32>(2147483647i, u_input.a.x, 0i, 0i)))), vec4<u32>(887u, u_input.b.x, _wgslsmith_mod_u32(global3.b.x ^ _wgslsmith_mod_u32(0u, global3.b.x), ~firstLeadingBit(38672u)), max(1u, ~u_input.b.x) ^ 42695u));
    var_0 = reverseBits(func_1(Struct_1(reverseBits(vec4<i32>(var_1.a.x, 3416i, u_input.a.x, global3.a.x)), vec4<u32>(11264u, 1u, var_1.b.x, 1u) | global3.b), global3.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(1039f, 172f) * vec2<f32>(-900f, 1083f)), global0[_wgslsmith_index_u32(~(18280u & global3.b.x), 26u)])) >= var_1.b.x;
    var var_2 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2()));
}

