struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec4<bool>(false, true, false, false)), 28529u, -12580i, true, Struct_1(vec4<bool>(false, false, true, false))), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), 0u, 2147483647i, true, Struct_1(vec4<bool>(true, false, true, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), 20960u, -5144i, true, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), 1u, -40374i, false, Struct_1(vec4<bool>(true, true, true, false))), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), 71401u, 2147483647i, true, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), 0u, -25432i, false, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), 20231u, 2147483647i, true, Struct_1(vec4<bool>(true, false, true, true))), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), 0u, 2147483647i, false, Struct_1(vec4<bool>(true, true, true, false))), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), 4294967295u, 49801i, true, Struct_1(vec4<bool>(true, false, true, false))), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), 63196u, 0i, false, Struct_1(vec4<bool>(true, false, false, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), 69265u, 2147483647i, true, Struct_1(vec4<bool>(true, true, true, false))), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), 17323u, 1i, false, Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), 1u, 2147483647i, true, Struct_1(vec4<bool>(true, false, false, true))), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), 5031u, 1i, true, Struct_1(vec4<bool>(true, false, true, false))));

var<private> global2: array<f32, 26> = array<f32, 26>(1560f, -2097f, -186f, -826f, 389f, -693f, -497f, 1000f, -298f, 1000f, 1110f, -357f, 531f, 914f, -451f, -105f, -665f, 1216f, -577f, -247f, -1000f, -1039f, 1017f, 224f, -951f, 1468f);

var<private> global3: vec2<u32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + global0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 14>();
    var var_0 = 4294967295u;
    var var_1 = global3.x;
    var var_2 = true;
    var var_3 = firstLeadingBit(-u_input.e.xxx);
    let var_4 = abs(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(abs(-2147483647i), u_input.b & var_3.x, -var_3.x), _wgslsmith_div_vec3_i32(vec3<i32>(var_3.x, -25264i, 53401i) | vec3<i32>(u_input.d, 0i, -19393i), u_input.e.xxz))));
    let var_5 = min(~vec2<u32>(u_input.c, 7188u), ~vec2<u32>(~(~90464u), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(firstTrailingBit(var_4)), global3.x, _wgslsmith_mod_i32(-26750i, var_4.x) | (-var_3.x << ((_wgslsmith_clamp_u32(u_input.c, 1u, u_input.c) & (var_5.x << (4294967295u % 32u))) % 32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1413f)), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(global0.b << (global0.b % 32u), 14u)]))))));
}

