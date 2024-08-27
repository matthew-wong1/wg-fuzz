struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec2<i32>(2147483647i, -1i), vec3<f32>(1709f, -421f, 966f)), Struct_4(vec2<i32>(-1i, 1i), vec3<f32>(-171f, 1774f, 325f)), Struct_4(vec2<i32>(-30238i, 0i), vec3<f32>(688f, 135f, 122f)), Struct_4(vec2<i32>(-27711i, -29397i), vec3<f32>(-2201f, 634f, 535f)), Struct_4(vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(-1314f, -532f, 760f)));

var<private> global1: array<vec2<u32>, 32>;

var<private> global2: array<u32, 19>;

var<private> global3: array<u32, 11>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>) -> vec4<i32> {
    global2 = array<u32, 19>();
    global3 = array<u32, 11>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1740f)) * arg_0) - _wgslsmith_f_op_f32(exp2(arg_1.d.b))) + arg_1.d.b) == arg_0;
    var var_1 = vec3<bool>(true, arg_2.x, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1518f))) > _wgslsmith_f_op_f32(arg_0 * arg_0)) || true);
    var_1 = vec3<bool>(true, var_0, true && var_0);
    return vec4<i32>(arg_1.b.a.x, arg_1.c.a.x, -22050i, firstLeadingBit(-arg_1.b.a.x));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: u32) -> vec2<i32> {
    let var_0 = false;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.b.x + -183f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136f * _wgslsmith_f_op_f32(-arg_2.b.x)))), -182f);
    global2 = array<u32, 19>();
    var var_2 = 4294967295u;
    return _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(arg_2.a, arg_2.a), -arg_2.a), firstTrailingBit(func_1(_wgslsmith_f_op_f32(-arg_2.b.x), Struct_3(Struct_1(arg_2.a), Struct_1(arg_2.a), Struct_1(arg_2.a), Struct_2(Struct_1(vec2<i32>(73198i, arg_2.a.x)), -1234f, Struct_1(vec2<i32>(35442i, 1i)))), select(vec4<bool>(false, false, var_0, true), vec4<bool>(true, true, arg_1.x, true), vec4<bool>(arg_1.x, var_0, var_0, false))).zz) | reverseBits(arg_2.a));
}

