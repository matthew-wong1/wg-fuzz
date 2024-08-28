struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 22> = array<i32, 22>(17087i, 4288i, -13588i, -12401i, 23844i, -1i, 1i, 26245i, i32(-2147483648), -61304i, -55488i, 2147483647i, 0i, 2147483647i, -3157i, 12375i, 22255i, 29564i, 0i, -1i, 0i, i32(-2147483648));

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = arg_0;
    let var_1 = select(_wgslsmith_mult_u32(1u, firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d) ^ ~47899u)), ~min(u_input.d.x, u_input.c), all(!select(!vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, false, arg_2), arg_2), select(arg_2, arg_2, arg_2))));
    let var_2 = ~reverseBits(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(879i, 2147483647i, global1[_wgslsmith_index_u32(126740u, 22u)], 7941i), vec4<i32>(-21696i, global1[_wgslsmith_index_u32(arg_1, 22u)], global1[_wgslsmith_index_u32(12639u, 22u)], 27619i)), select(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(global0.a, 22u)], 2147483647i, 45958i), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, global1[_wgslsmith_index_u32(global0.a, 22u)]), vec4<bool>(arg_2, arg_2, false, true)))) & _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], u_input.b.x, global1[_wgslsmith_index_u32(var_1, 22u)]), vec4<i32>(-2147483647i, -58426i, 2147483647i, -24486i), arg_2) >> (abs(vec4<u32>(45306u, u_input.c, 4491u, arg_1)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(21112i, -1i, 1i, -63335i), vec4<i32>(0i, global1[_wgslsmith_index_u32(var_0.a, 22u)], -4074i, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -60259i, 5873i, u_input.b.x), vec4<i32>(-50294i, 46545i, u_input.b.x, -5227i), vec4<i32>(-1i, -21837i, 0i, global1[_wgslsmith_index_u32(arg_1, 22u)])))), countOneBits(firstTrailingBit(countOneBits(vec4<i32>(-16999i, -324i, 33869i, -1i)))));
    var var_3 = ~max(2147483647i, -_wgslsmith_dot_vec4_i32(var_2, var_2));
    var_3 = firstTrailingBit(4311i);
    return arg_0.a;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = ~vec4<u32>(58396u, ~(14062u >> (~global0.a % 32u)), ~(68658u << (1u % 32u)) & global0.a, global0.a);
    global0 = global2[_wgslsmith_index_u32(func_3(arg_0, 1u, true), 11u)];
    var var_1 = false;
    let var_2 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, true)), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, select(false, false, false))), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_3 = vec2<u32>(~(~arg_0.a), u_input.c);
    return 1625f;
}

fn func_4(arg_0: f32) -> u32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(935f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(floor(-120f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-659f, arg_0))));
    var var_2 = u_input.b.x;
    let var_3 = global2[_wgslsmith_index_u32(min(~func_3(global2[_wgslsmith_index_u32(u_input.c, 11u)], ~(~u_input.c), any(vec4<bool>(true, true, true, true))), 50998u), 11u)];
    var var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global0.a ^ 39818u, 29735u >> (var_3.a % 32u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.d, vec2<u32>(var_3.a, u_input.d.x)) | ~firstLeadingBit(u_input.d)) >= u_input.d.x;
    return _wgslsmith_sub_u32(1030u | firstTrailingBit(abs(~54241u)), 7834u);
}

fn func_1() -> Struct_1 {
    global0 = global2[_wgslsmith_index_u32(global0.a, 11u)];
    var var_0 = vec2<u32>(~(51541u << (u_input.d.x % 32u)), u_input.c) ^ u_input.d;
    var var_1 = !(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -113f);
    var var_3 = select(select(var_1.x, !var_1.x, !(select(u_input.b.x, u_input.b.x, var_1.x) <= -83826i)), (_wgslsmith_div_i32(max(-2147483647i, -2147483647i), global1[_wgslsmith_index_u32(var_0.x, 22u)]) < min(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], u_input.b.x), ~u_input.b.x)) || (-1i <= u_input.b.x), !var_1.x);
    return global2[_wgslsmith_index_u32(abs(min(~(~u_input.a) | func_4(_wgslsmith_f_op_f32(func_2(Struct_1(0u)))), _wgslsmith_mod_u32((var_0.x << (0u % 32u)) ^ _wgslsmith_mult_u32(var_0.x, global0.a), global0.a << (_wgslsmith_sub_u32(58355u, 0u) % 32u)))), 11u)];
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-222f, 1170f), _wgslsmith_f_op_f32(round(403f)))))) * -532f);
    global0 = func_1();
    global2 = array<Struct_1, 11>();
    let var_1 = select(arg_0, select(vec2<bool>(arg_0.x, true), select(vec2<bool>(arg_0.x & arg_0.x, !arg_0.x), arg_0, !arg_0.x), arg_0), !select(select(select(vec2<bool>(false, arg_0.x), vec2<bool>(false, arg_0.x), false), arg_0, arg_2.a >= 50062u), select(vec2<bool>(false, arg_0.x), !arg_0, arg_0.x), arg_0.x));
    var var_2 = global1[_wgslsmith_index_u32(52227u, 22u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) - -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_5(vec2<bool>(true, true), func_1(), func_1())), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1151f), _wgslsmith_f_op_f32(max(-338f, _wgslsmith_f_op_f32(-272f - -293f)))) * -1196f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)));
    var var_1 = Struct_1(~0u);
    let var_2 = Struct_1(~(firstLeadingBit(global0.a) << (var_1.a % 32u)));
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(~global1[_wgslsmith_index_u32(global0.a, 22u)]), select(u_input.b.x, 36368i, any(vec4<bool>(false, false, true, true))), _wgslsmith_sub_i32(-19865i, max(u_input.b.x, u_input.b.x)), -2147483647i), -vec4<i32>(-u_input.b.x, global1[_wgslsmith_index_u32(24798u, 22u)] & global1[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_add_i32(u_input.b.x, -14403i), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(7748u, 22u)], u_input.b.x, global1[_wgslsmith_index_u32(global0.a, 22u)]))) <= _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-20909i, 0i)), _wgslsmith_mod_i32(u_input.b.x, 0i)), u_input.b.x & ~31214i), global1[_wgslsmith_index_u32(global0.a, 22u)]);
    var var_4 = var_0.yy;
    var var_5 = global2[_wgslsmith_index_u32(var_1.a ^ ~(~(~35368u)), 11u)];
    global0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~11723u, ~_wgslsmith_mod_u32(var_5.a, var_2.a));
}

