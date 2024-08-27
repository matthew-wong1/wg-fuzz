struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(-559f, Struct_1(false, vec3<i32>(55430i, 47248i, 1i), 52115u), Struct_1(false, vec3<i32>(-8302i, 20402i, -1i), 501u), Struct_1(false, vec3<i32>(15919i, 2147483647i, 1i), 39265u)), Struct_2(214f, Struct_1(false, vec3<i32>(34542i, i32(-2147483648), 0i), 1u), Struct_1(true, vec3<i32>(-14683i, -42785i, 59117i), 1u), Struct_1(true, vec3<i32>(-11848i, -14550i, -23707i), 186465u)), Struct_2(-1239f, Struct_1(false, vec3<i32>(1i, 1i, 2147483647i), 23027u), Struct_1(true, vec3<i32>(4941i, -6273i, 1i), 52837u), Struct_1(false, vec3<i32>(1i, -1i, 29201i), 4294967295u)), Struct_2(274f, Struct_1(false, vec3<i32>(0i, -1i, 9036i), 60705u), Struct_1(true, vec3<i32>(-10183i, -19091i, i32(-2147483648)), 42241u), Struct_1(true, vec3<i32>(-73931i, 47137i, -1i), 1823u)), Struct_2(842f, Struct_1(false, vec3<i32>(i32(-2147483648), 1i, -1i), 60758u), Struct_1(true, vec3<i32>(1i, -22720i, -10505i), 0u), Struct_1(false, vec3<i32>(-1i, -1i, -52169i), 9391u)), Struct_2(736f, Struct_1(true, vec3<i32>(i32(-2147483648), i32(-2147483648), 36044i), 0u), Struct_1(false, vec3<i32>(-1i, 9012i, -18940i), 106307u), Struct_1(true, vec3<i32>(72680i, 0i, 9101i), 70651u)), Struct_2(-364f, Struct_1(true, vec3<i32>(-1i, -1i, 2631i), 2142u), Struct_1(true, vec3<i32>(-22031i, 2147483647i, 2066i), 0u), Struct_1(true, vec3<i32>(-72774i, 0i, 9279i), 39265u)), Struct_2(-1000f, Struct_1(false, vec3<i32>(i32(-2147483648), 2147483647i, -1i), 38945u), Struct_1(false, vec3<i32>(0i, 0i, 48204i), 0u), Struct_1(false, vec3<i32>(-1763i, -23686i, i32(-2147483648)), 85231u)), Struct_2(1454f, Struct_1(true, vec3<i32>(24979i, i32(-2147483648), 7151i), 0u), Struct_1(false, vec3<i32>(26542i, 2147483647i, i32(-2147483648)), 11757u), Struct_1(true, vec3<i32>(-47836i, -3118i, 39347i), 1u)), Struct_2(-541f, Struct_1(true, vec3<i32>(0i, 14226i, 22168i), 4294967295u), Struct_1(true, vec3<i32>(2147483647i, 0i, -1i), 0u), Struct_1(true, vec3<i32>(1i, 2147483647i, -11453i), 22645u)), Struct_2(-587f, Struct_1(false, vec3<i32>(3791i, -4977i, -8080i), 24313u), Struct_1(false, vec3<i32>(26057i, i32(-2147483648), -1i), 1u), Struct_1(true, vec3<i32>(-1i, 1i, -1i), 46546u)), Struct_2(2021f, Struct_1(false, vec3<i32>(1i, 66041i, 16792i), 4294967295u), Struct_1(false, vec3<i32>(1i, i32(-2147483648), 2147483647i), 53297u), Struct_1(false, vec3<i32>(-18082i, 53320i, 0i), 84585u)), Struct_2(617f, Struct_1(true, vec3<i32>(2147483647i, 5819i, -9592i), 21277u), Struct_1(false, vec3<i32>(15120i, 1i, i32(-2147483648)), 0u), Struct_1(false, vec3<i32>(18600i, -1i, 0i), 0u)), Struct_2(347f, Struct_1(true, vec3<i32>(2147483647i, 2147483647i, 2147483647i), 1u), Struct_1(true, vec3<i32>(-1i, 0i, 0i), 36466u), Struct_1(false, vec3<i32>(19181i, 1i, -1i), 31547u)), Struct_2(387f, Struct_1(true, vec3<i32>(-34769i, i32(-2147483648), -27000i), 56507u), Struct_1(false, vec3<i32>(60192i, 21374i, -689i), 1u), Struct_1(false, vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), 12834u)), Struct_2(2145f, Struct_1(true, vec3<i32>(1788i, 2147483647i, i32(-2147483648)), 16066u), Struct_1(true, vec3<i32>(-30469i, -1i, 2147483647i), 4294967295u), Struct_1(true, vec3<i32>(-43062i, -19323i, 0i), 1u)), Struct_2(-108f, Struct_1(true, vec3<i32>(i32(-2147483648), -12070i, 1i), 39282u), Struct_1(true, vec3<i32>(2147483647i, 2147483647i, 3702i), 23366u), Struct_1(true, vec3<i32>(-1i, 41023i, 0i), 4294967295u)), Struct_2(-777f, Struct_1(true, vec3<i32>(0i, 0i, -1980i), 0u), Struct_1(true, vec3<i32>(0i, -1i, 0i), 4294967295u), Struct_1(false, vec3<i32>(27366i, -1i, 7852i), 0u)), Struct_2(-178f, Struct_1(false, vec3<i32>(1i, 31264i, -45127i), 100226u), Struct_1(true, vec3<i32>(2147483647i, 30571i, 37177i), 0u), Struct_1(true, vec3<i32>(1i, -28461i, -45241i), 4294967295u)), Struct_2(-128f, Struct_1(false, vec3<i32>(-1i, i32(-2147483648), -6428i), 1u), Struct_1(true, vec3<i32>(19584i, 0i, -1i), 48478u), Struct_1(false, vec3<i32>(46540i, -29652i, i32(-2147483648)), 5494u)));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: u32;

