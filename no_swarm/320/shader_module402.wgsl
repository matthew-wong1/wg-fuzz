struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(9788u, 11737u), Struct_3(1u, 1u), Struct_3(1943u, 0u), Struct_3(4294967295u, 0u), Struct_3(0u, 25819u), Struct_3(37741u, 115851u), Struct_3(1u, 4294967295u), Struct_3(53436u, 0u), Struct_3(0u, 4949u), Struct_3(4294967295u, 55201u), Struct_3(13865u, 0u), Struct_3(0u, 0u), Struct_3(4294967295u, 30809u), Struct_3(83462u, 1u), Struct_3(1u, 5128u), Struct_3(4294967295u, 4294967295u), Struct_3(9247u, 1u), Struct_3(34116u, 0u), Struct_3(1u, 0u), Struct_3(140822u, 25236u), Struct_3(54526u, 45384u), Struct_3(0u, 17664u), Struct_3(1u, 4294967295u), Struct_3(21195u, 48796u), Struct_3(0u, 122597u), Struct_3(0u, 4294967295u), Struct_3(1u, 4316u), Struct_3(16392u, 0u), Struct_3(0u, 4294967295u), Struct_3(4294967295u, 24267u));

var<private> global2: vec2<i32> = vec2<i32>(20173i, 0i);

var<private> global3: array<Struct_3, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = vec2<bool>(arg_1, arg_1);
    global2 = select(~(-vec2<i32>(_wgslsmith_add_i32(1i, global2.x), -35871i ^ u_input.d)), abs(vec2<i32>(abs(global2.x), 1i)) << (countOneBits(max(vec2<u32>(1u, 1u), vec2<u32>(59912u, 0u))) % vec2<u32>(32u)), true);
    let var_1 = u_input.a.x ^ ~(_wgslsmith_div_u32(~64558u, arg_0.a) & ~(u_input.e << (0u % 32u)));
    let var_2 = arg_0;
    global1 = array<Struct_3, 30>();
    return 0u;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: u32) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, 1i), vec2<i32>(50926i, global2.x), vec2<i32>(u_input.d, u_input.d)) & abs(vec2<i32>(global2.x, 18626i)), vec2<i32>(_wgslsmith_sub_i32(0i, -4380i), -global2.x)), vec2<i32>(-global2.x, 13228i), ~vec2<i32>(-22009i, -5818i)), func_3(Struct_3(~arg_2, _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_2, 39121u, 32108u), u_input.a.x)), all(vec2<bool>(arg_2 <= u_input.c.x, all(vec3<bool>(false, false, false))))), 25879u);
    let var_1 = Struct_2(Struct_1(-(~countOneBits(vec2<i32>(u_input.d, var_0.a.x))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(arg_2, var_0.b)), vec2<u32>(u_input.b, u_input.c.x)), 1u, var_0.b), var_0.c), vec4<i32>(var_0.a.x, countOneBits(2147483647i), global2.x, _wgslsmith_mult_i32(var_0.a.x, 27129i)), abs(u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(654f)))))))) * arg_0);
    let var_3 = Struct_1(var_0.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, ~5745u), ~u_input.a.xww), ~66287u), ~func_3(Struct_3(~0u, abs(arg_2)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-268f, arg_0)), 1223f, 1000f, _wgslsmith_f_op_f32(round(-127f))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(-1183f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1872f + -396f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)))))), arg_1.x));
    return Struct_1(vec2<i32>(u_input.d, 0i), 28965u, u_input.b << (_wgslsmith_add_u32(reverseBits(1u) | ~arg_1.x, ~_wgslsmith_mod_u32(u_input.c.x, u_input.a.x)) % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> bool {
    let var_0 = arg_0.a.a.x;
    let var_1 = global3[_wgslsmith_index_u32(u_input.c.x, 11u)];
    var var_2 = vec3<u32>(4294967295u, ~(arg_1.b << ((arg_1.a | arg_1.b) % 32u)), _wgslsmith_div_u32(arg_1.b, _wgslsmith_mod_u32(~0u, arg_1.a)));
    global3 = array<Struct_3, 11>();
    let var_3 = !vec4<bool>(!arg_2, all(vec3<bool>(any(vec4<bool>(arg_2, arg_2, arg_2, true)), true, any(vec4<bool>(arg_2, true, false, false)))), true, arg_2);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), !select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false)), vec2<bool>(false, false)), vec2<bool>(true, !any(vec3<bool>(true, true, true))), true);
    var var_1 = !func_4(Struct_2(func_1(~2147483647i, firstLeadingBit(u_input.c)), vec4<i32>(global2.x, -11459i, global2.x ^ 42094i, max(u_input.d, -2147483647i)), u_input.b), Struct_3(func_1(-17i, vec2<u32>(u_input.e, 57567u)).c | ~36293u, u_input.b), false);
    var var_2 = u_input.d;
    var var_3 = Struct_2(func_1(-global2.x, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), _wgslsmith_clamp_vec2_u32(u_input.a.xx, u_input.a.zx, vec2<u32>(u_input.e, u_input.e))) & ~(~u_input.c)), vec4<i32>(_wgslsmith_add_i32(global2.x, firstTrailingBit(~u_input.d)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-13289i, 2147483647i, -39088i, 24892i) & vec4<i32>(-2147483647i, 532i, 8516i, global2.x), countOneBits(vec4<i32>(u_input.d, u_input.d, u_input.d, global2.x))), 1i, -18746i), ~8772u);
    var var_4 = _wgslsmith_sub_i32(-19554i, ~(-45106i));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-171f, -369f))))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-980f * 149f))), _wgslsmith_f_op_f32(-1131f * _wgslsmith_f_op_f32(select(-1771f, 1000f, var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(floor(var_5.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x * var_5.x)))), var_5.x), vec3<i32>(-_wgslsmith_add_i32(u_input.d, func_1(var_3.b.x, vec2<u32>(var_3.c, 32519u)).a.x), reverseBits(var_3.b.x), -1i), -1182f);
}

