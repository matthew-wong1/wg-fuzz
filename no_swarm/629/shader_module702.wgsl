struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false));

var<private> global1: array<bool, 17>;

var<private> global2: vec4<i32>;

var<private> global3: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(1i);
    var var_1 = global3[_wgslsmith_index_u32(~(~abs(~(~u_input.a.x))), 26u)];
    var var_2 = max(~(vec3<u32>(firstLeadingBit(u_input.a.x), u_input.a.x, ~26441u) & vec3<u32>(4294967295u ^ u_input.a.x, abs(u_input.a.x), u_input.a.x)), abs(u_input.a));
    var var_3 = -(~firstLeadingBit(global2.xzz) ^ global2.yyz);
    global2 = _wgslsmith_sub_vec4_i32(~vec4<i32>(i32(-1i) * -global2.x, -(-50930i & global2.x), -1i, _wgslsmith_sub_i32(-1i >> (u_input.a.x % 32u), i32(-1i) * -75120i)), ~select(~select(vec4<i32>(-7867i, 1i, -2147483647i, 2147483647i), vec4<i32>(var_0.a, global2.x, 0i, var_0.a), false), _wgslsmith_mult_vec4_i32(-vec4<i32>(-51156i, var_0.a, -2147483647i, var_3.x), firstTrailingBit(vec4<i32>(-1i, var_3.x, var_3.x, -8568i))), !var_1.x));
    return Struct_2(-(_wgslsmith_mod_i32(firstLeadingBit(-16768i), i32(-1i) * -1i) ^ -var_0.a));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = -753f > arg_2.x;
    var var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(arg_2));
    let var_4 = arg_0;
    return func_2();
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = -(vec4<i32>(-1i) * -vec4<i32>(-1275i, global2.x, global2.x, _wgslsmith_div_i32(-1i, 31005i)));
    var var_1 = 1u;
    let var_2 = true == global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~(~55131u), select(12312u, 56201u, global1[_wgslsmith_index_u32(49011u, 17u)]) << (0u % 32u)), abs(firstTrailingBit(~4294967295u)), ~u_input.a.x), 17u)];
    let var_3 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, global2.x, select(global2.x, 0i, var_2)), var_0.zwy), ~(-arg_1.a));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.wz;
    var var_1 = ~(~select(4294967295u, 0u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.xy)), 17u)]));
    let var_2 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 539f, 2241f, 701f), vec4<f32>(1449f, -1938f, 1222f, -570f), vec4<bool>(true, true, true, true)))))), func_1(Struct_2(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-2147483647i, var_0.x, var_0.x)), vec3<i32>(23611i, 4509i, global2.x))), u_input.a.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-2636f)), -160f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(555f, 768f)))), Struct_1(0u));
    global0 = array<vec4<bool>, 31>();
    var_1 = ~abs(u_input.a.x);
    let var_3 = ~(~vec3<u32>(4294967295u, ~u_input.a.x, u_input.a.x)) >> (abs(select(u_input.a, min(vec3<u32>(u_input.a.x, 23541u, u_input.a.x) >> (vec3<u32>(65185u, u_input.a.x, 4294967295u) % vec3<u32>(32u)), ~u_input.a), select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(35339u, 17u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, 1703u)), 26u)], true))) % vec3<u32>(32u));
    global0 = array<vec4<bool>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(-(var_2.a << (var_3.x % 32u))), abs(var_3.x));
}

