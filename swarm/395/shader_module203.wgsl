struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
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

var<private> global0: vec4<bool>;

var<private> global1: f32 = -552f;

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(43311i, vec3<i32>(-38778i, 1i, 60622i), 1109f, 82482u, -887f), Struct_1(-38682i, vec3<i32>(-18878i, 0i, 1i), -116f, 7633u, -3063f), Struct_1(0i, vec3<i32>(1569i, 20800i, 0i), 1226f, 0u, 2179f), Struct_1(-4870i, vec3<i32>(-35822i, i32(-2147483648), 6172i), 532f, 44664u, -617f), Struct_1(1i, vec3<i32>(-4857i, 0i, -15387i), -1000f, 34695u, -1000f), Struct_1(4821i, vec3<i32>(i32(-2147483648), -2313i, 6334i), 405f, 64849u, -695f), Struct_1(-1i, vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), -678f, 2915u, -673f), Struct_1(0i, vec3<i32>(-1i, 2147483647i, 0i), -518f, 0u, -588f), Struct_1(-48532i, vec3<i32>(19514i, -1i, 7101i), -1942f, 94690u, -244f), Struct_1(-11196i, vec3<i32>(-17835i, 2147483647i, 2147483647i), 2101f, 0u, -199f), Struct_1(29755i, vec3<i32>(-41587i, 0i, i32(-2147483648)), -351f, 50851u, 588f), Struct_1(i32(-2147483648), vec3<i32>(41609i, -1i, -24605i), -771f, 0u, -128f), Struct_1(0i, vec3<i32>(-18238i, 1i, -1i), 151f, 23784u, 853f), Struct_1(2147483647i, vec3<i32>(1i, -47605i, 2147483647i), -289f, 4294967295u, -1495f), Struct_1(41223i, vec3<i32>(-1838i, -1i, 11646i), 464f, 1u, -472f), Struct_1(i32(-2147483648), vec3<i32>(1i, -1i, -2933i), 1365f, 4294967295u, -977f), Struct_1(2147483647i, vec3<i32>(16748i, i32(-2147483648), i32(-2147483648)), 1122f, 14613u, -205f), Struct_1(2147483647i, vec3<i32>(-16839i, -43580i, -1i), -1136f, 1u, 705f), Struct_1(5746i, vec3<i32>(i32(-2147483648), i32(-2147483648), -62584i), -592f, 14832u, 1000f), Struct_1(2147483647i, vec3<i32>(-1i, -1i, i32(-2147483648)), -380f, 4294967295u, 920f), Struct_1(-32959i, vec3<i32>(77889i, -1i, i32(-2147483648)), -722f, 0u, 2279f), Struct_1(2147483647i, vec3<i32>(1i, 26872i, 30455i), -1407f, 52479u, -2100f), Struct_1(-26765i, vec3<i32>(2147483647i, 1i, i32(-2147483648)), -826f, 66100u, -473f), Struct_1(-1i, vec3<i32>(2147483647i, -1i, -56396i), -762f, 61405u, -2189f), Struct_1(2147483647i, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), -1561f, 4294967295u, 149f), Struct_1(-5338i, vec3<i32>(-1i, -39991i, 3127i), 129f, 1u, 240f), Struct_1(8486i, vec3<i32>(14387i, 22002i, 1i), 1151f, 0u, -1479f), Struct_1(-16572i, vec3<i32>(0i, -16948i, -19040i), 995f, 0u, -2146f), Struct_1(2147483647i, vec3<i32>(13898i, 2147483647i, -17338i), -1096f, 5303u, -1235f));

var<private> global4: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>) -> bool {
    global3 = array<Struct_1, 29>();
    var var_0 = Struct_1(max(arg_1.x, -58187i), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-37002i, arg_1.x, arg_1.x) & vec3<i32>(u_input.a, arg_1.x, arg_1.x), u_input.b) << (arg_0 % vec3<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1739f))), -402f, false)), max(arg_0.x >> (46073u % 32u), arg_0.x) << (~(~arg_0.x) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-746f, _wgslsmith_f_op_f32(949f * _wgslsmith_f_op_f32(abs(-859f)))))));
    let var_1 = -576f;
    let var_2 = Struct_1(-_wgslsmith_mod_i32(-arg_1.x & ~0i, select(i32(-1i) * -2147483647i, select(u_input.a, var_0.b.x, global0.x), !global4.x)), -(arg_1 & (vec3<i32>(20681i, -2147483647i, -59486i) | (arg_1 & vec3<i32>(0i, -2878i, 1i)))), 344f, 1u, var_0.e);
    global0 = select(select(select(vec4<bool>(true, global4.x, global4.x && global0.x, true), !(!vec4<bool>(global4.x, global0.x, global4.x, global0.x)), false), !(!select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))), all(select(select(vec3<bool>(global4.x, global0.x, true), vec3<bool>(true, true, true), false), select(vec3<bool>(global4.x, false, global0.x), global0.yzw, global0.wxw), vec3<bool>(true, true, true)))), vec4<bool>(all(select(select(global0.wy, global0.yw, true), global0.yy, true)), true, all(!global0.zwy), global0.x), vec4<bool>(true | all(vec2<bool>(true, global4.x)), !global4.x, global0.x, true));
    return false;
}

