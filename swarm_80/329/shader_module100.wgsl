struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), vec3<i32>(2147483647i, -6017i, -1i), vec2<i32>(46173i, -30432i), false, 20228i));

var<private> global1: array<f32, 18> = array<f32, 18>(-1000f, 2809f, 975f, 2014f, -1190f, 1000f, -912f, -1000f, -1068f, 1036f, -991f, 318f, -1849f, -411f, 467f, -1201f, -1097f, -493f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> f32 {
    var var_0 = global0.a;
    return global1[_wgslsmith_index_u32(select(4294967295u, ~(~(~reverseBits(36772u))), any(!vec4<bool>(select(var_0.d, true, var_0.d), false, false, !global0.a.d))), 18u)];
}

fn func_3() -> i32 {
    var var_0 = -316f;
    global1 = array<f32, 18>();
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(~vec2<i32>(19912i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global0.a.a.a.x), vec2<i32>(u_input.a, -2147483647i)))), ~(global0.a.b ^ select(global0.a.b, vec3<i32>(global0.a.b.x, global0.a.e, global0.a.b.x), vec3<bool>(false, false, false))), vec2<i32>(-global0.a.b.x, u_input.a ^ 1i), !(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(78868u, 4294967295u), vec2<u32>(33701u, 5792u)), 18u)] == -1112f), u_input.a));
    return _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, -(~39877i), 2147483647i, -6568i), firstLeadingBit(-vec4<i32>(_wgslsmith_div_i32(0i, -2147483647i), -var_1.a.a.a.x, 32097i, global0.a.a.a.x)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global1 = array<f32, 18>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(31373u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(57527u, 18u)], -696f))))))), vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(47668u, 18u)] * -974f))))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-350f + _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(37127u, 1u), 18u)], -1183f)))), !select(vec4<bool>(false, global0.a.d, true, false), vec4<bool>(global0.a.d, !global0.a.d, true, !global0.a.d), true)));
    let var_1 = !global0.a.d;
    let var_2 = Struct_3(Struct_2(global0.a.a, vec3<i32>(_wgslsmith_mult_i32(func_3(), abs(-2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, -22847i, -20492i), vec4<i32>(2147483647i, -22026i, 36663i, u_input.a)), 1i, -u_input.a), ~u_input.a), global0.a.a.a, any(vec2<bool>(true, true)), ~(countOneBits(arg_0) >> (select(12422u, 20814u, global0.a.d) % 32u))));
    var var_3 = global0.a.a;
    return Struct_2(var_2.a.a, select(firstLeadingBit(~(-vec3<i32>(global0.a.e, global0.a.e, -651i))), -var_2.a.b, var_1), firstTrailingBit(min(-vec2<i32>(0i, 1i), var_3.a)), true, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(func_1(1i));
    global0 = Struct_3(global0.a);
    let var_0 = Struct_3(global0.a);
    global0 = Struct_3(global0.a);
    global0 = Struct_3(Struct_2(func_1(firstLeadingBit(_wgslsmith_dot_vec3_i32(global0.a.b, global0.a.b))).a, reverseBits(vec3<i32>(44489i, _wgslsmith_mod_i32(-1i, -42938i), -23636i)), _wgslsmith_mod_vec2_i32(var_0.a.c, var_0.a.b.xx & -vec2<i32>(global0.a.e, u_input.a)), var_0.a.d, ~abs(u_input.a & -51623i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global0.a.b.x, var_0.a.b.x), 1387f, 26559i);
}

