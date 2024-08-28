struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(42106u, 63771u, vec4<i32>(-12832i, i32(-2147483648), 2147483647i, i32(-2147483648)), 0i), true, 6804i), Struct_2(Struct_1(4294967295u, 1u, vec4<i32>(72535i, -12992i, i32(-2147483648), 2147483647i), 61591i), true, 2147483647i), Struct_2(Struct_1(23942u, 0u, vec4<i32>(-1i, 2147483647i, i32(-2147483648), 34647i), 12121i), true, -6092i), Struct_2(Struct_1(1u, 0u, vec4<i32>(1i, i32(-2147483648), 16566i, 15994i), -1i), false, 2147483647i), Struct_2(Struct_1(4294967295u, 41160u, vec4<i32>(-1i, -28889i, 1i, 0i), 2147483647i), false, 2147483647i), Struct_2(Struct_1(4294967295u, 0u, vec4<i32>(1i, 83671i, -10176i, 2147483647i), 38824i), false, 8782i), Struct_2(Struct_1(4294967295u, 7683u, vec4<i32>(1i, -1i, 38797i, i32(-2147483648)), 1i), true, 2147483647i), Struct_2(Struct_1(11834u, 57005u, vec4<i32>(28055i, i32(-2147483648), -1i, -8215i), -1i), true, -1i), Struct_2(Struct_1(12444u, 1u, vec4<i32>(1i, 1i, 2147483647i, -25076i), 2147483647i), true, 1i), Struct_2(Struct_1(0u, 1u, vec4<i32>(14698i, -4051i, -79344i, -27418i), 40150i), true, -27769i), Struct_2(Struct_1(11657u, 75379u, vec4<i32>(-34031i, 2147483647i, 1i, 14440i), -1i), false, 1i), Struct_2(Struct_1(20200u, 9962u, vec4<i32>(-20174i, -1i, 2147483647i, 1i), 46538i), true, 13842i), Struct_2(Struct_1(42618u, 4294967295u, vec4<i32>(23407i, 82459i, -5814i, -1i), 1i), true, -26169i), Struct_2(Struct_1(222u, 33847u, vec4<i32>(13526i, -1i, -5018i, 40521i), -23992i), true, 0i), Struct_2(Struct_1(26570u, 63493u, vec4<i32>(2147483647i, 1i, i32(-2147483648), -21137i), i32(-2147483648)), false, -66549i), Struct_2(Struct_1(1u, 0u, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -57370i), 771i), true, -32888i), Struct_2(Struct_1(4294967295u, 0u, vec4<i32>(-1i, 2147483647i, 3697i, i32(-2147483648)), -18292i), false, 0i), Struct_2(Struct_1(4294967295u, 1973u, vec4<i32>(i32(-2147483648), i32(-2147483648), 32998i, 1i), 0i), true, i32(-2147483648)), Struct_2(Struct_1(1u, 108538u, vec4<i32>(-36771i, -1i, i32(-2147483648), 2147483647i), -34021i), true, -1i), Struct_2(Struct_1(4294967295u, 1051u, vec4<i32>(-22265i, -46465i, -1i, -15644i), 1i), true, 1i), Struct_2(Struct_1(9873u, 1u, vec4<i32>(29706i, 2147483647i, 13163i, -1i), i32(-2147483648)), false, 2147483647i), Struct_2(Struct_1(41815u, 2248u, vec4<i32>(11231i, -1i, -1i, -1467i), 1i), false, 1i), Struct_2(Struct_1(24965u, 0u, vec4<i32>(i32(-2147483648), -1i, 42353i, 80847i), 2147483647i), false, 2147483647i), Struct_2(Struct_1(1u, 11508u, vec4<i32>(58247i, 8340i, 2147483647i, -41430i), 2147483647i), false, -1i), Struct_2(Struct_1(114403u, 0u, vec4<i32>(-26145i, -18889i, -13062i, 1i), i32(-2147483648)), true, 1i), Struct_2(Struct_1(4294967295u, 1u, vec4<i32>(i32(-2147483648), -60282i, 4054i, 2147483647i), 45281i), false, 1i));

