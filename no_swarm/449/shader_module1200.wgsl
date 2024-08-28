struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(89467u, false, -844f, vec2<i32>(0i, 1i)), 2147483647i);

var<private> global1: i32 = 15689i;

var<private> global2: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_2(4294967295u, true, 428f, vec2<i32>(1i, -1i)), 28621i), Struct_3(Struct_2(73537u, false, -1231f, vec2<i32>(35453i, 0i)), -22242i), Struct_3(Struct_2(30085u, true, -1000f, vec2<i32>(57745i, 24106i)), 0i), Struct_3(Struct_2(0u, true, 1080f, vec2<i32>(6438i, 45232i)), 2147483647i), Struct_3(Struct_2(0u, true, -1711f, vec2<i32>(50089i, 3249i)), 15475i), Struct_3(Struct_2(0u, false, 1537f, vec2<i32>(27503i, 1i)), 1i), Struct_3(Struct_2(82336u, false, 384f, vec2<i32>(25203i, i32(-2147483648))), -16576i), Struct_3(Struct_2(26943u, true, 331f, vec2<i32>(-1i, 22519i)), -19006i), Struct_3(Struct_2(76476u, false, 339f, vec2<i32>(-1i, -3151i)), 40901i), Struct_3(Struct_2(28516u, true, -136f, vec2<i32>(-1i, 2147483647i)), -16156i), Struct_3(Struct_2(4294967295u, true, 1732f, vec2<i32>(71740i, 57327i)), i32(-2147483648)), Struct_3(Struct_2(0u, true, -597f, vec2<i32>(8959i, -30973i)), i32(-2147483648)), Struct_3(Struct_2(25705u, false, -589f, vec2<i32>(-40521i, 18289i)), 2147483647i), Struct_3(Struct_2(1u, true, 825f, vec2<i32>(-15002i, 1i)), i32(-2147483648)), Struct_3(Struct_2(3397u, true, 528f, vec2<i32>(0i, 2147483647i)), 2147483647i), Struct_3(Struct_2(1u, false, -610f, vec2<i32>(24921i, -1i)), -35812i), Struct_3(Struct_2(0u, false, -1449f, vec2<i32>(-47700i, 27255i)), 2147483647i));

