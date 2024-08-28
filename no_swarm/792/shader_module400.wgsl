struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 22061u, 1u, 4294967295u);

var<private> global1: array<f32, 13> = array<f32, 13>(-703f, -631f, -1000f, 2060f, -1728f, 874f, 878f, -321f, -971f, 625f, -1486f, 1189f, -137f);

var<private> global2: array<vec2<f32>, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    global2 = array<vec2<f32>, 17>();
    global1 = array<f32, 13>();
    let var_0 = 38107i;
    global2 = array<vec2<f32>, 17>();
    let var_1 = Struct_1(firstTrailingBit(1i), arg_0);
    return global0.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = vec4<f32>(-1100f, 215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.c, 13u)])), global1[_wgslsmith_index_u32(global0.x, 13u)])) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1460f + global1[_wgslsmith_index_u32(6078u, 13u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(func_3(u_input.a.x, vec3<i32>(5021i, u_input.a.x, arg_2.b.a), arg_2.a) >> (1u % 32u), 13u)]))));
    let var_1 = abs(1i);
    var var_2 = (-5932i & -countOneBits(-arg_2.c.b)) == var_1;
    var var_3 = arg_3;
    var var_4 = Struct_2(arg_1, arg_3, Struct_1(_wgslsmith_div_i32(var_3.a | var_3.b, arg_1.a) ^ (select(-12833i, arg_3.b, arg_0) << (~u_input.b.x % 32u)), arg_3.b));
    return any(vec2<bool>(false, !arg_0));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    let var_0 = arg_1;
    var var_1 = func_2(true, Struct_1(-2318i, _wgslsmith_div_i32(-arg_1.a.b, arg_1.c.b)), Struct_2(arg_1.c, var_0.b, var_0.b), arg_1.b);
    let var_2 = Struct_2(Struct_1(1i, ~16878i ^ abs(var_0.c.b)), var_0.a, arg_1.b);
    return _wgslsmith_clamp_u32(select(firstLeadingBit(min(_wgslsmith_mod_u32(83521u, u_input.b.x), global0.x)), 22440u, all(vec4<bool>(false, true, all(vec4<bool>(false, false, true, false)), true))), global0.x, _wgslsmith_div_u32(abs(global0.x) >> (~47457u % 32u), func_3(u_input.a.x, arg_2.zxx, Struct_1(u_input.a.x, var_0.c.a))) << (76593u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_u32(vec4<u32>(12658u, _wgslsmith_clamp_u32(0u, 0u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global0.x, u_input.b.x, 12201u), vec4<u32>(0u, 4294967295u, global0.x, 1u)), func_1(-500f, Struct_2(Struct_1(-26579i, u_input.a.x), Struct_1(2147483647i, -2147483647i), Struct_1(-1i, u_input.a.x)), vec4<i32>(2147483647i, 7092i, 1174i, u_input.a.x)))), ~(select(global0.x, global0.x, true) << (func_3(25044i, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(-1i, 5332i)) % 32u)), u_input.b.x), vec4<u32>(u_input.c, 4294967295u, reverseBits(~_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.yy)), 27751u));
    global2 = array<vec2<f32>, 17>();
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(firstLeadingBit(~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -14292i, u_input.a.x), vec3<i32>(-2315i, u_input.a.x, u_input.a.x))), vec3<i32>(27062i, -28031i, _wgslsmith_clamp_i32(-38086i, u_input.a.x, u_input.a.x) & ~u_input.a.x)), _wgslsmith_add_i32(-_wgslsmith_sub_i32(22696i, u_input.a.x), countOneBits(_wgslsmith_mult_i32(u_input.a.x, 1218i) | u_input.a.x)));
    global0 = ~(~(~countOneBits(vec4<u32>(global0.x, 66410u, 33314u, global0.x))) & ~firstTrailingBit(firstTrailingBit(vec4<u32>(0u, 0u, u_input.b.x, global0.x))));
    let var_1 = Struct_2(Struct_1(var_0.a, i32(-1i) * -10215i), Struct_1(-_wgslsmith_mod_i32(min(u_input.a.x, var_0.b), ~12476i), u_input.a.x), Struct_1(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)) << (40705u % 32u)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, u_input.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b, 0i), vec2<i32>(-1i, u_input.a.x)), select(true, true, false)), u_input.a)));
    global2 = array<vec2<f32>, 17>();
    global2 = array<vec2<f32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(65871u, 13u)], 346f, global1[_wgslsmith_index_u32(u_input.c, 13u)]))))));
}

