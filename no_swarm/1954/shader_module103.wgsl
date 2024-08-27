struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = false;
    var var_1 = select(select(vec4<u32>(arg_1.x, _wgslsmith_div_u32(32242u, arg_1.x), ~arg_2.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 13430u), arg_1)), ~arg_2.b.c, !vec4<bool>(var_0, false, arg_2.b.b.x, var_0)), arg_0.b.c, !arg_0.a.x) << (arg_2.b.d % vec4<u32>(32u));
    var var_2 = -vec3<i32>(0i, select(abs(u_input.b.x), abs(u_input.a) >> (_wgslsmith_sub_u32(1u, var_1.x) % 32u), false), -1i);
    let var_3 = Struct_2(vec3<bool>(any(select(vec3<bool>(arg_0.b.b.x, true, true), vec3<bool>(var_0, false, arg_0.a.x), !vec3<bool>(arg_0.b.b.x, arg_2.b.b.x, true))), false, firstTrailingBit(abs(62912u)) <= arg_0.c.x), Struct_1(~select(countOneBits(vec2<u32>(1u, 683u)), firstLeadingBit(arg_2.b.c.xz), !vec2<bool>(true, arg_0.b.b.x)), arg_2.b.b, arg_2.b.c, ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.x, arg_1.x, arg_1.x, 64837u), arg_0.b.c), arg_0.b.c.x, _wgslsmith_mult_u32(59420u, arg_2.c.x), 10607u)), vec3<u32>(~_wgslsmith_dot_vec4_u32(arg_0.b.c, max(vec4<u32>(4294967295u, arg_1.x, 1u, arg_0.d.x), vec4<u32>(1u, arg_2.c.x, 1u, var_1.x))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, var_1.x, 4294967295u) & vec3<u32>(var_1.x, 0u, 1u), arg_2.b.d.xzz), firstTrailingBit(46032u)), arg_2.d.x), vec3<u32>(~100711u, _wgslsmith_add_u32(_wgslsmith_mult_u32(~13398u, arg_2.c.x | 36998u), var_1.x), _wgslsmith_mod_u32(arg_1.x, arg_2.d.x)));
    let var_4 = arg_0.b;
    return arg_2.c;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: i32) -> vec3<bool> {
    let var_0 = Struct_2(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), Struct_1(firstTrailingBit(select(vec2<u32>(41920u, arg_1.x), arg_1.yx, true)), vec3<bool>(true, true, true), vec4<u32>(arg_1.x >> (arg_1.x % 32u), min(~arg_1.x, arg_1.x), arg_1.x, arg_1.x), ~(~vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x) & vec4<u32>(1u, 39000u, arg_1.x, arg_1.x))), ~arg_1, func_3(Struct_2(vec3<bool>(true, true, true), Struct_1(arg_1.xy << (arg_1.zy % vec2<u32>(32u)), vec3<bool>(true, true, true), vec4<u32>(arg_1.x, arg_1.x, 0u, arg_1.x), vec4<u32>(arg_1.x, 4294967295u, 1u, 0u)), arg_1, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 36978u, 1062u), vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x)), 0u, 4294967295u)), reverseBits(~arg_1), Struct_2(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), any(vec4<bool>(true, false, true, false))), Struct_1(vec2<u32>(52490u, arg_1.x) >> (vec2<u32>(75327u, arg_1.x) % vec2<u32>(32u)), vec3<bool>(true, true, true), countOneBits(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 34374u)), vec4<u32>(48883u, arg_1.x, 4294967295u, arg_1.x) | vec4<u32>(1u, arg_1.x, 91087u, arg_1.x)), vec3<u32>(~93665u, ~0u, arg_1.x), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(1u, 0u, arg_1.x)), vec3<u32>(arg_1.x, arg_1.x, 25533u) ^ vec3<u32>(26310u, arg_1.x, arg_1.x)))));
    var var_1 = vec2<bool>(false, false);
    let var_2 = var_0.d.x;
    var_1 = vec2<bool>(all(!(!vec3<bool>(var_0.b.b.x, false, true))), !(!(!var_1.x)));
    var var_3 = Struct_2(select(select(var_0.a, select(select(var_0.a, var_0.a, true), vec3<bool>(false, true, var_1.x), var_0.b.b), _wgslsmith_f_op_f32(round(-1000f)) != _wgslsmith_f_op_f32(exp2(arg_0.x))), var_0.b.b, all(vec4<bool>(var_0.b.b.x | var_0.a.x, all(vec2<bool>(var_1.x, true)), true, !var_0.a.x))), Struct_1(max(min(arg_1.yx, arg_1.xz) & ~arg_1.yz, ~(~arg_1.yx)), select(select(var_0.a, var_0.b.b, true), var_0.b.b, vec3<bool>(!var_0.a.x, all(vec4<bool>(var_1.x, var_1.x, true, true)), arg_0.x > arg_0.x)), vec4<u32>(~var_0.d.x | _wgslsmith_mult_u32(var_2, 0u), max(45421u & var_2, var_0.d.x), var_0.d.x, var_0.c.x), select(_wgslsmith_clamp_vec4_u32(var_0.b.d, var_0.b.c, vec4<u32>(var_0.c.x, var_2, var_0.b.a.x, var_0.c.x)), ~var_0.b.c, any(vec3<bool>(true, true, var_1.x))) ^ countOneBits(vec4<u32>(57283u, 36857u, var_0.c.x, var_2) | vec4<u32>(var_2, 21957u, 10071u, 69881u))), _wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(31455u) << ((var_2 | 4294967295u) % 32u), 1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(19939u, arg_1.x, var_2), vec3<u32>(var_2, var_0.b.c.x, var_2)) % 32u), var_0.c.x), arg_1), reverseBits(vec3<u32>(arg_1.x, 0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 38198u), vec2<u32>(0u, 23706u)), func_3(var_0, vec3<u32>(16109u, var_2, var_2), var_0).x))));
    return select(var_0.a, vec3<bool>(var_3.a.x, var_0.a.x, true), var_1.x);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(42851u, arg_2);
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-670f, -337f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-763f, 173f) * vec2<f32>(1000f, -436f)))))), _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(22362u, 57713u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(126012u, var_0, arg_2), func_3(Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<u32>(arg_2, arg_2), vec3<bool>(false, false, true), vec4<u32>(arg_1, 0u, 0u, arg_1), vec4<u32>(4294967295u, var_0, 28072u, 0u)), vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(80106u, arg_1, 4294967295u)), vec3<u32>(1u, arg_2, var_0), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<u32>(45724u, arg_1), vec3<bool>(false, true, true), vec4<u32>(0u, 11611u, 18544u, 1u), vec4<u32>(16304u, arg_2, var_0, 1u)), vec3<u32>(var_0, 0u, arg_2), vec3<u32>(arg_1, arg_1, 0u))))), u_input.a), Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 32508u), vec2<u32>(var_0, arg_1)), !func_4(vec2<f32>(743f, -271f), vec3<u32>(var_0, arg_2, 4294967295u) ^ vec3<u32>(arg_2, arg_1, var_0), 0i), vec4<u32>(1u, 76332u, reverseBits(var_0), var_0), _wgslsmith_sub_vec4_u32(vec4<u32>(~arg_2, firstLeadingBit(arg_2), arg_1, max(var_0, 65550u)), firstTrailingBit(vec4<u32>(49265u, arg_2, 4294967295u, 4294967295u)) >> (vec4<u32>(arg_2, arg_1, 15292u, 43837u) % vec4<u32>(32u)))), vec3<u32>(~arg_1, ~_wgslsmith_mult_u32(41456u, arg_2), _wgslsmith_add_u32(arg_1, arg_2)) >> (~reverseBits(vec3<u32>(1u, var_0, 63166u)) % vec3<u32>(32u)), ~vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(52433u, var_0), vec2<u32>(var_0, 19057u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 36483u, arg_1, 76102u), vec4<u32>(arg_2, arg_2, var_0, arg_2)), 29534u));
    return var_1.b;
}

