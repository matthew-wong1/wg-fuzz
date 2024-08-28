struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: array<Struct_1, 20>;

var<private> global2: Struct_2 = Struct_2(vec4<i32>(2909i, -1i, -23633i, -1i), vec4<bool>(true, true, false, true), false, vec3<f32>(-322f, -1235f, -436f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    global0 = array<Struct_2, 19>();
    var var_0 = (select(4294967295u, ~max(u_input.d, u_input.c), true) >> (u_input.c % 32u)) ^ 1u;
    let var_1 = u_input.c;
    return 4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: f32) -> bool {
    let var_0 = Struct_1(arg_0.a, vec4<bool>(!(any(global2.b.zxz) && all(arg_2.xz)), true, false, arg_2.x));
    var var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(56189u, 19u)];
    global1 = array<Struct_1, 20>();
    let var_3 = _wgslsmith_add_vec3_i32(-_wgslsmith_clamp_vec3_i32(max(global2.a.wzz, _wgslsmith_div_vec3_i32(var_2.a.xyz, global2.a.zyw)), vec3<i32>(-1i) * -var_2.a.wwy, -_wgslsmith_mult_vec3_i32(var_2.a.xyx, vec3<i32>(global2.a.x, -79793i, 2147483647i))), u_input.b.wyz);
    return any(!(!vec3<bool>(all(arg_2.wy), true, true)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    global2 = Struct_2(arg_2.a, vec4<bool>(arg_2.b.x || false, _wgslsmith_f_op_f32(round(arg_2.d.x)) >= -677f, arg_0.b.x, !(arg_1 == global2.d.x)), true, _wgslsmith_f_op_vec3_f32(-global2.d));
    var var_0 = all(select(vec4<bool>(true, arg_2.c, global2.b.x || arg_2.b.x, false), vec4<bool>(min(-33104i, global2.a.x) != (arg_0.a.x >> (u_input.c % 32u)), true, false, !(!arg_0.c)), global2.c));
    global1 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_mult_vec3_u32(min(_wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.c), vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(0u, 1u, 2354u)), vec3<u32>(_wgslsmith_div_u32(0u, u_input.c), _wgslsmith_sub_u32(u_input.c, 1u), 1u)), abs(vec3<u32>(4294967295u, ~4294967295u, 11327u))), _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.d, u_input.c), vec3<u32>(0u, u_input.d, u_input.c)), ~(~abs(vec3<u32>(u_input.d, u_input.c, 1u)))));
    let var_2 = any(arg_2.b.yw);
    return arg_0.b;
}

fn func_2(arg_0: u32, arg_1: bool) -> i32 {
    global1 = array<Struct_1, 20>();
    var var_0 = Struct_1(global2.d.x, func_4(global0[_wgslsmith_index_u32(89788u, 19u)], -288f, Struct_2(vec4<i32>(firstLeadingBit(u_input.a.x), u_input.b.x, 34627i, u_input.b.x | global2.a.x), vec4<bool>(!arg_1, arg_1, func_3(Struct_1(global2.d.x, vec4<bool>(global2.b.x, global2.c, global2.b.x, true)), vec3<i32>(u_input.b.x, 0i, 0i), global2.b, 1180f), arg_1), any(global2.b), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(global2.d)))))));
    let var_1 = ~vec3<u32>(~69949u, arg_0 >> (3355u % 32u), _wgslsmith_dot_vec3_u32(~(vec3<u32>(39490u, arg_0, u_input.d) | vec3<u32>(u_input.c, 59618u, u_input.d)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_0, 0u), vec3<u32>(u_input.d, u_input.d, arg_0)))));
    let var_2 = Struct_2(u_input.b, func_4(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(21252u, ~u_input.d), 19u)], var_0.a, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u << (min(u_input.c, 45237u) % 32u), ~var_1.x), 19u)]), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.d.x), -1256f, var_0.a), vec3<f32>(_wgslsmith_f_op_f32(floor(global2.d.x)), global2.d.x, _wgslsmith_f_op_f32(-var_0.a)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(183f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-712f, _wgslsmith_f_op_f32(-global2.d.x)))))));
    return -global2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2.b.x, false);
    var_0 = 0u;
    let var_1 = global2.b.xz;
    var var_2 = Struct_2(vec4<i32>(-27597i | u_input.a.x, ~u_input.a.x, 2147483647i, select(func_2(0u, var_1.x), u_input.b.x, any(global2.b) != true)), func_4(Struct_2(_wgslsmith_mod_vec4_i32(u_input.b | global2.a, vec4<i32>(u_input.a.x, 0i, -2147483647i, global2.a.x) >> (vec4<u32>(u_input.d, 1u, u_input.d, u_input.d) % vec4<u32>(32u))), func_4(global0[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_f32(1511f + -178f), global0[_wgslsmith_index_u32(u_input.c, 19u)]), false, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, global2.d.x, 733f))))), -708f, Struct_2(global2.a, global2.b, var_1.x, _wgslsmith_f_op_vec3_f32(-global2.d))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global2.d.x, global2.d.x)), _wgslsmith_f_op_f32(round(-2107f)), _wgslsmith_f_op_f32(642f - 1083f)))));
    var var_3 = func_4(global0[_wgslsmith_index_u32(u_input.d, 19u)], _wgslsmith_f_op_f32(floor(-1022f)), Struct_2(global2.a, !var_2.b, any(select(!global2.b.yy, vec2<bool>(false, false), func_4(Struct_2(u_input.b, vec4<bool>(true, var_2.c, var_1.x, false), global2.b.x, var_2.d), var_2.d.x, global0[_wgslsmith_index_u32(16085u, 19u)]).zz)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 226f, 690f)), _wgslsmith_f_op_vec3_f32(-global2.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<u32>(1u, ~u_input.c, 4294967295u), firstTrailingBit(vec3<u32>(min(u_input.d, u_input.d), ~0u, ~u_input.c)), var_3.yxx), var_2.a.x, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(3695u, 4294967295u, 0u, 30205u) << (vec4<u32>(1u, 4294967295u, 1u, u_input.d) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(9805u, u_input.d, u_input.d, u_input.c), vec4<u32>(u_input.d, 1u, 24850u, 4294967295u)), vec4<u32>(u_input.d, 1u, u_input.c, u_input.d)) ^ ~(~vec4<u32>(u_input.d, u_input.d, 6406u, 11223u)), firstTrailingBit(vec3<i32>(abs(-2147483647i >> (u_input.d % 32u)), -31873i, -2147483647i)));
}

