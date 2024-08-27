struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec3<i32>(55923i, 0i, 2147483647i), 40566u, 1u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> u32 {
    var var_0 = -12402i;
    global1 = Struct_1(vec3<bool>(false, false, all(!vec2<bool>(global1.a.x, arg_1.x)) || true), ~vec3<i32>(1i, global1.b.x, _wgslsmith_dot_vec2_i32(global1.b.xz, vec2<i32>(u_input.a, -70543i))) >> (abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 34707u, 64189u) << (vec3<u32>(38087u, global1.c, 4294967295u) % vec3<u32>(32u)), min(u_input.b, vec3<u32>(u_input.b.x, arg_0, u_input.b.x)))) % vec3<u32>(32u)), 4294967295u, 4294967295u);
    let var_1 = ~global1.b;
    global0 = array<Struct_2, 11>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(899f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-270f, -1056f)) + _wgslsmith_f_op_f32(max(1000f, -1788f)))), 904f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1315f, -2375f)), 773f)))));
    return min(0u, u_input.b.x);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(global1.b.x, 2147483647i), arg_0.b.xy);
    var var_1 = Struct_1(arg_0.a, vec3<i32>(abs(u_input.a) & _wgslsmith_clamp_i32(-41807i, u_input.a, _wgslsmith_div_i32(-31884i, arg_0.b.x)), max(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, u_input.a, 0i, global1.b.x), vec4<i32>(-2283i, 1i, -1i, -2147483647i))), arg_0.b.x), 0i), ~_wgslsmith_sub_u32(countOneBits(firstTrailingBit(global1.d)), ~u_input.b.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, global1.c, 11100u, 0u), ~(~vec4<u32>(0u, u_input.b.x, global1.c, 1982u))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(global1.d, global1.c, 0u, 28913u), vec4<u32>(4294967295u, 4294967295u, global1.c, 26185u) & vec4<u32>(17688u, u_input.b.x, arg_0.d, 0u))));
    let var_2 = arg_0;
    var var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(915f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1135f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 833f) + 1f))), var_2, -arg_0.b.x);
    var var_4 = 24727i << (~(4294967295u | _wgslsmith_div_u32(var_1.d, global1.c)) % 32u);
    return global0[_wgslsmith_index_u32(global1.d, 11u)];
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    return func_2(arg_2.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = countOneBits(arg_0.b.b.zy);
    var_0 = ~firstTrailingBit(~firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 21734i), vec2<i32>(arg_0.c, u_input.a))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1068f, arg_0.a, -196f, 632f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-659f, arg_0.a, -100f, -478f)))))))));
    let var_2 = arg_0.b.a.x;
    var_0 = arg_1.yx;
    return !vec4<bool>(true, any(global1.a), false, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 11>();
    var var_0 = global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_add_u32(~global1.c >> (min(u_input.b.x, 65500u) % 32u), 1u)), 11u)];
    let var_1 = ~_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(4294967295u, 54567u, u_input.b.x, 29749u)), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(7282u), func_1(u_input.b.x, var_0.b.a.yz), ~u_input.b.x, 25227u), ~vec4<u32>(67453u, var_0.b.c, 31909u, global1.d) | reverseBits(vec4<u32>(global1.d, global1.d, 1u, var_0.b.c))));
    var var_2 = func_4(func_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.a, 1156f)))), Struct_1(select(vec3<bool>(true, var_0.b.a.x, true), vec3<bool>(false, global1.a.x, global1.a.x), var_0.b.a), vec3<i32>(0i, -2147483647i, global1.b.x), ~var_1, firstTrailingBit(1u)), _wgslsmith_sub_i32(global1.b.x, _wgslsmith_clamp_i32(-57916i, 1i, var_0.b.b.x))), global1.b.yz ^ -(~vec2<i32>(2147483647i, global1.b.x)), func_2(Struct_1(!global1.a, ~var_0.b.b, u_input.b.x, 1u)), u_input.a), ~(_wgslsmith_add_vec3_i32(var_0.b.b, vec3<i32>(-11772i, var_0.b.b.x, -34237i)) << (~vec3<u32>(23770u, global1.c, 4294967295u) % vec3<u32>(32u))), Struct_1(!(!global1.a), var_0.b.b, global1.d, var_0.b.d));
    var var_3 = var_0.a;
    var var_4 = !func_4(Struct_2(-900f, var_0.b, ~select(-1i, -32632i, true)), ~vec3<i32>(_wgslsmith_sub_i32(2507i, u_input.a), var_0.c, 1i ^ var_0.b.b.x), Struct_1(global1.a, -var_0.b.b, var_0.b.c, 1u | global1.c)).zz;
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~global1.b.x), u_input.a), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.x, -68772i, u_input.a, -45645i), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(15870i, global1.b.x, -1i, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.b.x, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, 12768i, global1.b.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(min(var_0.b.b.xy, vec2<i32>(global1.b.x, var_0.c)), var_0.b.b.yy), min(-global1.b.x, u_input.a), -var_0.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global1.b.xx, vec2<i32>(23124i, 51664i)), ~2147483647i))), firstLeadingBit(min(0u, 1u)), vec4<u32>(_wgslsmith_div_u32(4294967295u, ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x)), _wgslsmith_add_u32(func_2(func_3(Struct_2(var_0.a, var_0.b, 2147483647i), vec2<i32>(var_0.b.b.x, -11266i), global0[_wgslsmith_index_u32(34711u, 11u)], global1.b.x).b).b.c, var_0.b.d | _wgslsmith_clamp_u32(50511u, u_input.b.x, 32798u)), 0u, 0u), vec2<f32>(455f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a)))));
}

