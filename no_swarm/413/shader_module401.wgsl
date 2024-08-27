struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(0u, 17567u, 35475u, 1u), vec4<u32>(0u, 1u, 1u, 89800u), vec4<u32>(14214u, 0u, 4294967295u, 0u), vec4<u32>(1u, 0u, 71719u, 4294967295u), vec4<u32>(0u, 23867u, 1u, 4294967295u), vec4<u32>(3367u, 4294967295u, 1u, 4294967295u), vec4<u32>(104909u, 1u, 58901u, 36279u), vec4<u32>(61334u, 0u, 58894u, 0u), vec4<u32>(52622u, 1567u, 49503u, 1u), vec4<u32>(53517u, 1u, 16918u, 1u), vec4<u32>(30439u, 47033u, 1u, 138621u), vec4<u32>(91834u, 4294967295u, 1u, 0u), vec4<u32>(1u, 11428u, 16226u, 38365u), vec4<u32>(21282u, 4294967295u, 74185u, 41688u), vec4<u32>(4294967295u, 4294967295u, 13879u, 0u), vec4<u32>(39662u, 4294967295u, 0u, 48124u), vec4<u32>(0u, 0u, 1u, 6244u), vec4<u32>(35686u, 1u, 4294967295u, 80016u), vec4<u32>(0u, 4294967295u, 4294967295u, 2014u), vec4<u32>(36798u, 49799u, 62150u, 60534u), vec4<u32>(1u, 36478u, 0u, 66791u), vec4<u32>(4294967295u, 18452u, 18137u, 4294967295u), vec4<u32>(4294967295u, 1u, 4294967295u, 65039u), vec4<u32>(4294967295u, 6692u, 1u, 27631u), vec4<u32>(4294967295u, 58259u, 4294967295u, 87607u));

var<private> global1: Struct_4 = Struct_4(-1000f, Struct_1(398f, vec3<f32>(-1337f, 813f, 1000f), 936f));

var<private> global2: array<u32, 2>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    global0 = array<vec4<u32>, 25>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(976f, -605f)), 156f, _wgslsmith_f_op_f32(min(-485f, 270f)), global1.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a, -1916f, global1.b.c, global1.b.c))))), global1.b.b.x));
    global2 = array<u32, 2>();
    var var_1 = all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, false)), u_input.b.x >= global2[_wgslsmith_index_u32(3398u, 2u)], any(vec4<bool>(true, true, false, false)), select(true, false, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true), true));
    var_0 = Struct_3(Struct_2(var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global1.b.b.x, 462f), _wgslsmith_f_op_f32(-459f - global1.b.c)))));
    return u_input.b.zx;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool) -> vec2<u32> {
    let var_0 = Struct_1(arg_1.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(362f)), _wgslsmith_div_f32(global1.b.c, global1.b.a)), 301f, arg_1.b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -1560f, arg_1.b) * global1.b.b))))), 831f);
    var var_1 = _wgslsmith_clamp_i32(~(~(i32(-1i) * -1i)), _wgslsmith_mod_i32(firstTrailingBit(~u_input.a.x), firstLeadingBit(u_input.a.x) >> ((4294967295u >> (u_input.b.x % 32u)) % 32u)), u_input.a.x | _wgslsmith_add_i32(3279i, max(1i, u_input.a.x))) >> (~_wgslsmith_div_u32(~(4294967295u & arg_0.x), countOneBits(firstTrailingBit(0u))) % 32u);
    let var_2 = u_input.a.x;
    global1 = Struct_4(global1.b.b.x, Struct_1(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(-global1.b.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(arg_1.a.xxy)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(962f, -2266f, arg_1.b), var_0.b, true)), false))), _wgslsmith_f_op_f32(-479f * -823f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(var_0.b.zx));
    return arg_0;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: i32) -> bool {
    let var_0 = ~_wgslsmith_clamp_vec2_u32(select(arg_0, select(_wgslsmith_add_vec2_u32(u_input.b.xy, vec2<u32>(1u, u_input.b.x)), abs(vec2<u32>(u_input.b.x, 4294967295u)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), abs(_wgslsmith_mod_vec2_u32(select(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16195u, 2u)], 2u)], 28217u), arg_0, vec2<bool>(true, false)), firstLeadingBit(arg_0))), func_4(func_3(), Struct_2(vec4<f32>(arg_1.x, global1.a, global1.a, global1.a), _wgslsmith_f_op_f32(-731f * 1000f)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true))));
    var var_1 = Struct_2(vec4<f32>(240f, _wgslsmith_f_op_f32(max(-529f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))))), 1132f, -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(595f)), 407f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, arg_0.x, _wgslsmith_mult_u32(~15368u, countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)])), 1u), vec4<u32>(1u, _wgslsmith_sub_u32(1u, ~arg_0.x), reverseBits(_wgslsmith_mult_u32(u_input.b.x, 1u)), var_0.x)) >> (0u % 32u);
    let var_3 = Struct_2(var_1.a, global1.b.a);
    var var_4 = firstTrailingBit(vec3<i32>(~(abs(0i) & _wgslsmith_sub_i32(arg_2, u_input.a.x)), -52272i, -1i));
    return 1804f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b.c))))) - arg_1.x);
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(false, func_2(~_wgslsmith_clamp_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, global2[_wgslsmith_index_u32(12600u, 2u)]), vec2<u32>(u_input.b.x, 1u)) ^ vec2<u32>(~u_input.b.x, ~54984u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(665f + 1100f), _wgslsmith_f_op_f32(round(-2424f)), global1.b.b.x, _wgslsmith_f_op_f32(global1.b.c - 125f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b.a, -1482f, global1.b.a, global1.a))))), 2147483647i), true);
    global1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(314f, global1.b.c))), Struct_1(global1.b.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.c, global1.a, 1299f)) * _wgslsmith_f_op_vec3_f32(sign(global1.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(891f, global1.a)))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2322f, global1.b.b.x, 229f, global1.b.a))))), _wgslsmith_f_op_f32(round(1268f))));
    global2 = array<u32, 2>();
    var var_2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(116198u, _wgslsmith_mod_u32(~0u, u_input.b.x)), ~vec2<u32>(4294967295u << (global2[_wgslsmith_index_u32(1u, 2u)] % 32u), u_input.b.x ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)]), u_input.b.yz);
    return Struct_1(global1.a, global1.b.b, -322f);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    var var_0 = -_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(1i, 2147483647i) ^ _wgslsmith_mult_vec2_i32(u_input.a, u_input.a)), (_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(-1i, 20480i)) << (u_input.b.yy % vec2<u32>(32u))) ^ min(u_input.a, u_input.a >> (arg_0 % vec2<u32>(32u))), u_input.a);
    global0 = array<vec4<u32>, 25>();
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-727f + -873f), _wgslsmith_f_op_f32(-arg_3.x), global1.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * arg_3.x) + _wgslsmith_f_op_f32(sign(459f))))));
    global1 = Struct_4(_wgslsmith_f_op_f32(-arg_2.c), arg_2);
    var var_2 = ~(~vec3<u32>(0u, ~arg_0.x, _wgslsmith_clamp_u32(26643u, 0u, global2[_wgslsmith_index_u32(30938u, 2u)])) >> (abs(u_input.b) % vec3<u32>(32u)));
    return firstTrailingBit(1u);
}

