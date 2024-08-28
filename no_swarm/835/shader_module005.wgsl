struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-291f, 2050f, -337f);

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(-257f, 1u), Struct_3(1584f, 1u), Struct_3(901f, 79585u), Struct_3(-1491f, 41504u), Struct_3(-133f, 1u), Struct_3(-675f, 0u), Struct_3(278f, 1u), Struct_3(1140f, 7139u), Struct_3(-917f, 11285u), Struct_3(-196f, 15122u), Struct_3(1000f, 4294967295u), Struct_3(-752f, 27738u), Struct_3(660f, 1u), Struct_3(463f, 34784u), Struct_3(1597f, 31626u), Struct_3(-765f, 41309u), Struct_3(585f, 31747u), Struct_3(-419f, 31524u), Struct_3(1382f, 4294967295u), Struct_3(1764f, 34447u), Struct_3(1792f, 0u), Struct_3(-129f, 32237u), Struct_3(-975f, 30696u), Struct_3(1085f, 23089u), Struct_3(905f, 1u), Struct_3(420f, 4294967295u), Struct_3(-571f, 1u), Struct_3(-335f, 1u), Struct_3(-1499f, 43144u), Struct_3(313f, 76057u), Struct_3(-578f, 45844u), Struct_3(-469f, 45188u));

