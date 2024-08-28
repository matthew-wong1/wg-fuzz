struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = arg_2.a;
    var var_1 = vec3<u32>(arg_2.a.b.x, ~var_0.b.x, var_0.b.x);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -124f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) + arg_1.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 714u, 1u) | select(vec3<u32>(50548u, 26443u, arg_0.x), ~vec3<u32>(37414u, 47866u, var_0.b.x), !vec3<bool>(arg_2.a.a, false, false)), arg_0.yyw, ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(13835u, arg_0.x, var_0.b.x)), ~vec3<u32>(4294967295u, 14008u, arg_2.a.b.x))), Struct_1(true, var_0.b ^ firstTrailingBit(vec2<u32>(80105u, 0u)), 14078i), Struct_1(true, ~var_0.b, 36102i));
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~0u, ~var_1.x, firstTrailingBit(_wgslsmith_clamp_u32(arg_0.x << (18439u % 32u), 4294967295u, 1u))), arg_0 ^ (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 1u, 0u, 35102u), _wgslsmith_sub_vec4_u32(vec4<u32>(3011u, arg_0.x, 0u, 65762u), arg_0), _wgslsmith_sub_vec4_u32(arg_0, arg_0)) & (arg_0 ^ abs(arg_0))));
    let var_4 = -vec2<i32>(arg_2.a.c, u_input.a);
    return ~reverseBits((vec3<u32>(4889u, 3601u, 95682u) ^ (vec3<u32>(var_3.x, 45637u, 1u) & vec3<u32>(arg_2.a.b.x, 95182u, 80781u))) >> (abs(_wgslsmith_mult_vec3_u32(var_3.xyy, var_2.b)) % vec3<u32>(32u)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(!all(vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(max(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 33140u)), vec2<u32>(62109u, 56033u)), vec2<u32>(51923u, 0u)), u_input.a));
    var var_1 = ~(_wgslsmith_mult_vec4_u32(~(vec4<u32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, 54800u) << (vec4<u32>(1u, var_0.a.b.x, 1u, 87309u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(4294967295u, var_0.a.b.x, var_0.a.b.x, 37150u)), vec4<u32>(1u, var_0.a.b.x, 0u, 4294967295u))) >> (abs(vec4<u32>(~27872u, var_0.a.b.x, abs(var_0.a.b.x), reverseBits(var_0.a.b.x))) % vec4<u32>(32u)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -380f), ~func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, var_1.x, 58016u), abs(vec4<u32>(44560u, var_1.x, var_0.a.b.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 1300f, -1402f)))), Struct_2(Struct_1(false, var_1.xx, var_0.a.c))), Struct_1(all(select(select(vec2<bool>(var_0.a.a, var_0.a.a), vec2<bool>(true, true), var_0.a.a), !vec2<bool>(var_0.a.a, true), vec2<bool>(var_0.a.a, true))), _wgslsmith_mult_vec2_u32(~var_1.xx, var_0.a.b), var_0.a.c | 32478i), var_0.a);
    var_1 = vec4<u32>(var_2.c.b.x, var_2.c.b.x, _wgslsmith_sub_u32(firstTrailingBit(5100u), firstLeadingBit(var_1.x)), ~_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.b.x, 1u, var_1.x, var_1.x), vec4<u32>(40176u, var_2.d.b.x, var_2.b.x, 1u)), select(0u, var_2.b.x | 0u, select(var_2.c.a, var_0.a.a, false))));
    var_0 = Struct_2(Struct_1(!var_0.a.a, ~(~(~var_1.wx)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, 54420i)), vec2<i32>(reverseBits(-19315i), var_2.c.c))));
    return Struct_1(!(!any(select(vec2<bool>(true, var_2.d.a), vec2<bool>(var_2.d.a, var_2.d.a), var_2.d.a))), _wgslsmith_add_vec2_u32(var_2.c.b, max(func_3(vec4<u32>(var_0.a.b.x, var_1.x, var_1.x, 4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -683f, 643f)), Struct_2(Struct_1(var_0.a.a, var_0.a.b, -27009i))).zz, ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.b.x, 0u), vec2<u32>(0u, 36454u)))), _wgslsmith_mod_i32(-26134i, select(min(1i, ~19753i), -63270i, true)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    let var_0 = !(!vec4<bool>(arg_2.c.a, !any(vec3<bool>(arg_2.d.a, false, false)), !arg_1, !(0u >= arg_2.d.b.x)));
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = arg_1.a;
    var_0 = func_2();
    var_0 = arg_1.a;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) - arg_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f) * arg_0.a), -190f))), firstLeadingBit(vec3<u32>(~(var_0.b.x ^ 4294967295u), 22344u, 83250u >> (func_3(vec4<u32>(arg_1.a.b.x, arg_0.d.b.x, 0u, var_0.b.x), vec3<f32>(arg_0.a, -136f, 337f), Struct_2(arg_1.a)).x % 32u))), func_4(reverseBits(vec2<i32>(-30612i, i32(-1i) * -2440i)), arg_0.c.a, func_4(vec2<i32>(countOneBits(u_input.a), min(var_0.c, var_0.c)), !any(vec4<bool>(arg_0.d.a, false, var_0.a, arg_0.c.a)), func_4(vec2<i32>(0i, -21793i), true | arg_1.a.a, Struct_3(-802f, arg_0.b, arg_0.d, Struct_1(true, vec2<u32>(arg_1.a.b.x, arg_0.b.x), var_0.c))))).d, arg_1.a);
    let var_2 = firstTrailingBit(firstTrailingBit(reverseBits(arg_1.a.c & u_input.a)));
    return vec3<bool>(!select(arg_1.a.a, true, _wgslsmith_f_op_f32(round(arg_0.a)) <= _wgslsmith_div_f32(-3307f, -1049f)), !(arg_1.a.c > abs(~u_input.a)), arg_0.d.a);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0.c;
    let var_1 = ~4294967295u;
    let var_2 = -537f;
    let var_3 = true;
    var var_4 = func_5(func_4(vec2<i32>(1236i, ~0i) << (min(countOneBits(arg_0.b.zy), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, 1u), vec2<u32>(88189u, var_1))) % vec2<u32>(32u)), arg_0.c.a, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-333f, var_2)), ~(arg_0.b << (arg_0.b % vec3<u32>(32u))), arg_0.d, func_2())), Struct_2(Struct_1((-177f < var_2) & any(vec3<bool>(false, arg_0.d.a, arg_0.d.a)), vec2<u32>(min(var_1, arg_0.c.b.x), _wgslsmith_sub_u32(var_1, 4294967295u)), arg_0.c.c)));
    return arg_0.c;
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    var var_0 = arg_1;
    let var_1 = arg_2.a;
    var var_2 = func_4(vec2<i32>(~(~_wgslsmith_clamp_i32(-1i, -1i, u_input.a)), var_0.c), true, arg_2);
    var_0 = var_2.d;
    var var_3 = var_2.c.a;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(737f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(417f)), _wgslsmith_f_op_f32(-441f - 721f))))), -477f)), ~(~abs(vec3<u32>(1u, 1u, 1u))), Struct_1(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-512f, -602f)) + _wgslsmith_f_op_f32(f32(-1f) * -1195f)), Struct_1(true, vec2<u32>(48996u, 1u), countOneBits(19522i)), Struct_3(1282f, vec3<u32>(0u, 0u, 37532u), func_1(Struct_3(-1594f, vec3<u32>(0u, 64396u, 1u), Struct_1(false, vec2<u32>(4294967295u, 0u), -1i), Struct_1(true, vec2<u32>(12173u, 0u), -9902i))), Struct_1(true, vec2<u32>(73701u, 54362u), -30399i))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), u_input.a), Struct_1(true, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), 27317u), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 60021u), vec2<u32>(4294967295u, 1u)), max(vec2<u32>(53874u, 1u), vec2<u32>(18282u, 0u)))), firstTrailingBit(-310i)));
    let var_1 = vec3<i32>(func_4(min(vec2<i32>(abs(-5911i), max(var_0.d.c, 34638i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(var_0.c.c, u_input.a), vec2<i32>(var_0.d.c, var_0.c.c) ^ vec2<i32>(-1i, u_input.a))), var_0.d.a, func_4(~(vec2<i32>(-1i, u_input.a) >> (vec2<u32>(0u, 47941u) % vec2<u32>(32u))), !(!var_0.d.a), var_0)).c.c, ~var_0.c.c, _wgslsmith_div_i32(~(~12864i) >> (1u % 32u), 2147483647i));
    var var_2 = Struct_2(var_0.d);
    let var_3 = _wgslsmith_add_u32(~1u, var_0.c.b.x);
    var var_4 = func_4(var_1.zx, var_2.a.a, Struct_3(var_0.a, vec3<u32>(~_wgslsmith_mult_u32(var_0.b.x, var_3), ~min(var_0.b.x, var_2.a.b.x), var_3), var_2.a, Struct_1(var_1.x < (9566i >> (var_0.c.b.x % 32u)), vec2<u32>(var_3, ~var_3), _wgslsmith_clamp_i32(~var_1.x, -2147483647i, var_0.d.c))));
    let x = u_input.a;
    s_output = StorageBuffer(-897f, ~32252u, 38950i, vec3<f32>(var_4.a, 1221f, _wgslsmith_f_op_f32(-var_0.a)));
}

