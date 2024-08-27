struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<u32, 13>;

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(737i), Struct_3(17821i), Struct_3(5101i), Struct_3(87346i), Struct_3(-1i), Struct_3(-90615i), Struct_3(31914i), Struct_3(60124i), Struct_3(6995i), Struct_3(1i), Struct_3(71455i), Struct_3(-11757i), Struct_3(2147483647i), Struct_3(-1i));

var<private> global3: vec2<i32> = vec2<i32>(-1i, 1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    global3 = vec2<i32>(u_input.a.x, countOneBits(_wgslsmith_mult_i32(u_input.c, global3.x)));
    let var_0 = 671f;
    global0 = array<Struct_1, 13>();
    var var_1 = select(vec3<bool>(all(vec3<bool>(false, false, false)) || (u_input.a.x >= ~global3.x), firstTrailingBit(1i) >= u_input.a.x, any(vec4<bool>(true, true, true, arg_0 < 26069u))), select(vec3<bool>(true, true, false), vec3<bool>(any(vec2<bool>(true, true)), !all(vec2<bool>(false, false)), true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.a.x < global3.x))), select(vec3<bool>(true || any(vec3<bool>(true, false, false)), true, !any(vec2<bool>(true, false))), select(vec3<bool>(all(vec3<bool>(false, false, false)), all(vec3<bool>(false, false, false)), false), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), !(var_0 > 1000f)), !(true | all(vec2<bool>(false, false)))));
    var_1 = !vec3<bool>(var_1.x, true, firstLeadingBit(_wgslsmith_mult_u32(arg_0, 1u)) >= u_input.d.x);
    return ~u_input.c;
}

fn func_4(arg_0: i32) -> u32 {
    return _wgslsmith_dot_vec3_u32(vec3<u32>(6965u, u_input.d.x, ~65445u), vec3<u32>(4294967295u, 65323u, 15318u)) << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(abs(global1[_wgslsmith_index_u32(4294967295u, 13u)])), 48713u), 34652u) % 32u);
}

fn func_2(arg_0: Struct_2) -> bool {
    global0 = array<Struct_1, 13>();
    let var_0 = 4294967295u;
    let var_1 = arg_0;
    let var_2 = u_input.a.x;
    global1 = array<u32, 13>();
    return ~func_4(firstTrailingBit(func_3(var_0))) > _wgslsmith_sub_u32(var_0, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_div_u32(1637u, 50967u | global1[_wgslsmith_index_u32(1u, 13u)])));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2) -> f32 {
    global2 = array<Struct_3, 14>();
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    var var_0 = !vec3<bool>(true || func_2(Struct_2(global3.x)), false, true);
    var var_1 = ~(-1i | ~abs(global3.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_f32(f32(-1f) * -127f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, _wgslsmith_f_op_f32(1392f + -245f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 329f)), vec2<f32>(_wgslsmith_div_f32(157f, 1232f), _wgslsmith_f_op_f32(937f - -283f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(911f, -1066f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-191f, 220f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(630f, 376f))))) * vec2<f32>(_wgslsmith_f_op_f32(min(-119f, _wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.d.x, 8090u, 4294967295u), 63409u, Struct_2(u_input.c))))), _wgslsmith_f_op_f32(round(-327f))))));
    let var_2 = vec3<bool>(true, true, any(vec3<bool>(true, true, true)));
    global1 = array<u32, 13>();
    var var_3 = global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(u_input.d.x, 21812u, 0u)), firstLeadingBit(countOneBits(global1[_wgslsmith_index_u32(u_input.d.x, 13u)])))), 13u)];
    global1 = array<u32, 13>();
    let var_4 = Struct_3(i32(-1i) * -2147483647i);
    let var_5 = _wgslsmith_add_i32(u_input.a.x & 9294i, global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

