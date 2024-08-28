struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: array<i32, 3> = array<i32, 3>(13017i, 1i, -13986i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1020f, -1000f, true)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-236f + -759f), -374f, all(vec4<bool>(true, true, false, false)))))));
    var var_1 = all(select(vec3<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), true, true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -256f) * var_0) < -434f));
    global0 = array<u32, 3>();
    let var_2 = Struct_1((_wgslsmith_clamp_i32(arg_0.c.x, -22726i, arg_0.a) | -18197i) >> (0u % 32u), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(32541u, arg_1.x, 1u, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<u32>(arg_1.x, global0[_wgslsmith_index_u32(4297u, 3u)], 1u, u_input.a.x)), _wgslsmith_sub_u32(4294967295u, 0u), ~1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)] << (u_input.a.x % 32u)), select(arg_0.b, arg_1, true))), _wgslsmith_clamp_vec4_i32(countOneBits(reverseBits(arg_0.c)) & vec4<i32>(~global1[_wgslsmith_index_u32(10935u, 3u)], ~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 3u)], 3u)], 1983i, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.x, 3u)], 3u)], global1[_wgslsmith_index_u32(40492u, 3u)], 1i)), ~abs(arg_0.c), vec4<i32>(~_wgslsmith_clamp_i32(2147483647i, 0i, arg_2.x), 29793i, reverseBits(~(-2147483647i)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17766u, 3u)] >> (arg_0.b.x % 32u), 3u)] | _wgslsmith_add_i32(-77804i, global1[_wgslsmith_index_u32(4294967295u, 3u)]))));
    let var_3 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_2.b.x, 3u)], _wgslsmith_div_i32(arg_0.a, -35114i) & 1i, ~global1[_wgslsmith_index_u32(firstTrailingBit(arg_1.x), 3u)]), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19100i, 9518i, -11588i, -1i), arg_0.c), -1i), arg_0.c.x, 2147483647i));
    return -vec4<i32>(firstLeadingBit(~var_2.c.x) >> (~(~u_input.a.x) % 32u), firstTrailingBit(arg_0.c.x), var_2.a, -17691i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    var var_0 = arg_1;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1399f, -1870f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, var_0.a.x) + vec2<f32>(var_0.a.x, -1880f)))))), Struct_1(~arg_0.a, arg_0.b, min(firstLeadingBit(arg_1.b.c), func_3(arg_1.b, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.b.x, var_0.b.b.x, 4294967295u, 0u), vec4<u32>(arg_1.d.b.x, 1u, 38320u, 6876u)), firstLeadingBit(vec2<i32>(-8430i, -28630i))))), arg_0.c, Struct_1((1i ^ (var_0.d.c.x >> (1u % 32u))) ^ 1i, var_0.d.b, ~arg_1.d.c));
    let var_2 = Struct_1(var_0.c.x, ~(~vec4<u32>(1u, ~4066u, 35828u, 4294967295u)), -vec4<i32>(i32(-1i) * -arg_0.a, var_0.c.x, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(61783u, 3u)], 34971i), vec2<i32>(arg_1.b.a, 75308i)) << (reverseBits(4294967295u) % 32u)));
    var var_3 = Struct_1(-abs(_wgslsmith_dot_vec2_i32(-var_0.d.c.zx, var_2.c.yx)), var_1.d.b, vec4<i32>(global1[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_0.a, arg_0.a, var_2.c.x), 0i, _wgslsmith_mult_i32(1i, var_0.d.a), ~(-13179i)), vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0.c, var_2.c), ~2147483647i, _wgslsmith_mult_i32(17735i, -1i), -1i)), -37392i, _wgslsmith_add_i32(-(~var_1.b.a), ~(-14189i) ^ _wgslsmith_sub_i32(var_1.b.a, 64041i))));
    var_0 = arg_1;
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(var_2.c.www, vec3<i32>(2147483647i, 2147483647i, -23257i)), vec3<i32>(1i, _wgslsmith_div_i32(13427i, global1[_wgslsmith_index_u32(14397u, 3u)]), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 3u)], 0i))), arg_1.c.xxx), firstTrailingBit(vec3<i32>(var_2.a, ~_wgslsmith_clamp_i32(-8834i, var_0.c.x, -15434i), max(abs(var_2.c.x), _wgslsmith_mod_i32(var_2.c.x, 0i)))));
}

