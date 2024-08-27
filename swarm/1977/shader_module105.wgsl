struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
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

var<private> global0: vec3<i32>;

var<private> global1: array<i32, 31>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(320f), Struct_1(650f), Struct_1(-124f), Struct_1(-1697f), Struct_1(1867f), Struct_1(-1777f), Struct_1(-501f), Struct_1(255f), Struct_1(649f), Struct_1(646f), Struct_1(490f), Struct_1(-1146f), Struct_1(555f), Struct_1(552f), Struct_1(-201f), Struct_1(799f), Struct_1(937f), Struct_1(585f), Struct_1(-2104f), Struct_1(380f), Struct_1(-1008f), Struct_1(-536f), Struct_1(823f));

var<private> global3: vec4<i32> = vec4<i32>(-14108i, 2147483647i, -6876i, 15799i);

var<private> global4: array<u32, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32) -> f32 {
    global0 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-select(global0.x, global3.x, true), ~(-15963i << (u_input.b.x % 32u)), 43307i), abs(_wgslsmith_sub_vec3_i32(min(vec3<i32>(global0.x, 2147483647i, global1[_wgslsmith_index_u32(38351u, 31u)]), global3.wzx), u_input.a))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)]), 31u)], -global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, global3.x, -67987i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], u_input.a.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], 31u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], 31u)]))), -(~vec3<i32>(-1i, -2147483647i, -11712i)), vec3<i32>(-4289i, -35624i, global1[_wgslsmith_index_u32(5681u, 31u)])));
    var var_0 = Struct_1(-557f);
    var var_1 = !(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.a)), -189f)))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.a, 850f)), _wgslsmith_f_op_f32(arg_0 * 203f))));
    global2 = array<Struct_1, 23>();
    let var_2 = true;
    return 1000f;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) * _wgslsmith_f_op_f32(f32(-1f) * -316f)))))));
    global0 = vec3<i32>(_wgslsmith_mod_i32(-1i, 21512i), u_input.a.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(1i, u_input.a.x), global0.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 31u)])), ~_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(global3.x, -2147483647i, global0.x)), countOneBits(vec3<i32>(-1i, global3.x, global1[_wgslsmith_index_u32(8972u, 31u)])))));
    let var_1 = global2[_wgslsmith_index_u32(~12704u, 23u)];
    var var_2 = _wgslsmith_sub_vec2_u32(~(_wgslsmith_clamp_vec2_u32(~u_input.b.xz, firstTrailingBit(vec2<u32>(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], 0u)), select(vec2<u32>(u_input.b.x, 11189u), u_input.b.zy, false)) << (u_input.b.yy % vec2<u32>(32u))), u_input.b.zx);
    global3 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, u_input.a.x, -1i, 17775i), vec4<i32>(-7850i, -1104i, global1[_wgslsmith_index_u32(4294967295u, 31u)], u_input.a.x)), global1[_wgslsmith_index_u32(~u_input.b.x, 31u)], global0.x | -18020i, _wgslsmith_div_i32(global0.x, 2147483647i)), min(min(-vec4<i32>(global0.x, -1i, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 32u)], 32u)], 31u)], -24772i), -vec4<i32>(9985i, -1i, global3.x, -11053i)), select(~vec4<i32>(0i, 63857i, global0.x, u_input.a.x), ~vec4<i32>(-9302i, global0.x, 54754i, global1[_wgslsmith_index_u32(25398u, 31u)]), all(vec3<bool>(arg_0, true, arg_0))))), abs(-(-vec4<i32>(70356i, 1i, 0i, global1[_wgslsmith_index_u32(0u, 31u)]) | -vec4<i32>(global1[_wgslsmith_index_u32(61018u, 31u)], -945i, u_input.a.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 31u)]))));
    return 473f;
}

fn func_1() -> i32 {
    global4 = array<u32, 32>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1160f, -679f, -2013f)))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(862f - -585f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -485f))), _wgslsmith_f_op_f32(func_2(true)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-151f - _wgslsmith_div_f32(-174f, 1655f)), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1399f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -432f, 1572f) + vec3<f32>(-409f, 1067f, 527f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1527f, -1911f, 485f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1363f, 1051f, 233f))), vec3<f32>(225f, 264f, 2957f)))));
    global3 = _wgslsmith_div_vec4_i32(-(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2608i, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], -2147483647i), vec4<i32>(global3.x, 52498i, 3878i, u_input.a.x))) | (vec4<i32>(-1i) * -vec4<i32>(global3.x, global0.x, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], u_input.a.x))), select(vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(0i, 2147483647i), ~global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], 31u)], -1i), -vec4<i32>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 31u)], 40862i, -2147483647i), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)) << (~min(min(vec4<u32>(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], 16962u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 32u)], 32u)], u_input.b.x), vec4<u32>(37041u, 0u, u_input.b.x, u_input.b.x)), abs(vec4<u32>(107066u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], 32u)], 31432u, global4[_wgslsmith_index_u32(58210u, 32u)]))) % vec4<u32>(32u)));
    global3 = ~(~vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global3.wz, vec2<i32>(global3.x, 0i)), min(global1[_wgslsmith_index_u32(18445u, 31u)], u_input.a.x)), _wgslsmith_div_i32(24663i, global0.x), 0i, u_input.a.x));
    var var_1 = any(!select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(var_0.x <= 642f, true)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((i32(-1i) * -17775i) <= _wgslsmith_mult_i32(1i, global3.x)) == true;
    global1 = array<i32, 31>();
    var var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 23u)];
    var var_2 = 551f;
    var var_3 = u_input.b.yx;
    var var_4 = _wgslsmith_clamp_vec3_i32(~select(vec3<i32>(u_input.a.x & global3.x, func_1(), 15635i), u_input.a, vec3<bool>(var_0, any(vec2<bool>(true, false)), select(true, false, false))), -vec3<i32>(-u_input.a.x, 4134i, 1i), abs(vec3<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(64921u, 31u)], -1i), 33932i, -1i) >> (u_input.b % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(786f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-521f))))), var_1.a);
}

