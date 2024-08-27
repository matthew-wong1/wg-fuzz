struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = vec2<u32>(4294967295u, reverseBits(1u));
    let var_1 = arg_0;
    let var_2 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(~(-14796i), ~reverseBits(arg_0.b), 1i), vec3<i32>(1i ^ _wgslsmith_div_i32(-14947i, var_1.b), 0i & arg_0.b, var_1.b)), Struct_1(min(~vec2<u32>(arg_0.a.x, var_0.x) | (var_1.a ^ vec2<u32>(4294967295u, 4294967295u)), ~min(vec2<u32>(arg_0.a.x, u_input.a), arg_1.xy)), -51322i), false, ~vec4<u32>(4294967295u, 119178u, 18620u, _wgslsmith_dot_vec3_u32(countOneBits(arg_1.zxw), _wgslsmith_clamp_vec3_u32(vec3<u32>(51246u, 0u, var_0.x), vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<u32>(4294967295u, 0u, var_1.a.x)))));
    let var_3 = firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, var_2.d.x, abs(4294967295u)), var_2.d.zzw));
    let var_4 = Struct_2(vec3<i32>(16328i, _wgslsmith_add_i32(_wgslsmith_div_i32(var_1.b, -28629i), ~(var_1.b >> (var_1.a.x % 32u))), -37039i), Struct_1(_wgslsmith_mult_vec2_u32(~var_1.a, vec2<u32>(28978u, 4294967295u)), arg_0.b), -2147483647i >= arg_0.b, firstTrailingBit(vec4<u32>(~(u_input.a | 18273u), _wgslsmith_dot_vec2_u32(max(vec2<u32>(var_2.d.x, 0u), vec2<u32>(var_1.a.x, u_input.a)), vec2<u32>(var_2.d.x, arg_0.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 49407u, 1u, 63297u), var_2.d), arg_1), ~0u)));
    return select(vec4<u32>(4294967295u, ~0u, reverseBits(var_1.a.x), countOneBits(1u)), var_4.d, vec4<bool>(all(!(!vec3<bool>(true, var_2.c, var_2.c))), false && (any(vec4<bool>(var_4.c, false, true, var_4.c)) && true), true, any(select(vec4<bool>(true, var_4.c, var_2.c, var_2.c), select(vec4<bool>(var_4.c, var_4.c, false, var_2.c), vec4<bool>(false, var_4.c, true, var_2.c), vec4<bool>(var_4.c, true, var_4.c, false)), var_4.c))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_2(abs(abs(abs(vec3<i32>(arg_0.b, arg_0.b, 2147483647i)) ^ firstTrailingBit(vec3<i32>(arg_0.b, arg_0.b, -2147483647i)))), arg_0, abs(~(arg_0.a.x & 28537u)) > ~u_input.a, max(abs(vec4<u32>(9131u, 14372u, u_input.a, 61914u)) << (abs(abs(vec4<u32>(4294967295u, u_input.a, 0u, 15526u))) % vec4<u32>(32u)), func_3(Struct_1(vec2<u32>(4294967295u, 29041u), 51700i ^ arg_0.b), vec4<u32>(u_input.a, 4294967295u, reverseBits(4294967295u), u_input.a))));
    var var_1 = vec2<bool>(true, true);
    var var_2 = select(~reverseBits(var_0.d), max(_wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(6733u), 1u, arg_0.a.x, ~var_0.d.x), ~vec4<u32>(21358u, arg_0.a.x, u_input.a, 4294967295u)), ~var_0.d), select(vec4<bool>(!any(vec2<bool>(false, true)), true && (var_0.a.x <= -8188i), true, all(vec2<bool>(var_1.x, var_1.x))), select(vec4<bool>(var_1.x, !var_1.x, select(var_1.x, true, var_1.x), true), vec4<bool>(any(vec2<bool>(var_0.c, var_1.x)), var_0.c, true, true), any(select(vec2<bool>(false, false), vec2<bool>(var_0.c, var_0.c), vec2<bool>(arg_1, true)))), !var_1.x));
    var_2 = min(var_0.d & var_0.d, var_0.d);
    let var_3 = var_2.wxy << (~(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, arg_0.a.x, 0u)), reverseBits(var_0.d.xzw), var_0.d.xyx >> (vec3<u32>(14687u, var_0.b.a.x, arg_0.a.x) % vec3<u32>(32u))) & var_0.d.wzw) % vec3<u32>(32u));
    return Struct_2(var_0.a >> (vec3<u32>(min(~var_3.x, 78339u), 28774u, func_3(var_0.b, vec4<u32>(u_input.a, var_2.x, var_2.x, var_0.b.a.x)).x << (~4294967295u % 32u)) % vec3<u32>(32u)), var_0.b, select(true, select(var_0.c, any(vec3<bool>(false, var_0.c, var_1.x)), arg_1), !var_0.c), vec4<u32>(781u, 56146u, abs(var_0.b.a.x) << (arg_0.a.x % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~1u, 0u << (1u % 32u)), var_3.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = abs(min(vec2<i32>(arg_1.a.x, abs(arg_2.b)), vec2<i32>(reverseBits(~arg_2.b), abs(reverseBits(-17296i)))));
    var var_1 = 4294967295u;
    let var_2 = arg_0.b;
    let var_3 = false;
    var var_4 = func_2(func_2(var_2, _wgslsmith_div_u32(16104u, arg_1.b.a.x) < ~arg_0.d.x).b, false).c || arg_0.c;
    return func_2(var_2, true);
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    let var_0 = func_4(func_4(arg_2, func_2(Struct_1(_wgslsmith_div_vec2_u32(arg_1, vec2<u32>(86125u, arg_1.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 12500i, -2147483647i, arg_2.a.x), vec4<i32>(-22933i, arg_0, -2147483647i, arg_0))), any(vec3<bool>(arg_2.c, arg_3, arg_3)) && false), arg_2.b, Struct_1(arg_2.b.a, ~countOneBits(-7926i))), Struct_2(arg_2.a & abs(vec3<i32>(arg_2.b.b, arg_2.a.x, 62049i)), func_4(Struct_2(~vec3<i32>(24383i, -12555i, arg_2.b.b), func_4(Struct_2(arg_2.a, Struct_1(arg_1, arg_0), true, vec4<u32>(u_input.a, u_input.a, 1u, 1u)), arg_2, arg_2.b, Struct_1(vec2<u32>(arg_2.b.a.x, arg_1.x), -10584i)).b, select(arg_2.c, false, arg_3), ~vec4<u32>(arg_1.x, u_input.a, u_input.a, arg_1.x)), arg_2, arg_2.b, arg_2.b).b, !arg_3, ~vec4<u32>(63080u, ~9029u, abs(arg_1.x), ~21898u)), Struct_1(select(vec2<u32>(4294967295u >> (u_input.a % 32u), _wgslsmith_dot_vec2_u32(arg_2.d.xw, arg_1)), arg_2.b.a, -2147483647i > _wgslsmith_clamp_i32(arg_2.b.b, 1i, arg_2.a.x)), reverseBits(arg_0) & -6827i), Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_2.b.a.x), vec2<u32>(60555u, 1u)), _wgslsmith_mult_i32(~arg_0, -1i)));
    return var_0.b;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_5(-(~_wgslsmith_div_i32(arg_0.b, arg_0.b)), vec2<u32>(~81793u, u_input.a), func_4(func_2(arg_0, all(vec4<bool>(true, false, true, false))), Struct_2(max(vec3<i32>(1i, arg_0.b, -2147483647i), vec3<i32>(arg_0.b, arg_0.b, arg_0.b)), func_2(func_2(Struct_1(arg_0.a, arg_0.b), true).b, true).b, true, vec4<u32>(0u, u_input.a, 45914u, ~u_input.a)), Struct_1(~arg_0.a, ~1i), Struct_1(func_3(Struct_1(arg_0.a, -33261i), vec4<u32>(u_input.a, 0u, u_input.a, 0u)).zy, 69109i)), all(vec4<bool>((u_input.a >= arg_0.a.x) & true, false, true, true)));
    return Struct_1(arg_0.a, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~reverseBits(max(~vec2<u32>(32488u, 4294967295u), vec2<u32>(u_input.a, 4294967295u))), _wgslsmith_mult_i32(-23448i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-38406i, abs(2147483647i)), 4435i)));
    var_0 = func_1(Struct_1(var_0.a, -1i));
    var_0 = func_4(Struct_2(firstLeadingBit(-abs(vec3<i32>(0i, 2147483647i, var_0.b))), func_1(func_4(func_2(Struct_1(vec2<u32>(u_input.a, var_0.a.x), var_0.b), false), Struct_2(vec3<i32>(2147483647i, var_0.b, var_0.b), Struct_1(var_0.a, -1i), true, vec4<u32>(u_input.a, 5704u, u_input.a, 0u)), Struct_1(var_0.a, var_0.b), func_5(var_0.b, vec2<u32>(4294967295u, var_0.a.x), Struct_2(vec3<i32>(-1i, 2147483647i, 14186i), Struct_1(var_0.a, var_0.b), false, vec4<u32>(var_0.a.x, 26592u, u_input.a, 0u)), true)).b), !(!any(vec2<bool>(false, true))), ~(~vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, 23208u) << ((vec4<u32>(1u, u_input.a, 51922u, 16855u) & vec4<u32>(var_0.a.x, var_0.a.x, u_input.a, u_input.a)) % vec4<u32>(32u)))), Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -1i, 11191i), (vec3<i32>(var_0.b, 0i, -2147483647i) >> (vec3<u32>(91717u, u_input.a, 1u) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(68637u, var_0.a.x, var_0.a.x), vec3<u32>(0u, var_0.a.x, u_input.a)) % vec3<u32>(32u))), func_2(Struct_1(var_0.a, -2147483647i), true).b, true, vec4<u32>(max(1u, ~1u), 71398u, 29342u, u_input.a)), Struct_1(~(~var_0.a), _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.b), vec2<i32>(var_0.b, -1i)), var_0.b)), Struct_1(var_0.a, var_0.b)).b;
    var var_1 = Struct_2(select(abs(max(select(vec3<i32>(2147483647i, 2147483647i, var_0.b), vec3<i32>(var_0.b, -1i, -2147483647i), false), vec3<i32>(var_0.b, -2147483647i, var_0.b))), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.b, var_0.b, 7811i) & _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b, var_0.b, var_0.b), vec3<i32>(var_0.b, var_0.b, var_0.b)), select(abs(vec3<i32>(var_0.b, 0i, var_0.b)), func_2(Struct_1(vec2<u32>(u_input.a, 1u), 2147483647i), true).a, true)), vec3<bool>(false, !any(vec3<bool>(true, false, false)), !select(true, true, true))), func_2(func_4(Struct_2(abs(vec3<i32>(var_0.b, var_0.b, var_0.b)), Struct_1(var_0.a, -20840i), func_2(Struct_1(var_0.a, -6520i), true).c, ~vec4<u32>(9642u, 1u, 1u, 0u)), Struct_2(vec3<i32>(var_0.b, -29947i, -1i), func_4(Struct_2(vec3<i32>(var_0.b, var_0.b, 45255i), Struct_1(vec2<u32>(u_input.a, 37946u), -2147483647i), false, vec4<u32>(4294967295u, 1u, 0u, u_input.a)), Struct_2(vec3<i32>(var_0.b, 1i, var_0.b), Struct_1(vec2<u32>(24839u, var_0.a.x), var_0.b), true, vec4<u32>(73525u, var_0.a.x, 0u, u_input.a)), Struct_1(var_0.a, var_0.b), Struct_1(vec2<u32>(89809u, u_input.a), var_0.b)).b, true, countOneBits(vec4<u32>(u_input.a, 0u, 79229u, u_input.a))), Struct_1(var_0.a, ~1i), Struct_1(~vec2<u32>(40917u, u_input.a), var_0.b)).b, !(!select(true, true, true))).b, func_2(func_5(func_4(Struct_2(vec3<i32>(var_0.b, -33072i, var_0.b), Struct_1(var_0.a, -551i), false, vec4<u32>(var_0.a.x, var_0.a.x, 61478u, 40077u)), Struct_2(vec3<i32>(var_0.b, 1i, var_0.b), Struct_1(var_0.a, -39341i), false, vec4<u32>(4294967295u, 1u, 12775u, var_0.a.x)), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, var_0.b)).a.x, var_0.a, func_4(Struct_2(vec3<i32>(-29303i, var_0.b, var_0.b), Struct_1(vec2<u32>(var_0.a.x, var_0.a.x), var_0.b), false, vec4<u32>(var_0.a.x, u_input.a, u_input.a, var_0.a.x)), func_4(Struct_2(vec3<i32>(-36023i, var_0.b, var_0.b), Struct_1(var_0.a, var_0.b), false, vec4<u32>(28793u, var_0.a.x, 1u, var_0.a.x)), Struct_2(vec3<i32>(var_0.b, var_0.b, var_0.b), Struct_1(vec2<u32>(34021u, u_input.a), 6180i), false, vec4<u32>(var_0.a.x, 0u, 84586u, 48558u)), Struct_1(vec2<u32>(var_0.a.x, 20520u), 6703i), Struct_1(var_0.a, -12298i)), Struct_1(vec2<u32>(u_input.a, 0u), var_0.b), func_2(Struct_1(vec2<u32>(37641u, 11352u), -52663i), true).b), select(false, true, var_0.a.x > u_input.a)), true).c, vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(var_0.a.x, _wgslsmith_sub_u32(u_input.a, 1u), 1u)), ~(~u_input.a), u_input.a, _wgslsmith_div_u32(reverseBits(var_0.a.x) >> (_wgslsmith_mult_u32(var_0.a.x, 39618u) % 32u), 0u)));
    var var_2 = true;
    var var_3 = var_1.d.xxy;
    var_2 = var_1.c;
    let var_4 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(1i, 7283i), ~28757i ^ (-1i >> (var_0.a.x % 32u)), ~(-2147483647i)), var_1.b, !(!all(vec2<bool>(true, true))), _wgslsmith_add_vec4_u32(var_1.d, select(vec4<u32>(~var_1.b.a.x, ~104742u, ~1u, 1u), abs(reverseBits(vec4<u32>(0u, var_3.x, var_1.b.a.x, var_1.b.a.x))), !vec4<bool>(var_1.c, var_1.c, var_1.c, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.xz ^ ~(~(~vec2<i32>(3112i, var_4.a.x))), func_1(var_4.b).b);
}