var<private> global3: Struct_2;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> vec4<bool> {
    global3 = global0.a;
    let var_0 = true;
    global3 = arg_0;
    let var_1 = min(reverseBits(select(73078u, _wgslsmith_dot_vec3_u32(~vec3<u32>(37183u, 1727u, 68629u), ~vec3<u32>(global0.a.a, 81207u, 3187u)), global0.a.b)), ~1976u);
    let var_2 = vec2<bool>(var_0, any(!select(select(vec4<bool>(global0.a.b, false, true, true), vec4<bool>(false, global0.a.b, true, true), vec4<bool>(true, true, arg_2, global3.b)), !vec4<bool>(global0.a.b, true, global0.a.b, true), false)));
    return select(!(!vec4<bool>(any(vec2<bool>(false, global0.a.b)), global0.a.b, arg_0.b, global3.b)), !(!select(!vec4<bool>(arg_2, true, global0.a.b, false), vec4<bool>(true, false, global3.b, true), arg_0.b && var_2.x)), select(select(vec4<bool>(arg_2, any(vec4<bool>(false, false, false, true)), false, any(var_2)), select(select(vec4<bool>(arg_2, global0.a.b, true, false), vec4<bool>(false, false, true, var_2.x), vec4<bool>(false, false, true, arg_0.b)), select(vec4<bool>(true, var_0, false, true), vec4<bool>(global3.b, arg_0.b, arg_2, false), vec4<bool>(true, var_2.x, var_2.x, true)), !vec4<bool>(global0.a.b, var_0, false, false)), !(!vec4<bool>(var_0, false, global3.b, var_2.x))), select(vec4<bool>(global3.b, any(var_2), global3.b, global3.b), select(vec4<bool>(var_0, true, true, true), !vec4<bool>(var_2.x, true, true, var_0), !vec4<bool>(true, arg_0.b, true, true)), select(select(vec4<bool>(true, global0.a.b, var_2.x, arg_0.b), vec4<bool>(false, var_2.x, false, global0.a.b), global3.b), vec4<bool>(var_2.x, true, arg_2, false), any(vec4<bool>(var_0, false, var_0, arg_0.b)))), vec4<bool>(all(!var_2), all(select(vec3<bool>(var_0, false, true), vec3<bool>(false, var_2.x, arg_2), vec3<bool>(var_0, global3.b, true))), !(1229f <= global0.a.c), false)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: u32) -> vec4<u32> {
    global3 = Struct_2(firstLeadingBit(0u), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c, global3.c)) * -607f) + -531f), reverseBits(select(~global3.d, global0.a.d, global0.a.b)));
    global3 = global0.a;
    var var_0 = Struct_3(Struct_2(74194u, false, _wgslsmith_f_op_f32(trunc(global0.a.c)), vec2<i32>(max(_wgslsmith_mult_i32(-26678i, 1i), 1i), -13940i)), arg_1.x >> (61151u % 32u));
    let var_1 = vec4<i32>(global0.b, (-abs(arg_1.x) | ~_wgslsmith_sub_i32(-22568i, 28718i)) & min(_wgslsmith_add_i32(global3.d.x, 2147483647i), _wgslsmith_dot_vec3_i32(~vec3<i32>(4650i, arg_1.x, global0.a.d.x), -vec3<i32>(global0.a.d.x, global3.d.x, -1i))), _wgslsmith_div_i32(countOneBits(arg_1.x) << (~var_0.a.a % 32u), -36888i) ^ 0i, var_0.b << (18338u % 32u));
    let var_2 = Struct_3(var_0.a, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -var_1.xxx, vec3<i32>(global3.d.x, countOneBits(global3.d.x), _wgslsmith_add_i32(var_0.b, -44522i))), _wgslsmith_sub_vec3_i32(~(-vec3<i32>(global0.a.d.x, global0.b, 1i)), ~_wgslsmith_div_vec3_i32(arg_1.xww, vec3<i32>(var_1.x, -2147483647i, 39272i)))));
    return vec4<u32>(~1u, u_input.b.x, countOneBits(min(~var_2.a.a, 0u)), 4294967295u);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> f32 {
    var var_0 = false;
    global2 = array<Struct_3, 17>();
    var var_1 = global0.a;
    global2 = array<Struct_3, 17>();
    var var_2 = func_4(!func_3(global0.a, 25562u, false), _wgslsmith_div_vec4_i32(vec4<i32>(-18162i, 0i, abs(-25081i), -17643i), vec4<i32>(_wgslsmith_mult_i32(256i, arg_2.x), -arg_2.x, _wgslsmith_div_i32(global3.d.x, 1i), arg_2.x)) | (_wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, 0i, arg_2.x) & vec4<i32>(var_1.d.x, global3.d.x, var_1.d.x, 2147483647i), vec4<i32>(-16952i, global0.a.d.x, global0.b, global3.d.x) | vec4<i32>(arg_2.x, 9753i, 0i, 18866i)) << (select(vec4<u32>(var_1.a, 45199u, u_input.a, arg_1.x), _wgslsmith_mod_vec4_u32(arg_1, arg_1), var_1.b & global3.b) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_clamp_u32(u_input.b.x, ~(~24680u), ~(u_input.a ^ 4294967295u))));
    return _wgslsmith_f_op_f32(-2014f + 435f);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(79905u, 17u)];
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(~arg_1.x, global0.a.d.x, -var_0.a.d.x, _wgslsmith_clamp_i32(~(-64559i), ~select(-36448i, 69406i, true), arg_0.d.x)), ~vec4<i32>(10810i, global0.a.d.x, global3.d.x, 44747i));
    var var_1 = !func_3(Struct_2(global3.a, all(func_3(var_0.a, 4294967295u, var_0.a.b).yyx), var_0.a.c, vec2<i32>(global0.b, -91154i) ^ (arg_1.xz & vec2<i32>(arg_0.d.x, global3.d.x))), abs(4294967295u), true);
    global1 = 2147483647i;
    var var_2 = vec3<f32>(global0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(873f, -984f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1145f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.c)) + _wgslsmith_f_op_f32(max(global3.c, var_0.a.c))))), _wgslsmith_f_op_f32(-global0.a.c)));
    return Struct_2(1u, true, var_2.x, ~select(_wgslsmith_clamp_vec2_i32(vec2<i32>(48050i, -42801i), reverseBits(global3.d), vec2<i32>(-2147483647i, -1i)), vec2<i32>(~(-62929i), _wgslsmith_dot_vec2_i32(global3.d, arg_0.d)), var_1.yz));
}

