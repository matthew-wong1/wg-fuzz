struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31>;

var<private> global1: f32;

var<private> global2: array<i32, 13>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    global1 = -821f;
    var var_0 = 7264i;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -492f) * _wgslsmith_f_op_f32(select(-336f, -234f, false)))))));
    var var_2 = true & any(vec3<bool>(select(any(vec4<bool>(false, false, true, true)), true, all(vec2<bool>(true, false))), false, all(vec3<bool>(false, false, true))));
    let var_3 = select(vec2<bool>(select(!(58887u >= u_input.a), true, !select(true, true, false)), false), vec2<bool>(_wgslsmith_f_op_f32(-var_1) <= _wgslsmith_f_op_f32(min(1075f, _wgslsmith_div_f32(441f, 467f))), any(vec3<bool>(true, true, true))), !(!any(vec2<bool>(false, false)) && (u_input.a >= (u_input.a << (0u % 32u)))));
    return 4294967295u;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> vec3<i32> {
    global0 = array<vec2<u32>, 31>();
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1270f))));
    global0 = array<vec2<u32>, 31>();
    global1 = arg_3;
    return -arg_2.b.zyy;
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global0 = array<vec2<u32>, 31>();
    let var_0 = ~(~firstTrailingBit(u_input.a) >> (u_input.a % 32u));
    global1 = arg_0;
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a, 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~0u, var_0 | 0u), 25499u, _wgslsmith_add_u32(u_input.a, 1u))), vec3<u32>(u_input.a | firstLeadingBit(0u), ~(~(var_0 >> (75383u % 32u))), 0u));
    let var_2 = Struct_4(_wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_0, 13u)], global2[_wgslsmith_index_u32(37067u, 13u)], ~global2[_wgslsmith_index_u32(13839u, 13u)]), vec3<i32>(~2147483647i << (var_1.x % 32u), 0i, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, firstLeadingBit(u_input.a)), 13u)])), vec4<i32>(_wgslsmith_dot_vec3_i32(func_4(global0[_wgslsmith_index_u32(func_3(), 31u)], Struct_2(vec3<u32>(0u, 4294967295u, var_0)), Struct_3(Struct_2(vec3<u32>(u_input.a, 27734u, 26676u)), vec4<i32>(global2[_wgslsmith_index_u32(23383u, 13u)], global2[_wgslsmith_index_u32(var_0, 13u)], global2[_wgslsmith_index_u32(39999u, 13u)], -35368i)), -869f), -vec3<i32>(-6318i, global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)])), global2[_wgslsmith_index_u32(~u_input.a, 13u)], _wgslsmith_mod_i32(~_wgslsmith_mult_i32(-20320i, global2[_wgslsmith_index_u32(13840u, 13u)]), -(global2[_wgslsmith_index_u32(var_0, 13u)] ^ global2[_wgslsmith_index_u32(27465u, 13u)])), _wgslsmith_add_i32(36068i, -2147483647i | global2[_wgslsmith_index_u32(1u, 13u)]) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_0, var_1.x), vec4<u32>(u_input.a, 13960u, 43872u, 4294967295u)), ~194u) % 32u)));
    return vec4<bool>(all(vec3<bool>(all(vec2<bool>(true, false)), select(true, select(true, false, true), all(vec2<bool>(false, true))), (var_0 == var_1.x) & true)), false, true, any(!vec2<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, false, false)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_4 {
    var var_0 = Struct_4(arg_0, ~vec4<i32>(arg_3, 2147483647i, -13434i, firstTrailingBit(arg_0.x)));
    var var_1 = vec3<bool>(true, select(_wgslsmith_f_op_f32(ceil(111f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(109f * -654f) + _wgslsmith_f_op_f32(abs(-1000f))), false, true), arg_1);
    var_1 = select(!vec3<bool>(true, all(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, false, var_1.x), arg_1)), !all(vec2<bool>(true, arg_1))), select(vec3<bool>(all(func_2(-946f)), false, arg_1), vec3<bool>(true & any(vec3<bool>(var_1.x, true, false)), false, arg_1), !all(!vec4<bool>(var_1.x, var_1.x, var_1.x, arg_1))), !var_1.x | all(vec4<bool>(true, var_1.x, u_input.a >= 13721u, false)));
    let var_2 = Struct_4(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, global2[_wgslsmith_index_u32(1u, 13u)], arg_2), var_0.a >> (vec3<u32>(u_input.a, 44712u, 1u) % vec3<u32>(32u))) << ((vec3<u32>(47307u, u_input.a, 1u) << (vec3<u32>(89168u, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), min(-(arg_0 >> (vec3<u32>(1u, 4294967295u, 77807u) % vec3<u32>(32u))), arg_0)), ((vec4<i32>(-1i) * -vec4<i32>(24593i, -33434i, 17020i, var_0.b.x)) | countOneBits(select(var_0.b, var_0.b, vec4<bool>(arg_1, var_1.x, false, true)))) << (~vec4<u32>(u_input.a ^ 22529u, 0u, ~u_input.a, ~u_input.a) % vec4<u32>(32u)));
    let var_3 = Struct_2(~vec3<u32>(u_input.a, ~u_input.a, u_input.a));
    return Struct_4(-(~(~vec3<i32>(arg_2, arg_2, 1i))) >> (~vec3<u32>(~u_input.a, ~1u, ~57835u) % vec3<u32>(32u)), reverseBits(~select(~var_0.b, vec4<i32>(-1i, arg_3, arg_3, arg_0.x) >> (vec4<u32>(13353u, var_3.a.x, 4294967295u, 4294967295u) % vec4<u32>(32u)), !vec4<bool>(false, true, arg_1, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(reverseBits(global2[_wgslsmith_index_u32(4294967295u, 13u)]), 39187i), ~(global2[_wgslsmith_index_u32(u_input.a, 13u)] | ((global2[_wgslsmith_index_u32(u_input.a, 13u)] | 2147483647i) & _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a, 13u)], 1i))));
    var var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(0u, 31u)], vec2<u32>(u_input.a, u_input.a)), vec2<u32>(10686u, u_input.a) & global0[_wgslsmith_index_u32(u_input.a, 31u)]) & global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(u_input.a) ^ 65575u), 31u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 51588u), 31u)]);
    var var_2 = func_1(firstTrailingBit(-reverseBits(-vec3<i32>(-32596i, global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)]))), true, var_0, var_0);
    let var_3 = Struct_3(Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(0u, ~u_input.a, u_input.a), vec3<u32>(~1u, _wgslsmith_add_u32(18769u, u_input.a), 1u))), ~(_wgslsmith_add_vec4_i32(max(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(1u, 13u)], -2147483647i, 29483i), var_2.b), vec4<i32>(-32187i, var_0, -2147483647i, var_2.a.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a) % vec4<u32>(32u)), countOneBits(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))) % vec4<u32>(32u))));
    let var_4 = var_3.a.a.x;
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-614f * 410f) * _wgslsmith_f_op_f32(trunc(536f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-862f - 516f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, -1083f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(381f, var_5), _wgslsmith_div_vec2_f32(vec2<f32>(-753f, 693f), vec2<f32>(-141f, -1070f)), func_2(var_5).wz)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_5, var_5), vec2<f32>(-1320f, var_5))))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5, var_5, -1126f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_5, 104f, var_5))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5, var_5, var_5) * vec3<f32>(_wgslsmith_f_op_f32(select(var_5, var_5, false)), _wgslsmith_f_op_f32(-695f + -1000f), var_5)))));
}

