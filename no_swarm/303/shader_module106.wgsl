struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<bool, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = 396f;
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = !select(!vec4<bool>(var_1.x, true, u_input.a.x == u_input.a.x, !var_1.x), !(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 29u)], false, true, global2[_wgslsmith_index_u32(arg_0.b.x, 29u)]))), global2[_wgslsmith_index_u32(select(1u, 1u, !var_1.x), 29u)] || true);
    var var_3 = global0[_wgslsmith_index_u32(reverseBits(8842u) | _wgslsmith_mult_u32(82995u, u_input.c.x), 1u)];
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409f + 1675f));
    return -651f;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> i32 {
    let var_0 = firstTrailingBit(select(countOneBits(_wgslsmith_mult_i32(0i, abs(-42781i))), arg_0.x, arg_1.a.x));
    let var_1 = arg_1.a.x;
    global2 = array<bool, 29>();
    var var_2 = global1[_wgslsmith_index_u32(abs(arg_1.b.b.x), 9u)];
    var var_3 = 0u;
    return 0i ^ u_input.a.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.b), 29u)];
    let var_1 = reverseBits(min(~1i, func_3(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.d, u_input.d), vec4<i32>(u_input.a.x, 1i, u_input.a.x, 7400i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 29907i)), Struct_2(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 29u)], true, true, global2[_wgslsmith_index_u32(u_input.b, 29u)]), global1[_wgslsmith_index_u32(u_input.b, 9u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(215f, -362f, false)), -110f)), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 29u)], false, global2[_wgslsmith_index_u32(84277u, 29u)], false), vec4<bool>(global2[_wgslsmith_index_u32(12262u, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)], false, true), !vec4<bool>(global2[_wgslsmith_index_u32(47746u, 29u)], true, global2[_wgslsmith_index_u32(u_input.c.x, 29u)], false)))));
    global2 = array<bool, 29>();
    let var_2 = Struct_2(vec4<bool>(true, false, global2[_wgslsmith_index_u32(31275u, 29u)], true), Struct_1(vec4<u32>(select(u_input.b, u_input.b ^ 50551u, false), _wgslsmith_mult_u32(~20102u, 0u), u_input.c.x, ~u_input.b | ~u_input.c.x), ~(~select(vec4<u32>(u_input.b, 51215u, 40524u, 54632u), u_input.c, global2[_wgslsmith_index_u32(4294967295u, 29u)]))));
    var_0 = true;
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, var_2.b.b.x, max(u_input.c.x, 9476u << (firstLeadingBit(_wgslsmith_sub_u32(u_input.b, 0u)) % 32u))), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(u_input.b, 9u)])))));
    var var_1 = 35160i;
    var var_2 = ~2809u;
    var_0 = global1[_wgslsmith_index_u32(23128u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-443f, 221f))), _wgslsmith_f_op_f32(-275f - _wgslsmith_f_op_f32(select(-1195f, 1350f, false))))), -(u_input.a >> (select(var_0.a.yzw, var_0.b.wxy, all(vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 29u)], global2[_wgslsmith_index_u32(var_0.a.x, 29u)], global2[_wgslsmith_index_u32(10938u, 29u)], true))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(func_2(_wgslsmith_f_op_f32(f32(-1f) * -145f))))), 1i, var_0.a.x & u_input.b);
}

