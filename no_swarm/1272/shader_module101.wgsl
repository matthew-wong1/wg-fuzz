struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(33879u, 7299u, 0u, 0u, 4294967295u, 42430u, 4294967295u, 1u, 61915u, 83941u, 9475u, 1u, 36981u, 4294967295u, 4294967295u, 15432u, 0u, 86116u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-663f, 1284f), _wgslsmith_f_op_f32(555f + 1362f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(arg_0.a, vec4<u32>(arg_0.a.x, arg_0.a.x << (~0u % 32u), countOneBits(1u), ~arg_0.a.x)), false, select(arg_1.c.c, vec4<bool>(false, any(select(vec4<bool>(arg_1.c.b, true, false, true), vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(arg_0.c.x, true, true, arg_0.c.x))), arg_0.b, false), !all(vec2<bool>(arg_0.c.x, false))), arg_0.d >> (((min(vec4<u32>(14682u, 1u, 4294967295u, arg_0.a.x), vec4<u32>(arg_0.a.x, arg_0.a.x, global0[_wgslsmith_index_u32(arg_1.a.x, 18u)], 1u)) >> (~arg_1.a % vec4<u32>(32u))) ^ ~_wgslsmith_add_vec4_u32(arg_0.a, arg_0.a)) % vec4<u32>(32u)));
    var var_2 = arg_1.c.a.x;
    let var_3 = Struct_1(~vec4<u32>(~13296u, arg_0.a.x, reverseBits(1u), select(global0[_wgslsmith_index_u32(var_1.a.x, 18u)], var_1.a.x, var_1.c.x)) << (countOneBits(max(vec4<u32>(arg_0.a.x, arg_0.a.x, 100444u, arg_0.a.x), arg_0.a)) % vec4<u32>(32u)), true, vec4<bool>(any(!vec4<bool>(true, arg_1.c.c.x, arg_1.c.c.x, arg_0.b)), var_1.c.x, !all(var_1.c.yy) | true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(503f, 1360f) * _wgslsmith_f_op_f32(abs(-225f))) != _wgslsmith_f_op_f32(-var_0.a.x)), vec4<i32>(_wgslsmith_sub_i32(-1i, -9696i | _wgslsmith_dot_vec2_i32(var_1.d.yw, vec2<i32>(arg_0.d.x, arg_1.c.d.x))), var_1.d.x, var_1.d.x, var_1.d.x));
    var var_4 = Struct_2(arg_0.b);
    return _wgslsmith_add_u32(~_wgslsmith_sub_u32(47017u, var_1.a.x ^ _wgslsmith_div_u32(1u, 40029u)), firstLeadingBit(abs(abs(~arg_1.c.a.x))));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_2 {
    let var_0 = func_3(Struct_1(~vec4<u32>(71579u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], 20127u, global0[_wgslsmith_index_u32(0u, 18u)]) ^ _wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11140u, 18u)], 18u)], 18u)], 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)]), vec4<u32>(4294967295u, 1162u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34362u, 18u)], 18u)], 4294967295u) & vec4<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(4294967295u, 18u)], 24476u)), true, select(select(vec4<bool>(false, arg_0.x, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, arg_0.x, false, arg_0.x), arg_0.x), global0[_wgslsmith_index_u32(0u, 18u)] <= 9636u), vec4<bool>(true, true, select(arg_0.x, arg_0.x, true), false), arg_0.x), u_input.a), Struct_3(_wgslsmith_mod_vec4_u32(~(vec4<u32>(1432u, 48131u, 55968u, 0u) >> (vec4<u32>(1u, 42709u, 2849u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)]) % vec4<u32>(32u))), firstTrailingBit(~vec4<u32>(0u, global0[_wgslsmith_index_u32(84410u, 18u)], global0[_wgslsmith_index_u32(116701u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]))), -vec2<i32>(u_input.a.x, ~u_input.b), Struct_1(~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(14069u, 18u)], global0[_wgslsmith_index_u32(22276u, 18u)])), !arg_0.x, select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, true, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), !vec4<bool>(true, false, arg_0.x, arg_0.x)), vec4<i32>(u_input.a.x, u_input.c, -68664i, -19031i) << (~vec4<u32>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], global0[_wgslsmith_index_u32(26216u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]) % vec4<u32>(32u)))));
    var var_1 = vec3<u32>(func_3(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), !arg_0.x, select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true)), -vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, u_input.c)), Struct_3(vec4<u32>(68020u, var_0, var_0, var_0), vec2<i32>(u_input.b, u_input.c), Struct_1(vec4<u32>(var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], var_0, global0[_wgslsmith_index_u32(4294967295u, 18u)]), true, vec4<bool>(arg_0.x, false, false, true), vec4<i32>(26070i, 26531i, -2147483647i, u_input.c)))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(944u, 18u)], 18u)], 18u)], var_0, var_0), vec3<u32>(23384u, 9742u, 0u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(12265u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 18u)], 18u)], 18u)]), 18u)], 18u)], var_0 >> (5785u % 32u)) & countOneBits(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u & var_0, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 18u)], 18u)], 18u)]), vec2<u32>(5092u, _wgslsmith_sub_u32(var_0, 1u)))) | firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 116496u, var_0), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37892u, 18u)], 18u)], 18u)], var_0, 81906u) ^ vec3<u32>(4294967295u, 1u, 52199u)) & reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 18u)], 18u)], 19113u, 1u)));
    var_1 = vec3<u32>(~select(_wgslsmith_mod_u32(~7666u, 1u), var_1.x, any(arg_0)), max(var_0 | _wgslsmith_mult_u32(var_1.x | var_1.x, ~1u), var_0), var_0 >> (15645u % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -980f) + _wgslsmith_f_op_f32(-arg_1)), arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)), 771f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1336f))), _wgslsmith_f_op_f32(trunc(arg_1)))));
    var var_3 = Struct_1(_wgslsmith_add_vec4_u32(min(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_0, 25205u), vec4<u32>(1u, 35603u, 35619u, var_1.x)), vec4<u32>(13503u, 909u, 47885u, 49069u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(31537u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 18u)], 18u)], var_0, 4294967295u), vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(1u, 18u)], var_0))), ~vec4<u32>(_wgslsmith_clamp_u32(var_0, 18140u, var_1.x), reverseBits(var_1.x), 54355u, ~26354u)), arg_0.x, vec4<bool>(false, -1557f > _wgslsmith_f_op_f32(var_2.x + var_2.x), 4294967295u > var_1.x, !(arg_0.x & !arg_0.x)), _wgslsmith_add_vec4_i32(-u_input.a, ~u_input.a));
    return Struct_2(true);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> vec4<bool> {
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    let var_0 = func_2(vec2<bool>(arg_2.x, true), _wgslsmith_f_op_f32(trunc(-1069f)));
    global0 = array<u32, 18>();
    return !(!arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(true);
    var var_2 = vec3<bool>(any(select(select(!vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, false, false, true), !vec4<bool>(var_1.a, var_1.a, false, var_1.a)), select(func_1(Struct_3(vec4<u32>(0u, 4294967295u, 59596u, global0[_wgslsmith_index_u32(1u, 18u)]), vec2<i32>(1i, 14668i), Struct_1(vec4<u32>(116937u, 36520u, 33430u, 0u), var_1.a, vec4<bool>(true, var_1.a, var_1.a, var_1.a), u_input.a)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], vec4<bool>(false, true, true, var_1.a), true), vec4<bool>(true, var_1.a, true, true), !vec4<bool>(false, var_1.a, false, true)), var_1.a)), false, all(select(select(func_1(Struct_3(vec4<u32>(17321u, 52762u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47675u, 18u)], 18u)], 18u)], 18u)]), vec2<i32>(u_input.a.x, 1i), Struct_1(vec4<u32>(14175u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83338u, 18u)], 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 1u), false, vec4<bool>(var_1.a, true, var_1.a, var_1.a), u_input.a)), global0[_wgslsmith_index_u32(1u, 18u)], vec4<bool>(true, true, var_1.a, var_1.a), var_1.a).zyw, func_1(Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 11332u, global0[_wgslsmith_index_u32(72549u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<i32>(var_0, u_input.a.x), Struct_1(vec4<u32>(4294967295u, 0u, 7653u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36623u, 18u)], 18u)]), var_1.a, vec4<bool>(true, var_1.a, true, var_1.a), vec4<i32>(-2147483647i, var_0, 45465i, u_input.c))), 0u, vec4<bool>(true, var_1.a, var_1.a, var_1.a), false).wxy, select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, var_1.a, true), vec3<bool>(var_1.a, var_1.a, true))), !func_1(Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53359u, 18u)], 18u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45273u, 18u)], 18u)], 18u)], 18u)], 18u)], 25913u), vec2<i32>(-7449i, u_input.c), Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 0u), false, vec4<bool>(var_1.a, true, var_1.a, true), vec4<i32>(0i, var_0, var_0, 1i))), 1988u, vec4<bool>(false, var_1.a, true, var_1.a), false).yww, vec3<bool>(!var_1.a, all(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)), true))));
    let var_3 = Struct_1(firstLeadingBit(select(vec4<u32>(global0[_wgslsmith_index_u32(47920u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], 123909u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27197u, 18u)], 18u)]), ~vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(32485u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)]), u_input.b <= var_0) ^ countOneBits(~vec4<u32>(global0[_wgslsmith_index_u32(5926u, 18u)], 4294967295u, 5157u, global0[_wgslsmith_index_u32(5811u, 18u)]))), var_2.x, select(func_1(Struct_3(vec4<u32>(18078u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27397u, 18u)], 18u)], 18u)], 1u, 42605u) & vec4<u32>(global0[_wgslsmith_index_u32(15751u, 18u)], global0[_wgslsmith_index_u32(2652u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47398u, 18u)], 18u)], 4294967295u), ~u_input.a.xx, Struct_1(vec4<u32>(17738u, 4015u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], 0u), var_1.a, vec4<bool>(true, true, var_1.a, true), vec4<i32>(1i, u_input.a.x, 54888i, 2147483647i))), reverseBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)]), select(vec4<bool>(var_1.a, false, var_1.a, true), !vec4<bool>(var_1.a, true, var_1.a, var_2.x), var_1.a), var_2.x | false), vec4<bool>(false, var_1.a, !select(false, var_2.x, true), func_2(func_1(Struct_3(vec4<u32>(4294967295u, 76275u, 1u, 0u), vec2<i32>(u_input.b, u_input.a.x), Struct_1(vec4<u32>(848u, 4294967295u, global0[_wgslsmith_index_u32(50610u, 18u)], 4294967295u), var_2.x, vec4<bool>(false, var_1.a, var_2.x, var_2.x), vec4<i32>(2147483647i, var_0, var_0, var_0))), 1u, vec4<bool>(var_1.a, true, true, var_1.a), var_1.a).xy, _wgslsmith_f_op_f32(min(-1441f, 496f))).a), true), -abs(u_input.a) ^ -select(vec4<i32>(-37971i, 0i, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-35049i, 11940i, u_input.c, u_input.c), u_input.a, vec4<i32>(-1i, 40162i, -2147483647i, -2147483647i)), all(var_2.xx)));
    var_2 = vec3<bool>(!all(!(!var_3.c.yw)), false, var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-639f, 1000f, -346f, 896f)), vec4<f32>(-277f, -336f, -1901f, 171f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1444f, -663f, 1988f, -127f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 689f, 579f, 1184f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1304f, -183f, -1008f, 4086f), vec4<f32>(677f, 1585f, -1000f, 737f), var_3.b)))), !select(vec4<bool>(false, var_3.c.x, var_2.x, false), var_3.c, func_1(Struct_3(vec4<u32>(22586u, var_3.a.x, var_3.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.a.x, 18u)], 18u)]), vec2<i32>(-1i, var_3.d.x), var_3), 31451u, vec4<bool>(false, var_2.x, var_1.a, var_3.b), var_2.x)))), reverseBits(~(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_3.a.zyw, var_3.a.wyz), 18u)])), reverseBits(~(~vec4<u32>(var_3.a.x, global0[_wgslsmith_index_u32(4294967295u, 18u)], var_3.a.x, 4294967295u))), ~(-2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-844f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-291f - -1651f) - _wgslsmith_div_f32(-1832f, -2651f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1058f - _wgslsmith_f_op_f32(floor(-1000f))))));
}

