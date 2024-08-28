struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec2<f32>(1000f, -685f), -22186i, vec2<i32>(-1i, -1i), -854f), vec2<f32>(938f, -792f), vec3<u32>(25512u, 0u, 33479u)), Struct_2(Struct_1(vec2<f32>(-1393f, 960f), 2147483647i, vec2<i32>(-7554i, 0i), -391f), vec2<f32>(-1000f, -723f), vec3<u32>(71885u, 1u, 26455u)), Struct_2(Struct_1(vec2<f32>(-276f, 555f), -8100i, vec2<i32>(7883i, 30189i), 1455f), vec2<f32>(352f, 2617f), vec3<u32>(0u, 52311u, 36763u)), Struct_2(Struct_1(vec2<f32>(-1000f, 2004f), 34027i, vec2<i32>(2149i, 2120i), 380f), vec2<f32>(-328f, -1884f), vec3<u32>(1u, 21310u, 42898u)), Struct_2(Struct_1(vec2<f32>(-542f, -368f), -36844i, vec2<i32>(2292i, 1i), -952f), vec2<f32>(1330f, -2168f), vec3<u32>(22389u, 46538u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(870f, 588f), -18072i, vec2<i32>(61819i, 2147483647i), -1000f), vec2<f32>(-289f, 330f), vec3<u32>(0u, 41174u, 97721u)), Struct_2(Struct_1(vec2<f32>(535f, 434f), 6592i, vec2<i32>(-14565i, 1i), 2013f), vec2<f32>(1000f, 949f), vec3<u32>(1u, 0u, 75023u)), Struct_2(Struct_1(vec2<f32>(-1068f, -762f), 0i, vec2<i32>(-37882i, -20544i), -1274f), vec2<f32>(856f, 544f), vec3<u32>(0u, 17661u, 0u)), Struct_2(Struct_1(vec2<f32>(-395f, 977f), 0i, vec2<i32>(-56034i, 1i), 300f), vec2<f32>(260f, -536f), vec3<u32>(0u, 14880u, 0u)), Struct_2(Struct_1(vec2<f32>(2552f, -1056f), i32(-2147483648), vec2<i32>(-27847i, 59244i), -259f), vec2<f32>(1290f, -264f), vec3<u32>(4294967295u, 4294967295u, 18469u)), Struct_2(Struct_1(vec2<f32>(-1612f, -2122f), 1i, vec2<i32>(1i, -7636i), 1000f), vec2<f32>(588f, 1746f), vec3<u32>(39494u, 46791u, 0u)), Struct_2(Struct_1(vec2<f32>(365f, -1176f), 0i, vec2<i32>(-42213i, 24079i), 298f), vec2<f32>(346f, 960f), vec3<u32>(33721u, 78001u, 15300u)));

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<f32>(138f, 488f), -72817i, vec2<i32>(48650i, 2147483647i), 579f), Struct_1(vec2<f32>(1000f, -1000f), -30391i, vec2<i32>(i32(-2147483648), i32(-2147483648)), 1000f), Struct_1(vec2<f32>(1445f, -194f), -19479i, vec2<i32>(-3213i, -10898i), -253f), Struct_1(vec2<f32>(957f, -1193f), 0i, vec2<i32>(-1i, 10444i), -1585f), Struct_1(vec2<f32>(893f, 731f), 1i, vec2<i32>(1i, 1i), -740f));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> u32 {
    var var_0 = u_input.b.x;
    var var_1 = 1u;
    let var_2 = countOneBits(abs(vec4<u32>(1u, 1u, 1u, 1u))) ^ reverseBits(firstLeadingBit(vec4<u32>(1u, 33118u, 4294967295u, 0u)) & vec4<u32>(~1606u, ~11037u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 22626u), vec3<u32>(1u, 109643u, 47761u))));
    global1 = array<Struct_2, 12>();
    let var_3 = min(reverseBits(firstTrailingBit(~var_2)), vec4<u32>(1u, abs(0u), ~4294967295u, abs(~var_2.x))) >> (var_2 % vec4<u32>(32u));
    return _wgslsmith_dot_vec2_u32(~select(firstLeadingBit(vec2<u32>(1u, 24110u)), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.zw, vec2<u32>(var_2.x, var_2.x), vec2<u32>(126207u, 4294967295u)), countOneBits(vec2<u32>(var_3.x, var_3.x))), vec2<bool>(false, false)), var_3.yx);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    return _wgslsmith_div_f32(arg_0.b.x, 281f);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = vec3<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(firstLeadingBit(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.c.x, -2147483647i, arg_1, -2147483647i), vec4<i32>(arg_1, 12431i, 17559i, 0i)), -u_input.a), vec3<i32>(_wgslsmith_sub_i32(42592i | arg_1, 2147483647i), reverseBits(_wgslsmith_mod_i32(-54696i, arg_1)), 2147483647i)), select(~reverseBits(abs(u_input.a)), arg_1, true));
    var_0 = vec3<i32>(~(~reverseBits(u_input.b.x)), -u_input.a, arg_1);
    global0 = any(select(vec4<bool>(false, all(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, true)), select(all(vec2<bool>(true, false)), 0i == var_0.x, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, 547f > arg_0.b.x, arg_0.a.c.x < arg_0.a.b), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false), any(vec3<bool>(true, true, true)))));
    var var_1 = global1[_wgslsmith_index_u32(~(~arg_0.c.x) ^ _wgslsmith_sub_u32(reverseBits(227u), min(arg_0.c.x, select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u)), arg_0.c.x, true))), 12u)];
    var var_2 = vec3<i32>(28424i, -(1i & min(u_input.a, u_input.b.x)), ~(i32(-1i) * -min(-2147483647i, arg_1)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 5>();
    let var_0 = u_input.b.x;
    let var_1 = true;
    var var_2 = func_3(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(62873u, 4294967295u), vec2<u32>(52062u, 0u), vec2<bool>(var_1, var_1)) | vec2<u32>(10251u, 4958u), vec2<u32>(func_1(), ~66259u)), 5u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1318f), _wgslsmith_f_op_f32(func_2(Struct_2(global2[_wgslsmith_index_u32(1u, 5u)], vec2<f32>(-347f, -467f), vec3<u32>(24241u, 23031u, 0u)), vec3<u32>(1u, 21872u, 58946u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1050f, -1052f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(926f, -271f))), any(select(vec4<bool>(false, false, var_1, true), vec4<bool>(var_1, false, false, false), var_1)))), ~vec3<u32>(1u, 1u, 1u)), -(1i | var_0));
    let var_3 = func_3(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, var_2.c.x, var_2.c.x), vec3<u32>(66054u >> (0u % 32u), 37640u, 7665u)), 12u)], var_2.a.c.x).c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a, var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_0, u_input.a), _wgslsmith_mod_i32(var_2.a.c.x, var_2.a.b), i32(-1i) * -2805i, ~u_input.b.x), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, 48768i, -2147483647i, -23972i), vec4<i32>(9685i, 58592i, var_2.a.b, 9811i)))), countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b, -u_input.b), _wgslsmith_sub_i32(var_0, firstTrailingBit(var_2.a.b)), max(-28674i, 2147483647i))));
}

