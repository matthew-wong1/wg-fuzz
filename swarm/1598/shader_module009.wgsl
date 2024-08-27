struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, Struct_1(vec2<bool>(true, true)));

var<private> global1: vec4<f32> = vec4<f32>(-744f, 1050f, -809f, 390f);

var<private> global2: array<i32, 27> = array<i32, 27>(-6467i, 5106i, -3274i, -1703i, -15228i, -20855i, -25207i, 1i, 1i, -18648i, -76371i, 1i, 2147483647i, -18064i, -48753i, 17736i, 34781i, 2147483647i, 1i, -2444i, 1i, i32(-2147483648), -49959i, 1i, 0i, i32(-2147483648), 2147483647i);

var<private> global3: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    var var_0 = !select(!(!(!vec2<bool>(global0.b.a.x, global3.b.a.x))), vec2<bool>(true, true), true);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(256f))))), 0i);
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(6909u, ~0u, u_input.a), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 12087u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(82815u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.a, u_input.a), vec3<u32>(0u, 4294967295u, 58586u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 47055u, u_input.b), vec3<u32>(u_input.a, u_input.a, 0u))))), ~u_input.a << (1u % 32u));
    var var_3 = 1u;
    var_3 = u_input.b;
    return vec3<bool>(all(select(!vec3<bool>(global0.a, true, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)) && global0.a, true, false);
}

fn func_2() -> vec2<bool> {
    let var_0 = select(vec3<bool>(global0.a, global3.a, global0.b.a.x), select(select(vec3<bool>(true, true, 72075u <= u_input.a), select(vec3<bool>(false, global3.b.a.x, global0.a), !vec3<bool>(global3.b.a.x, true, global0.b.a.x), select(vec3<bool>(true, true, true), vec3<bool>(false, global0.b.a.x, global0.a), vec3<bool>(global3.a, false, true))), !global0.b.a.x), func_3(global2[_wgslsmith_index_u32(78219u, 27u)]), !(!func_3(global2[_wgslsmith_index_u32(1u, 27u)]).x)), global0.b.a.x);
    let var_1 = Struct_1(!(!select(!global3.b.a, var_0.yx, !var_0.x)));
    let var_2 = Struct_2(var_1, Struct_1(func_3(~_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]), vec2<i32>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]))).yz), ~(~(~59461u)) | _wgslsmith_clamp_u32(~49935u, countOneBits(84032u), u_input.b));
    global2 = array<i32, 27>();
    var var_3 = Struct_3(true, Struct_1(vec2<bool>(false, false)));
    return var_1.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_3 {
    var var_0 = max(0u, 1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(117f, -1586f, global1.x, arg_1)))));
    global0 = Struct_3(false, Struct_1(select(!func_2(), func_3(1i).xx, arg_0.x)));
    var var_2 = -_wgslsmith_sub_i32(_wgslsmith_add_i32(-2560i, abs(global2[_wgslsmith_index_u32(~u_input.a, 27u)])), _wgslsmith_mult_i32(-14244i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], 5816i, -1580i), vec3<i32>(global2[_wgslsmith_index_u32(0u, 27u)], -1i, global2[_wgslsmith_index_u32(4643u, 27u)])), _wgslsmith_div_vec3_i32(vec3<i32>(0i, global2[_wgslsmith_index_u32(4294967295u, 27u)], 2147483647i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(83273u, 27u)], global2[_wgslsmith_index_u32(u_input.b, 27u)])))));
    var var_3 = vec4<f32>(-729f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x)))) - 576f), -1417f);
    return Struct_3(any(arg_0.zy), Struct_1(arg_0.yy));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = abs(11867i);
    let var_1 = vec4<bool>(!all(!global0.b.a), false, arg_3.a.a.x || func_1(select(vec3<bool>(arg_0.x, arg_0.x, arg_1.a), select(vec3<bool>(true, global0.b.a.x, true), vec3<bool>(global0.b.a.x, true, false), vec3<bool>(global3.a, arg_3.b.a.x, false)), select(vec3<bool>(true, false, arg_0.x), vec3<bool>(false, arg_3.b.a.x, arg_3.a.a.x), vec3<bool>(arg_3.a.a.x, false, arg_1.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -666f))).a, false);
    var var_2 = arg_3.a.a;
    var var_3 = global0.b;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -924f);
    return ~_wgslsmith_div_u32(abs(~u_input.b), ~select(1u, 4294967295u, arg_3.a.a.x)) >> (~arg_3.c % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~(~u_input.a), 27u)];
    var var_1 = vec3<u32>(_wgslsmith_add_u32(func_4(global0.b.a, func_1(vec3<bool>(global3.b.a.x, global3.a, global0.b.a.x), global1.x), select(vec2<i32>(global2[_wgslsmith_index_u32(64285u, 27u)], global2[_wgslsmith_index_u32(54155u, 27u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(52823u, 27u)]), global0.b.a.x), Struct_2(global0.b, Struct_1(global0.b.a), 0u)), 4294967295u), 72504u, 0u) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), ~4294967295u), vec3<u32>(u_input.b, u_input.a, 47294u) >> (reverseBits(vec3<u32>(0u, 1u, u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(select(851f, global1.x, global3.a | false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.x, global1.x, global3.b.a.x)), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2138f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)), vec4<f32>(-1965f, global1.x, 1911f, global1.x), select(vec4<bool>(false, global0.a, global3.a, true), vec4<bool>(global0.a, false, global0.b.a.x, global0.b.a.x), vec4<bool>(false, global0.a, false, false)))))), global2[_wgslsmith_index_u32(82689u, 27u)]);
    var var_3 = ~((select(firstTrailingBit(vec4<u32>(var_1.x, var_1.x, var_1.x, 16902u)), vec4<u32>(22175u, var_1.x, u_input.a, 40144u), true) >> (select(select(vec4<u32>(1u, 4294967295u, 15172u, var_1.x), vec4<u32>(u_input.b, var_1.x, 76761u, 23148u), vec4<bool>(global3.a, true, false, global0.a)), vec4<u32>(6562u, 1u, var_1.x, 92328u), select(vec4<bool>(global3.b.a.x, global0.a, true, false), vec4<bool>(true, false, global3.a, true), true)) % vec4<u32>(32u))) << (~vec4<u32>(~0u, 99834u, func_4(vec2<bool>(global0.b.a.x, false), Struct_3(global3.b.a.x, global0.b), vec2<i32>(11453i, var_2.b), Struct_2(Struct_1(global0.b.a), global0.b, u_input.a)), _wgslsmith_sub_u32(var_1.x, var_1.x)) % vec4<u32>(32u)));
    var var_4 = 1i;
    global3 = Struct_3(false, func_1(vec3<bool>(true, true, true), 329f).b);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) - _wgslsmith_f_op_f32(step(-1000f, var_2.a.x))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1304f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1638f, global1.x)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -525f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -142f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~global2[_wgslsmith_index_u32(~4294967295u, 27u)] << (~(~var_3.x) % 32u), 8864u);
}

