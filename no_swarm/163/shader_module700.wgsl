struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global2: i32 = -5957i;

var<private> global3: u32 = 59803u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    return countOneBits(29884i);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(((vec3<i32>(-1i) * -vec3<i32>(u_input.a, arg_0, global0[_wgslsmith_index_u32(1u, 20u)])) << (firstLeadingBit(vec3<u32>(68653u, 0u, 1u)) % vec3<u32>(32u))) & -vec3<i32>(select(u_input.a, 0i, false), -1i, func_3(vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 0u, 1u), Struct_1(vec3<i32>(u_input.a, -18854i, global0[_wgslsmith_index_u32(4294967295u, 20u)])))));
    var var_1 = Struct_1(vec3<i32>(reverseBits(abs(~u_input.a)), firstLeadingBit(max(38460i, arg_0)), firstLeadingBit(u_input.a)));
    var var_2 = min(abs(15177i << (_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 0u, 4735u), vec3<u32>(44908u, 42958u, 9267u)), vec3<u32>(1u, 1u, 1u)) % 32u)), var_0.a.x ^ (global0[_wgslsmith_index_u32(countOneBits(29473u), 20u)] >> (~4294967295u % 32u)));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_0, firstLeadingBit(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(78861u, 0u), vec2<u32>(4294967295u, 19225u)), 20u)]), -2147483647i), arg_0);
    var_0 = Struct_1(select(select(var_1.a, var_1.a, select(vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 9u)], any(vec4<bool>(true, false, true, false)))), ~(min(vec3<i32>(var_1.a.x, global0[_wgslsmith_index_u32(0u, 20u)], 2147483647i), vec3<i32>(u_input.a, 46542i, arg_0)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), var_3 > ~_wgslsmith_mod_i32(44037i, var_0.a.x)));
    return Struct_1(~var_0.a);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> i32 {
    global1 = array<vec3<bool>, 9>();
    var var_0 = _wgslsmith_add_u32(4946u, arg_2);
    let var_1 = func_2(0i);
    let var_2 = true;
    var var_3 = true;
    return global0[_wgslsmith_index_u32(arg_1, 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(~(~(-1i)), ~func_1(true, 4294967295u, 4294967295u), global0[_wgslsmith_index_u32(select(1u, 9082u, false) & ~980u, 20u)]), countOneBits(vec3<i32>(-7940i, u_input.a, 2147483647i)) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    var var_1 = var_0.a.x;
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(-1727f * 515f), -2278f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(1267f)), _wgslsmith_f_op_f32(max(-909f, -704f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1536f, -1102f, 1693f), vec3<f32>(-170f, -212f, -2125f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1531f, -1698f, 221f))))));
    global0 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~1i, ~_wgslsmith_add_vec3_i32(-(~var_0.a), -func_2(39815i).a), reverseBits(~_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 20u)], var_0.a.x, -61919i, -64291i), vec4<i32>(0i, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 20u)], 2147483647i))) | max(~max(vec4<i32>(var_0.a.x, var_0.a.x, u_input.a, global0[_wgslsmith_index_u32(4043u, 20u)]), vec4<i32>(global0[_wgslsmith_index_u32(1u, 20u)], -6336i, 35691i, 104i)), vec4<i32>(global0[_wgslsmith_index_u32(1u, 20u)], -1i, -11211i, var_0.a.x) << (select(vec4<u32>(0u, 14971u, 33632u, 4294967295u), vec4<u32>(60684u, 0u, 0u, 4294967295u), true) % vec4<u32>(32u))), select(vec3<i32>(firstTrailingBit(firstTrailingBit(global0[_wgslsmith_index_u32(82058u, 20u)])), 1i, ~2147483647i ^ -u_input.a), var_0.a, false), -1127f);
}

