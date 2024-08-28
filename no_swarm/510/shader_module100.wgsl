struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(207f, -947f, -2155f, 1597f);

var<private> global1: array<Struct_5, 27>;

var<private> global2: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, 49594i), vec2<i32>(0i, -14429i), vec2<i32>(9488i, i32(-2147483648)), vec2<i32>(-1i, -188i), vec2<i32>(-44952i, -1i), vec2<i32>(5315i, 0i), vec2<i32>(32792i, 32477i), vec2<i32>(24880i, 10770i), vec2<i32>(2147483647i, 1i), vec2<i32>(56231i, -7822i), vec2<i32>(-2970i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(48093i, 0i), vec2<i32>(-2841i, 27145i), vec2<i32>(-1505i, i32(-2147483648)), vec2<i32>(3534i, -22314i), vec2<i32>(-34406i, -10957i), vec2<i32>(19669i, 27418i), vec2<i32>(67536i, 25176i), vec2<i32>(36603i, i32(-2147483648)), vec2<i32>(8123i, 2147483647i), vec2<i32>(12995i, 2147483647i), vec2<i32>(-1i, -17380i), vec2<i32>(-12154i, -49350i), vec2<i32>(-1i, -2035i), vec2<i32>(1i, 26306i));

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1i, vec2<u32>(35815u, 68450u), vec4<bool>(true, true, true, false), true, -1i), Struct_1(45576i, vec2<u32>(0u, 4294967295u), vec4<bool>(true, false, false, true), true, 22818i), Struct_1(2147483647i, vec2<u32>(0u, 64395u), vec4<bool>(false, true, true, false), false, 2147483647i), Struct_1(-1i, vec2<u32>(1254u, 71970u), vec4<bool>(false, false, true, true), true, -41390i), Struct_1(-2376i, vec2<u32>(10889u, 76189u), vec4<bool>(false, false, true, true), false, 1i), Struct_1(34902i, vec2<u32>(6442u, 1u), vec4<bool>(false, true, true, false), false, -15581i), Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 1u), vec4<bool>(false, true, true, false), false, 2147483647i), Struct_1(-38348i, vec2<u32>(1u, 7215u), vec4<bool>(false, false, false, false), false, 1i), Struct_1(-15287i, vec2<u32>(36437u, 21368u), vec4<bool>(false, false, true, true), true, 51555i), Struct_1(1i, vec2<u32>(2324u, 4294967295u), vec4<bool>(true, false, false, false), true, 29931i), Struct_1(i32(-2147483648), vec2<u32>(87605u, 14130u), vec4<bool>(false, true, true, true), false, 1i), Struct_1(0i, vec2<u32>(4294967295u, 40207u), vec4<bool>(true, true, false, false), true, -1i), Struct_1(i32(-2147483648), vec2<u32>(16966u, 102288u), vec4<bool>(true, true, true, false), true, 1i), Struct_1(2147483647i, vec2<u32>(1u, 6665u), vec4<bool>(false, true, true, false), true, 1i), Struct_1(33143i, vec2<u32>(21181u, 4294967295u), vec4<bool>(false, false, false, true), false, -1i), Struct_1(13447i, vec2<u32>(1u, 4294967295u), vec4<bool>(true, false, true, false), false, 46823i), Struct_1(-28344i, vec2<u32>(192u, 4294967295u), vec4<bool>(true, false, true, true), true, 2144i), Struct_1(39427i, vec2<u32>(25173u, 1u), vec4<bool>(true, true, false, true), true, -1i), Struct_1(1i, vec2<u32>(4294967295u, 45275u), vec4<bool>(false, true, false, true), true, -1i), Struct_1(23762i, vec2<u32>(38076u, 4294967295u), vec4<bool>(false, false, true, false), true, 18237i), Struct_1(36228i, vec2<u32>(4294967295u, 0u), vec4<bool>(false, false, true, false), true, 0i), Struct_1(-62238i, vec2<u32>(47125u, 0u), vec4<bool>(true, true, false, false), false, i32(-2147483648)), Struct_1(42960i, vec2<u32>(0u, 4294967295u), vec4<bool>(false, true, false, true), false, -87821i), Struct_1(-1i, vec2<u32>(70976u, 0u), vec4<bool>(true, false, true, false), false, 1i), Struct_1(47084i, vec2<u32>(18731u, 4294967295u), vec4<bool>(false, false, true, true), true, 51844i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec2<bool> {
    let var_0 = false;
    let var_1 = global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a & ~u_input.a, ~40324u, select(_wgslsmith_sub_u32(u_input.a, u_input.a), abs(0u), false)), vec3<u32>(4294967295u, 1u, ~(~u_input.a))), _wgslsmith_add_u32(_wgslsmith_mod_u32(select(u_input.a, u_input.a, !var_0), ~u_input.a), max(~(~2433u), 8744u))), 25u)];
    global0 = vec4<f32>(1038f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1137f - global0.x))), -1095f, _wgslsmith_f_op_f32(f32(-1f) * -755f));
    var var_2 = var_1.c;
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(~(~var_1.b.x), 0u, ~5173u, ~99978u), abs(~firstTrailingBit(vec4<u32>(var_1.b.x, 12424u, u_input.a, 1u)) >> (~(vec4<u32>(u_input.a, var_1.b.x, u_input.a, 0u) ^ vec4<u32>(53200u, 4294967295u, var_1.b.x, 57025u)) % vec4<u32>(32u))));
    return vec2<bool>(all(vec3<bool>(all(vec4<bool>(var_2.x, var_2.x, true, var_2.x)) && !var_0, var_1.c.x, any(!var_1.c))), !(!var_0));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32((_wgslsmith_sub_u32(~_wgslsmith_sub_u32(58584u, arg_0), u_input.a) >> ((~_wgslsmith_mult_u32(arg_0, u_input.a) ^ ~(~u_input.a)) % 32u)) >> (14267u % 32u), 25u)];
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(965f, -488f, -240f, global0.x) - vec4<f32>(global0.x, global0.x, 1082f, global0.x)), vec4<f32>(1000f, -777f, 1000f, -1125f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -616f, 708f) + vec4<f32>(-100f, 1464f, global0.x, 1416f)), false)))) * vec4<f32>(1000f, 1100f, 1837f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -980f) * global0.x))));
    global3 = array<Struct_1, 25>();
    var var_1 = Struct_3(global3[_wgslsmith_index_u32(0u, 25u)], 0i, Struct_2(any(func_3()), Struct_1(_wgslsmith_sub_i32(-11030i, var_0.e), vec2<u32>(1u, 1u), select(!vec4<bool>(var_0.c.x, var_0.c.x, false, false), var_0.c, func_3().x), false, select(i32(-1i) * -26209i, var_0.e, var_0.d)), all(select(vec2<bool>(false, var_0.d), var_0.c.zx, vec2<bool>(false, var_0.d))) || (~52750i != var_0.e), var_0.c, global3[_wgslsmith_index_u32(~4294967295u, 25u)]));
    let var_2 = vec4<u32>(~_wgslsmith_clamp_u32(var_1.a.b.x, 27718u, ~(var_0.b.x | arg_0)), var_1.a.b.x, 0u, 4294967295u);
    return u_input.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_1 {
    global2 = array<vec2<i32>, 27>();
    global2 = array<vec2<i32>, 27>();
    let var_0 = !arg_1.b.d;
    let var_1 = Struct_1(arg_1.e.a, arg_0.yy, select(vec4<bool>(any(vec2<bool>(true, arg_1.b.c.x)), var_0, arg_1.a, !arg_1.c), vec4<bool>(any(select(arg_1.d.yyy, vec3<bool>(true, true, true), vec3<bool>(true, true, false))), abs(-2147483647i) <= _wgslsmith_sub_i32(23407i, arg_1.b.a), true, !arg_1.d.x), select(arg_1.b.c, vec4<bool>(false, 1i >= arg_1.e.a, arg_1.b.a < arg_1.e.a, true), select(!arg_1.e.c, select(vec4<bool>(var_0, arg_1.e.d, true, false), arg_1.b.c, false), true))), var_0, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(16008i, arg_1.b.e, arg_1.b.a, -2147483647i), (vec4<i32>(-1i, arg_1.e.a, arg_1.e.e, arg_1.e.a) | vec4<i32>(0i, 20563i, arg_1.e.a, arg_1.e.e)) & abs(vec4<i32>(arg_1.e.e, arg_1.e.a, 11911i, 2147483647i))), firstLeadingBit(-vec4<i32>(2147483647i, 2147483647i, -1i, arg_1.e.a) & vec4<i32>(arg_1.b.a, 5035i, -1i, arg_1.b.e))));
    let var_2 = vec3<bool>(any(vec2<bool>(any(vec2<bool>(false, false)), var_1.c.x)), arg_1.e.c.x, false);
    return Struct_1(-2147483647i, arg_0.zz, !select(vec4<bool>(arg_0.x < var_1.b.x, var_1.d, false, true), vec4<bool>(0u != arg_1.b.b.x, select(var_2.x, var_0, false), true, !arg_1.c), arg_1.b.c), var_0, 2147483647i);
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = func_4(vec3<u32>(u_input.a, ~func_2(u_input.a) << (u_input.a % 32u), ~(~u_input.a)), Struct_2(!all(!vec3<bool>(arg_0.x, false, true)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11194u, 7535u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(4294967295u, u_input.a, 0u))), u_input.a), 25u)], false, !vec4<bool>(false, all(vec3<bool>(arg_0.x, true, true)), true, arg_0.x), Struct_1(_wgslsmith_mod_i32(1i, 1i), vec2<u32>(1u, _wgslsmith_div_u32(1u, u_input.a)), select(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, false, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), !vec4<bool>(arg_0.x, arg_0.x, true, true), !vec4<bool>(false, arg_0.x, false, true)), -2137f < _wgslsmith_f_op_f32(floor(-837f)), max(-1i, abs(0i)))));
    global2 = array<vec2<i32>, 27>();
    var_0 = func_4(~((vec3<u32>(71684u, 1u, 728u) | _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, u_input.a), vec3<u32>(38274u, var_0.b.x, var_0.b.x), vec3<u32>(var_0.b.x, 4294967295u, var_0.b.x))) | _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(46110u, 1u, 1u), vec3<u32>(u_input.a, var_0.b.x, 1u)), max(vec3<u32>(32223u, var_0.b.x, var_0.b.x), vec3<u32>(var_0.b.x, u_input.a, u_input.a)))), Struct_2(any(func_4(~vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_2(true, Struct_1(2147483647i, var_0.b, var_0.c, arg_0.x, var_0.e), arg_0.x, vec4<bool>(var_0.c.x, var_0.d, arg_0.x, false), Struct_1(1i, vec2<u32>(1u, 0u), var_0.c, var_0.c.x, -1i))).c.yy), Struct_1(var_0.e, var_0.b, vec4<bool>(true, -493f != global0.x, false, var_0.e > -9148i), true, var_0.e), all(!arg_0), !select(var_0.c, vec4<bool>(true, var_0.d, true, arg_0.x), var_0.c.x), Struct_1(var_0.a, ~vec2<u32>(u_input.a, 4294967295u), select(vec4<bool>(var_0.c.x, false, arg_0.x, true), !var_0.c, vec4<bool>(var_0.d, true, false, true)), select(true, false, arg_0.x), var_0.a)));
    let var_1 = select(func_4(vec3<u32>(~_wgslsmith_mod_u32(u_input.a, u_input.a), 1u, _wgslsmith_sub_u32(u_input.a, _wgslsmith_div_u32(var_0.b.x, 3944u))), Struct_2(false, global3[_wgslsmith_index_u32(reverseBits(var_0.b.x), 25u)], all(func_4(vec3<u32>(49617u, u_input.a, u_input.a), Struct_2(var_0.d, global3[_wgslsmith_index_u32(var_0.b.x, 25u)], var_0.c.x, vec4<bool>(arg_0.x, false, arg_0.x, false), global3[_wgslsmith_index_u32(var_0.b.x, 25u)])).c.xyx), func_4(firstLeadingBit(vec3<u32>(4294967295u, 89760u, 4294967295u)), Struct_2(var_0.c.x, Struct_1(var_0.a, var_0.b, var_0.c, arg_0.x, -1i), true, var_0.c, global3[_wgslsmith_index_u32(1u, 25u)])).c, func_4(~vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u), Struct_2(var_0.c.x, Struct_1(36045i, vec2<u32>(u_input.a, 18977u), var_0.c, var_0.c.x, 21115i), arg_0.x, var_0.c, Struct_1(-32091i, vec2<u32>(var_0.b.x, 24094u), var_0.c, arg_0.x, var_0.e))))).c.yzx, var_0.c.xww, var_0.c.zww);
    var var_2 = 37696u;
    return Struct_2(any(!var_0.c), Struct_1(var_0.a, ~(~_wgslsmith_div_vec2_u32(var_0.b, vec2<u32>(var_0.b.x, var_0.b.x))), func_4(select(vec3<u32>(52681u, var_0.b.x, u_input.a), vec3<u32>(var_0.b.x, 1u, u_input.a) << (vec3<u32>(33755u, 6757u, u_input.a) % vec3<u32>(32u)), true), Struct_2(false, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 25u)], true, !vec4<bool>(var_1.x, false, var_1.x, true), func_4(vec3<u32>(1u, 0u, 28152u), Struct_2(arg_0.x, global3[_wgslsmith_index_u32(5509u, 25u)], arg_0.x, vec4<bool>(true, false, arg_0.x, arg_0.x), Struct_1(var_0.a, vec2<u32>(u_input.a, u_input.a), vec4<bool>(var_0.d, true, arg_0.x, var_0.c.x), var_0.d, 0i))))).c, true, _wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.e << (var_0.b.x % 32u), -2147483647i), _wgslsmith_add_i32(~1i, var_0.e | var_0.e))), arg_0.x, vec4<bool>(true, var_0.c.x, true, !(var_0.d & (1i >= var_0.a))), global3[_wgslsmith_index_u32(u_input.a, 25u)]);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: Struct_2) -> u32 {
    global2 = array<vec2<i32>, 27>();
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -572f), 798f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(-240f, -376f)) + _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, -1141f), 175f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-306f, -436f, -1000f, -1000f)), vec4<f32>(-358f, global0.x, 1766f, -933f)))));
    var var_0 = arg_0.e.a;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(select(~u_input.a, 0u, true), _wgslsmith_sub_u32(4294967295u, 1u), u_input.a), func_5(func_1(vec2<bool>(true, true)), func_1(vec2<bool>(false, true)).b.c.xzy, Struct_4(func_4(vec3<u32>(u_input.a, 4294967295u, u_input.a), Struct_2(true, Struct_1(-2147483647i, vec2<u32>(u_input.a, u_input.a), vec4<bool>(false, false, false, true), true, 2147483647i), true, vec4<bool>(false, true, true, false), global3[_wgslsmith_index_u32(u_input.a, 25u)]))), Struct_2(true, Struct_1(0i, vec2<u32>(u_input.a, 1u), vec4<bool>(true, false, true, false), false, 1i), false, vec4<bool>(true, true, true, true), global3[_wgslsmith_index_u32(86142u, 25u)]))), abs(reverseBits(_wgslsmith_mult_u32(65125u, ~u_input.a)))), 27u)];
    let var_1 = _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(floor(406f)), true));
    global1 = array<Struct_5, 27>();
    var var_2 = true;
    var var_3 = global1[_wgslsmith_index_u32(u_input.a, 27u)];
    let var_4 = !vec4<bool>(true, var_0.a.a.a == -(~(-2147483647i)), var_3.a.a.d, var_3.a.a.c.x);
    var var_5 = Struct_5(var_3.a);
    let var_6 = var_5.a.a.c.wxw;
    let x = u_input.a;
    s_output = StorageBuffer(-select(-_wgslsmith_mod_vec2_i32(global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(var_3.a.a.b.x, 27u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 23984u, u_input.a), vec4<u32>(u_input.a, 10531u, 9346u, 3599u))), 27u)], -100f >= _wgslsmith_f_op_f32(min(-1529f, global0.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1915f, -638f, -145f, global0.x), vec4<f32>(-777f, global0.x, global0.x, global0.x))), vec4<f32>(var_1, -1336f, global0.x, 500f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 2875f, 1085f, var_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1589f, -2375f, -1353f, 1010f) + vec4<f32>(global0.x, var_1, var_1, 386f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -159f, var_1)))))), abs(_wgslsmith_add_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.a.e, 1225i, 55579i), vec3<i32>(0i, -40015i, var_5.a.a.a)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.a.a, 1i, var_3.a.a.a), vec3<i32>(48491i, var_5.a.a.e, 0i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2147483647i, var_0.a.a.e), vec3<i32>(2139i, var_5.a.a.a, var_0.a.a.e)))));
}

