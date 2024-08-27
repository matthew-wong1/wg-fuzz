struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-987f, -453f));

var<private> global1: f32;

var<private> global2: array<Struct_2, 6>;

var<private> global3: Struct_1 = Struct_1(4294967295u, 95173i, vec2<u32>(4294967295u, 98489u), -622f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global1 = global3.d;
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.d + global3.d))), _wgslsmith_f_op_f32(-global3.d))), 2165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.d, 1091f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-185f, -1795f, 372f), vec3<f32>(-559f, 2011f, 1198f)))))));
    let var_1 = ~(-(vec4<i32>(-25573i, u_input.a.x, 4756i, global3.b) >> ((vec4<u32>(u_input.b, 0u, u_input.b, global3.c.x) | vec4<u32>(global3.a, global3.a, 1u, u_input.b)) % vec4<u32>(32u)))) >> (vec4<u32>((1u >> (_wgslsmith_add_u32(global3.c.x, global3.a) % 32u)) ^ global3.c.x, _wgslsmith_mult_u32(1u, u_input.b), 74155u, 4294967295u) % vec4<u32>(32u));
    return 1u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(func_3(), 2147483647i, ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(13913u, u_input.b, u_input.b), vec3<u32>(0u, 0u, 11109u)) << (_wgslsmith_sub_u32(global3.a, u_input.b) % 32u), ~23874u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.d, global3.d) * -331f))))));
    var var_1 = 64302i;
    let var_2 = vec3<bool>(true, true, true);
    let var_3 = var_0.d;
    let var_4 = Struct_1(84834u, -firstTrailingBit(0i) | (22168i & reverseBits(min(-22524i, var_0.b))), ~global3.c << (_wgslsmith_add_vec2_u32(select(~vec2<u32>(u_input.b, global3.c.x), min(global3.c, vec2<u32>(44952u, 8839u)), !var_2.zy), select(vec2<u32>(u_input.b, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(global3.a, u_input.b), vec2<u32>(4294967295u, var_0.c.x)), select(vec2<bool>(true, true), vec2<bool>(var_2.x, var_2.x), var_2.yy))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(250f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.d - 204f))) * 674f)));
    return var_4;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    global0 = array<vec2<f32>, 1>();
    var var_1 = vec3<bool>(!select(false, !(-1119f <= arg_0.a.d), any(vec4<bool>(true, true, true, true))), !(any(vec3<bool>(arg_3.d, false, arg_1.d)) | arg_3.d) || true, !(~(50211u ^ u_input.b) != ~0u));
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(262f, 1082f, -650f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.d, -831f, 901f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.d, -656f, -846f)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a.d, var_2.d, global3.d)))))), vec3<bool>((-1i << (arg_2.a % 32u)) == 48237i, abs(var_0.a.b) > ~arg_0.c, !(arg_0.c < u_input.a.x)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d, -1514f, arg_1.a.d)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.a.d, global3.d, -1077f), vec3<f32>(var_0.a.d, -967f, 1199f)))), vec3<f32>(-2112f, -753f, _wgslsmith_f_op_f32(f32(-1f) * -125f)))))));
    return func_2();
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    var var_0 = vec2<bool>(true, select(!(!all(vec3<bool>(arg_1.d, arg_1.b.x, false))), true, all(!arg_1.b)));
    let var_1 = func_2();
    let var_2 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1.e.x, ~42238u), arg_1.a.c.x), global3.b, vec2<u32>(1u, ~(~(arg_1.e.x | 85079u))), _wgslsmith_f_op_f32(-var_1.d));
    global0 = array<vec2<f32>, 1>();
    global2 = array<Struct_2, 6>();
    return -func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(u_input.b, 6u)];
    let var_1 = vec4<bool>(true, var_0.d, var_0.b.x, func_4(vec2<i32>(~469i, var_0.a.b), Struct_2(func_1(Struct_2(Struct_1(4294967295u, -26540i, vec2<u32>(58255u, 60827u), -307f), var_0.b, u_input.a.x, var_0.b.x, global3.c), Struct_2(var_0.a, var_0.b, -2147483647i, var_0.d, global3.c), var_0.a, global2[_wgslsmith_index_u32(global3.c.x, 6u)]), select(var_0.b, vec2<bool>(var_0.b.x, true), true), var_0.c >> (4294967295u % 32u), !var_0.d, _wgslsmith_div_vec2_u32(vec2<u32>(global3.c.x, var_0.e.x), var_0.a.c)), vec2<i32>(global3.b, _wgslsmith_div_i32(var_0.c, global3.b))) >= u_input.a.x);
    let var_2 = global3.d;
    let var_3 = true;
    global2 = array<Struct_2, 6>();
    var var_4 = !select(vec4<bool>(!(global3.b == -1i), false, false, u_input.a.x == func_2().b), var_1, vec4<bool>(!any(var_1.yyy), true, !(!var_3), _wgslsmith_f_op_f32(f32(-1f) * -1000f) < var_0.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(-183f, 486f);
}

