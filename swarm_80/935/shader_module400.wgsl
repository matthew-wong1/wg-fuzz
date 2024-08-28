struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_3,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(745f, 2003f), vec2<f32>(-139f, 113f), vec2<f32>(-1705f, 167f), vec2<f32>(1683f, -1226f), vec2<f32>(270f, 792f), vec2<f32>(1058f, 765f), vec2<f32>(-1169f, -918f), vec2<f32>(192f, -1951f), vec2<f32>(1397f, -1000f));

var<private> global1: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(0u, 13424u, 42206u, 24915u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(8391u, 8645u, 0u, 3035u), vec4<u32>(1u, 81044u, 1u, 4294967295u), vec4<u32>(52517u, 1u, 0u, 1u), vec4<u32>(0u, 4420u, 0u, 0u), vec4<u32>(19824u, 41131u, 4294967295u, 45926u), vec4<u32>(2066u, 4294967295u, 0u, 13906u), vec4<u32>(23149u, 4294967295u, 67991u, 36351u), vec4<u32>(8406u, 4294967295u, 28583u, 22493u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global1 = array<vec4<u32>, 11>();
    var var_0 = _wgslsmith_add_vec4_i32(max(vec4<i32>(0i, -1i, -1i, 0i), -countOneBits(-vec4<i32>(u_input.b.x, u_input.c, 9710i, -16750i))), vec4<i32>(-1i) * -vec4<i32>(1i, u_input.b.x, u_input.c & u_input.c, u_input.c));
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~max(4294967295u, 4294967295u), 4294967295u), ~(~vec2<u32>(u_input.a, 0u))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d.zw, ~u_input.d.xy), u_input.d.x));
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~1i, 24140i, countOneBits(_wgslsmith_mod_i32(-8741i, u_input.c)), 1i) >> (_wgslsmith_sub_vec4_u32(~(~u_input.d), ~global1[_wgslsmith_index_u32(4294967295u, 11u)] >> (global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(57426u, 47808u), 11u)] % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(select(-1i, firstLeadingBit(var_0.x), var_0.x >= u_input.c), reverseBits(var_0.x) >> ((1u << (1u % 32u)) % 32u), -2147483647i, 0i), ~(-vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x) & _wgslsmith_mod_vec4_i32(abs(vec4<i32>(46863i, -23418i, 0i, -67317i)), ~vec4<i32>(u_input.b.x, -8187i, -34110i, u_input.b.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1526f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1037f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-851f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1009f), -957f)), _wgslsmith_f_op_f32(floor(-1504f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(267f, 216f)) - 1f))), 1266f, -1451f, _wgslsmith_f_op_f32(abs(-164f))));
    return all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)) & true;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-893f, 2506f, arg_1.a))))), 149f), ~firstLeadingBit(-1i), Struct_3(Struct_2((arg_1.c || arg_1.c) | any(vec3<bool>(false, false, arg_1.a)), vec4<i32>(-u_input.b.x, max(-2147483647i, arg_2.x), u_input.b.x & u_input.c, arg_1.b.x), false), ~13246i, select(true, true & (arg_1.a | arg_1.c), arg_1.a), arg_1), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-183f * -163f), -402f, any(vec4<bool>(arg_1.a, false, true, false)) || func_3())), arg_1.b), 4294967295u);
    global1 = array<vec4<u32>, 11>();
    let var_1 = _wgslsmith_sub_u32(~7179u >> (~4294967295u % 32u), u_input.a);
    global1 = array<vec4<u32>, 11>();
    global1 = array<vec4<u32>, 11>();
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, var_0.e ^ _wgslsmith_clamp_u32(var_1, 1u, 69260u)), u_input.d.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(select(-1026f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1166f)) + _wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_f_op_f32(sign(2016f))))), !(true && all(!vec3<bool>(arg_0.c, arg_0.c, true)))));
    return Struct_3(arg_0, arg_1.x, all(select(select(!vec2<bool>(arg_0.a, false), vec2<bool>(true, true), u_input.a == u_input.a), select(vec2<bool>(arg_0.a, arg_0.a), select(vec2<bool>(arg_0.c, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, arg_0.c)), all(vec3<bool>(arg_0.a, false, false)))), Struct_2(!arg_0.c, countOneBits(select(vec4<i32>(16898i, 53075i, -1i, -1i), arg_2.b, vec4<bool>(arg_0.a, true, arg_0.a, arg_0.c))) >> (global1[_wgslsmith_index_u32(u_input.d.x, 11u)] % vec4<u32>(32u)), all(select(select(vec3<bool>(false, false, arg_0.c), vec3<bool>(arg_0.c, false, arg_0.c), arg_0.c), !vec3<bool>(true, arg_0.c, arg_0.c), true))));
}

fn func_1() -> u32 {
    var var_0 = func_4(Struct_2(true, ~vec4<i32>(-39427i, -38877i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, u_input.c, -1i), vec4<i32>(-1i, u_input.b.x, -34192i, 28133i)), u_input.c), ~func_2(-2147483647i, Struct_2(false, vec4<i32>(1i, 1i, 60485i, u_input.b.x), true), vec2<i32>(-12346i, 22391i)) < ~reverseBits(u_input.a)), vec4<i32>(firstLeadingBit(-(~(-35062i))), -2147483647i, -4546i, abs(1i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -660f), abs(~abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, 2147483647i)))));
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    global1 = array<vec4<u32>, 11>();
    return firstTrailingBit(~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.yz ^ firstTrailingBit(min(_wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.d.zx), vec2<u32>(u_input.d.x, 1u) << (u_input.d.xz % vec2<u32>(32u))), vec2<u32>(func_1(), _wgslsmith_dot_vec4_u32(u_input.d, global1[_wgslsmith_index_u32(u_input.d.x, 11u)]))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1213f)))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(353f)) + 1348f))), 412f, 1f));
    let var_2 = true;
    let var_3 = Struct_3(func_4(Struct_2(true, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, -1i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, u_input.c, u_input.c, 3592i), vec4<i32>(u_input.c, u_input.c, 32151i, u_input.c)), any(select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), false))), select(~vec4<i32>(36769i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(u_input.b.x, u_input.c), u_input.c, firstTrailingBit(-1i)), var_2), Struct_1(-237f, vec4<i32>(u_input.c, -4435i, u_input.c, 24476i) << (vec4<u32>(u_input.a, var_0.x, 1u, var_0.x) % vec4<u32>(32u)))).a, u_input.b.x, func_3(), Struct_2(!(all(vec4<bool>(false, true, var_2, var_2)) && !var_2), ~abs(vec4<i32>(15744i, u_input.c, 0i, u_input.c)), true));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~max(global1[_wgslsmith_index_u32(0u, 11u)] >> (vec4<u32>(u_input.d.x, 39218u, u_input.d.x, 41662u) % vec4<u32>(32u)), vec4<u32>(21831u, 1u, 21549u, u_input.a)), ~u_input.d), var_0.x), 9u)];
    var var_5 = var_1.x;
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1545f, 1609f)) + 369f) + _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(141f, _wgslsmith_f_op_f32(-967f * 511f))))))) * _wgslsmith_f_op_f32(step(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_4.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(55696u, -u_input.b.yz, var_3.d.b & -var_3.d.b, ~abs(_wgslsmith_sub_i32(0i, 1i)));
}