fn func_2() -> Struct_2 {
    var var_0 = ~(vec2<i32>(-(-1929i << (0u % 32u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, -2282i, 2147483647i), vec3<i32>(53913i, 1i, -22923i))) & vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-39719i, 2147483647i), ~vec2<i32>(-17152i, -1i)), ~(~(-2147483647i))));
    var_0 = -abs(firstTrailingBit(func_3(1i, vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(31704u, 5u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47440u, 19u)], 19u)], 11u)]))) ^ _wgslsmith_sub_vec2_i32(-firstTrailingBit(-vec2<i32>(0i, var_0.x)), -max(countOneBits(vec2<i32>(5631i, -2147483647i)), vec2<i32>(2147483647i, var_0.x)));
    let var_1 = ~select(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-23979i, 33971i), _wgslsmith_sub_vec2_i32(vec2<i32>(7602i, var_0.x), vec2<i32>(var_0.x, 1i)) | -vec2<i32>(var_0.x, 34809i), select(vec2<i32>(-2147483647i, 0i), vec2<i32>(var_0.x, 2147483647i), false) ^ reverseBits(vec2<i32>(var_0.x, var_0.x))), _wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.x, var_0.x) >> (vec2<u32>(44371u, global2[_wgslsmith_index_u32(1775u, 19u)]) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-38962i, var_0.x), vec2<i32>(var_0.x, -7016i)) >> (global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 11u)], 19u)], 32u)] % vec2<u32>(32u))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(true, true, false)));
    var var_2 = vec4<bool>(true, true, all(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true)), !(~_wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22107u, 11u)], 19u)], 11u)]) <= _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(113308u, 32u)], vec2<u32>(104524u, 1201u)), vec2<u32>(29133u, u_input.a) << (global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 32u)] % vec2<u32>(32u)))));
    global2 = array<u32, 19>();
    return Struct_2(Struct_1(select(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 18701i), var_1), -_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1.x), vec2<i32>(-1i, var_1.x)), vec2<bool>(!var_2.x, !var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2284f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-970f)) * -1509f)) - 127f), Struct_1(var_1));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_4 {
    var var_0 = ~(firstTrailingBit(-2147483647i) & ~reverseBits(1i));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 5u)];
    var var_2 = var_1.b.x;
    var var_3 = Struct_3(Struct_1(-vec2<i32>(firstTrailingBit(arg_2.c.a.x), -603i)), func_2().a, Struct_1((_wgslsmith_mod_vec2_i32(var_1.a, var_1.a) ^ func_1(-1000f, Struct_3(arg_2.c, arg_2.a, arg_2.a, arg_2), vec4<bool>(arg_1.x, false, true, false)).wy) ^ firstTrailingBit(vec2<i32>(var_1.a.x, var_1.a.x))), arg_2);
    var var_4 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~4294967295u, 32u)], ~(global1[_wgslsmith_index_u32(0u, 32u)] << (arg_0 % vec2<u32>(32u))))), 11u)];
    return global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(28358u, _wgslsmith_dot_vec2_u32(select(~global1[_wgslsmith_index_u32(74818u, 32u)], _wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(15547u, 32u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77508u, 19u)], 32u)]), vec2<bool>(true, true)), (vec2<u32>(1u, 16606u) >> (vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)]) % vec2<u32>(32u))) >> (global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u), 32u)] % vec2<u32>(32u)))), ~(~u_input.a)), 5u)];
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> vec2<f32> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 19u)];
    global0 = array<Struct_4, 5>();
    var var_1 = func_2().b;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -737f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1415f, -1165f))), -209f)), vec2<bool>(!select(true, true, true), true & (_wgslsmith_f_op_f32(select(arg_1, -164f, false)) < 1000f))));
}

