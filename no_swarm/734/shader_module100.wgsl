struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(1066f, -1000f), vec2<f32>(1310f, -597f), vec2<f32>(732f, 152f));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: Struct_2;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> bool {
    var var_0 = global3.a;
    let var_1 = global1[_wgslsmith_index_u32(0u, 3u)];
    var var_2 = Struct_1(-321f, arg_0, !vec2<bool>(all(select(vec4<bool>(var_0.c.x, true, var_0.c.x, false), vec4<bool>(false, global2.x, false, false), true)), var_0.c.x));
    global3 = Struct_2(global3.a, global3.b);
    let var_3 = global0[_wgslsmith_index_u32(21887u, 28u)];
    return all(!select(!(!vec4<bool>(var_2.c.x, true, true, arg_1.x)), select(!vec4<bool>(var_0.c.x, global3.a.c.x, true, var_0.c.x), vec4<bool>(global2.x, global3.b.c.x, false, false), global3.a.c.x), vec4<bool>(select(true, true, false), arg_1.x & global3.b.c.x, true, var_0.c.x)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = global3.b.c;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.b - -1617f) + global3.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1505f + _wgslsmith_f_op_f32(sign(-1190f))), 343f)) + _wgslsmith_f_op_f32(max(global3.a.b, _wgslsmith_f_op_f32(-global3.a.b)))));
    var var_2 = firstLeadingBit(-_wgslsmith_mult_vec3_i32(-abs(u_input.a), vec3<i32>(_wgslsmith_sub_i32(-22569i, -2147483647i), -23985i, 1i)));
    var var_3 = Struct_2(Struct_1(var_1.x, -221f, vec2<bool>(!func_3(var_1.x, vec2<bool>(global3.b.c.x, global2.x)), global3.a.c.x)), global3.b);
    global1 = array<vec2<f32>, 3>();
    return Struct_2(Struct_1(1358f, 518f, var_3.b.c), Struct_1(var_3.b.a, var_3.a.b, global3.b.c));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = true;
    var var_1 = func_2((select(arg_3.x, !var_0, true) | !all(vec3<bool>(false, arg_3.x, false))) & true);
    var_1 = Struct_2(func_2(var_1.b.c.x).a, Struct_1(-847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2651f, _wgslsmith_f_op_f32(exp2(var_1.b.a)), all(vec3<bool>(false, global3.a.c.x, false)))) - 814f), var_1.a.c));
    var var_2 = func_2(arg_2.x <= reverseBits(4615u));
    var var_3 = Struct_2(var_2.a, global3.b);
    return 911f;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<bool> {
    global1 = array<vec2<f32>, 3>();
    var var_0 = 12046u;
    let var_1 = vec4<f32>(1573f, arg_0.b, arg_1.x, global3.b.a);
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(select(_wgslsmith_sub_i32(~u_input.b.x, ~(-5904i)), abs(global0[_wgslsmith_index_u32(0u, 28u)]), false), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 0i), reverseBits(~38993i & max(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]))), ~(_wgslsmith_add_vec3_i32(~u_input.a, vec3<i32>(-47117i, global0[_wgslsmith_index_u32(1u, 28u)], 0i)) & max(vec3<i32>(-20126i, global0[_wgslsmith_index_u32(1u, 28u)], -1i), firstLeadingBit(u_input.a))), countOneBits(~vec3<i32>(_wgslsmith_mod_i32(53133i, -2147483647i), _wgslsmith_mod_i32(33051i, -35416i), 401i ^ u_input.a.x)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(arg_0.a + global3.b.a))), _wgslsmith_f_op_f32(-358f - func_2(arg_0.c.x).b.a), !vec2<bool>(false, func_3(arg_0.b, vec2<bool>(true, global3.b.c.x)))), arg_0);
    return vec2<bool>(arg_0.c.x, !(!(!var_3.b.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(func_4(Struct_1(_wgslsmith_f_op_f32(global3.b.b - -127f), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(global3.a.b - global3.a.a), u_input.b.x, vec4<u32>(1u, 1u, 1u, 1u), !vec3<bool>(global3.b.c.x, true, global2.x))), vec2<bool>(false & global2.x, !global2.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.a, global3.b.b, global3.b.b))))), !(!vec2<bool>(0i < u_input.b.x, global3.a.b == -753f)), global3.b.c.x);
    let var_0 = func_2(true).b;
    var var_1 = var_0.c.x;
    var var_2 = func_2(true);
    var var_3 = func_2(func_3(_wgslsmith_f_op_f32(round(global3.b.a)), vec2<bool>(true, _wgslsmith_f_op_f32(var_0.a - 1290f) <= _wgslsmith_f_op_f32(f32(-1f) * -2093f)))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -810f)), 130f) * _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(4294967295u, 3u)] - _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(select(103805u, 1u, global2.x), 3u)] - global1[_wgslsmith_index_u32(max(1u, 1u), 3u)]))), vec3<f32>(var_2.b.a, _wgslsmith_f_op_f32(global3.b.a - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(step(global3.b.a, 790f)), u_input.a.x ^ global0[_wgslsmith_index_u32(34728u, 28u)], ~vec4<u32>(39888u, 4294967295u, 62766u, 50334u), vec3<bool>(false, var_2.b.c.x, true)))), global3.b.a));
}

