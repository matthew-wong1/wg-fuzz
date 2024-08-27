struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(42608i, 35254u, -1588f), Struct_1(6866i, 9536u, 362f), Struct_1(-1i, 1u, 1000f), Struct_1(19151i, 22293u, -145f), Struct_1(i32(-2147483648), 39771u, 1234f), Struct_1(i32(-2147483648), 0u, -1091f), Struct_1(-29595i, 4653u, 1318f), Struct_1(-1i, 0u, 345f), Struct_1(25141i, 0u, 692f), Struct_1(i32(-2147483648), 4008u, -554f), Struct_1(53034i, 972u, 124f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = arg_0.b;
    var var_1 = select(vec3<bool>(true, true, true), !vec3<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), !all(vec3<bool>(false, true, false))), false);
    global1 = array<Struct_1, 18>();
    global2 = array<Struct_1, 11>();
    return min(u_input.b, arg_0.b);
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(~reverseBits(~u_input.a.x), 11u)];
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 11u)];
    return any(select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, true))), vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, true)), !vec4<bool>(true, false, true, all(vec2<bool>(true, false))), vec4<bool>(true | (u_input.c > u_input.c), true, true, !(u_input.c < var_1.a))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = !any(vec2<bool>(select(true, arg_1, arg_0), arg_1)) != true;
    var var_1 = abs(0u);
    var var_2 = global1[_wgslsmith_index_u32(64055u, 18u)];
    global1 = array<Struct_1, 18>();
    global0 = _wgslsmith_f_op_f32(ceil(var_2.c));
    return abs(~(~(53962u | _wgslsmith_sub_u32(0u, var_2.b))));
}

fn func_1() -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(49104u, 11u)];
    let var_1 = -1i;
    var var_2 = vec4<u32>(_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), abs(min(countOneBits(func_2(Struct_1(0i, 1u, var_0.c), u_input.b, Struct_1(var_0.a, 20669u, -1000f))), u_input.b)), ~4294967295u, var_0.b);
    var var_3 = ~u_input.a.xzw << (~vec3<u32>(abs(_wgslsmith_sub_u32(var_0.b, 4294967295u)), u_input.a.x, func_4(func_3(vec2<f32>(1085f, var_0.c)), select(true, false, false), var_0.a)) % vec3<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, _wgslsmith_div_f32(var_0.c, -1552f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(289f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-689f, var_0.c))))), var_0.c), true));
    return Struct_1(abs(-_wgslsmith_add_i32(38440i, _wgslsmith_dot_vec4_i32(vec4<i32>(7432i, -2147483647i, -1i, -15702i), vec4<i32>(var_0.a, -2147483647i, 698i, 92553i)))), reverseBits(var_2.x), _wgslsmith_f_op_f32(trunc(1287f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 11>();
    var var_0 = global2[_wgslsmith_index_u32(0u, 11u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1132f + _wgslsmith_f_op_f32(round(514f))));
    global1 = array<Struct_1, 18>();
    var var_2 = !(!(!(!(42665u > u_input.a.x))));
    let var_3 = _wgslsmith_mod_u32(1u, 63435u) | var_0.b;
    var var_4 = func_1();
    var var_5 = Struct_1(countOneBits(-_wgslsmith_mult_i32(8713i, -u_input.c)), var_0.b, _wgslsmith_f_op_f32(floor(var_4.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1134f, -255f, var_1)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_5.c, var_0.c, 647f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.c, 635f, var_4.c) * vec3<f32>(-500f, -1000f, -852f))) - vec3<f32>(_wgslsmith_f_op_f32(-var_5.c), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-1372f + var_5.c))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true))), 4294967295u, _wgslsmith_clamp_i32(var_5.a, u_input.c, max(40319i, countOneBits(u_input.c))), firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(~1i, var_5.a), -1i, var_4.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 1i, u_input.c, 1i), vec4<i32>(45344i, var_5.a, u_input.c, -2147483647i)))), ~(~(~select(vec4<u32>(0u, u_input.a.x, 4294967295u, 1u), u_input.a, vec4<bool>(true, true, true, true)))));
}

