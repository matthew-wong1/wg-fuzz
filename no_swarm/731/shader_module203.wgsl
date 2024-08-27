struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: f32 = 870f;

var<private> global2: array<vec3<u32>, 17>;

var<private> global3: array<u32, 8> = array<u32, 8>(1u, 0u, 52239u, 0u, 0u, 44019u, 1u, 14853u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_1(vec3<bool>(all(!vec4<bool>(arg_1.a.a.x, true, true, false)), select((arg_2 <= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2, 8u)], 8u)]) && true, true, !all(vec3<bool>(arg_0, arg_1.a.b.x, arg_1.a.a.x))), false), vec3<bool>(1f != _wgslsmith_f_op_f32(trunc(-445f)), arg_1.a.b.x, false));
    var var_1 = select(!var_0.b, select(vec3<bool>(any(vec2<bool>(true, arg_1.a.b.x)) & true, all(var_0.b.zx), !all(vec3<bool>(true, var_0.b.x, arg_1.a.a.x))), select(vec3<bool>(var_0.b.x, any(var_0.a.zz), true), arg_1.a.b, abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2, 8u)], 8u)]) >= ~0u), all(arg_1.a.b)), var_0.a);
    global2 = array<vec3<u32>, 17>();
    global3 = array<u32, 8>();
    var var_2 = vec2<i32>(2147483647i, ~u_input.c) >> (countOneBits(vec2<u32>(1u ^ (1004u >> (arg_2 % 32u)), ~min(arg_2, 70594u))) % vec2<u32>(32u));
    return arg_1.a.a;
}

fn func_2() -> Struct_2 {
    global2 = array<vec3<u32>, 17>();
    return Struct_2(Struct_1(vec3<bool>(true, -28071i == ~u_input.b, all(func_3(true, Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec4<i32>(-53132i, u_input.a, -16406i, u_input.a)), global3[_wgslsmith_index_u32(4294967295u, 8u)]))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(all(vec3<bool>(false, false, false)), all(vec4<bool>(false, false, false, true)), true))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(select(2147483647i, 7094i, true), max(global0.x, u_input.b)), -u_input.b & 36111i, 0i, abs(global0.x)), firstLeadingBit(~vec4<i32>(0i, 10495i, -1i, global0.x))));
}

fn func_1() -> vec3<bool> {
    var var_0 = any(vec2<bool>(false, !all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)))));
    let var_1 = func_2();
    let var_2 = vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_add_u32(1u, ~1u), max(~4732u, ~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 8u)] << (4294967295u % 32u)))), ~(~global3[_wgslsmith_index_u32(4294967295u, 8u)] ^ firstLeadingBit(global3[_wgslsmith_index_u32(0u, 8u)])) & 24312u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(~(~70929u), 8u)], ~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 105040u)), _wgslsmith_div_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60007u, 8u)], 8u)], 8u)], 8u)], 8u)]) ^ ~vec2<u32>(1u, global3[_wgslsmith_index_u32(1u, 8u)]), ~(vec2<u32>(2792u, 41256u) ^ vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)])))), 8u)], ~(~select(~0u, select(global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], var_1.a.b.x), u_input.c <= 1i)));
    global3 = array<u32, 8>();
    var var_3 = !vec2<bool>(false, true && !any(vec4<bool>(var_1.a.a.x, false, true, var_1.a.a.x)));
    return vec3<bool>(var_1.a.a.x & false, !var_1.a.b.x, func_2().a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -2059f;
    var var_0 = Struct_2(Struct_1(func_1(), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), func_2().a.a, true)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i) & ~global0.zy, -global0.xy), 17242i, -global0.x >> (87747u % 32u), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(119f * -1000f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 475f))))))));
}

