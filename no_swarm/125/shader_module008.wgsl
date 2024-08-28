struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32 = 2113f;

var<private> global2: array<u32, 26> = array<u32, 26>(1u, 29695u, 0u, 0u, 50058u, 0u, 0u, 44138u, 12462u, 43121u, 5618u, 16782u, 0u, 69454u, 4294967295u, 0u, 45029u, 33815u, 15092u, 49255u, 46729u, 22453u, 15409u, 1u, 0u, 45909u);

var<private> global3: array<Struct_1, 25>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_f32(-global0.x);
    let var_0 = abs(vec3<i32>(_wgslsmith_add_i32(0i, 45701i), -7805i, 1i));
    var var_1 = false;
    let var_2 = arg_1;
    global2 = array<u32, 26>();
    return global0.x;
}

fn func_2(arg_0: bool) -> vec3<u32> {
    global2 = array<u32, 26>();
    let var_0 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.b, 26u)], ~u_input.b), 26u)], 26u)], 26u)];
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(2147f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)) * _wgslsmith_f_op_f32(abs(745f))))), 2263f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), global3[_wgslsmith_index_u32(13309u, 25u)])) * global0.x) * 1638f), 1390f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x), -120f, -1768f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1038f, global0.x, global0.x, global0.x)))))));
    let var_1 = vec4<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, -firstTrailingBit(1i)), _wgslsmith_sub_i32(1i, ~0i)), 2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_clamp_i32(1i, 27944i, 2147483647i), ~1i, -19276i), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_2 = global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.a & 8893u, u_input.a) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, global2[_wgslsmith_index_u32(1u, 26u)], 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(1620u, 2764u, 4294967295u, u_input.a), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b)))) & ~global2[_wgslsmith_index_u32(55918u, 26u)], 25u)];
    return vec3<u32>(~global2[_wgslsmith_index_u32(1u, 26u)] << (_wgslsmith_dot_vec4_u32(vec4<u32>(34242u, 4294967295u, 4294967295u, 23096u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 77574u, 9620u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], 0u, global2[_wgslsmith_index_u32(17716u, 26u)], u_input.a))) % 32u), 10141u, ~((firstLeadingBit(54927u) >> (firstLeadingBit(global2[_wgslsmith_index_u32(134221u, 26u)]) % 32u)) << (_wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(u_input.a, 26u)]) % 32u)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(arg_1.x, 25u)];
    let var_1 = Struct_1(false);
    var var_2 = any(vec3<bool>(!all(vec3<bool>(var_1.a, var_0.a, false)) && all(!vec4<bool>(var_1.a, true, var_1.a, var_1.a)), true, false));
    var var_3 = _wgslsmith_mod_i32(arg_2.x, _wgslsmith_add_i32(arg_2.x, firstLeadingBit(arg_2.x)) << (((min(1u, 4294967295u) << (select(0u, arg_1.x, false) % 32u)) >> (0u % 32u)) % 32u));
    let var_4 = reverseBits(vec3<i32>(~_wgslsmith_add_i32(-6837i, -23433i), _wgslsmith_dot_vec2_i32(arg_2, -arg_2 << (vec2<u32>(global2[_wgslsmith_index_u32(arg_1.x, 26u)], arg_1.x) % vec2<u32>(32u))), ~((arg_2.x & -1i) | -41146i)));
    return Struct_1(var_0.a);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<u32>) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, global0.x, 1f, -588f))), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x))))));
    return true;
}

fn func_1() -> vec4<u32> {
    let var_0 = true;
    let var_1 = true;
    let var_2 = Struct_1(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -385f, 1165f, global0.x), vec4<f32>(1345f, global0.x, global0.x, global0.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 1110f, -600f, 1149f), vec4<f32>(731f, 198f, 1000f, global0.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, 274f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 467f, -1000f)))), func_4(-1000f, select(func_2(var_0), vec3<u32>(u_input.b, u_input.b, 21427u), true), ~(-vec2<i32>(-28531i, 21974i))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, global2[_wgslsmith_index_u32(2748u, 26u)], 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(1489u, 50466u, global2[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 26u)], 26u)], 26u)], global2[_wgslsmith_index_u32(73441u, 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 26u)], 26u)], 26u)])), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)]), vec3<u32>(u_input.b, u_input.a, u_input.a))) >> ((firstTrailingBit(vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55023u, 26u)], 26u)], 26u)], u_input.b)) << ((vec3<u32>(2801u, 1u, 41063u) >> (vec3<u32>(1u, u_input.a, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_3 = select(vec3<bool>(false != !select(true, false, var_1), !(!(u_input.a != u_input.b)), var_2.a), vec3<bool>(func_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(958f, global0.x, global0.x, global0.x))))), Struct_1(true), firstTrailingBit(vec3<u32>(1u, 0u, 55294u)) << ((vec3<u32>(27002u, 4294967295u, global2[_wgslsmith_index_u32(u_input.b, 26u)]) >> (vec3<u32>(4294967295u, 50138u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), true, !(_wgslsmith_f_op_f32(-1965f * global0.x) >= -1622f)), all(vec2<bool>(!(!var_2.a), false)));
    var var_4 = var_2;
    return vec4<u32>(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(27812u, 26u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)]), vec2<bool>(var_0, true)), _wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], u_input.b), vec2<u32>(1u, global2[_wgslsmith_index_u32(u_input.a, 26u)]))) << (global2[_wgslsmith_index_u32(125743u, 26u)] % 32u), 26u)]), abs(firstLeadingBit(1u >> ((u_input.b | u_input.b) % 32u))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(~u_input.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)]), vec3<u32>(43566u, global2[_wgslsmith_index_u32(61622u, 26u)], 7449u))), 5830u), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 25>();
    let var_0 = -_wgslsmith_div_vec3_i32(~(select(vec3<i32>(8582i, -1i, -10362i), vec3<i32>(-17072i, -1i, -10757i), vec3<bool>(true, false, false)) & _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -1i, 0i), vec3<i32>(-1i, -1i, 5076i))), vec3<i32>(4293i, 1i, 0i));
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b, global2[_wgslsmith_index_u32(select(~global2[_wgslsmith_index_u32(6432u, 26u)], 1u, true), 26u)]), global2[_wgslsmith_index_u32(4249u, 26u)], ~_wgslsmith_div_u32(~0u, _wgslsmith_clamp_u32(35146u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33754u, 26u)], 26u)], 59428u)), ~_wgslsmith_add_u32(reverseBits(1u), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], global2[_wgslsmith_index_u32(47025u, 26u)]))), func_1());
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-396f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x)) * _wgslsmith_f_op_f32(sign(global0.x))));
    let var_2 = global3[_wgslsmith_index_u32(u_input.a >> (_wgslsmith_mod_u32(func_1().x & 98455u, reverseBits(var_1.x)) % 32u), 25u)];
    global3 = array<Struct_1, 25>();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1121f), global0.x, -1802f);
    let x = u_input.a;
    s_output = StorageBuffer(global0.xy, vec3<i32>(-(~(~32688i)), -7472i, _wgslsmith_mod_i32(_wgslsmith_add_i32(~var_0.x, abs(-39325i)), -4607i)));
}