fn func_6(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<f32>, arg_3: bool) -> vec2<i32> {
    global3 = array<u32, 11>();
    var var_0 = 18158i;
    let var_1 = min(min(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0, arg_0), vec4<i32>(0i, _wgslsmith_add_i32(76634i, arg_0.x), func_2().a.a.x, arg_0.x)), arg_0), _wgslsmith_div_vec4_i32(arg_0, -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, 16515i, arg_0.x, 0i) | vec4<i32>(arg_0.x, -2147483647i, 5803i, -21774i), vec4<i32>(arg_0.x, arg_0.x, 1i, -31777i))));
    let var_2 = !vec3<bool>(all(select(select(vec4<bool>(true, false, arg_3, arg_3), vec4<bool>(true, arg_3, false, true), vec4<bool>(true, false, arg_3, false)), select(vec4<bool>(false, arg_3, arg_3, true), vec4<bool>(arg_3, arg_3, true, true), arg_3), vec4<bool>(true, arg_3, arg_3, false))), true, all(vec3<bool>(true, false, arg_3 & arg_3)));
    global1 = array<vec2<u32>, 32>();
    return select(func_4(vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.a, 1u), u_input.a) ^ _wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(abs(u_input.a), 32u)], select(vec2<u32>(global2[_wgslsmith_index_u32(18618u, 19u)], 0u), vec2<u32>(global3[_wgslsmith_index_u32(1u, 11u)], 0u), false)), vec4<bool>(all(select(var_2, vec3<bool>(true, var_2.x, false), var_2.x)), true, true, true), Struct_2(func_2().c, func_2().b, Struct_1(vec2<i32>(var_1.x, arg_0.x)))).a, reverseBits(vec2<i32>(func_4(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 11u)], 32u)], vec4<bool>(true, true, var_2.x, true), Struct_2(Struct_1(arg_0.zw), arg_2.x, Struct_1(var_1.xz))).a.x >> (u_input.a % 32u), -var_1.x >> (~71936u % 32u))), vec2<bool>(1000f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(arg_1, 358f), true)), select(true, all(vec2<bool>(false, arg_3)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 5>();
    let var_0 = _wgslsmith_div_vec2_i32(func_6(min(-(vec4<i32>(2550i, 1i, -51779i, 0i) >> (vec4<u32>(69486u, global3[_wgslsmith_index_u32(u_input.a, 11u)], global3[_wgslsmith_index_u32(16143u, 11u)], 85952u) % vec4<u32>(32u))), func_1(-1042f, Struct_3(Struct_1(vec2<i32>(-63518i, -11312i)), Struct_1(vec2<i32>(-1i, -36125i)), Struct_1(vec2<i32>(1i, -2147483647i)), Struct_2(Struct_1(vec2<i32>(-38014i, -2147483647i)), -182f, Struct_1(vec2<i32>(20871i, 1i)))), vec4<bool>(true, true, false, true))), 1000f, _wgslsmith_f_op_vec2_f32(func_5(Struct_1(-vec2<i32>(-16227i, 21823i)), _wgslsmith_f_op_f32(-1000f * 1741f), func_4(~vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(18259u, 19u)]), vec4<bool>(true, true, true, true), func_2()), _wgslsmith_div_u32(39017u, ~0u))), all(vec2<bool>(true, all(vec4<bool>(false, true, true, true))))), ((func_1(387f, Struct_3(Struct_1(vec2<i32>(1171i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, 37934i)), Struct_1(vec2<i32>(-1i, 17014i)), Struct_2(Struct_1(vec2<i32>(1i, 2147483647i)), -753f, Struct_1(vec2<i32>(-38282i, -19466i)))), vec4<bool>(true, true, false, true)).zy ^ -vec2<i32>(-13140i, 0i)) ^ vec2<i32>(func_2().a.a.x, _wgslsmith_mult_i32(1i, -49811i))) & ~_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-2147483647i, 80269i)), ~vec2<i32>(-35062i, -1i)));
    let var_1 = ~(firstTrailingBit(_wgslsmith_mult_u32(abs(1u), ~61263u)) & global2[_wgslsmith_index_u32(~min(1u, 4444u | global3[_wgslsmith_index_u32(0u, 11u)]), 19u)]);
    var var_2 = vec4<bool>(all(vec3<bool>(true, true, !all(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec2<i32>(var_0.x, 1i)), _wgslsmith_f_op_f32(sign(-1000f)), func_4(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10534u, 11u)], 32u)], vec4<bool>(false, true, false, true), Struct_2(Struct_1(var_0), -426f, Struct_1(var_0))), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], u_input.a), vec3<u32>(69256u, global2[_wgslsmith_index_u32(17896u, 19u)], 4294967295u)))).x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -311f), 308f, true))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(149f - 719f)) - _wgslsmith_f_op_f32(f32(-1f) * -1042f)), true, any(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
    let var_3 = Struct_3(Struct_1(var_0), Struct_1(var_0), Struct_1(-vec2<i32>(_wgslsmith_clamp_i32(-23612i, var_0.x, var_0.x), -1i)), func_2());
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.b)) + var_3.d.b), _wgslsmith_f_op_f32(-var_3.d.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f) - _wgslsmith_f_op_f32(trunc(var_3.d.b)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(111f, var_3.d.b, -697f), vec3<f32>(var_3.d.b, var_3.d.b, var_3.d.b)) - vec3<f32>(-302f, var_3.d.b, var_3.d.b)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d.b, -1983f, var_3.d.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, -1682f, var_3.d.b))))))));
    let var_5 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(~(-1i) | min(7553i, var_0.x), -2147483647i), vec2<i32>(-24631i, var_0.x)));
    let var_6 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, var_3.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1268f + -164f)))) + var_4.x), abs(_wgslsmith_mult_i32(var_0.x, var_5.a.x) ^ var_3.d.c.a.x) ^ -2147483647i);
}

