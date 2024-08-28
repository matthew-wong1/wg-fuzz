struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 27> = array<u32, 27>(80005u, 4294967295u, 0u, 1u, 66405u, 1u, 86744u, 92181u, 4294967295u, 3442u, 10346u, 1u, 4294967295u, 4294967295u, 34247u, 1996u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 38566u, 1u, 20876u, 41662u, 53533u, 14853u, 4294967295u);

var<private> global2: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    global1 = array<u32, 27>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -257f)));
}

fn func_2() -> i32 {
    var var_0 = -973f;
    var_0 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) + _wgslsmith_f_op_f32(func_3(Struct_2(7388u), firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 4311u))))) - -534f)));
    let var_1 = -firstLeadingBit(countOneBits(-_wgslsmith_mult_vec3_i32(u_input.a.yzz, vec3<i32>(u_input.a.x, 2147483647i, 2147483647i))));
    var var_2 = reverseBits(abs(vec4<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 27u)], 27u)], 2573u, max(global1[_wgslsmith_index_u32(8744u, 27u)], 4294967295u), min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41451u, 27u)], 27u)], 0u)))) ^ _wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(30258u, 27u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51285u, 27u)], 27u)])), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], 5494u) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)]) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8266u, 27u)], 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 27u)], 1u, 59669u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], 1u, global1[_wgslsmith_index_u32(25u, 27u)]))), _wgslsmith_add_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(13499u, 27u)], 12216u), ~vec4<u32>(51814u, global1[_wgslsmith_index_u32(20288u, 27u)], global1[_wgslsmith_index_u32(5271u, 27u)], 4294967295u))));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-652f, _wgslsmith_f_op_f32(sign(-614f)))))))));
    return max(_wgslsmith_sub_i32(~(~(~1i)), var_1.x), ~0i);
}

fn func_1() -> vec4<f32> {
    var var_0 = 4396i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_2 = abs(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(1u, 19440u, global1[_wgslsmith_index_u32(4294967295u, 27u)], 16256u) | vec4<u32>(global1[_wgslsmith_index_u32(1420u, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 0u, 675u)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(46738u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45343u, 27u)], 27u)], 27u)]), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(112234u, 27u)], 27u)], 27u)], 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)]), true), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 4294967295u, 34166u, 7765u)))) << (vec4<u32>(global1[_wgslsmith_index_u32(firstLeadingBit(0u), 27u)], firstTrailingBit(24382u) ^ ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26349u, 27u)], 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(~(~4294967295u), 27u)], 0u, true), 27u)], ~global1[_wgslsmith_index_u32(countOneBits(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6260u, 27u)], 27u)], 27u)]), 27u)]) % vec4<u32>(32u));
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(abs(func_2()), (1i << (~global1[_wgslsmith_index_u32(30258u, 27u)] % 32u)) | u_input.a.x, ~1i, -24267i), u_input.a);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-450f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(536f - 625f)) - _wgslsmith_f_op_f32(-144f + -844f)))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-644f, -352f, 667f, -896f))), vec4<f32>(859f, -1202f, 540f, 284f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1011f, 1385f, 1380f, 489f) + vec4<f32>(277f, 2132f, -672f, -1261f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(296f, -406f, -615f, 671f), vec4<f32>(-302f, 543f, 1000f, 762f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 450f, 471f, -1042f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = ~firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], 1u, global1[_wgslsmith_index_u32(69255u, 27u)], 1u) >> ((vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41625u, 27u)], 27u)], 0u, 4294967295u) ^ vec4<u32>(86460u, 0u, global1[_wgslsmith_index_u32(30454u, 27u)], 0u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14666u, 27u)], 27u)], 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61219u, 27u)], 27u)], 27u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(5094u, global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28617u, 27u)], 27u)]), vec4<u32>(global1[_wgslsmith_index_u32(34352u, 27u)], 4444u, 29621u, global1[_wgslsmith_index_u32(1u, 27u)])))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(336f, 1790f, 788f, 201f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, -1172f, -331f, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * vec4<f32>(-474f, 1000f, -600f, 1000f)))))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)]), ~vec3<u32>(global1[_wgslsmith_index_u32(37773u, 27u)], 1u, 4294967295u)), countOneBits(var_1) ^ var_1), _wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(9505u, 27u)], 0u), 27u)], ~global1[_wgslsmith_index_u32(var_1, 27u)]) << (~firstLeadingBit(34476u) % 32u), select(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(var_1, 35433u), reverseBits(4294967295u)), 27u)], ~(~38272u), !all(vec4<bool>(true, true, true, true)))));
    var_0 = any(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))) | (-1230f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-108f)) - 114f));
    let var_3 = false;
    var var_4 = _wgslsmith_mod_vec3_i32(u_input.a.xzz, vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(select(_wgslsmith_dot_vec3_i32(u_input.a.zyx, vec3<i32>(u_input.a.x, u_input.a.x, -40259i)), ~var_4.x, true), 1i, reverseBits(~u_input.a.x))));
}

