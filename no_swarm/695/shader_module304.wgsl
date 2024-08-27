struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31>;

var<private> global1: array<f32, 16>;

var<private> global2: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(486f, -633f, 1354f, -1092f), vec4<f32>(-556f, 1000f, -489f, -715f), vec4<f32>(105f, 1694f, 917f, -1022f), vec4<f32>(-1581f, 574f, 254f, -638f), vec4<f32>(-914f, -679f, -484f, 824f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global2 = array<vec4<f32>, 5>();
    let var_0 = vec3<u32>(2874u, 62593u ^ ~(~(~u_input.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(~487u, u_input.a, ~4563u), vec3<u32>(countOneBits(u_input.a | u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(13599u, u_input.a, u_input.a, u_input.a), select(vec4<u32>(u_input.a, 36783u, 4294967295u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 27596u), vec4<bool>(true, true, true, true))), ~min(u_input.a, u_input.a))));
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~_wgslsmith_mult_u32(var_0.x, u_input.a), 4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, var_0.x), var_0.x)) << (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.a, 31542u, 38551u), abs(vec4<u32>(0u, 1u, 4294967295u, u_input.a))), ~vec4<u32>(27343u, u_input.a, 1u, 20570u) << (vec4<u32>(u_input.a, 15752u, var_0.x, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(u_input.a & var_0.x, u_input.a, reverseBits(1u), _wgslsmith_dot_vec3_u32(var_0 | vec3<u32>(8722u, 18049u, var_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 0u) ^ vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(var_0.x, u_input.a, var_0.x)))));
    var var_2 = -_wgslsmith_mod_vec2_i32(-reverseBits(~vec2<i32>(-2147483647i, 59663i)), firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(6571i, -70095i), abs(-1i))));
    var_2 = vec2<i32>(var_2.x, 0i);
    return _wgslsmith_div_i32(~(i32(-1i) * -2147483647i), select(1i, -29635i, firstLeadingBit(u_input.a) != ~4294967295u));
}

fn func_2() -> vec4<bool> {
    let var_0 = ~vec4<u32>(7079u, ~(~1u), _wgslsmith_mod_u32(u_input.a, reverseBits(1u)), 4104u);
    global1 = array<f32, 16>();
    global0 = array<vec2<bool>, 31>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -530f);
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(22326u, var_0.x, 4294967295u), ~var_0.zxw), min(vec3<i32>(54714i, 38317i, -1i), vec3<i32>(2147483647i, 17099i, -1i) << (var_0.xxw % vec3<u32>(32u)))), Struct_1(~(~var_0.www), vec3<i32>(2198i, -1i, -2147483647i)), u_input.a, true && (select(true, true, true) | true), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(1i), func_3()), _wgslsmith_div_i32(0i, select(0i, _wgslsmith_sub_i32(-11141i, 2780i), var_1 <= global1[_wgslsmith_index_u32(49820u, 16u)])), 1i, 7771i), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, u_input.a, 7448u), abs(select(vec3<u32>(var_0.x, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a), false))), firstTrailingBit(vec3<i32>(-31063i, _wgslsmith_div_i32(2147483647i, 4317i), _wgslsmith_div_i32(1i, -2147483647i)))), max(~var_0.wyx, countOneBits(vec3<u32>(u_input.a, 32201u, var_0.x) << (vec3<u32>(4294967295u, 52605u, 4294967295u) % vec3<u32>(32u)))) & vec3<u32>(var_0.x, var_0.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, var_0.x), ~5940u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(63726u, 16u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 16u)])))));
    return !select(vec4<bool>(var_2.a.d, !var_2.a.d, var_2.a.d, true), select(!vec4<bool>(var_2.a.d, var_2.a.d, false, var_2.a.d), select(select(vec4<bool>(true, var_2.a.d, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, var_2.a.d, true, false), vec4<bool>(true, var_2.a.d, false, var_2.a.d), var_2.a.d), true), false), vec4<bool>(var_2.a.d, false, var_2.a.d, var_2.a.d));
}

