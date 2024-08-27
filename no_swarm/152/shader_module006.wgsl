struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> bool {
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    let var_0 = true;
    var var_1 = vec2<i32>(firstTrailingBit(min(2147483647i, u_input.c.x)), u_input.d);
    var_1 = vec2<i32>(~abs(_wgslsmith_add_i32(0i, ~28639i)), ~max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.d), -vec2<i32>(-35671i, u_input.d)), var_1.x));
    return true;
}

fn func_2(arg_0: i32, arg_1: bool) -> bool {
    let var_0 = vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, _wgslsmith_mult_u32(25856u, countOneBits(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], u_input.b.x)) & _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)] ^ 0u, 4u)], 1u << (global0[_wgslsmith_index_u32(u_input.b.x, 4u)] % 32u))));
    global0 = array<u32, 4>();
    var var_1 = Struct_1(74688u, !arg_1);
    let var_2 = Struct_4(Struct_2(select(vec2<bool>(true, true | arg_1), vec2<bool>(true, func_3(u_input.b.x)), vec2<bool>(true, 1i > arg_0)), Struct_1(max(var_0.x << (16426u % 32u), var_0.x), var_1.b), ~vec3<i32>(u_input.d, 17064i ^ arg_0, ~(-2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-489f, 467f, -2189f, -703f) - vec4<f32>(1000f, 1070f, -1000f, 132f))))), select(vec3<bool>(true, all(vec3<bool>(arg_1, var_1.b, var_1.b)) && (var_1.a == var_0.x), !any(vec4<bool>(var_1.b, arg_1, var_1.b, arg_1))), vec3<bool>(1i <= _wgslsmith_add_i32(u_input.c.x, arg_0), true, all(vec4<bool>(arg_1, true, var_1.b, arg_1))), false & ((44638u < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)]) & true)));
    let var_3 = Struct_4(var_2.a, select(var_2.b, var_2.b, !var_1.b));
    return var_2.b.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = vec2<bool>((arg_2.x || false) | any(vec4<bool>(true, arg_2.x, true, arg_2.x)), func_2(u_input.d, arg_2.x) && (true & all(select(vec4<bool>(true, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), arg_2.x))));
    global0 = array<u32, 4>();
    var var_1 = Struct_4(Struct_2(select(var_0, vec2<bool>(var_0.x, any(vec4<bool>(true, var_0.x, true, arg_2.x))), vec2<bool>(true, false)), Struct_1(global0[_wgslsmith_index_u32(~reverseBits(arg_0.x), 4u)], any(select(vec2<bool>(false, arg_2.x), var_0, true))), reverseBits(reverseBits(min(arg_3, arg_3))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + 1443f), _wgslsmith_f_op_f32(f32(-1f) * -2186f), 771f, _wgslsmith_f_op_f32(-1626f + -178f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1503f, -647f, 309f, 861f) * vec4<f32>(425f, 202f, -271f, 1701f)))))), !(!(!select(vec3<bool>(true, false, false), arg_2, arg_2))));
    global0 = array<u32, 4>();
    var_1 = Struct_4(var_1.a, !var_1.b);
    return Struct_3(arg_3.xy);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(1u, 4u)], arg_0.x < _wgslsmith_add_u32(abs(0u), (0u >> (1u % 32u)) >> (arg_2.a.b.a % 32u)));
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    return Struct_2(arg_2.b.xy, Struct_1(~(~35451u), true), vec3<i32>(select(u_input.c.x, _wgslsmith_dot_vec3_i32(~arg_2.a.c, arg_2.a.c), all(vec4<bool>(true, false, false, var_0.b))), ~countOneBits(u_input.d), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2.a.c.x, -1i), arg_2.a.c.xz >> (~u_input.a.yw % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_2.a.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a.d) + arg_2.a.d))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.d.x, 1397f, -703f, arg_2.a.d.x) * arg_2.a.d), _wgslsmith_f_op_vec4_f32(arg_2.a.d * arg_2.a.d), var_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<u32>(~reverseBits(1u), _wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.wwx, vec3<u32>(47607u, 29265u, global0[_wgslsmith_index_u32(1u, 4u)])), 4u)])), func_1(u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(26088u, ~global0[_wgslsmith_index_u32(93036u, 4u)]), ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 4u)], u_input.b.x)), 4u)], vec3<bool>(false != (u_input.b.x == 4294967295u), false, true), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 2147483647i, u_input.d, -2147483647i), vec4<i32>(u_input.c.x, -2147483647i, 1i, 1i)), ~u_input.c.x, 0i)), Struct_4(Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(0u, true), -vec3<i32>(-43972i, -1i, 0i), _wgslsmith_div_vec4_f32(vec4<f32>(1378f, -419f, -1122f, -655f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1716f, -271f, -708f, 283f), vec4<f32>(431f, -115f, 595f, 126f), false)))), vec3<bool>(true, true, true)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 2147483647i, u_input.d, 2147483647i)), ~vec4<i32>(1i, u_input.c.x, 1i, 1i)), _wgslsmith_add_i32(1i >> (global0[_wgslsmith_index_u32(14975u, 4u)] % 32u), _wgslsmith_div_i32(u_input.c.x, u_input.d))) & u_input.d);
    let var_1 = _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, var_0.c.x, -2147483647i, u_input.c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, u_input.c.x, var_0.c.x) ^ vec4<i32>(25095i, var_0.c.x, 42678i, u_input.c.x), firstTrailingBit(vec4<i32>(u_input.d, -17053i, -1i, -14614i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.d), vec4<i32>(38357i, -2147483647i, -35759i, -1i), vec4<i32>(u_input.d, var_0.c.x, u_input.c.x, u_input.c.x)))), _wgslsmith_clamp_i32(var_0.c.x, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(33724i, u_input.d, -28061i, -1i)), select(vec4<i32>(-23533i, u_input.d, u_input.d, var_0.c.x) << (vec4<u32>(93227u, var_0.b.a, var_0.b.a, 40503u) % vec4<u32>(32u)), ~vec4<i32>(var_0.c.x, 2147483647i, -1i, var_0.c.x), func_2(var_0.c.x, true))), i32(-1i) * -47420i));
    var var_2 = Struct_4(func_4(~vec2<u32>(func_4(u_input.b, Struct_3(vec2<i32>(u_input.c.x, u_input.c.x)), Struct_4(Struct_2(vec2<bool>(false, false), var_0.b, var_0.c, vec4<f32>(var_0.d.x, 389f, var_0.d.x, 734f)), vec3<bool>(var_0.a.x, var_0.a.x, true)), 10460i).b.a, reverseBits(188u)), func_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 32168u, global0[_wgslsmith_index_u32(4294967295u, 4u)], var_0.b.a), ~vec4<u32>(u_input.a.x, 0u, var_0.b.a, 1u)), global0[_wgslsmith_index_u32(20119u, 4u)], vec3<bool>(true, var_0.b.b, var_0.b.b), var_0.c), Struct_4(Struct_2(!var_0.a, Struct_1(u_input.b.x, var_0.b.b), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1, var_1, var_1), vec3<i32>(var_0.c.x, u_input.c.x, -16620i)), _wgslsmith_f_op_vec4_f32(-var_0.d)), vec3<bool>(true, true, true)), u_input.c.x), select(select(select(!vec3<bool>(false, var_0.b.b, false), vec3<bool>(false, var_0.a.x, true), true), vec3<bool>(!var_0.a.x, var_0.a.x | true, all(vec4<bool>(var_0.a.x, true, var_0.a.x, true))), !var_0.b.b), !(!vec3<bool>(false, var_0.b.b, var_0.a.x)), false));
    let var_3 = func_1(max(u_input.a, vec4<u32>(1u, ~u_input.b.x, max(var_0.b.a, 1042u), func_4(vec2<u32>(var_0.b.a, 1u), Struct_3(vec2<i32>(var_0.c.x, var_0.c.x)), Struct_4(Struct_2(vec2<bool>(var_2.a.a.x, var_0.a.x), var_0.b, var_0.c, vec4<f32>(-1339f, -267f, 1047f, var_2.a.d.x)), var_2.b), -2147483647i).b.a)) | abs(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(19945u, var_0.b.a, 51197u, var_2.a.b.a))), 1u, select(!var_2.b, !(!var_2.b), true), abs(~(-vec3<i32>(-1i, -14185i, 1i)) ^ max(-var_2.a.c, vec3<i32>(46630i, var_2.a.c.x, var_0.c.x) ^ var_0.c)));
    var var_4 = Struct_4(var_2.a, vec3<bool>(var_0.a.x, any(func_4(~vec2<u32>(global0[_wgslsmith_index_u32(7956u, 4u)], global0[_wgslsmith_index_u32(2125u, 4u)]), func_1(vec4<u32>(4294967295u, 0u, 134301u, var_2.a.b.a), var_0.b.a, vec3<bool>(var_2.b.x, var_0.a.x, false), vec3<i32>(var_2.a.c.x, 8713i, 5350i)), Struct_4(var_2.a, vec3<bool>(var_0.b.b, var_0.b.b, var_2.b.x)), var_1).a), !var_0.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_i32(1i, -1i), 18690i ^ _wgslsmith_mult_i32(-1i & var_2.a.c.x, 0i)), ~(~vec4<u32>(4511u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.a.zy), ~1246u, ~4294967295u)), ~select(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 4u)], var_2.a.b.a), u_input.a.ww), select(u_input.b, countOneBits(vec2<u32>(4294967295u, var_0.b.a)), var_4.a.b.b | var_0.a.x), func_3(1u)));
}

