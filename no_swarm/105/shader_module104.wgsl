struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-1i, -1000f), Struct_1(-1i, -1198f), Struct_1(i32(-2147483648), -468f), Struct_1(i32(-2147483648), -354f), Struct_1(-18750i, -366f), Struct_1(-20035i, 1256f), Struct_1(0i, 1351f), Struct_1(2147483647i, -1000f), Struct_1(-58669i, -640f), Struct_1(-14120i, -504f), Struct_1(-60145i, 1132f), Struct_1(-1i, 1371f), Struct_1(2147483647i, 614f), Struct_1(0i, 302f), Struct_1(35288i, 1238f), Struct_1(2147483647i, -1562f), Struct_1(-17272i, -410f), Struct_1(1i, -398f), Struct_1(18507i, 489f), Struct_1(8069i, 674f), Struct_1(0i, -176f), Struct_1(0i, 147f), Struct_1(i32(-2147483648), -1448f));

var<private> global2: array<i32, 11>;

var<private> global3: i32 = 1i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(35057u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 1u), 18u)]), 23u)];
    global0 = array<u32, 18>();
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    return Struct_1(_wgslsmith_sub_i32(-13586i, -var_1.a), var_0.b);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<i32> {
    let var_0 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 1643f, arg_0.b) * vec3<f32>(701f, 134f, 536f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 653f, arg_0.b) * vec3<f32>(-622f, 655f, arg_0.b)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1382f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), -1000f)));
    global0 = array<u32, 18>();
    var var_1 = vec2<bool>(select(false, !(arg_1.x || (global0[_wgslsmith_index_u32(1u, 18u)] <= 4294967295u)), arg_1.x), !arg_1.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(135f, -564f, var_0.b), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, -258f, -381f), vec3<f32>(544f, arg_0.b, -107f)), all(arg_1)))).b)) + 665f);
    global0 = array<u32, 18>();
    return vec3<i32>(_wgslsmith_mod_i32(~30259i, arg_0.a), _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.a, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 11u)], -34853i), vec3<i32>(var_0.a, -1i, global2[_wgslsmith_index_u32(u_input.a, 11u)]) >> (u_input.b.wxx % vec3<u32>(32u))), 1361i), countOneBits(-1i));
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    let var_0 = vec4<u32>(~(~1u), ~39495u, ~(~(u_input.a ^ u_input.b.x)) & _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) >> (u_input.a % 32u), 35463u), 4294967295u);
    var var_1 = global2[_wgslsmith_index_u32(0u, 11u)];
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    var_1 = global2[_wgslsmith_index_u32(~1u, 11u)];
    return global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~1u), 18u)], 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~_wgslsmith_dot_vec3_i32(func_1(Struct_1(-2147483647i, -1083f), vec2<bool>(false, true)), _wgslsmith_div_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 11u)], -1i, global2[_wgslsmith_index_u32(40745u, 11u)]), ~(vec3<i32>(0i, 32419i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27336u, 18u)], 11u)]) << (u_input.b.yww % vec3<u32>(32u)))));
    var var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 23u)];
    var var_1 = Struct_1(_wgslsmith_mod_i32(var_0.a, -func_3(_wgslsmith_f_op_f32(f32(-1f) * -585f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(347f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, 911f, -230f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1125f, 740f, 1255f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - -192f)) * -614f), -123f, var_0.b), vec3<bool>(any(vec3<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true)), ~(~35246u) > (abs(29005u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 0u, global0[_wgslsmith_index_u32(18698u, 18u)])) % 32u)), any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, false))))));
    let var_3 = Struct_1(min(_wgslsmith_mult_i32(var_1.a, -(29229i ^ var_0.a)), var_1.a), _wgslsmith_f_op_f32(-var_1.b));
    var var_4 = global1[_wgslsmith_index_u32(~(~abs(32095u)), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(firstLeadingBit(-2147483647i), 1i), -func_1(func_2(vec3<f32>(1382f, var_1.b, var_2.x)), vec2<bool>(true, true)).x | 8630i, _wgslsmith_add_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51679u, 18u)], 18u)]))), reverseBits(_wgslsmith_mod_vec3_u32(u_input.b.yxy, vec3<u32>(u_input.b.x, 47930u, 1u))) >> (u_input.b.wxz % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 1u), ~u_input.b.yx), 1u, firstTrailingBit(~u_input.b.x)));
}

