struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(75120u, 45230u, 0u, 1u, 4294967295u, 15828u, 46839u, 0u, 16455u, 48570u, 52064u, 25213u);

var<private> global1: array<Struct_1, 9>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1031f - _wgslsmith_div_f32(-1186f, 589f)))));
    var var_1 = max(vec4<i32>(countOneBits(u_input.c), _wgslsmith_clamp_i32(arg_2.x, _wgslsmith_add_i32(0i, -1i), u_input.a), arg_2.x >> (~countOneBits(u_input.b.x) % 32u), countOneBits(arg_3)), -arg_2);
    var_0 = _wgslsmith_f_op_f32(round(-1073f));
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1737f + -1675f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1575f)))));
}

fn func_1() -> vec3<f32> {
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(914f, 1000f, -1246f) * vec3<f32>(479f, -1015f, 1780f))) * _wgslsmith_f_op_vec3_f32(func_2(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), 1u, vec4<i32>(u_input.c, u_input.d, u_input.a, u_input.a) ^ vec4<i32>(-15382i, u_input.c, 17101i, u_input.c), u_input.d))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1952f, 1791f, -486f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(170f, -1275f, -1143f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(719f, -1360f, -304f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1171f, 209f, false)), _wgslsmith_f_op_f32(529f + -809f), 438f))));
}

fn func_3() -> vec4<u32> {
    let var_0 = i32(-1i) * -50707i;
    global0 = array<u32, 12>();
    let var_1 = ~countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70865u, 12u)], 12u)], 12u)], 4294967295u, u_input.b.x, 20045u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 18853u, u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec4<u32>(68214u, 4294967295u, 47384u, 6365u))) & countOneBits(vec4<u32>(~(~global0[_wgslsmith_index_u32(0u, 12u)]), 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], min(_wgslsmith_mult_u32(u_input.b.x, global0[_wgslsmith_index_u32(79921u, 12u)]), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6015u, 12u)], 12u)], u_input.b.x))));
    let var_2 = Struct_1(vec3<bool>(true, !all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), any(vec3<bool>(true, true, true))), ~vec4<u32>(_wgslsmith_mod_u32(countOneBits(global0[_wgslsmith_index_u32(114002u, 12u)]), countOneBits(4294967295u)), var_1.x, _wgslsmith_mult_u32(u_input.b.x, 1u) << ((u_input.b.x ^ 60634u) % 32u), _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 107646u), var_1.yz), ~100741u)), -max(min(vec3<i32>(u_input.a, 2147483647i, 1i), vec3<i32>(2869i, 2147483647i, var_0)) & -vec3<i32>(var_0, 25129i, -20993i), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 14426i, -1i), vec3<i32>(-1i, 1i, var_0))), 0i);
    var var_3 = -vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -var_2.d, -var_0 >> (u_input.b.x % 32u)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(~(-519i), _wgslsmith_dot_vec2_i32(var_2.c.zz, var_2.c.zz), u_input.c), -var_0));
    return vec4<u32>(70143u & var_2.b.x, global0[_wgslsmith_index_u32(reverseBits(4294967295u), 12u)], 18647u, u_input.b.x & _wgslsmith_add_u32(_wgslsmith_div_u32(var_2.b.x, 0u), global0[_wgslsmith_index_u32(reverseBits(u_input.b.x), 12u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    let var_1 = ~u_input.b;
    let var_2 = Struct_4(_wgslsmith_add_vec4_u32(~firstTrailingBit(~vec4<u32>(60703u, u_input.b.x, 4294967295u, 53957u)), func_3()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -742f, 1000f, var_0.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-589f, var_0.x, var_0.x, var_0.x))), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1000f, -183f, var_0.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), true)), select(false, false, false))))), var_1);
    let var_3 = var_0.yz;
    var var_4 = global1[_wgslsmith_index_u32(0u, 9u)];
    global0 = array<u32, 12>();
    let var_5 = _wgslsmith_sub_vec2_i32(min((var_4.c.xz << (var_2.a.wx % vec2<u32>(32u))) ^ firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_4.d), vec2<i32>(1i, u_input.c))), ~var_4.c.zz), -vec2<i32>(i32(-1i) * -31004i, var_4.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(7355u, firstTrailingBit(_wgslsmith_mult_u32(~31559u, firstTrailingBit(8298u)))), ~select(var_4.b.xx, var_1.yy, !select(vec2<bool>(false, var_4.a.x), var_4.a.zy, var_4.a.zx)), abs(vec4<i32>(var_5.x >> (var_1.x % 32u), -6418i | var_4.c.x, var_5.x << (var_4.b.x % 32u), min(var_5.x, -21878i)) | _wgslsmith_mod_vec4_i32(~vec4<i32>(var_5.x, var_4.c.x, 38355i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 0i, u_input.a, u_input.d), vec4<i32>(-66563i, -2147483647i, -37830i, -47953i)))), _wgslsmith_sub_i32(~_wgslsmith_mult_i32(abs(17605i), u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.d, ~var_4.d, var_5.x), (var_4.c & var_4.c) << (vec3<u32>(50199u, var_1.x, u_input.b.x) % vec3<u32>(32u)))), firstLeadingBit(_wgslsmith_mult_vec2_u32(~u_input.b.xy, select(~var_4.b.yw, var_1.xy, true))));
}

