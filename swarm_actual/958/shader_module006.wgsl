struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(1i, 1i, 0i, -10982i, 2147483647i, -92210i, 0i, 49231i, 44667i, 6467i, 21931i, 1i, 0i, -54298i, 1i, i32(-2147483648), 15300i, 1i, 28864i, 20708i, -18685i, 0i);

var<private> global1: bool;

var<private> global2: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(8078u, 1u, 1u, 1u), vec4<u32>(2621u, 0u, 56438u, 6177u), vec4<u32>(20975u, 42577u, 1u, 67141u), vec4<u32>(4294967295u, 59704u, 1u, 1u), vec4<u32>(4294967295u, 1u, 14788u, 768u), vec4<u32>(1u, 6674u, 57039u, 4294967295u), vec4<u32>(1u, 32673u, 4294967295u, 0u), vec4<u32>(5252u, 133206u, 13394u, 59334u), vec4<u32>(1u, 61735u, 1u, 1u), vec4<u32>(0u, 4294967295u, 1u, 43382u), vec4<u32>(31110u, 65160u, 68859u, 4294967295u), vec4<u32>(1u, 10523u, 1u, 4294967295u), vec4<u32>(13698u, 0u, 4294967295u, 4294967295u), vec4<u32>(20418u, 54300u, 36290u, 1u), vec4<u32>(0u, 47979u, 1u, 13737u), vec4<u32>(71107u, 1u, 4294967295u, 31604u), vec4<u32>(71228u, 4294967295u, 1u, 50030u), vec4<u32>(55448u, 4294967295u, 4294967295u, 48420u), vec4<u32>(1u, 0u, 14019u, 4294967295u), vec4<u32>(0u, 4294967295u, 52915u, 14425u));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, false, true)), vec3<bool>(true, false, true), Struct_1(vec3<bool>(false, true, false)));