fn func_1(arg_0: u32) -> u32 {
    global0 = array<u32, 3>();
    var var_0 = select(_wgslsmith_div_i32(~(-global1[_wgslsmith_index_u32(4294967295u, 3u)]), 1i), global1[_wgslsmith_index_u32(0u, 3u)], all(vec3<bool>(true, true, all(vec2<bool>(false, true))))) & 0i;
    let var_1 = Struct_1(_wgslsmith_div_i32(2147483647i, -func_2(Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], vec4<u32>(47603u, arg_0, global0[_wgslsmith_index_u32(1u, 3u)], 66941u), vec4<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 3u)], 3u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], global1[_wgslsmith_index_u32(1u, 3u)], -1i)), Struct_2(vec2<f32>(471f, -477f), Struct_1(2147483647i, vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], u_input.a.x, 3398u, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec4<i32>(-22313i, global1[_wgslsmith_index_u32(arg_0, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], -2147483647i)), vec4<i32>(1i, -2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(36330u, 3u)]), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], vec4<u32>(u_input.a.x, 1u, 1u, 1u), vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 3u)], 0i, global1[_wgslsmith_index_u32(arg_0, 3u)], -2147483647i))))), vec4<u32>(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], global0[_wgslsmith_index_u32(arg_0, 3u)]), u_input.a), u_input.a << (u_input.a % vec3<u32>(32u))), _wgslsmith_sub_u32(~0u, min(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(2447u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), ~1u)), 18897u, 50629u), -firstTrailingBit(abs(~vec4<i32>(global1[_wgslsmith_index_u32(40030u, 3u)], global1[_wgslsmith_index_u32(14604u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]))));
    let var_2 = ~24833i;
    var_0 = ~var_1.c.x;
    return countOneBits(_wgslsmith_dot_vec2_u32(var_1.b.xy, ~(~vec2<u32>(u_input.a.x, u_input.a.x))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_1(69893i, ~countOneBits(select(vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 3u)], 45594u, 44481u, 1u) >> (vec4<u32>(0u, 74368u, arg_0, arg_0) % vec4<u32>(32u)), ~vec4<u32>(0u, 1u, 10681u, 0u), true)), -_wgslsmith_mod_vec4_i32(vec4<i32>(func_2(Struct_1(arg_2.x, vec4<u32>(u_input.a.x, 83743u, u_input.a.x, 1u), arg_2), Struct_2(arg_1.zy, Struct_1(2147483647i, vec4<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 45301u, 46611u, u_input.a.x), vec4<i32>(arg_2.x, -2147483647i, 0i, 19380i)), vec4<i32>(-2147483647i, 1i, -2147483647i, 0i), Struct_1(arg_2.x, vec4<u32>(3068u, 1u, arg_0, 34828u), arg_2))), ~(-18891i), -arg_2.x, arg_2.x << (u_input.a.x % 32u)), arg_2));
    global0 = array<u32, 3>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1.yz)));
    var var_2 = ~(~vec2<u32>(max(65268u, 1u), ~(~1u)));
    let var_3 = vec2<i32>(-min(var_0.c.x | 11070i, -2147483647i), _wgslsmith_mult_i32(-1i, abs(21596i))) | min(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(func_3(Struct_1(arg_2.x, vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 18752u), vec4<i32>(-2147483647i, 0i, var_0.a, global1[_wgslsmith_index_u32(26677u, 3u)])), var_0.b, arg_2.yw).zw, -vec2<i32>(arg_2.x, -3245i)), -abs(var_0.c.yw)), arg_2.zy);
    return Struct_2(var_1, Struct_1(~_wgslsmith_mult_i32(6054i ^ arg_2.x, arg_2.x), abs(~select(var_0.b, vec4<u32>(u_input.a.x, 89378u, var_0.b.x, u_input.a.x), true)), abs(vec4<i32>(reverseBits(40858i), reverseBits(0i), -10599i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -39209i), vec2<i32>(var_3.x, -14712i))))), -(-(~var_0.c) ^ min(~arg_2, arg_2)), Struct_1(var_3.x, reverseBits(~vec4<u32>(arg_0, 4294967295u, 32764u, 1u) >> (~var_0.b % vec4<u32>(32u))), max(vec4<i32>(firstLeadingBit(2147483647i), 45603i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)] << (var_2.x % 32u), func_3(Struct_1(var_3.x, var_0.b, var_0.c), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], arg_0, var_2.x, u_input.a.x), vec2<i32>(2147483647i, var_3.x)).x), -_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, var_3.x, 0i, 16935i), vec4<i32>(-2845i, arg_2.x, 0i, var_0.a)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>) -> i32 {
    global0 = array<u32, 3>();
    var var_0 = func_4(arg_0.d.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1012f, -696f, arg_0.a.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 1047f, 1061f)) * vec3<f32>(266f, -363f, arg_0.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.x, arg_0.a.x, -155f), vec3<f32>(1493f, arg_0.a.x, 480f), vec3<bool>(true, false, true)))))), vec4<i32>(0i, arg_0.d.c.x, _wgslsmith_div_i32((2147483647i ^ arg_0.b.a) | (arg_0.c.x & -55283i), global1[_wgslsmith_index_u32(4294967295u, 3u)]), abs(_wgslsmith_div_i32(select(global1[_wgslsmith_index_u32(1u, 3u)], -2147483647i, true), firstLeadingBit(arg_0.b.a))))).d;
    global1 = array<i32, 3>();
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(abs(117f));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_mult_u32(30714u, ~u_input.a.x) & func_1(u_input.a.x), vec3<f32>(512f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-494f)), _wgslsmith_f_op_f32(max(2092f, -725f)))), 591f), vec4<i32>(-8368i, -global1[_wgslsmith_index_u32(u_input.a.x, 3u)], ~global1[_wgslsmith_index_u32(65988u, 3u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)] | u_input.a.x, 3u)]) & _wgslsmith_mod_vec4_i32(~vec4<i32>(44777i, global1[_wgslsmith_index_u32(1u, 3u)], -4868i, global1[_wgslsmith_index_u32(49933u, 3u)]), reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(1u, 3u)], -11046i, -2806i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72130u, 3u)], 3u)])))), _wgslsmith_clamp_vec3_u32(u_input.a, ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(14532u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 91491u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], 46190u))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 3u)], 1124u) >> (u_input.a % vec3<u32>(32u)), ~u_input.a), u_input.a)));
    var var_1 = vec2<i32>(0i, _wgslsmith_add_i32(~var_0, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(1u), global0[_wgslsmith_index_u32(0u, 3u)]), 3u)], ~_wgslsmith_sub_i32(2147483647i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19158u, 3u)], 3u)]))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1323f), 1074f))), func_4(~(~(43678u >> (global0[_wgslsmith_index_u32(u_input.a.x, 3u)] % 32u))), vec3<f32>(1210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1694f, -322f, true)) + -1691f), -2009f), -vec4<i32>(var_0, ~var_0, 1i, global1[_wgslsmith_index_u32(~73931u, 3u)])).b, ~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, -3084i, 35294i, -2505i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 3u)], -13707i, -21446i, 1i))), Struct_1(var_0, vec4<u32>(33796u, min(61051u, _wgslsmith_add_u32(1u, 11776u)), firstLeadingBit(22270u), u_input.a.x), -_wgslsmith_div_vec4_i32(min(vec4<i32>(-17497i, global1[_wgslsmith_index_u32(4294967295u, 3u)], 2147483647i, -23038i), vec4<i32>(-21185i, 19927i, var_1.x, var_0)), -vec4<i32>(var_0, 2147483647i, -42337i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)]))));
    var var_3 = func_4(13021u, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 336f) - -1750f), 873f, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(floor(var_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1856f * var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x)))), -abs(var_2.b.c));
    global0 = array<u32, 3>();
    var var_4 = Struct_2(var_3.a, func_4(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~var_3.d.b.x, 3u)] << (~4294967295u % 32u), var_3.d.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(518f, var_2.a.x, var_2.a.x))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a.x, var_2.a.x, 2252f), vec3<f32>(-350f, var_2.a.x, -240f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2.a.x, var_3.a.x)))), -(vec4<i32>(var_3.c.x, var_3.d.a, -2147483647i, 0i) << ((vec4<u32>(1u, var_2.d.b.x, var_3.b.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9213u, 3u)], 3u)], 3u)]) >> (var_3.b.b % vec4<u32>(32u))) % vec4<u32>(32u)))).d, vec4<i32>(var_2.b.a, -(~var_3.b.c.x), func_5(var_2, var_2.b.b.xzy), _wgslsmith_mult_i32(0i, var_3.b.c.x)) | ~(-vec4<i32>(-1i, var_0, -36671i, -4864i)), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-var_2.d.c.xx, vec2<i32>(67538i, 2147483647i)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.d.b.x ^ 13331u, 3u)], 3u)]), countOneBits(_wgslsmith_mult_vec4_u32(var_3.d.b, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.b.b.x, 3u)], 3u)], var_3.d.b.x, var_3.b.b.x, 0u)) | ~var_3.d.b), abs(vec4<i32>(~(-51471i), var_1.x, func_4(u_input.a.x, vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x), var_2.c).b.a, -var_0))));
    var var_5 = var_3.d;
    var_1 = _wgslsmith_sub_vec2_i32(countOneBits(max(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, var_5.c.x), var_2.d.c.xw), -var_5.c.xz)), var_2.c.yw) ^ (max(_wgslsmith_mult_vec2_i32(abs(var_4.b.c.wz), var_3.b.c.xw), var_3.d.c.yy) >> (_wgslsmith_sub_vec2_u32(abs(var_4.b.b.yw), vec2<u32>(79681u, 23300u)) % vec2<u32>(32u)));
    let var_6 = func_4(abs(abs(~global0[_wgslsmith_index_u32(1u, 3u)]) >> ((_wgslsmith_dot_vec2_u32(var_4.b.b.yw, var_4.d.b.xw) | _wgslsmith_clamp_u32(1u, var_5.b.x, u_input.a.x)) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-345f, -634f, var_2.a.x), vec3<f32>(-294f, 529f, var_3.a.x)), vec3<f32>(var_2.a.x, -895f, 2599f)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) + _wgslsmith_div_f32(var_4.a.x, var_3.a.x)), var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.x - 648f)))), _wgslsmith_mult_vec4_i32(~vec4<i32>(1i, 29970i, var_2.d.a, var_2.c.x) << (~var_2.d.b % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(max(var_4.c, vec4<i32>(-2147483647i, -1i, 47025i, -17485i)), -var_2.d.c)) & countOneBits(vec4<i32>(-27419i, _wgslsmith_sub_i32(-20016i, var_3.c.x), -16659i, _wgslsmith_mult_i32(var_1.x, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(219f, var_2.c.xw, var_5.a << ((_wgslsmith_mod_u32(countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), _wgslsmith_mod_u32(var_6.d.b.x, 7427u)) & firstLeadingBit(~global0[_wgslsmith_index_u32(0u, 3u)])) % 32u));
}

