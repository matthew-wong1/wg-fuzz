struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: f32) -> f32 {
    global0 = array<Struct_3, 23>();
    let var_0 = Struct_1(min(countOneBits(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.d), vec4<i32>(9593i, u_input.d, -1i, -28852i), true), vec4<i32>(u_input.d, u_input.d, 2147483647i, -97455i))), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.d, u_input.d, 80496i, u_input.d), vec4<i32>(u_input.d, 20908i << (1u % 32u), ~(-25390i), -u_input.d))), u_input.d, -u_input.d, 2147483647i);
    var var_1 = ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.a.yz), ~u_input.c), vec2<u32>(_wgslsmith_mult_u32(arg_0, 0u), abs(0u))));
    var var_2 = _wgslsmith_f_op_f32(floor(-339f));
    var_2 = _wgslsmith_f_op_f32(-arg_1);
    return _wgslsmith_f_op_f32(arg_1 - 157f);
}

fn func_3() -> f32 {
    global0 = array<Struct_3, 23>();
    global0 = array<Struct_3, 23>();
    global0 = array<Struct_3, 23>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-832f, -731f, 1640f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1598f, -1000f, 228f), vec3<f32>(-431f, -430f, 487f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(432f, 2269f, 1019f)) * vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1645f, -1243f, -2908f) + vec3<f32>(-1564f, 180f, 1501f))))));
    var var_1 = Struct_2(_wgslsmith_sub_i32(-24428i, -5528i));
    return var_0.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-218f, -540f)))))) - -1989f);
    var var_1 = !arg_1;
    let var_2 = vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(67651u << (arg_0.x % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -766f))))), _wgslsmith_div_f32(-415f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -408f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(830f - 1025f), arg_1.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(arg_0.x, 623f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -469f)))))));
    let var_3 = vec2<f32>(-1230f, -1355f);
    let var_4 = arg_2;
    return -1000f;
}

fn func_4(arg_0: f32) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-1i, ~0i, -1i >> (u_input.b % 32u), _wgslsmith_mult_i32(25804i, u_input.d))), vec4<i32>(~2385i, -(i32(-1i) * -2147483647i), max(30457i ^ u_input.d, u_input.d | 58274i), _wgslsmith_mult_i32(-u_input.d, u_input.d))), ~1i, max(select(-2147483647i, -(i32(-1i) * -4684i), true), min(-reverseBits(u_input.d), _wgslsmith_sub_i32(~(-2147483647i), -u_input.d))), -firstTrailingBit(u_input.d));
    global0 = array<Struct_3, 23>();
    let var_1 = _wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, u_input.d, 2147483647i), _wgslsmith_mod_vec3_i32(var_0.a.xzy, vec3<i32>(u_input.d, var_0.d, 2147483647i)))) & -_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c, u_input.d, var_0.b), vec3<i32>(1i, u_input.d, 17141i)), ~(-var_0.a.yyx));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(reverseBits(u_input.a.x), 64433u), _wgslsmith_add_u32(u_input.c.x, 36113u), ~u_input.c.x, 0u), max(max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.b) << (vec4<u32>(4294967295u, u_input.b, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), max(vec4<u32>(0u, 13211u, 4294967295u, u_input.b), vec4<u32>(u_input.c.x, 0u, 0u, 0u))), vec4<u32>(16148u, u_input.b, u_input.b, 115911u) >> (countOneBits(vec4<u32>(1u, u_input.a.x, 1u, u_input.c.x)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(4294967295u, 0u), 0u, 1u), ~vec4<u32>(0u, 1u, 16133u, 0u) >> (select(vec4<u32>(u_input.b, u_input.c.x, 19376u, 25582u), vec4<u32>(u_input.b, 1u, u_input.b, u_input.c.x), true) % vec4<u32>(32u))))), 23u)];
    var_2 = Struct_3(Struct_1(-var_2.a.a, var_1.x, i32(-1i) * -var_1.x, var_1.x ^ var_2.a.c), -1268f, var_2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -916f) + 243f))));
    return _wgslsmith_mod_vec2_u32(vec2<u32>(~41929u, 49258u), u_input.c) << (u_input.c % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(u_input.a.xz, ~(vec2<u32>(u_input.b, abs(u_input.b)) | ~(~u_input.c)));
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(22376u, ~(u_input.c.x ^ var_0.x)) & var_0, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.a.x, var_0.x, 4294967295u, 17956u), vec3<bool>(true, false, false), Struct_1(vec4<i32>(61971i, u_input.d, u_input.d, 29016i), 1i, u_input.d, u_input.d))) - -1837f))));
    global0 = array<Struct_3, 23>();
    let var_2 = vec2<u32>(min(select(1u, 43189u, all(vec2<bool>(false, false))), ~32305u), _wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_sub_u32(var_1.x, 21383u))) << (~vec2<u32>(_wgslsmith_mult_u32(u_input.b, 114991u) << (~1u % 32u), _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(var_1.x, 14791u))) % vec2<u32>(32u));
    global0 = array<Struct_3, 23>();
    global0 = array<Struct_3, 23>();
    let var_3 = vec2<bool>(_wgslsmith_sub_u32(~(4294967295u & var_0.x), ~1u | _wgslsmith_add_u32(37987u, var_2.x)) >= var_0.x, any(!vec4<bool>(true, false, true, all(vec3<bool>(true, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(~(vec4<i32>(u_input.d, u_input.d, u_input.d, -26606i) << (vec4<u32>(34720u, 1u, 4294967295u, var_0.x) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, -2147483647i), vec4<i32>(u_input.d, u_input.d, -1i, u_input.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(42981i, u_input.d, u_input.d, u_input.d), vec4<i32>(10260i, u_input.d, -3621i, -19132i))), firstTrailingBit(vec4<i32>(u_input.d, max(u_input.d, 0i), 1i, _wgslsmith_mod_i32(u_input.d, 20968i)))), vec4<u32>(firstLeadingBit(select(_wgslsmith_mod_u32(var_0.x, var_2.x), ~0u, var_3.x)), abs(~1u), 63872u, _wgslsmith_sub_u32(37312u, u_input.a.x)), 4294967295u, -(max(u_input.d, -u_input.d) << (~(1u & u_input.b) % 32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -2473f, -624f, -1013f) - vec4<f32>(-551f, -939f, -272f, 2674f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-737f, 170f, 1000f, -696f))))));
}

