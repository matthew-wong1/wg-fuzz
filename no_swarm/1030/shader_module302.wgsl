struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<bool>(true, true, false), vec4<i32>(1i, 46036i, -50980i, -78995i), vec2<u32>(18335u, 4294967295u)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(10563i, -16336i, -38986i, -27i), vec2<u32>(1u, 101677u)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-47922i, -53124i, 0i, 63571i), vec2<u32>(31531u, 52448u)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(2147483647i, i32(-2147483648), 1i, -1i), vec2<u32>(4294967295u, 26171u)), Struct_1(vec3<bool>(false, false, false), vec4<i32>(-20823i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec2<u32>(1u, 4294967295u)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(-48876i, 2147483647i, i32(-2147483648), 31437i), vec2<u32>(4294967295u, 1u)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-1i, 36469i, 0i, 20238i), vec2<u32>(26627u, 14346u)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(2147483647i, 590i, 4566i, -73451i), vec2<u32>(27788u, 28030u)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(-10109i, -15499i, 53459i, i32(-2147483648)), vec2<u32>(25474u, 4294967295u)), Struct_1(vec3<bool>(false, false, false), vec4<i32>(i32(-2147483648), -29918i, -28897i, 31593i), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(-5610i, 1i, -2936i, i32(-2147483648)), vec2<u32>(0u, 37172u)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), 1i, 1i, 3250i), vec2<u32>(8510u, 1u)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(-56690i, 1i, -1i, 0i), vec2<u32>(25373u, 0u)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-64935i, -1i, i32(-2147483648), 70678i), vec2<u32>(4294967295u, 29014u)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), 0i, 2147483647i, -29555i), vec2<u32>(4294967295u, 86679u)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(1i, 1i, 1i, 18620i), vec2<u32>(4294967295u, 562u)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(54239i, i32(-2147483648), i32(-2147483648), 2147483647i), vec2<u32>(0u, 26908u)));