fn func_1(arg_0: vec2<bool>) -> vec2<u32> {
    global0 = array<vec2<bool>, 31>();
    let var_0 = !vec4<bool>(arg_0.x, all(select(!vec4<bool>(true, false, arg_0.x, arg_0.x), func_2(), true)), arg_0.x, true);
    var var_1 = _wgslsmith_div_u32(~(4294967295u | u_input.a), ~u_input.a);
    let var_2 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(154004u, 1u, u_input.a) & firstTrailingBit(vec3<u32>(1u, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), select(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(u_input.a, 731u, u_input.a), var_0.xwy)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 64385u), vec3<u32>(u_input.a, 71426u, 18283u))), -vec3<i32>(i32(-1i) * -15346i, _wgslsmith_dot_vec2_i32(vec2<i32>(50560i, -2147483647i), vec2<i32>(1i, 3850i)), 0i)), Struct_1(vec3<u32>(5670u, 61920u, 0u), vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u))), 28511u, !select(all(vec3<bool>(var_0.x, false, false)), arg_0.x, all(vec4<bool>(var_0.x, true, false, arg_0.x))), vec4<i32>(-_wgslsmith_dot_vec2_i32(~vec2<i32>(-10834i, -29051i), vec2<i32>(6919i, -1i)), 41120i, 11769i, -1i));
    let var_3 = vec3<i32>(-_wgslsmith_dot_vec2_i32(var_2.b.b.yx, -select(var_2.b.b.zx, var_2.e.wx, var_0.x)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 20503i), var_2.e.wx), _wgslsmith_dot_vec3_i32(vec3<i32>(-43240i, 29687i, 18707i), var_2.a.b)) | _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_2.a.b, vec3<i32>(-81341i, var_2.a.b.x, 2147483647i)), _wgslsmith_add_i32(-1i, var_2.e.x)), _wgslsmith_clamp_i32(var_2.e.x, var_2.e.x, _wgslsmith_dot_vec3_i32(abs(var_2.a.b), var_2.e.ywz))), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-var_2.b.b.x), _wgslsmith_div_i32(var_2.e.x, 9171i) << ((var_2.a.a.x ^ 32373u) % 32u)), _wgslsmith_mult_vec2_i32(-vec2<i32>(var_2.e.x, var_2.e.x), vec2<i32>(-1i) * -vec2<i32>(-35366i, var_2.a.b.x))));
    return countOneBits(firstTrailingBit(~vec2<u32>(var_2.b.a.x, u_input.a & var_2.a.a.x)));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    global0 = array<vec2<bool>, 31>();
    global2 = array<vec4<f32>, 5>();
    let var_0 = Struct_4(Struct_1(vec3<u32>(12636u, abs(u_input.a << (6293u % 32u)), ~_wgslsmith_clamp_u32(34308u, 1u, 12761u)), max(~vec3<i32>(1i, 25026i, 6655i), vec3<i32>(0i, func_3(), ~601i))), reverseBits(u_input.a), Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, 10719u) ^ vec3<u32>(4294967295u, arg_0.x, 4294967295u), vec3<i32>(1i, 1i, 1i)), Struct_1(vec3<u32>(0u, u_input.a, arg_0.x), vec3<i32>(1i, -64954i, 2147483647i)), firstTrailingBit(func_1(vec2<bool>(true, true)).x), all(select(global0[_wgslsmith_index_u32(u_input.a, 31u)], vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.a, 31u)])), abs(~vec4<i32>(-30700i, 1i, 1i, -39537i))), vec4<i32>(reverseBits(2363i), min(2147483647i, -62i), reverseBits(-63530i), -1i) & (vec4<i32>(1i, 1i, 1i, 1i) & (vec4<i32>(62102i, 22885i, 56484i, -1i) >> (vec4<u32>(1u, u_input.a, 69475u, 54766u) % vec4<u32>(32u)))), Struct_1(select(vec3<u32>(21715u, 0u, u_input.a), vec3<u32>(u_input.a, arg_0.x, arg_0.x), vec3<bool>(false, false, true)) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(~vec3<i32>(28317i, -5106i, -34270i), vec3<i32>(1i, 1i, 1i))), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(1u, arg_0.x, 1u), vec3<u32>(u_input.a, arg_0.x, arg_0.x)) ^ vec3<u32>(u_input.a, 4294967295u, arg_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-998f, 1151f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, global1[_wgslsmith_index_u32(u_input.a, 16u)]))))), -1000f, (-func_3() << (select(abs(u_input.a), 5465u, all(vec2<bool>(false, true))) % 32u)) & (min(min(-659i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(-1i, 1i, -13666i))) & 17588i));
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(17910u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 41895u, var_0.c.c.a.x), var_0.a.a), reverseBits(4294967295u)), ~var_0.c.c.a.x, abs(func_1(!vec2<bool>(var_0.c.a.d, var_0.c.a.d)).x)), var_0.c.c.b);
    var var_2 = var_0.c.a.a;
    return Struct_1(vec3<u32>(~(~var_2.a.x), 1u, _wgslsmith_clamp_u32((4568u & var_1.a.x) >> (_wgslsmith_div_u32(1u, var_1.a.x) % 32u), var_1.a.x, _wgslsmith_dot_vec2_u32(arg_0, firstLeadingBit(vec2<u32>(u_input.a, arg_0.x))))), vec3<i32>(-1i) * -vec3<i32>(~(-22220i), var_0.c.a.a.b.x, -var_0.c.c.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(~(~func_1(global0[_wgslsmith_index_u32(u_input.a, 31u)]))), Struct_1(_wgslsmith_add_vec3_u32(abs(vec3<u32>(10653u, u_input.a, u_input.a)) & reverseBits(vec3<u32>(u_input.a, 19974u, u_input.a)), ~vec3<u32>(70883u, 1u, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, ~(-20094i), ~29574i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-4769i, -1i, 2280i, -43989i), vec4<i32>(14106i, -10589i, -29108i, 17358i)), _wgslsmith_clamp_i32(-6253i, -2147483647i, 0i), -2147483647i >> (u_input.a % 32u)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 28608u), vec2<u32>(4294967295u, 1u)), _wgslsmith_add_u32(u_input.a, u_input.a), u_input.a), vec3<u32>(firstLeadingBit(4294967295u), ~u_input.a, reverseBits(u_input.a))), u_input.a), !any(vec3<bool>(true, true, true)), vec4<i32>(i32(-1i) * -(~42861i), ~1i, 2147483647i, select(48067i, i32(-1i) * -2147483647i, true)));
    var var_1 = var_0.a.a;
    let var_2 = var_0.a.b.x;
    global0 = array<vec2<bool>, 31>();
    var_1 = vec3<u32>(firstTrailingBit(var_1.x), u_input.a | _wgslsmith_add_u32(u_input.a, 25984u), 4294967295u) << (firstTrailingBit(~var_0.b.a) % vec3<u32>(32u));
    var var_3 = func_4(func_1(select(!select(vec2<bool>(false, false), vec2<bool>(false, var_0.d), var_0.d), global0[_wgslsmith_index_u32(var_1.x, 31u)], select(!global0[_wgslsmith_index_u32(var_0.b.a.x, 31u)], global0[_wgslsmith_index_u32(~0u, 31u)], vec2<bool>(var_0.d, false)))));
    var_1 = vec3<u32>(~countOneBits(var_1.x), var_0.c, countOneBits(var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(-var_3.b.x | var_0.b.b.x)), var_3.a.x, (vec2<u32>(32452u ^ var_1.x, _wgslsmith_clamp_u32(0u, 30827u, 18664u)) << (countOneBits(_wgslsmith_add_vec2_u32(var_0.b.a.yz, vec2<u32>(var_3.a.x, 0u))) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(var_1.yz, vec2<u32>(~13764u, var_3.a.x)) % vec2<u32>(32u)), firstTrailingBit(~var_3.a.x));
}

