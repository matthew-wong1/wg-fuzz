struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<bool>, 11>;

var<private> global2: vec3<u32> = vec3<u32>(42962u, 20075u, 2466u);

var<private> global3: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    var var_0 = Struct_1(arg_0.a, 145f, true, vec2<u32>(u_input.a, min(~77587u, 12833u)));
    var var_1 = ~var_0.d.x;
    var_1 = countOneBits(min(var_0.d.x, ~_wgslsmith_mod_u32(0u, _wgslsmith_div_u32(1u, 1u))));
    global2 = ~(_wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(29226u, u_input.a, u_input.a)), ~vec3<u32>(global2.x, 1u, 69165u), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(var_0.d.x, 4294967295u, u_input.a)))) ^ select(vec3<u32>(arg_0.d.x, ~var_0.d.x, 41870u), firstLeadingBit(vec3<u32>(4696u, 11851u, u_input.a)), !select(vec3<bool>(true, arg_1, true), vec3<bool>(true, arg_1, true), vec3<bool>(false, arg_1, false))));
    var var_2 = arg_0;
    return select(vec3<bool>(all(vec3<bool>(global2.x == var_2.d.x, any(vec4<bool>(arg_1, true, true, false)), any(vec3<bool>(arg_0.c, arg_0.c, var_2.c)))), select(true, false, true) || !arg_0.c, any(vec3<bool>(arg_0.c != arg_0.c, any(vec3<bool>(false, arg_1, var_2.c)), var_2.c))), vec3<bool>(arg_1, all(!select(vec4<bool>(var_2.c, true, var_0.c, true), vec4<bool>(false, true, false, var_2.c), global1[_wgslsmith_index_u32(1u, 11u)])), false), true);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, 473f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(254f, -1000f))))))), global0.b);
    var var_1 = select(vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.b, global0.b)), -949f) != _wgslsmith_f_op_f32(-807f + _wgslsmith_f_op_f32(global0.b + global0.a.x)), any(vec3<bool>(any(vec2<bool>(false, false)), arg_0.x && arg_0.x, all(global1[_wgslsmith_index_u32(arg_1.x, 11u)]))), true), !func_3(Struct_1(-vec4<i32>(-1i, 2147483647i, -1i, -2147483647i), _wgslsmith_f_op_f32(-global0.a.x), true, vec2<u32>(60908u, 4294967295u)), arg_0.x), vec3<bool>(arg_0.x, true, any(select(!global1[_wgslsmith_index_u32(global2.x, 11u)], vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), !arg_0.x))));
    let var_2 = all(vec4<bool>(arg_0.x, false, arg_0.x, true)) & var_1.x;
    var var_3 = countOneBits(~u_input.a);
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1039f, -1635f, global0.b) + global0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1571f, global0.a.x, -587f) * var_0.a))))), var_0.a.x);
    return var_0;
}

fn func_1() -> Struct_2 {
    global3 = u_input.a;
    global0 = func_2(vec2<bool>(true, false), global2.yz);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.a.xx))))) * global0.a.yz);
    let var_1 = !func_3(Struct_1(vec4<i32>(1i, 1i, 1i, 1i), -272f, true, global2.xy), all(vec2<bool>(func_3(Struct_1(vec4<i32>(-1i, -1i, 19976i, -1i), var_0.x, true, global2.zy), true).x, select(false, false, false))));
    var var_2 = u_input.a;
    return func_2(vec2<bool>(true, any(func_3(Struct_1(vec4<i32>(0i, 1i, 27985i, 18575i), 1566f, var_1.x, vec2<u32>(global2.x, 93293u)), any(vec4<bool>(true, false, true, false))).xx)), ~_wgslsmith_div_vec2_u32(firstTrailingBit(select(global2.yx, global2.yy, var_1.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~global2.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = -578f;
    var var_2 = func_3(Struct_1(abs(~_wgslsmith_div_vec4_i32(vec4<i32>(-4757i, -1i, -37515i, 2508i), vec4<i32>(-1i, -8289i, -43502i, -2147483647i))), var_0.a.x, false, ~(global2.xx << (~vec2<u32>(u_input.a, 27769u) % vec2<u32>(32u)))), true).yx;
    global2 = ~_wgslsmith_div_vec3_u32(vec3<u32>(~(~u_input.a), ~(~u_input.a), 23744u), vec3<u32>(2611u, 8541u << (~global2.x % 32u), ~select(global2.x, 0u, true)));
    global1 = array<vec4<bool>, 11>();
    var var_3 = Struct_1(vec4<i32>(1i, 5690i, -countOneBits(abs(-1i)), 22075i), var_0.a.x, var_2.x, ~global2.yz);
    var var_4 = u_input.a >> (var_3.d.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(var_3.a.x) >> (46203u % 32u)) << (firstTrailingBit(24855u) % 32u), var_3.a, u_input.a, 0u);
}

