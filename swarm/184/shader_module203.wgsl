struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<f32>(-1428f, -1684f, -1331f, -551f), 12668u, vec3<u32>(0u, 38970u, 73377u), Struct_1(vec2<i32>(1i, 20360i), true, -11945i, vec3<u32>(8179u, 1u, 29028u))), Struct_2(vec4<f32>(-435f, 922f, 2027f, -421f), 1u, vec3<u32>(0u, 73574u, 1u), Struct_1(vec2<i32>(-25747i, 1i), false, -1i, vec3<u32>(4294967295u, 4294967295u, 45644u))), Struct_2(vec4<f32>(401f, -1253f, 1471f, 682f), 1u, vec3<u32>(0u, 4294967295u, 45521u), Struct_1(vec2<i32>(0i, 1i), true, -1i, vec3<u32>(4294967295u, 72802u, 17481u))), Struct_2(vec4<f32>(1837f, 1024f, -240f, 940f), 72058u, vec3<u32>(4294967295u, 30061u, 1u), Struct_1(vec2<i32>(-14262i, -35646i), true, -7405i, vec3<u32>(4294967295u, 0u, 1u))), Struct_2(vec4<f32>(-974f, -1393f, -1000f, 902f), 0u, vec3<u32>(29395u, 9396u, 0u), Struct_1(vec2<i32>(1i, 1712i), true, -26751i, vec3<u32>(88796u, 41621u, 0u))), Struct_2(vec4<f32>(-2520f, -287f, 593f, 135f), 1200u, vec3<u32>(1u, 37386u, 0u), Struct_1(vec2<i32>(i32(-2147483648), 18571i), false, 1i, vec3<u32>(121698u, 1u, 46001u))), Struct_2(vec4<f32>(937f, 922f, 1249f, 478f), 0u, vec3<u32>(40969u, 39826u, 56251u), Struct_1(vec2<i32>(-46557i, 2147483647i), true, -1i, vec3<u32>(0u, 0u, 3591u))), Struct_2(vec4<f32>(280f, -528f, -976f, 1000f), 49410u, vec3<u32>(4294967295u, 65604u, 4294967295u), Struct_1(vec2<i32>(23385i, i32(-2147483648)), false, 42453i, vec3<u32>(40734u, 36618u, 14206u))), Struct_2(vec4<f32>(953f, 1288f, -466f, 2212f), 79194u, vec3<u32>(79296u, 0u, 0u), Struct_1(vec2<i32>(0i, 1i), false, 1i, vec3<u32>(7077u, 1u, 54772u))), Struct_2(vec4<f32>(-625f, 146f, 268f, -1358f), 1u, vec3<u32>(1u, 37230u, 0u), Struct_1(vec2<i32>(1i, 1i), true, 39300i, vec3<u32>(64339u, 37115u, 4294967295u))), Struct_2(vec4<f32>(1000f, -2523f, -361f, -494f), 1u, vec3<u32>(3609u, 55861u, 1u), Struct_1(vec2<i32>(30745i, 29369i), false, 2147483647i, vec3<u32>(1u, 44197u, 1u))), Struct_2(vec4<f32>(-1299f, -569f, 541f, -199f), 1u, vec3<u32>(47569u, 70621u, 52262u), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), true, -76065i, vec3<u32>(4294967295u, 1307u, 46806u))), Struct_2(vec4<f32>(-640f, -608f, -775f, 712f), 0u, vec3<u32>(28593u, 37942u, 47886u), Struct_1(vec2<i32>(53463i, 7741i), true, 8255i, vec3<u32>(1u, 80701u, 4294967295u))), Struct_2(vec4<f32>(-1545f, 120f, 1357f, -221f), 1u, vec3<u32>(4294967295u, 24663u, 82412u), Struct_1(vec2<i32>(-1i, 33095i), true, 1i, vec3<u32>(0u, 1u, 1u))), Struct_2(vec4<f32>(-1369f, -680f, -1528f, -156f), 1u, vec3<u32>(1u, 1u, 24505u), Struct_1(vec2<i32>(2147483647i, 21154i), true, 34504i, vec3<u32>(10115u, 1u, 17127u))), Struct_2(vec4<f32>(1671f, 1037f, 692f, 837f), 48193u, vec3<u32>(0u, 4294967295u, 47637u), Struct_1(vec2<i32>(-1i, 0i), false, -1i, vec3<u32>(4294967295u, 1u, 1u))), Struct_2(vec4<f32>(623f, 1043f, 746f, -1000f), 0u, vec3<u32>(19906u, 0u, 1u), Struct_1(vec2<i32>(i32(-2147483648), 0i), false, 28660i, vec3<u32>(0u, 4294967295u, 1u))), Struct_2(vec4<f32>(2552f, -411f, 1289f, -172f), 4294967295u, vec3<u32>(45306u, 0u, 4294967295u), Struct_1(vec2<i32>(2147483647i, 6420i), true, 8083i, vec3<u32>(4294967295u, 17683u, 0u))), Struct_2(vec4<f32>(-529f, 1965f, -1112f, -2062f), 0u, vec3<u32>(73659u, 33038u, 13982u), Struct_1(vec2<i32>(-4492i, 31151i), false, -33417i, vec3<u32>(40238u, 4294967295u, 0u))), Struct_2(vec4<f32>(-2386f, 603f, -885f, 742f), 1u, vec3<u32>(87263u, 4294967295u, 1u), Struct_1(vec2<i32>(16433i, i32(-2147483648)), true, 0i, vec3<u32>(73506u, 1u, 78281u))), Struct_2(vec4<f32>(1162f, -1335f, 1711f, -1841f), 4294967295u, vec3<u32>(19902u, 0u, 1u), Struct_1(vec2<i32>(-15029i, 40837i), true, -35360i, vec3<u32>(1u, 4294967295u, 14762u))), Struct_2(vec4<f32>(608f, 951f, -736f, -110f), 0u, vec3<u32>(1u, 1u, 0u), Struct_1(vec2<i32>(-4941i, -20501i), true, -15906i, vec3<u32>(4294967295u, 28223u, 4294967295u))), Struct_2(vec4<f32>(468f, -1074f, -945f, 1192f), 1u, vec3<u32>(4294967295u, 45486u, 4376u), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), false, 0i, vec3<u32>(1u, 28624u, 96530u))), Struct_2(vec4<f32>(117f, -958f, -2780f, 1000f), 90022u, vec3<u32>(56987u, 4294967295u, 37497u), Struct_1(vec2<i32>(i32(-2147483648), 9796i), false, -79558i, vec3<u32>(46960u, 23343u, 0u))), Struct_2(vec4<f32>(357f, 1075f, -670f, -1307f), 10523u, vec3<u32>(1u, 25582u, 4294967295u), Struct_1(vec2<i32>(-18765i, 29065i), false, 69274i, vec3<u32>(46580u, 0u, 4294967295u))), Struct_2(vec4<f32>(1079f, 723f, 490f, 170f), 4294967295u, vec3<u32>(1u, 4294967295u, 0u), Struct_1(vec2<i32>(-23192i, -9880i), false, 30826i, vec3<u32>(53947u, 1u, 0u))), Struct_2(vec4<f32>(964f, -523f, -488f, -624f), 91601u, vec3<u32>(37465u, 1u, 11719u), Struct_1(vec2<i32>(i32(-2147483648), 24201i), true, 1i, vec3<u32>(16949u, 72605u, 4294967295u))), Struct_2(vec4<f32>(-366f, -821f, 379f, 353f), 21214u, vec3<u32>(0u, 11238u, 4294967295u), Struct_1(vec2<i32>(i32(-2147483648), -1i), true, i32(-2147483648), vec3<u32>(59099u, 4294967295u, 10479u))));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(-(arg_1.d.a & arg_3.a), !arg_0.d.b, -1i, arg_1.c);
    let var_1 = abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_2.d.a.x, -2147483647i, arg_3.a.x), vec3<i32>(u_input.c, -1i, var_0.c), vec3<bool>(arg_0.d.b, global1.x, arg_3.b)) >> (min(arg_1.c, arg_0.c) % vec3<u32>(32u)), ~(~vec3<i32>(23064i, arg_3.a.x, arg_1.d.c))) & 2147483647i);
    global2 = array<Struct_2, 28>();
    global0 = select(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.c.x, 1088u, 2390u, arg_0.b), vec4<u32>(global0.x, 0u, arg_2.c.x, 1978u), vec4<u32>(35113u, 4294967295u, 50992u, 41874u) & vec4<u32>(arg_3.d.x, 0u, 5805u, arg_1.d.d.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, var_0.d.x, 0u, u_input.b.x), vec4<u32>(var_0.d.x, global0.x, 41328u, 4294967295u)), select(vec4<u32>(arg_3.d.x, 1u, 3436u, arg_0.c.x), vec4<u32>(4294967295u, var_0.d.x, 68685u, 43974u), false))) << (~(vec4<u32>(25845u, arg_3.d.x, 31748u, global0.x) >> (~vec4<u32>(var_0.d.x, 79006u, 6475u, 77350u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(25633u, arg_0.d.d.x, 40633u, arg_1.b), vec4<u32>(78034u, 4294967295u, u_input.b.x, u_input.b.x)) >> (max(vec4<u32>(var_0.d.x, 15165u, arg_0.d.d.x, 52958u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 58198u, global0.x, var_0.d.x), vec4<u32>(71371u, arg_3.d.x, 3512u, 27828u))) % vec4<u32>(32u))), !vec4<bool>(true, false, false, any(vec3<bool>(false, var_0.b, arg_2.d.b))));
    global2 = array<Struct_2, 28>();
    return arg_0.c.x;
}

