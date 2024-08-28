struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-913f, 1142f, 605f);

var<private> global1: array<vec4<u32>, 6>;

var<private> global2: array<vec2<bool>, 11>;

var<private> global3: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(11624i, 42383i, 5959i), vec3<i32>(-1i, 0i, 59258i), vec3<i32>(0i, -24667i, 2147483647i), vec3<i32>(i32(-2147483648), -11665i, 0i), vec3<i32>(4048i, -22272i, 2147483647i), vec3<i32>(0i, 60818i, 18767i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(14508i, 0i, i32(-2147483648)), vec3<i32>(2764i, 1i, 0i), vec3<i32>(-50785i, 0i, 36942i), vec3<i32>(-59152i, 2691i, 14191i), vec3<i32>(28690i, -48958i, 1i), vec3<i32>(11443i, -1i, 17464i), vec3<i32>(1i, -34684i, -22122i), vec3<i32>(23102i, -1i, -15924i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: bool) -> i32 {
    global1 = array<vec4<u32>, 6>();
    var var_0 = Struct_1(496f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.b.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, global0.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(-arg_0.b))));
    global2 = array<vec2<bool>, 11>();
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1151f) + _wgslsmith_div_f32(global0.x, -2481f)), 104f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) + global0.x), arg_0.a, _wgslsmith_f_op_f32(var_0.a - 2119f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1434f, -1000f, arg_0.a)))));
    var_0 = arg_0;
    return -2147483647i;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(-151f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1118f * global0.x)))))));
    let var_1 = Struct_1(571f, global0.xz);
    var var_2 = u_input.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(~select(1u, 1u, false), 17626u, 1u, _wgslsmith_clamp_u32(~46333u, 1u, ~39102u)), global1[_wgslsmith_index_u32(~(~1u), 6u)] << (abs(~global1[_wgslsmith_index_u32(41627u, 6u)]) % vec4<u32>(32u))) % 32u);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(ceil(global0.x)), global0.x);
    var var_3 = var_1;
    return vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(1u, 6u)], vec4<u32>(1u, 13984u, 10628u, 0u)), 65829u), 15u)]), 0i, _wgslsmith_sub_i32(11333i, ~u_input.b.x), ~(~(-func_3(var_1, -24078i, false, true))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mult_vec4_i32(-abs(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 1i, 1i), func_2())), abs(-min(vec4<i32>(u_input.b.x, 1i, u_input.a, u_input.a), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 0i))));
    let var_1 = vec2<i32>(firstTrailingBit(var_0.x), countOneBits(var_0.x));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-931f, -120f, 873f) + vec3<f32>(global0.x, global0.x, -599f)), vec3<f32>(global0.x, global0.x, 797f), vec3<bool>(true, true, true))), _wgslsmith_div_vec3_f32(vec3<f32>(-169f, global0.x, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1868f))), global0.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_2.x), var_2.yz);
    let var_4 = ~_wgslsmith_div_vec2_i32(u_input.b.xx, -reverseBits(var_0.yw)) | countOneBits(countOneBits(vec2<i32>(-1i) * -vec2<i32>(1i, -8840i)));
    return ~(~(~firstLeadingBit(var_0.x)) >> (2234u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 6>();
    var var_0 = vec4<i32>(1i, func_1(), _wgslsmith_mod_i32(u_input.b.x, i32(-1i) * -(u_input.a ^ 0i)), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(firstLeadingBit(u_input.a), u_input.a), -u_input.a), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-83975i, 13099i, u_input.b.x, u_input.b.x)), vec4<i32>(-24389i, 19770i, -4543i, u_input.b.x)), select(vec4<i32>(u_input.b.x, 0i, 1i, u_input.a), vec4<i32>(u_input.b.x, 8329i, 13963i, u_input.b.x), true) << (global1[_wgslsmith_index_u32(~4294967295u, 6u)] % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, _wgslsmith_dot_vec2_i32(u_input.b.zx, select(vec2<i32>(-23376i, var_0.x), vec2<i32>(-2147483647i, 0i), false))), u_input.b), max(_wgslsmith_add_i32(_wgslsmith_mult_i32(-21816i & var_0.x, _wgslsmith_mod_i32(var_0.x, u_input.a)), -2147483647i), u_input.b.x));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-535f, -111f)), _wgslsmith_f_op_f32(global0.x - global0.x)))), _wgslsmith_f_op_f32(1211f + global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xx * vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(global0.x, global0.x))))));
    let var_3 = ~(-func_1() | -8403i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(~4294967295u), 1u, ~59422u, ~1u >> (select(17347u, 4294967295u, true) % 32u)), ~vec4<u32>(0u, 4294967295u, 9175u, 1u) >> (select(_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(0u, 6u)], vec4<u32>(31861u, 0u, 0u, 94605u)), vec4<u32>(11810u, 74394u, 41942u, 4294967295u), true) % vec4<u32>(32u))) % 32u);
    global1 = array<vec4<u32>, 6>();
    let var_4 = abs(~(~vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(27713u, 29635u, 4294967295u, 5899u), vec4<u32>(23905u, 4294967295u, 42464u, 21308u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

