struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
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

var<private> global0: vec2<bool>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec4<f32>(-391f, -1242f, -985f, -995f), vec4<bool>(true, false, false, false), vec4<i32>(i32(-2147483648), -1i, 0i, 0i)), Struct_3(vec4<f32>(-350f, -154f, -137f, -1671f), vec4<bool>(true, true, true, false), vec4<i32>(1i, 1i, i32(-2147483648), -44808i)), Struct_3(vec4<f32>(795f, -2149f, -560f, -378f), vec4<bool>(false, true, false, true), vec4<i32>(i32(-2147483648), 1i, 1i, 2147483647i)), Struct_3(vec4<f32>(508f, -724f, -280f, 257f), vec4<bool>(false, true, false, true), vec4<i32>(-1i, 0i, 2147483647i, -32936i)), Struct_3(vec4<f32>(233f, -1000f, 857f, -591f), vec4<bool>(false, false, false, true), vec4<i32>(1i, -3429i, -33545i, -1i)), Struct_3(vec4<f32>(1000f, 463f, 257f, 324f), vec4<bool>(true, false, false, false), vec4<i32>(i32(-2147483648), 1i, 5663i, -22290i)), Struct_3(vec4<f32>(1000f, 607f, 406f, -439f), vec4<bool>(false, true, false, true), vec4<i32>(-1i, 1i, -29463i, -19659i)), Struct_3(vec4<f32>(-343f, 685f, 1053f, -941f), vec4<bool>(true, false, false, false), vec4<i32>(-73792i, 1i, i32(-2147483648), 5063i)), Struct_3(vec4<f32>(1328f, 1715f, 860f, 1404f), vec4<bool>(false, false, false, true), vec4<i32>(-74179i, 0i, 2147483647i, -40442i)), Struct_3(vec4<f32>(-103f, 646f, 636f, 977f), vec4<bool>(false, true, false, true), vec4<i32>(-1i, -42746i, 0i, -21046i)), Struct_3(vec4<f32>(-1000f, 290f, -2167f, 248f), vec4<bool>(false, true, true, true), vec4<i32>(-1i, 2147483647i, 30003i, 16817i)), Struct_3(vec4<f32>(579f, -1876f, 845f, 238f), vec4<bool>(true, false, true, true), vec4<i32>(2147483647i, 18411i, -1i, -1465i)), Struct_3(vec4<f32>(142f, 1991f, 601f, -1277f), vec4<bool>(false, true, true, false), vec4<i32>(12451i, 55141i, -8436i, 49376i)), Struct_3(vec4<f32>(2492f, -659f, -884f, -1867f), vec4<bool>(false, true, true, true), vec4<i32>(1i, -8609i, 30645i, 1i)), Struct_3(vec4<f32>(1865f, -2739f, -1000f, 1872f), vec4<bool>(true, true, false, false), vec4<i32>(0i, i32(-2147483648), 0i, 1i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = ~(~_wgslsmith_add_vec2_u32(~vec2<u32>(28057u, 69712u) & select(vec2<u32>(arg_1, 1u), vec2<u32>(35892u, 0u), true), ~(~vec2<u32>(4294967295u, 21707u))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(1135f - arg_0.d.x), _wgslsmith_f_op_f32(ceil(arg_0.d.x))))));
    var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, var_1.a.x, arg_0.d.x) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(var_1.a, vec3<f32>(-191f, var_1.a.x, 1662f)))))), _wgslsmith_f_op_vec3_f32(select(var_1.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.a), var_1.a)), true))));
    var var_2 = select(!select(!select(vec2<bool>(false, false), vec2<bool>(true, arg_2), vec2<bool>(false, true)), vec2<bool>(!global0.x, false && global0.x), !any(vec4<bool>(true, arg_2, true, arg_0.e))), select(vec2<bool>(!global0.x, !(global0.x | global0.x)), vec2<bool>(true, true), arg_2), !select(select(vec2<bool>(false, global0.x), !vec2<bool>(arg_0.e, false), !vec2<bool>(global0.x, true)), vec2<bool>(all(vec2<bool>(false, false)), !global0.x), all(select(vec3<bool>(arg_0.e, false, arg_2), vec3<bool>(global0.x, arg_0.e, false), arg_2))));
    global2 = array<Struct_3, 15>();
    return var_0.x;
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>) -> vec3<f32> {
    let var_0 = abs(global1.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f)), -455f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.x))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1061f, arg_0.b.a.x)) - arg_0.b.a.x), arg_1.x, _wgslsmith_div_f32(arg_0.b.a.x, arg_1.x))));
    global0 = vec2<bool>(any(!vec3<bool>(global0.x && true, !global0.x, any(vec3<bool>(arg_0.a, true, true)))), !global0.x);
    let var_2 = min(max(~(~vec2<u32>(6002u, u_input.c)), ~(~vec2<u32>(var_0, 0u) ^ vec2<u32>(1u, var_0))), abs(vec2<u32>(~u_input.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0, var_0), vec3<u32>(var_0, 8441u, u_input.c)) % 32u), abs(var_0) ^ ~global1.x)));
    global2 = array<Struct_3, 15>();
    return _wgslsmith_f_op_vec3_f32(floor(arg_1));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_4(true, Struct_1(vec3<f32>(-120f, 508f, -642f)), 2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(889f, 1329f, -166f)))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(756f, -2694f, _wgslsmith_f_op_f32(-2128f * var_0.a.x), var_0.a.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 946f, var_0.a.x, var_0.a.x) * vec4<f32>(-168f, var_0.a.x, 342f, 517f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 303f) - vec4<f32>(161f, var_0.a.x, var_0.a.x, 329f))))), !vec4<bool>(global1.x == (64915u ^ global1.x), true, true, true), vec4<i32>(-1i) * -(~vec4<i32>(u_input.b, 0i, -33761i, u_input.a)));
    var var_2 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(92549u, u_input.c, global1.x, u_input.c)), abs(vec4<u32>(global1.x, 4294967295u, 30854u, 0u))), ~(~(~4294967295u)), ~u_input.c);
    var var_3 = -var_1.c.yy;
    var var_4 = -1000f;
    return -785f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global0 = !(!(!(!vec2<bool>(global0.x, global0.x))));
    global1 = vec2<u32>(4294967295u, 33210u) << (countOneBits(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 0u) & vec2<u32>(global1.x, 4294967295u), vec2<u32>(u_input.c, 4294967295u) >> (vec2<u32>(1u, 9830u) % vec2<u32>(32u)))) % vec2<u32>(32u));
    global1 = _wgslsmith_mult_vec2_u32(reverseBits(~(~vec2<u32>(u_input.c, 7289u))), _wgslsmith_add_vec2_u32(vec2<u32>(~22168u, _wgslsmith_mod_u32(74611u, global1.x)), ~vec2<u32>(global1.x, 113223u))) >> (vec2<u32>(20478u, firstLeadingBit(_wgslsmith_div_u32(global1.x, func_1(Struct_2(u_input.a, vec2<i32>(u_input.b, 21695i), vec3<i32>(1i, var_0, 15178i), vec2<f32>(-656f, -1182f), global0.x), 49u, global0.x)))) % vec2<u32>(32u));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1406f, 268f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_2())))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