fn func_2() -> u32 {
    global0 = select(!(!vec4<bool>(global0.x, func_3(vec3<u32>(0u, 21245u, 8193u), u_input.b), all(vec2<bool>(global0.x, global0.x)), global4.x)), select(select(!(!vec4<bool>(global4.x, global0.x, global4.x, global4.x)), !select(vec4<bool>(false, global4.x, global0.x, false), vec4<bool>(false, false, false, true), global0.x), !select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, true, true, true), vec4<bool>(false, global4.x, false, true))), !vec4<bool>(!global4.x, global0.x, select(global4.x, global0.x, global4.x), true), select(!vec4<bool>(global4.x, global4.x, global4.x, false), !(!vec4<bool>(true, false, global0.x, false)), vec4<bool>(true, !global0.x, all(vec3<bool>(global4.x, global0.x, false)), true))), !(!select(!vec4<bool>(global0.x, true, true, false), !vec4<bool>(global0.x, true, global0.x, global0.x), !global4.x)));
    global0 = !select(vec4<bool>(all(vec3<bool>(global0.x, global4.x, false)), false, any(!global0.ywy), false), !vec4<bool>(true, global4.x, false, u_input.a > u_input.b.x), vec4<bool>(!(true | global0.x), global0.x, all(!vec3<bool>(true, global4.x, global0.x)), true));
    global0 = select(!(!vec4<bool>(true, true, global4.x, !global0.x)), select(select(select(select(vec4<bool>(false, false, true, global0.x), vec4<bool>(global4.x, false, global4.x, false), false), !vec4<bool>(false, global0.x, global0.x, false), !vec4<bool>(global0.x, true, global0.x, false)), !(!vec4<bool>(false, false, global4.x, true)), !global4.x), !vec4<bool>(true, global0.x & global4.x, func_3(vec3<u32>(1u, 4294967295u, 24997u), u_input.b), global0.x), select(vec4<bool>(any(vec3<bool>(global0.x, global0.x, true)), global0.x, true, select(true, false, true)), !(!vec4<bool>(global0.x, global4.x, true, global4.x)), !vec4<bool>(true, false, false, global4.x))), false);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(479f)))) + 1018f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1151f, 1f, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(766f))))), 1288f, false)));
    let var_1 = global0.x;
    return countOneBits(min(_wgslsmith_mod_u32(~31551u, 4294967295u), _wgslsmith_div_u32(2832u, ~1u)));
}

fn func_1() -> u32 {
    var var_0 = 17674i;
    let var_1 = global3[_wgslsmith_index_u32(~42764u, 29u)];
    var var_2 = var_1.b.x;
    global2 = array<Struct_1, 27>();
    global2 = array<Struct_1, 27>();
    return _wgslsmith_dot_vec2_u32(max((_wgslsmith_add_vec2_u32(vec2<u32>(1u, 112319u), vec2<u32>(88173u, var_1.d)) << ((vec2<u32>(var_1.d, 0u) >> (vec2<u32>(var_1.d, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))) & vec2<u32>(~var_1.d, func_2()), select(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 13142u), vec2<u32>(76074u, var_1.d)), select(vec2<u32>(7269u, 86906u), vec2<u32>(var_1.d, 2837u), global0.zw)), abs(vec2<u32>(0u, var_1.d) & vec2<u32>(var_1.d, 1730u)), vec2<bool>(global4.x, true))), vec2<u32>(max(var_1.d, abs(4294967295u)), var_1.d) ^ (vec2<u32>(var_1.d, var_1.d) << (~reverseBits(vec2<u32>(4294967295u, 78621u)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, ~func_1()), ~(_wgslsmith_add_vec2_u32(vec2<u32>(10351u, 0u), vec2<u32>(4088u, 44903u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), vec2<u32>(1u, 1u)), vec2<u32>(15959u, 1u));
    let var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(var_0.x >> ((var_0.x ^ ~var_0.x) % 32u), 84468u)), 27u)];
    var var_2 = global3[_wgslsmith_index_u32(~4294967295u, 29u)];
    var var_3 = 1994f;
    var var_4 = any(vec4<bool>(true, func_3(vec3<u32>(63436u, var_0.x, 33653u), -vec3<i32>(-49984i, var_1.b.x, var_1.b.x)), true, true)) & true;
    let var_5 = Struct_1(_wgslsmith_mod_i32(min(var_2.a, abs(3773i)), 16095i), -u_input.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_mod_u32(var_2.d, 0u) & min(firstLeadingBit(func_2()), 34000u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.e, var_2.e, !global4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_5.c)), 1f))))));
}

