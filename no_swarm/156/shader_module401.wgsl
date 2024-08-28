struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 20>;

var<private> global2: vec4<i32> = vec4<i32>(-12662i, -1i, -72229i, 2147483647i);

var<private> global3: array<vec4<f32>, 27>;

var<private> global4: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec2<i32> {
    let var_0 = Struct_1(1552f, 1196f, ~1u, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, u_input.b)), global2.xw), ~vec2<i32>(-1i, global2.x) >> (vec2<u32>(arg_2, global0.e) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-2147483647i, global0.d.x), max(global2.zx, vec2<i32>(-1i, -39205i)), ~global0.d)), global0.d), ~(~4294967295u));
    global1 = array<f32, 20>();
    return global2.ww;
}

fn func_2(arg_0: bool) -> vec2<u32> {
    global1 = array<f32, 20>();
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global0.e, global0.e, global0.e) << (~vec3<u32>(u_input.c, global0.c, global0.c) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(42762u, global0.e, 0u), vec3<u32>(74874u, 55507u, 16084u)), vec3<u32>(14553u, 30704u, 0u), abs(vec3<u32>(u_input.a, 58455u, u_input.a)))), 20u)], global1[_wgslsmith_index_u32(33857u, 20u)], 52675u, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(func_3(global1[_wgslsmith_index_u32(~global0.c, 20u)], Struct_1(783f, global0.a, 2182u, vec2<i32>(u_input.b, global0.d.x), global0.c), global0.e >> (0u % 32u)), func_3(_wgslsmith_f_op_f32(exp2(global0.b)), Struct_1(global0.a, global1[_wgslsmith_index_u32(39334u, 20u)], 4294967295u, global2.wx, global0.e), 0u)), ~(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, global2.x), vec2<i32>(global0.d.x, -13797i)) ^ func_3(-1267f, Struct_1(797f, 1782f, u_input.c, vec2<i32>(u_input.b, -1i), global0.e), u_input.a))), u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.a)), vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(65605u, 20u)])), 159f)))));
    let var_2 = u_input.a;
    let var_3 = Struct_1(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, -1356f)))) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), global0.c, global0.d, ~(~var_2));
    return reverseBits(~vec2<u32>(92300u, _wgslsmith_sub_u32(~global0.c, var_0.e)));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = global1[_wgslsmith_index_u32(17600u, 20u)];
    let var_2 = ~0u;
    global1 = array<f32, 20>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, 768f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1190f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(12368u, 20u)] - -101f))))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, global0.e), vec2<u32>(4294967295u, 0u), vec2<bool>(false, true)), vec2<u32>(global0.c, var_2) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) ^ func_2(true), max(~(vec2<u32>(4294967295u, global0.e) | vec2<u32>(124415u, 4294967295u)), vec2<u32>(global0.c & 15738u, ~global0.c))), _wgslsmith_div_vec2_i32(-_wgslsmith_sub_vec2_i32(global2.xz, global2.ww >> (vec2<u32>(global0.c, u_input.a) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-global0.d, global2.yy), max(vec2<i32>(u_input.b, u_input.b), global0.d))), 271u);
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    global1 = array<f32, 20>();
    global2 = firstTrailingBit(vec4<i32>(-abs(2147483647i), _wgslsmith_mod_i32(abs(u_input.b), -47273i), 869i, -2147483647i));
    var var_0 = arg_0;
    var var_1 = ~(arg_1 >> (func_2(any(vec4<bool>(true, true, true, true))) % vec2<u32>(32u)));
    global0 = func_1();
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_4(arg_1, vec2<i32>(-1i) * -arg_0.d);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-690f - -235f), 1316f, ~arg_0.e, _wgslsmith_mult_vec2_i32(-(vec2<i32>(u_input.b, var_0.d.x) ^ (vec2<i32>(22407i, var_0.d.x) & vec2<i32>(global2.x, -36134i))), ~func_1().d), 627u);
    let var_2 = arg_1.d;
    var var_3 = arg_0.b;
    var var_4 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = true;
    global3 = array<vec4<f32>, 27>();
    global0 = func_5(Struct_1(1398f, _wgslsmith_f_op_f32(-global0.b), 0u, vec2<i32>(1i, _wgslsmith_mult_i32(global0.d.x, global2.x)), 0u), func_4(func_1(), vec2<i32>(-global2.x, min(countOneBits(global2.x), _wgslsmith_mod_i32(global0.d.x, global2.x)))));
    var var_0 = vec3<bool>(all(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), false, true);
    global3 = array<vec4<f32>, 27>();
    global0 = Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.c, 20u)]), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_mult_u32(global0.c, 4294967295u), _wgslsmith_clamp_vec2_i32(global2.wy, global2.wx >> (firstLeadingBit(vec2<u32>(33239u, 1u)) % vec2<u32>(32u)), global2.yw), 43178u | ~(~global0.c));
    let var_1 = func_5(Struct_1(462f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 20u)])), u_input.a, _wgslsmith_sub_vec2_i32(~func_1().d, ~global0.d), 9646u), Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~37564u & _wgslsmith_mult_u32(34747u, u_input.a), 20u)] + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.c, 20u)]), _wgslsmith_f_op_f32(round(-1000f)))), global1[_wgslsmith_index_u32(u_input.c, 20u)], 4294967295u, ~(-(~global0.d)), ~(~u_input.a)));
    let var_2 = var_1;
    global3 = array<vec4<f32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_1.b + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-925f))), -538f, 941f))));
}

