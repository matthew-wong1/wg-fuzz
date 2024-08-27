struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32> = vec3<f32>(1207f, -614f, 1037f);

var<private> global2: array<bool, 11> = array<bool, 11>(true, true, false, true, true, false, false, false, true, true, false);

var<private> global3: array<f32, 13> = array<f32, 13>(1096f, -2671f, -1112f, 1999f, 227f, 224f, -593f, 1466f, 1204f, -1490f, -2877f, -1831f, 648f);

var<private> global4: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global4 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 13u)]);
    let var_0 = !select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 13u)]) > -728f, false, true) & arg_0.x;
    var var_1 = Struct_4(!vec2<bool>(!(!var_0), !(false & arg_0.x)), Struct_1(u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 13u)]), (u_input.b.x >= u_input.b.x) && global2[_wgslsmith_index_u32(~(~u_input.c), 11u)], Struct_2(select(vec3<bool>(false, all(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 11u)])), false), arg_0.zyw, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(382f, global1.x, -1965f, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.x, global3[_wgslsmith_index_u32(u_input.a.x, 13u)], global3[_wgslsmith_index_u32(u_input.a.x, 13u)]) + vec4<f32>(global0.b, 946f, 1361f, global0.b))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1565f, global1.x, 149f, global1.x), vec4<f32>(265f, global3[_wgslsmith_index_u32(0u, 13u)], global1.x, global1.x)), vec4<f32>(1017f, 238f, global3[_wgslsmith_index_u32(27191u, 13u)], global3[_wgslsmith_index_u32(u_input.c, 13u)])))));
    return _wgslsmith_dot_vec4_u32(select(~(~_wgslsmith_add_vec4_u32(u_input.a, u_input.a)), abs(vec4<u32>(4294967295u, 1u, u_input.a.x, 1u)), all(vec2<bool>(false, any(arg_0)))), u_input.a);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: bool) -> Struct_3 {
    global0 = Struct_1(abs(2147483647i), global3[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(max(47052u, func_3(vec4<bool>(arg_2, arg_1.x, arg_1.x, global2[_wgslsmith_index_u32(55036u, 11u)]))), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.a.x), arg_0)), ~_wgslsmith_div_u32(~6405u, 76069u), arg_2), 13u)]);
    return Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 13u)]))), 1f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(-261f, 763f))), _wgslsmith_f_op_f32(ceil(715f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -438f, 295f, 1289f))), all(!(!vec4<bool>(false, arg_1.x, true, true))))), !(!vec4<bool>(arg_2, false, true, false)), select(vec4<u32>(~u_input.c, 4294967295u, firstLeadingBit(u_input.a.x), select(1u, u_input.a.x, global2[_wgslsmith_index_u32(u_input.c, 11u)])), u_input.a, any(select(select(arg_1, arg_1, true), arg_1, vec3<bool>(false, arg_2, arg_2)))), select(vec4<bool>(!all(vec2<bool>(false, false)), !any(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(45893u, 11u)])), global3[_wgslsmith_index_u32(reverseBits(arg_0.x), 13u)] >= global3[_wgslsmith_index_u32(4294967295u, 13u)], all(arg_1.yx)), !vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 11u)], all(vec4<bool>(false, true, false, true)), all(vec3<bool>(true, true, arg_1.x)), true), arg_2 | ((arg_1.x == arg_2) || (arg_1.x & arg_1.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_5) -> i32 {
    let var_0 = vec2<u32>(4294967295u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x));
    global1 = arg_2.a.a.wwz;
    global2 = array<bool, 11>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1442f));
    let var_2 = Struct_2(vec3<bool>(false, !any(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.c.x, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], arg_2.a.d.x)), any(arg_1.d.yzy)));
    return -16884i;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> StorageBuffer {
    let var_0 = 1i;
    var var_1 = ~func_4(u_input.c, func_2(~vec2<u32>(arg_0, 23499u), select(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(22648u, 11u)], true), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(u_input.c, 11u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 11u)], true, false), false), !vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(1u, 11u)])), !global2[_wgslsmith_index_u32(reverseBits(65524u), 11u)]), Struct_5(func_2(u_input.a.xx >> (u_input.a.wz % vec2<u32>(32u)), func_2(u_input.a.zx, vec3<bool>(false, true, true), global2[_wgslsmith_index_u32(u_input.a.x, 11u)]).b.xwx, true & global2[_wgslsmith_index_u32(arg_0, 11u)])));
    global4 = -450f;
    var var_2 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], 183f, 937f, global0.b)))), !func_2(vec2<u32>(4294967295u, 4294967295u), select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 11u)], true, false), vec3<bool>(global2[_wgslsmith_index_u32(96590u, 11u)], global2[_wgslsmith_index_u32(13436u, 11u)], false), global2[_wgslsmith_index_u32(37080u, 11u)]), -23859i < global0.a).b, ~u_input.a, vec4<bool>(true, global2[_wgslsmith_index_u32(36245u, 11u)], !global2[_wgslsmith_index_u32(1u, 11u)], false)));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(_wgslsmith_sub_i32(-u_input.b.x, -arg_2)), _wgslsmith_add_i32(reverseBits(min(global0.a, 17906i)), i32(-1i) * -arg_1.a), var_0), vec3<i32>(_wgslsmith_div_i32(-arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(arg_1.a, u_input.b.x)) | -59981i), arg_2, arg_1.a));
    return StorageBuffer(var_2.a.c.x, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1120f)))), _wgslsmith_div_f32(1206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(global0.b - global1.x))), _wgslsmith_f_op_f32(136f - _wgslsmith_f_op_f32(func_2(var_2.a.c.yy, vec3<bool>(var_2.a.b.x, true, true), var_2.a.d.x).a.x * var_2.a.a.x)), _wgslsmith_f_op_f32(803f - -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1397f), _wgslsmith_f_op_f32(floor(global0.b)), !global2[_wgslsmith_index_u32(u_input.a.x, 11u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -873f))), global3[_wgslsmith_index_u32(1u ^ _wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.zy), 13u)], global0.b), vec4<bool>(select(1u == u_input.c, global1.x == global1.x, !global2[_wgslsmith_index_u32(0u, 11u)]), any(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(0u, 11u)], true)), true, true), abs(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, 4294967295u), u_input.a))), select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 11u)], false, global2[_wgslsmith_index_u32(21451u, 11u)], false), !(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(10712u, 11u)], true)), select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], false, true, false), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(u_input.c, 11u)]), false), vec4<bool>(global2[_wgslsmith_index_u32(87433u, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(u_input.c, 11u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(11913u, 11u)], false, true)))));
    let var_1 = Struct_2(vec3<bool>(true, var_0.a.b.x, (var_0.a.d.x | var_0.a.d.x) && var_0.a.d.x));
    let var_2 = var_0.a.c.x;
    let var_3 = true;
    let var_4 = var_1.a.x;
    let x = u_input.a;
    s_output = func_1(~(4294967295u | reverseBits(~u_input.a.x)), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.a, global0.a, global0.a), vec4<i32>(-2147483647i, global0.a, -1i, global0.a)), u_input.b.x) >> ((_wgslsmith_dot_vec3_u32(u_input.a.ywy, vec3<u32>(u_input.a.x, var_0.a.c.x, 38863u)) ^ ~4294967295u) % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.a.a.x, var_0.a.a.x))))))), reverseBits(_wgslsmith_add_i32(~_wgslsmith_sub_i32(global0.a, 3210i), -u_input.b.x)));
}

