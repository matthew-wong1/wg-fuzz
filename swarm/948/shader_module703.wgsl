struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(27604u, 1u), vec2<u32>(2770u, 1u), vec2<u32>(197u, 0u), vec2<u32>(18580u, 37712u), vec2<u32>(0u, 1u), vec2<u32>(26716u, 43520u), vec2<u32>(4294967295u, 8100u), vec2<u32>(0u, 59779u), vec2<u32>(9891u, 0u), vec2<u32>(0u, 53764u), vec2<u32>(1u, 4294967295u), vec2<u32>(41066u, 7700u), vec2<u32>(1617u, 6438u), vec2<u32>(4294967295u, 5287u), vec2<u32>(11295u, 30950u), vec2<u32>(1u, 14292u), vec2<u32>(0u, 18356u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(29373u, 2499u), vec2<u32>(4294967295u, 0u), vec2<u32>(9344u, 4294967295u), vec2<u32>(5071u, 0u), vec2<u32>(51311u, 1u), vec2<u32>(0u, 13322u), vec2<u32>(7029u, 4294967295u), vec2<u32>(0u, 49772u), vec2<u32>(2715u, 1u));

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(3540i, false, false), Struct_1(-14082i, true, false), Struct_1(64919i, true, true), Struct_1(66696i, true, true), Struct_1(-26326i, false, false), Struct_1(i32(-2147483648), false, true), Struct_1(2147483647i, true, false), Struct_1(i32(-2147483648), false, true), Struct_1(9486i, true, true), Struct_1(-13567i, false, true), Struct_1(0i, false, false), Struct_1(3763i, false, true));

var<private> global3: array<vec4<f32>, 12>;

var<private> global4: array<vec2<i32>, 21>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<u32>) -> bool {
    let var_0 = Struct_1(~_wgslsmith_div_i32(i32(-1i) * -13195i, -1i), any(!(!vec4<bool>(arg_1.x, true, false, arg_1.x))), arg_0);
    global4 = array<vec2<i32>, 21>();
    let var_1 = global4[_wgslsmith_index_u32(~0u, 21u)];
    global2 = array<Struct_1, 12>();
    let var_2 = Struct_1(31578i, select(arg_1.x || true, arg_0, true), any(!select(select(vec3<bool>(var_0.c, false, arg_1.x), vec3<bool>(arg_1.x, false, arg_0), vec3<bool>(true, arg_1.x, true)), select(vec3<bool>(false, true, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(var_0.c, false, true)), false)));
    return false;
}

fn func_2() -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 28u)];
    let var_1 = select(!vec2<bool>(true, u_input.a != ~u_input.a), !vec2<bool>(any(vec2<bool>(false, var_0.b)), select(true, false, true)), select(!vec2<bool>(var_0.b, any(vec2<bool>(var_0.b, false))), !vec2<bool>(var_0.b || false, var_0.b), !(!all(vec2<bool>(var_0.c, true)))));
    var_0 = Struct_1(5166i, func_3(!var_1.x, var_1, firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), 0u << (u_input.a % 32u), 0u, ~1u))), all(vec4<bool>(true, any(!vec3<bool>(false, var_0.b, var_0.c)), var_0.b, var_1.x)));
    var var_2 = Struct_1(-25891i, 0u >= u_input.a, false);
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(~u_input.a, 21u)], -_wgslsmith_div_vec2_i32(-vec2<i32>(var_2.a, var_0.a), vec2<i32>(2147483647i, var_0.a))), false, all(vec3<bool>(true, var_0.b, select(any(vec2<bool>(false, true)), true, var_0.b))));
    return vec3<bool>(true, true, !(~(~(-23698i)) < _wgslsmith_div_i32(-25588i, var_2.a)));
}

fn func_1() -> vec3<u32> {
    global1 = array<Struct_1, 28>();
    let var_0 = true;
    let var_1 = !any(func_2());
    global0 = array<vec2<u32>, 28>();
    global1 = array<Struct_1, 28>();
    return _wgslsmith_div_vec3_u32(abs(~vec3<u32>(firstTrailingBit(0u), u_input.a, ~u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~u_input.a | 1u, u_input.a), _wgslsmith_clamp_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(48659u, firstLeadingBit(4294967295u), ~4294967295u)), min(~(vec3<u32>(50277u, u_input.a, u_input.a) << (vec3<u32>(141070u, u_input.a, 39541u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a) >> (vec3<u32>(4294967295u, u_input.a, 1u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(func_1(), ~vec3<u32>(_wgslsmith_div_u32(abs(u_input.a), 1u), u_input.a, u_input.a));
    let var_1 = vec3<bool>(false, true, !(!func_2().x));
    global1 = array<Struct_1, 28>();
    var var_2 = var_1;
    let var_3 = !(true | var_1.x);
    var var_4 = Struct_1(abs(firstTrailingBit(firstTrailingBit(-17151i)) & 35376i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-459f + -1885f)), 985f, false)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2001f) + -1000f), !var_2.x);
    global0 = array<vec2<u32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1296f * 297f))), _wgslsmith_f_op_f32(f32(-1f) * -1436f)))), max(abs(countOneBits(~0i)), firstTrailingBit(_wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(min(12185u, 35051u), 21u)], firstTrailingBit(vec2<i32>(var_4.a, var_4.a))))));
}

