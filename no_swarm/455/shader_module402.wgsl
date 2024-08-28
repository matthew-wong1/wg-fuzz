struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec3<f32>(-1330f, -3217f, -123f)), Struct_3(vec3<f32>(1000f, 745f, 1000f)));

var<private> global2: array<u32, 2> = array<u32, 2>(4294967295u, 1u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    global1 = array<Struct_3, 2>();
    var var_0 = ~vec2<u32>(abs(0u), global2[_wgslsmith_index_u32(60715u, 2u)]);
    let var_1 = _wgslsmith_mult_u32(27555u, 73321u);
    global2 = array<u32, 2>();
    global2 = array<u32, 2>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-913f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.c.c.x)))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-619f))))), 1343f));
    var var_1 = firstTrailingBit(vec4<u32>(arg_0.c.a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b, 1u), 2u)] << (min(10604u, ~53731u) % 32u), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 45458u << (_wgslsmith_sub_u32(63628u, global2[_wgslsmith_index_u32(u_input.b, 2u)]) % 32u)), ~firstTrailingBit(arg_0.c.a)));
    var_0 = global1[_wgslsmith_index_u32(arg_0.c.a, 2u)];
    let var_2 = countOneBits(48401u);
    let var_3 = Struct_2(arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(func_3(select(!vec3<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b), select(vec3<bool>(arg_0.c.b, false, arg_0.c.b), vec3<bool>(true, arg_0.c.b, true), vec3<bool>(arg_0.c.b, false, false)), any(vec4<bool>(arg_0.c.b, false, false, arg_0.c.b))), global0[_wgslsmith_index_u32(var_2, 9u)])), _wgslsmith_f_op_f32(func_3(vec3<bool>(arg_0.c.b, true, arg_0.c.b), Struct_2(arg_0.a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 603f, arg_0.c.c.x))), Struct_1(68666u, arg_0.c.b, arg_0.c.c, u_input.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1317f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-696f)))))), arg_0.c);
    return var_3.c;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = select(select(vec3<bool>(true, arg_0 & true, true), select(!vec3<bool>(arg_0, true, arg_0), !(!vec3<bool>(arg_0, false, arg_0)), !select(vec3<bool>(false, arg_0, false), vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, true))), (4294967295u <= ~u_input.b) | arg_0), vec3<bool>(false, false, true), any(select(vec2<bool>(arg_0, any(vec2<bool>(false, arg_0))), select(!vec2<bool>(true, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), true), false), !vec2<bool>(arg_0, arg_0))));
    global1 = array<Struct_3, 2>();
    global0 = array<Struct_2, 9>();
    global2 = array<u32, 2>();
    let var_1 = var_0.xz;
    return func_2(global0[_wgslsmith_index_u32(~u_input.b, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(0u >= global2[_wgslsmith_index_u32(~u_input.b, 2u)]) && true);
    var var_1 = vec3<bool>(true, !func_2(Struct_2(max(vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.c), vec4<i32>(var_0.d, var_0.d, -2147483647i, -2147483647i)), var_0.c, func_2(Struct_2(vec4<i32>(u_input.a, -2147483647i, -1i, var_0.d), vec3<f32>(-233f, 420f, 749f), Struct_1(u_input.b, var_0.b, vec3<f32>(1000f, 1368f, var_0.c.x), 10833i))))).b, var_0.c.x >= _wgslsmith_f_op_f32(round(-1073f)));
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    global2 = array<u32, 2>();
    var var_2 = func_2(Struct_2(~(~(-vec4<i32>(0i, 12747i, u_input.c, 23167i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), func_2(Struct_2(vec4<i32>(2147483647i, u_input.a, u_input.a, -1i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-323f, var_0.c.x, var_0.c.x), var_0.c, vec3<bool>(var_0.b, false, var_1.x))), func_1(var_1.x)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(func_1(any(var_1.zy) | true).c.x + _wgslsmith_f_op_f32(var_0.c.x + -1543f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), func_1(false).c.x);
    var_0 = func_2(Struct_2(select(-(vec4<i32>(var_0.d, 0i, var_2.d, var_2.d) & vec4<i32>(var_0.d, var_2.d, u_input.a, 845i)), reverseBits(vec4<i32>(2147483647i, u_input.a, var_0.d, u_input.a)), var_2.b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_2.c), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-230f, -911f, -679f), vec3<f32>(var_2.c.x, -1398f, var_0.c.x))))))), func_1(true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(0u), reverseBits(4294967295u), _wgslsmith_mult_u32(55195u, var_2.a), 1u), vec4<u32>(_wgslsmith_mult_u32(4294967295u, global2[_wgslsmith_index_u32(21709u, 2u)]), global2[_wgslsmith_index_u32(~7919u, 2u)], var_0.a, 25006u)));
}

