struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1i, false), vec2<f32>(188f, 963f), vec4<u32>(1u, 32332u, 4294967295u, 4294967295u));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global3: array<vec4<f32>, 16>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> vec4<bool> {
    global0 = Struct_2(Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(44784i, arg_2), vec2<i32>(23327i, -1i)) << (1u % 32u), all(select(select(vec3<bool>(arg_0.x, global1.x, arg_1.b), vec3<bool>(global0.a.b, global0.a.b, global0.a.b), global1.x), vec3<bool>(false, arg_0.x, false), arg_1.b))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global0.b, _wgslsmith_div_vec2_f32(global0.b, vec2<f32>(global0.b.x, -362f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.b.x, global0.b.x), vec2<f32>(1f, 1f))))))), ~_wgslsmith_clamp_vec4_u32(global0.c, _wgslsmith_mult_vec4_u32(global0.c, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, global0.c.x, 71324u), global0.c)), max(vec4<u32>(global0.c.x, 3987u, global0.c.x, global0.c.x), _wgslsmith_sub_vec4_u32(global0.c, global0.c))));
    global2 = array<vec2<bool>, 16>();
    global1 = select(select(vec2<bool>(true, true), arg_0, select(vec2<bool>(arg_1.b, true), select(vec2<bool>(global0.a.b, global1.x), !arg_0, vec2<bool>(global1.x, global1.x)), arg_0)), !global2[_wgslsmith_index_u32(countOneBits(35006u), 16u)], !select(!(!arg_0), !global2[_wgslsmith_index_u32(select(95920u, 7038u, global1.x), 16u)], true));
    var var_0 = Struct_3(2147483647i, !(!select(!vec3<bool>(global0.a.b, global1.x, true), vec3<bool>(true, arg_0.x, global0.a.b), !vec3<bool>(global1.x, true, false))), Struct_2(arg_1, global0.b, ~global0.c));
    var var_1 = u_input.a;
    return vec4<bool>(true | all(vec4<bool>(true, true, arg_2 >= global0.a.a, true)), all(select(!vec3<bool>(true, arg_0.x, arg_0.x), var_0.b, vec3<bool>(true, 1000f <= var_0.c.b.x, false))), !(!(var_0.c.a.b & true)), all(var_0.b));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_clamp_vec4_i32(select(~_wgslsmith_add_vec4_i32(~vec4<i32>(arg_3.a.a, -2147483647i, -16732i, arg_0.a), vec4<i32>(1i, 9052i, 2147483647i, arg_3.a.a)), ~(-vec4<i32>(global0.a.a, -51201i, 7482i, arg_0.a)), !(!func_3(vec2<bool>(true, global1.x), arg_3.a, arg_3.a.a))), ~((vec4<i32>(-1i, arg_0.c.a.a, u_input.a, -1i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.a.a, -44643i, 38306i, arg_0.c.a.a), vec4<i32>(u_input.a, -16422i, 35640i, arg_3.a.a), vec4<i32>(global0.a.a, global0.a.a, -2147483647i, 2621i))) >> (abs(global0.c) % vec4<u32>(32u))), reverseBits(select(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.a, global0.a.a, -798i, u_input.a) ^ vec4<i32>(-22858i, u_input.a, global0.a.a, 1i), vec4<i32>(32440i, 1i, arg_3.a.a, 0i) ^ vec4<i32>(-76824i, global0.a.a, -2147483647i, global0.a.a)), max(vec4<i32>(0i, arg_3.a.a, 13689i, arg_0.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -52080i, -32585i), vec4<i32>(71370i, arg_0.c.a.a, -1i, u_input.a), vec4<i32>(1i, 14968i, global0.a.a, u_input.a))), select(vec4<bool>(true, true, true, false), select(vec4<bool>(arg_3.a.b, true, arg_0.c.a.b, true), vec4<bool>(true, arg_0.b.x, false, true), vec4<bool>(global1.x, arg_3.a.b, true, true)), vec4<bool>(true, arg_0.b.x, true, global0.a.b)))));
    let var_1 = _wgslsmith_f_op_f32(-global0.b.x);
    let var_2 = vec4<bool>(!(!(_wgslsmith_f_op_f32(abs(-1000f)) == global0.b.x)), any(select(select(!global2[_wgslsmith_index_u32(global0.c.x, 16u)], global2[_wgslsmith_index_u32(arg_3.c.x, 16u)], arg_0.b.zy), vec2<bool>(arg_3.a.a == u_input.a, global0.a.b), arg_0.b.zy)), true, true);
    global0 = Struct_2(Struct_1(global0.a.a, select(false, global1.x && true, var_2.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(global0.b)))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b.x, 637f)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.b.x), arg_3.b.x), arg_0.b.yz)), vec4<u32>(~0u, 38776u, abs(arg_3.c.x), _wgslsmith_add_u32(abs(countOneBits(2751u)), 114273u)));
    let var_3 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(min(arg_3.c.x, 4294967295u), ~(~arg_3.c.x), _wgslsmith_add_u32(4294967295u, firstTrailingBit(4294967295u)), 17749u)), arg_0.c.c, vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 1u), global0.c.x)), ~(~1u & _wgslsmith_clamp_u32(arg_2, 3305u, 1u)), _wgslsmith_mod_u32(~(~arg_0.c.c.x), firstTrailingBit(min(4294967295u, 29785u))), ~_wgslsmith_div_u32(min(arg_3.c.x, arg_3.c.x), max(arg_0.c.c.x, global0.c.x))));
    return 0i;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = global0.b.x;
    var var_1 = 1053f;
    let var_2 = Struct_1(max(~_wgslsmith_mult_i32(func_2(Struct_3(-1i, vec3<bool>(global0.a.b, true, global1.x), Struct_2(Struct_1(global0.a.a, false), vec2<f32>(global0.b.x, global0.b.x), global0.c)), vec3<f32>(global0.b.x, -1625f, -729f), global0.c.x, Struct_2(arg_1, global0.b, global0.c)), -1i), abs(1i)), 2147483647i < _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~(-2147483647i), ~u_input.a, 18801i), func_2(Struct_3(global0.a.a, vec3<bool>(global0.a.b, false, true), Struct_2(Struct_1(-2147483647i, global1.x), global0.b, vec4<u32>(2124u, global0.c.x, global0.c.x, 33462u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-689f, 441f, 182f) - vec3<f32>(global0.b.x, 675f, 921f)), global0.c.x, Struct_2(arg_1, global0.b, global0.c))));
    let var_3 = _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(51521u, 16u)] + global3[_wgslsmith_index_u32(74282u, 16u)]);
    let var_4 = vec4<i32>(func_2(Struct_3(reverseBits(u_input.a), vec3<bool>(true, true, true), Struct_2(Struct_1(global0.a.a, var_2.b), vec2<f32>(-267f, var_3.x), vec4<u32>(39478u, global0.c.x, global0.c.x, 38881u))), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(round(-802f)), global0.b.x), 1u, Struct_2(var_2, _wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, global0.b.x), vec2<f32>(var_3.x, var_3.x)), vec4<u32>(6402u, global0.c.x, global0.c.x, global0.c.x))), -2147483647i, -1i, -50375i << (global0.c.x % 32u)) | countOneBits(vec4<i32>(-2147483647i, 2147483647i, arg_1.a, 1i));
    return vec3<i32>(~(-global0.a.a), _wgslsmith_dot_vec2_i32(var_4.zw, _wgslsmith_add_vec2_i32(countOneBits(-vec2<i32>(1i, -5620i)), vec2<i32>(-10808i, ~arg_1.a))), u_input.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: f32) -> bool {
    global0 = arg_2.c;
    let var_0 = !func_3(!arg_2.b.zx, Struct_1(_wgslsmith_mod_i32(arg_2.a, u_input.a) | 21512i, global0.a.a != arg_2.c.a.a), 0i).x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(round(-1000f))))))), 656f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(509f * -422f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-295f, arg_2.c.b.x))), _wgslsmith_f_op_f32(round(-1208f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(705f - global0.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.c.b.x * var_1.x))), var_0)), arg_2.c.b.x, -236f));
    global1 = arg_2.b.zy;
    return any(vec2<bool>(global0.a.b || (!var_0 || (arg_3 > var_1.x)), !any(select(vec3<bool>(global0.a.b, false, var_0), vec3<bool>(true, arg_2.b.x, global1.x), global0.a.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(global0.c.x, _wgslsmith_div_u32(global0.c.x, ~(~57997u)) & _wgslsmith_div_u32(_wgslsmith_mult_u32(global0.c.x, ~global0.c.x), 1u << (1u % 32u)));
    let var_1 = Struct_1(global0.a.a, func_4(func_1(global0.a.b, global0.a), min(-vec4<i32>(u_input.a, global0.a.a, global0.a.a, -22955i), ~vec4<i32>(1i, 2147483647i, u_input.a, -2147483647i)), Struct_3(_wgslsmith_sub_i32(abs(0i), global0.a.a & 58436i), select(!vec3<bool>(global1.x, global1.x, false), vec3<bool>(global0.a.b, global1.x, true), global0.b.x >= global0.b.x), Struct_2(Struct_1(u_input.a, global1.x), global0.b, global0.c)), global0.b.x));
    global1 = global2[_wgslsmith_index_u32(69288u, 16u)];
    let var_2 = Struct_3(firstTrailingBit(u_input.a), select(!select(!vec3<bool>(global1.x, global0.a.b, global1.x), vec3<bool>(true, true, true), global1.x && global1.x), vec3<bool>(true, var_1.b, true), vec3<bool>(true, false, func_4(func_1(false, global0.a), select(vec4<i32>(2147483647i, 2147483647i, -1i, global0.a.a), vec4<i32>(var_1.a, -1i, u_input.a, u_input.a), var_1.b), Struct_3(-1i, vec3<bool>(global0.a.b, false, var_1.b), Struct_2(Struct_1(var_1.a, var_1.b), vec2<f32>(global0.b.x, global0.b.x), vec4<u32>(1u, var_0, 0u, 47650u))), _wgslsmith_f_op_f32(global0.b.x + global0.b.x)))), Struct_2(var_1, global0.b, _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 68003u, 4294967295u, var_0) ^ vec4<u32>(global0.c.x, 4294967295u, var_0, global0.c.x), vec4<u32>(var_0, _wgslsmith_mod_u32(var_0, var_0), ~27822u, ~1u))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(359f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f), _wgslsmith_div_f32(global0.b.x, -581f)))) * global0.b.x)));
    var var_4 = var_2.c.a;
    let var_5 = var_1;
    global3 = array<vec4<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(363f, 524f, -971f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1874f, global0.b.x, global0.b.x) + vec3<f32>(1000f, -682f, -1000f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_f32(-var_2.c.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.c.b.x, var_2.c.b.x, global0.b.x), vec3<f32>(global0.b.x, -1016f, var_2.c.b.x), false)))), vec3<f32>(_wgslsmith_div_f32(var_2.c.b.x, -1000f), -162f, global0.b.x), var_2.b)), false)), abs(var_1.a), 1i, max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_4.a, var_2.a, -2147483647i), vec3<i32>(var_5.a, var_1.a, var_2.a))) << (var_2.c.c.ywy % vec3<u32>(32u)), ~vec3<i32>(var_2.a, var_4.a, -var_1.a)));
}

