struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28>;

var<private> global1: array<f32, 6> = array<f32, 6>(1795f, 1583f, -199f, -189f, 500f, 882f);

var<private> global2: array<Struct_2, 31>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec2<u32> {
    return vec2<u32>(11496u, u_input.a);
}

fn func_2(arg_0: u32) -> vec4<i32> {
    global0 = array<vec2<u32>, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-global3.e);
    var var_1 = _wgslsmith_sub_vec2_u32(select(_wgslsmith_div_vec2_u32(~vec2<u32>(3233u, arg_0), func_3(2174f)) ^ ~_wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], vec2<u32>(global3.d, 1u)), global0[_wgslsmith_index_u32(reverseBits(~(~0u)), 28u)], select(select(select(vec2<bool>(global3.b, true), vec2<bool>(global3.b, global3.b), global3.b), vec2<bool>(false, global3.b), any(vec4<bool>(global3.b, true, true, true))), select(vec2<bool>(false, global3.b), vec2<bool>(false, global3.b), select(vec2<bool>(true, global3.b), vec2<bool>(false, global3.b), false)), select(vec2<bool>(true, true), vec2<bool>(true, global3.b), vec2<bool>(true, true)))), countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(92253u, 1u), vec2<u32>(15569u, 0u) >> (global3.a % vec2<u32>(32u))), vec2<u32>(~arg_0, 2128u), reverseBits(~global3.a))));
    let var_2 = Struct_1(~global3.a, false, 697f, var_1.x, global3.e);
    global0 = array<vec2<u32>, 28>();
    return _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~select(~vec4<i32>(39839i, -39953i, -42470i, -41775i), countOneBits(vec4<i32>(1i, 22671i, -1i, -2147483647i)), select(vec4<bool>(global3.b, true, global3.b, var_2.b), vec4<bool>(var_2.b, true, global3.b, false), vec4<bool>(true, false, global3.b, var_2.b))), ~(~(-vec4<i32>(0i, -2147483647i, 27277i, -43164i)))), select(vec4<i32>(-21121i, _wgslsmith_mult_i32(1i, 1i), ~10913i, reverseBits(countOneBits(0i))), abs(vec4<i32>(1i, 1i, 1i, 1i)) << (select(select(vec4<u32>(4294967295u, 4294967295u, global3.d, 5603u), vec4<u32>(u_input.a, 21003u, 54502u, arg_0), global3.b), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, u_input.a, var_1.x, global3.a.x), vec4<u32>(84972u, 14160u, 1u, arg_0)), vec4<bool>(false, var_2.b, global3.b, true)) % vec4<u32>(32u)), !select(!vec4<bool>(true, var_2.b, true, var_2.b), vec4<bool>(true, false, true, false), all(vec3<bool>(false, var_2.b, var_2.b)))));
}

fn func_1() -> f32 {
    let var_0 = global3.e.x;
    let var_1 = func_2(0u) & reverseBits(abs(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i))));
    var var_2 = -36846i;
    let var_3 = Struct_2(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(abs(var_1.x), -7690i), var_1.wy)), ~select(_wgslsmith_mult_vec4_u32(min(vec4<u32>(4294967295u, 15073u, 72366u, 0u), vec4<u32>(34162u, 77107u, u_input.a, 1u)), select(vec4<u32>(0u, 16428u, global3.a.x, 0u), vec4<u32>(1u, u_input.a, 39084u, 4294967295u), vec4<bool>(global3.b, global3.b, global3.b, global3.b))), vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_mult_u32(u_input.a, global3.a.x), global3.a.x), false));
    return global1[_wgslsmith_index_u32(55871u, 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1()), 1i, u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global3.e))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-973f, global1[_wgslsmith_index_u32(u_input.a, 6u)]), _wgslsmith_f_op_f32(global3.c * global1[_wgslsmith_index_u32(81846u, 6u)])), 2665f, _wgslsmith_f_op_f32(max(535f, -539f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(248f, global3.e.x, global1[_wgslsmith_index_u32(~global3.d, 6u)]) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1544f, global3.c, -1053f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(294f, global3.e.x, -2000f)))))));
}

