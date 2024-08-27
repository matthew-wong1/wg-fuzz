struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 11>;

var<private> global2: i32;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: array<Struct_2, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = 1i;
    var var_1 = abs(countOneBits(~(~vec2<u32>(arg_0.b.x, 1u))));
    let var_2 = any(!arg_0.a.ywx);
    var var_3 = !all(!select(vec4<bool>(arg_2, arg_0.a.x, var_2, false), vec4<bool>(global3.x, true, false, var_2), vec4<bool>(true, true, true, true)));
    var var_4 = arg_0.c;
    return 1u;
}

fn func_2() -> Struct_1 {
    global4 = array<Struct_2, 21>();
    let var_0 = Struct_1(vec3<u32>(u_input.a.x, 1u & (u_input.d.x << ((4294967295u << (0u % 32u)) % 32u)), u_input.a.x), 0u);
    var var_1 = global4[_wgslsmith_index_u32(u_input.a.x ^ _wgslsmith_mult_u32(firstTrailingBit(var_0.a.x), _wgslsmith_div_u32(abs(func_3(global4[_wgslsmith_index_u32(u_input.b, 21u)], var_0.a, global3.x, -1130f)), var_0.b)), 21u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1393f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-2242f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(347f, -1218f) * vec2<f32>(-126f, -866f))))));
    let var_3 = ~(_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0.a.x, u_input.a.x, var_1.c.b, 4294967295u)), ~vec4<u32>(var_1.c.a.x, var_0.b, var_1.b.x, var_1.b.x) & (vec4<u32>(4294967295u, 4294967295u, u_input.d.x, var_0.a.x) ^ vec4<u32>(u_input.d.x, var_0.a.x, var_0.a.x, 1u))) ^ _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 24092u, 4294967295u, u_input.d.x), vec4<u32>(u_input.b, 4294967295u, var_1.d.a.x, 1u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, var_0.b, var_1.b.x, u_input.d.x), vec4<u32>(15893u, var_1.c.b, var_1.c.a.x, 22666u))));
    return Struct_1(vec3<u32>(~(u_input.d.x << (var_3.x % 32u)), u_input.a.x, 0u ^ u_input.d.x), 39958u);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = func_2();
    global4 = array<Struct_2, 21>();
    global1 = array<i32, 11>();
    let var_2 = global3.x;
    return Struct_2(select(select(select(vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(true, true, true, false), global3.x), select(select(vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(global3.x, global3.x, false, true), true), vec4<bool>(true, false, true, false), true), any(vec3<bool>(false, true, false))), vec4<bool>(global3.x, true, !global3.x | true, true), !select(!vec4<bool>(global3.x, true, global3.x, global3.x), select(vec4<bool>(true, global3.x, global3.x, true), vec4<bool>(true, true, global3.x, global3.x), vec4<bool>(true, false, global3.x, true)), vec4<bool>(global3.x, global3.x, true, true))), u_input.d, func_2(), func_2(), all(select(select(vec2<bool>(global3.x, false), vec2<bool>(true, true), true), vec2<bool>(true, global3.x), 4294967295u != _wgslsmith_add_u32(u_input.a.x, var_1.b))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-393f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(269f * -1000f)))), -832f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -782f) - -1055f));
    global3 = arg_1.a.xz;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = arg_1.c;
    var var_3 = vec3<u32>(~_wgslsmith_add_u32(arg_1.c.b, 1u), 4294967295u, 89825u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - -175f))), -944f)) - var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(~u_input.b, 21u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1877f)), _wgslsmith_f_op_f32(func_4(2147483647i, func_1()))));
    let var_2 = var_0.c;
    global0 = any(!vec2<bool>(true, global3.x));
    let var_3 = 0u;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -956f));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(vec4<i32>(global1[_wgslsmith_index_u32(firstTrailingBit(var_2.b), 11u)], ~(-71899i), 2147483647i, firstLeadingBit(0i)), vec4<i32>(countOneBits(1i), i32(-1i) * -30015i, i32(-1i) * -2147483647i, u_input.c), !select(vec4<bool>(var_0.a.x, true, true, true), vec4<bool>(true, global3.x, var_0.e, var_0.e), vec4<bool>(true, var_0.e, true, var_0.e)))), ~((firstLeadingBit(vec2<i32>(-10461i, 985i)) & (vec2<i32>(u_input.e, -1i) | vec2<i32>(global1[_wgslsmith_index_u32(var_3, 11u)], -7524i))) >> (max(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(var_3, 1164u)), vec2<u32>(51695u, 1u)) % vec2<u32>(32u))));
}

