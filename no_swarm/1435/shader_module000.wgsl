struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(1u, 33395u, 30372u, 3789u, 1u, 1u, 0u, 4294967295u, 24374u, 0u, 1u, 18425u, 1u, 60939u, 0u, 88923u, 4294967295u, 4294967295u, 0u, 0u, 0u, 5860u, 4294967295u, 22615u, 4294967295u, 11663u, 0u, 0u, 4294967295u, 6971u, 42112u);

var<private> global1: array<vec4<bool>, 10>;

var<private> global2: vec2<u32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> vec3<f32> {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(2147483647i | _wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_sub_i32(firstTrailingBit(22360i), 12071i)), 1820i);
    var var_1 = Struct_1(max(11800u, 39376u));
    var var_2 = select(vec4<i32>(~(-16183i), 0i, abs(-u_input.a), 0i) | _wgslsmith_mult_vec4_i32(max(vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.a), -vec4<i32>(u_input.a, 67764i, 21416i, u_input.a)), vec4<i32>(_wgslsmith_div_i32(var_0.x, var_0.x), reverseBits(u_input.a), var_0.x, var_0.x)), -(~reverseBits(vec4<i32>(u_input.a, 32313i, u_input.a, -1i))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11947u, ~4294967295u, global0[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 31u)], 40687u), abs(select(arg_0, countOneBits(vec4<u32>(39975u, 1u, arg_0.x, global0[_wgslsmith_index_u32(var_1.a, 31u)])), global1[_wgslsmith_index_u32(~var_1.a, 10u)]))), 10u)]);
    var_2 = vec4<i32>(_wgslsmith_add_i32(u_input.a, countOneBits(1i)), -19040i, u_input.a & -2147483647i, 2108i) & vec4<i32>(_wgslsmith_div_i32(~(-37132i), var_0.x), -59480i, -var_2.x, select(-1i, 0i, arg_1.x | any(vec3<bool>(false, false, true))));
    let var_3 = Struct_1(~_wgslsmith_sub_u32(var_1.a, ~(arg_0.x << (global0[_wgslsmith_index_u32(6836u, 31u)] % 32u))));
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1844f)) - -401f))), -204f)));
}

fn func_2() -> u32 {
    global1 = array<vec4<bool>, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(896u, 4294967295u, global0[_wgslsmith_index_u32(global2.x, 31u)], 1u), vec4<bool>(false, false, true, true))))))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(ceil(-846f)), _wgslsmith_f_op_f32(295f * -487f), 456f);
    var var_2 = Struct_1(select(0u, ~reverseBits(43855u), false));
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, ~min(u_input.a, u_input.a))), ~(-vec2<i32>(28840i ^ u_input.a, u_input.a)));
    return 4294967295u;
}

fn func_1() -> bool {
    var var_0 = vec4<u32>(~global2.x, global2.x | ~20010u, global2.x, global2.x << (~func_2() % 32u));
    var_0 = ((~countOneBits(vec4<u32>(5575u, var_0.x, global2.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31423u, 31u)], 31u)], 31u)])) | vec4<u32>(1u, 22019u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 31u)], 31u)], 31u)], _wgslsmith_mult_u32(30249u, var_0.x), global2.x)) | _wgslsmith_sub_vec4_u32(abs(vec4<u32>(global2.x, var_0.x, global2.x, 1u)) << (~vec4<u32>(8501u, global2.x, var_0.x, var_0.x) % vec4<u32>(32u)), ~firstTrailingBit(vec4<u32>(global2.x, 21642u, global2.x, var_0.x)))) | ~max(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(64442u, 1u, global0[_wgslsmith_index_u32(1u, 31u)], global2.x), vec4<u32>(var_0.x, 42366u, var_0.x, global2.x))), abs(vec4<u32>(global0[_wgslsmith_index_u32(0u, 31u)], 11405u, var_0.x, global0[_wgslsmith_index_u32(42315u, 31u)]) | vec4<u32>(global2.x, var_0.x, 1u, global0[_wgslsmith_index_u32(1u, 31u)])));
    global0 = array<u32, 31>();
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -abs(~vec3<i32>(12792i, u_input.a, u_input.a)), reverseBits(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(-8640i, -1i)), u_input.a)));
    var_1 = select(reverseBits(vec3<i32>(~2147483647i, max(u_input.a, var_1.x), _wgslsmith_mult_i32(93549i, var_1.x))), vec3<i32>(var_1.x, _wgslsmith_sub_i32(u_input.a, 41243i), 2147483647i), !vec3<bool>(var_0.x < 67722u, select(true, true, true), select(false, false, true))) >> (vec3<u32>(~min(~global2.x, 31435u), global2.x, global2.x) % vec3<u32>(32u));
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_sub_vec2_u32(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(78713u, global2.x), vec2<u32>(arg_2.a, 57363u) << (vec2<u32>(70504u, arg_0.a) % vec2<u32>(32u)))), vec2<u32>(1u, ~(global0[_wgslsmith_index_u32(23555u, 31u)] & 1u)));
    global1 = array<vec4<bool>, 10>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1691f, 1000f, 1306f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(564f, -421f, 507f)))))), vec3<f32>(-1610f, -546f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1571f), -259f))));
    let var_1 = vec3<bool>(any(vec3<bool>(any(select(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)])), true, _wgslsmith_mult_i32(u_input.a, 1i) < ~u_input.a)), arg_1.x, arg_1.x || true);
    var var_2 = true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_div_u32(abs(global2.x), global0[_wgslsmith_index_u32(1u << (countOneBits(1u) % 32u), 31u)])), !select(vec2<bool>(true, true), vec2<bool>(u_input.a > 29450i, func_1()), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), false)), Struct_1((_wgslsmith_mod_u32(4294967295u, global2.x) | 1u) | ~0u));
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(countOneBits(4294967295u), 31u)], 31u)], 31u)]);
    global2 = vec2<u32>(var_0.a | (1u & _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u)), var_0.a) & ~countOneBits(~(vec2<u32>(var_1.a, 4294967295u) ^ vec2<u32>(var_1.a, 1u)));
    var var_2 = 0i;
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1105f - _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-587f, 108f))))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(0i, u_input.a) & (vec2<i32>(u_input.a, 0i) | vec2<i32>(2147483647i, u_input.a)), firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)))), vec2<i32>(~(-28256i), _wgslsmith_dot_vec4_i32(vec4<i32>(-67111i, -6774i, u_input.a, 17279i) | vec4<i32>(-1i, 21227i, -2147483647i, -42624i), select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -67601i), global1[_wgslsmith_index_u32(0u, 10u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1614f + 1860f), _wgslsmith_f_op_f32(sign(1372f)), false)))), countOneBits(vec4<u32>(var_1.a, 0u, var_1.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a, 31u)], 31u)]) >> (vec4<u32>(81092u, 0u, var_0.a, 18016u) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, 0u, 19395u, firstTrailingBit(global2.x)), vec4<u32>(min(2464u, global2.x), countOneBits(0u), _wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(var_0.a, 31u)]), abs(global0[_wgslsmith_index_u32(0u, 31u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-516f)), _wgslsmith_f_op_f32(min(1000f, -440f)))));
}

