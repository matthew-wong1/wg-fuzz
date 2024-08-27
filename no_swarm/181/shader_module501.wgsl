struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<bool>(true, true, false, false), 409f, vec4<bool>(false, true, false, true), false), Struct_1(vec4<bool>(false, true, false, true), 1288f, vec4<bool>(true, true, true, false), false), Struct_1(vec4<bool>(false, true, false, true), 261f, vec4<bool>(false, false, true, true), true), Struct_1(vec4<bool>(false, true, true, false), 775f, vec4<bool>(true, true, true, true), true), Struct_1(vec4<bool>(false, false, false, true), -178f, vec4<bool>(true, true, false, true), false), Struct_1(vec4<bool>(false, false, false, false), 1668f, vec4<bool>(false, false, false, true), false), Struct_1(vec4<bool>(true, true, false, false), 664f, vec4<bool>(false, true, false, true), true), Struct_1(vec4<bool>(true, false, false, false), -446f, vec4<bool>(false, true, false, true), true), Struct_1(vec4<bool>(false, true, false, true), -312f, vec4<bool>(true, false, false, true), true), Struct_1(vec4<bool>(false, true, true, true), 1053f, vec4<bool>(true, false, true, false), false), Struct_1(vec4<bool>(true, true, false, true), 1403f, vec4<bool>(true, false, true, false), false), Struct_1(vec4<bool>(true, false, false, false), 139f, vec4<bool>(false, true, false, false), false), Struct_1(vec4<bool>(true, true, true, true), 1802f, vec4<bool>(false, false, true, false), true), Struct_1(vec4<bool>(true, false, true, true), -1651f, vec4<bool>(true, false, false, false), true), Struct_1(vec4<bool>(false, false, false, false), -1062f, vec4<bool>(false, false, true, true), true), Struct_1(vec4<bool>(true, false, true, false), 259f, vec4<bool>(false, true, false, false), false), Struct_1(vec4<bool>(true, true, false, false), 121f, vec4<bool>(false, false, false, false), true), Struct_1(vec4<bool>(true, true, false, true), -1272f, vec4<bool>(false, true, true, true), false), Struct_1(vec4<bool>(true, true, true, true), 777f, vec4<bool>(true, true, true, true), false), Struct_1(vec4<bool>(true, false, false, false), -2014f, vec4<bool>(false, false, false, true), true), Struct_1(vec4<bool>(true, true, false, true), 210f, vec4<bool>(false, false, true, false), true), Struct_1(vec4<bool>(true, true, false, true), 1665f, vec4<bool>(true, true, true, false), true), Struct_1(vec4<bool>(false, true, false, false), -1571f, vec4<bool>(false, false, true, false), false), Struct_1(vec4<bool>(true, true, false, false), -1416f, vec4<bool>(true, false, false, false), false), Struct_1(vec4<bool>(true, false, false, false), 759f, vec4<bool>(false, false, false, false), false), Struct_1(vec4<bool>(true, false, false, true), -1497f, vec4<bool>(false, true, false, false), true), Struct_1(vec4<bool>(true, true, false, false), -410f, vec4<bool>(true, true, true, false), true), Struct_1(vec4<bool>(true, true, false, false), -152f, vec4<bool>(true, false, true, true), false));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, false, false), 176f, vec4<bool>(false, true, false, false), true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> i32 {
    return -10663i;
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = Struct_1(select(arg_2.c, select(select(!vec4<bool>(arg_2.c.x, true, false, false), !vec4<bool>(global2.d, false, true, global2.a.x), !vec4<bool>(true, true, false, arg_0.x)), !global2.a, any(arg_2.a.xw)), !select(arg_2.c, vec4<bool>(true, false, arg_2.c.x, arg_0.x), arg_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1636f))), select(arg_2.c, select(!vec4<bool>(false, arg_2.d, arg_0.x, false), select(select(global2.c, vec4<bool>(false, true, false, true), vec4<bool>(global2.c.x, global2.d, arg_0.x, true)), global2.c, arg_0.x), false), true), (true && !arg_0.x) & all(select(!vec2<bool>(arg_2.c.x, arg_0.x), !vec2<bool>(false, arg_0.x), true)));
    global2 = Struct_1(global2.a, _wgslsmith_f_op_f32(-var_0.b), global2.a, any(global2.a.wz));
    let var_1 = Struct_1(vec4<bool>(-40817i == _wgslsmith_div_i32(0i, arg_1), (global2.b < _wgslsmith_f_op_f32(-global2.b)) || (1f > _wgslsmith_f_op_f32(var_0.b + global2.b)), arg_0.x, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(max(var_0.b, 348f)))) - -797f), !var_0.a, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), 722f));
    global2 = Struct_1(arg_2.a, -1899f, vec4<bool>(select(-193f < var_1.b, true, !arg_2.a.x & var_0.a.x), var_0.d, arg_2.a.x, false), all(select(arg_0, select(select(arg_2.c.yyx, var_0.c.zyw, vec3<bool>(arg_0.x, var_0.d, arg_0.x)), var_0.c.yyw, global2.a.x | false), false)));
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -33916i, _wgslsmith_div_i32(u_input.c.x, 19064i), ~11954i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, 54894i) >> (vec3<u32>(22756u, 0u, arg_3) % vec3<u32>(32u)), u_input.c)) ^ 30971i);
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 28u)];
    var var_1 = select(!vec2<bool>(global2.d, false && global2.c.x), global2.c.wy, ((u_input.d << (~9402u % 32u)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 47482u, 42287u), vec4<u32>(52006u, 4294967295u, u_input.a.x, u_input.b)) % 32u)) <= 55743u);
    var var_2 = -(func_2() ^ _wgslsmith_mult_i32(func_3(global2.a.xwx, _wgslsmith_sub_i32(35594i, -1i), Struct_1(vec4<bool>(false, true, var_1.x, false), 542f, global2.c, global2.c.x), ~0u), _wgslsmith_mod_i32(886i, -1i)));
    var var_3 = Struct_1(!(!select(vec4<bool>(false, var_0.d, true, false), !vec4<bool>(true, var_0.c.x, var_1.x, var_1.x), !global2.c.x)), global2.b, select(select(select(var_0.a, vec4<bool>(false, var_0.d, var_1.x, var_0.c.x), true), vec4<bool>(!var_0.a.x, true, true, true), global2.c), select(select(!global2.a, select(vec4<bool>(false, var_1.x, true, true), var_0.c, global2.a.x), select(vec4<bool>(var_0.c.x, var_1.x, var_1.x, var_0.a.x), vec4<bool>(false, true, var_1.x, false), global2.c.x)), global2.c, false), select(!select(global2.c, var_0.a, vec4<bool>(var_1.x, global2.c.x, false, false)), var_0.c, !(arg_0.x < -2419f))), false == var_0.a.x);
    var_0 = Struct_1(global2.c, _wgslsmith_f_op_f32(var_0.b * var_3.b), select(vec4<bool>(false, any(!global2.a.zyz), any(global2.c.wyy), all(vec4<bool>(var_0.c.x, var_3.a.x, global2.c.x, true))), vec4<bool>(true, true & var_3.a.x, false, true), select(!(!var_3.a.x), var_0.d == (arg_0.x > -301f), var_0.d)), var_3.b < 1049f);
    return vec4<u32>(61909u, firstLeadingBit(1u), u_input.d, 19800u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(40261i, u_input.e >> (max(u_input.a.x, 20538u) % 32u)) << (u_input.a % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_i32(u_input.c.yz, _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 2147483647i), vec2<i32>(0i, 1i) ^ u_input.c.xx)));
    var var_1 = func_1(vec4<f32>(-1788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - _wgslsmith_div_f32(165f, 819f))), global2.b, _wgslsmith_f_op_f32(563f * -1187f)));
    var var_2 = vec3<u32>(~33445u, u_input.b, 38446u);
    var var_3 = true;
    var var_4 = Struct_1(global2.c, _wgslsmith_f_op_f32(-1024f + _wgslsmith_f_op_f32(round(global2.b))), !(!vec4<bool>(!global2.c.x, false, !global2.c.x, true)), global2.a.x);
    var_1 = vec4<u32>(5920u, var_1.x, ~_wgslsmith_mult_u32(abs(~21228u), var_1.x), 1u);
    var_2 = ~(func_1(vec4<f32>(_wgslsmith_f_op_f32(659f + 1000f), _wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -447f)).zxw << (var_1.wxw % vec3<u32>(32u)));
    global2 = global1[_wgslsmith_index_u32(var_1.x << (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(38384u, 0u, var_1.x), vec3<u32>(4294967295u, var_1.x, 4294967295u)), max(_wgslsmith_div_vec3_u32(var_1.zwy, vec3<u32>(1u, 0u, var_1.x)), vec3<u32>(u_input.b, 2307u, u_input.d) >> (vec3<u32>(var_2.x, 145176u, var_1.x) % vec3<u32>(32u)))), var_2.x) % 32u), 28u)];
    var var_5 = !(!select(true, (u_input.e >> (1u % 32u)) >= global0.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.b, var_4.b, -232f, _wgslsmith_f_op_f32(sign(1443f))), vec4<f32>(1834f, _wgslsmith_f_op_f32(global2.b - -1145f), _wgslsmith_f_op_f32(exp2(global2.b)), -236f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f - var_4.b) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 996f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.b, global2.b) - _wgslsmith_f_op_f32(sign(-453f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global2.b)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_4.b), _wgslsmith_f_op_f32(global2.b - var_4.b), var_4.b, _wgslsmith_f_op_f32(max(-641f, 614f))))))), _wgslsmith_mult_i32(reverseBits(reverseBits(4997i)), firstTrailingBit(abs(var_0.x))));
}