var<private> global3: array<bool, 9> = array<bool, 9>(false, false, false, false, true, false, false, false, false);

var<private> global4: vec2<u32> = vec2<u32>(7867u, 16786u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = abs(vec4<i32>(9102i, _wgslsmith_mult_i32(2147483647i, 0i), (i32(-1i) * -26274i) ^ arg_0.b.x, ~0i)) | vec4<i32>(arg_0.b.x, ~1i, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), select(vec4<i32>(-2147483647i, 1i, arg_0.b.x, arg_0.b.x), vec4<i32>(arg_0.b.x, -36843i, -731i, arg_0.b.x), true)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x ^ 7186i, _wgslsmith_sub_i32(arg_0.b.x, arg_0.b.x)), abs(abs(vec2<i32>(-14774i, -26926i)))));
    var var_1 = max(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, arg_0.c), abs(vec2<u32>(1u, 16936u))) << (5273u % 32u), firstTrailingBit(arg_0.c)), reverseBits(select(_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.b, u_input.a), vec2<u32>(0u, 4294967295u), vec2<bool>(true, true)), vec2<u32>(global4.x, u_input.b) >> (vec2<u32>(1u, arg_1) % vec2<u32>(32u))), vec2<u32>(arg_0.c, u_input.a), !select(vec2<bool>(global3[_wgslsmith_index_u32(arg_1, 9u)], true), vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(global4.x, 9u)], false)))));
    global0 = array<Struct_2, 20>();
    var_1 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(21206u, global4.x, 20651u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.c, 4130u, arg_0.c), vec3<u32>(1u, 0u, arg_0.c), vec3<u32>(arg_1, global4.x, 39078u)), all(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 9u)], true))), vec3<u32>(1u, var_1.x, abs(23677u))), ~(~_wgslsmith_sub_u32(var_1.x, 51227u)));
    let var_2 = arg_0;
    return 0u;
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = !vec4<bool>(1u > ~global4.x, !(-47915i == arg_0.d.b.x), arg_0.c.a, !all(!vec3<bool>(false, false, global1.x)));
    var var_1 = ~(~(0u ^ func_3(Struct_1(true, arg_0.c.b, 1u), arg_0.c.c, false)));
    var var_2 = Struct_1(true, abs(firstLeadingBit(~vec3<i32>(7687i, arg_0.d.b.x, 27479i))), _wgslsmith_div_u32(~(arg_0.d.c ^ 27876u), 5780u) ^ (abs(~global4.x) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, global4.x), ~vec2<u32>(arg_0.c.c, u_input.a)) % 32u)));
    return !vec4<bool>(true, false, !all(var_0.yx) || true, select(var_0.x, arg_0.a != -466f, select(arg_0.a >= arg_0.a, false, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: u32) -> vec2<u32> {
    global2 = _wgslsmith_mod_u32(31863u, abs(0u << (_wgslsmith_sub_u32(4294967295u, ~u_input.b) % 32u)));
    var var_0 = Struct_1(false, arg_1.c.b, abs(1u));
    var var_1 = max(min(min(~vec2<u32>(var_0.c, global4.x), vec2<u32>(22397u, global4.x)), ~abs(vec2<u32>(4294967295u, 0u))), vec2<u32>(firstLeadingBit(36199u), _wgslsmith_clamp_u32(119402u, 1u, arg_1.c.c)) >> (firstTrailingBit(vec2<u32>(u_input.b, 30230u) << (vec2<u32>(1u, arg_1.d.c) % vec2<u32>(32u))) % vec2<u32>(32u))) >> ((vec2<u32>(arg_3, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.c, 0u, 4294967295u), vec3<u32>(var_0.c, 11202u, 0u)))) >> (~vec2<u32>(firstTrailingBit(u_input.b), arg_1.b.c << (global4.x % 32u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = global0[_wgslsmith_index_u32(~0u, 20u)];
    global1 = !arg_0.wx;
    return select(select(vec2<u32>(var_2.b.c, arg_1.d.c) | max(vec2<u32>(4475u, 13725u), vec2<u32>(global4.x, 4294967295u)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(15124u, 24997u), vec2<u32>(2622u, arg_3)), ~vec2<u32>(var_1.x, 4294967295u)), true | !global3[_wgslsmith_index_u32(25817u, 9u)]) >> (firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.d.c, var_1.x), vec2<u32>(4294967295u, 81154u)) ^ abs(vec2<u32>(var_0.c, 72023u))) % vec2<u32>(32u)), ~(~countOneBits(vec2<u32>(19073u, 10091u))) << (vec2<u32>(~_wgslsmith_clamp_u32(19739u, global4.x, 4294967295u), 1u) % vec2<u32>(32u)), any(arg_0.zw));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global1 = vec2<bool>(!global3[_wgslsmith_index_u32(28261u, 9u)], true);
    global4 = ~func_4(func_2(Struct_2(_wgslsmith_f_op_f32(arg_2.a + -404f), arg_1, Struct_1(false, vec3<i32>(arg_2.d.b.x, -24098i, arg_1.b.x), arg_1.c), Struct_1(true, arg_1.b, 0u))), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.a, arg_2.a))), Struct_1(arg_2.a < -255f, -arg_1.b, _wgslsmith_sub_u32(u_input.b, 0u)), Struct_1(any(vec2<bool>(true, true)), ~arg_1.b, ~u_input.b), Struct_1(arg_1.b.x < arg_1.b.x, vec3<i32>(arg_1.b.x, -2147483647i, arg_1.b.x), arg_1.c)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * -155f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - arg_2.a)), 687f), min(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 15863u, arg_1.c, 4294967295u)), ~vec4<u32>(35707u, arg_1.c, global4.x, u_input.b)), ~arg_1.c));
    global4 = vec2<u32>(~arg_2.b.c, 4294967295u);
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, arg_2.a) + vec2<f32>(-412f, 736f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.a))))), vec2<f32>(arg_2.a, arg_2.a)));
    let var_1 = min(12798u, 1u);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1215f, 473f, 1000f, -418f), vec4<f32>(666f, 1000f, -457f, -667f))))));
    var var_1 = global3[_wgslsmith_index_u32(18527u, 9u)] || !any(!vec3<bool>(global1.x, false, true));
    global2 = select(min(abs(1u), global4.x ^ min(global4.x, global4.x | u_input.b)), ~1u, firstTrailingBit(func_1(all(vec3<bool>(true, false, global1.x)), Struct_1(global1.x, vec3<i32>(2147483647i, 1i, 41373i), global4.x), global0[_wgslsmith_index_u32(~1u, 20u)])) >= 1u);
    var var_2 = select(1u, 453u, true);
    let var_3 = -69069i;
    global1 = !vec2<bool>(func_2(global0[_wgslsmith_index_u32(6218u, 20u)]).x, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-78318i, 1i), ~global4.x);
}

