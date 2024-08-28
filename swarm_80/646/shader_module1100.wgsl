struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: array<bool, 29> = array<bool, 29>(false, true, true, false, false, false, true, true, false, false, false, false, true, true, true, false, true, false, false, false, false, false, true, true, true, true, true, true, false);

var<private> global1: array<i32, 18> = array<i32, 18>(0i, 2147483647i, 1221i, -5439i, i32(-2147483648), 45783i, 2147483647i, -9417i, -20351i, 76654i, 2147483647i, -33659i, -34399i, -1i, -1i, -15066i, 0i, -46303i);

var<private> global2: vec3<f32>;

var<private> global3: array<vec3<f32>, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: i32) -> vec2<u32> {
    return select(select(abs(~(vec2<u32>(1u, arg_1) & vec2<u32>(25781u, 44625u))), ~abs(~vec2<u32>(arg_1, arg_1)), any(vec3<bool>(global2.x != global2.x, false, true))), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(23381u, 3911u) | ~arg_1, arg_1), vec2<u32>(3838u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 4294967295u, 4294967295u) ^ vec3<u32>(arg_1, 0u, arg_1), vec3<u32>(arg_1, arg_1, arg_1)))), vec2<bool>(true, global0[_wgslsmith_index_u32(select(arg_1 | 2961u, arg_1, !global0[_wgslsmith_index_u32(arg_1, 29u)]), 29u)] && global0[_wgslsmith_index_u32(30666u, 29u)]));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, arg_3.x, 45505u), ~min(abs(vec3<u32>(4294967295u, arg_3.x, 4294967295u)), ~vec3<u32>(28473u, 0u, 1u)) | vec3<u32>(1u, ~arg_3.x, 30019u));
    global3 = array<vec3<f32>, 11>();
    var var_2 = arg_0;
    let var_3 = Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1, var_1, 4294967295u), ~vec4<u32>(var_1, 10703u, 78727u, var_1) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 21293u, 4294967295u, var_1), abs(vec4<u32>(66694u, 86222u, arg_3.x, var_1))) % vec4<u32>(32u))), arg_2, select(((vec4<i32>(16427i, 26377i, global1[_wgslsmith_index_u32(var_1, 18u)], u_input.b.x) | vec4<i32>(u_input.b.x, u_input.b.x, 0i, 41411i)) | _wgslsmith_add_vec4_i32(vec4<i32>(33099i, 13266i, 53103i, u_input.a), vec4<i32>(15313i, global1[_wgslsmith_index_u32(var_1, 18u)], -2147483647i, -2147483647i))) ^ min(~vec4<i32>(1i, global1[_wgslsmith_index_u32(arg_3.x, 18u)], u_input.b.x, 0i), vec4<i32>(u_input.a, u_input.a, u_input.b.x, -28597i) >> (vec4<u32>(var_1, 0u, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(35620u, 18u)], global1[_wgslsmith_index_u32(arg_3.x, 18u)], -1i, 34227i) >> (vec4<u32>(4294967295u, var_1, arg_3.x, 49118u) % vec4<u32>(32u)), vec4<i32>(max(u_input.b.x, 1i), global1[_wgslsmith_index_u32(arg_3.x, 18u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 41027i, global1[_wgslsmith_index_u32(arg_3.x, 18u)], 94704i), vec4<i32>(-68406i, -2147483647i, 2147483647i, global1[_wgslsmith_index_u32(var_1, 18u)])), -4403i)), true), Struct_1(~global1[_wgslsmith_index_u32(arg_3.x, 18u)] == -18332i, arg_0.b, var_0.b.zxz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(var_1, 11u)] + _wgslsmith_f_op_vec3_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_3.x, 0u), 11u)])))));
    return 2147483647i;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = Struct_1(var_0.x, select(arg_0, select(vec4<bool>(true, arg_0.x, 913f >= arg_1, global0[_wgslsmith_index_u32(0u, 29u)]), var_0, !(!var_0.x)), global0[_wgslsmith_index_u32(34836u, 29u)]), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(12138u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], true)), vec3<bool>(false, false, !(!global0[_wgslsmith_index_u32(32274u, 29u)])), true));
    var var_2 = reverseBits(vec3<i32>(-7809i, func_4(Struct_1(arg_0.x, var_1.b, arg_0.yzx), true, Struct_1(var_1.b.x, vec4<bool>(var_0.x, arg_0.x, global0[_wgslsmith_index_u32(29773u, 29u)], var_1.c.x), vec3<bool>(global0[_wgslsmith_index_u32(0u, 29u)], false, true)), func_3(Struct_1(true, arg_0, arg_0.zww), 4294967295u, vec2<bool>(global0[_wgslsmith_index_u32(27053u, 29u)], var_0.x), 1i)), -_wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 18u)], 0i)) ^ _wgslsmith_div_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(9092u, 18u)], 18615i, 16780i) ^ (vec3<i32>(u_input.b.x, arg_2, u_input.a) | vec3<i32>(arg_2, -2147483647i, arg_2)), vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 18u)], -4062i, global1[_wgslsmith_index_u32(30012u, 18u)]), vec3<i32>(0i, 33377i, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 18u)], arg_2), vec3<i32>(-2147483647i, 1i, -19638i)))));
    var var_3 = Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~25194u, 1u, 1u, 34980u), _wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, 56238u, 1u, 26268u), vec4<u32>(22482u, 18767u, 29922u, 1u), vec4<bool>(var_0.x, false, arg_0.x, var_1.c.x)), vec4<u32>(484u, 4294967295u, 1u, 49890u))), vec4<u32>(~func_3(Struct_1(true, vec4<bool>(arg_0.x, var_0.x, var_1.a, false), arg_0.xww), 26126u, var_1.c.xy, global1[_wgslsmith_index_u32(0u, 18u)]).x, _wgslsmith_dot_vec2_u32(~vec2<u32>(10088u, 29924u), ~vec2<u32>(8451u, 59397u)), ~(~98204u), _wgslsmith_mod_u32(min(9307u, 51515u), 154u << (1u % 32u)))), Struct_1(any(var_0), !var_1.b, !select(arg_0.wwx, select(arg_0.xwx, var_1.c, vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), vec3<bool>(true, false, global0[_wgslsmith_index_u32(2981u, 29u)]))), vec4<i32>(~abs(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -arg_2, u_input.b.x, 1i), select(-vec4<i32>(0i, -2147483647i, 12224i, -1i), vec4<i32>(var_2.x, var_2.x, 1i, 2147483647i), select(vec4<bool>(false, var_0.x, false, global0[_wgslsmith_index_u32(38785u, 29u)]), vec4<bool>(var_0.x, var_0.x, false, true), true))), min(global1[_wgslsmith_index_u32(4230u, 18u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-27996i, 11139i, -2147483647i), vec3<i32>(0i, var_2.x, 0i))) >> (_wgslsmith_div_u32(0u, ~47891u) % 32u), u_input.a), Struct_1(select(true, true, any(!arg_0.xzy)), !vec4<bool>(false, !var_0.x, -1434f < global2.x, true), select(!select(arg_0.zww, arg_0.xzy, global0[_wgslsmith_index_u32(4294967295u, 29u)]), select(var_1.b.wwy, !vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 29u)], false), any(arg_0.zzx)), !arg_0.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 1623f)) + arg_1), 2223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    let var_4 = vec2<bool>(var_0.x, _wgslsmith_f_op_f32(trunc(117f)) != _wgslsmith_f_op_f32(min(558f, var_3.e.x)));
    return var_3.d;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = true;
    var var_1 = true;
    let var_2 = vec2<i32>(1i, countOneBits(-1i));
    var var_3 = vec3<i32>(u_input.b.x, abs(~0i), u_input.b.x | -global1[_wgslsmith_index_u32(2621u, 18u)]);
    let var_4 = vec4<bool>(var_0, false, arg_1, !(all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 29u)]), vec2<bool>(var_0, true), arg_1)) == false));
    return func_2(vec4<bool>(var_0, select(false, arg_1, !(false && var_0)), false, var_4.x), -341f, var_3.x);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -1932f, _wgslsmith_f_op_f32(step(531f, _wgslsmith_f_op_f32(arg_0.e.x - 828f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, -1419f, 109f, -587f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, arg_0.e.x, -463f, -370f))))))));
    global3 = array<vec3<f32>, 11>();
    var var_1 = _wgslsmith_clamp_vec3_i32(arg_0.c.yxw, _wgslsmith_clamp_vec3_i32(arg_0.c.yzy, (vec3<i32>(-912i, -8868i, u_input.b.x) ^ vec3<i32>(0i, 0i, 68558i)) ^ vec3<i32>(_wgslsmith_add_i32(-2386i, global1[_wgslsmith_index_u32(arg_0.a.x, 18u)]), arg_0.c.x, -2147483647i), select(vec3<i32>(-1i, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(62304u, 18u)], 10215i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, -2147483647i, u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 18u)], arg_0.c.x, u_input.b.x, 1i))), (arg_0.c.xxz & arg_0.c.wzz) ^ (arg_0.c.yxw << (vec3<u32>(arg_0.a.x, 0u, 94807u) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(countOneBits(1u), 29u)])), countOneBits(-(arg_0.c.xyw ^ arg_0.c.xxw)));
    var var_2 = -1i;
    global1 = array<i32, 18>();
    return 10190u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(func_5(Struct_2(~vec4<u32>(1u, 1u, 1u, 1u), func_1(vec3<u32>(~75257u, _wgslsmith_mod_u32(8689u, 59939u), _wgslsmith_div_u32(4294967295u, 1u)), global0[_wgslsmith_index_u32(1u >> (1u % 32u), 29u)], global2.x), ~(~(-vec4<i32>(0i, global1[_wgslsmith_index_u32(1u, 18u)], u_input.b.x, u_input.b.x))), func_2(func_2(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(49887u, 29u)]), global2.x, select(11287i, 2147483647i, true)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f - global2.x)), max(u_input.b.x, global1[_wgslsmith_index_u32(max(0u, 41699u), 18u)])), global3[_wgslsmith_index_u32(~(~78551u), 11u)]), _wgslsmith_mult_u32(select(65452u, 0u, true) ^ ~51573u, 1u) >> (10913u % 32u)), 18u)];
    global2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, global2.x, global2.x)));
    let var_1 = Struct_2(reverseBits(~max(vec4<u32>(1u, 80411u, 24011u, 4319u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(14873u, 5710u, 1u, 4973u), vec4<u32>(1u, 68846u, 0u, 4294967295u)))), Struct_1(global2.x > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -653f))), vec4<bool>(global2.x >= _wgslsmith_f_op_f32(-1342f - global2.x), func_2(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(21580u, 29u)], global0[_wgslsmith_index_u32(25739u, 29u)], true), 283f, 0i).a, !global0[_wgslsmith_index_u32(firstTrailingBit(90318u), 29u)], true), !(!(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)])))), _wgslsmith_mod_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], 21892i, -2147483647i), vec4<i32>(-55828i, -23571i, u_input.a, global1[_wgslsmith_index_u32(0u, 18u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(35458i, 1i, 1i, -1i), vec4<i32>(2147483647i, 1i, -1i, -28312i))) & _wgslsmith_mult_vec4_i32(min(vec4<i32>(37839i, -1i, 44623i, 0i), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -1i)), select(vec4<i32>(u_input.b.x, 1i, u_input.a, -24200i), vec4<i32>(u_input.a, 0i, 35492i, -2147483647i), false)), _wgslsmith_div_vec4_i32(~firstLeadingBit(vec4<i32>(18842i, -1i, 0i, 33687i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-35192i, 991i, 0i, 13078i), ~vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 2147483647i, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 18u)]), max(vec4<i32>(global1[_wgslsmith_index_u32(52741u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], -32421i, -2147483647i), vec4<i32>(2147483647i, -35136i, global1[_wgslsmith_index_u32(1u, 18u)], u_input.b.x))))), func_2(select(vec4<bool>(true, all(vec4<bool>(true, global0[_wgslsmith_index_u32(31501u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], true)), true, !global0[_wgslsmith_index_u32(93171u, 29u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(25634u, 29u)], true, false, global0[_wgslsmith_index_u32(0u, 29u)])), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1865f - 1000f) * _wgslsmith_div_f32(global2.x, 310f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global2.x, global2.x))))), global1[_wgslsmith_index_u32(25752u, 18u)]), _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(firstTrailingBit(max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 23591u, 4294967295u)), 0u)), 11u)]));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.xx * _wgslsmith_f_op_vec2_f32(-global2.zz)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.x, 2185f), global2.yy)) * global2.xy)))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.e.zz - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global2.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))))));
    var var_3 = vec4<i32>(u_input.a, ~global1[_wgslsmith_index_u32(~func_5(var_1, ~4294967295u), 18u)], var_1.c.x, global1[_wgslsmith_index_u32(var_1.a.x, 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(359f, 1000f, 1000f, -262f) + vec4<f32>(-1643f, -1116f, -284f, global2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(824f, -475f, 819f, global2.x) - vec4<f32>(-399f, var_1.e.x, 666f, 1308f)))))) * vec4<f32>(-740f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(round(-1832f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f)))));
}

