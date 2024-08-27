struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), vec3<i32>(47060i, -28380i, -104577i), vec2<f32>(210f, 2405f), vec2<u32>(49787u, 4294967295u));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<i32, 24>;

var<private> global3: array<vec2<i32>, 19>;

var<private> global4: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(38997i, i32(-2147483648)), vec2<i32>(1i, -73278i), vec2<i32>(i32(-2147483648), -35629i), vec2<i32>(11671i, -1i), vec2<i32>(-1i, -58636i), vec2<i32>(-1i, 1i), vec2<i32>(19820i, -24935i), vec2<i32>(30966i, 41432i), vec2<i32>(-15391i, 0i), vec2<i32>(0i, 35153i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(vec2<bool>(true, arg_3.a.x), ~select(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-44953i, 28516i, u_input.a.x), vec3<i32>(global2[_wgslsmith_index_u32(global0.d.x, 24u)], global0.b.x, arg_3.b.x))), _wgslsmith_clamp_vec3_i32(~arg_3.b, vec3<i32>(13489i, 1568i, -2147483647i), arg_0.b << (vec3<u32>(4294967295u, arg_3.d.x, 1u) % vec3<u32>(32u))), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1102f, 791f))))))), arg_0.d);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1323f))));
    let var_2 = arg_2.yxy;
    let var_3 = arg_0;
    var var_4 = Struct_1(!(!global0.a), _wgslsmith_add_vec3_i32(-abs(vec3<i32>(arg_0.b.x, -21773i, 73763i) ^ global0.b), arg_0.b), arg_3.c, vec2<u32>(~((var_0.d.x & 0u) << (_wgslsmith_div_u32(0u, arg_0.d.x) % 32u)), 0u));
    return 4691i ^ arg_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    let var_0 = ~(-vec4<i32>(-u_input.a.x ^ func_3(arg_0, vec4<i32>(u_input.a.x, -55513i, 4504i, 0i), vec4<i32>(13863i, -60768i, 19826i, global2[_wgslsmith_index_u32(global0.d.x, 24u)]), Struct_1(global0.a, vec3<i32>(2987i, u_input.a.x, global0.b.x), global0.c, arg_0.d)), _wgslsmith_dot_vec2_i32(global0.b.zx, arg_0.b.xz), _wgslsmith_mult_i32(global0.b.x, -20253i), u_input.a.x));
    global2 = array<i32, 24>();
    var var_1 = arg_0;
    global1 = select(select(vec2<bool>(arg_0.b.x > global2[_wgslsmith_index_u32(firstLeadingBit(11157u), 24u)], all(!vec4<bool>(arg_1, arg_1, var_1.a.x, global1.x))), select(select(select(global0.a, vec2<bool>(global0.a.x, global1.x), true), select(vec2<bool>(arg_1, var_1.a.x), arg_0.a, global0.a), true), vec2<bool>(true, all(vec4<bool>(false, true, arg_0.a.x, global1.x))), any(select(vec4<bool>(false, true, true, true), vec4<bool>(global0.a.x, var_1.a.x, global0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, true, global1.x, global0.a.x)))), any(vec2<bool>(true, arg_0.a.x)) == select(global1.x, !global0.a.x, true)), !(!select(select(global0.a, vec2<bool>(arg_0.a.x, arg_1), global0.a), !vec2<bool>(var_1.a.x, false), select(var_1.a, arg_0.a, arg_1))), !arg_0.a.x);
    let var_2 = !select(!vec3<bool>(true, false, global1.x), select(!(!vec3<bool>(global1.x, global0.a.x, global1.x)), !select(vec3<bool>(false, arg_0.a.x, true), vec3<bool>(var_1.a.x, global0.a.x, false), vec3<bool>(var_1.a.x, false, false)), vec3<bool>(false, arg_0.a.x, true)), select(select(!vec3<bool>(arg_0.a.x, var_1.a.x, false), select(vec3<bool>(true, var_1.a.x, false), vec3<bool>(true, var_1.a.x, arg_1), vec3<bool>(false, false, false)), vec3<bool>(arg_1, global1.x, false)), vec3<bool>(global1.x, true, arg_1), true != all(vec3<bool>(true, true, global0.a.x))));
    return select(select(select(select(vec4<bool>(arg_0.a.x, arg_0.a.x, true, var_1.a.x), !vec4<bool>(true, var_1.a.x, true, false), !vec4<bool>(var_1.a.x, arg_1, global0.a.x, var_1.a.x)), vec4<bool>(global0.a.x | false, !var_1.a.x, any(vec4<bool>(true, var_2.x, true, arg_0.a.x)), true), -global2[_wgslsmith_index_u32(global0.d.x, 24u)] >= var_1.b.x), vec4<bool>(global0.a.x, !arg_1 || true, any(var_2), true), !(!(!var_1.a.x))), !vec4<bool>(!all(vec3<bool>(var_1.a.x, false, var_2.x)), !(arg_0.a.x & false), true, all(vec4<bool>(global0.a.x, true, arg_1, arg_0.a.x))), all(!select(!var_1.a, vec2<bool>(false, global0.a.x), var_2.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> f32 {
    var var_0 = false;
    var_0 = global1.x;
    global2 = array<i32, 24>();
    let var_1 = any(!func_2(arg_1, 787f <= _wgslsmith_f_op_f32(-arg_1.c.x)));
    var var_2 = arg_1;
    return -376f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 19>();
    global1 = global0.a;
    global1 = vec2<bool>(!(!global1.x), true);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(43704u, 24u)], Struct_1(vec2<bool>(global0.a.x, global0.a.x), vec3<i32>(-2147483647i, u_input.a.x, 0i), global0.c, vec2<u32>(global0.d.x, global0.d.x)), u_input.a.x, global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -117f), global0.c.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -1278f, global0.c.x) + vec3<f32>(global0.c.x, 177f, -313f)) * vec3<f32>(global0.c.x, 299f, global0.c.x))) - vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1170f) * _wgslsmith_f_op_f32(260f + -1009f)), _wgslsmith_f_op_f32(-global0.c.x))));
    var var_1 = Struct_1(!func_2(Struct_1(vec2<bool>(global1.x, true), _wgslsmith_mod_vec3_i32(vec3<i32>(63647i, 2147483647i, global0.b.x), vec3<i32>(2147483647i, global0.b.x, global2[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c.x, global0.c.x), var_0.yy, global0.a)), select(vec2<u32>(global0.d.x, 38941u), global0.d, vec2<bool>(global0.a.x, false))), false | all(global0.a)).wx, vec3<i32>(~58380i, global0.b.x, ~1i) >> (~vec3<u32>(~global0.d.x, global0.d.x, 54518u) % vec3<u32>(32u)), global0.c, global0.d);
    var_0 = vec3<f32>(619f, _wgslsmith_f_op_f32(-640f - 554f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))) - _wgslsmith_f_op_f32(func_1(2147483647i, Struct_1(vec2<bool>(true, true), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, var_1.b.x, u_input.a.x), vec3<i32>(40649i, 1i, var_1.b.x)), _wgslsmith_f_op_vec2_f32(-var_1.c), vec2<u32>(global0.d.x, global0.d.x) & var_1.d), -global0.b.x | _wgslsmith_dot_vec2_i32(global0.b.yz, vec2<i32>(var_1.b.x, -23176i)), func_2(Struct_1(vec2<bool>(global1.x, global1.x), vec3<i32>(12221i, 1i, var_1.b.x), var_0.yy, vec2<u32>(4294967295u, 30499u)), global0.c.x != 311f).x))));
    let var_2 = 48982u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -808f))), 573f, ~select(max(firstLeadingBit(vec4<u32>(var_2, 7457u, global0.d.x, 87911u)), vec4<u32>(7537u, global0.d.x, var_1.d.x, global0.d.x) & vec4<u32>(22565u, 36815u, var_2, 0u)), ~vec4<u32>(global0.d.x, global0.d.x, var_2, 1u) | vec4<u32>(global0.d.x, 1u, 26235u, global0.d.x), select(vec4<bool>(false, true, global0.a.x, false), !vec4<bool>(true, global1.x, true, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, var_1.a.x, var_1.a.x))), var_1.b);
}

