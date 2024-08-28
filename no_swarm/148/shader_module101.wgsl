struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: bool = true;

var<private> global2: array<i32, 9> = array<i32, 9>(1i, 2457i, 58089i, 2147483647i, -26006i, 77156i, 0i, 2147483647i, -1i);

var<private> global3: Struct_2 = Struct_2(98990u, vec4<f32>(491f, -1780f, 441f, -602f), 503f, Struct_1(vec2<i32>(-20231i, -1i), vec3<f32>(664f, -1088f, -1369f), vec4<bool>(true, true, false, true)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(vec2<i32>(0i >> (~global3.a % 32u), 2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.yzy))), !select(vec4<bool>(global3.d.c.x, global3.d.c.x, global3.d.c.x, global3.d.c.x), !vec4<bool>(false, global3.d.c.x, false, false), global3.d.c)));
    let var_1 = Struct_5(select(global3.d.c.x, var_0.a.c.x, any(var_0.a.c.zzx)), -vec2<i32>(-9955i, _wgslsmith_mod_i32(global3.d.a.x, ~u_input.c)), _wgslsmith_div_f32(575f, -706f));
    let var_2 = -12493i;
    var var_3 = global3.c;
    global1 = true || (!(_wgslsmith_f_op_f32(-global3.d.b.x) < 3439f) != global3.d.c.x);
    let var_4 = !all(select(!(!var_0.a.c.wz), vec2<bool>(u_input.a.x <= 1u, var_1.a), global3.d.c.xy));
    global3 = Struct_2(_wgslsmith_sub_u32(~global3.a, ~(~(~1u))), vec4<f32>(-447f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-788f - _wgslsmith_f_op_f32(f32(-1f) * -1579f)), 563f), 1081f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.c))) * var_0.a.b.x)), var_1.c, Struct_1(_wgslsmith_div_vec2_i32(~_wgslsmith_mult_vec2_i32(global3.d.a, vec2<i32>(-31274i, global2[_wgslsmith_index_u32(global3.a, 9u)])), vec2<i32>(_wgslsmith_add_i32(var_2, 10190i), global2[_wgslsmith_index_u32(u_input.b, 9u)] >> (61819u % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-924f, -1564f, var_0.a.b.x))), !vec4<bool>(!var_1.a, false || global3.d.c.x, global3.d.c.x, true)));
    let var_5 = min(firstTrailingBit(var_0.a.a.x), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1024f, 1920f), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(44886i, var_2, u_input.c), vec3<i32>(var_0.a.a.x, -46154i, var_1.b.x)), 2147483647i), var_0.a.a.x));
}

