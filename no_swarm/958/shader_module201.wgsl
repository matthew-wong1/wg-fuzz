struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<Struct_3, 12>;

var<private> global2: array<u32, 16> = array<u32, 16>(75314u, 4294967295u, 52494u, 3085u, 9957u, 40624u, 29135u, 16825u, 23285u, 3605u, 1u, 10919u, 4035u, 4294967295u, 95025u, 0u);

var<private> global3: f32 = -2250f;

var<private> global4: array<i32, 23> = array<i32, 23>(-20709i, -37131i, 15362i, 0i, 20659i, -1440i, i32(-2147483648), i32(-2147483648), 0i, -76i, -7978i, 0i, -1i, 2147483647i, 42598i, 30909i, 22295i, 49803i, 1i, 17929i, 1i, -1i, i32(-2147483648));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(~select(~vec2<i32>(global4[_wgslsmith_index_u32(24277u, 23u)], u_input.a), vec2<i32>(-1i) * -vec2<i32>(-4487i, -47390i), select(arg_2.a.x != global0[_wgslsmith_index_u32(28966u, 19u)], arg_1.x, false)), vec2<i32>(_wgslsmith_mod_i32(0i, i32(-1i) * -89613i), _wgslsmith_div_i32(-1i, ~u_input.a) | (_wgslsmith_div_i32(u_input.a, 35698i) ^ u_input.a)), ~vec2<i32>(-(i32(-1i) * -29273i), ~abs(-28917i)));
    var var_1 = ~(~_wgslsmith_mod_u32(~1u, ~(~42074u)));
    let var_2 = arg_2;
    global4 = array<i32, 23>();
    var var_3 = _wgslsmith_mod_vec4_u32(~vec4<u32>(firstTrailingBit(arg_2.d.x), 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(countOneBits(arg_2.d.x), 16u)], 16u)], abs(1u)), abs(select(~vec4<u32>(0u, global2[_wgslsmith_index_u32(44213u, 16u)], 18563u, 7304u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.d.x, arg_2.d.x, 95205u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(0u, 16u)], arg_2.d.x, global2[_wgslsmith_index_u32(arg_2.d.x, 16u)], 7111u)) << (~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], var_2.d.x, 4294967295u, 0u) % vec4<u32>(32u)), true)));
    return arg_2.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 19u)], global0[_wgslsmith_index_u32(arg_0.d.x, 19u)], arg_0.a.x, -533f) + vec4<f32>(-975f, 1019f, 2014f, 228f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0[_wgslsmith_index_u32(14765u, 19u)], -1825f, 1771f)))))) - vec4<f32>(arg_0.a.x, arg_1.x, arg_0.a.x, arg_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_1.x, -220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1506f - 1395f))), 530f < global0[_wgslsmith_index_u32(~22593u, 19u)]));
    var var_1 = false;
    let var_2 = arg_0.c.x;
    let var_3 = arg_0;
    global0 = array<f32, 19>();
    return vec3<i32>(u_input.a, _wgslsmith_mod_i32(~global4[_wgslsmith_index_u32(arg_0.d.x, 23u)], _wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), -vec2<i32>(u_input.a, -2147483647i)))), 2147483647i);
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, global0[_wgslsmith_index_u32(5771u, 19u)]))), -642f, _wgslsmith_f_op_f32(func_3(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, true, true), Struct_1(vec3<f32>(arg_0, arg_0, -1219f), false, vec3<bool>(true, true, false), vec3<u32>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)]), vec4<bool>(false, false, false, false))))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false)) || true, select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, select(false, false, false), 954u <= global2[_wgslsmith_index_u32(856u, 16u)])), _wgslsmith_clamp_vec3_u32(countOneBits(countOneBits(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)]))), min(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58536u, 16u)], 16u)], 1u, global2[_wgslsmith_index_u32(15160u, 16u)]), vec3<u32>(global2[_wgslsmith_index_u32(37581u, 16u)], 4479u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2971u, 16u)], 16u)])), vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(34624u, 16u)]) ^ (vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], 16u)]) << (vec3<u32>(1u, 7248u, 0u) % vec3<u32>(32u)))), vec4<bool>(true, all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), !any(vec4<bool>(false, true, true, true)))), vec2<f32>(1f, arg_0));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_0 - global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14531u, 16u)], 19u)]), _wgslsmith_f_op_f32(trunc(213f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global2[_wgslsmith_index_u32(75371u, 16u)]), 19u)] + global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(19494u, 16u)]), 16u)], 19u)]) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 19u)] * arg_0), _wgslsmith_f_op_f32(arg_0 + 460f)))));
    global3 = -1759f;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, arg_0, -1234f))) * vec3<f32>(_wgslsmith_f_op_f32(var_1.x + 1963f), var_1.x, 1f))), _wgslsmith_mod_i32(u_input.a, ~_wgslsmith_mult_i32(-1i, -67823i)) != -1i, !vec3<bool>(false, any(vec3<bool>(false, false, false)), false), vec3<u32>(max(~global2[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 4294967295u, true), 16u)], 4294967295u), global2[_wgslsmith_index_u32(max(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 16u)], 16u)]), 16u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29153u, 16u)], 16u)], ~0u) & 0u, 16u)]), vec4<bool>(true, true, false, all(vec2<bool>(any(vec3<bool>(true, false, true)), all(vec4<bool>(false, false, true, false))))));
    let var_3 = 1u;
    return select(select(!select(vec2<bool>(false, true), vec2<bool>(true, var_2.c.x), !var_2.e.xw), var_2.e.yw, vec2<bool>(var_0.x > 36235i, !all(var_2.c.zx))), var_2.e.wy, all(!vec4<bool>(var_2.c.x, any(vec2<bool>(var_2.e.x, var_2.e.x)), any(vec2<bool>(false, true)), var_2.c.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3))))));
    global3 = -1000f;
    global0 = array<f32, 19>();
    global2 = array<u32, 16>();
    let var_1 = ~(-countOneBits(-vec2<i32>(global4[_wgslsmith_index_u32(1u, 23u)], -1i))) | ~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.a.yx >> (arg_2.c % vec2<u32>(32u)), vec2<i32>(arg_2.d, arg_2.d) | vec2<i32>(arg_2.b, global4[_wgslsmith_index_u32(arg_2.c.x, 23u)])), _wgslsmith_clamp_vec2_i32(arg_1.zy, vec2<i32>(34511i, -33322i), arg_2.a.yx) | (vec2<i32>(-37875i, global4[_wgslsmith_index_u32(21500u, 23u)]) >> (vec2<u32>(21447u, global2[_wgslsmith_index_u32(60815u, 16u)]) % vec2<u32>(32u))));
    return ~select(~(~arg_2.c), max(select(vec2<u32>(arg_2.c.x, arg_2.c.x), vec2<u32>(arg_2.c.x, 27839u), vec2<bool>(true, false)) | _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.c.x, 4294967295u), vec2<u32>(arg_2.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13850u, 16u)], 16u)])), arg_2.c), select(vec2<bool>(true, true), !func_2(486f), true));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_1(vec2<f32>(-1213f, -167f), vec3<i32>(0i, -1i, -1i), global1[_wgslsmith_index_u32(89435u, 12u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 19u)]), vec2<u32>(24779u, global2[_wgslsmith_index_u32(21761u, 16u)])), 19u)]))), -933f);
}