fn func_1() -> u32 {
    var var_0 = func_2(2147483647i, 4294967295u, 4428u);
    var_0 = Struct_1(vec2<u32>((var_0.c.x | 33121u) >> (~var_0.d.x % 32u), 13734u), select(var_0.b, select(vec3<bool>(any(vec3<bool>(var_0.b.x, true, var_0.b.x)), var_0.b.x, true && var_0.b.x), var_0.b, var_0.b), true), ~reverseBits(func_2(_wgslsmith_clamp_i32(2147483647i, u_input.b.x, u_input.c), ~1u, abs(1u)).d), ~(var_0.d ^ var_0.c));
    var var_1 = Struct_2(!(!(!var_0.b)), func_2(_wgslsmith_sub_i32((u_input.a << (4294967295u % 32u)) << (func_2(u_input.b.x, 0u, var_0.c.x).d.x % 32u), _wgslsmith_mult_i32(u_input.c, firstLeadingBit(u_input.b.x))), ~(~_wgslsmith_div_u32(var_0.a.x, 4294967295u)), ~_wgslsmith_dot_vec2_u32(var_0.d.zx, vec2<u32>(0u, var_0.d.x))), min(select(reverseBits(~var_0.c.xzw), var_0.c.zxz, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2189f, -1794f)), var_0.d.xyw >> (var_0.d.zzz % vec3<u32>(32u)), reverseBits(u_input.a))), var_0.c.zxy), _wgslsmith_mult_vec3_u32(~var_0.c.xww, var_0.c.xzz));
    var var_2 = (u_input.b.zy & u_input.b.zz) >> (vec2<u32>(~(~(~43732u)), countOneBits(9254u)) % vec2<u32>(32u));
    var_2 = vec2<i32>(u_input.b.x, abs(_wgslsmith_mult_i32(i32(-1i) * -1119i, max(~1i, var_2.x))));
    return (~0u << (~func_2(u_input.b.x, firstLeadingBit(4294967295u), 82160u).a.x % 32u)) << (_wgslsmith_mod_u32(65412u, var_0.c.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = ~((_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 41254u, 18940u), 0u) & ~(~0u)) << (11008u % 32u));
    var_0 = _wgslsmith_mod_u32((_wgslsmith_sub_u32(~31343u, select(4294967295u, 1639u, false)) & 23385u) >> (1u % 32u), 1u);
    let var_1 = 108f;
    var_0 = ~(~1u);
    var_0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(~1u, 1u, ~52665u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 30269u), ~select(vec2<u32>(67972u, 4294967295u), vec2<u32>(1247u, 1u), false)), 32290u), _wgslsmith_dot_vec4_u32(vec4<u32>(select(4294967295u, 94362u, false), ~1u, ~41801u, 0u), countOneBits(~vec4<u32>(4294967295u, 4294967295u, 36273u, 60434u))) & _wgslsmith_mod_u32(~_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_mult_u32(~112341u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 117707u)))));
    var_0 = ~(~(select(5110u, func_1(), true) ^ func_1()));
    var_0 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 53210u, 73404u), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))) ^ _wgslsmith_sub_u32(1u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(21635u, 1u, 0u), vec3<u32>(64097u, 16844u, 23749u))));
    let x = u_input.a;
    s_output = StorageBuffer(25136u | _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 1u), 1u, ~107294u), 33922u), _wgslsmith_div_i32(-1i, 32562i), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(37171u, 0u, 68489u), vec3<u32>(0u, 0u, 1u)), ~vec3<u32>(35654u, 0u, 37315u)), _wgslsmith_add_u32(min(0u, 1u), ~110982u)) << (~1u % 32u), vec2<i32>(0i, -23821i), vec3<u32>(1u, ~(~0u ^ firstTrailingBit(27211u)), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(6594u, 1u), vec2<u32>(1722u, 46306u)), _wgslsmith_div_vec2_u32(vec2<u32>(87081u, 32814u), vec2<u32>(66102u, 51196u))))));
}