var<private> global2: vec3<i32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    global0 = vec3<f32>(-515f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 422f) + _wgslsmith_f_op_f32(round(global0.x)))), -709f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(1045f - global0.x), true)) - _wgslsmith_f_op_f32(f32(-1f) * -1465f)))));
    var var_0 = vec4<bool>(arg_0, all(select(vec4<bool>(arg_0, arg_0, true, true), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), arg_0), !arg_0)) && true, any(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), any(select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true)))), true);
    var var_1 = countOneBits(_wgslsmith_mult_i32(global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, u_input.d, 36774i, global2.x), vec4<i32>(u_input.d, 0i, global2.x, 0i)) >> (u_input.c % 32u))) >> (u_input.c % 32u);
    return vec3<f32>(1454f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))) + 1000f));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, arg_2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, global0.x, 1152f)))), _wgslsmith_f_op_vec3_f32(func_3(true)))));
    global1 = array<Struct_3, 32>();
    global1 = array<Struct_3, 32>();
    let var_0 = Struct_1(arg_1.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(341f, global0.x)) * _wgslsmith_f_op_f32(abs(global0.x)))), global0.x, 647f, global0.x), false, ~(countOneBits(1i & u_input.b.x) ^ _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, -74236i)), _wgslsmith_mod_vec2_i32(global2.xy, vec2<i32>(u_input.d, 1i)))), 1i);
    let var_1 = all(vec2<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, var_0.c))))) | false;
    return Struct_1(~_wgslsmith_sub_i32(i32(-1i) * -31686i, reverseBits(-1i)) ^ -global2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), false, ~abs(-_wgslsmith_mod_i32(10445i, var_0.d)), -u_input.d);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b.xzx + arg_1.b.xwx))))) * _wgslsmith_f_op_vec3_f32(arg_1.b.yyy - arg_1.b.xwy));
    let var_0 = 1i;
    let var_1 = global1[_wgslsmith_index_u32(~(~1u), 32u)];
    let var_2 = _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(13351u, ~(~var_1.b)), ~(~13818u)), 3897u);
    var var_3 = ~vec3<u32>(66200u, var_2, firstTrailingBit(max(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 65082u, var_1.b, 0u), vec4<u32>(1u, 4294967295u, 41670u, var_2)))));
    return vec2<i32>(-2147483647i, -53897i);
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = false;
    var var_1 = global1[_wgslsmith_index_u32(arg_1.b, 32u)];
    var var_2 = func_4(select(-vec4<i32>(global2.x, global2.x, -1i, -20760i), abs(~vec4<i32>(arg_0, arg_0, arg_0, -16703i)), !vec4<bool>(var_0, true, false, var_0)), func_2(1u, Struct_2(countOneBits(vec4<i32>(0i, -1i, u_input.b.x, global2.x))), Struct_3(605f, u_input.c << (12829u % 32u)))) ^ -firstLeadingBit(vec2<i32>(~u_input.d, _wgslsmith_div_i32(-44243i, -2147483647i)));
    var var_3 = Struct_3(290f, var_1.b);
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(f32(-1f) * -859f))));
    return Struct_2(abs(vec4<i32>(-1i, var_2.x, -51764i, u_input.d) << ((vec4<u32>(4294967295u, 26773u, var_1.b, var_1.b) & vec4<u32>(u_input.c, 0u, u_input.c, 0u)) % vec4<u32>(32u))) >> (firstLeadingBit(_wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 24090u), vec4<u32>(arg_1.b, 40114u, 30613u, var_1.b), var_0), ~vec4<u32>(65375u, u_input.c, arg_1.b, arg_1.b))) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = vec3<u32>(42218u, 4294967295u, arg_1);
    global1 = array<Struct_3, 32>();
    var var_1 = any(select(vec4<bool>(arg_2, true, true, true), vec4<bool>(arg_2, true, !arg_2, !all(vec4<bool>(true, false, true, true))), false));
    var var_2 = _wgslsmith_sub_i32(~1i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a.x, -1i, -1i), arg_3.xxy), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global2.x, arg_3.x, 0i), vec4<i32>(arg_3.x, 1i, arg_0.a.x, global2.x)), u_input.d, max(arg_0.a.x, global2.x))));
    let var_3 = Struct_1(-1i, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) - _wgslsmith_div_f32(global0.x, 672f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 467f, false))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-1022f * 210f))))), arg_2, u_input.b.x, reverseBits(~(i32(-1i) * -1i)));
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = global1[_wgslsmith_index_u32(0u, 32u)];
    let var_1 = abs(vec3<u32>(~(~max(var_0.b, var_0.b)), 4294967295u, max(~(u_input.c ^ 18201u), 12710u)));
    return vec3<i32>(func_2(min(firstTrailingBit(0u), ~firstTrailingBit(3912u)), Struct_2(~(~arg_0.a)), Struct_3(1248f, 54341u)).a, arg_2.e, min(-54597i, -22174i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~_wgslsmith_mod_vec3_i32(func_6(func_5(func_1(u_input.d, global1[_wgslsmith_index_u32(u_input.a, 32u)]), reverseBits(0u), all(vec2<bool>(true, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(-25109i, 2147483647i, -2147483647i, -23465i), vec4<i32>(0i, 28996i, u_input.b.x, 1i))), Struct_1(u_input.b.x, vec4<f32>(global0.x, global0.x, 1433f, -1000f), true, 43874i, global2.x), Struct_1(1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 633f, 1288f)), select(true, false, false), _wgslsmith_sub_i32(u_input.b.x, global2.x), 1i), func_2(~u_input.c, Struct_2(vec4<i32>(-11762i, -2147483647i, u_input.d, -1i)), Struct_3(global0.x, 4294967295u))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -28279i, -52695i), vec3<i32>(16411i, u_input.b.x, u_input.d)) & func_6(Struct_2(vec4<i32>(u_input.d, -2147483647i, u_input.b.x, global2.x)), Struct_1(global2.x, vec4<f32>(587f, -346f, 300f, global0.x), false, global2.x, global2.x), Struct_1(-35863i, vec4<f32>(1000f, -1368f, global0.x, -289f), true, u_input.d, 28246i), Struct_1(global2.x, vec4<f32>(global0.x, -873f, global0.x, global0.x), true, global2.x, u_input.d)));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1221f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(581f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(226f, global0.x, 1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(255f, -1104f, global0.x)) - vec3<f32>(global0.x, 147f, global0.x)))), -abs(u_input.b.x) != abs(-(16104i >> (u_input.a % 32u)))));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -1637f), 0u);
    global0 = _wgslsmith_f_op_vec3_f32(func_2(~116786u, func_1(min(func_4(vec4<i32>(u_input.b.x, -13641i, -1i, -1i), Struct_1(1i, vec4<f32>(var_0.a, -282f, -1114f, -1361f), true, 0i, 2147483647i)).x, -global2.x), var_0), var_0).b.zxw + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-767f, 525f, global0.x), vec3<f32>(var_0.a, 250f, -2322f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1099f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(575f, global0.x, 904f), vec3<f32>(487f, 134f, 1805f), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1121f, 630f, var_0.a))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, global0.x, global0.x) - vec4<f32>(-917f, var_0.a, 1091f, global0.x)) + vec4<f32>(global0.x, 1252f, var_0.a, -2336f))))), vec4<f32>(_wgslsmith_f_op_f32(-1706f - -1338f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(sign(-740f)))), _wgslsmith_f_op_f32(f32(-1f) * -995f), 1000f)));
    let var_2 = _wgslsmith_f_op_f32(global0.x * 1026f);
    let x = u_input.a;
    s_output = StorageBuffer(~((~75463u ^ (var_0.b >> (4004u % 32u))) << (_wgslsmith_mod_u32(~4294967295u, _wgslsmith_sub_u32(var_0.b, var_0.b)) % 32u)), 4294967295u, _wgslsmith_f_op_vec3_f32(ceil(var_1.wxy)));
}

