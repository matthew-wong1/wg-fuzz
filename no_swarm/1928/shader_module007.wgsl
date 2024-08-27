struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(1u, 16953u, 4294967295u, 1u));

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<i32>(1i, i32(-2147483648)), -684f), Struct_1(vec2<i32>(0i, 23737i), 1282f), Struct_1(vec2<i32>(-14864i, -12807i), -164f));

var<private> global3: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> u32 {
    global0 = array<Struct_1, 32>();
    return abs(~(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.d, 89213u, 4294967295u), ~u_input.d)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = true;
    global0 = array<Struct_1, 32>();
    global3 = func_3(_wgslsmith_dot_vec2_u32(~arg_1, arg_1));
    var var_1 = arg_0.x >= _wgslsmith_add_i32((20984i ^ -arg_0.x) << (_wgslsmith_sub_u32(select(20074u, u_input.d, false), 50484u) % 32u), -14644i);
    let var_2 = u_input.b.yw;
    return vec3<bool>(var_0, var_0, any(!(!select(vec3<bool>(false, var_0, true), vec3<bool>(var_0, true, true), true))));
}

fn func_1() -> vec3<bool> {
    global2 = array<Struct_1, 3>();
    let var_0 = -1000f;
    global3 = ~(~30442u) >> (abs(firstLeadingBit(_wgslsmith_div_u32(u_input.a, u_input.a))) % 32u);
    global1 = array<vec4<u32>, 1>();
    var var_1 = Struct_1(-u_input.c.yy, var_0);
    return !(!select(!func_2(vec4<i32>(var_1.a.x, 10794i, -1i, -1i), vec2<u32>(u_input.a, 1u)), vec3<bool>(false, false, false), any(vec4<bool>(true, false, false, true)) & (u_input.a <= 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec3<u32>(15437u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 39765u, u_input.a), ~vec3<u32>(4294967295u, u_input.a, 101414u)), _wgslsmith_sub_u32(u_input.a, u_input.d)) ^ ~max(~vec3<u32>(u_input.a, 14145u, 44662u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 11302u, u_input.d), vec3<u32>(u_input.d, 4294967295u, u_input.d)))) << (_wgslsmith_div_vec3_u32(select(~abs(vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<u32>(11374u & u_input.a, ~30856u, _wgslsmith_clamp_u32(u_input.d, 4294967295u, 4294967295u)), !func_1()), ~(~reverseBits(vec3<u32>(0u, 98956u, 4294967295u)))) % vec3<u32>(32u));
    let var_1 = ~(~(-_wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, u_input.b.x), ~vec2<i32>(38300i, u_input.b.x), vec2<i32>(-7324i, 25827i))));
    let var_2 = !func_1().xz;
    var var_3 = global0[_wgslsmith_index_u32(38773u, 32u)];
    var var_4 = vec4<bool>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.b, _wgslsmith_f_op_f32(trunc(235f))), _wgslsmith_f_op_f32(min(var_3.b, _wgslsmith_f_op_f32(abs(var_3.b))))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(128f))))), true, u_input.a > ~_wgslsmith_clamp_u32(~1u, 77763u, ~u_input.d), var_2.x);
    var var_5 = func_3(28297u);
    let var_6 = select(select(select(!func_2(u_input.b, vec2<u32>(var_0.x, 1u)), !func_2(u_input.b, vec2<u32>(1u, u_input.d)), vec3<bool>(var_3.b < -1000f, var_2.x | true, func_2(vec4<i32>(u_input.c.x, var_3.a.x, var_3.a.x, -9377i), var_0.yz).x)), var_4.yxx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_f_op_f32(var_3.b * -536f), select(var_4.x, var_2.x, true)))), func_2(u_input.b, var_0.xy), !vec3<bool>(!func_2(vec4<i32>(-41646i, 4582i, var_3.a.x, 17906i), var_0.zz).x, var_4.x, all(!vec4<bool>(var_4.x, var_4.x, var_2.x, var_4.x))));
    var var_7 = -6009i;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(u_input.d & 4294967295u), var_0.xx, select(firstLeadingBit(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 54098u), var_0))), var_0, false), vec4<i32>(-u_input.b.x, select(reverseBits(1i), abs(1i), true), ~var_3.a.x, var_3.a.x & _wgslsmith_div_i32(1i, var_1.x)) ^ firstLeadingBit(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(50906i, var_3.a.x, 0i, u_input.b.x)), ~u_input.b)), ~var_0);
}

