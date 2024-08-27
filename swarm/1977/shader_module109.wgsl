struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<vec3<i32>, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = vec2<bool>(!arg_0, select(arg_0, arg_0, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)] >= _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60217u, 15u)], 15u)], 18347u, 40312u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(34941u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)]), vec4<u32>(4294967295u, 19671u, global0[_wgslsmith_index_u32(4294967295u, 15u)], 0u)))));
    let var_1 = ~(-_wgslsmith_add_vec4_i32(-(vec4<i32>(arg_1, arg_1, u_input.a, u_input.a) << (vec4<u32>(53432u, 54944u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 45298u) % vec4<u32>(32u))), vec4<i32>(u_input.a, -9858i, arg_1 << (4294967295u % 32u), -arg_1)));
    var var_2 = Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(~0u, 15u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 15u)], select(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], arg_0)) ^ firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 420u, 3367u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53356u, 15u)], 15u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56086u, 15u)], 15u)], 15u)]))), global0[_wgslsmith_index_u32(~1u, 15u)] | (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(48096u, 15u)], 6332u) << (~global0[_wgslsmith_index_u32(3223u, 15u)] % 32u))), -(_wgslsmith_mod_vec2_i32(firstLeadingBit(var_1.yy), _wgslsmith_div_vec2_i32(var_1.yx, var_1.yy)) >> (~(~vec2<u32>(4294967295u, 39010u)) % vec2<u32>(32u))), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(2180u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)], 15u)]), ~0u) & ~global0[_wgslsmith_index_u32(4294967295u, 15u)], vec2<i32>(i32(-1i) * -u_input.a, u_input.a));
    let var_3 = var_2.a;
    return (_wgslsmith_div_u32(11819u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(45105u, firstLeadingBit(28490u)), 15u)]) & _wgslsmith_dot_vec3_u32(var_2.a, var_2.a)) & _wgslsmith_div_u32(~_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(var_2.a.x, 15u)] << (var_3.x % 32u)), 109685u);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(func_3(true, _wgslsmith_mult_i32(18021i, -12277i)), ~39781u, func_3(true, ~u_input.a))), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 15u)], 1u, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58737u, 15u)], 15u)], 15u)], 15u)])), countOneBits(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29658u, 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(0u, 15u)]))));
    let var_1 = vec4<i32>(reverseBits(_wgslsmith_div_i32(select(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(2796i, 9386i, u_input.a)), true), min(u_input.a >> (28895u % 32u), 0i))), 7418i, u_input.a, reverseBits(1i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(454f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1152f) + _wgslsmith_f_op_f32(1000f * 292f)), _wgslsmith_f_op_f32(-1000f * -874f)))));
    let var_3 = Struct_1(countOneBits(vec3<u32>(~(~var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, var_0.x), firstTrailingBit(vec4<u32>(var_0.x, 1u, 0u, 45831u))), ~var_0.x)), ~var_1.yx, 1u, _wgslsmith_div_vec2_i32(var_1.zx, min(-var_1.ww, _wgslsmith_div_vec2_i32(-var_1.xw, max(var_1.yw, vec2<i32>(37636i, 0i))))));
    var_0 = vec3<u32>(~8401u, ~(_wgslsmith_add_u32(var_3.a.x, ~global0[_wgslsmith_index_u32(41380u, 15u)]) >> (var_3.a.x % 32u)), ~0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1045f));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> i32 {
    let var_0 = arg_1.x;
    let var_1 = global0[_wgslsmith_index_u32(abs(19202u), 15u)];
    global1 = array<vec3<i32>, 2>();
    let var_2 = vec3<f32>(-985f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-691f)), _wgslsmith_f_op_f32(f32(-1f) * -344f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))));
    var var_3 = Struct_2(Struct_1(vec3<u32>(0u, _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 0u), 22071u), vec2<i32>(-1i, -14172i), 1u, countOneBits(vec2<i32>(~(-41764i), i32(-1i) * -1i))), Struct_1(select(vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 60411u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 19672u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)]), vec4<u32>(global0[_wgslsmith_index_u32(37224u, 15u)], 0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)]))), ~(~vec3<u32>(102239u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90325u, 15u)], 15u)], 1u)), arg_1.yzw), _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.a, u_input.a), ~(vec2<i32>(-1i, arg_0) << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], global0[_wgslsmith_index_u32(13381u, 15u)]) % vec2<u32>(32u)))), ~reverseBits(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 63733u)), vec2<i32>(-67748i, arg_0)), Struct_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(6187u, 18930u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)]), firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(20311u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], 36310u))), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0, 0i), vec3<i32>(-59304i, arg_0, u_input.a)), ~arg_0), 0u, max(vec2<i32>(24372i, reverseBits(-1i)), vec2<i32>(-5672i, arg_0))), Struct_1(~(~(~vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]))), ~abs(vec2<i32>(32865i, 14785i) ^ vec2<i32>(arg_0, u_input.a)), _wgslsmith_add_u32(12022u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(14791u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18305u, 15u)], 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68768u, 15u)], 15u)], 15u)], 28790u, 4294967295u)) >> (0u % 32u)), ~abs(-vec2<i32>(1i, 2147483647i))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(31233u, 15u)], 15u)], 15u)]);
    return select(_wgslsmith_div_i32(_wgslsmith_mod_i32(56717i, ~_wgslsmith_mod_i32(arg_0, arg_0)), -1i >> (min(_wgslsmith_sub_u32(43579u, var_3.b.c), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)]) % 32u)), i32(-1i) * -u_input.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -55958i;
    let var_1 = !vec4<bool>(true, any(vec2<bool>(false, true)) & (select(true, true, true) | true), true, !(_wgslsmith_dot_vec2_i32(vec2<i32>(-34140i, var_0), vec2<i32>(-24560i, -2147483647i)) > select(2147483647i, -35323i, true)));
    let var_2 = Struct_1(abs(vec3<u32>(1u, firstLeadingBit(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(12804u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 54385u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 5459u), vec4<u32>(1u, global0[_wgslsmith_index_u32(5022u, 15u)], 9273u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 15u)])))), vec2<i32>(max(~max(u_input.a, var_0), ~_wgslsmith_mod_i32(u_input.a, u_input.a)), ~(~(-u_input.a))), 14179u, vec2<i32>(-func_1(-u_input.a, vec4<bool>(true, false, var_1.x, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0, countOneBits(u_input.a), u_input.a >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)] % 32u), ~u_input.a), -vec4<i32>(4293i, u_input.a, 20534i, 17307i))));
    let var_3 = abs(var_2.a.xx);
    global0 = array<u32, 15>();
    var var_4 = Struct_2(var_2, Struct_1(vec3<u32>(min(0u, 14450u) | ~var_3.x, var_2.a.x, var_3.x), vec2<i32>(0i, var_2.b.x), abs(56676u), ~(~vec2<i32>(1i, var_2.b.x))), var_2, var_2, min(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~var_2.a.zx, ~var_3), (var_2.c | 31502u) << (~0u % 32u)), var_2.c));
    let var_5 = Struct_2(var_4.d, var_4.b, Struct_1(var_4.a.a, ~(firstTrailingBit(var_2.b) | ~vec2<i32>(0i, var_2.d.x)), global0[_wgslsmith_index_u32(1u, 15u)], var_2.d), Struct_1(vec3<u32>(_wgslsmith_mod_u32(1u, 62763u), ~4294967295u, global0[_wgslsmith_index_u32(96146u, 15u)] ^ 1u) << (_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(0u, 0u, var_2.c)), var_4.c.a) % vec3<u32>(32u)), vec2<i32>(var_2.d.x, 0i), 7383u, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_4.a.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_4.b.b.x), var_2.d)), ~vec2<i32>(u_input.a, 0i))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(var_3.x, 2u)], vec3<i32>(i32(-1i) * -var_4.b.d.x, -12135i, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(685f * _wgslsmith_f_op_f32(-2117f + _wgslsmith_f_op_f32(trunc(983f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1843f, -1000f, -610f, 742f)))))));
}

