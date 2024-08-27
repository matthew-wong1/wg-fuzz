struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec3<f32>) -> vec3<u32> {
    var var_0 = vec2<f32>(-632f, arg_1.x);
    var var_1 = arg_2.c;
    global0 = array<Struct_1, 21>();
    let var_2 = arg_2.a.b.b;
    return vec3<u32>(27275u, ~var_2, abs(u_input.a.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(4294967295u, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(18027u, arg_0.x, u_input.a.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_0.x, u_input.a.x), vec3<u32>(arg_0.x, u_input.a.x, u_input.a.x)))), global0[_wgslsmith_index_u32(arg_0.x, 21u)], _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a.x) << (vec4<u32>(arg_0.x, 0u, 16779u, 1u) % vec4<u32>(32u))), vec4<u32>(~reverseBits(39215u), ~arg_0.x, ~0u, 13284u)), true, countOneBits(~(~vec3<u32>(24343u, u_input.a.x, 0u))) & ~func_3(!vec3<bool>(true, arg_1.x, false), arg_2, Struct_4(Struct_3(Struct_2(arg_0.x, vec3<u32>(0u, arg_0.x, u_input.a.x)), Struct_1(vec3<bool>(true, false, arg_1.x), 84503u), 45707u, arg_1.x, vec3<u32>(27599u, 0u, 30899u)), arg_1.x, 9469i), vec3<f32>(862f, -210f, arg_2.x)));
    let var_1 = _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(var_0.b.b, u_input.a.x));
    var_0 = Struct_3(var_0.a, Struct_1(select(select(var_0.b.a, select(vec3<bool>(var_0.d, arg_1.x, true), vec3<bool>(true, arg_1.x, arg_1.x), var_0.d), arg_1.wyz), vec3<bool>(var_0.b.a.x, arg_1.x, all(vec2<bool>(arg_1.x, arg_1.x))), !var_0.b.a), ~1u << (firstTrailingBit(~arg_0.x) % 32u)), func_3(var_0.b.a, arg_2, Struct_4(Struct_3(Struct_2(var_1, var_0.a.b), Struct_1(var_0.b.a, var_1), u_input.a.x >> (u_input.a.x % 32u), arg_1.x, min(var_0.e, var_0.a.b)), var_0.d, _wgslsmith_mult_i32(arg_3 >> (107385u % 32u), 2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-474f, 886f, arg_2.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(365f, arg_2.x, arg_2.x))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-957f, 899f, 3186f) + vec3<f32>(-1291f, arg_2.x, -408f)), vec3<f32>(arg_2.x, arg_2.x, 678f))))).x, any(var_0.b.a.yz), var_0.a.b);
    var var_2 = var_0.a;
    global0 = array<Struct_1, 21>();
    return var_0.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, u_input.a), arg_1.b.yy | _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, arg_1.b.x), func_2(arg_1.b.xx, vec4<bool>(false, true, true, false), vec3<f32>(-1696f, 1000f, 920f), arg_0.x).b.zy, reverseBits(vec2<u32>(0u, arg_1.b.x)))), ~(~abs(~arg_1.b)));
    var var_1 = _wgslsmith_f_op_f32(floor(290f));
    global0 = array<Struct_1, 21>();
    return Struct_4(Struct_3(func_2(vec2<u32>(u_input.a.x & u_input.a.x, var_0.b.x), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), vec3<f32>(_wgslsmith_f_op_f32(-478f + -1817f), _wgslsmith_f_op_f32(sign(165f)), _wgslsmith_div_f32(1378f, 368f)), -1i), Struct_1(vec3<bool>(true, true, true), var_0.a), _wgslsmith_clamp_u32(0u, func_2(arg_1.b.xx, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1121f, -417f, 1105f) + vec3<f32>(730f, 2279f, 1000f)), -45152i).b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(2209u, u_input.a.x, 18857u), var_0.b)), (~arg_1.b.x > 60426u) && true, ~vec3<u32>(~0u, arg_1.a, u_input.a.x)), !all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), false)), abs(countOneBits(arg_0.x)));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>) -> vec4<u32> {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    let var_0 = Struct_2(arg_0.a.c, arg_0.a.e);
    return _wgslsmith_add_vec4_u32(vec4<u32>(~func_2(u_input.a, select(vec4<bool>(false, true, false, true), vec4<bool>(false, arg_0.a.d, false, arg_0.b), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), ~2147483647i).b.x, (~arg_0.a.e.x & ~1u) | reverseBits(var_0.a), u_input.a.x, u_input.a.x), select(~firstTrailingBit(vec4<u32>(0u, var_0.b.x, arg_0.a.c, u_input.a.x)), vec4<u32>(u_input.a.x, var_0.a, var_0.a, u_input.a.x) & (vec4<u32>(4294967295u, 39772u, var_0.a, 0u) >> (vec4<u32>(26101u, 1u, var_0.a, u_input.a.x) % vec4<u32>(32u))), !select(vec4<bool>(false, false, arg_0.a.b.a.x, arg_0.b), vec4<bool>(arg_0.b, true, arg_0.b, arg_0.a.d), vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b))) >> (reverseBits(select(vec4<u32>(var_0.a, arg_0.a.a.a, var_0.b.x, 0u), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, var_0.a, var_0.a)), vec4<bool>(true, arg_0.a.b.a.x, true, true))) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = ~_wgslsmith_div_vec4_u32((select(vec4<u32>(u_input.a.x, 35138u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 0u, 4294967295u, arg_0.a.b.b), arg_0.a.d) & abs(vec4<u32>(arg_0.a.e.x, 39459u, 1u, 4294967295u))) & (vec4<u32>(u_input.a.x, u_input.a.x, 24683u, u_input.a.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 29975u, 0u, arg_0.a.c), vec4<u32>(4294967295u, 15287u, 0u, u_input.a.x), vec4<u32>(30578u, 63352u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0.a.a.b.x, 2731u, 0u), vec4<u32>(0u, u_input.a.x, 1u, 1u)));
    global0 = array<Struct_1, 21>();
    var var_1 = true;
    var_0 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.a.c), vec2<u32>(1u, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.c, arg_0.a.e.x, 0u, u_input.a.x), vec4<u32>(var_0.x, u_input.a.x, var_0.x, 91266u))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, arg_0.a.c), abs(arg_0.a.e.x)), ~(u_input.a.x ^ var_0.x), ~4294967295u), func_5(func_4(~vec3<i32>(-2147483647i, -10083i, 0i), func_2(arg_0.a.e.zy, vec4<bool>(arg_0.a.b.a.x, false, arg_0.b, arg_0.b), vec3<f32>(840f, 467f, -737f), 1i)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2220f, -1707f, -1776f, 163f) - vec4<f32>(-453f, -659f, 1094f, 1697f)))))));
    global0 = array<Struct_1, 21>();
    return arg_0.a.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(true, any(func_1(Struct_4(Struct_3(Struct_2(u_input.a.x, vec3<u32>(u_input.a.x, 0u, 55419u)), Struct_1(vec3<bool>(true, false, true), u_input.a.x), 4294967295u, false, vec3<u32>(u_input.a.x, 70488u, u_input.a.x)), true, 13527i))), true), select(vec3<bool>(func_4(vec3<i32>(19819i, -2147483647i, 2147483647i), Struct_2(u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))).b, true, true), vec3<bool>(true, true, all(vec4<bool>(true, true, false, false))), any(func_4(vec3<i32>(-1i, 38002i, -33788i), Struct_2(1u, vec3<u32>(0u, u_input.a.x, u_input.a.x))).a.b.a.zz)), vec3<bool>(true, func_1(func_4(vec3<i32>(1i, -1i, 10380i), Struct_2(u_input.a.x, vec3<u32>(1u, u_input.a.x, 10749u)))).x, true));
    global0 = array<Struct_1, 21>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 21u)];
    let var_2 = _wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, 16194u), vec4<u32>(var_1.b, 4294967295u, 1u, 47019u)) >> (firstLeadingBit(vec4<u32>(62192u, 0u, 0u, 0u)) % vec4<u32>(32u))) >> (~_wgslsmith_add_vec4_u32(~vec4<u32>(54107u, var_1.b, var_1.b, var_1.b), _wgslsmith_mod_vec4_u32(vec4<u32>(33041u, var_1.b, var_1.b, 6585u), vec4<u32>(0u, var_1.b, 0u, var_1.b))) % vec4<u32>(32u)), vec4<u32>(func_3(!(!var_1.a), vec3<f32>(834f, -335f, _wgslsmith_f_op_f32(trunc(140f))), Struct_4(func_4(vec3<i32>(0i, -1i, -34701i), Struct_2(u_input.a.x, vec3<u32>(var_1.b, u_input.a.x, 1u))).a, true, 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-822f, -414f, 820f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-744f, 471f, 970f), vec3<f32>(354f, -367f, 471f)))).x, var_1.b, select(0u, min(var_1.b, countOneBits(0u)), any(var_1.a.xx)), u_input.a.x));
    global0 = array<Struct_1, 21>();
    var var_3 = ~var_1.b;
    var var_4 = vec2<u32>(10052u, firstTrailingBit(~var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(29812u, var_2.zww);
}

