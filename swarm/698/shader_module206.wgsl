struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11>;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, false, true)));

var<private> global2: array<bool, 10>;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<bool>(false, true, true), 3761u, vec2<u32>(28839u, 29215u), 14073u, true), Struct_1(vec3<bool>(true, true, true), 12764u, vec2<u32>(1u, 79511u), 1u, true), Struct_1(vec3<bool>(false, true, true), 25225u, vec2<u32>(40989u, 0u), 15054u, false), Struct_1(vec3<bool>(true, false, false), 6675u, vec2<u32>(0u, 26951u), 4294967295u, false), Struct_1(vec3<bool>(false, true, false), 68267u, vec2<u32>(127530u, 74749u), 1u, true), Struct_1(vec3<bool>(true, true, false), 1u, vec2<u32>(4294967295u, 1u), 1u, true), Struct_1(vec3<bool>(true, false, true), 4294967295u, vec2<u32>(53869u, 0u), 1u, false), Struct_1(vec3<bool>(false, false, true), 1u, vec2<u32>(5675u, 0u), 0u, false), Struct_1(vec3<bool>(true, false, true), 110102u, vec2<u32>(41165u, 28966u), 0u, false), Struct_1(vec3<bool>(false, false, true), 16592u, vec2<u32>(1u, 0u), 1u, true), Struct_1(vec3<bool>(true, false, true), 1u, vec2<u32>(67119u, 4294967295u), 41445u, false), Struct_1(vec3<bool>(true, true, false), 1u, vec2<u32>(1u, 64635u), 0u, true), Struct_1(vec3<bool>(false, false, false), 81656u, vec2<u32>(1u, 1u), 9345u, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = all(!arg_0.a.zz) & false;
    let var_1 = firstTrailingBit(vec4<u32>(arg_0.b, _wgslsmith_mod_u32(35275u, _wgslsmith_sub_u32(~9048u, ~48730u)), arg_1, ~(~(arg_0.d >> (4294967295u % 32u)))));
    let var_2 = select(vec4<bool>(true, min(~45365u, _wgslsmith_dot_vec4_u32(vec4<u32>(71446u, 44597u, 1u, 4294967295u), vec4<u32>(u_input.a.x, arg_1, arg_0.c.x, u_input.a.x))) <= ~(arg_0.d ^ u_input.a.x), !any(arg_0.a.yx), !all(vec4<bool>(arg_0.a.x, true, false, true))), select(vec4<bool>(true, !arg_0.a.x, !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(100725u, 99705u), 10u)], !(u_input.b > u_input.b)), vec4<bool>(true, arg_0.a.x, !any(vec4<bool>(true, arg_0.a.x, global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(0u, 10u)])), !any(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 10u)]))), !vec4<bool>(false || arg_0.e, arg_0.e | arg_0.e, true, true)), select(abs(u_input.b) > u_input.b, any(!vec4<bool>(false, arg_0.e, arg_0.a.x, false)), any(!arg_0.a)) | arg_0.e);
    let var_3 = u_input.b;
    return arg_0.c.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global1 = array<Struct_2, 24>();
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.b) | u_input.b, _wgslsmith_add_i32(-19445i, _wgslsmith_mult_i32(u_input.b, u_input.b)), firstTrailingBit(1i)), vec3<i32>(~(-33453i), u_input.b << (1u % 32u), reverseBits(u_input.b)) << (~(global0[_wgslsmith_index_u32(4294967295u, 11u)] >> (u_input.a.zwx % vec3<u32>(32u))) % vec3<u32>(32u))), 1i, _wgslsmith_mult_i32(u_input.b, firstLeadingBit(u_input.b)) >> (27149u % 32u));
    global1 = array<Struct_2, 24>();
    let var_1 = var_0.x << (firstTrailingBit(_wgslsmith_mod_u32(func_3(global3[_wgslsmith_index_u32(1216u, 13u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 19649u, 4759u, 4294967295u), u_input.a)), min(~1u, 40256u))) % 32u);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(563f + -372f), -485f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(782f, -1547f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1745f - _wgslsmith_f_op_f32(f32(-1f) * -711f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(731f, 782f)) * -1000f))));
    return u_input.a.x >> (u_input.a.x % 32u);
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global1 = array<Struct_2, 24>();
    let var_0 = vec3<bool>(global2[_wgslsmith_index_u32(min(_wgslsmith_add_u32((71852u & u_input.a.x) | func_2(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), global1[_wgslsmith_index_u32(58912u, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), u_input.a.x), ~0u), 10u)], any(select(vec4<bool>(all(vec3<bool>(arg_0.x, false, arg_0.x)), false, true, global2[_wgslsmith_index_u32(4294967295u, 10u)] && global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], false, false, true)), !(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)])))), true);
    var var_1 = !(!vec3<bool>(true, false, u_input.a.x <= 85594u));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-442f, 581f) + -657f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)), _wgslsmith_f_op_f32(f32(-1f) * -556f)))), -238f);
    var var_3 = (vec4<u32>(16004u, u_input.a.x, _wgslsmith_clamp_u32(53433u, u_input.a.x << (u_input.a.x % 32u), 6280u), 1u) << (u_input.a % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(abs(~u_input.a), firstLeadingBit(vec4<u32>(countOneBits(4294967295u), ~u_input.a.x, 0u, u_input.a.x)), u_input.a) % vec4<u32>(32u));
    return Struct_2(var_0);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> f32 {
    let var_0 = arg_0;
    global0 = array<vec3<u32>, 11>();
    return _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-956f + -401f) * 1f), -1000f)), 763f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 24u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1087f, 849f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(509f, -1090f), vec2<f32>(102f, 1431f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1635f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(4294967295u ^ u_input.a.x, 24u)], func_1(vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 10u)])), all(vec4<bool>(global2[_wgslsmith_index_u32(58749u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], false, true)))), -1000f)));
    global1 = array<Struct_2, 24>();
    var var_3 = Struct_1(!vec3<bool>(func_1(var_1.a.zy).a.x, _wgslsmith_f_op_f32(select(var_2.x, var_2.x, global2[_wgslsmith_index_u32(54859u, 10u)])) < _wgslsmith_f_op_f32(max(var_2.x, var_2.x)), select(!global2[_wgslsmith_index_u32(4294967295u, 10u)], true, true)), ~abs(52414u) & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(select(0u, 1u, true), _wgslsmith_sub_u32(u_input.a.x, 1u))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(1u, 11u)] | vec3<u32>(0u, u_input.a.x, u_input.a.x), firstLeadingBit(global0[_wgslsmith_index_u32(1u, 11u)])), 4294967295u), u_input.a.yw), ~18071u, false);
    var_1 = Struct_2(func_1(vec2<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 10u)], !var_3.a.x)).a);
    let var_4 = all(!select(var_3.a.yy, vec2<bool>(var_1.a.x, true), !vec2<bool>(var_3.a.x, true)));
    var_1 = Struct_2(var_1.a);
    var_3 = Struct_1(!(!func_1(select(vec2<bool>(true, true), var_1.a.xx, vec2<bool>(var_3.e, false))).a), ~firstTrailingBit(~countOneBits(4294967295u)), u_input.a.yy, _wgslsmith_dot_vec4_u32(abs(abs(u_input.a)), vec4<u32>(~_wgslsmith_clamp_u32(var_3.d, u_input.a.x, 49246u), ~func_2(vec4<bool>(false, var_4, var_3.a.x, var_4), Struct_2(var_3.a), Struct_2(var_1.a)), reverseBits(31859u), 1u)), !(all(!var_1.a) | (_wgslsmith_clamp_u32(40315u, 0u, 4294967295u) == u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a ^ u_input.a));
}