fn func_2() -> bool {
    global1 = !select(vec2<bool>(true, true), vec2<bool>(global1.x, true), true);
    let var_0 = vec3<bool>(!(!global1.x), true, true);
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-9653i >> (u_input.b.x % 32u), 1i), -_wgslsmith_add_vec2_i32(vec2<i32>(31547i, u_input.c), vec2<i32>(u_input.c, u_input.a)), reverseBits(vec2<i32>(-28200i, u_input.c) | vec2<i32>(u_input.c, u_input.a)))), select(true, !var_0.x, global1.x), 0i, firstLeadingBit(vec3<u32>(1u & func_3(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)], Struct_2(vec4<f32>(-1061f, -1752f, -1000f, 540f), 0u, vec3<u32>(4294967295u, 32805u, 4294967295u), Struct_1(vec2<i32>(0i, u_input.c), var_0.x, u_input.a, global0.zyx)), Struct_1(vec2<i32>(2147483647i, u_input.c), true, u_input.c, global0.wwx)), ~firstTrailingBit(u_input.b.x), global0.x ^ u_input.b.x)));
    let var_2 = global2[_wgslsmith_index_u32(8870u, 28u)];
    var var_3 = global0.yyz;
    return true;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    global2 = array<Struct_2, 28>();
    let var_0 = !vec4<bool>(!func_2(), !all(!vec4<bool>(false, true, false, global1.x)), !any(vec2<bool>(global1.x, global1.x)), !(7554u < u_input.b.x) != global1.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(617f, 106f)), _wgslsmith_f_op_f32(trunc(-185f)), global1.x == false)) * _wgslsmith_f_op_f32(-173f - -1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-612f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-753f))))))), 942f, _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(1060f, 617f), _wgslsmith_f_op_f32(round(338f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2827f - -1507f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-401f)), _wgslsmith_f_op_f32(f32(-1f) * -128f))))));
    var var_2 = Struct_1(vec2<i32>(1560i, abs(-9009i)), global1.x, ~(-2147483647i), ~(~global0.www & firstLeadingBit(_wgslsmith_add_vec3_u32(global0.zzw, vec3<u32>(1u, u_input.b.x, 1u)))));
    var var_3 = 611f;
    return Struct_1(_wgslsmith_div_vec2_i32(arg_1.zy, abs(arg_1.yx)), !var_2.b, i32(-1i) * -1i, var_2.d);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    global1 = !arg_0;
    let var_0 = arg_1;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1105f, _wgslsmith_f_op_f32(trunc(409f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-391f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1187f - 605f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-195f - -641f) * -496f))), 27874u, ~vec3<u32>(var_0.d.x, arg_1.d.x, min(min(0u, var_0.d.x), 1u)), func_1(0i, ~_wgslsmith_mod_vec4_i32(max(vec4<i32>(arg_1.a.x, u_input.a, 27937i, var_0.c), vec4<i32>(2147483647i, 1i, 68207i, -1i)), vec4<i32>(-47993i, var_0.c, arg_1.a.x, u_input.c))));
    var var_2 = var_1.a.x;
    var var_3 = global0.ywx;
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(global0.x, 4294967295u, global0.x, u_input.b.x);
    global0 = vec4<u32>(7811u, countOneBits(global0.x), global0.x, ~(88047u >> (global0.x % 32u)));
    global0 = vec4<u32>(~10901u, 17674u, ~_wgslsmith_div_u32(_wgslsmith_div_u32(global0.x, u_input.b.x), global0.x) | ~(~(0u & global0.x)), _wgslsmith_add_u32(func_4(vec2<bool>(true, true), func_1(u_input.a, vec4<i32>(2147483647i, u_input.c, 1i, -24237i))), _wgslsmith_div_u32(countOneBits(u_input.b.x), global0.x)) | firstLeadingBit(abs(1u)));
    let var_0 = func_1(firstLeadingBit(u_input.c >> (u_input.b.x % 32u)), -vec4<i32>(u_input.a, abs(u_input.c), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, u_input.c, 0i), 1i), -(i32(-1i) * -1i)));
    let var_1 = !select(!(!vec3<bool>(true, var_0.b, var_0.b)), select(!vec3<bool>(var_0.b, false, var_0.b), select(select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(global1.x, var_0.b, global1.x), var_0.b), select(vec3<bool>(var_0.b, global1.x, var_0.b), vec3<bool>(var_0.b, global1.x, false), global1.x), global1.x), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(~72500u, max(0u, 4294967295u) & u_input.b.x, 83760u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.d.x, u_input.b.x), select(vec3<u32>(43186u, global0.x, 1u), global0.xyw, global1.x))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.d.x, 1034u, u_input.b.x), ~vec4<u32>(33272u, 27642u, 4294967295u, 0u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, var_0.d.x, u_input.b.x, 32347u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 107628u, 0u, global0.x), vec4<u32>(84396u, 0u, u_input.b.x, global0.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-303f, -1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(609f, -1185f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(993f, 1000f))), 1099f), vec2<bool>((global0.x <= 67009u) && var_0.b, var_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1543f, 649f))), -1938f, -1346f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 495f, 371f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1120f, 202f) - vec2<f32>(-314f, -396f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(-397f)), _wgslsmith_f_op_f32(-417f * -918f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
}