var<private> global1: i32 = -4187i;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> i32 {
    global1 = -23236i;
    global1 = -1i;
    var var_0 = Struct_3(~(~((vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, 32901i, u_input.a, u_input.a)) >> (vec4<u32>(4294967295u, 1u, u_input.b.x, 16422u) % vec4<u32>(32u)))), any(!vec3<bool>(true, select(true, true, false), select(true, true, false))), Struct_1(~u_input.b.x, u_input.b.x, ~(~(~vec4<i32>(1i, 0i, u_input.a, 25284i))), u_input.a));
    var_0 = Struct_3(_wgslsmith_clamp_vec4_i32(min(~vec4<i32>(u_input.a, var_0.a.x, u_input.a, 1i) >> (vec4<u32>(u_input.b.x, var_0.c.b, 21491u, 0u) % vec4<u32>(32u)), var_0.c.c), _wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(16419i, _wgslsmith_div_i32(u_input.a, 8780i), u_input.a, var_0.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, var_0.c.d, u_input.a, 38066i), select(var_0.a, var_0.c.c, true))), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.c.x, var_0.c.d, 7666i, var_0.a.x) ^ ~vec4<i32>(u_input.a, -2147483647i, var_0.a.x, -57553i), min(~vec4<i32>(u_input.a, var_0.c.c.x, var_0.c.d, -26892i), ~var_0.a))), (~0u | _wgslsmith_mult_u32(_wgslsmith_mod_u32(13431u, u_input.b.x), 34359u)) >= (~_wgslsmith_clamp_u32(var_0.c.b, var_0.c.b, var_0.c.b) & var_0.c.a), Struct_1(reverseBits(24454u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 5811u, var_0.c.b, 22424u) << (vec4<u32>(70884u, 0u, 34067u, 100198u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.b.x, 38081u, u_input.b.x, var_0.c.a)) >> (select(u_input.b, vec4<u32>(39954u, 4294967295u, u_input.b.x, var_0.c.a), vec4<bool>(false, var_0.b, var_0.b, false)) % vec4<u32>(32u))), var_0.a, u_input.a));
    let var_1 = ~(~_wgslsmith_div_vec3_u32(select(~vec3<u32>(var_0.c.a, 47327u, 40818u), ~vec3<u32>(var_0.c.b, u_input.b.x, var_0.c.b), false), min(abs(vec3<u32>(24778u, u_input.b.x, var_0.c.a)), u_input.b.xxz)));
    return var_0.c.d;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_2, 26>();
    let var_0 = !(!vec2<bool>(true, arg_0 && arg_0));
    var var_1 = !select(select(vec4<bool>(false, any(var_0), true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true))), select(vec4<bool>(true, arg_0, false, var_0.x), select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, var_0.x, true, var_0.x), vec4<bool>(false, false, var_0.x, true)), arg_0), true), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.x, false, var_0.x, false), true), select(vec4<bool>(arg_0, var_0.x, true, false), vec4<bool>(false, true, true, false), var_0.x), arg_3.b < 1u), _wgslsmith_sub_i32(arg_3.c.x, _wgslsmith_add_i32(u_input.a, -54208i)) >= arg_1);
    return min(u_input.a, 2147483647i);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_2) -> vec3<i32> {
    global0 = array<Struct_2, 26>();
    let var_0 = -1i;
    global0 = array<Struct_2, 26>();
    var var_1 = false;
    var_1 = false;
    return vec3<i32>(func_3(), var_0, ~max(~(-11353i), arg_3.c) >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(~arg_0.c.b, arg_3.a.b), 1u) % 32u));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<i32>) -> i32 {
    let var_0 = 0u;
    var var_1 = 1u;
    let var_2 = func_5(Struct_3(vec4<i32>(-1i) * -arg_1.a.c, arg_1.b, Struct_1(4294967295u, 1u, -vec4<i32>(87527i, arg_3.x, 33986i, arg_1.c) ^ arg_1.a.c, 1i)), arg_1, _wgslsmith_mod_vec3_i32(countOneBits(arg_3), vec3<i32>(abs(-1i), arg_0 ^ -1i, -(21036i ^ arg_3.x))), Struct_2(Struct_1(44670u, abs(arg_1.a.a) >> ((42841u << (arg_1.a.b % 32u)) % 32u), arg_1.a.c, func_4(false, func_3(), -1i, arg_1.a)), any(vec2<bool>(all(vec2<bool>(arg_2.x, false)), true)), _wgslsmith_mult_i32(-2147483647i, -arg_1.c) | ~_wgslsmith_div_i32(-35154i, arg_1.c)));
    let var_3 = _wgslsmith_sub_vec3_u32(u_input.b.ywy, _wgslsmith_mod_vec3_u32(~abs(u_input.b.xxx & u_input.b.wzx), select(vec3<u32>(_wgslsmith_mod_u32(1u, var_0), _wgslsmith_mod_u32(var_0, 25718u), ~20843u), ~(~vec3<u32>(10469u, 0u, 16249u)), _wgslsmith_f_op_f32(step(1000f, 839f)) > 1381f)));
    global1 = _wgslsmith_clamp_i32(-arg_1.c & 16711i, -17394i, countOneBits(~arg_3.x));
    return _wgslsmith_div_i32(~(~37229i), 1i);
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> vec2<u32> {
    let var_0 = 14929u;
    let var_1 = Struct_3(-_wgslsmith_div_vec4_i32(-vec4<i32>(arg_0, -1i, -1i, 25003i) << ((u_input.b << (vec4<u32>(9674u, 30898u, 74715u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(arg_0, u_input.a & arg_0, arg_0, -arg_1.a.x)), !arg_2, Struct_1(4294967295u, u_input.b.x, arg_1.c.c, _wgslsmith_sub_i32(u_input.a, 1i)));
    let var_2 = select(vec2<bool>(any(!(!vec3<bool>(arg_2, true, arg_1.b))), !any(select(vec3<bool>(arg_2, arg_2, arg_1.b), vec3<bool>(var_1.b, arg_1.b, arg_1.b), arg_2))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(arg_1.b, var_1.b), arg_1.b), true), !select(vec2<bool>(false, var_1.b), vec2<bool>(true, arg_1.b), vec2<bool>(arg_1.b, true))), !(!select(vec2<bool>(arg_1.b, arg_2), vec2<bool>(false, arg_2), vec2<bool>(false, true))), select(select(vec2<bool>(arg_1.b, false), vec2<bool>(true, true), select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(true, var_1.b), true)), !select(vec2<bool>(arg_2, arg_1.b), vec2<bool>(false, true), vec2<bool>(arg_1.b, false)), all(vec3<bool>(false, false, arg_2)))), !(!var_1.b));
    let var_3 = -arg_1.a.x;
    let var_4 = Struct_3(_wgslsmith_sub_vec4_i32(arg_1.c.c, abs(~firstTrailingBit(var_1.a))), arg_1.b, var_1.c);
    return u_input.b.xx;
}

fn func_7(arg_0: vec2<u32>, arg_1: f32) -> Struct_2 {
    var var_0 = any(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), true));
    var var_1 = vec2<i32>(abs(~(-3633i)), _wgslsmith_clamp_i32(-27939i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 15350i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 11373i, u_input.a, -2147483647i), vec4<i32>(-6013i, 11749i, u_input.a, u_input.a))), select(-countOneBits(12575i), u_input.a, false)));
    let var_2 = Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(reverseBits(~u_input.b.wyz), _wgslsmith_clamp_vec3_u32(~u_input.b.xyw, vec3<u32>(40456u, arg_0.x, arg_0.x), ~u_input.b.ywx)), 4294967295u), _wgslsmith_dot_vec3_u32(max(reverseBits(vec3<u32>(63371u, 10536u, 4294967295u)), max(u_input.b.zzz, u_input.b.wyx)), vec3<u32>(~arg_0.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 27175u), u_input.b.yyx))) ^ 0u, ~_wgslsmith_mult_vec4_i32(-(~vec4<i32>(var_1.x, var_1.x, var_1.x, u_input.a)), countOneBits(vec4<i32>(67142i, var_1.x, var_1.x, u_input.a))), var_1.x);
    var_1 = abs(firstLeadingBit(-var_2.c.xz)) >> (min(~vec2<u32>(~36538u, 20963u << (0u % 32u)), ~func_6(-5146i, Struct_3(vec4<i32>(u_input.a, 1i, 2147483647i, var_2.d), false, var_2), true)) % vec2<u32>(32u));
    var var_3 = ~(_wgslsmith_div_u32(abs(var_2.b | u_input.b.x), 5573u) >> (~max(0u, 41716u | arg_0.x) % 32u));
    return global0[_wgslsmith_index_u32(24507u, 26u)];
}