var<private> global4: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_4) -> vec3<i32> {
    global4 = arg_3.c;
    let var_0 = _wgslsmith_f_op_f32(arg_1.x + -1111f);
    return vec3<i32>(_wgslsmith_dot_vec3_i32(-firstTrailingBit(~vec3<i32>(-5743i, u_input.a, u_input.a)), _wgslsmith_div_vec3_i32(~(~vec3<i32>(u_input.a, u_input.a, -55476i)), select(~vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 22u)], -2147483647i), max(vec3<i32>(23467i, u_input.a, 12884i), vec3<i32>(35129i, u_input.a, -2147483647i)), vec3<bool>(global3.b.x, true, global3.b.x)))), _wgslsmith_clamp_i32(u_input.a, 0i, abs(global0[_wgslsmith_index_u32(~65849u, 22u)]) >> (~select(arg_0, 0u, false) % 32u)), select(u_input.a, -firstTrailingBit(-2147483647i), any(select(vec2<bool>(arg_3.a.x, arg_3.c.b.x), global3.a.a.yz, global3.c.a.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> vec3<bool> {
    global3 = Struct_2(Struct_1(global4.b), vec3<bool>(!all(vec3<bool>(true, global3.c.a.x, false)), true, global4.a.a.x), Struct_1(!select(global4.b, select(global4.c.a, vec3<bool>(true, false, true), global3.a.a.x), arg_2.x)));
    global4 = Struct_2(global4.c, select(select(global3.c.a, !(!global3.a.a), vec3<bool>(0u <= u_input.b, false, global4.c.a.x | global3.b.x)), vec3<bool>(arg_2.x, false, false), vec3<bool>(global3.c.a.x, !all(global4.b), func_3(52388u, vec2<f32>(-346f, -792f), vec4<f32>(-916f, -624f, 1195f, -647f), Struct_4(global3.b, false, Struct_2(Struct_1(vec3<bool>(true, false, false)), vec3<bool>(true, global3.a.a.x, global4.c.a.x), Struct_1(global4.a.a)))).x <= -1i)), global4.c);
    global2 = array<vec4<u32>, 20>();
    var var_0 = true;
    let var_1 = !(!select(!vec2<bool>(true, arg_2.x), global4.b.xy, select(arg_2, !global3.b.zy, vec2<bool>(global4.c.a.x, arg_2.x))));
    return vec3<bool>(!any(vec2<bool>(all(vec2<bool>(true, true)), true)), false, u_input.b != 50615u);
}

fn func_2() -> Struct_3 {
    global4 = Struct_2(Struct_1(func_4(vec3<i32>(global0[_wgslsmith_index_u32(~33217u, 22u)], u_input.a, -17676i), _wgslsmith_mod_vec3_i32(func_3(4294967295u, vec2<f32>(-911f, -2168f), vec4<f32>(-1551f, -203f, -644f, -938f), Struct_4(vec3<bool>(true, global4.c.a.x, global4.b.x), global4.b.x, Struct_2(global3.a, global4.c.a, global4.c))), vec3<i32>(global0[_wgslsmith_index_u32(13570u, 22u)], 37785i, -2147483647i) & vec3<i32>(u_input.a, 37777i, 1i)), select(vec2<bool>(global4.a.a.x, global4.a.a.x), select(vec2<bool>(global4.b.x, global4.b.x), global4.c.a.xz, global3.a.a.xz), global4.b.x))), global4.b, Struct_1(global4.c.a));
    global3 = Struct_2(Struct_1(func_4(select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 22u)], 1i, 0i), vec3<i32>(12448i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b, 22u)]), true), select(vec3<i32>(-18148i, 1i, u_input.a), func_3(5033u, vec2<f32>(-285f, 1945f), vec4<f32>(-1285f, 332f, 302f, -698f), Struct_4(global3.a.a, global3.a.a.x, Struct_2(Struct_1(global3.c.a), vec3<bool>(false, true, global3.b.x), global4.c))), select(vec3<bool>(false, global3.a.a.x, global4.a.a.x), vec3<bool>(global4.b.x, global3.b.x, global3.b.x), global3.b.x)), vec2<bool>(true, global3.b.x))), global3.c.a, global3.c);
    let var_0 = false;
    let var_1 = true;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-300f))), _wgslsmith_f_op_f32(443f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1619f, 1763f) + -1401f))), _wgslsmith_f_op_f32(floor(-1688f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f + _wgslsmith_f_op_f32(trunc(-472f)))))));
    return Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(50073u, 1u, 4294967295u), _wgslsmith_add_vec3_u32(~min(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 25591u)), firstTrailingBit(~vec3<u32>(9260u, u_input.b, u_input.b)))), reverseBits(0i));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-568f)))));
    let var_1 = select(!select(!global3.a.a, !vec3<bool>(global3.b.x, true, global4.c.a.x), all(!vec4<bool>(global3.b.x, true, global4.c.a.x, false))), global4.a.a, !(!global4.a.a));
    let var_2 = func_2();
    var var_3 = var_0;
    global1 = true;
    return Struct_2(global4.c, vec3<bool>(false && global4.b.x, arg_0 >= 1u, _wgslsmith_mult_i32(firstTrailingBit(63490i), u_input.a) >= ~(~0i)), Struct_1(vec3<bool>(global4.b.x, global4.c.a.x | true, any(vec3<bool>(global3.c.a.x, false, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(_wgslsmith_mult_u32(~abs(_wgslsmith_mod_u32(55925u, u_input.b)), ~1u));
    global0 = array<i32, 22>();
    let var_0 = select(~(~max(vec3<u32>(u_input.b, u_input.b, 60416u), vec3<u32>(0u, u_input.b, u_input.b))), (~vec3<u32>(u_input.b, 53475u, u_input.b) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))) ^ (vec3<u32>(1737u, 104746u, 83947u) << ((vec3<u32>(u_input.b, 15591u, 4294967295u) ^ vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u))), true) >> (vec3<u32>(~41171u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (countOneBits(global2[_wgslsmith_index_u32(0u, 20u)]) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(15152u, u_input.b) << (~1u % 32u), 20u)]), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.b, 1u), select(vec3<u32>(0u, u_input.b, 1u), vec3<u32>(u_input.b, 72803u, 0u), vec3<bool>(global4.c.a.x, global3.a.a.x, global3.b.x))), u_input.b)) % vec3<u32>(32u));
    global2 = array<vec4<u32>, 20>();
    var var_1 = vec4<f32>(1342f, _wgslsmith_f_op_f32(trunc(-170f)), -590f, 1455f);
    var var_2 = Struct_4(!func_4(~max(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(var_0.x, 22u)], global0[_wgslsmith_index_u32(var_0.x, 22u)]), vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)], -2147483647i)), vec3<i32>(1i, u_input.a, -39577i) << (abs(vec3<u32>(var_0.x, 0u, u_input.b)) % vec3<u32>(32u)), global3.c.a.zz), any(vec2<bool>(true, func_1(16796u << (0u % 32u)).a.a.x)), func_1(~(_wgslsmith_dot_vec3_u32(vec3<u32>(488u, var_0.x, u_input.b), var_0) | _wgslsmith_mult_u32(var_0.x, 4214u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a, _wgslsmith_add_i32(-1i, -1i)), 2147483647i, 1i & _wgslsmith_clamp_i32(31470i, u_input.a, -7706i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-11127i, global0[_wgslsmith_index_u32(var_0.x, 22u)]) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(u_input.b, 4294967295u), var_0.yx) % vec2<u32>(32u)), vec2<i32>(1i, 0i)), global0[_wgslsmith_index_u32(var_0.x, 22u)]), _wgslsmith_div_vec4_i32(firstTrailingBit(reverseBits(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(7821u, 22u)], -47094i, -25060i))), _wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-2338i, -1i, u_input.a, u_input.a), vec4<i32>(645i, global0[_wgslsmith_index_u32(1u, 22u)], 0i, global0[_wgslsmith_index_u32(0u, 22u)])), vec4<i32>(u_input.a, 0i, -7095i, -36860i) >> (_wgslsmith_div_vec4_u32(global2[_wgslsmith_index_u32(7926u, 20u)], global2[_wgslsmith_index_u32(u_input.b, 20u)]) % vec4<u32>(32u)))), func_3(firstTrailingBit(u_input.b), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, global3.c.a.x)), _wgslsmith_f_op_f32(1998f * -1000f)), _wgslsmith_f_op_vec2_f32(round(var_1.yx))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 329f, var_1.x, var_1.x) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 1000f, 1473f, 302f), vec4<f32>(271f, var_1.x, -1000f, -1000f))))), Struct_4(!(!global3.c.a), all(vec3<bool>(global4.c.a.x, true, global4.c.a.x)), Struct_2(func_1(27775u).a, !global4.a.a, func_1(u_input.b).a))).x);
}