fn func_6(arg_0: vec4<i32>, arg_1: u32) -> Struct_4 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, global1.b.a, global1.b.a, global1.a), vec4<f32>(878f, -1913f, -136f, 1500f)), vec4<f32>(global1.b.b.x, global1.b.a, 836f, global1.b.c)))), func_1().a);
    let var_1 = 1u;
    global0 = array<vec4<u32>, 25>();
    let var_2 = var_0.a;
    global2 = array<u32, 2>();
    return Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global1.a)), 1834f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(753f * -218f) + _wgslsmith_f_op_f32(trunc(1267f))))))), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.a, global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2823f * global1.a))) * -1916f);
    global1 = func_6(vec4<i32>(30725i, 1i >> (global2[_wgslsmith_index_u32(func_5(u_input.b.zy, Struct_2(vec4<f32>(442f, global1.a, -1398f, 330f), 1752f), func_1(), global1.b.b), 2u)] % 32u), 1i, ~32916i), 120241u);
    global2 = array<u32, 2>();
    var var_1 = !select(vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), true, func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(0u, 2u)], 1u), u_input.b.xz), _wgslsmith_f_op_vec4_f32(vec4<f32>(2230f, var_0, global1.a, -422f) - vec4<f32>(var_0, global1.a, global1.a, 597f)), u_input.a.x >> (u_input.b.x % 32u)), !all(vec2<bool>(true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), true);
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -890f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1122f - -256f)))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(trunc(global1.b.b.x)), 655f), vec3<f32>(func_6(vec4<i32>(-57473i, u_input.a.x, u_input.a.x, u_input.a.x), ~global2[_wgslsmith_index_u32(u_input.b.x, 2u)]).b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 1441f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b.b.x * -833f), 238f, var_1.x)))), 875f);
    var_1 = !select(select(!vec4<bool>(var_1.x, true, false, false), select(!vec4<bool>(true, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x)), false), !select(!vec4<bool>(true, false, false, var_1.x), select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_1.x, false, var_1.x, true)), var_1.x), !var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec2<i32>(_wgslsmith_sub_i32(-229i, -2147483647i), -39730i)), _wgslsmith_div_vec4_i32(-countOneBits(-vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -15657i, 1i), u_input.a.x, ~min(-33467i, u_input.a.x), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-39875i, u_input.a.x), u_input.a)))));
}