fn func_8(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = true;
    var_0 = false;
    global1 = 1i;
    global1 = ~arg_2.c;
    var var_1 = func_7(max(func_6(countOneBits(-2147483647i), Struct_3(arg_1.a.c, arg_3, arg_2.a), arg_2.b), abs(_wgslsmith_add_vec2_u32(u_input.b.yy, u_input.b.xy))) >> (u_input.b.zx % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x)).a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = vec4<f32>(-946f, _wgslsmith_f_op_f32(func_8(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-283f)) * -589f), 1249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f * 1335f))), func_7(func_6(func_2(-1i, Struct_2(Struct_1(u_input.b.x, 4294967295u, arg_0.c, -9994i), true, 0i), vec3<bool>(false, true, true), vec3<i32>(arg_0.c.x, arg_0.d, -13741i)), Struct_3(arg_0.c, true, arg_0), any(vec4<bool>(false, true, true, false))), -444f), Struct_2(func_7(select(vec2<u32>(14649u, 60580u), u_input.b.zy, false), _wgslsmith_f_op_f32(trunc(-1000f))).a, all(vec3<bool>(true, false, false)), arg_0.d), func_7(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xy), 2579f).b)), 623f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-478f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f)))));
    let var_1 = Struct_3(_wgslsmith_sub_vec4_i32(arg_0.c & abs(-vec4<i32>(36828i, arg_0.c.x, -37934i, u_input.a)), firstLeadingBit(arg_0.c)), 184f >= _wgslsmith_f_op_f32(var_0.x + -975f), arg_0);
    let var_2 = !var_1.b;
    var var_3 = -1096f;
    var var_4 = ~u_input.a ^ var_1.c.c.x;
    return ~u_input.b.wwz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b.x, firstTrailingBit(~_wgslsmith_dot_vec3_u32(func_1(Struct_1(66903u, 1u, vec4<i32>(u_input.a, -16368i, u_input.a, u_input.a), u_input.a)), reverseBits(u_input.b.zyw))), vec4<i32>(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a ^ 2147483647i), u_input.a, -72114i, u_input.a), 1i | _wgslsmith_add_i32(u_input.a, -1i));
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global1 = var_0.c.x;
    var var_1 = -17050i;
    let var_2 = func_7(~(reverseBits(u_input.b.wx) | (~vec2<u32>(1u, u_input.b.x) << (vec2<u32>(61330u, 153u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1519f, _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(func_8(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), Struct_2(func_7(vec2<u32>(1u, var_0.a), -147f).a, true, max(-1i, 0i)), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], true)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, ~(~max(u_input.b.wwx | u_input.b.yyw, vec3<u32>(var_2.b, u_input.b.x, 4294967295u))), ~(~u_input.b.x), u_input.a & -7100i, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, var_2.a, 18941u), ~(~u_input.b)), ~u_input.b));
}