var<private> global1: array<vec3<i32>, 26>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<f32>) -> u32 {
    global0 = array<Struct_1, 17>();
    let var_0 = arg_1;
    var var_1 = Struct_2(Struct_1(vec3<bool>(arg_1.a.x, var_0.a.x, var_0.a.x), vec4<i32>(19281i, _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_2.x, 4402i), arg_2.x), -75667i, -1i), ~(~(arg_1.c ^ vec2<u32>(arg_0.x, arg_1.c.x)))));
    let var_2 = Struct_1(!(!vec3<bool>(any(vec4<bool>(arg_1.a.x, true, var_1.a.a.x, true)), true, true)), vec4<i32>(-(~1i | arg_2.x), -28387i, -min(84304i, arg_1.b.x), ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, 0i, arg_2.x, -15294i), var_0.b, vec4<bool>(false, true, false, true)), ~var_1.a.b)), firstLeadingBit(max(max(vec2<u32>(4294967295u, arg_0.x), arg_0.yz), abs(vec2<u32>(0u, 1u)))) >> (abs(_wgslsmith_mult_vec2_u32(arg_1.c & arg_0.yz, select(vec2<u32>(1u, 0u), var_0.c, vec2<bool>(var_1.a.a.x, var_0.a.x)))) % vec2<u32>(32u)));
    var var_3 = 4294967295u ^ ~_wgslsmith_mult_u32(abs(4294967295u), _wgslsmith_sub_u32(abs(var_2.c.x), 1u));
    return ~4294967295u;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = ~(~_wgslsmith_sub_u32(u_input.c, arg_3.c.x) ^ (~_wgslsmith_mult_u32(arg_1, 32219u) ^ ~32801u));
    var_0 = countOneBits(_wgslsmith_clamp_u32(4433u, _wgslsmith_sub_u32(~(~arg_3.c.x), 4294967295u), _wgslsmith_add_u32(u_input.a, 0u)));
    var_0 = func_3(~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.c.x, u_input.c, 5579u), vec3<u32>(96542u, 47095u, arg_3.c.x))), global0[_wgslsmith_index_u32(~(~(~4294967295u)), 17u)], arg_3.b.wy, vec3<f32>(-157f, -852f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1095f, 404f))))));
    global0 = array<Struct_1, 17>();
    var_0 = u_input.a;
    return Struct_2(Struct_1(arg_3.a, arg_3.b, vec2<u32>(u_input.c, arg_3.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: u32) -> vec4<bool> {
    var var_0 = abs(_wgslsmith_mult_vec2_u32(arg_0.a.c << (reverseBits(arg_0.a.c >> (vec2<u32>(u_input.a, arg_3) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(u_input.c, _wgslsmith_clamp_u32(arg_3, ~103024u, u_input.c))));
    var_0 = arg_0.a.c;
    var_0 = _wgslsmith_div_vec2_u32(firstTrailingBit(~max(arg_0.a.c << (arg_0.a.c % vec2<u32>(32u)), arg_0.a.c)), arg_0.a.c);
    let var_1 = Struct_1(!vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, !all(vec3<bool>(false, false, arg_0.a.a.x))), -(max(arg_0.a.b, arg_0.a.b) & vec4<i32>(u_input.b.x, arg_1.x, -2147483647i, 0i)) << (~firstTrailingBit(vec4<u32>(90694u, arg_0.a.c.x, var_0.x, 0u)) % vec4<u32>(32u)), ~arg_0.a.c);
    let var_2 = var_1.b.wzy;
    return !vec4<bool>(false, false, !func_2(arg_0.a.a.x, _wgslsmith_sub_u32(arg_0.a.c.x, var_0.x), arg_1.x, func_2(arg_0.a.a.x, 58203u, -10311i, global0[_wgslsmith_index_u32(0u, 17u)]).a).a.a.x, true);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<u32> {
    global0 = array<Struct_1, 17>();
    var var_0 = !vec2<bool>(any(func_4(func_2(true, arg_2.c.x, arg_1.x, global0[_wgslsmith_index_u32(2725u, 17u)]), abs(vec3<i32>(u_input.b.x, arg_1.x, -6483i)), select(vec3<i32>(6951i, -14478i, arg_2.b.x), vec3<i32>(19364i, arg_1.x, arg_1.x), false), u_input.c >> (u_input.a % 32u))), any(select(select(vec4<bool>(true, true, arg_2.a.x, arg_2.a.x), vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_2.a.x), arg_2.a.x), vec4<bool>(false, arg_2.a.x, false, true), func_4(Struct_2(Struct_1(arg_2.a, arg_2.b, arg_2.c)), arg_2.b.zzz, vec3<i32>(arg_2.b.x, 22546i, u_input.b.x), arg_2.c.x))));
    var_0 = arg_2.a.zy;
    var_0 = select(vec2<bool>(true, select(!(arg_0 > arg_0), arg_2.a.x, true)), vec2<bool>(!var_0.x != (~18690u < _wgslsmith_mult_u32(arg_2.c.x, 38801u)), !any(vec4<bool>(true, arg_2.a.x, true, arg_2.a.x))), var_0.x);
    global0 = array<Struct_1, 17>();
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(abs(func_1(-665f, u_input.b, Struct_1(vec3<bool>(false, true, false), vec4<i32>(u_input.b.x, u_input.b.x, 18112i, 1636i), vec2<u32>(u_input.c, u_input.c))) ^ abs(vec2<u32>(u_input.a, u_input.a))) << (~(~_wgslsmith_div_vec2_u32(vec2<u32>(99620u, u_input.a), vec2<u32>(1u, u_input.c))) % vec2<u32>(32u)), firstTrailingBit(reverseBits(~(vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))))));
    var var_1 = func_2(true, ~var_0.x, u_input.b.x, func_2(true, var_0.x, 0i >> (u_input.a % 32u), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 1u), 17u)]).a).a;
    let var_2 = var_1.b.x;
    var_0 = var_1.c;
    let var_3 = vec4<bool>(func_2(select(true, false, u_input.b.x > 18318i), ~abs(~var_0.x), _wgslsmith_sub_i32(var_1.b.x, _wgslsmith_sub_i32(countOneBits(-46102i), 1i)), func_2(!(true || var_1.a.x), ~var_0.x, 0i, Struct_1(select(var_1.a, var_1.a, vec3<bool>(false, var_1.a.x, true)), var_1.b ^ vec4<i32>(16570i, var_1.b.x, 2147483647i, -2147483647i), vec2<u32>(24742u, var_0.x))).a).a.a.x, all(vec2<bool>(false, ~1u == ~var_1.c.x)), false, (u_input.b.x != -var_1.b.x) & var_1.a.x);
    var var_4 = min(var_0.x, _wgslsmith_sub_u32(52065u, firstTrailingBit(var_1.c.x)));
    var var_5 = all(var_3);
    let var_6 = vec3<i32>(-1i) * -vec3<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(u_input.b.x, firstTrailingBit(var_1.b.x)), firstTrailingBit(15777i));
    let var_7 = ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(var_0.x, u_input.a), 56527u), ~u_input.a, ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-115f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1961f + 147f), _wgslsmith_f_op_f32(ceil(377f)), false)))), reverseBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.x, 4294967295u, 1u), 55464u)) << (var_7 % 32u), u_input.a, countOneBits(vec4<u32>(var_7, ~45308u, ~32525u, 137781u)));
}