fn func_1() -> Struct_1 {
    var var_0 = global3.d.x;
    global2 = array<Struct_3, 17>();
    global3 = func_5(Struct_2(4294967295u, global3.b, _wgslsmith_f_op_f32(-1238f + _wgslsmith_f_op_f32(766f - _wgslsmith_f_op_f32(func_2(global3.c, vec4<u32>(12275u, 47205u, global0.a.a, 0u), vec2<i32>(global3.d.x, global0.b))))), -(~select(vec2<i32>(global0.a.d.x, global3.d.x), global3.d, vec2<bool>(global0.a.b, global3.b)))), _wgslsmith_mult_vec3_i32(~(~(~vec3<i32>(global0.a.d.x, 2147483647i, -5534i))), -((vec3<i32>(-2147483647i, -1i, global3.d.x) << (vec3<u32>(global3.a, global3.a, 18982u) % vec3<u32>(32u))) >> (vec3<u32>(global3.a, 7061u, u_input.a) % vec3<u32>(32u)))));
    let var_1 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.a, 32056u, u_input.b.x, u_input.a), vec4<u32>(u_input.b.x, u_input.b.x, 28978u, 104613u)), ~64747u), ~(vec3<u32>(u_input.b.x, u_input.b.x, global0.a.a) ^ func_4(vec4<bool>(false, false, false, global3.b), vec4<i32>(global0.a.d.x, global3.d.x, 65010i, -1i), 30604u).wyy));
    var_0 = (global3.d.x & ~global3.d.x) | global0.a.d.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c * _wgslsmith_f_op_f32(func_2(1110f, vec4<u32>(u_input.a, 4294967295u, 47707u, 0u), abs(global3.d))))));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    let var_0 = func_5(Struct_2(global0.a.a, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-197f - arg_1.a))) - _wgslsmith_f_op_f32(-arg_2.c)), -firstTrailingBit(vec2<i32>(global0.a.d.x, global0.a.d.x))), _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -46967i), vec3<i32>(-2147483647i, arg_3.a.d.x, 1i) & vec3<i32>(2147483647i, 2147483647i, 43267i))), max(vec3<i32>(~1i, ~(-1i), 0i), _wgslsmith_div_vec3_i32(-vec3<i32>(-10250i, global3.d.x, global3.d.x), vec3<i32>(1i, 1i, 1i)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-global3.c)), _wgslsmith_f_op_f32(-global3.c)), -1054f, 160f) - _wgslsmith_div_vec4_f32(vec4<f32>(1049f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1851f)), _wgslsmith_f_op_f32(-1000f - var_0.c))), arg_2.c, _wgslsmith_f_op_f32(arg_1.a - func_5(global0.a, vec3<i32>(arg_3.b, 1i, -22917i)).c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.c - var_0.c), arg_3.a.c, _wgslsmith_f_op_f32(-arg_3.a.c), _wgslsmith_f_op_f32(-arg_3.a.c)))));
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.c))), var_0.c))));
    return func_5(global0.a, min(vec3<i32>(20933i, firstTrailingBit(var_0.d.x | global3.d.x), ~(var_0.d.x >> (arg_3.a.a % 32u))), ~max(vec3<i32>(46736i, -4622i, global0.b), vec3<i32>(-37104i, arg_3.a.d.x, -11329i)) << (~(~vec3<u32>(var_0.a, 0u, 59230u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) + _wgslsmith_f_op_f32(-global3.c)))), func_1(), global0.a, global2[_wgslsmith_index_u32(~firstLeadingBit(global0.a.a ^ 44328u) & ~(global3.a << (u_input.a % 32u)), 17u)]);
    var var_1 = 17021u;
    global3 = func_5(Struct_2(abs(global3.a), func_3(func_6(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(337f, global0.a.c), vec2<f32>(global3.c, -934f), vec2<bool>(global0.a.b, global0.a.b))), func_1(), func_6(vec2<f32>(global0.a.c, global0.a.c), Struct_1(global3.c), global0.a, Struct_3(Struct_2(0u, global0.a.b, 1922f, vec2<i32>(var_0.d.x, 16083i)), -71916i)), Struct_3(var_0, 31013i)), ~(~4294967295u), func_3(func_5(Struct_2(u_input.a, true, 247f, var_0.d), vec3<i32>(2214i, global3.d.x, var_0.d.x)), 25027u, true).x).x, global3.c, global0.a.d), firstLeadingBit(vec3<i32>(~(global3.d.x & 27243i), ~_wgslsmith_sub_i32(var_0.d.x, 2147483647i), -42192i)));
    global1 = firstLeadingBit(select(0i, -30480i, true));
    let var_2 = -(i32(-1i) * -28916i);
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.c, -1628f))) - var_0.c), 1000f, _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-177f, global0.a.c), vec2<f32>(global0.a.c, global3.c))), func_1(), var_0, Struct_3(Struct_2(4294967295u, var_0.b, 955f, vec2<i32>(33183i, 18936i)), var_0.d.x)).c + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

