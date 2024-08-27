struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: bool = true;

var<private> global2: Struct_3 = Struct_3(vec2<bool>(true, true), 1u, 43744u, 795f, Struct_1(vec4<i32>(0i, 15000i, 34691i, -1i), 0u, vec4<i32>(2147483647i, -1i, -1i, 2147483647i)));

var<private> global3: vec2<u32> = vec2<u32>(36748u, 15133u);

var<private> global4: array<Struct_4, 13>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> vec3<f32> {
    var var_0 = global4[_wgslsmith_index_u32(countOneBits(1u), 13u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.b)) + vec3<f32>(184f, global2.d, global2.d)), var_0.b, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c, global3.x), 24u)], _wgslsmith_f_op_f32(floor(2473f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global2.d)))))), select(select(select(vec3<bool>(arg_2, true, arg_2), select(vec3<bool>(true, global2.a.x, var_0.a.x), vec3<bool>(var_0.a.x, global2.a.x, true), vec3<bool>(global2.a.x, global2.a.x, false)), select(true, var_0.a.x, global2.a.x)), var_0.a, all(select(vec4<bool>(true, true, var_0.a.x, arg_2), vec4<bool>(false, var_0.a.x, false, false), true))), vec3<bool>(all(var_0.a.xz) || !global2.a.x, true, all(!vec2<bool>(arg_2, false))), 1u <= arg_0.a.b)));
    global4 = array<Struct_4, 13>();
    let var_2 = var_1.x;
    let var_3 = ~_wgslsmith_sub_u32(arg_0.a.b, ~107746u);
    return _wgslsmith_f_op_vec3_f32(round(var_0.b));
}

fn func_2() -> bool {
    global1 = true;
    global2 = Struct_3(vec2<bool>(((1u > u_input.c) || any(vec4<bool>(true, true, true, false))) || true, global0[_wgslsmith_index_u32(firstLeadingBit(~global3.x), 24u)] >= 548f), 70467u, _wgslsmith_mod_u32(~u_input.a, 1u), global2.d, global2.e);
    global0 = array<f32, 24>();
    var var_0 = Struct_4(select(select(!vec3<bool>(true, global2.a.x, true), select(vec3<bool>(true, global2.a.x, global2.a.x), vec3<bool>(true, false, global2.a.x), true), any(!vec3<bool>(true, global2.a.x, true))), !vec3<bool>(u_input.b < 0i, false, false), global2.a.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec4<i32>(-2147483647i, -19654i, global2.e.a.x, global2.e.a.x) | global2.e.c, 1u, vec4<i32>(global2.e.c.x, u_input.b, u_input.b, 28429i))), global3.x, any(select(vec4<bool>(true, global2.a.x, global2.a.x, global2.a.x), vec4<bool>(global2.a.x, true, global2.a.x, true), global2.e.c.x > -20955i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(41916u, 24u)])) * _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)), 911f)));
    return !all(select(vec3<bool>(true, var_0.a.x, var_0.a.x), !var_0.a, false));
}

fn func_1() -> vec2<u32> {
    global1 = !any(!(!vec3<bool>(false, global2.a.x, true))) || false;
    global1 = global2.a.x | !func_2();
    var var_0 = any(select(vec4<bool>(any(select(vec2<bool>(global2.a.x, true), global2.a, global2.a.x)), all(vec2<bool>(false, false)), any(!global2.a), global2.a.x), vec4<bool>(global2.a.x, true, global2.a.x, true), select(!select(vec4<bool>(false, global2.a.x, false, true), vec4<bool>(global2.a.x, false, global2.a.x, false), vec4<bool>(global2.a.x, true, global2.a.x, true)), select(vec4<bool>(true, false, true, global2.a.x), !vec4<bool>(true, false, global2.a.x, global2.a.x), select(vec4<bool>(global2.a.x, true, global2.a.x, true), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), global2.a.x)), !select(vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), vec4<bool>(global2.a.x, true, global2.a.x, false), vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x)))));
    global3 = vec2<u32>(global3.x, countOneBits(reverseBits(global2.b)));
    global2 = Struct_3(global2.a, global3.x, _wgslsmith_sub_u32(~global3.x, max(global2.b, ~(~0u))), -1238f, Struct_1(~(-(global2.e.a << (vec4<u32>(73950u, 1u, 37087u, global3.x) % vec4<u32>(32u)))), _wgslsmith_mod_u32(12178u, abs(1u)), _wgslsmith_add_vec4_i32(firstTrailingBit(-vec4<i32>(-32195i, 2147483647i, 2787i, 0i)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b, global2.e.c.x, global2.e.c.x, 2863i), global2.e.a, false), vec4<i32>(u_input.b, global2.e.a.x, u_input.b, global2.e.a.x), ~vec4<i32>(22215i, global2.e.c.x, 37431i, u_input.b)))));
    return ~u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_4, 13>();
    global4 = array<Struct_4, 13>();
    global3 = abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global3.x, _wgslsmith_dot_vec2_u32(func_1(), u_input.d)), countOneBits(~u_input.d)));
    var var_0 = Struct_1(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.b, global2.e.c.x, 23324i, 2147483647i) << (vec4<u32>(44261u, global2.b, 5156u, 0u) % vec4<u32>(32u))), global2.e.a), ~0u, global2.e.a);
    let var_1 = -1696f;
    global2 = Struct_3(vec2<bool>(false, global2.a.x), ~20496u, max(var_0.b, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(global2.e), global3.x, global2.a.x)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d + var_1))))), global2.e);
    global4 = array<Struct_4, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~min(~select(global3.x, u_input.a, false), ~global3.x), u_input.b << (26418u % 32u));
}

