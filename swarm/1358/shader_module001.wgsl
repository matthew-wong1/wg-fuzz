struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1;

var<private> global2: vec2<bool>;

var<private> global3: Struct_1 = Struct_1(-326f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = select(select(!vec3<bool>(false, global2.x != global2.x, global2.x), vec3<bool>(global2.x, (global1.a != global3.a) || any(vec4<bool>(true, global2.x, global2.x, global2.x)), false), 296f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(964f, global1.a)) - _wgslsmith_f_op_f32(global3.a - global1.a))), !(!select(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, global2.x, true), vec3<bool>(global2.x, true, false)), vec3<bool>(global2.x, global2.x, global2.x), global2.x)), select(select(!(!vec3<bool>(true, global2.x, global2.x)), vec3<bool>(true, true, true), !(!vec3<bool>(global2.x, global2.x, false))), vec3<bool>(true, false, false), any(select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(false, global2.x, false, false), u_input.b < u_input.c))));
    let var_1 = -vec2<i32>(~(~(~(-42457i))), -70522i ^ global0.x);
    var var_2 = u_input.a.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(global3.a, _wgslsmith_f_op_f32(select(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a * -480f) * -1876f), _wgslsmith_f_op_f32(-global1.a) < _wgslsmith_f_op_f32(floor(global3.a)))))));
    let var_4 = -abs(firstTrailingBit(countOneBits(abs(vec3<i32>(global0.x, global0.x, var_1.x)))));
    return ~u_input.a.x;
}

fn func_2() -> Struct_1 {
    global0 = -max(vec3<i32>(~global0.x << (~71331u % 32u), ~global0.x, (global0.x ^ -1632i) ^ _wgslsmith_mult_i32(global0.x, global0.x)), min(firstTrailingBit(vec3<i32>(-40130i, global0.x, global0.x)) & (vec3<i32>(global0.x, global0.x, 0i) << (u_input.a % vec3<u32>(32u))), vec3<i32>(-1i) * -vec3<i32>(global0.x, -38052i, -2147483647i)));
    let var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global3.a));
    var var_2 = _wgslsmith_sub_vec4_u32(~vec4<u32>(func_3(2147483647i) ^ 17867u, _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(u_input.b, u_input.b)), 0u, ~countOneBits(u_input.a.x)), ~firstLeadingBit(firstLeadingBit(vec4<u32>(9561u, 0u, u_input.a.x, 3170u)) | vec4<u32>(u_input.b, 0u, 0u, 120958u)));
    let var_3 = vec2<bool>(!(!(!(!global2.x))), true);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(min(-1377f, 1f)))));
}

fn func_1() -> Struct_2 {
    global3 = func_2();
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(firstTrailingBit(vec2<i32>(-2147483647i, global0.x))), global0.yy), _wgslsmith_add_vec2_i32(firstTrailingBit(global0.yx), ~vec2<i32>(abs(-1i), -7092i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a, _wgslsmith_f_op_f32(-global1.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a, -394f)) * 333f), _wgslsmith_f_op_f32(f32(-1f) * -288f)), !select(select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, false), vec2<bool>(global2.x, global2.x)), select(vec2<bool>(global2.x, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), !vec2<bool>(global2.x, true), select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x), global2.x)), false)));
    global1 = func_2();
    global1 = func_2();
    return Struct_2(vec2<bool>(false, true), func_2(), func_2(), func_2(), ~(~u_input.a.x ^ u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(true, 59304i, -(~(-1i)));
    let var_1 = false;
    global1 = Struct_1(global1.a);
    let var_2 = vec3<u32>(u_input.d, u_input.c, 1u);
    var var_3 = func_1();
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -535f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_2.x, 42568u), var_2 << (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_2, firstLeadingBit(var_2)), vec3<u32>(u_input.b, ~var_3.e, _wgslsmith_sub_u32(var_3.e, u_input.a.x))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(96577u, var_2.x), u_input.a.xy), ~var_2.x), 26100u, var_2.x), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, firstTrailingBit(-31450i), global0.x), -vec3<i32>(2147483647i, 22600i, 30247i) & vec3<i32>(global0.x, var_0.c, var_0.c)), -9740i, ~(~0i), 2147483647i | firstTrailingBit(abs(var_0.b))));
}

