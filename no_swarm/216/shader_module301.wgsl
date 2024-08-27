struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~(~16023u | _wgslsmith_sub_u32(25825u, arg_1.x)), 29u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(102654u, 29u)]), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 29u)]))) + vec3<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(step(var_0.x, -2057f)), _wgslsmith_f_op_f32(round(1329f))))));
    let var_2 = arg_0;
    var_1 = _wgslsmith_f_op_vec3_f32(min(global0[_wgslsmith_index_u32(var_2.a, 29u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(~arg_0.a, 29u)], vec3<f32>(var_1.x, -1359f, -1000f), vec3<bool>(true, true, true)))))));
    var var_3 = true;
    return max(-2147483647i, ~(-20276i));
}

fn func_2() -> i32 {
    global0 = array<vec3<f32>, 29>();
    global0 = array<vec3<f32>, 29>();
    var var_0 = _wgslsmith_add_u32(~firstLeadingBit(u_input.a.x), u_input.a.x);
    return min(_wgslsmith_mult_i32(abs(0i), func_3(Struct_1(~1u), vec2<u32>(min(20996u, 3050u), 62947u))), countOneBits(_wgslsmith_add_i32(firstLeadingBit(-13554i), countOneBits(1i))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = ~arg_0.a << (27036u % 32u);
    var var_1 = Struct_1(~var_0);
    let var_2 = all(select(vec4<bool>(all(vec3<bool>(true, true, true)), !(-412f <= arg_3.x), _wgslsmith_f_op_f32(-arg_3.x) >= arg_3.x, -1298f > arg_3.x), vec4<bool>(true || any(vec2<bool>(true, false)), (var_0 >> (u_input.a.x % 32u)) >= 1u, all(vec4<bool>(true, true, true, true)), true), true));
    var var_3 = ~(-countOneBits(func_2()));
    var var_4 = u_input.a.zz;
    return select(select(select(select(vec2<bool>(var_2, var_2), vec2<bool>(true, false), true), vec2<bool>(!var_2, true), true), !select(!vec2<bool>(var_2, var_2), vec2<bool>(true, true), !var_2), any(select(!vec3<bool>(var_2, true, var_2), !vec3<bool>(var_2, var_2, false), false))), vec2<bool>(true, var_2), var_2);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = select(!select(select(select(vec4<bool>(false, arg_2, true, false), vec4<bool>(arg_2, arg_2, false, true), arg_2), select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(arg_0.x, false, false, false), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), arg_0.x), !select(vec4<bool>(false, false, arg_0.x, arg_2), vec4<bool>(arg_2, arg_0.x, arg_0.x, true), true), !(4294967295u == u_input.a.x)), select(select(vec4<bool>(true, arg_2, true, true), vec4<bool>(arg_2, arg_2, arg_2, false & arg_2), true), select(vec4<bool>(arg_0.x, true, select(true, arg_0.x, false), false), select(!vec4<bool>(true, false, true, arg_2), select(vec4<bool>(arg_2, true, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), arg_2), vec4<bool>(true, false, arg_0.x, arg_0.x)), arg_1.a <= 25098u), all(select(arg_0, vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false))) || all(vec2<bool>(arg_2, arg_2))), !(!(!select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(arg_2, arg_2, arg_0.x, false), false))));
    global0 = array<vec3<f32>, 29>();
    var_0 = !vec4<bool>(all(vec4<bool>(arg_2, true, arg_2, all(arg_0))), select(func_1(Struct_1(81958u), firstTrailingBit(vec2<u32>(37756u, u_input.a.x)), u_input.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(838f, 1340f) + vec2<f32>(701f, -457f))).x, var_0.x, !func_1(Struct_1(u_input.a.x), vec2<u32>(arg_1.a, u_input.a.x), arg_1.a, vec2<f32>(993f, -2016f)).x), !arg_2, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-303f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1688f, -850f))), _wgslsmith_f_op_f32(abs(-987f)), 1132f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2455f, 692f, 657f, 1387f) + vec4<f32>(1487f, -650f, 340f, -2232f))))));
    let var_2 = firstLeadingBit(reverseBits(vec3<i32>(0i, -2147483647i, 1i)));
    return ~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.a, select(4294967295u, arg_1.a, true)), ~u_input.a.xy << (~vec2<u32>(arg_1.a, 41262u) % vec2<u32>(32u)));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec3<u32>, arg_3: bool) -> StorageBuffer {
    global0 = array<vec3<f32>, 29>();
    let var_0 = ~((2147483647i >> (~_wgslsmith_mod_u32(4294967295u, arg_2.x) % 32u)) ^ -reverseBits(-19596i));
    var var_1 = Struct_1(~44549u);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1348f, 1515f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2892f, -265f) + vec2<f32>(-103f, -458f)), !vec2<bool>(arg_0, false))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-632f, 546f), vec2<f32>(-228f, -1797f))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-625f, _wgslsmith_f_op_f32(select(-390f, -1561f, arg_3))))))));
    return StorageBuffer(24576u, vec2<u32>(u_input.a.x, func_4(!vec2<bool>(false, arg_3), Struct_1(var_1.a), true) << (_wgslsmith_sub_u32(firstTrailingBit(arg_1), _wgslsmith_add_u32(7742u, 62280u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 29>();
    global0 = array<vec3<f32>, 29>();
    let x = u_input.a;
    s_output = func_5(true != select(true, (u_input.a.x | 4294967295u) > 1u, all(vec4<bool>(true, true, true, true))), func_4(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), func_1(Struct_1(u_input.a.x), u_input.a.xz, u_input.a.x, vec2<f32>(-425f, 157f)), func_1(Struct_1(u_input.a.x), u_input.a.yw, u_input.a.x, vec2<f32>(645f, 644f))), Struct_1(_wgslsmith_dot_vec3_u32(u_input.a.zzw, vec3<u32>(u_input.a.x, 4851u, 1u))), false) ^ select(~_wgslsmith_mod_u32(4294967295u, u_input.a.x), 62067u, false), u_input.a.www, select(true, u_input.a.x <= u_input.a.x, any(vec4<bool>(true, false, 11586u <= u_input.a.x, true))));
}

