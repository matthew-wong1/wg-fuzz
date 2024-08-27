struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17>;

var<private> global1: Struct_1 = Struct_1(true, 1i);

var<private> global2: bool;

var<private> global3: bool;

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    global3 = global1.a;
    global4 = global1.b;
    var var_0 = Struct_1(false || (_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, global1.b, 13588i), vec3<i32>(2147483647i, 17947i, global1.b) ^ vec3<i32>(u_input.a.x, global1.b, -21513i)) > ~(2147483647i << (arg_1.x % 32u))), _wgslsmith_mod_i32(arg_2, ~arg_2 ^ arg_2));
    return Struct_1(!(any(!vec4<bool>(false, var_0.a, false, false)) && global1.a), i32(-1i) * -18874i);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global1 = func_2(global0[_wgslsmith_index_u32(12343u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(min(61572u, arg_1), arg_1, _wgslsmith_mult_u32(73559u, arg_1)), ~vec3<u32>(u_input.d.x, 65767u, arg_1) >> (firstLeadingBit(vec3<u32>(u_input.d.x, arg_1, arg_1)) % vec3<u32>(32u))), 17u)], vec4<u32>(17491u, 0u, u_input.d.x, u_input.e), 0i);
    var var_0 = !(!vec3<bool>(any(!vec2<bool>(false, global1.a)), arg_3.a, true));
    let var_1 = 60745u;
    global2 = all(select(vec3<bool>(arg_2.a, false, all(vec4<bool>(true, global1.a, arg_0.a, global1.a)) || any(vec3<bool>(global1.a, arg_3.a, arg_0.a))), select(!select(vec3<bool>(true, arg_0.a, true), vec3<bool>(false, false, global1.a), false), vec3<bool>(false, arg_0.a, true), !any(vec3<bool>(arg_0.a, var_0.x, true))), select(vec3<bool>(true, false, true), vec3<bool>(arg_2.a, !var_0.x, true), !global1.a)));
    let var_2 = min(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_2.b, 2147483647i), -abs(vec3<i32>(-1i, -1i, -2147483647i))) & vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(arg_3.b, arg_2.b), 0i), vec3<i32>(-u_input.b, _wgslsmith_mult_i32(u_input.b, -18703i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_2.b, arg_3.b), arg_2.b)) ^ -(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_3.b, 1889i, arg_0.b), vec3<i32>(arg_0.b, 2147483647i, 16899i))));
    return 60179u == arg_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(arg_1.yw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.xx), _wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(u_input.e, 17u)])))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -463f) + arg_1.yx))), arg_1.yx, func_3(func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, arg_1.x), vec2<f32>(arg_1.x, -525f))), abs(vec4<u32>(73932u, 4294967295u, arg_2.x, 1u)), 2147483647i), max(47846u & u_input.d.x, ~arg_2.x), func_2(_wgslsmith_f_op_vec2_f32(max(arg_1.xw, vec2<f32>(-838f, -687f))), vec4<u32>(120700u, u_input.d.x, 61163u, u_input.d.x) >> (vec4<u32>(arg_2.x, 1u, 0u, arg_2.x) % vec4<u32>(32u)), _wgslsmith_mult_i32(1i, -2147483647i)), Struct_1(global1.a, -arg_0.x))))));
    let var_1 = abs(41757u);
    let var_2 = Struct_1(global1.a, global1.b);
    let var_3 = true;
    let var_4 = vec2<bool>(true, !(~1u < firstTrailingBit(88276u)));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, ~(i32(-1i) * -3380i));
    global2 = all(!func_1(min(vec3<i32>(34740i, global1.b, -2147483647i), vec3<i32>(u_input.a.x, global1.b, global1.b) ^ vec3<i32>(7179i, -48194i, 25448i)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2531f, -1336f, -1166f, -950f))), vec2<u32>(1u, ~u_input.d.x)));
    let var_1 = u_input.d.x;
    let var_2 = ~vec4<u32>(u_input.d.x, u_input.e, select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 41504u, 1u, 32703u), vec4<u32>(var_1, 40349u, u_input.d.x, 4294967295u)), true || func_3(var_0, 22575u, var_0, Struct_1(global1.a, -2147483647i))), firstLeadingBit(var_1));
    var var_3 = var_0;
    global2 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-730f)) + 1f), _wgslsmith_f_op_f32(select(-800f, _wgslsmith_f_op_f32(-992f + -563f), true))) - _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(firstTrailingBit(reverseBits(u_input.e)), 17u)], vec2<f32>(1f, 1f), vec2<bool>(true, var_0.a)))), ~reverseBits(vec4<u32>(_wgslsmith_sub_u32(16192u, u_input.d.x), firstLeadingBit(116177u), _wgslsmith_div_u32(44831u, var_1), var_2.x)), ~(~(global1.b | -var_3.b))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i) * -u_input.a), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.b, 1i, -42932i), _wgslsmith_div_i32(32584i, -1i)), i32(-1i) * -28714i)), _wgslsmith_mod_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(2671i, 1i, 1i, -1i)), vec4<i32>(u_input.c, _wgslsmith_mod_i32(u_input.b, -32522i), global1.b, -min(var_0.b, var_3.b))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(0u, 17u)]) - _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(1u, 17u)]))), ~vec4<u32>(var_1, firstLeadingBit(var_2.x), u_input.e, u_input.e), _wgslsmith_mult_i32(global1.b, abs(-1i))).b, vec2<u32>(var_2.x, ~abs(1u)), var_3.b);
}

